Dropzone.autoDiscover = false

class MdInput extends React.Component
  render: ->
    <label for='md-text'>Direct input md text</label>
    <textarea className='md-text' id='md-text' />

class MdDropZone extends React.Component

  render: ->
    <div className='dropzone' id='md-upload-zone'>
      Drop here Md file.
    </div>

  componentDidMount: ->
    myDropzone = new Dropzone(
      "#md-upload-zone", {
        url: "/file/post"
      }
    )

    console.log 'did mount!!!'

class MdUrlInput extends React.Component

  render: ->
    <label for='md-url-input'>URL:</label>
    <input type='text' className='input-text' id='md-url-input' />


React.render <MdInput />,
  document.getElementById 'md-input'

React.render <MdDropZone />,
  document.getElementById 'md-upload'

React.render <MdUrlInput />,
  document.getElementById 'md-url-input'

