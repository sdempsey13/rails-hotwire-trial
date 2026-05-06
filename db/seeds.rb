require 'csv'


CSV.foreach(Rails.root.join('photos.csv'), headers: true) do |row|
  Photo.create!(
    photo_id:         row['id'],
    width:            row['width'],
    height:           row['height'],
    url:              row['url'],
    photographer:     row['photographer'],
    photographer_url: row['photographer_url'],
    photographer_id:  row['photographer_id'],
    avg_color:        row['avg_color'],
    src_original:     row['src.original'],
    src_large2x:      row['src.large2x'],
    src_large:        row['src.large'],
    src_medium:       row['src.medium'],
    src_small:        row['src.small'],
    src_portrait:     row['src.portrait'],
    src_landscape:    row['src.landscape'],
    src_tiny:         row['src.tiny'],
    alt:              row['alt']
  )
end