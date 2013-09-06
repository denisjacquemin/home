# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->

  form_id = '#edit_property_upload'
  submit_button_id = '#property_submit'
  notice_id = '.notice'
  alert_id = '.alert'

  if $(form_id).length > 0
    property_form = new Dropzone(form_id, {
      paramName: "property[images_attributes][file]"
      enqueueForUpload: false
      previewsContainer: '.dropzone'
    })

    property_form.on("success", (file) ->
      console.log("successfully uploaded file")
      $(notice_id).html("<b style='color: green;'>Property Saved</b>")
    )

    property_form.on("error", (file) ->
      console.log("error occurred while uploading file")
      $(alert_id).html("<b style='color: red;'>An error occurred while saving the Property.</b>")
    )

    $(submit_button_id).click( ->
      console.log("Save Button Clicked")
      if property_form.files.length > 0
        console.log("found file to process")
        file = property_form.files[0]
        property_form.filesQueue.push(file);
        property_form.processQueue();
      else
        $(form_id).submit();
    )