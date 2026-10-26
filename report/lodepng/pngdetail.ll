Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/pngdetail?download=true
inline.NumInlined: 2280
inline.NumDeleted: 605
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0
@.str.4 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"palette\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"grey+alpha\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"RGBA\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.12 = private unnamed_addr constant [61 x i8] c"Corruption or superfluous data detected after the IEND chunk\00", align 1
@.str.13 = private unnamed_addr constant [66 x i8] c"Error while identifying chunks. Listing identified chunks anyway.\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"Chunk types: \00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Chunk sizes: \00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"Chunks (type: lengths):\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"Error: no IHDR chunk\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"IDAT\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"Error: no IDAT chunk\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"Error: no IEND chunk\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"ASCII Art Preview: \00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"Colors (CSS RGBA hex format):\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c" #\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"Error getting filter types\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"Filter types (Adam7 interlaced):\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c" Pass \00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"Filter types: \00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"Palette size: \00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"Palette colors: \00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"Palette count: \00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"Out of bounds palette values: \00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"Pixel palette indices:\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.40 = private unnamed_addr constant [55 x i8] c"Pixel palette indices: not shown, not a palette image\0A\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"invalid png\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"corrupt chunk length\00", align 1
@.str.43 = private unnamed_addr constant [44 x i8] c"zlib data stored in a single block, btype: \00", align 1
@.str.44 = private unnamed_addr constant [59 x i8] c"zlib data spread over multiple blocks. First block btype: \00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"zlib compressed size: \00", align 1
@lodepng_default_decompress_settings = external global %struct.LodePNGDecompressSettings, align 8
@.str.46 = private unnamed_addr constant [25 x i8] c"zlib uncompressed size: \00", align 1
@.str.48 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"No error\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"Decoding error \00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"No errors or warnings\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.52 = private unnamed_addr constant [40 x i8] c"Ignoring the error: enabling ignore_crc\00", align 1
@.str.53 = private unnamed_addr constant [44 x i8] c"Ignoring the error: enabling ignore_adler32\00", align 1
@.str.54 = private unnamed_addr constant [45 x i8] c"Ignoring the error: enabling ignore_critical\00", align 1
@.str.55 = private unnamed_addr constant [40 x i8] c"Ignoring the error: enabling ignore_end\00", align 1
@.str.56 = private unnamed_addr constant [30 x i8] c"This error is not recoverable\00", align 1
@.str.57 = private unnamed_addr constant [31 x i8] c"Successfully ignored the error\00", align 1
@.str.58 = private unnamed_addr constant [27 x i8] c"Failed to ignore the error\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"The error is recoverable\00", align 1
@.str.60 = private unnamed_addr constant [29 x i8] c"The error is not recoverable\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"Filesize: \00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"K)\00", align 1
@.str.63 = private unnamed_addr constant [67 x i8] c", not a PNG but an ICC profile, use -i to expand ICC profile info.\00", align 1
@.str.64 = private unnamed_addr constant [63 x i8] c", not a PNG but an EXIF file, use -e to expand EXIF file info.\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"Color: \00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c" bit\00", align 1
@.str.68 = private unnamed_addr constant [41 x i8] c"Invalid ICC: too small to contain header\00", align 1
@.str.70 = private unnamed_addr constant [47 x i8] c"Invalid ICC: does not contain signature \22acsp\22\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"profile size: \00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"CMM type: \00", align 1
@.str.73 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"device class: \00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"input space: \22\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"\22, \00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"output space: \22\00", align 1
@.str.78 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.79 = private unnamed_addr constant [37 x i8] c"date: %02d-%02d-%02dT%02d:%02d:%02d\0A\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"signature: \00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"platform: \00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"flags: \00", align 1
@.str.83 = private unnamed_addr constant [22 x i8] c"device manufacturer: \00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"device model: \00", align 1
@.str.85 = private unnamed_addr constant [20 x i8] c"device attributes: \00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"rendering intent: \00", align 1
@.str.87 = private unnamed_addr constant [19 x i8] c"xyz illuminant: X:\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c", Y:\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c", Z:\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c", xy:\00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"creator: \00", align 1
@.str.93 = private unnamed_addr constant [23 x i8] c"md5: %08x%08x%08x%08x\0A\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"num icc tags: \00", align 1
@.str.95 = private unnamed_addr constant [51 x i8] c"Invalid ICC: too small to contain tag descriptions\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"icc tag: \22\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c", offset: \00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c", size: \00", align 1
@.str.99 = private unnamed_addr constant [30 x i8] c"Invalid ICC: tag out of range\00", align 1
@.str.100 = private unnamed_addr constant [14 x i8] c", datatype: \22\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c", X:\00", align 1
@.str.104 = private unnamed_addr constant [22 x i8] c", lookup table size: \00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c" (gamma: \00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c" (linear)\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c" type: \00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c", gamma: \00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c", params: \00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c": n:\00", align 1
@.str.114 = private unnamed_addr constant [11 x i8] c" phosphor:\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c" xy:\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c" %c \00", align 1
@.str.121 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.122 = private unnamed_addr constant [58 x i8] c"Not a PNG but an ICC profile, use -i or -I for more info.\00", align 1
@.str.123 = private unnamed_addr constant [50 x i8] c"Not a PNG but an EXIF file, use -e for more info.\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"Width: \00", align 1
@.str.125 = private unnamed_addr constant [9 x i8] c"Height: \00", align 1
@.str.126 = private unnamed_addr constant [17 x i8] c"Compressed bpp: \00", align 1
@.str.127 = private unnamed_addr constant [19 x i8] c"Interlace method: \00", align 1
@.str.128 = private unnamed_addr constant [21 x i8] c"Compression method: \00", align 1
@.str.129 = private unnamed_addr constant [16 x i8] c"Filter method: \00", align 1
@.str.130 = private unnamed_addr constant [13 x i8] c"Color type: \00", align 1
@.str.131 = private unnamed_addr constant [12 x i8] c"Bit depth: \00", align 1
@.str.132 = private unnamed_addr constant [17 x i8] c"Bits per pixel: \00", align 1
@.str.133 = private unnamed_addr constant [21 x i8] c"Channels per pixel: \00", align 1
@.str.134 = private unnamed_addr constant [20 x i8] c"Is greyscale type: \00", align 1
@.str.135 = private unnamed_addr constant [17 x i8] c"Can have alpha: \00", align 1
@.str.136 = private unnamed_addr constant [16 x i8] c"Has color key: \00", align 1
@.str.137 = private unnamed_addr constant [16 x i8] c"Color key rgb: \00", align 1
@.str.138 = private unnamed_addr constant [19 x i8] c"Background index: \00", align 1
@.str.139 = private unnamed_addr constant [17 x i8] c"Background rgb: \00", align 1
@.str.140 = private unnamed_addr constant [15 x i8] c"gAMA defined: \00", align 1
@.str.141 = private unnamed_addr constant [18 x i8] c"cHRM defined: w: \00", align 1
@.str.142 = private unnamed_addr constant [6 x i8] c", r: \00", align 1
@.str.143 = private unnamed_addr constant [6 x i8] c", g: \00", align 1
@.str.144 = private unnamed_addr constant [6 x i8] c", b: \00", align 1
@.str.145 = private unnamed_addr constant [33 x i8] c"sRGB defined: rendering intent: \00", align 1
@.str.146 = private unnamed_addr constant [22 x i8] c"ICC profile defined (\00", align 1
@.str.147 = private unnamed_addr constant [16 x i8] c" bytes): name: \00", align 1
@.str.148 = private unnamed_addr constant [48 x i8] c"Use -i or -I to show ICC profile details or hex\00", align 1
@.str.149 = private unnamed_addr constant [24 x i8] c"EXIF metadata defined (\00", align 1
@.str.150 = private unnamed_addr constant [8 x i8] c" bytes)\00", align 1
@.str.151 = private unnamed_addr constant [41 x i8] c"Use -e or -E to show EXIF details or hex\00", align 1
@.str.152 = private unnamed_addr constant [22 x i8] c"ICC profile details (\00", align 1
@.str.153 = private unnamed_addr constant [20 x i8] c" bytes), PNG name: \00", align 1
@.str.155 = private unnamed_addr constant [19 x i8] c"end of ICC profile\00", align 1
@.str.156 = private unnamed_addr constant [18 x i8] c"Physics defined: \00", align 1
@.str.157 = private unnamed_addr constant [13 x i8] c"Physics: X: \00", align 1
@.str.158 = private unnamed_addr constant [6 x i8] c", Y: \00", align 1
@.str.159 = private unnamed_addr constant [9 x i8] c", unit: \00", align 1
@.str.160 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.161 = private unnamed_addr constant [47 x i8] c"... [TEXT SNIPPED! use -t to expand long text]\00", align 1
@.str.162 = private unnamed_addr constant [8 x i8] c"Texts: \00", align 1
@.str.163 = private unnamed_addr constant [7 x i8] c"Text (\00", align 1
@.str.164 = private unnamed_addr constant [10 x i8] c" bytes): \00", align 1
@.str.165 = private unnamed_addr constant [22 x i8] c"International texts: \00", align 1
@.str.166 = private unnamed_addr constant [15 x i8] c"Time defined: \00", align 1
@.str.167 = private unnamed_addr constant [37 x i8] c"time: %02d-%02d-%02dT%02d:%02d:%02d\0A\00", align 1
@.str.168 = private unnamed_addr constant [13 x i8] c"Num pixels: \00", align 1
@.str.169 = private unnamed_addr constant [20 x i8] c"Num unique colors: \00", align 1
@.str.170 = private unnamed_addr constant [6 x i8] c" (r: \00", align 1
@.str.171 = private unnamed_addr constant [6 x i8] c", a: \00", align 1
@.str.172 = private unnamed_addr constant [49 x i8] c"Ranges shown as 0.0-255.0, even for 16-bit data:\00", align 1
@.str.173 = private unnamed_addr constant [16 x i8] c"Average color: \00", align 1
@.str.174 = private unnamed_addr constant [15 x i8] c"Color ranges: \00", align 1
@.str.175 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.176 = private unnamed_addr constant [15 x i8] c"Error report: \00", align 1
@.str.177 = private unnamed_addr constant [39 x i8] c"Error: Too many EXIF IFDs, bailing out\00", align 1
@.str.178 = private unnamed_addr constant [31 x i8] c"Error: EXIF IFD out of range: \00", align 1
@.str.179 = private unnamed_addr constant [17 x i8] c"EXIF Sub-IFD at \00", align 1
@.str.180 = private unnamed_addr constant [16 x i8] c", num entries: \00", align 1
@.str.181 = private unnamed_addr constant [23 x i8] c"EXIF Thumbnail IFD at \00", align 1
@.str.182 = private unnamed_addr constant [13 x i8] c"EXIF IFD at \00", align 1
@.str.183 = private unnamed_addr constant [30 x i8] c"EXIF IFD entry out of range: \00", align 1
@.str.184 = private unnamed_addr constant [33 x i8] c"Error: EXIF unknown entry format\00", align 1
@.str.185 = private unnamed_addr constant [23 x i8] c"EXIF tag (thumbnail): \00", align 1
@.str.186 = private unnamed_addr constant [11 x i8] c"EXIF tag: \00", align 1
@.str.187 = private unnamed_addr constant [12 x i8] c"Umage Width\00", align 1
@.str.188 = private unnamed_addr constant [13 x i8] c"Image Height\00", align 1
@.str.189 = private unnamed_addr constant [12 x i8] c"Compression\00", align 1
@.str.190 = private unnamed_addr constant [14 x i8] c"Document Name\00", align 1
@.str.191 = private unnamed_addr constant [18 x i8] c"Image Description\00", align 1
@.str.192 = private unnamed_addr constant [12 x i8] c"Orientation\00", align 1
@.str.193 = private unnamed_addr constant [13 x i8] c"X Resolution\00", align 1
@.str.194 = private unnamed_addr constant [13 x i8] c"Y Resolution\00", align 1
@.str.195 = private unnamed_addr constant [16 x i8] c"Resolution Unit\00", align 1
@.str.196 = private unnamed_addr constant [17 x i8] c"Thumbnail Offset\00", align 1
@.str.197 = private unnamed_addr constant [15 x i8] c"Thumbnail Size\00", align 1
@.str.198 = private unnamed_addr constant [14 x i8] c"Exposure Time\00", align 1
@.str.199 = private unnamed_addr constant [10 x i8] c"Copyright\00", align 1
@.str.200 = private unnamed_addr constant [13 x i8] c"Exif Version\00", align 1
@.str.201 = private unnamed_addr constant [13 x i8] c"User Comment\00", align 1
@.str.202 = private unnamed_addr constant [30 x i8] c"Error: EXIF data out of range\00", align 1
@.str.203 = private unnamed_addr constant [8 x i8] c"[empty]\00", align 1
@.str.204 = private unnamed_addr constant [9 x i8] c"[format \00", align 1
@.str.205 = private unnamed_addr constant [7 x i8] c", len \00", align 1
@.str.206 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.207 = private unnamed_addr constant [36 x i8] c"Error: EXIF IFD footer out of range\00", align 1
@.str.208 = private unnamed_addr constant [39 x i8] c"No EXIF data present in this PNG image\00", align 1
@.str.209 = private unnamed_addr constant [22 x i8] c"EXIF size too small: \00", align 1
@.str.210 = private unnamed_addr constant [12 x i8] c"EXIF size: \00", align 1
@.str.211 = private unnamed_addr constant [35 x i8] c"EXIF encoded using big endian (MM)\00", align 1
@.str.212 = private unnamed_addr constant [38 x i8] c"EXIF encoded using little endian (II)\00", align 1
@.str.213 = private unnamed_addr constant [50 x i8] c"EXIF has invalid header, must start with MM or II\00", align 1
@.str.218 = private unnamed_addr constant [15 x i8] c"Unknown flag: \00", align 1
@.str.219 = private unnamed_addr constant [18 x i8] c". Use -h for help\00", align 1
@.str.229 = private unnamed_addr constant [37 x i8] c"Please provide a filename to preview\00", align 1
@.str.230 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1
@.str.231 = private unnamed_addr constant [5 x i8] c"PLTE\00", align 1
@.str.232 = private unnamed_addr constant [5 x i8] c"tRNS\00", align 1
@.str.233 = private unnamed_addr constant [5 x i8] c"cHRM\00", align 1
@.str.234 = private unnamed_addr constant [5 x i8] c"gAMA\00", align 1
@.str.235 = private unnamed_addr constant [5 x i8] c"sBIT\00", align 1
@.str.236 = private unnamed_addr constant [5 x i8] c"bKGD\00", align 1
@.str.237 = private unnamed_addr constant [5 x i8] c"hIST\00", align 1
@.str.238 = private unnamed_addr constant [5 x i8] c"pHYs\00", align 1
@.str.239 = private unnamed_addr constant [5 x i8] c"iCCP\00", align 1
@.str.240 = private unnamed_addr constant [5 x i8] c"eXIf\00", align 1
@_ZZL11applyDitheriiiibE7pattern = internal unnamed_addr constant [16 x i32] [i32 0, i32 8, i32 2, i32 10, i32 12, i32 4, i32 14, i32 6, i32 3, i32 11, i32 1, i32 9, i32 15, i32 7, i32 13, i32 5], align 16
@.str.241 = private unnamed_addr constant [13 x i8] c"out of range\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@.str.244 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.245 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.246 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@.str.249 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.250 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@switch.table._Z15colorTypeStringB5cxx1116LodePNGColorType = private unnamed_addr constant [7 x ptr] [ptr @.str.3, ptr @.str.8, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.7], align 8
@switch.table._Z15colorTypeStringB5cxx1116LodePNGColorType.1 = private unnamed_addr constant [7 x i8] c"\04\07\03\07\0A\07\04", align 8

; Function Attrs: mustprogress uwtable
define void @_Z8showHelpv() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 28) ; 0 uses
  %i.b = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load i8, ptr %i.h, align 8, !tbaa !41
  %.not.i1.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 67
  %i.k = load i8, ptr %i.j, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.g)
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef signext i8 %i.n(ptr noundef nonnull align 8 dereferenceable(570) %i.g, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.k, %bb.c ], [ %i.o, %bb.d ]
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 0 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 9) ; 0 uses
  %i.s = load ptr, ptr @LODEPNG_VERSION_STRING, align 8, !tbaa !44 ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.t = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !45
  %i.z = or i32 %i.y, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i32 noundef %i.z)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.f:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.aa = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #26
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.s, i64 noundef %i.aa) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e, %bb.f
  %i.ac = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 240
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i1 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i1, label %bb.g, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !41
  %.not.i1.i.i3 = icmp eq i8 %i.aj, 0
  br i1 %.not.i1.i.i3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 67
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit5

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ah)
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef signext i8 %i.ao(ptr noundef nonnull align 8 dereferenceable(570) %i.ah, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit5

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit5: ; preds = %bb.h, %bb.i
  %.0.i.i.i4 = phi i8 [ %i.al, %bb.h ], [ %i.ap, %bb.i ]
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i4)
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aq) ; 0 uses
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 1527) ; 0 uses
  %i.at = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.au = getelementptr i8, ptr %i.at, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 240
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i6 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i6, label %bb.j, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i7

bb.j:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit5
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i7: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit5
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !41
  %.not.i1.i.i8 = icmp eq i8 %i.ba, 0
  br i1 %.not.i1.i.i8, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i7
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 67
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit10

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i7
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ay)
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef signext i8 %i.bf(ptr noundef nonnull align 8 dereferenceable(570) %i.ay, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit10

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit10: ; preds = %bb.k, %bb.l
  %.0.i.i.i9 = phi i8 [ %i.bc, %bb.k ], [ %i.bg, %bb.l ]
  %i.bh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i9)
  %i.bi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bh) ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_Z11outOfBoundsjjj(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i32 %0, %2
  %i.b = sub nuw i32 %2, %0
  %i.c = icmp ugt i32 %1, %i.b
  %i.d = select i1 %i.a, i1 true, i1 %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z21inspect_chunk_by_namePKhS0_RN7lodepng5StateEPKc(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(640) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_Z24lodepng_chunk_find_constPKhS0_PKc(ptr noundef %0, ptr noundef %1, ptr noundef %3) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.e, %i.c
  %i.g = tail call noundef i32 @_Z21lodepng_inspect_chunkP12LodePNGStatemPKhm(ptr noundef nonnull %2, i64 noundef %i.d, ptr noundef %0, i64 noundef %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
end_hunk_0
begin_hunk_1_@_Z14showHeaderInfoR4DataRK7Options:bb.a
  call void @_Z7showHexPKhmRK7Options(ptr noundef %i.adj, i64 noundef %i.adm, ptr noundef nonnull align 4 dereferenceable(37) %1)
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec, %.thread
  %i.adn = load i8, ptr %i.nt, align 2, !tbaa !132, !range !72, !noundef !73
  %i.ado = trunc nuw i8 %i.adn to i1
  br i1 %i.ado, label %bb.ef, label %bb.eq

bb.ef:                                            ; preds = %bb.ee
  %i.adp = getelementptr inbounds nuw i8, ptr %0, i64 733
  %i.adq = load i8, ptr %i.adp, align 1, !tbaa !71, !range !72, !noundef !73
  %i.adr = trunc nuw i8 %i.adq to i1
  br i1 %i.adr, label %bb.eg, label %bb.eq

bb.eg:                                            ; preds = %bb.ef
  %i.ads = load i8, ptr %1, align 4, !tbaa !131, !range !72, !noundef !73
  %i.adt = trunc nuw i8 %i.ads to i1
  br i1 %i.adt, label %bb.eh, label %bb.el

bb.eh:                                            ; preds = %bb.eg
  %i.adu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.156, i64 noundef 17) ; 0 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.adw = load i32, ptr %i.adv, align 8, !tbaa !289
  %i.adx = zext i32 %i.adw to i64
  %i.ady = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.adx) ; 3 uses
  %i.adz = load ptr, ptr %i.ady, align 8, !tbaa !17
  %i.aea = getelementptr i8, ptr %i.adz, i64 -24
  %i.aeb = load i64, ptr %i.aea, align 8
  %i.aec = getelementptr inbounds i8, ptr %i.ady, i64 %i.aeb
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 240
  %i.aee = load ptr, ptr %i.aed, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i276 = icmp eq ptr %i.aee, null
  br i1 %.not.i.i.i276, label %bb.ei, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i277

bb.ei:                                            ; preds = %bb.eh
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i277: ; preds = %bb.eh
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 56
  %i.aeg = load i8, ptr %i.aef, align 8, !tbaa !41
  %.not.i1.i.i278 = icmp eq i8 %i.aeg, 0
  br i1 %.not.i1.i.i278, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i277
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aee, i64 67
  %i.aei = load i8, ptr %i.aeh, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit281

bb.ek:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i277
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aee)
  %i.aej = load ptr, ptr %i.aee, align 8, !tbaa !17
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 48
  %i.ael = load ptr, ptr %i.aek, align 8
  %i.aem = call noundef signext i8 %i.ael(ptr noundef nonnull align 8 dereferenceable(570) %i.aee, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit281

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit281: ; preds = %bb.ej, %bb.ek
  %.0.i.i.i280 = phi i8 [ %i.aei, %bb.ej ], [ %i.aem, %bb.ek ]
  %i.aen = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ady, i8 noundef signext %.0.i.i.i280)
  %i.aeo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aen) ; 0 uses
  br label %bb.el

bb.el:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit281, %bb.eg
  %i.aep = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.aeq = load i32, ptr %i.aep, align 8, !tbaa !289
  %.not112 = icmp eq i32 %i.aeq, 0
  br i1 %.not112, label %bb.eq, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.aer = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.157, i64 noundef 12) ; 0 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.aet = load i32, ptr %i.aes, align 4, !tbaa !290
  %i.aeu = zext i32 %i.aet to i64
  %i.aev = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.aeu) ; 2 uses
  %i.aew = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aev, ptr noundef nonnull @.str.158, i64 noundef 5) ; 0 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.aey = load i32, ptr %i.aex, align 8, !tbaa !291
  %i.aez = zext i32 %i.aey to i64
  %i.afa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aev, i64 noundef %i.aez) ; 2 uses
  %i.afb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.afa, ptr noundef nonnull @.str.159, i64 noundef 8) ; 0 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.afd = load i32, ptr %i.afc, align 4, !tbaa !292
  %i.afe = zext i32 %i.afd to i64
  %i.aff = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.afa, i64 noundef %i.afe) ; 3 uses
  %i.afg = load ptr, ptr %i.aff, align 8, !tbaa !17
  %i.afh = getelementptr i8, ptr %i.afg, i64 -24
  %i.afi = load i64, ptr %i.afh, align 8
  %i.afj = getelementptr inbounds i8, ptr %i.aff, i64 %i.afi
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 240
  %i.afl = load ptr, ptr %i.afk, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i282 = icmp eq ptr %i.afl, null
  br i1 %.not.i.i.i282, label %bb.en, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i283

bb.en:                                            ; preds = %bb.em
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i283: ; preds = %bb.em
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 56
  %i.afn = load i8, ptr %i.afm, align 8, !tbaa !41
  %.not.i1.i.i284 = icmp eq i8 %i.afn, 0
  br i1 %.not.i1.i.i284, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i283
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afl, i64 67
  %i.afp = load i8, ptr %i.afo, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit287

bb.ep:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i283
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.afl)
  %i.afq = load ptr, ptr %i.afl, align 8, !tbaa !17
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 48
  %i.afs = load ptr, ptr %i.afr, align 8
  %i.aft = call noundef signext i8 %i.afs(ptr noundef nonnull align 8 dereferenceable(570) %i.afl, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit287

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit287: ; preds = %bb.eo, %bb.ep
  %.0.i.i.i286 = phi i8 [ %i.afp, %bb.eo ], [ %i.aft, %bb.ep ]
  %i.afu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aff, i8 noundef signext %.0.i.i.i286)
  %i.afv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.afu) ; 0 uses
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ee, %bb.ef, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit287, %bb.el, %bb.a
  ret void

bb.er:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %.pn.pn = phi { ptr, i32 } [ %i.acn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ], [ %i.nn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115 ]
  resume { ptr, i32 } %.pn.pn
}

declare noundef i32 @_Z15lodepng_get_bppPK16LodePNGColorMode(ptr noundef) local_unnamed_addr #4

declare noundef i32 @_Z20lodepng_get_channelsPK16LodePNGColorMode(ptr noundef) local_unnamed_addr #4

declare noundef i32 @_Z25lodepng_is_greyscale_typePK16LodePNGColorMode(ptr noundef) local_unnamed_addr #4

declare noundef i32 @_Z22lodepng_can_have_alphaPK16LodePNGColorMode(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_Z11shortenTextRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK7Options(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(37) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !302, !range !72, !noundef !73
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !47
  %i.i = load ptr, ptr %1, align 8, !tbaa !50     ; 2 uses
  %i.j = load i64, ptr %i.g, align 8, !tbaa !49   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 %i.j, ptr %i.c, align 8, !tbaa !81
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !50
  %i.m = load i64, ptr %i.c, align 8, !tbaa !81
  store i64 %i.m, ptr %i.h, align 8, !tbaa !42
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.n = phi ptr [ %i.l, %.noexc.i ], [ %i.h, %bb.b ] ; 2 uses
  switch i64 %i.j, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.i, align 1, !tbaa !42
  store i8 %i.o, ptr %i.n, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.i, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.p = load i64, ptr %i.c, align 8, !tbaa !81   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !49
  %i.r = load ptr, ptr %0, align 8, !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.v

bb.e:                                             ; preds = %bb.a
  %i.t = load i8, ptr %2, align 4, !tbaa !131, !range !72, !noundef !73
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = select i1 %i.u, i64 5, i64 1
  %i.w = load i64, ptr %i.g, align 8, !tbaa !49   ; 7 uses
  %.not62 = icmp eq i64 %i.w, 0
  br i1 %.not62, label %._crit_edge.i.i24.thread, label %.lr.ph

._crit_edge.i.i24.thread:                         ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.x, ptr %0, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 0, ptr %i.b, align 8, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit26

.lr.ph:                                           ; preds = %bb.e
  %i.y = load ptr, ptr %1, align 8, !tbaa !50     ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.g
  %.02060 = phi i64 [ 0, %.lr.ph ], [ %i.ad, %bb.g ] ; 6 uses
  %.02159 = phi i64 [ 0, %.lr.ph ], [ %spec.select, %bb.g ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.02060
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !42
  %i.ab = icmp eq i8 %i.aa, 10
  %i.ac = zext i1 %i.ab to i64
  %spec.select = add i64 %.02159, %i.ac           ; 3 uses
  %.not = icmp ult i64 %spec.select, %i.v
  br i1 %.not, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ad = add nuw i64 %.02060, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.w
  br i1 %exitcond.not, label %.thread, label %bb.f, !llvm.loop !293

.thread:                                          ; preds = %bb.g
  %i.ae = icmp ult i64 %i.w, 512
  br i1 %i.ae, label %bb.h, label %.thread49

.thread49:                                        ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.af, ptr %4, align 8, !tbaa !47, !alias.scope !303
  %i.ag = load ptr, ptr %1, align 8, !tbaa !50, !noalias !303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !303
  store i64 512, ptr %i.a, align 8, !tbaa !81, !noalias !303
  br label %.noexc10.i.i

bb.h:                                             ; preds = %.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !47
  %i.ai = load ptr, ptr %1, align 8, !tbaa !50    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.w, ptr %i.b, align 8, !tbaa !81
  %i.aj = icmp samesign ugt i64 %i.w, 15
  br i1 %i.aj, label %.noexc.i25, label %._crit_edge.i.i24

.noexc.i25:                                       ; preds = %bb.h
  %i.ak = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.ak, ptr %0, align 8, !tbaa !50
  %i.al = load i64, ptr %i.b, align 8, !tbaa !81
  store i64 %i.al, ptr %i.ah, align 8, !tbaa !42
  br label %._crit_edge.i.i24

._crit_edge.i.i24:                                ; preds = %.noexc.i25, %bb.h
  %i.am = phi ptr [ %i.ak, %.noexc.i25 ], [ %i.ah, %bb.h ] ; 2 uses
  %cond = icmp eq i64 %i.w, 1
  br i1 %cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i24
  %i.an = load i8, ptr %i.ai, align 1, !tbaa !42
  store i8 %i.an, ptr %i.am, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit26

bb.j:                                             ; preds = %._crit_edge.i.i24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %i.ai, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit26: ; preds = %._crit_edge.i.i24.thread, %bb.i, %bb.j
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !81  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !49
  %i.aq = load ptr, ptr %0, align 8, !tbaa !50
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  store i8 0, ptr %i.ar, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.v

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.as, ptr %4, align 8, !tbaa !47, !alias.scope !304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !304
  store i64 %.02060, ptr %i.a, align 8, !tbaa !81, !noalias !304
  %i.at = icmp ugt i64 %.02060, 15
  br i1 %i.at, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %.thread49, %bb.k
  %i.au = phi ptr [ %i.ag, %.thread49 ], [ %i.y, %bb.k ]
  %i.av = phi ptr [ %i.af, %.thread49 ], [ %i.as, %bb.k ] ; 2 uses
  %.0224755 = phi i64 [ 512, %.thread49 ], [ %.02060, %bb.k ]
  %i.aw = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.aw, ptr %4, align 8, !tbaa !50, !alias.scope !304
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !81, !noalias !304
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !42, !alias.scope !304
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %bb.k
  %i.ay = phi ptr [ %i.au, %.noexc10.i.i ], [ %i.y, %bb.k ] ; 2 uses
  %i.az = phi ptr [ %i.av, %.noexc10.i.i ], [ %i.as, %bb.k ] ; 4 uses
  %.0224754 = phi i64 [ %.0224755, %.noexc10.i.i ], [ %.02060, %bb.k ] ; 2 uses
  %i.ba = phi ptr [ %i.aw, %.noexc10.i.i ], [ %i.as, %bb.k ] ; 2 uses
  switch i64 %.0224754, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.bb = load i8, ptr %i.ay, align 1, !tbaa !42
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.m:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.ay, i64 %.0224754, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.l, %bb.m
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !81, !noalias !304 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !49, !alias.scope !304
  %i.be = load ptr, ptr %4, align 8, !tbaa !50, !alias.scope !304
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc
  store i8 0, ptr %i.bf, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !304
  %i.bg = icmp ugt i64 %spec.select, 1            ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.bh = zext i1 %i.bg to i64                    ; 2 uses
  %i.bi = load i64, ptr %i.bd, align 8, !tbaa !49, !noalias !305
  %i.bj = sub i64 4611686018427387903, %i.bi
  %i.bk = icmp ult i64 %i.bj, %i.bh
  br i1 %i.bk, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.249) #25
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.n
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.bl = select i1 %i.bg, ptr @.str.160, ptr @.str.48
  %i.bm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %i.bl, i64 noundef %i.bh)
          to label %.noexc27 unwind label %bb.t   ; 6 uses

.noexc27:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.bn, ptr %3, align 8, !tbaa !47, !alias.scope !305
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !50 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 5 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.o:                                             ; preds = %.noexc27
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !49 ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 16
  call void @llvm.assume(i1 %i.bt)
  %i.bu = add nuw nsw i64 %i.bs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bn, ptr noundef nonnull align 8 dereferenceable(1) %i.bp, i64 %i.bu, i1 false)
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc27
  store ptr %i.bo, ptr %3, align 8, !tbaa !50, !alias.scope !305
  %i.bv = load i64, ptr %i.bp, align 8, !tbaa !42
  store i64 %i.bv, ptr %i.bn, align 8, !tbaa !42, !alias.scope !305
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !49
  br label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %i.bw = phi i64 [ %i.bs, %bb.o ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bw, ptr %i.by, align 8, !tbaa !49, !alias.scope !305
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !50
  store i64 0, ptr %i.bx, align 8, !tbaa !49
  store i8 0, ptr %i.bp, align 8, !tbaa !42
  %i.bz = add i64 %i.bw, -4611686018427387858
  %i.ca = icmp ult i64 %i.bz, 46
  br i1 %i.ca, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i28

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.249) #25
          to label %.noexc32 unwind label %bb.u

.noexc32:                                         ; preds = %bb.q
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i28: ; preds = %bb.p
  %i.cb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.161, i64 noundef 46)
          to label %.noexc33 unwind label %bb.u   ; 6 uses

.noexc33:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i28
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cc, ptr %0, align 8, !tbaa !47, !alias.scope !306
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !50 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 5 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
end_hunk_1
begin_hunk_2_@main:bb.a
  %i.dt = phi i8 [ %i.cd, %_ZNSolsEPFRSt8ios_baseS0_E.exit ], [ %i.cd, %bb.n ], [ %i.cd, %bb.p ], [ %i.cd, %bb.r ], [ %i.cd, %bb.t ], [ %i.cd, %bb.v ], [ %i.cd, %bb.x ], [ %i.cd, %bb.z ], [ %i.cd, %bb.ab ], [ 1, %bb.ad ], [ %i.cd, %bb.ac ], [ %i.cd, %bb.aa ], [ %i.cd, %bb.y ], [ %i.cd, %bb.w ], [ %i.cd, %bb.u ], [ %i.cd, %bb.s ], [ %i.cd, %bb.q ], [ %i.cd, %bb.o ], [ %i.cd, %bb.l ] ; 2 uses
  %i.du = phi i8 [ 1, %_ZNSolsEPFRSt8ios_baseS0_E.exit ], [ %i.ce, %bb.n ], [ %i.ce, %bb.p ], [ %i.ce, %bb.r ], [ %i.ce, %bb.t ], [ %i.ce, %bb.v ], [ %i.ce, %bb.x ], [ %i.ce, %bb.z ], [ %i.ce, %bb.ab ], [ %i.ce, %bb.ad ], [ %i.ce, %bb.ac ], [ %i.ce, %bb.aa ], [ %i.ce, %bb.y ], [ %i.ce, %bb.w ], [ %i.ce, %bb.u ], [ %i.ce, %bb.s ], [ %i.ce, %bb.q ], [ %i.ce, %bb.o ], [ %i.ce, %bb.l ] ; 2 uses
  %i.dv = phi i8 [ %i.ch, %_ZNSolsEPFRSt8ios_baseS0_E.exit ], [ %i.ch, %bb.n ], [ %i.ch, %bb.p ], [ %i.ch, %bb.r ], [ %i.ch, %bb.t ], [ %i.ch, %bb.v ], [ %i.ch, %bb.x ], [ %i.ch, %bb.z ], [ %i.ch, %bb.ab ], [ %i.ch, %bb.ad ], [ %i.ch, %bb.ac ], [ %i.ch, %bb.aa ], [ %i.ch, %bb.y ], [ %i.ch, %bb.w ], [ %i.ch, %bb.u ], [ 1, %bb.s ], [ %i.ch, %bb.q ], [ %i.ch, %bb.o ], [ %i.ch, %bb.l ] ; 2 uses
  %i.dw = phi i8 [ %i.cg, %_ZNSolsEPFRSt8ios_baseS0_E.exit ], [ %i.cg, %bb.n ], [ %i.cg, %bb.p ], [ %i.cg, %bb.r ], [ %i.cg, %bb.t ], [ %i.cg, %bb.v ], [ 1, %bb.x ], [ %i.cg, %bb.z ], [ %i.cg, %bb.ab ], [ %i.cg, %bb.ad ], [ %i.cg, %bb.ac ], [ %i.cg, %bb.aa ], [ %i.cg, %bb.y ], [ %i.cg, %bb.w ], [ %i.cg, %bb.u ], [ %i.cg, %bb.s ], [ %i.cg, %bb.q ], [ %i.cg, %bb.o ], [ %i.cg, %bb.l ] ; 2 uses
  %i.dx = phi i8 [ %i.cf, %_ZNSolsEPFRSt8ios_baseS0_E.exit ], [ %i.cf, %bb.n ], [ %i.cf, %bb.p ], [ %i.cf, %bb.r ], [ %i.cf, %bb.t ], [ %i.cf, %bb.v ], [ %i.cf, %bb.x ], [ %i.cf, %bb.z ], [ %i.cf, %bb.ab ], [ %i.cf, %bb.ad ], [ %i.cf, %bb.ac ], [ 1, %bb.aa ], [ %i.cf, %bb.y ], [ %i.cf, %bb.w ], [ %i.cf, %bb.u ], [ %i.cf, %bb.s ], [ %i.cf, %bb.q ], [ %i.cf, %bb.o ], [ %i.cf, %bb.l ] ; 2 uses
  %i.dy = add nuw i64 %.073295, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.dy, %i.ax
  br i1 %exitcond.not, label %..critedge121.loopexit_crit_edge, label %bb.l, !llvm.loop !344

bb.ai:                                            ; preds = %bb.j
  %i.dz = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !42
  %i.eb = icmp eq i8 %i.ea, 45
  br i1 %i.eb, label %.preheader, label %bb.at

.preheader:                                       ; preds = %bb.ai
  %.not500 = icmp eq i64 %i.ax, 2
  br i1 %.not500, label %._crit_edge.i.i.i.thread, label %.lr.ph347

._crit_edge.i.i.i.thread:                         ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  store ptr %i.ad, ptr %5, align 8, !tbaa !47, !alias.scope !353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26, !noalias !353
  store i64 0, ptr %i.c, align 8, !tbaa !81, !noalias !353
  br label %bb.am

.lr.ph347:                                        ; preds = %.preheader, %bb.aj
  %.072346 = phi i64 [ %i.ee, %bb.aj ], [ 2, %.preheader ] ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.az, i64 %.072346
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !42
  %.not105 = icmp eq i8 %i.ed, 61
  br i1 %.not105, label %.critedge, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph347
  %i.ee = add nuw i64 %.072346, 1                 ; 2 uses
  %exitcond633.not = icmp eq i64 %i.ee, %i.ax
  br i1 %exitcond633.not, label %.critedge, label %.lr.ph347, !llvm.loop !347

.critedge:                                        ; preds = %.lr.ph347, %bb.aj
  %.072.lcssa = phi i64 [ %i.ax, %bb.aj ], [ %.072346, %.lr.ph347 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.ef = add i64 %.072.lcssa, -2                 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  store ptr %i.ad, ptr %5, align 8, !tbaa !47, !alias.scope !354
  %i.eg = getelementptr inbounds nuw i8, ptr %i.az, i64 2 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26, !noalias !354
  store i64 %i.ef, ptr %i.c, align 8, !tbaa !81, !noalias !354
  %i.eh = icmp ugt i64 %i.ef, 15
  br i1 %i.eh, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %.critedge
  %i.ei = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc138 unwind label %bb.ap ; 2 uses

.noexc138:                                        ; preds = %.noexc10.i.i
  store ptr %i.ei, ptr %5, align 8, !tbaa !50, !alias.scope !354
  %i.ej = load i64, ptr %i.c, align 8, !tbaa !81, !noalias !354
  store i64 %i.ej, ptr %i.ad, align 8, !tbaa !42, !alias.scope !354
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc138, %.critedge
  %i.ek = phi ptr [ %i.ei, %.noexc138 ], [ %i.ad, %.critedge ] ; 2 uses
  switch i64 %i.ef, label %bb.al [
    i64 1, label %bb.ak
    i64 0, label %bb.am
  ]

bb.ak:                                            ; preds = %._crit_edge.i.i.i
  %i.el = load i8, ptr %i.eg, align 1, !tbaa !42
  store i8 %i.el, ptr %i.ek, align 1, !tbaa !42
  br label %bb.am

bb.al:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ek, ptr nonnull align 1 %i.eg, i64 %i.ef, i1 false)
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge.i.i.i.thread, %bb.al, %bb.ak, %._crit_edge.i.i.i
  %.072.lcssa701703 = phi i64 [ 2, %._crit_edge.i.i.i.thread ], [ %.072.lcssa, %bb.al ], [ %.072.lcssa, %bb.ak ], [ %.072.lcssa, %._crit_edge.i.i.i ]
  %i.em = load i64, ptr %i.c, align 8, !tbaa !81, !noalias !354 ; 2 uses
  store i64 %i.em, ptr %i.ae, align 8, !tbaa !49, !alias.scope !354
  %i.en = load ptr, ptr %5, align 8, !tbaa !50, !alias.scope !354
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.em
  store i8 0, ptr %i.eo, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26, !noalias !354
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ep = add i64 %.072.lcssa701703, 1            ; 3 uses
  %i.eq = load i64, ptr %i.k, align 8, !tbaa !49  ; 2 uses
  %.not106 = icmp ult i64 %i.ep, %i.eq
  br i1 %.not106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i139, label %._crit_edge.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i139: ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !355)
  store ptr %i.af, ptr %6, align 8, !tbaa !47, !alias.scope !355
  %i.er = load ptr, ptr %4, align 8, !tbaa !50, !noalias !355
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ep ; 2 uses
  %i.et = sub nuw i64 %i.eq, %i.ep                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26, !noalias !355
  store i64 %i.et, ptr %i.b, align 8, !tbaa !81, !noalias !355
  %i.eu = icmp ugt i64 %i.et, 15
  br i1 %i.eu, label %.noexc10.i.i142, label %._crit_edge.i.i.i141

.noexc10.i.i142:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i139
  %i.ev = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc144 unwind label %bb.aq ; 2 uses

.noexc144:                                        ; preds = %.noexc10.i.i142
  store ptr %i.ev, ptr %6, align 8, !tbaa !50, !alias.scope !355
  %i.ew = load i64, ptr %i.b, align 8, !tbaa !81, !noalias !355
  store i64 %i.ew, ptr %i.af, align 8, !tbaa !42, !alias.scope !355
  br label %._crit_edge.i.i.i141

._crit_edge.i.i.i141:                             ; preds = %.noexc144, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i139
  %i.ex = phi ptr [ %i.ev, %.noexc144 ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i139 ] ; 2 uses
  switch i64 %i.et, label %bb.ao [
    i64 1, label %bb.an
    i64 0, label %.thread231
  ]

bb.an:                                            ; preds = %._crit_edge.i.i.i141
  %i.ey = load i8, ptr %i.es, align 1, !tbaa !42
  store i8 %i.ey, ptr %i.ex, align 1, !tbaa !42
  br label %.thread231

bb.ao:                                            ; preds = %._crit_edge.i.i.i141
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ex, ptr align 1 %i.es, i64 %i.et, i1 false)
  br label %.thread231

.thread231:                                       ; preds = %bb.ao, %bb.an, %._crit_edge.i.i.i141
  %i.ez = load i64, ptr %i.b, align 8, !tbaa !81, !noalias !355 ; 2 uses
  store i64 %i.ez, ptr %i.ag, align 8, !tbaa !49, !alias.scope !355
  %i.fa = load ptr, ptr %6, align 8, !tbaa !50, !alias.scope !355
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ez
  store i8 0, ptr %i.fb, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26, !noalias !355
  br label %.critedge124

._crit_edge.i.i146:                               ; preds = %bb.am
  store ptr %i.af, ptr %6, align 8, !tbaa !47
  store i64 0, ptr %i.ag, align 8, !tbaa !49
  store i8 0, ptr %i.af, align 8, !tbaa !42
  br label %.critedge124

.critedge124:                                     ; preds = %.thread231, %._crit_edge.i.i146
  %i.fc = load i64, ptr %i.ae, align 8, !tbaa !49 ; 2 uses
  %cond251 = icmp eq i64 %i.fc, 4
  br i1 %cond251, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread238

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.critedge124
  %i.fd = load ptr, ptr %5, align 8, !tbaa !50    ; 3 uses
  %i.fe = load i32, ptr %i.fd, align 1
  %i.ff = icmp ne i32 %i.fe, 1886152040
  %i.fg = zext i1 %i.ff to i32
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread232

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  invoke void @_Z8showHelpv()
          to label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread239 unwind label %bb.as

bb.ap:                                            ; preds = %.noexc10.i.i
  %i.fi = landingpad { ptr, i32 }
          cleanup
  store i8 %.lcssa748777, ptr %i.n, align 2
  store i8 %.lcssa749786, ptr %i.o, align 1
  store i8 %.lcssa750795, ptr %i.p, align 4
  store i8 %.lcssa751804, ptr %i.q, align 1
  store i8 %.lcssa752813, ptr %i.r, align 2
  store i8 %.lcssa753822, ptr %i.s, align 1
  store i8 %.lcssa754831, ptr %i.t, align 4
  store i8 %.lcssa755840, ptr %i.u, align 1
  store i8 %.lcssa756849, ptr %i.v, align 1
  store i8 %.lcssa757858, ptr %i.w, align 4
  store i8 %.lcssa758867, ptr %i.x, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

bb.aq:                                            ; preds = %.noexc10.i.i142
  %i.fj = landingpad { ptr, i32 }
          cleanup
  store i8 %.lcssa748777, ptr %i.n, align 2
  store i8 %.lcssa749786, ptr %i.o, align 1
  store i8 %.lcssa750795, ptr %i.p, align 4
  store i8 %.lcssa751804, ptr %i.q, align 1
  store i8 %.lcssa752813, ptr %i.r, align 2
  store i8 %.lcssa753822, ptr %i.s, align 1
  store i8 %.lcssa754831, ptr %i.t, align 4
  store i8 %.lcssa755840, ptr %i.u, align 1
  store i8 %.lcssa756849, ptr %i.v, align 1
  store i8 %.lcssa757858, ptr %i.w, align 4
  store i8 %.lcssa758867, ptr %i.x, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread232: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.fk = load i32, ptr %i.fd, align 1
  %i.fl = icmp ne i32 %i.fk, 1701080941
  %i.fm = zext i1 %i.fl to i32
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread233

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread232
  %i.fo = load i64, ptr %i.ag, align 8, !tbaa !49
  switch i64 %i.fo, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread233 [
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit153
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit155
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit153: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread
  %i.fp = load ptr, ptr %6, align 8, !tbaa !50    ; 4 uses
  %i.fq = load i32, ptr %i.fp, align 1
  %i.fr = xor i32 %i.fq, 1768125281
  %i.fs = getelementptr i8, ptr %i.fp, i64 4
  %i.ft = load i8, ptr %i.fs, align 1
  %i.fu = zext i8 %i.ft to i32
  %i.fv = xor i32 %i.fu, 105
  %i.fw = or i32 %i.fr, %i.fv
  %i.fx = icmp ne i32 %i.fw, 0
  %i.fy = zext i1 %i.fx to i32
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread233, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit157

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit155: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread
  %.pre = load ptr, ptr %6, align 8, !tbaa !50    ; 2 uses
  %8 = load i16, ptr %.pre, align 1
  %9 = xor i16 %8, 25960
  %10 = getelementptr i8, ptr %.pre, i64 2
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i16
  %13 = xor i16 %12, 120
  %14 = or i16 %9, %13
  %15 = icmp ne i16 %14, 0
  %16 = zext i1 %15 to i32
  %i.ga = icmp eq i32 %16, 0
  %spec.select874 = select i1 %i.ga, i32 1, i32 %i.ai
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread233

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit157: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit153
  %17 = load i32, ptr %i.fp, align 1
  %18 = xor i32 %17, 829973864
  %19 = getelementptr i8, ptr %i.fp, i64 4
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = xor i32 %21, 54
  %23 = or i32 %18, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  %i.gb = icmp eq i32 %25, 0
  %spec.select875 = select i1 %i.gb, i32 2, i32 %i.ai
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread233

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread
  %.pre649 = load ptr, ptr %6, align 8, !tbaa !50 ; 2 uses
  %26 = load i32, ptr %.pre649, align 1
  %27 = xor i32 %26, 1701601648
  %28 = getelementptr i8, ptr %.pre649, i64 3
  %29 = load i32, ptr %28, align 1
  %30 = xor i32 %29, 1702130789
  %31 = or i32 %27, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  %i.gc = icmp eq i32 %33, 0
  %spec.select = select i1 %i.gc, i32 3, i32 %i.ai
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread233

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread233: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit157, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit155, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit153, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread232
  %i.gd = phi i32 [ %i.ai, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit153 ], [ %spec.select, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159 ], [ %spec.select875, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit157 ], [ %i.ai, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread232 ], [ %spec.select874, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit155 ] ; 2 uses
  %i.ge = load i32, ptr %i.fd, align 1
  %i.gf = icmp ne i32 %i.ge, 1702521203
  %i.gg = zext i1 %i.gf to i32
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread239

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread233
  %i.gi = invoke noundef i32 @_Z8strtovalIiET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.ar unwind label %bb.as     ; 2 uses

bb.ar:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread
  %i.gj = add i32 %i.gi, -1
  %or.cond11 = icmp ult i32 %i.gj, 4096
  %spec.select498 = select i1 %or.cond11, i32 %i.gi, i32 %i.aj
  %.pre650 = load i64, ptr %i.ae, align 8, !tbaa !49
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread238

bb.as:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread
  %i.gk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i8 %.lcssa748777, ptr %i.n, align 2
  store i8 %.lcssa749786, ptr %i.o, align 1
  store i8 %.lcssa750795, ptr %i.p, align 4
  store i8 %.lcssa751804, ptr %i.q, align 1
  store i8 %.lcssa752813, ptr %i.r, align 2
  store i8 %.lcssa753822, ptr %i.s, align 1
  store i8 %.lcssa754831, ptr %i.t, align 4
  store i8 %.lcssa755840, ptr %i.u, align 1
  store i8 %.lcssa756849, ptr %i.v, align 1
  store i8 %.lcssa757858, ptr %i.w, align 4
  store i8 %.lcssa758867, ptr %i.x, align 1
  %i.gl = load ptr, ptr %6, align 8, !tbaa !50    ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.af
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.as
  %i.gn = load i64, ptr %i.af, align 8, !tbaa !42
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.go) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread238: ; preds = %bb.ar, %.critedge124
  %i.gp = phi i64 [ %i.fc, %.critedge124 ], [ %.pre650, %bb.ar ]
  %i.gq = phi i32 [ %i.aj, %.critedge124 ], [ %spec.select498, %bb.ar ] ; 5 uses
  %i.gr = phi i32 [ %i.ai, %.critedge124 ], [ %i.gd, %bb.ar ] ; 5 uses
  %i.gs = icmp eq i64 %i.gp, 6
  br i1 %i.gs, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread239

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread238
  %i.gt = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 1
  %i.gv = xor i32 %i.gu, 1836216166
  %i.gw = getelementptr i8, ptr %i.gt, i64 4
  %i.gx = load i16, ptr %i.gw, align 1
  %i.gy = zext i16 %i.gx to i32
  %i.gz = xor i32 %i.gy, 29793
  %i.ha = or i32 %i.gv, %i.gz
  %i.hb = icmp ne i32 %i.ha, 0
  %i.hc = zext i1 %i.hb to i32
  %i.hd = icmp eq i32 %i.hc, 0
  %i.he = load i64, ptr %i.ag, align 8
  %cond253 = icmp eq i64 %i.he, 3
  %or.cond = select i1 %i.hd, i1 %cond253, i1 false
  br i1 %or.cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread239

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163
  %i.hf = load ptr, ptr %6, align 8, !tbaa !50    ; 6 uses
  %i.hg = load i16, ptr %i.hf, align 1
  %i.hh = xor i16 %i.hg, 26989
  %i.hi = getelementptr i8, ptr %i.hf, i64 2
  %i.hj = load i8, ptr %i.hi, align 1
  %i.hk = zext i8 %i.hj to i16
  %i.hl = xor i16 %i.hk, 120
  %i.hm = or i16 %i.hh, %i.hl
  %i.hn = icmp ne i16 %i.hm, 0
  %i.ho = zext i1 %i.hn to i32
  %i.hp = icmp eq i32 %i.ho, 0
  br i1 %i.hp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread239, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread240

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread240: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165
  %i.hq = load i16, ptr %i.hf, align 1
  %i.hr = xor i16 %i.hq, 25960
  %i.hs = getelementptr i8, ptr %i.hf, i64 2
  %i.ht = load i8, ptr %i.hs, align 1
  %i.hu = zext i8 %i.ht to i16
  %i.hv = xor i16 %i.hu, 120
  %i.hw = or i16 %i.hr, %i.hv
  %i.hx = icmp ne i16 %i.hw, 0
  %i.hy = zext i1 %i.hx to i32
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread239, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit167.thread241

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit167.thread241: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread240
  %i.ia = load i16, ptr %i.hf, align 1
  %i.ib = xor i16 %i.ia, 26978
  %i.ic = getelementptr i8, ptr %i.hf, i64 2
  %i.id = load i8, ptr %i.ic, align 1
  %i.ie = zext i8 %i.id to i16
  %i.if = xor i16 %i.ie, 110
  %i.ig = or i16 %i.ib, %i.if
  %i.ih = icmp ne i16 %i.ig, 0
  %i.ii = zext i1 %i.ih to i32
  %i.ij = icmp eq i32 %i.ii, 0
  %spec.select499 = select i1 %i.ij, i32 2, i32 %i.ak
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread239

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread239: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread233, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit167.thread241, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread240, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread238, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ik = phi i32 [ %i.ak, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163 ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165 ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread240 ], [ %spec.select499, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit167.thread241 ], [ %i.ak, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread233 ], [ %i.ak, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.ak, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread238 ]
  %i.il = phi i32 [ %i.gq, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163 ], [ %i.gq, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165 ], [ %i.gq, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread240 ], [ %i.gq, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit167.thread241 ], [ %i.aj, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread233 ], [ %i.aj, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.gq, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread238 ]
  %i.im = phi i32 [ %i.gr, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163 ], [ %i.gr, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165 ], [ %i.gr, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread240 ], [ %i.gr, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit167.thread241 ], [ %i.gd, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread233 ], [ %i.ai, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.gr, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread238 ]
  %not. = phi i1 [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread240 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit167.thread241 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread233 ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread238 ]
  %i.in = load ptr, ptr %6, align 8, !tbaa !50    ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.af
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread239
  %i.ip = load i64, ptr %i.af, align 8, !tbaa !42
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.iq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread239, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ir = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.ad
  br i1 %i.is, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  %i.it = load i64, ptr %i.ad, align 8, !tbaa !42
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.critedge121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.aq
  %.pn.pn = phi { ptr, i32 } [ %i.fj, %bb.aq ], [ %i.gk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.gk, %bb.as ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.iv = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.iw = icmp eq ptr %i.iv, %i.ad
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ix = load i64, ptr %i.ad, align 8, !tbaa !42
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176, %bb.ap
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fi, %bb.ap ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.ay

bb.at:                                            ; preds = %bb.i, %bb.h, %bb.ai
  %i.iz = load ptr, ptr %i.ab, align 8, !tbaa !84 ; 8 uses
  %i.ja = load ptr, ptr %i.ac, align 8, !tbaa !97
  %.not.i = icmp eq ptr %i.iz, %i.ja
  br i1 %.not.i, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 16 ; 3 uses
  store ptr %i.jb, ptr %i.iz, align 8, !tbaa !47
  %i.jc = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.ax, ptr %i.a, align 8, !tbaa !81
  %i.jd = icmp ugt i64 %i.ax, 15
  br i1 %i.jd, label %.noexc.i.i, label %._crit_edge.i.i.i179

.noexc.i.i:                                       ; preds = %bb.au
  %i.je = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.iz, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc180 unwind label %bb.m  ; 2 uses

.noexc180:                                        ; preds = %.noexc.i.i
  store ptr %i.je, ptr %i.iz, align 8, !tbaa !50
  %i.jf = load i64, ptr %i.a, align 8, !tbaa !81
  store i64 %i.jf, ptr %i.jb, align 8, !tbaa !42
  br label %._crit_edge.i.i.i179

._crit_edge.i.i.i179:                             ; preds = %.noexc180, %bb.au
  %i.jg = phi ptr [ %i.je, %.noexc180 ], [ %i.jb, %bb.au ] ; 2 uses
  switch i64 %i.ax, label %bb.aw [
    i64 1, label %bb.av
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.av:                                            ; preds = %._crit_edge.i.i.i179
  %i.jh = load i8, ptr %i.jc, align 1, !tbaa !42
  store i8 %i.jh, ptr %i.jg, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.aw:                                            ; preds = %._crit_edge.i.i.i179
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jg, ptr align 1 %i.jc, i64 %i.ax, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
end_hunk_2
