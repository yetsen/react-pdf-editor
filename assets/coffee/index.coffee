Dropzone = require 'lib/react-dropzone'


class MdInput extends React.Component
  render: ->
    <textarea className='md-text' id='imd-text' />

class MdUpload extends React.Component
  render: ->
    <textarea className='md-text' id='imd-text' />


React.render <MdInput  />,
  document.getElementById 'md-input'

