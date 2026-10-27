Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.14?download=true
inline.NumInlined: 553
inline.NumDeleted: 253
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 18
begin_hunk_0
@127 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtB8_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtB1N_4SyncEL_EENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image }>, align 8
@128 = private unnamed_addr constant [13 x i8] c"DecodingError", align 1
@129 = private unnamed_addr constant [6 x i8] c"format", align 1
@130 = private unnamed_addr constant [10 x i8] c"underlying", align 1
@131 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCsa5QsYiPB8Gl_5image5error14LimitErrorKindNtB6_5Debug3fmtBA_ }>, align 8
@132 = private unnamed_addr constant [10 x i8] c"LimitError", align 1
@133 = private unnamed_addr constant [4 x i8] c"kind", align 1
@134 = private unnamed_addr constant [14 x i8] c"DimensionError", align 1
@135 = private unnamed_addr constant [18 x i8] c"InsufficientMemory", align 1
@136 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs8_NtNtCsa5QsYiPB8Gl_5image2io6limitsNtB5_6LimitsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8
@137 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCsa5QsYiPB8Gl_5image2io6limits12LimitSupportNtB6_5Debug3fmtBC_ }>, align 8
@138 = private unnamed_addr constant [11 x i8] c"Unsupported", align 1
@139 = private unnamed_addr constant [6 x i8] c"limits", align 1
@140 = private unnamed_addr constant [9 x i8] c"supported", align 1
@141 = private unnamed_addr constant [2 x i8] c"A8", align 1
@142 = private unnamed_addr constant [2 x i8] c"L1", align 1
@143 = private unnamed_addr constant [3 x i8] c"La1", align 1
@144 = private unnamed_addr constant [4 x i8] c"Rgb1", align 1
@145 = private unnamed_addr constant [5 x i8] c"Rgba1", align 1
@146 = private unnamed_addr constant [2 x i8] c"L2", align 1
@147 = private unnamed_addr constant [3 x i8] c"La2", align 1
@148 = private unnamed_addr constant [4 x i8] c"Rgb2", align 1
@149 = private unnamed_addr constant [5 x i8] c"Rgba2", align 1
@150 = private unnamed_addr constant [2 x i8] c"L4", align 1
@151 = private unnamed_addr constant [3 x i8] c"La4", align 1
@152 = private unnamed_addr constant [4 x i8] c"Rgb4", align 1
@153 = private unnamed_addr constant [5 x i8] c"Rgba4", align 1
@154 = private unnamed_addr constant [6 x i8] c"Rgb5x1", align 1
@155 = private unnamed_addr constant [2 x i8] c"L8", align 1
@156 = private unnamed_addr constant [3 x i8] c"La8", align 1
@157 = private unnamed_addr constant [4 x i8] c"Rgb8", align 1
@158 = private unnamed_addr constant [5 x i8] c"Rgba8", align 1
@159 = private unnamed_addr constant [3 x i8] c"L16", align 1
@160 = private unnamed_addr constant [4 x i8] c"La16", align 1
@161 = private unnamed_addr constant [5 x i8] c"Rgb16", align 1
@162 = private unnamed_addr constant [6 x i8] c"Rgba16", align 1
@163 = private unnamed_addr constant [4 x i8] c"Bgr8", align 1
@164 = private unnamed_addr constant [5 x i8] c"Bgra8", align 1
@165 = private unnamed_addr constant [6 x i8] c"Rgb32F", align 1
@166 = private unnamed_addr constant [7 x i8] c"Rgba32F", align 1
@167 = private unnamed_addr constant [5 x i8] c"Cmyk8", align 1
@168 = private unnamed_addr constant [6 x i8] c"Cmyk16", align 1
@169 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRhNtB6_5Debug3fmtCsa5QsYiPB8Gl_5image }>, align 8
@170 = private unnamed_addr constant [7 x i8] c"Unknown", align 1
@171 = private unnamed_addr constant [5 x i8] c"Error", align 1
@172 = private unnamed_addr constant [9 x i8] c"Unaliased", align 1
@173 = private unnamed_addr constant [11 x i8] c"PixelPacked", align 1
@174 = private unnamed_addr constant [11 x i8] c"ImagePacked", align 1
@175 = private unnamed_addr constant [14 x i8] c"RowMajorPacked", align 1
@176 = private unnamed_addr constant [17 x i8] c"ColumnMajorPacked", align 1
@177 = private unnamed_addr constant [8 x i8] c"Identity", align 1
@178 = private unnamed_addr constant [5 x i8] c"UsFCC", align 1
@179 = private unnamed_addr constant [9 x i8] c"Smpte170m", align 1
@180 = private unnamed_addr constant [5 x i8] c"YCgCo", align 1
@181 = private unnamed_addr constant [17 x i8] c"Bt2020NonConstant", align 1
@182 = private unnamed_addr constant [14 x i8] c"Bt2020Constant", align 1
@183 = private unnamed_addr constant [9 x i8] c"Smpte2085", align 1
@184 = private unnamed_addr constant [30 x i8] c"ChromaticityDerivedNonConstant", align 1
@185 = private unnamed_addr constant [27 x i8] c"ChromaticityDerivedConstant", align 1
@186 = private unnamed_addr constant [6 x i8] c"Bt2100", align 1
@187 = private unnamed_addr constant [7 x i8] c"IptPqC2", align 1
@188 = private unnamed_addr constant [7 x i8] c"YCgCoRe", align 1
@189 = private unnamed_addr constant [7 x i8] c"YCgCoRo", align 1
@190 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCsa5QsYiPB8Gl_5image2io6format11ImageFormatNtB6_5Debug3fmtBC_ }>, align 8
@191 = private unnamed_addr constant [5 x i8] c"Exact", align 1
@192 = private unnamed_addr constant [4 x i8] c"Name", align 1
@193 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCsaKJjC64KgbL_3std4path7PathBufNtB6_5Debug3fmtCsa5QsYiPB8Gl_5image }>, align 8
@194 = private unnamed_addr constant [13 x i8] c"PathExtension", align 1
@195 = private unnamed_addr constant [4 x i8] c"None", align 1
@196 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRmNtB6_5Debug3fmtCsa5QsYiPB8Gl_5image }>, align 8
@197 = private unnamed_addr constant [4 x i8] c"Some", align 1
@198 = private unnamed_addr constant [23 x i8] c"The layout is too large", align 1
@199 = private unnamed_addr constant [30 x i8] c"not have any aliasing channels", align 1
@200 = private unnamed_addr constant [18 x i8] c"have packed pixels", align 1
@201 = private unnamed_addr constant [15 x i8] c"be fully packed", align 1
@202 = private unnamed_addr constant [31 x i8] c"be packed and in row major form", align 1
@203 = private unnamed_addr constant [34 x i8] c"be packed and in column major form", align 1
@204 = private unnamed_addr constant [23 x i8] c"\14The layout needs to \C0\00", align 1
@205 = private unnamed_addr constant [78 x i8] c"(The channel count of the chosen pixel (=\C0\1F) does agree with the layout (=\C0\01)\00", align 1
@206 = private unnamed_addr constant [49 x i8] c".The chosen color type does not match the hint \C0\00", align 1
@207 = private unnamed_addr constant [68 x i8] c"\1BThe encoder or decoder for \C0\22 does not support the color type `\C0\01`\00", align 1
@208 = private unnamed_addr constant [61 x i8] c"(Converting with the texel memory layout \C0\11 is not supported\00", align 1
@209 = private unnamed_addr constant [81 x i8] c"LThe colorimetric interpretation of a CICP color space is not supported for `\C0\01`\00", align 1
@210 = private unnamed_addr constant [61 x i8] c"\13The file extension \C0& was not recognized as an image format\00", align 1
@211 = private unnamed_addr constant [40 x i8] c"The image format could not be determined", align 1
@212 = private unnamed_addr constant [38 x i8] c"\11The image format \C0\11 is not supported\00", align 1
@213 = private unnamed_addr constant [51 x i8] c"0The decoder does not support the format feature \C0\00", align 1
@214 = private unnamed_addr constant [59 x i8] c"\10The decoder for \C0& does not support the format features \C0\00", align 1
@215 = private unnamed_addr constant [56 x i8] c"The Image's dimensions are either too small or too large", align 1
@216 = private unnamed_addr constant [65 x i8] c"The end the image stream has been reached due to a previous error", align 1
@217 = private unnamed_addr constant [44 x i8] c"\09The CICP \C0\1F can not be used for RGB images\00", align 1
@218 = private unnamed_addr constant [31 x i8] c"\1CThe parameter is malformed: \C0\00", align 1
@219 = private unnamed_addr constant [37 x i8] c"The end of the image has been reached", align 1
@220 = private unnamed_addr constant [50 x i8] c"\10The color space \C0\1D does not match the expected \C0\00", align 1
@221 = private unnamed_addr constant [4 x i8] c"\01\0A\C0\00", align 1
@222 = private unnamed_addr constant [25 x i8] c"\16Format error encoding \C0\00", align 1
@223 = private unnamed_addr constant [29 x i8] c"\16Format error encoding \C0\02:\0A\C0\00", align 1
@224 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1R_4SyncEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsa5QsYiPB8Gl_5image, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBc_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt }>, align 8
@225 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1R_4SyncEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsa5QsYiPB8Gl_5image, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBd_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtB12_6marker4SendNtB1z_4SyncEL_EINtNtB12_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB12_3fmt5Debug3fmt, ptr @_RNvXs_NvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBc_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt, ptr @224, ptr @_RNvYNtNvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBc_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCsa5QsYiPB8Gl_5image, ptr @_RNvYNtNvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBc_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCsa5QsYiPB8Gl_5image, ptr @_RNvYNtNvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBc_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCsa5QsYiPB8Gl_5image, ptr @_RNvYNtNvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBc_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCsa5QsYiPB8Gl_5image, ptr @_RNvYNtNvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBc_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCsa5QsYiPB8Gl_5image }>, align 8
@226 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsv_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_18CicpColorPrimariesNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8
@227 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsD_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_27CicpTransferCharacteristicsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8
@228 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsL_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_22CicpMatrixCoefficientsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8
@229 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp22CicpVideoFullRangeFlagNtB6_5Debug3fmtBC_ }>, align 8
@230 = private unnamed_addr constant [4 x i8] c"Cicp", align 1
@231 = private unnamed_addr constant [9 x i8] c"primaries", align 1
@232 = private unnamed_addr constant [8 x i8] c"transfer", align 1
@233 = private unnamed_addr constant [6 x i8] c"matrix", align 1
@234 = private unnamed_addr constant [10 x i8] c"full_range", align 1
@235 = private unnamed_addr constant [12 x i8] c"Format error", align 1
@236 = private unnamed_addr constant [25 x i8] c"\16Format error decoding \C0\00", align 1
@237 = private unnamed_addr constant [29 x i8] c"\16Format error decoding \C0\02: \C0\00", align 1
@238 = private unnamed_addr constant [24 x i8] c"Image size exceeds limit", align 1
@239 = private unnamed_addr constant [21 x i8] c"Memory limit exceeded", align 1
@240 = private unnamed_addr constant [79 x i8] c"The following strict limits are specified but not supported by the opertation: ", align 1
@241 = private unnamed_addr constant [6 x i8] c"\01`\C0\01`\00", align 1
@242 = private unnamed_addr constant [7 x i8] c"\02`.\C0\01`\00", align 1
@243 = private unnamed_addr constant [9 x i8] c"`Unknown`", align 1
@244 = private unnamed_addr constant [60 x i8] c"\11The pixel layout \C0' is not supported as a buffer ColorType\00", align 1
@245 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCsa5QsYiPB8Gl_5image5error20UnsupportedErrorKindNtB6_5Debug3fmtBA_ }>, align 8
@246 = private unnamed_addr constant [16 x i8] c"UnsupportedError", align 1
@247 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCsa5QsYiPB8Gl_5image5color17ExtendedColorTypeNtB6_5Debug3fmtBA_ }>, align 8
@248 = private unnamed_addr constant [5 x i8] c"Color", align 1
@249 = private unnamed_addr constant [11 x i8] c"ColorLayout", align 1
@250 = private unnamed_addr constant [14 x i8] c"ColorspaceCicp", align 1
@251 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintNtB6_5Debug3fmtBA_ }>, align 8
@252 = private unnamed_addr constant [6 x i8] c"Format", align 1
@253 = private unnamed_addr constant [14 x i8] c"GenericFeature", align 1
@254 = private unnamed_addr constant [4 x i8] c"RgbM", align 1
@255 = private unnamed_addr constant [4 x i8] c"RgbB", align 1
@256 = private unnamed_addr constant [7 x i8] c"Rgb240m", align 1
@257 = private unnamed_addr constant [11 x i8] c"GenericFilm", align 1
@258 = private unnamed_addr constant [7 x i8] c"Rgb2020", align 1
@259 = private unnamed_addr constant [3 x i8] c"Xyz", align 1
@260 = private unnamed_addr constant [10 x i8] c"SmpteRp431", align 1
@261 = private unnamed_addr constant [10 x i8] c"SmpteRp432", align 1
@262 = private unnamed_addr constant [10 x i8] c"Industry22", align 1
@263 = private unnamed_addr constant [13 x i8] c"EncodingError", align 1
@264 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error18ParameterErrorKindEBF_, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsA_NtCsa5QsYiPB8Gl_5image5errorNtB5_18ParameterErrorKindNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8
@265 = private unnamed_addr constant [14 x i8] c"ParameterError", align 1
@266 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@267 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 1599374893429008851 to ptr), ptr inttoptr (i64 8746915308608185762 to ptr) }>, align 8
@switch.table._RINvNtCsaXAyoiiLu3Y_9zune_jpeg7headers11parse_app14INtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image = private unnamed_addr constant [3 x i8] c"\06\02\05", align 4
@switch.table._RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8 = private unnamed_addr constant [63 x i8] [i8 0, i8 1, i8 2, i8 poison, i8 undef, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 undef, i8 poison, i8 poison, i8 poison, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 poison, i8 poison, i8 0, i8 1, i8 2, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 13, i8 14, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 undef], align 1
@switch.table._RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8.118 = private unnamed_addr constant [63 x i8] [i8 0, i8 0, i8 0, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 2, i8 poison, i8 poison, i8 poison, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 poison, i8 poison, i8 10, i8 10, i8 10, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 10, i8 10, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 11], align 1
@switch.table._RNvXs9_NtNtCsa5QsYiPB8Gl_5image6images4flatNtNtB9_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB5_5ErrorE4from = private unnamed_addr constant [10 x i8] c"\0E\0F\10\11\12\13\14\15\18\19", align 1
@switch.table._RNvXsD_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_27CicpTransferCharacteristicsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt = private unnamed_addr constant [18 x i8] [i8 5, i8 11, i8 poison, i8 6, i8 7, i8 5, i8 9, i8 6, i8 6, i8 7, i8 12, i8 6, i8 4, i8 12, i8 12, i8 9, i8 8, i8 9], align 8
@switch.table._RNvXsD_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_27CicpTransferCharacteristicsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.120 = private unnamed_addr constant [18 x ptr] [ptr @109, ptr @110, ptr poison, ptr @111, ptr @112, ptr @113, ptr @114, ptr @115, ptr @116, ptr @117, ptr @118, ptr @119, ptr @120, ptr @121, ptr @122, ptr @123, ptr @124, ptr @125], align 8
@switch.table._RNvXsL_NtNtCsa5QsYiPB8Gl_5image6images4flatNtB5_10NormalFormNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt = private unnamed_addr constant [5 x i8] c"\09\0B\0B\0E\11", align 8
@switch.table._RNvXsL_NtNtCsa5QsYiPB8Gl_5image6images4flatNtB5_10NormalFormNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.121 = private unnamed_addr constant [5 x ptr] [ptr @172, ptr @173, ptr @174, ptr @175, ptr @176], align 8
@switch.table._RNvXsL_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_22CicpMatrixCoefficientsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt = private unnamed_addr constant [18 x i8] [i8 8, i8 5, i8 11, i8 poison, i8 5, i8 7, i8 9, i8 9, i8 5, i8 17, i8 14, i8 9, i8 30, i8 27, i8 6, i8 7, i8 7, i8 7], align 8
@switch.table._RNvXsL_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_22CicpMatrixCoefficientsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.122 = private unnamed_addr constant [18 x ptr] [ptr @177, ptr @109, ptr @110, ptr poison, ptr @178, ptr @112, ptr @179, ptr @114, ptr @180, ptr @181, ptr @182, ptr @183, ptr @184, ptr @185, ptr @186, ptr @187, ptr @188, ptr @189], align 8
@switch.table._RNvXsa_NtNtCsa5QsYiPB8Gl_5image6images4flatNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt = private unnamed_addr constant [5 x ptr] [ptr @199, ptr @200, ptr @201, ptr @202, ptr @203], align 8
@switch.table._RNvXsa_NtNtCsa5QsYiPB8Gl_5image6images4flatNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.123 = private unnamed_addr constant [5 x i8] c"\1E\12\0F\1F\22", align 8
@switch.table._RNvXsv_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_18CicpColorPrimariesNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt = private unnamed_addr constant [22 x i8] [i8 4, i8 11, i8 poison, i8 4, i8 4, i8 5, i8 7, i8 11, i8 7, i8 3, i8 10, i8 10, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 10], align 8
@switch.table._RNvXsv_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_18CicpColorPrimariesNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.124 = private unnamed_addr constant [22 x ptr] [ptr @120, ptr @110, ptr poison, ptr @254, ptr @255, ptr @113, ptr @256, ptr @257, ptr @258, ptr @259, ptr @260, ptr @261, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr @262], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMNtCsdsTQD3x2eOp_3exr5errorNtB3_5Error11unsupportedReECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMNtCsdsTQD3x2eOp_3exr5errorNtB3_5Error7invalidReECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtCsa5QsYiPB8Gl_5image5errorNtB6_13EncodingError3newNtNtCsltZrX1n1NSl_3qoi5error5ErrorEB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = invoke { ptr, ptr } @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtCsltZrX1n1NSl_3qoi5error5ErrorE4fromCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %2)
          to label %_RNvXs1_NtCsj6eKBz9Db1c_4core7convertNtNtCsltZrX1n1NSl_3qoi5error5ErrorINtB5_4IntoINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2c_4SyncEL_EE4intoCsa5QsYiPB8Gl_5image.exit unwind label %bb.b ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #28
          to label %bb.d unwind label %bb.c

_RNvXs1_NtCsj6eKBz9Db1c_4core7convertNtNtCsltZrX1n1NSl_3qoi5error5ErrorINtB5_4IntoINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2c_4SyncEL_EE4intoCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a
  %i.d = extractvalue { ptr, ptr } %i.b, 0        ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.b, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d), "nonnull"(ptr %i.e) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.e, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtCsa5QsYiPB8Gl_5image5errorNtB6_13EncodingError3newReEB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = invoke fastcc ptr @_RNvXs1_NtCsj6eKBz9Db1c_4core7convertReINtB5_4IntoINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB1G_4SyncEL_EE4intoCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %._crit_edge unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #28
          to label %bb.d unwind label %bb.c

._crit_edge:                                      ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @225, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvMs0_NtNtCsa5QsYiPB8Gl_5image6images4flatINtB6_11FlatSamplesRSfE9into_viewINtNtBa_5color3RgbfEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 1), (64, 65)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8, !noundef !4  ; 2 uses
  %.not = icmp eq i8 %i.b, 3
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load i64, ptr %i.c, align 8, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !46, !noundef !4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !46, !noundef !4 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = add i32 %i.e, -1
  %i.k = add i32 %i.h, -1
  %i.l = zext i32 %i.j to i64
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !47, !noundef !4 ; 2 uses
  %i.p = icmp slt i64 %i.o, 0
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !47, !noundef !4
  %i.s = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 0, 4294967296) %i.l, i64 %i.r) ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !47, !noundef !4
  %i.w = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 0, 4294967296) %i.m, i64 %i.v) ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1
  %brmerge.i.i.i.i = or i1 %i.p, %i.t
  %or.cond.i.i.i.i = or i1 %i.x, %brmerge.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread5, label %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit, !prof !5

_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit: ; preds = %bb.d
  %i.y = extractvalue { i64, i1 } %i.w, 0
  %i.z = extractvalue { i64, i1 } %i.s, 0
  %i.aa = shl nuw i64 %i.o, 1                     ; 2 uses
  %i.ab = add i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp uge i64 %i.ab, %i.aa
  %i.ad = add i64 %i.ab, %i.y                     ; 2 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %narrow.i.i.i.i = and i1 %i.ac, %i.ae
  %i.af = icmp ult i64 %i.ad, %.val3
  %spec.select.i = and i1 %i.af, %narrow.i.i.i.i
  br i1 %spec.select.i, label %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread, label %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread5

bb.e:                                             ; preds = %bb.a
  store i8 2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.b, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 3, ptr %.sroa.5.0..sroa_idx, align 2
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 -2, ptr %i.ag, align 8
  br label %bb.f

_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread5: ; preds = %bb.d, %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit
  store i8 0, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 -2, ptr %i.ah, align 8
  br label %bb.f

_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread: ; preds = %bb.c, %bb.b, %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread5, %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvMs0_NtNtCsa5QsYiPB8Gl_5image6images4flatINtB6_11FlatSamplesRSfE9into_viewINtNtBa_5color4RgbafEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 1), (64, 65)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8, !noundef !4  ; 2 uses
  %.not = icmp eq i8 %i.b, 4
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load i64, ptr %i.c, align 8, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !56, !noundef !4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !56, !noundef !4 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = add i32 %i.e, -1
  %i.k = add i32 %i.h, -1
  %i.l = zext i32 %i.j to i64
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !57, !noundef !4
  %i.p = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.o, i64 range(i64 0, 256) 3) ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !57, !noundef !4
  %i.t = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 0, 4294967296) %i.l, i64 %i.s) ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !57, !noundef !4
  %i.x = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 0, 4294967296) %i.m, i64 %i.w) ; 2 uses
  %i.y = extractvalue { i64, i1 } %i.x, 1
  %brmerge.i.i.i.i = or i1 %i.q, %i.u
  %or.cond.i.i.i.i = or i1 %i.y, %brmerge.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread5, label %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit, !prof !5

_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit: ; preds = %bb.d
  %i.z = extractvalue { i64, i1 } %i.x, 0
  %i.aa = extractvalue { i64, i1 } %i.t, 0
  %i.ab = extractvalue { i64, i1 } %i.p, 0        ; 2 uses
  %i.ac = add i64 %i.aa, %i.ab                    ; 3 uses
  %i.ad = icmp uge i64 %i.ac, %i.ab
  %i.ae = add i64 %i.ac, %i.z                     ; 2 uses
  %i.af = icmp uge i64 %i.ae, %i.ac
  %narrow.i.i.i.i = and i1 %i.ad, %i.af
  %i.ag = icmp ult i64 %i.ae, %.val3
  %spec.select.i = and i1 %i.ag, %narrow.i.i.i.i
  br i1 %spec.select.i, label %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread, label %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread5

bb.e:                                             ; preds = %bb.a
  store i8 2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.b, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 4, ptr %.sroa.5.0..sroa_idx, align 2
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 -2, ptr %i.ah, align 8
  br label %bb.f

_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread5: ; preds = %bb.d, %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit
  store i8 0, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
end_hunk_0
begin_hunk_1_@_RINvMs0_NtNtCsa5QsYiPB8Gl_5image6images4flatINtB6_11FlatSamplesRStE9into_viewINtNtBa_5color4LumatEEBa_:bb.a
  br i1 %spec.select.i, label %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread, label %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread5

bb.e:                                             ; preds = %bb.a
  store i8 2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.b, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 -2, ptr %i.aa, align 8
  br label %bb.f

_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread5: ; preds = %bb.d, %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit
  store i8 0, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 -2, ptr %i.ab, align 8
  br label %bb.f

_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread: ; preds = %bb.c, %bb.b, %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread5, %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvMs0_NtNtCsa5QsYiPB8Gl_5image6images4flatINtB6_11FlatSamplesRStE9into_viewINtNtBa_5color4RgbatEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 1), (64, 65)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8, !noundef !4  ; 2 uses
  %.not = icmp eq i8 %i.b, 4
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load i64, ptr %i.c, align 8, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !126, !noundef !4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !126, !noundef !4 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = add i32 %i.e, -1
  %i.k = add i32 %i.h, -1
  %i.l = zext i32 %i.j to i64
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !127, !noundef !4
  %i.p = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.o, i64 range(i64 0, 256) 3) ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !127, !noundef !4
  %i.t = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 0, 4294967296) %i.l, i64 %i.s) ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !127, !noundef !4
  %i.x = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 0, 4294967296) %i.m, i64 %i.w) ; 2 uses
  %i.y = extractvalue { i64, i1 } %i.x, 1
  %brmerge.i.i.i.i = or i1 %i.q, %i.u
  %or.cond.i.i.i.i = or i1 %i.y, %brmerge.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread5, label %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit, !prof !5

_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit: ; preds = %bb.d
  %i.z = extractvalue { i64, i1 } %i.x, 0
  %i.aa = extractvalue { i64, i1 } %i.t, 0
  %i.ab = extractvalue { i64, i1 } %i.p, 0        ; 2 uses
  %i.ac = add i64 %i.aa, %i.ab                    ; 3 uses
  %i.ad = icmp uge i64 %i.ac, %i.ab
  %i.ae = add i64 %i.ac, %i.z                     ; 2 uses
  %i.af = icmp uge i64 %i.ae, %i.ac
  %narrow.i.i.i.i = and i1 %i.ad, %i.af
  %i.ag = icmp ult i64 %i.ae, %.val3
  %spec.select.i = and i1 %i.ag, %narrow.i.i.i.i
  br i1 %spec.select.i, label %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread, label %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread5

bb.e:                                             ; preds = %bb.a
  store i8 2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.b, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 4, ptr %.sroa.5.0..sroa_idx, align 2
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 -2, ptr %i.ah, align 8
  br label %bb.f

_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread5: ; preds = %bb.d, %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit
  store i8 0, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 -2, ptr %i.ai, align 8
  br label %bb.f

_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread: ; preds = %bb.c, %bb.b, %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread5, %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvMs0_NtNtCsa5QsYiPB8Gl_5image6images4flatINtB6_11FlatSamplesRStE9into_viewINtNtBa_5color5LumaAtEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 1), (64, 65)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8, !noundef !4  ; 2 uses
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load i64, ptr %i.c, align 8, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !136, !noundef !4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !136, !noundef !4 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = add i32 %i.e, -1
  %i.k = add i32 %i.h, -1
  %i.l = zext i32 %i.j to i64
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !137, !noundef !4
  %i.p = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 0, 4294967296) %i.l, i64 %i.o) ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !137, !noundef !4
  %i.t = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 0, 4294967296) %i.m, i64 %i.s) ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 1
  %or.cond.i.i.i.i = or i1 %i.q, %i.u
  br i1 %or.cond.i.i.i.i, label %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread5, label %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit, !prof !5

_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit: ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !137, !noundef !4 ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.t, 0
  %i.y = extractvalue { i64, i1 } %i.p, 0
  %i.z = add i64 %i.w, %i.y                       ; 3 uses
  %i.aa = icmp uge i64 %i.z, %i.w
  %i.ab = add i64 %i.z, %i.x                      ; 2 uses
  %i.ac = icmp uge i64 %i.ab, %i.z
  %narrow.i.i.i.i = and i1 %i.aa, %i.ac
  %i.ad = icmp ult i64 %i.ab, %.val3
  %spec.select.i = and i1 %i.ad, %narrow.i.i.i.i
  br i1 %spec.select.i, label %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread, label %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread5

bb.e:                                             ; preds = %bb.a
  store i8 2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.b, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 2, ptr %.sroa.5.0..sroa_idx, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 -2, ptr %i.ae, align 8
  br label %bb.f

_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread5: ; preds = %bb.d, %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit
  store i8 0, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 -2, ptr %i.af, align 8
  br label %bb.f

_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread: ; preds = %bb.c, %bb.b, %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread5, %_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout4fits.exit.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtCs4wP2HXfJTCR_5alloc6string13FromUtf8ErrorEB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = invoke { ptr, ptr } @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtB9_6string13FromUtf8ErrorE4fromCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %2)
          to label %_RNvXs1_NtCsj6eKBz9Db1c_4core7convertNtNtCs4wP2HXfJTCR_5alloc6string13FromUtf8ErrorINtB5_4IntoINtNtBC_5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB27_4SyncEL_EE4intoCsa5QsYiPB8Gl_5image.exit unwind label %bb.b ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #28
          to label %bb.d unwind label %bb.c

_RNvXs1_NtCsj6eKBz9Db1c_4core7convertNtNtCs4wP2HXfJTCR_5alloc6string13FromUtf8ErrorINtB5_4IntoINtNtBC_5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB27_4SyncEL_EE4intoCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a
  %i.d = extractvalue { ptr, ptr } %i.b, 0        ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.b, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d), "nonnull"(ptr %i.e) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.e, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtCs4wP2HXfJTCR_5alloc6string6StringEB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !145
  %i.c = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 24, 513) 24, i64 noundef range(i64 8, 129) 8) #24, !noalias !145 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.e, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #30
          to label %.noexc.i.i unwind label %bb.c, !noalias !144

.noexc.i.i:                                       ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1R_4SyncEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #28
          to label %.body unwind label %bb.d, !noalias !144

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !144
  unreachable

.body:                                            ; preds = %bb.c
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #28
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @225, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %.body
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtCsltZrX1n1NSl_3qoi5error5ErrorEB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = invoke { ptr, ptr } @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtCsltZrX1n1NSl_3qoi5error5ErrorE4fromCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %2)
          to label %_RNvXs1_NtCsj6eKBz9Db1c_4core7convertNtNtCsltZrX1n1NSl_3qoi5error5ErrorINtB5_4IntoINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2c_4SyncEL_EE4intoCsa5QsYiPB8Gl_5image.exit unwind label %bb.b ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #28
          to label %bb.d unwind label %bb.c

_RNvXs1_NtCsj6eKBz9Db1c_4core7convertNtNtCsltZrX1n1NSl_3qoi5error5ErrorINtB5_4IntoINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2c_4SyncEL_EE4intoCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a
  %i.d = extractvalue { ptr, ptr } %i.b, 0        ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.b, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d), "nonnull"(ptr %i.e) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.e, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtNtCsj6eKBz9Db1c_4core2io5error5ErrorEB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = invoke { ptr, ptr } @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtBW_2io5error5ErrorE4fromCsa5QsYiPB8Gl_5image(ptr noundef nonnull %2)
          to label %_RNvXs1_NtCsj6eKBz9Db1c_4core7convertNtNtNtB7_2io5error5ErrorINtB5_4IntoINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB22_4SyncEL_EE4intoCsa5QsYiPB8Gl_5image.exit unwind label %bb.b ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #28
          to label %bb.d unwind label %bb.c

_RNvXs1_NtCsj6eKBz9Db1c_4core7convertNtNtNtB7_2io5error5ErrorINtB5_4IntoINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB22_4SyncEL_EE4intoCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a
  %i.d = extractvalue { ptr, ptr } %i.b, 0        ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.b, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d), "nonnull"(ptr %i.e) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.e, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newReEB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = invoke fastcc ptr @_RNvXs1_NtCsj6eKBz9Db1c_4core7convertReINtB5_4IntoINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB1G_4SyncEL_EE4intoCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %._crit_edge unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #28
          to label %bb.d unwind label %bb.c

._crit_edge:                                      ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @225, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsaXAyoiiLu3Y_9zune_jpeg7headers10parse_app1INtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(29432) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
_RNvXNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB4_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB6_6traits16ZByteReaderTrait10read_bytesCsa5QsYiPB8Gl_5image.exit:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [2 x i8], align 2                 ; 5 uses
  %i.g = alloca [56 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i16 0, ptr %i.f, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.q = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull %i.f, i64 noundef 2), !noalias !156 ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0
  %i.s = extractvalue { i64, ptr } %i.q, 1
  %i.t = trunc nuw i64 %i.r to i1
  %spec.select = select i1 %i.t, i64 -9223372036854775808, i64 -1
  %.sink = ptrtoint ptr %i.s to i64
  store i64 %spec.select, ptr %i.e, align 8, !alias.scope !156
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sink, ptr %i.u, align 8, !alias.scope !156
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.0170.0.copyload = load i16, ptr %i.f, align 2
  %i.v = call i16 @llvm.bswap.i16(i16 %.sroa.0170.0.copyload) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.w = icmp ult i16 %i.v, 2
  br i1 %i.w, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_RNvXNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB4_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB6_6traits16ZByteReaderTrait10read_bytesCsa5QsYiPB8Gl_5image.exit
  %i.x = zext i16 %i.v to i64                     ; 5 uses
  %i.y = add nsw i64 %i.x, -2                     ; 5 uses
  %i.z = icmp ugt i16 %i.v, 8
  br i1 %i.z, label %bb.c, label %.thread381

bb.b:                                             ; preds = %_RNvXNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB4_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB6_6traits16ZByteReaderTrait10read_bytesCsa5QsYiPB8Gl_5image.exit
  store i8 1, ptr %0, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @6, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 21, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.bk

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call fastcc void @_RNvMs4_NtNtCslN0b76tEcC3_9zune_core10bytestream6readerINtB5_7ZReaderINtNtB5_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE7peek_atCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef align 8 dereferenceable(56) %i.p, i64 noundef 0, i64 noundef 6) #31
  %i.aa = load i64, ptr %i.o, align 8, !range !7, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.aa, -1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br i1 %.not, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.g, %bb.f
  %i.af = icmp ugt i16 %i.v, 31
  br i1 %i.af, label %bb.t, label %.thread377

bb.e:                                             ; preds = %bb.c
  store i8 13, ptr %0, align 8
  %.sroa.4182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %.sroa.4182.0..sroa_idx, align 8
  %.sroa.5183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ac, ptr %.sroa.5183.0..sroa_idx, align 8
  %.sroa.6184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ae, ptr %.sroa.6184.0..sroa_idx, align 8
  br label %bb.bk

bb.f:                                             ; preds = %bb.c
  %i.ag = icmp eq i64 %i.ae, 6
  br i1 %i.ag, label %bb.g, label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.ah = load i48, ptr %i.ac, align 1
  %i.ai = icmp eq i48 %i.ah, 1718188101
  br i1 %i.ai, label %bb.h, label %bb.d

bb.h:                                             ; preds = %bb.g
  %i.aj = call { i64, ptr } @_RNvXs1_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB7_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtCsj6eKBz9Db1c_4core2io4seek4Seek4seekCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef 2, i64 noundef 6), !noalias !157 ; 2 uses
  %i.ak = extractvalue { i64, ptr } %i.aj, 0
  %i.al = trunc nuw i64 %i.ak to i1
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = extractvalue { i64, ptr } %i.aj, 1
  %i.an = ptrtoint ptr %i.am to i64
  store i8 13, ptr %0, align 8
  %.sroa.4196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %.sroa.4196.0..sroa_idx, align 8
  %.sroa.5197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.an, ptr %.sroa.5197.0..sroa_idx, align 8
  br label %bb.bk

bb.j:                                             ; preds = %bb.h
  %i.ao = add nsw i64 %i.x, -8                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call fastcc void @_RNvMs4_NtNtCslN0b76tEcC3_9zune_core10bytestream6readerINtB5_7ZReaderINtNtB5_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE7peek_atCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef align 8 dereferenceable(56) %i.p, i64 noundef 0, i64 noundef %i.ao) #31
  %i.ap = load i64, ptr %i.n, align 8, !range !7, !noundef !4 ; 2 uses
  %.not354 = icmp eq i64 %i.ap, -1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.at = load i64, ptr %i.as, align 8            ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br i1 %.not354, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 13, ptr %0, align 8
  %.sroa.4210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ap, ptr %.sroa.4210.0..sroa_idx, align 8
  %.sroa.5211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ar, ptr %.sroa.5211.0..sroa_idx, align 8
  %.sroa.6212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.at, ptr %.sroa.6212.0..sroa_idx, align 8
  br label %bb.bk

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.at, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.au = load i64, ptr %i.d, align 8, !range !8, !noundef !4
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !range !9, !noundef !4 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.av, label %bb.m, label %bb.n, !prof !6

bb.m:                                             ; preds = %bb.l
  %i.az = load i64, ptr %i.ay, align 8
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ax, i64 %i.az) #30
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ba = load ptr, ptr %i.ay, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.bb = icmp ule i64 %i.at, %i.ax
  call void @llvm.assume(i1 %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
end_hunk_1
begin_hunk_2_@_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout9shrink_to:bb.a
  %..i = tail call noundef i8 @llvm.umin.i8(i8 %1, i8 %i.a)
  store i8 %..i, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !noundef !4
  %..i1 = tail call noundef i32 @llvm.umin.i32(i32 %2, i32 %i.c)
  store i32 %..i1, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !noundef !4
  %..i2 = tail call noundef i32 @llvm.umin.i32(i32 %3, i32 %i.e)
  store i32 %..i2, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryE5drainNtNtNtCsj6eKBz9Db1c_4core3ops5range9RangeFullECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit4, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc3vec5drainINtB5_5DrainNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.b:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !891)
  call void @llvm.experimental.noalias.scope.decl(metadata !892)
  call void @llvm.experimental.noalias.scope.decl(metadata !893)
  call void @llvm.experimental.noalias.scope.decl(metadata !894)
  %i.k = load ptr, ptr %i.a, align 8, !alias.scope !895, !nonnull !4, !noundef !4
  %i.l = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !895
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #33
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit unwind label %bb.j

bb.d:                                             ; preds = %.lr.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit4
  %i.n = phi ptr [ %i.f, %.lr.ph ], [ %i.ae, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit4 ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.o, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.p = load i64, ptr %i.i, align 8, !noundef !4
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.r = cmpxchg ptr %i.q, i64 0, i64 %i.p acq_rel acquire, align 8
  %i.s = extractvalue { i64, i1 } %i.r, 1
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 2 uses
  %i.x = atomicrmw xchg ptr %i.w, i32 1 release, align 4
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.h, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !896)
  call void @llvm.experimental.noalias.scope.decl(metadata !897)
  call void @llvm.experimental.noalias.scope.decl(metadata !898)
  call void @llvm.experimental.noalias.scope.decl(metadata !899)
  %i.z = load ptr, ptr %i.a, align 8, !alias.scope !900, !nonnull !4, !noundef !4
  %i.aa = atomicrmw add ptr %i.z, i64 -1 release, align 8, !noalias !900
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit4

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #33
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit4 unwind label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ac = invoke noundef zeroext i1 @_RNvNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.w)
          to label %bb.f unwind label %bb.b       ; 0 uses

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b, %bb.c, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.j, %bb.c ], [ %i.j, %bb.b ]
  invoke void @_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc3vec5drainINtB5_5DrainNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec5drain5DrainNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryEECsa5QsYiPB8Gl_5image.exit unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit4: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ae = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.af = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %._crit_edge, label %bb.d

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit, %bb.c
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec5drain5DrainNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCsa5QsYiPB8Gl_5image5errorNtB5_13EncodingError11format_hint(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !905)
  %i.a = load i8, ptr %1, align 8, !range !21, !alias.scope !905, !noundef !4 ; 2 uses
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %_RNvXsM_NtCsa5QsYiPB8Gl_5image5errorNtB5_15ImageFormatHintNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1, !range !27, !alias.scope !905, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.c, ptr %i.d, align 1, !alias.scope !904
  br label %_RNvXsM_NtCsa5QsYiPB8Gl_5image5errorNtB5_15ImageFormatHintNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  br label %_RNvXsM_NtCsa5QsYiPB8Gl_5image5errorNtB5_15ImageFormatHintNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
  br label %_RNvXsM_NtCsa5QsYiPB8Gl_5image5errorNtB5_15ImageFormatHintNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

_RNvXsM_NtCsa5QsYiPB8Gl_5image5errorNtB5_15ImageFormatHintNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  store i8 %i.a, ptr %0, align 8, !alias.scope !904
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCsa5QsYiPB8Gl_5image6codecs4webp7encoderNtNtBb_5error10ImageError16from_webp_encode(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !909
  store i8 0, ptr %i.a, align 8, !noalias !910
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 3, ptr %.sroa.55.0..sroa_idx, align 1, !noalias !910
  %i.c = invoke { ptr, ptr } @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtCsksn9slvsHfS_10image_webp7encoder13EncodingErrorE4fromCsa5QsYiPB8Gl_5image(ptr noundef null)
          to label %_RINvMs0_NtCsa5QsYiPB8Gl_5image5errorNtB6_13EncodingError3newNtNtCsksn9slvsHfS_10image_webp7encoder13EncodingErrorEB8_.exit unwind label %bb.c, !noalias !909 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #28
          to label %bb.e unwind label %bb.d, !noalias !909

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !909
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RINvMs0_NtCsa5QsYiPB8Gl_5image5errorNtB6_13EncodingError3newNtNtCsksn9slvsHfS_10image_webp7encoder13EncodingErrorEB8_.exit: ; preds = %bb.b
  %i.f = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.c, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f), "nonnull"(ptr %i.g) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !909
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.h, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 3, ptr %.sroa.0.sroa.4.0..sroa_idx, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RINvMs0_NtCsa5QsYiPB8Gl_5image5errorNtB6_13EncodingError3newNtNtCsksn9slvsHfS_10image_webp7encoder13EncodingErrorEB8_.exit
  %.sink8 = phi i64 [ 48, %_RINvMs0_NtCsa5QsYiPB8Gl_5image5errorNtB6_13EncodingError3newNtNtCsksn9slvsHfS_10image_webp7encoder13EncodingErrorEB8_.exit ], [ 8, %bb.a ]
  %.sink = phi ptr [ %i.g, %_RINvMs0_NtCsa5QsYiPB8Gl_5image5errorNtB6_13EncodingError3newNtNtCsksn9slvsHfS_10image_webp7encoder13EncodingErrorEB8_.exit ], [ %1, %bb.a ]
  %storemerge = phi i8 [ 5, %_RINvMs0_NtCsa5QsYiPB8Gl_5image5errorNtB6_13EncodingError3newNtNtCsksn9slvsHfS_10image_webp7encoder13EncodingErrorEB8_.exit ], [ 9, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink8
  store ptr %.sink, ptr %i.i, align 8
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = cmpxchg ptr %0, i32 0, i32 1 acquire monotonic, align 4, !noalias !918
  %i.d = extractvalue { i32, i1 } %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %0), !noalias !918
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !918
  %i.f = and i64 %i.e, 9223372036854775807
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsa5QsYiPB8Gl_5image.exit, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #33, !noalias !918
  %i.i = xor i1 %i.h, true
  %i.j = zext i1 %i.i to i8
  br label %_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsa5QsYiPB8Gl_5image.exit

_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.j, %bb.d ], [ 0, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load atomic i8, ptr %i.k monotonic, align 4, !noalias !918
  %.not.i.i = icmp ne i8 %i.l, 0
  call void @_RINvNtNtCsaKJjC64KgbL_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtB4_4mpmc5waker5WakerENCNvMs9_B10_BX_3new0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i1 noundef zeroext %.not.i.i, i8 noundef %.sroa.01.0.i.i, ptr noundef nonnull align 8 %0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919)
  %i.m = load i64, ptr %i.b, align 8, !range !8, !alias.scope !919, !noundef !4
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.e, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit, !prof !6

bb.e:                                             ; preds = %_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !920
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !919, !nonnull !4, !align !19, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load i8, ptr %i.q, align 8, !range !11, !alias.scope !919, !noundef !4
  store ptr %i.p, ptr %i.a, align 8, !noalias !920
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.r, ptr %i.s, align 8, !noalias !920
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #30
          to label %bb.g unwind label %bb.f, !noalias !919

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc5waker5WakerEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #28
          to label %common.resume unwind label %bb.h, !noalias !919

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !919
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.f ], [ %lpad.loopexit.split-lp8, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsa5QsYiPB8Gl_5image.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !919, !nonnull !4, !align !19, !noundef !4 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = load i8, ptr %i.x, align 8, !range !11, !alias.scope !919, !noundef !4 ; 2 uses
  %i.z = trunc nuw i8 %i.y to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !921)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !921, !nonnull !4, !noundef !4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !921, !noundef !4 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.ae, 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i
  %i.ag = icmp eq i64 %i.ae, 0
  br i1 %i.ag, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit, %.noexc5
  %.sroa.0.02.i = phi ptr [ %i.ah, %.noexc5 ], [ %i.ac, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 24 ; 2 uses
  %.sroa.0.0.val.i = load ptr, ptr %.sroa.0.02.i, align 8, !noalias !921, !nonnull !4, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i, i64 24
  %i.aj = cmpxchg ptr %i.ai, i64 0, i64 2 acq_rel acquire, align 8, !noalias !921
  %i.ak = extractvalue { i64, i1 } %i.aj, 1
  br i1 %i.ak, label %bb.i, label %.noexc5

._crit_edge.i:                                    ; preds = %.noexc5, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit
  invoke fastcc void @_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aa) #31
          to label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %.lr.ph.i
  %i.al = load ptr, ptr %.sroa.0.02.i, align 8, !noalias !921, !nonnull !4, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !noalias !921, !nonnull !4, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40 ; 2 uses
  %i.ap = atomicrmw xchg ptr %i.ao, i32 1 release, align 4, !noalias !921
  %i.aq = icmp eq i32 %i.ap, -1
  br i1 %i.aq, label %bb.j, label %.noexc5

.noexc5:                                          ; preds = %bb.j, %bb.i, %.lr.ph.i
  %i.ar = icmp eq ptr %i.ah, %i.af
  br i1 %i.ar, label %._crit_edge.i, label %.lr.ph.i

bb.j:                                             ; preds = %bb.i
  %i.as = invoke noundef zeroext i1 @_RNvNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.ao)
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %._crit_edge.i
  %lpad.loopexit.split-lp8 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsa5QsYiPB8Gl_5image(ptr nonnull %i.w, i8 %i.y) #28
          to label %common.resume unwind label %bb.q

_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit: ; preds = %._crit_edge.i
  %i.at = load i64, ptr %i.ad, align 8, !noundef !4 ; 2 uses
  %i.au = icmp ult i64 %i.at, 384307168202282326
  tail call void @llvm.assume(i1 %i.au)
  %i.av = icmp eq i64 %i.at, 0
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !4 ; 2 uses
  %i.ay = icmp ult i64 %i.ax, 384307168202282326
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = icmp eq i64 %i.ax, 0
  %i.ba = zext i1 %i.az to i8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit
  %.sroa.0.0 = phi i8 [ %i.ba, %bb.k ], [ 0, %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i8 %.sroa.0.0, ptr %i.bb seq_cst, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  br i1 %i.z, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.be = and i64 %i.bd, 9223372036854775807
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n, !prof !10

bb.n:                                             ; preds = %bb.m
  %i.bg = tail call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #33
  br i1 %i.bg, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  store atomic i8 1, ptr %i.bc monotonic, align 4
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %i.bh = atomicrmw xchg ptr %i.w, i32 0 release, align 4
  %i.bi = icmp eq i32 %i.bh, 2
  br i1 %i.bi, label %bb.p, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsa5QsYiPB8Gl_5image.exit, !prof !6

bb.p:                                             ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.w)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.p
  ret void

bb.q:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i64 noundef range(i64 3, 0) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
end_hunk_2
begin_hunk_3_@_RNvMs0_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB5_9SyncWaker8register:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.av = load i64, ptr %i.au, align 8, !noundef !4 ; 2 uses
  %i.aw = icmp ult i64 %i.av, 384307168202282326
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = icmp eq i64 %i.av, 0
  %i.ay = zext i1 %i.ax to i8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.0.0 = phi i8 [ %i.ay, %bb.p ], [ 0, %bb.o ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i8 %.sroa.0.0, ptr %i.az seq_cst, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  br i1 %i.aa, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bc = and i64 %i.bb, 9223372036854775807
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.s, !prof !10

bb.s:                                             ; preds = %bb.r
  %i.be = tail call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #33
  br i1 %i.be, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  store atomic i8 1, ptr %i.ba monotonic, align 4
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %i.bf = atomicrmw xchg ptr %i.x, i32 0 release, align 4
  %i.bg = icmp eq i32 %i.bf, 2
  br i1 %i.bg, label %bb.u, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsa5QsYiPB8Gl_5image.exit, !prof !6

bb.u:                                             ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.x)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.u
  ret void

bb.v:                                             ; preds = %.body
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCsa5QsYiPB8Gl_5image5errorNtB5_14ParameterError4kind(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !22, !noundef !4 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775805
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 3
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload = load i32, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0.copyload, ptr %i.g, align 8
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  store i64 -9223372036854775804, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load <2 x i32>, ptr %i.h, align 8
  store <2 x i32> %i.j, ptr %i.i, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs4jpeg7decoderNtNtBb_5error10ImageError9from_jpeg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 2 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = load i8, ptr %1, align 8, !range !23, !noundef !4
  switch i8 %i.g, label %bb.b [
    i8 8, label %bb.e
    i8 11, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1003
  store i8 0, ptr %i.a, align 8, !noalias !1004
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 1, ptr %.sroa.522.0..sroa_idx, align 1, !noalias !1004
  %i.h = invoke { ptr, ptr } @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtCsaXAyoiiLu3Y_9zune_jpeg6errors12DecodeErrorsE4fromCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.k unwind label %bb.c, !noalias !1005 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #28
          to label %bb.l unwind label %bb.d, !noalias !1003

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1003
  unreachable

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = load i8, ptr %i.k, align 1, !range !32, !noundef !4
  store i8 %i.l, ptr %i.f, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 1, ptr %i.m, align 1
  store i8 0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs3_NtCsaXAyoiiLu3Y_9zune_jpeg6errorsNtB5_18UnsupportedSchemesNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @79, ptr noundef nonnull %i.c)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.n, align 8
  store i8 7, ptr %0, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e) #28
          to label %bb.m unwind label %bb.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 8, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.h

bb.h:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit, %bb.f
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaXAyoiiLu3Y_9zune_jpeg6errors12DecodeErrorsECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %1)
  br label %bb.j

bb.i:                                             ; preds = %bb.m, %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.j:                                             ; preds = %bb.k, %bb.h
  ret void

bb.k:                                             ; preds = %bb.b
  %i.q = extractvalue { ptr, ptr } %i.h, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q), "nonnull"(ptr %i.r) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1003
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.s, align 8
  %.sroa.017.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 1, ptr %.sroa.017.sroa.4.0..sroa_idx, align 1
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.q, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.r, ptr %.sroa.519.0..sroa_idx, align 8
  store i8 4, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.l:                                             ; preds = %bb.c, %bb.m
  %.pn26 = phi { ptr, i32 } [ %i.o, %bb.m ], [ %i.i, %bb.c ]
  resume { ptr, i32 } %.pn26

bb.m:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaXAyoiiLu3Y_9zune_jpeg6errors12DecodeErrorsECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #28
          to label %bb.l unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs4webp7decoderNtNtBb_5error10ImageError16from_webp_decode(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = load i8, ptr %1, align 8, !range !29, !noundef !4
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1010
  store i8 0, ptr %i.a, align 8, !noalias !1011
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 3, ptr %.sroa.53.0..sroa_idx, align 1, !noalias !1011
  %i.g = invoke { ptr, ptr } @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtCsksn9slvsHfS_10image_webp7decoder13DecodingErrorE4fromCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtCsksn9slvsHfS_10image_webp7decoder13DecodingErrorEB7_.exit unwind label %bb.d, !noalias !1012 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #28
          to label %bb.f unwind label %bb.e, !noalias !1010

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1010
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.h

_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtCsksn9slvsHfS_10image_webp7decoder13DecodingErrorEB7_.exit: ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.g, 0        ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.g, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j), "nonnull"(ptr %i.k) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.l, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 3, ptr %.sroa.0.sroa.4.0..sroa_idx, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtCsksn9slvsHfS_10image_webp7decoder13DecodingErrorEB7_.exit
  %.sink6 = phi i64 [ 8, %bb.b ], [ 48, %_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtCsksn9slvsHfS_10image_webp7decoder13DecodingErrorEB7_.exit ]
  %.sink = phi ptr [ %i.f, %bb.b ], [ %i.k, %_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtCsksn9slvsHfS_10image_webp7decoder13DecodingErrorEB7_.exit ]
  %storemerge = phi i8 [ 9, %bb.b ], [ 4, %_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtCsksn9slvsHfS_10image_webp7decoder13DecodingErrorEB7_.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.sink6
  store ptr %.sink, ptr %i.m, align 8
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCsgidZRN39rux_6flate23zioINtB5_6WriterINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB7_3mem8CompressE17write_with_statusCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.i = icmp eq i64 %3, 0
  br i1 %i.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  %i.j = load i64, ptr %i.b, align 8, !alias.scope !1020, !noundef !4 ; 3 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %_RNvMs2_NtCsgidZRN39rux_6flate23zioINtB5_6WriterINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB7_3mem8CompressE4dumpCsa5QsYiPB8Gl_5image.exit.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.split.us, %bb.b
  %i.m = phi i64 [ %i.u, %bb.b ], [ %i.j, %.split.us ] ; 4 uses
  %i.n = load i64, ptr %i.c, align 8, !range !16, !alias.scope !1020, !noundef !4
  %.not.i.us = icmp eq i64 %i.n, -1
  br i1 %.not.i.us, label %.split29.us, label %bb.b, !prof !6

bb.b:                                             ; preds = %.lr.ph.i.us
  %i.o = load ptr, ptr %i.d, align 8, !alias.scope !1020, !nonnull !4, !noundef !4
  call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef range(i64 1, -9223372036854775808) %i.m), !noalias !1021
  %i.p = load i64, ptr %i.e, align 8, !alias.scope !1022, !noundef !4 ; 2 uses
  %i.q = icmp sgt i64 %i.p, -1
  call void @llvm.assume(i1 %i.q)
  %i.r = load ptr, ptr %i.f, align 8, !alias.scope !1022, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.s, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.o, i64 range(i64 1, -9223372036854775808) %i.m, i1 false)
  %.pre.i.i.i.us = load i64, ptr %i.e, align 8, !alias.scope !1022
  %i.t = add i64 %.pre.i.i.i.us, %i.m
  store i64 %i.t, ptr %i.e, align 8, !alias.scope !1022
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1020
  call void @_RINvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE5drainINtNtNtCsj6eKBz9Db1c_4core3ops5range7RangeTojEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.m)
  call void @_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc3vec5drainINtB5_5DrainhENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1020
  %i.u = load i64, ptr %i.b, align 8, !alias.scope !1020, !noundef !4 ; 3 uses
  %i.v = icmp sgt i64 %i.u, -1
  call void @llvm.assume(i1 %i.v)
  %i.w = icmp eq i64 %i.u, 0
  br i1 %i.w, label %_RNvMs2_NtCsgidZRN39rux_6flate23zioINtB5_6WriterINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB7_3mem8CompressE4dumpCsa5QsYiPB8Gl_5image.exit.us, label %.lr.ph.i.us

_RNvMs2_NtCsgidZRN39rux_6flate23zioINtB5_6WriterINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB7_3mem8CompressE4dumpCsa5QsYiPB8Gl_5image.exit.us: ; preds = %bb.b, %.split.us
  %.val22.us = load i64, ptr %i.h, align 8, !noundef !4
  %i.x = call noundef i8 @_RNvXNtCsgidZRN39rux_6flate23zioNtNtB4_3mem8CompressNtB2_3Ops7run_vec(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef 0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef 0) ; 2 uses
  %.val.us = load i64, ptr %i.h, align 8, !noundef !4
  %i.y = icmp eq i8 %i.x, -1
  br i1 %i.y, label %.critedge, label %.split31.us

.split:                                           ; preds = %bb.a, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  %i.z = load i64, ptr %i.b, align 8, !alias.scope !1020, !noundef !4 ; 3 uses
  %i.aa = icmp sgt i64 %i.z, -1
  call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp eq i64 %i.z, 0
  br i1 %i.ab, label %_RNvMs2_NtCsgidZRN39rux_6flate23zioINtB5_6WriterINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB7_3mem8CompressE4dumpCsa5QsYiPB8Gl_5image.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split, %bb.c
  %i.ac = phi i64 [ %i.ak, %bb.c ], [ %i.z, %.split ] ; 4 uses
  %i.ad = load i64, ptr %i.c, align 8, !range !16, !alias.scope !1020, !noundef !4
  %.not.i = icmp eq i64 %i.ad, -1
  br i1 %.not.i, label %.split29.us, label %bb.c, !prof !6

.split29.us:                                      ; preds = %.lr.ph.i, %.lr.ph.i.us
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #32
  unreachable

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = load ptr, ptr %i.d, align 8, !alias.scope !1020, !nonnull !4, !noundef !4
  call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef range(i64 1, -9223372036854775808) %i.ac), !noalias !1021
  %i.af = load i64, ptr %i.e, align 8, !alias.scope !1022, !noundef !4 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, -1
  call void @llvm.assume(i1 %i.ag)
  %i.ah = load ptr, ptr %i.f, align 8, !alias.scope !1022, !nonnull !4, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ae, i64 range(i64 1, -9223372036854775808) %i.ac, i1 false)
  %.pre.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !1022
  %i.aj = add i64 %.pre.i.i.i, %i.ac
  store i64 %i.aj, ptr %i.e, align 8, !alias.scope !1022
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1020
  call void @_RINvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE5drainINtNtNtCsj6eKBz9Db1c_4core3ops5range7RangeTojEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.ac)
  call void @_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc3vec5drainINtB5_5DrainhENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1020
  %i.ak = load i64, ptr %i.b, align 8, !alias.scope !1020, !noundef !4 ; 3 uses
  %i.al = icmp sgt i64 %i.ak, -1
  call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i64 %i.ak, 0
  br i1 %i.am, label %_RNvMs2_NtCsgidZRN39rux_6flate23zioINtB5_6WriterINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB7_3mem8CompressE4dumpCsa5QsYiPB8Gl_5image.exit, label %.lr.ph.i

_RNvMs2_NtCsgidZRN39rux_6flate23zioINtB5_6WriterINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB7_3mem8CompressE4dumpCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.c, %.split
  %.val22 = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.an = call noundef i8 @_RNvXNtCsgidZRN39rux_6flate23zioNtNtB4_3mem8CompressNtB2_3Ops7run_vec(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef 0) ; 3 uses
  %i.ao = icmp eq i8 %i.an, -1
  br i1 %i.ao, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_RNvMs2_NtCsgidZRN39rux_6flate23zioINtB5_6WriterINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB7_3mem8CompressE4dumpCsa5QsYiPB8Gl_5image.exit
  %.val = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.ap = icmp eq i8 %i.an, 2
  %i.aq = icmp ne i64 %.val, %.val22
  %brmerge = or i1 %i.ap, %i.aq
  br i1 %brmerge, label %.split31.us, label %.split

.critedge:                                        ; preds = %_RNvMs2_NtCsgidZRN39rux_6flate23zioINtB5_6WriterINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB7_3mem8CompressE4dumpCsa5QsYiPB8Gl_5image.exit, %_RNvMs2_NtCsgidZRN39rux_6flate23zioINtB5_6WriterINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB7_3mem8CompressE4dumpCsa5QsYiPB8Gl_5image.exit.us
  %i.ar = call noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 22) #33
  %i.as = ptrtoint ptr %i.ar to i64
  br label %bb.e

.split31.us:                                      ; preds = %bb.d, %_RNvMs2_NtCsgidZRN39rux_6flate23zioINtB5_6WriterINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB7_3mem8CompressE4dumpCsa5QsYiPB8Gl_5image.exit.us
  %.us-phi = phi i64 [ %.val22.us, %_RNvMs2_NtCsgidZRN39rux_6flate23zioINtB5_6WriterINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB7_3mem8CompressE4dumpCsa5QsYiPB8Gl_5image.exit.us ], [ %.val22, %bb.d ]
  %.us-phi32 = phi i64 [ %.val.us, %_RNvMs2_NtCsgidZRN39rux_6flate23zioINtB5_6WriterINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB7_3mem8CompressE4dumpCsa5QsYiPB8Gl_5image.exit.us ], [ %.val, %bb.d ]
  %.us-phi33 = phi i8 [ %i.x, %_RNvMs2_NtCsgidZRN39rux_6flate23zioINtB5_6WriterINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB7_3mem8CompressE4dumpCsa5QsYiPB8Gl_5image.exit.us ], [ %i.an, %bb.d ]
  %i.at = sub i64 %.us-phi32, %.us-phi
  br label %bb.e

bb.e:                                             ; preds = %.split31.us, %.critedge
  %storemerge = phi i64 [ %i.at, %.split31.us ], [ %i.as, %.critedge ]
  %.us-phi33.sink = phi i8 [ %.us-phi33, %.split31.us ], [ -1, %.critedge ]
  store i64 %storemerge, ptr %0, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.us-phi33.sink, ptr %i.au, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCsgidZRN39rux_6flate23zioINtB5_6WriterINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB7_3mem8CompressE3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 32768, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgidZRN39rux_6flate23mem8CompressECsa5QsYiPB8Gl_5image(ptr nonnull %.sroa.0.0.copyload) #28
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #28
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !range !8, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !9, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr %i.h, align 8
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #30
          to label %bb.f unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.k = icmp samesign ugt i64 %i.g, 32767
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.0.0.copyload, ptr %i.m, align 8
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx4, i64 16, i1 false)
  store i64 %i.g, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_3
begin_hunk_4_@_RNvMs2_NtNtCsaKJjC64KgbL_3std4sync4mpmcINtB5_6SenderINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1u_5error5ErrorEE4sendCsa5QsYiPB8Gl_5image:bb.a
          cleanup                                 ; 2 uses
  %i.cv = atomicrmw add ptr %i.ce, i64 -1 release, align 8, !noalias !1106
  %i.cw = icmp eq i64 %i.cv, 1
  br i1 %i.cw, label %bb.z, label %.body.thread.i

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #33
          to label %.body.thread.i unwind label %bb.t, !noalias !1093

_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB3S_5error5ErrorEE4send0uEs_0uECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %.noexc12.i
  invoke fastcc void @_RNCINvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2g_5error5ErrorEE4send0uEs0_0Csa5QsYiPB8Gl_5image(ptr nonnull %i.f) #31
          to label %bb.ad unwind label %.body.thread31.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1087

bb.aa:                                            ; preds = %bb.l
  %i.cx = extractvalue { i64, i32 } %i.bz, 0      ; 2 uses
  %i.cy = icmp eq i64 %i.cx, %i.by
  br i1 %i.cy, label %.split.i, label %bb.ab

.split.i:                                         ; preds = %bb.aa
  %i.cz = extractvalue { i64, i32 } %i.bz, 1      ; 2 uses
  %i.da = icmp ult i32 %i.cz, 1000000000
  call void @llvm.assume(i1 %i.da)
  %.not45.i = icmp samesign ult i32 %i.cz, %i.bu
  br i1 %.not45.i, label %bb.m, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.not44.i = icmp slt i64 %i.cx, %i.by
  br i1 %.not44.i, label %bb.m, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.split.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %i.l, i64 80, i1 false), !alias.scope !1087
  store i64 0, ptr %i.m, align 8, !alias.scope !1085
  br label %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4sendCsa5QsYiPB8Gl_5image.exit

bb.ad:                                            ; preds = %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB3S_5error5ErrorEE4send0uEs_0uECsa5QsYiPB8Gl_5image.exit.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextEECsa5QsYiPB8Gl_5image.exit.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextECsa5QsYiPB8Gl_5image.exit19.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1093
  %i.db = load atomic i64, ptr %i.s monotonic, align 16, !noalias !1107 ; 2 uses
  %i.dc = load i64, ptr %i.t, align 16, !noalias !1107, !noundef !4 ; 2 uses
  %i.dd = and i64 %i.dc, %i.db
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %.lr.ph.i.i, label %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE5writeCsa5QsYiPB8Gl_5image.exit.i

_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE5writeCsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.ad, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, %bb.b
  %.sroa.019.0.copyload.i = load i64, ptr %i.l, align 8, !alias.scope !1086 ; 2 uses
  %.not9.i = icmp eq i64 %.sroa.019.0.copyload.i, -2
  br i1 %.not9.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE5writeCsa5QsYiPB8Gl_5image.exit.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx.i, i64 72, i1 false), !alias.scope !1087
  store i64 1, ptr %i.m, align 8, !alias.scope !1085
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sroa.019.0.copyload.i, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !1085
  br label %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4sendCsa5QsYiPB8Gl_5image.exit

bb.af:                                            ; preds = %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE5writeCsa5QsYiPB8Gl_5image.exit.i, %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE5writeCsa5QsYiPB8Gl_5image.exit.thread.i
  store i64 2, ptr %i.m, align 8, !alias.scope !1085
  br label %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4sendCsa5QsYiPB8Gl_5image.exit

common.resume:                                    ; preds = %bb.an, %.body.thread.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body30.i, %.body.thread.i ], [ %i.dj, %bb.an ]
  resume { ptr, i32 } %common.resume.op

.body.thread.i:                                   ; preds = %.body.thread31.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.z, %bb.y, %bb.q, %bb.p
  %eh.lpad-body30.i = phi { ptr, i32 } [ %i.cu, %bb.z ], [ %i.cg, %bb.p ], [ %i.cu, %bb.y ], [ %i.cg, %bb.q ], [ %lpad.loopexit.split-lp62, %.body.thread31.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.l) #28
          to label %common.resume unwind label %bb.ag, !noalias !1085

bb.ag:                                            ; preds = %.body.thread.i
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1085
  unreachable

_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4sendCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.ae, %bb.af, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.aj

bb.ah:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.k, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 80, i1 false)
  call void @_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4sendCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.m, ptr noundef nonnull align 128 %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.k, i64 undef, i32 noundef -1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.aj

bb.ai:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.j, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 80, i1 false)
  call void @_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4sendCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.m, ptr noundef nonnull align 8 %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.j, i64 undef, i32 noundef -1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4sendCsa5QsYiPB8Gl_5image.exit
  %i.dg = load i64, ptr %i.m, align 8, !range !33, !noundef !4
  %.not = icmp eq i64 %i.dg, 2
  br i1 %.not, label %bb.ap, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.m, i64 88, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  %i.dh = load i64, ptr %i.i, align 8, !range !8, !alias.scope !1108, !noundef !4
  %i.di = trunc nuw i64 %i.dh to i1
  br i1 %i.di, label %_RNCNvMs2_NtNtCsaKJjC64KgbL_3std4sync4mpmcINtB7_6SenderINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE4send0Csa5QsYiPB8Gl_5image.exit, label %bb.al, !prof !10

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #30
          to label %bb.am unwind label %bb.an, !noalias !1109

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.dj = landingpad { ptr, i32 }
          cleanup
  %i.dk = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(80) %i.dk)
          to label %common.resume unwind label %bb.ao, !noalias !1110

bb.ao:                                            ; preds = %bb.an
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1110
  unreachable

_RNCNvMs2_NtNtCsaKJjC64KgbL_3std4sync4mpmcINtB7_6SenderINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE4send0Csa5QsYiPB8Gl_5image.exit: ; preds = %bb.ak
  %i.dm = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.dm, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.aq

bb.ap:                                            ; preds = %bb.aj
  store i64 -2, ptr %0, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %_RNCNvMs2_NtNtCsaKJjC64KgbL_3std4sync4mpmcINtB7_6SenderINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE4send0Csa5QsYiPB8Gl_5image.exit, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtCsa5QsYiPB8Gl_5image6codecs3pngNtNtB9_5error10ImageError8from_png(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = load i64, ptr %1, align 8, !range !17, !noundef !4
  switch i64 %i.g, label %default.unreachable16 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.f
    i64 3, label %bb.k
  ]

default.unreachable16:                            ; preds = %bb.n, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8
  store i8 9, ptr %0, align 8
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1120
  store i8 0, ptr %i.e, align 8, !noalias !1121
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 0, ptr %.sroa.514.0..sroa_idx, align 1, !noalias !1121
  %i.k = invoke { ptr, ptr } @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtCs5XDXJCpOCOR_3png7decoder6stream13DecodingErrorE4fromCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1)
          to label %_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtNtCs5XDXJCpOCOR_3png7decoder6stream13DecodingErrorEB7_.exit unwind label %bb.d, !noalias !1122 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e) #28
          to label %common.resume unwind label %bb.e, !noalias !1120

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1120
  unreachable

common.resume:                                    ; preds = %.body, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.t, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtNtCs5XDXJCpOCOR_3png7decoder6stream13DecodingErrorEB7_.exit: ; preds = %bb.c
  %i.n = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n), "nonnull"(ptr %i.o) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1120
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.p, align 8
  %.sroa.010.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %.sroa.010.sroa.4.0..sroa_idx, align 1
  %.sroa.4.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx11, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.o, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 4, ptr %0, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1123
  store i64 0, ptr %i.d, align 8, !noalias !1123
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1123
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1123
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1610612768, ptr %i.q, align 8, !noalias !1123
  store ptr %i.d, ptr %i.c, align 8, !noalias !1123
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @105, ptr %i.r, align 8, !noalias !1123
  %i.s = invoke noundef zeroext i1 @_RNvXs0_NtNtCs5XDXJCpOCOR_3png7decoder6streamNtB5_13DecodingErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.h unwind label %bb.g, !noalias !1124

bb.g:                                             ; preds = %bb.i, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #28
          to label %.body unwind label %bb.j, !noalias !1124

bb.h:                                             ; preds = %bb.f
  br i1 %i.s, label %bb.i, label %bb.m, !prof !6

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #32
          to label %.noexc.i unwind label %bb.g, !noalias !1124

.noexc.i:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1124
  unreachable

bb.k:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.v, align 8
  store i8 7, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs5XDXJCpOCOR_3png7decoder6stream13DecodingErrorECsa5QsYiPB8Gl_5image.exit, %bb.k, %_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtNtCs5XDXJCpOCOR_3png7decoder6stream13DecodingErrorEB7_.exit, %bb.b
  ret void

.body:                                            ; preds = %bb.g
  %.val8 = load i64, ptr %i.f, align 8, !range !17, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val9 = load ptr, ptr %i.w, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs5XDXJCpOCOR_3png7decoder6stream13DecodingErrorECsa5QsYiPB8Gl_5image(i64 %.val8, ptr %.val9) #28
          to label %common.resume unwind label %bb.q

bb.m:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1123
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 6, ptr %0, align 8
  %.val = load i64, ptr %i.f, align 8, !range !17, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val7 = load ptr, ptr %i.y, align 8            ; 4 uses
  %i.z = icmp eq i64 %.val, 0
  br i1 %i.z, label %bb.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs5XDXJCpOCOR_3png7decoder6stream13DecodingErrorECsa5QsYiPB8Gl_5image.exit

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7) ]
  %i.aa = ptrtoint ptr %.val7 to i64              ; 2 uses
  %i.ab = and i64 %i.aa, 3
  switch i64 %i.ab, label %default.unreachable16 [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i
    i64 3, label %bb.o
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i
    i64 1, label %bb.p
  ], !prof !18

bb.o:                                             ; preds = %bb.n
  %i.ac = icmp ult ptr %.val7, inttoptr (i64 188978561024 to ptr)
  %i.ad = and i64 %i.aa, 1095216660480
  %i.ae = icmp ne i64 %i.ad, 1095216660480
  call void @llvm.assume(i1 %i.ac)
  call void @llvm.assume(i1 %i.ae)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i

bb.p:                                             ; preds = %bb.n
  %i.af = getelementptr i8, ptr %.val7, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !1125
  store i8 3, ptr %i.b, align 8, !alias.scope !1125
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs5XDXJCpOCOR_3png7decoder6stream13DecodingErrorECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs5XDXJCpOCOR_3png7decoder6stream13DecodingErrorECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.l

bb.q:                                             ; preds = %.body
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtCslN0b76tEcC3_9zune_core10bytestream6readerINtB5_7ZReaderINtNtB5_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE7peek_atCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i64 noundef range(i64 0, 41) %2, i64 noundef %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %.not = icmp eq i64 %2, 0                       ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = icmp ugt i64 %3, 20971520
  br i1 %i.c, label %bb.k, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = tail call { i64, ptr } @_RNvXs1_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB7_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtCsj6eKBz9Db1c_4core2io4seek4Seek4seekCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 2, i64 noundef %2), !noalias !1140 ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.g = extractvalue { i64, ptr } %i.d, 1
  %i.h = ptrtoint ptr %i.g to i64
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %.sroa.450.0..sroa_idx, align 8
  br label %bb.u

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE6resizeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %3, i8 noundef 0)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !noundef !4 ; 5 uses
  %.not152 = icmp eq i64 %i.m, 0
  br i1 %.not152, label %_RNvXNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB4_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB6_6traits16ZByteReaderTrait16read_exact_bytesCsa5QsYiPB8Gl_5image.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.h
  %.sroa.0.0.i151 = phi i64 [ %i.z, %bb.h ], [ 0, %bb.e ] ; 5 uses
  %i.n = sub nuw nsw i64 %i.m, %.sroa.0.0.i151
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.0.0.i151
  %i.p = tail call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull %i.o, i64 noundef %i.n), !noalias !1141 ; 2 uses
  %i.q = extractvalue { i64, ptr } %i.p, 0
  %i.r = extractvalue { i64, ptr } %i.p, 1        ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.t = trunc nuw i64 %i.q to i1
  br i1 %i.t, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.u = icmp eq ptr %i.r, null
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = sub nsw i64 0, %.sroa.0.0.i151
  %i.w = tail call { i64, ptr } @_RNvXs1_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB7_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtCsj6eKBz9Db1c_4core2io4seek4Seek4seekCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 2, i64 noundef %i.v), !noalias !1141 ; 2 uses
  %i.x = extractvalue { i64, ptr } %i.w, 0
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.i, label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.z = add i64 %.sroa.0.0.i151, %i.s            ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.m
  br i1 %i.aa, label %.lr.ph, label %_RNvXNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB4_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB6_6traits16ZByteReaderTrait16read_exact_bytesCsa5QsYiPB8Gl_5image.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = extractvalue { i64, ptr } %i.w, 1
  %i.ac = ptrtoint ptr %i.ab to i64
  br label %.loopexit

_RNvXNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB4_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB6_6traits16ZByteReaderTrait16read_exact_bytesCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.h, %bb.e
  %i.ad = sub nsw i64 0, %i.m
  %i.ae = tail call { i64, ptr } @_RNvXs1_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB7_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtCsj6eKBz9Db1c_4core2io4seek4Seek4seekCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 2, i64 noundef %i.ad), !noalias !1142 ; 2 uses
  %i.af = extractvalue { i64, ptr } %i.ae, 0
  %i.ag = trunc nuw i64 %i.af to i1
  br i1 %i.ag, label %bb.j, label %_RNvXNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB4_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB6_6traits16ZByteReaderTrait16peek_exact_bytesCsa5QsYiPB8Gl_5image.exit
end_hunk_4
begin_hunk_5_@_RNvMs4_NtNtCslN0b76tEcC3_9zune_core10bytestream6readerINtB5_7ZReaderINtNtB5_14no_std_readers7ZCursorRShEE7peek_atCsa5QsYiPB8Gl_5image:bb.a
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i
    i64 3, label %bb.r
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i
    i64 1, label %bb.s
  ], !prof !18

bb.r:                                             ; preds = %bb.q
  %i.bl = icmp ult i64 %.sroa.8.0.ph, 188978561024
  tail call void @llvm.assume(i1 %i.bl)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i

bb.s:                                             ; preds = %bb.q
  %i.bm = getelementptr i8, ptr %i.ar, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.bm, ptr %i.bn, align 8, !alias.scope !1188, !noalias !1187
  store i8 3, ptr %i.a, align 8, !alias.scope !1188, !noalias !1187
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bn), !noalias !1187
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.s, %bb.r, %bb.q, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1187
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.p, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.u

bb.t:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.u

bb.u:                                             ; preds = %bb.n, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorECsa5QsYiPB8Gl_5image.exit, %bb.l, %bb.t, %bb.w, %bb.x, %bb.d
  ret void

bb.v:                                             ; preds = %bb.o
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.w:                                             ; preds = %bb.k
  %i.bp = extractvalue { i64, ptr } %i.am, 1
  %i.bq = ptrtoint ptr %i.bp to i64
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bq, ptr %.sroa.459.0..sroa_idx, align 8
  br label %bb.u

bb.x:                                             ; preds = %bb.k
  store i64 -9223372036854775804, ptr %0, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @82, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 22, ptr %.sroa.520.0..sroa_idx, align 8
  br label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #33
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %.not.i = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCsaKJjC64KgbL_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtB4_4mpmc4zero5InnerENCNvMs9_B10_BX_3new0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not.i, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #33
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %.not.i = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCsaKJjC64KgbL_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtB4_4mpmc5waker5WakerENCNvMs9_B10_BX_3new0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not.i, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexbE4lockCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 4 %1) unnamed_addr #1 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #33
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %.not.i = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCsaKJjC64KgbL_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardbENCNvMs9_B10_BX_3new0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not.i, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 4 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs8_NtNtCsa5QsYiPB8Gl_5image6codecs3gifNtNtB9_5error10ImageError13from_decoding(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load i64, ptr %1, align 8, !range !1193, !noundef !4
  %i.d = icmp eq i64 %i.c, 7
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i8 9, ptr %0, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1194
  store i8 0, ptr %i.a, align 8, !noalias !1195
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 2, ptr %.sroa.53.0..sroa_idx, align 1, !noalias !1195
  %i.h = invoke { ptr, ptr } @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtCsvKatKEpids_3gif6reader7decoder13DecodingErrorE4fromCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtNtCsvKatKEpids_3gif6reader7decoder13DecodingErrorEB7_.exit unwind label %bb.d, !noalias !1196 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #28
          to label %bb.f unwind label %bb.e, !noalias !1194

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1194
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i

_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtNtCsvKatKEpids_3gif6reader7decoder13DecodingErrorEB7_.exit: ; preds = %bb.c
  %i.k = extractvalue { ptr, ptr } %i.h, 0        ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k), "nonnull"(ptr %i.l) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1194
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.m, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 2, ptr %.sroa.0.sroa.4.0..sroa_idx, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 4, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtNtCsvKatKEpids_3gif6reader7decoder13DecodingErrorEB7_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs8_NtNtCsa5QsYiPB8Gl_5image6codecs3gifNtNtB9_5error10ImageError13from_encoding(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = load i8, ptr %1, align 8, !range !32, !noundef !4
  %i.c = icmp eq i8 %i.b, 4
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1201
  store i8 0, ptr %i.a, align 8, !noalias !1202
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 2, ptr %.sroa.53.0..sroa_idx, align 1, !noalias !1202
  %i.f = invoke { ptr, ptr } @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtCsvKatKEpids_3gif7encoder13EncodingErrorE4fromCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %1)
          to label %_RINvMs0_NtCsa5QsYiPB8Gl_5image5errorNtB6_13EncodingError3newNtNtCsvKatKEpids_3gif7encoder13EncodingErrorEB8_.exit unwind label %bb.d, !noalias !1203 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #28
          to label %bb.f unwind label %bb.e, !noalias !1201

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1201
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.g

_RINvMs0_NtCsa5QsYiPB8Gl_5image5errorNtB6_13EncodingError3newNtNtCsvKatKEpids_3gif7encoder13EncodingErrorEB8_.exit: ; preds = %bb.c
  %i.i = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.f, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i), "nonnull"(ptr %i.j) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1201
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.k, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 2, ptr %.sroa.0.sroa.4.0..sroa_idx, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %_RINvMs0_NtCsa5QsYiPB8Gl_5image5errorNtB6_13EncodingError3newNtNtCsvKatKEpids_3gif7encoder13EncodingErrorEB8_.exit, %bb.b
  %.sink5 = phi i64 [ 48, %_RINvMs0_NtCsa5QsYiPB8Gl_5image5errorNtB6_13EncodingError3newNtNtCsvKatKEpids_3gif7encoder13EncodingErrorEB8_.exit ], [ 8, %bb.b ]
  %.sink = phi ptr [ %i.j, %_RINvMs0_NtCsa5QsYiPB8Gl_5image5errorNtB6_13EncodingError3newNtNtCsvKatKEpids_3gif7encoder13EncodingErrorEB8_.exit ], [ %i.e, %bb.b ]
  %storemerge = phi i8 [ 5, %_RINvMs0_NtCsa5QsYiPB8Gl_5image5errorNtB6_13EncodingError3newNtNtCsvKatKEpids_3gif7encoder13EncodingErrorEB8_.exit ], [ 9, %bb.b ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink5
  store ptr %.sink, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsE8push_mutCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(496) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !31, !noundef !4
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsE8grow_oneCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw [496 x i8], ptr %i.f, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(496) %i.g, ptr noundef nonnull align 8 dereferenceable(496) %1, i64 496, i1 false)
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(496) %1) #28
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder11GainMapInfoE8push_mutCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !31, !noundef !4
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder11GainMapInfoE8grow_oneCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder11GainMapInfoECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #28
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentE8push_mutCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(56) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !31, !noundef !4
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentE8grow_oneCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(56) %1) #28
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkE8push_mutCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !31, !noundef !4
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkE8grow_oneCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #28
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsa5QsYiPB8Gl_5image5errorNtB4_13DecodingError11format_hint(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  %i.a = load i8, ptr %1, align 8, !range !21, !alias.scope !1208, !noundef !4 ; 2 uses
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %_RNvXsM_NtCsa5QsYiPB8Gl_5image5errorNtB5_15ImageFormatHintNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1, !range !27, !alias.scope !1208, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.c, ptr %i.d, align 1, !alias.scope !1207
  br label %_RNvXsM_NtCsa5QsYiPB8Gl_5image5errorNtB5_15ImageFormatHintNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  br label %_RNvXsM_NtCsa5QsYiPB8Gl_5image5errorNtB5_15ImageFormatHintNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
  br label %_RNvXsM_NtCsa5QsYiPB8Gl_5image5errorNtB5_15ImageFormatHintNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

_RNvXsM_NtCsa5QsYiPB8Gl_5image5errorNtB5_15ImageFormatHintNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  store i8 %i.a, ptr %0, align 8, !alias.scope !1207
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCsa5QsYiPB8Gl_5image6codecs4tiffNtNtB8_5error10ImageError16from_tiff_decode(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 2 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = load i64, ptr %1, align 8, !range !20, !noundef !4 ; 5 uses
  %i.j = icmp ne i64 %i.i, -9223372036854775791
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nsw i64 %i.i, 9223372036854775792
  %i.l = icmp ugt i64 %i.i, -9223372036854775793
  %i.m = select i1 %i.l, i64 %i.k, i64 1
  switch i64 %i.m, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.f
    i64 2, label %bb.k
    i64 3, label %bb.l
    i64 4, label %bb.c
    i64 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1216
  store i8 0, ptr %i.d, align 8, !noalias !1217
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 5, ptr %.sroa.518.0..sroa_idx, align 1, !noalias !1217
  %i.n = invoke { ptr, ptr } @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtCs53gkmrwjETj_4tiff5error9TiffErrorE4fromCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.h)
          to label %bb.t unwind label %bb.d, !noalias !1218 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #28
          to label %bb.u unwind label %bb.e, !noalias !1216

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1216
  unreachable

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 5, ptr %i.q, align 1
  store i8 0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1219
  store i64 0, ptr %i.c, align 8, !noalias !1219
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1219
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1219
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.r, align 8, !noalias !1219
  store ptr %i.c, ptr %i.b, align 8, !noalias !1219
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @105, ptr %i.s, align 8, !noalias !1219
  %i.t = invoke noundef zeroext i1 @_RNvXsm_NtCs53gkmrwjETj_4tiff5errorNtB5_20TiffUnsupportedErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.g, !noalias !1220

bb.g:                                             ; preds = %bb.i, %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #28
          to label %.body12 unwind label %bb.j, !noalias !1220

bb.h:                                             ; preds = %bb.f
  br i1 %i.t, label %bb.i, label %bb.m, !prof !6

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #32
          to label %.noexc.i unwind label %bb.g, !noalias !1220

.noexc.i:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1220
  unreachable

bb.k:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8
  store i8 9, ptr %0, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.z, align 8
  store i8 7, ptr %0, align 8
  br label %bb.o

.body12:                                          ; preds = %bb.g
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f) #28
          to label %bb.q unwind label %bb.p

bb.m:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1219
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 8, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs53gkmrwjETj_4tiff5error20TiffUnsupportedErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g)
          to label %bb.n unwind label %.thread24

.thread24:                                        ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.pre = load i64, ptr %1, align 8, !range !20
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l, %bb.k
  %i.ab = phi i64 [ %.pre, %bb.n ], [ %i.i, %bb.l ], [ %i.i, %bb.k ] ; 3 uses
  %i.ac = icmp ne i64 %i.ab, -9223372036854775791
  call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp ult i64 %i.ab, -9223372036854775792
  %i.ae = add nsw i64 %i.ab, 9223372036854775791
  %switch27 = icmp ult i64 %i.ae, 2
  %switch = select i1 %i.ad, i1 true, i1 %switch27
  br i1 %switch, label %bb.s, label %bb.r

bb.p:                                             ; preds = %bb.v, %bb.q, %.body12
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.q:                                             ; preds = %.body12
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs53gkmrwjETj_4tiff5error20TiffUnsupportedErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #28
          to label %.thread unwind label %bb.p

bb.r:                                             ; preds = %bb.o
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs53gkmrwjETj_4tiff5error9TiffErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %1)
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.t, %bb.r
  ret void

bb.t:                                             ; preds = %bb.c
  %i.ag = extractvalue { ptr, ptr } %i.n, 0       ; 2 uses
  %i.ah = extractvalue { ptr, ptr } %i.n, 1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag), "nonnull"(ptr %i.ah) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1216
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ai, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 5, ptr %.sroa.0.sroa.4.0..sroa_idx, align 1
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ag, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ah, ptr %.sroa.515.0..sroa_idx, align 8
  store i8 4, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.s

bb.u:                                             ; preds = %bb.d, %.thread, %bb.v
  %.pn22 = phi { ptr, i32 } [ %.pn23, %.thread ], [ %.pn23, %bb.v ], [ %i.o, %bb.d ]
  resume { ptr, i32 } %.pn22

.thread:                                          ; preds = %bb.q, %.thread24
  %.pn23 = phi { ptr, i32 } [ %i.aa, %.thread24 ], [ %i.u, %bb.q ] ; 2 uses
  %i.aj = load i64, ptr %1, align 8, !range !20, !noundef !4 ; 3 uses
  %i.ak = icmp ne i64 %i.aj, -9223372036854775791
  call void @llvm.assume(i1 %i.ak)
  %i.al = icmp ult i64 %i.aj, -9223372036854775792
  %i.am = add nsw i64 %i.aj, 9223372036854775791
  %switch1128 = icmp ult i64 %i.am, 2
  %switch11 = select i1 %i.al, i1 true, i1 %switch1128
  br i1 %switch11, label %bb.u, label %bb.v

bb.v:                                             ; preds = %.thread
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs53gkmrwjETj_4tiff5error9TiffErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #28
          to label %bb.u unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCsa5QsYiPB8Gl_5image6codecs4tiffNtNtB8_5error10ImageError16from_tiff_encode(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 2 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = load i64, ptr %1, align 8, !range !20, !noundef !4 ; 5 uses
  %i.j = icmp ne i64 %i.i, -9223372036854775791
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nsw i64 %i.i, 9223372036854775792
  %i.l = icmp ugt i64 %i.i, -9223372036854775793
  %i.m = select i1 %i.l, i64 %i.k, i64 1
  switch i64 %i.m, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.f
    i64 2, label %bb.k
    i64 3, label %bb.l
    i64 4, label %bb.c
    i64 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1229
  store i8 0, ptr %i.d, align 8, !noalias !1230
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 5, ptr %.sroa.518.0..sroa_idx, align 1, !noalias !1230
  %i.n = invoke { ptr, ptr } @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtCs53gkmrwjETj_4tiff5error9TiffErrorE4fromCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.h)
          to label %bb.t unwind label %bb.d, !noalias !1231 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #28
          to label %bb.u unwind label %bb.e, !noalias !1229

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1229
  unreachable

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 5, ptr %i.q, align 1
  store i8 0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1232
  store i64 0, ptr %i.c, align 8, !noalias !1232
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1232
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1232
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.r, align 8, !noalias !1232
  store ptr %i.c, ptr %i.b, align 8, !noalias !1232
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @105, ptr %i.s, align 8, !noalias !1232
  %i.t = invoke noundef zeroext i1 @_RNvXsm_NtCs53gkmrwjETj_4tiff5errorNtB5_20TiffUnsupportedErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.g, !noalias !1233

bb.g:                                             ; preds = %bb.i, %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #28
          to label %.body12 unwind label %bb.j, !noalias !1233

bb.h:                                             ; preds = %bb.f
  br i1 %i.t, label %bb.i, label %bb.m, !prof !6

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #32
          to label %.noexc.i unwind label %bb.g, !noalias !1233

.noexc.i:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1233
  unreachable

bb.k:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8
  store i8 9, ptr %0, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.z, align 8
  store i8 7, ptr %0, align 8
  br label %bb.o

.body12:                                          ; preds = %bb.g
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f) #28
          to label %bb.q unwind label %bb.p

bb.m:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1232
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 8, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs53gkmrwjETj_4tiff5error20TiffUnsupportedErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g)
          to label %bb.n unwind label %.thread24

.thread24:                                        ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.pre = load i64, ptr %1, align 8, !range !20
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l, %bb.k
  %i.ab = phi i64 [ %.pre, %bb.n ], [ %i.i, %bb.l ], [ %i.i, %bb.k ] ; 3 uses
  %i.ac = icmp ne i64 %i.ab, -9223372036854775791
  call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp ult i64 %i.ab, -9223372036854775792
  %i.ae = add nsw i64 %i.ab, 9223372036854775791
  %switch27 = icmp ult i64 %i.ae, 2
  %switch = select i1 %i.ad, i1 true, i1 %switch27
  br i1 %switch, label %bb.s, label %bb.r

bb.p:                                             ; preds = %bb.v, %bb.q, %.body12
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.q:                                             ; preds = %.body12
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs53gkmrwjETj_4tiff5error20TiffUnsupportedErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #28
          to label %.thread unwind label %bb.p

bb.r:                                             ; preds = %bb.o
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs53gkmrwjETj_4tiff5error9TiffErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %1)
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.t, %bb.r
  ret void

bb.t:                                             ; preds = %bb.c
  %i.ag = extractvalue { ptr, ptr } %i.n, 0       ; 2 uses
  %i.ah = extractvalue { ptr, ptr } %i.n, 1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag), "nonnull"(ptr %i.ah) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1229
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ai, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 5, ptr %.sroa.0.sroa.4.0..sroa_idx, align 1
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ag, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ah, ptr %.sroa.515.0..sroa_idx, align 8
  store i8 5, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.s

bb.u:                                             ; preds = %bb.d, %.thread, %bb.v
  %.pn22 = phi { ptr, i32 } [ %.pn23, %.thread ], [ %.pn23, %bb.v ], [ %i.o, %bb.d ]
  resume { ptr, i32 } %.pn22

.thread:                                          ; preds = %bb.q, %.thread24
  %.pn23 = phi { ptr, i32 } [ %i.aa, %.thread24 ], [ %i.u, %bb.q ] ; 2 uses
  %i.aj = load i64, ptr %1, align 8, !range !20, !noundef !4 ; 3 uses
  %i.ak = icmp ne i64 %i.aj, -9223372036854775791
  call void @llvm.assume(i1 %i.ak)
  %i.al = icmp ult i64 %i.aj, -9223372036854775792
  %i.am = add nsw i64 %i.aj, 9223372036854775791
  %switch1128 = icmp ult i64 %i.am, 2
  %switch11 = select i1 %i.al, i1 true, i1 %switch1128
  br i1 %switch11, label %bb.u, label %bb.v

bb.v:                                             ; preds = %.thread
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs53gkmrwjETj_4tiff5error9TiffErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #28
          to label %bb.u unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsg_NtNtCsaKJjC64KgbL_3std4sync4mpmcINtB5_8ReceiverINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE4recvCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [80 x i8], align 8                ; 4 uses
  %i.h = alloca [80 x i8], align 8                ; 6 uses
  %.sroa.6.i = alloca [72 x i8], align 8          ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [80 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = load i64, ptr %1, align 8, !range !33, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noundef !4 ; 15 uses
  switch i64 %i.l, label %default.unreachable26 [
    i64 0, label %bb.b
    i64 1, label %bb.ai
    i64 2, label %bb.aj
  ]

default.unreachable26:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i32 -1, ptr %i.o, align 8, !noalias !1278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1278
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 400 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 392 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 408
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 416
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 384
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.w = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false), !noalias !1278
  br label %bb.c

bb.c:                                             ; preds = %_RINvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2e_5error5ErrorEE4recvs_0uECsa5QsYiPB8Gl_5image.exit.i, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1279)
  %i.y = load atomic i64, ptr %i.n monotonic, align 8, !noalias !1280
  br label %bb.d

bb.d:                                             ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, %bb.c
  %.sroa.0.039.i.i = phi i32 [ 0, %bb.c ], [ %.sroa.0.1.i.i, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ] ; 12 uses
  %.sroa.02.0.i.i = phi i64 [ %i.y, %bb.c ], [ %i.be, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ] ; 7 uses
  %umin = call i32 @llvm.umin.i32(i32 %.sroa.0.039.i.i, i32 6) ; 2 uses
  %i.z = mul nuw nsw i32 %umin, %umin             ; 2 uses
  %i.aa = load i64, ptr %i.q, align 16, !noalias !1280, !noundef !4
  %i.ab = add i64 %i.aa, -1
  %i.ac = and i64 %i.ab, %.sroa.02.0.i.i          ; 3 uses
  %i.ad = load i64, ptr %i.r, align 8, !noalias !1280, !noundef !4
  %i.ae = sub i64 0, %i.ad
  %i.af = and i64 %.sroa.02.0.i.i, %i.ae
  %i.ag = load ptr, ptr %i.s, align 8, !noalias !1280, !nonnull !4, !noundef !4
  %i.ah = load i64, ptr %i.t, align 16, !noalias !1280, !noundef !4
  %i.ai = icmp ult i64 %i.ac, %i.ah
  call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw [88 x i8], ptr %i.ag, i64 %i.ac ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %i.al = load atomic i64, ptr %i.ak acquire, align 8, !noalias !1280 ; 3 uses
  %i.am = add i64 %.sroa.02.0.i.i, 1
  %i.an = icmp eq i64 %i.am, %i.al
  br i1 %i.an, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = icmp eq i64 %i.al, %.sroa.02.0.i.i
  br i1 %i.ao, label %bb.i, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ap = add nuw i64 %i.ac, 1
  %i.aq = load i64, ptr %i.v, align 128, !noalias !1280, !noundef !4
  %i.ar = icmp ult i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.l, label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.as = icmp ult i32 %.sroa.0.039.i.i, 7
  br i1 %i.as, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtNtCsaKJjC64KgbL_3std6thread9functions9yield_now(), !noalias !1280
  br label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %bb.g
  %.not.i.i.i = icmp eq i32 %.sroa.0.039.i.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i
  %i.at = mul nuw i32 %.sroa.0.039.i.i, %.sroa.0.039.i.i ; 2 uses
  %xtraiter = and i32 %i.at, 7                    ; 3 uses
  %i.au = icmp ult i32 %.sroa.0.039.i.i, 3
  br i1 %i.au, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i32 %i.at, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1280
  call void @llvm.x86.sse2.pause(), !noalias !1280
  call void @llvm.x86.sse2.pause(), !noalias !1280
  call void @llvm.x86.sse2.pause(), !noalias !1280
  call void @llvm.x86.sse2.pause(), !noalias !1280
  call void @llvm.x86.sse2.pause(), !noalias !1280
  call void @llvm.x86.sse2.pause(), !noalias !1280
  call void @llvm.x86.sse2.pause(), !noalias !1280
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit47.unr-lcssa, label %.lr.ph.i.i.i

bb.i:                                             ; preds = %bb.e
  fence seq_cst
  %i.av = load atomic i64, ptr %i.u monotonic, align 16, !noalias !1280 ; 2 uses
  %i.aw = load i64, ptr %i.q, align 16, !noalias !1280, !noundef !4 ; 2 uses
  %i.ax = xor i64 %i.aw, -1
  %i.ay = and i64 %i.av, %i.ax
  %i.az = icmp eq i64 %i.ay, %.sroa.02.0.i.i
  br i1 %i.az, label %bb.j, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i12.i.i

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i12.i.i: ; preds = %bb.i
  %..i.i.i.i = call noundef i32 @llvm.umin.i32(i32 %.sroa.0.039.i.i, i32 6) ; 2 uses
  %i.ba = mul nuw nsw i32 %..i.i.i.i, %..i.i.i.i  ; 2 uses
  %.not.i13.i.i = icmp eq i32 %.sroa.0.039.i.i, 0
  br i1 %.not.i13.i.i, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.preheader

.lr.ph.i16.i.i.preheader:                         ; preds = %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i12.i.i
  %xtraiter55 = and i32 %i.ba, 5                  ; 3 uses
  %i.bb = icmp ult i32 %.sroa.0.039.i.i, 3
  br i1 %i.bb, label %.lr.ph.i16.i.i.epil.preheader, label %.lr.ph.i16.i.i.preheader.new

.lr.ph.i16.i.i.preheader.new:                     ; preds = %.lr.ph.i16.i.i.preheader
  %unroll_iter59 = and i32 %i.ba, 56
  br label %.lr.ph.i16.i.i

.lr.ph.i16.i.i:                                   ; preds = %.lr.ph.i16.i.i, %.lr.ph.i16.i.i.preheader.new
  %niter60 = phi i32 [ 0, %.lr.ph.i16.i.i.preheader.new ], [ %niter60.next.7, %.lr.ph.i16.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1280
  call void @llvm.x86.sse2.pause(), !noalias !1280
  call void @llvm.x86.sse2.pause(), !noalias !1280
  call void @llvm.x86.sse2.pause(), !noalias !1280
  call void @llvm.x86.sse2.pause(), !noalias !1280
  call void @llvm.x86.sse2.pause(), !noalias !1280
  call void @llvm.x86.sse2.pause(), !noalias !1280
  call void @llvm.x86.sse2.pause(), !noalias !1280
  %niter60.next.7 = add i32 %niter60, 8           ; 2 uses
  %niter60.ncmp.7 = icmp eq i32 %niter60.next.7, %unroll_iter59
  br i1 %niter60.ncmp.7, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit46.unr-lcssa, label %.lr.ph.i16.i.i

bb.j:                                             ; preds = %bb.i
  %i.bc = and i64 %i.aw, %i.av
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_recvCsa5QsYiPB8Gl_5image.exit.i, label %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit.thread.i
end_hunk_5
begin_hunk_6_@_RNvXNtNtCsa5QsYiPB8Gl_5image6images13generic_imageINtB2_6PixelsINtNtB4_6buffer11ImageBufferINtNtB6_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB6_:bb.a
bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.h = phi i32 [ %i.b, %._crit_edge ], [ 0, %bb.b ] ; 3 uses
  %i.i = phi i32 [ %.pre, %._crit_edge ], [ %i.g, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !noundef !4
  %.not4 = icmp ult i32 %i.i, %i.k
  br i1 %.not4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %1, align 8, !nonnull !4, !align !19, !noundef !4
  %i.m = tail call noundef i32 @_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l, i32 noundef %i.h, i32 noundef %i.i)
  %i.n = add nuw i32 %i.h, 1
  store i32 %i.n, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.h, ptr %i.o, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.i, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.m, ptr %.sroa.5.0..sroa_idx, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %storemerge = phi i32 [ 1, %bb.d ], [ 0, %bb.c ]
  store i32 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCsj6eKBz9Db1c_4core2io5write17default_write_fmtINtB2_7AdapterINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm9autobreak9AutoBreakQDNtB4_5WriteEL_EENtNtB8_3fmt5Write9write_strB1g_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !19, !noundef !4
  %i.c = tail call noundef ptr @_RNvYINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm9autobreak9AutoBreakQDNtNtNtCsj6eKBz9Db1c_4core2io5write5WriteEL_EB12_9write_allBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i
    i64 1, label %bb.e
  ], !prof !18

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !1299
  store i8 3, ptr %i.a, align 8, !alias.scope !1299
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit

bb.f:                                             ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit
  ret i1 %.not

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  store ptr %i.c, ptr %i.d, align 8
  resume { ptr, i32 } %i.m

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i, %bb.b
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCsj6eKBz9Db1c_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaKJjC64KgbL_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = tail call noundef ptr @_RNvYNtNtNtNtCsaKJjC64KgbL_3std3sys5stdio4unix6StderrNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_allCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i
    i64 1, label %bb.e
  ], !prof !18

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !1302
  store i8 3, ptr %i.a, align 8, !alias.scope !1302
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit

bb.f:                                             ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit
  ret i1 %.not

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  store ptr %i.c, ptr %i.d, align 8
  resume { ptr, i32 } %i.m

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i, %bb.b
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXs9_NtNtCsa5QsYiPB8Gl_5image6images4flatNtNtBc_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB8_5ErrorE4fromNtB2_23NormalFormRequiredErrorNtNtB1c_3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsL_NtNtCsa5QsYiPB8Gl_5image6images4flatNtB5_10NormalFormNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !19, !noundef !4
  %i.e = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @87, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderNtNtBb_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB5_12DecoderErrorE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(12) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1307
  store i8 0, ptr %i.a, align 8, !noalias !1308
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 8, ptr %.sroa.53.0..sroa_idx, align 1, !noalias !1308
  %i.b = invoke { ptr, ptr } @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder12DecoderErrorE4fromB2s_(ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %1)
          to label %_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtNtNtB7_6codecs3bmp7decoder12DecoderErrorEB7_.exit unwind label %bb.b, !noalias !1309 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #28
          to label %bb.d unwind label %bb.c, !noalias !1307

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1307
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c

_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtNtNtB7_6codecs3bmp7decoder12DecoderErrorEB7_.exit: ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.b, 0        ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.b, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e), "nonnull"(ptr %i.f) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1307
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.g, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 8, ptr %.sroa.0.sroa.4.0..sroa_idx, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 4, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc ptr @_RNvXs1_NtCsj6eKBz9Db1c_4core7convertReINtB5_4IntoINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB1G_4SyncEL_EE4intoCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1317
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1317
  %i.c = load i64, ptr %i.a, align 8, !range !8, !noalias !1317, !noundef !4
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !9, !noalias !1317, !noundef !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa5QsYiPB8Gl_5image.exit.i.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !noalias !1317
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #30, !noalias !1317
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !noalias !1317, !nonnull !4, !noundef !4 ; 2 uses
  %i.j = icmp samesign ule i64 %1, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1317
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.i, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa5QsYiPB8Gl_5image.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %0, i64 range(i64 0, -9223372036854775808) %1, i1 false), !noalias !1318
  br label %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.i

_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.c, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa5QsYiPB8Gl_5image.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1319
  store i64 %i.f, ptr %i.b, align 8, !noalias !1319
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1319
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %1, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !1319
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !1320
  %i.k = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 24, 513) 24, i64 noundef range(i64 8, 129) 8) #24, !noalias !1320 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %_RNvXsh_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromReE4from.exit, !prof !6

bb.d:                                             ; preds = %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #30
          to label %.noexc.i unwind label %bb.e, !noalias !1319

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1R_4SyncEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #28
          to label %bb.g unwind label %bb.f, !noalias !1319

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1319
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.m

_RNvXsh_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromReE4from.exit: ; preds = %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1319
  ret ptr %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCsa5QsYiPB8Gl_5image5error10LimitErrorNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !19, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1324
  store ptr %i.b, ptr %i.a, align 8, !noalias !1324
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @131)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1324
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCsa5QsYiPB8Gl_5image5error13DecodingErrorNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1328
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.c, ptr %i.a, align 8, !noalias !1328
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef 6, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @126, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @130, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @127)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1328
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCsa5QsYiPB8Gl_5image5error13EncodingErrorNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1332
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.c, ptr %i.a, align 8, !noalias !1332
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @263, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef 6, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @126, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @130, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @127)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1332
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCsa5QsYiPB8Gl_5image5error14LimitErrorKindNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !19, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1336)
  %i.c = load i64, ptr %i.b, align 8, !range !17, !alias.scope !1336, !noundef !4 ; 2 uses
  %i.d = add nsw i64 %i.c, -2
  %.inv.i = icmp samesign ult i64 %i.c, 2
  %i.e = select i1 %.inv.i, i64 2, i64 %i.d
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 14), !noalias !1336
  br label %_RNvXsH_NtCsa5QsYiPB8Gl_5image5errorNtB5_14LimitErrorKindNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 18), !noalias !1336
  br label %_RNvXsH_NtCsa5QsYiPB8Gl_5image5errorNtB5_14LimitErrorKindNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1337
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.h, ptr %i.a, align 8, !noalias !1337
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @139, i64 noundef 6, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @136, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @140, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @137)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1337
  br label %_RNvXsH_NtCsa5QsYiPB8Gl_5image5errorNtB5_14LimitErrorKindNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

_RNvXsH_NtCsa5QsYiPB8Gl_5image5errorNtB5_14LimitErrorKindNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %i.i, %bb.e ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCsa5QsYiPB8Gl_5image5error14ParameterErrorNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1341
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.c, ptr %i.a, align 8, !noalias !1341
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @265, i64 noundef 14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 4, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @264, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @130, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @127)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1341
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !align !19, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  %i.e = load i8, ptr %i.d, align 8, !range !21, !alias.scope !1345, !noundef !4
  switch i8 %i.e, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1346
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.f, ptr %i.c, align 8, !noalias !1346
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @191, i64 noundef 5, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @190)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1346
  br label %_RNvXsN_NtCsa5QsYiPB8Gl_5image5errorNtB5_15ImageFormatHintNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1346
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.b, align 8, !noalias !1346
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @98)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1346
  br label %_RNvXsN_NtCsa5QsYiPB8Gl_5image5errorNtB5_15ImageFormatHintNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1346
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.j, ptr %i.a, align 8, !noalias !1346
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @193)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1346
  br label %_RNvXsN_NtCsa5QsYiPB8Gl_5image5errorNtB5_15ImageFormatHintNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 7), !noalias !1345
  br label %_RNvXsN_NtCsa5QsYiPB8Gl_5image5errorNtB5_15ImageFormatHintNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

_RNvXsN_NtCsa5QsYiPB8Gl_5image5errorNtB5_15ImageFormatHintNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.g, %bb.b ], [ %i.i, %bb.c ], [ %i.k, %bb.d ], [ %i.l, %bb.e ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCsa5QsYiPB8Gl_5image5error16UnsupportedErrorNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1350
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.c, ptr %i.a, align 8, !noalias !1350
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @246, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef 6, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @126, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @245)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1350
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCsa5QsYiPB8Gl_5image5error20UnsupportedErrorKindNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !4, !align !19, !noundef !4 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  %i.g = load i8, ptr %i.f, align 8, !range !28, !alias.scope !1354, !noundef !4 ; 3 uses
  %i.h = icmp ne i8 %i.g, 7
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add nsw i8 %i.g, -4
  %i.j = icmp samesign ugt i8 %i.g, 3
  %narrow.i = select i1 %i.j, i8 %i.i, i8 3
  switch i8 %narrow.i, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1355
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.k, ptr %i.e, align 8, !noalias !1355
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @248, i64 noundef 5, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @247)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1355
  br label %_RNvXst_NtCsa5QsYiPB8Gl_5image5errorNtB5_20UnsupportedErrorKindNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1355
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.m, ptr %i.d, align 8, !noalias !1355
  %i.n = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @249, i64 noundef 11, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @247)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1355
  br label %_RNvXst_NtCsa5QsYiPB8Gl_5image5errorNtB5_20UnsupportedErrorKindNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1355
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.o, ptr %i.c, align 8, !noalias !1355
  %i.p = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @250, i64 noundef 14, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @96)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1355
  br label %_RNvXst_NtCsa5QsYiPB8Gl_5image5errorNtB5_20UnsupportedErrorKindNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1355
  store ptr %i.f, ptr %i.b, align 8, !noalias !1355
  %i.q = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @252, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @251)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1355
  br label %_RNvXst_NtCsa5QsYiPB8Gl_5image5errorNtB5_20UnsupportedErrorKindNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1355
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.r, ptr %i.a, align 8, !noalias !1355
  %i.s = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @253, i64 noundef 14, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @98)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1355
  br label %_RNvXst_NtCsa5QsYiPB8Gl_5image5errorNtB5_20UnsupportedErrorKindNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

_RNvXst_NtCsa5QsYiPB8Gl_5image5errorNtB5_20UnsupportedErrorKindNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sroa.0.0.in.i = phi i1 [ %i.l, %bb.c ], [ %i.n, %bb.d ], [ %i.p, %bb.e ], [ %i.q, %bb.f ], [ %i.s, %bb.g ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCsa5QsYiPB8Gl_5image6images4flat10NormalFormNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  %i.b = load i8, ptr %i.a, align 1, !range !32, !alias.scope !1358, !noundef !4 ; 2 uses
  %i.c = zext nneg i8 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsL_NtNtCsa5QsYiPB8Gl_5image6images4flatNtB5_10NormalFormNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.d = zext nneg i8 %i.b to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsL_NtNtCsa5QsYiPB8Gl_5image6images4flatNtB5_10NormalFormNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.121, i64 %i.d
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext), !noalias !1358
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintNtB6_7Display3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !19, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXsl_NtCsa5QsYiPB8Gl_5image5errorNtB5_15ImageFormatHintNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCsa5QsYiPB8Gl_5image5error25TryFromExtendedColorErrorNtB6_7Display3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1363
  store ptr %i.b, ptr %i.a, align 8, !noalias !1363
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsK_NtCsa5QsYiPB8Gl_5image5colorNtB5_17ExtendedColorTypeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !1363
  %i.c = load ptr, ptr %1, align 8, !alias.scope !1362, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1362, !nonnull !4, !align !19, !noundef !4
  %i.f = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, ptr noundef nonnull @244, ptr noundef nonnull %i.a), !noalias !1362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1363
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtNtCsa5QsYiPB8Gl_5image6codecs4jpeg7encoderNtNtBb_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB5_12EncoderErrorE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1367
  store i8 0, ptr %i.a, align 8, !noalias !1368
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 1, ptr %.sroa.53.0..sroa_idx, align 1, !noalias !1368
  %i.b = invoke { ptr, ptr } @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtNtCsa5QsYiPB8Gl_5image6codecs4jpeg7encoder12EncoderErrorE4fromB2s_(i32 noundef %1, i32 noundef %2)
          to label %_RINvMs0_NtCsa5QsYiPB8Gl_5image5errorNtB6_13EncodingError3newNtNtNtNtB8_6codecs4jpeg7encoder12EncoderErrorEB8_.exit unwind label %bb.b, !noalias !1367 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #28
          to label %bb.d unwind label %bb.c, !noalias !1367

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1367
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c

_RINvMs0_NtCsa5QsYiPB8Gl_5image5errorNtB6_13EncodingError3newNtNtNtNtB8_6codecs4jpeg7encoder12EncoderErrorEB8_.exit: ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.b, 0        ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.b, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e), "nonnull"(ptr %i.f) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1367
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.g, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 1, ptr %.sroa.0.sroa.4.0..sroa_idx, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 5, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtCsgidZRN39rux_6flate23zioINtB5_6WriterINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB7_3mem8CompressENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !range !16, !noundef !4
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit, label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_RNvMs2_NtCsgidZRN39rux_6flate23zioINtB5_6WriterINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB7_3mem8CompressE6finishCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i
    i64 1, label %bb.e
  ], !prof !18

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult ptr %i.d, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.d, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !1371
  store i8 3, ptr %i.a, align 8, !alias.scope !1371
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCsaKJjC64KgbL_3std4sync4mpmcINtB5_6SenderINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1u_5error5ErrorEENtNtNtBT_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !33, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !noundef !4 ; 23 uses
  switch i64 %i.a, label %default.unreachable6 [
    i64 0, label %bb.b
    i64 1, label %bb.f
    i64 2, label %bb.m
  ]

default.unreachable6:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 512
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_5array7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1Y_5error5ErrorEEE7releaseNCNvXs4_B5_INtB5_6SenderB1i_ENtNtNtB1n_3ops4drop4Drop4drop0ECsa5QsYiPB8Gl_5image.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 400 ; 2 uses
  %i.g = load i64, ptr %i.f, align 16, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.i = atomicrmw or ptr %i.h, i64 %i.g seq_cst, align 8
  %i.j = load i64, ptr %i.f, align 16, !noundef !4
  %i.k = and i64 %i.j, %i.i
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %_RNCNvXs4_NtNtCsaKJjC64KgbL_3std4sync4mpmcINtB7_6SenderINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEENtNtNtBV_3ops4drop4Drop4drop0Csa5QsYiPB8Gl_5image.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 320
  tail call fastcc void @_RNvMs0_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.m) #31
  br label %_RNCNvXs4_NtNtCsaKJjC64KgbL_3std4sync4mpmcINtB7_6SenderINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEENtNtNtBV_3ops4drop4Drop4drop0Csa5QsYiPB8Gl_5image.exit.i

_RNCNvXs4_NtNtCsaKJjC64KgbL_3std4sync4mpmcINtB7_6SenderINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEENtNtNtBV_3ops4drop4Drop4drop0Csa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 528
  %i.o = atomicrmw xchg ptr %i.n, i8 1 acq_rel, align 1
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %_RINvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_5array7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1Y_5error5ErrorEEE7releaseNCNvXs4_B5_INtB5_6SenderB1i_ENtNtNtB1n_3ops4drop4Drop4drop0ECsa5QsYiPB8Gl_5image.exit, label %bb.e

bb.e:                                             ; preds = %_RNCNvXs4_NtNtCsaKJjC64KgbL_3std4sync4mpmcINtB7_6SenderINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEENtNtNtBV_3ops4drop4Drop4drop0Csa5QsYiPB8Gl_5image.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2O_5error5ErrorEEEEECsa5QsYiPB8Gl_5image(ptr nonnull %.val)
  br label %_RINvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_5array7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1Y_5error5ErrorEEE7releaseNCNvXs4_B5_INtB5_6SenderB1i_ENtNtNtB1n_3ops4drop4Drop4drop0ECsa5QsYiPB8Gl_5image.exit

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 384
  %i.q = atomicrmw add ptr %i.p, i64 -1 acq_rel, align 8
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.g, label %_RINvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_5array7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1Y_5error5ErrorEEE7releaseNCNvXs4_B5_INtB5_6SenderB1i_ENtNtNtB1n_3ops4drop4Drop4drop0ECsa5QsYiPB8Gl_5image.exit

bb.g:                                             ; preds = %bb.f
  %i.s = tail call noundef zeroext i1 @_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE18disconnect_sendersCsa5QsYiPB8Gl_5image(ptr noundef nonnull align 128 %.val) ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 400
  %i.u = atomicrmw xchg ptr %i.t, i8 1 acq_rel, align 1
  %.not.i3 = icmp eq i8 %i.u, 0
  br i1 %.not.i3, label %_RINvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_5array7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1Y_5error5ErrorEEE7releaseNCNvXs4_B5_INtB5_6SenderB1i_ENtNtNtB1n_3ops4drop4Drop4drop0ECsa5QsYiPB8Gl_5image.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXs2_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEENtNtNtB11_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 128 dereferenceable(512) %.val)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4list7ChannelINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1P_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 264
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5WakerECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4list7ChannelINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1P_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 264
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5WakerECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.y)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChannelINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2N_5error5ErrorEEEEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4list7ChannelINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1P_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

common.resume:                                    ; preds = %bb.s, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i, %bb.l ], [ %eh.lpad-body.i.i5, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.z, %bb.k ], [ %i.v, %bb.i ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 512, i64 noundef 128) #24
  br label %common.resume

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChannelINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2N_5error5ErrorEEEEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4list7ChannelINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1P_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i.i.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 512, i64 noundef 128) #24
  br label %_RINvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_5array7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1Y_5error5ErrorEEE7releaseNCNvXs4_B5_INtB5_6SenderB1i_ENtNtNtB1n_3ops4drop4Drop4drop0ECsa5QsYiPB8Gl_5image.exit

bb.m:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.ab = atomicrmw add ptr %i.aa, i64 -1 acq_rel, align 8
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.n, label %_RINvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_5array7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1Y_5error5ErrorEEE7releaseNCNvXs4_B5_INtB5_6SenderB1i_ENtNtNtB1n_3ops4drop4Drop4drop0ECsa5QsYiPB8Gl_5image.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = tail call noundef zeroext i1 @_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10disconnectCsa5QsYiPB8Gl_5image(ptr noundef nonnull align 8 %.val) ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.af = atomicrmw xchg ptr %i.ae, i8 1 acq_rel, align 1
  %.not.i4 = icmp eq i8 %i.af, 0
  br i1 %.not.i4, label %_RINvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_5array7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1Y_5error5ErrorEEE7releaseNCNvXs4_B5_INtB5_6SenderB1i_ENtNtNtB1n_3ops4drop4Drop4drop0ECsa5QsYiPB8Gl_5image.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5WakerECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.ag)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4zero7ChannelINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1P_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i.i.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 56
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5WakerECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ai) #28
          to label %bb.s unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4zero7ChannelINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1P_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 56
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5WakerECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ak)
end_hunk_6
begin_hunk_7_@_RNvXs9_NtCsa5QsYiPB8Gl_5image5errorNtB5_10ImageErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt:bb.a

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1386, !noundef !4
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1388
  store ptr %i.k, ptr %i.e, align 8, !noalias !1388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1388
  store ptr %i.j, ptr %i.d, align 8, !noalias !1388
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsl_NtCsa5QsYiPB8Gl_5image5errorNtB5_15ImageFormatHintNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !1388
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.m, align 8, !noalias !1388
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtB1r_4SyncEL_ENtB6_7Display3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !1388
  %i.n = load ptr, ptr %1, align 8, !alias.scope !1387, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1387, !nonnull !4, !align !19, !noundef !4
  %i.q = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noundef nonnull @237, ptr noundef nonnull %i.d), !noalias !1387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1388
  br label %_RNvXsh_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit

bb.e:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.j, align 8, !range !21, !alias.scope !1386, !noundef !4
  %i.s = icmp eq i8 %i.r, 3
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1388
  store ptr %i.j, ptr %i.f, align 8, !noalias !1388
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsl_NtCsa5QsYiPB8Gl_5image5errorNtB5_15ImageFormatHintNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !1388
  %i.t = load ptr, ptr %1, align 8, !alias.scope !1387, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !1387, !nonnull !4, !align !19, !noundef !4
  %i.w = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.v, ptr noundef nonnull @236, ptr noundef nonnull %i.f), !noalias !1387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1388
  br label %_RNvXsh_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit

bb.g:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %1, align 8, !alias.scope !1387, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !1387, !nonnull !4, !align !19, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !invariant.load !4, !noalias !1388, !nonnull !4
  %i.ac = tail call noundef zeroext i1 %i.ab(ptr noundef nonnull %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @235, i64 noundef 12) #31, !noalias !1388, !inline_history !1389
  br label %_RNvXsh_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit

bb.h:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !1390, !noundef !4
  %.not.i1 = icmp eq ptr %i.af, null
  br i1 %.not.i1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1392
  store ptr %i.ae, ptr %i.c, align 8, !noalias !1392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1392
  store ptr %i.ad, ptr %i.b, align 8, !noalias !1392
  %.sroa.47.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsl_NtCsa5QsYiPB8Gl_5image5errorNtB5_15ImageFormatHintNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i2, align 8, !noalias !1392
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.ag, align 8, !noalias !1392
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtB1r_4SyncEL_ENtB6_7Display3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !1392
  %i.ah = load ptr, ptr %1, align 8, !alias.scope !1391, !nonnull !4, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !1391, !nonnull !4, !align !19, !noundef !4
  %i.ak = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj, ptr noundef nonnull @223, ptr noundef nonnull %i.b), !noalias !1391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1392
  br label %_RNvXsh_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1392
  store ptr %i.ad, ptr %i.a, align 8, !noalias !1392
  %.sroa.43.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsl_NtCsa5QsYiPB8Gl_5image5errorNtB5_15ImageFormatHintNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx.i3, align 8, !noalias !1392
  %i.al = load ptr, ptr %1, align 8, !alias.scope !1391, !nonnull !4, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !1391, !nonnull !4, !align !19, !noundef !4
  %i.ao = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.an, ptr noundef nonnull @222, ptr noundef nonnull %i.a), !noalias !1391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1392
  br label %_RNvXsh_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit

bb.k:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = tail call noundef zeroext i1 @_RNvXsd_NtCsa5QsYiPB8Gl_5image5errorNtB5_14ParameterErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ap, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsh_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit

bb.l:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1394)
  %i.as = load i64, ptr %i.ar, align 8, !range !17, !alias.scope !1393, !noundef !4 ; 2 uses
  %i.at = add nsw i64 %i.as, -2
  %.inv.i = icmp samesign ult i64 %i.as, 2
  %i.au = select i1 %.inv.i, i64 2, i64 %i.at
  %i.av = load ptr, ptr %1, align 8, !alias.scope !1394, !nonnull !4, !noundef !4 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !1394, !nonnull !4, !align !19, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !invariant.load !4, !noalias !1395, !nonnull !4 ; 3 uses
  switch i64 %i.au, label %bb.m [
    i64 0, label %bb.n
    i64 1, label %bb.o
    i64 2, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ba = tail call noundef zeroext i1 %i.az(ptr noundef nonnull %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @238, i64 noundef 24) #31, !noalias !1395, !inline_history !1396
  br label %_RNvXsh_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit

bb.o:                                             ; preds = %bb.l
  %i.bb = tail call noundef zeroext i1 %i.az(ptr noundef nonnull %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @239, i64 noundef 21) #31, !noalias !1395, !inline_history !1396
  br label %_RNvXsh_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit

bb.p:                                             ; preds = %bb.l
  %i.bc = tail call noundef zeroext i1 %i.az(ptr noundef nonnull %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 79) #31, !noalias !1395, !inline_history !1396
  br label %_RNvXsh_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit

bb.q:                                             ; preds = %bb.a
  %i.bd = tail call noundef zeroext i1 @_RNvXsb_NtCsa5QsYiPB8Gl_5image5errorNtB5_16UnsupportedErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsh_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit

bb.r:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = tail call noundef zeroext i1 @_RNvXs3_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsh_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit

_RNvXsh_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit: ; preds = %bb.p, %bb.o, %bb.n, %bb.j, %bb.i, %bb.g, %bb.f, %bb.d, %bb.r, %bb.q, %bb.k
  %.sroa.0.0.in = phi i1 [ %i.bf, %bb.r ], [ %i.w, %bb.f ], [ %i.aq, %bb.k ], [ %i.ao, %bb.j ], [ %i.bd, %bb.q ], [ %i.q, %bb.d ], [ %i.ac, %bb.g ], [ %i.ak, %bb.i ], [ %i.ba, %bb.n ], [ %i.bc, %bb.p ], [ %i.bb, %bb.o ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs9_NtNtCsa5QsYiPB8Gl_5image6images4flatNtNtB9_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB5_5ErrorE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, i24 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.03.1.extract.shift = lshr i24 %1, 8      ; 2 uses
  %trunc = trunc i24 %1 to i8
  switch i8 %trunc, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.h
    i8 3, label %switch.lookup
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 6, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %.sroa.03.1.extract.trunc = trunc i24 %.sroa.03.1.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1400
  store i8 3, ptr %i.a, align 8, !noalias !1401
  %i.c = invoke { ptr, ptr } @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNvXs9_NtNtCsa5QsYiPB8Gl_5image6images4flatNtNtB2w_5error10ImageErrorIB20_NtB2s_5ErrorE4from23NormalFormRequiredErrorE4fromB2w_(i8 noundef range(i8 0, 5) %.sroa.03.1.extract.trunc)
          to label %_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNvXs9_NtNtB7_6images4flatNtB5_10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB13_5ErrorE4from23NormalFormRequiredErrorEB7_.exit unwind label %bb.e, !noalias !1400 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #28
          to label %bb.g unwind label %bb.f, !noalias !1400

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1400
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.d

_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNvXs9_NtNtB7_6images4flatNtB5_10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB13_5ErrorE4from23NormalFormRequiredErrorEB7_.exit: ; preds = %bb.d
  %i.f = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.c, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f), "nonnull"(ptr %i.g) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1400
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx24, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.g, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 4, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.i, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.49.0..sroa_idx, align 8
  store i8 6, ptr %0, align 8
  br label %bb.i

switch.lookup:                                    ; preds = %bb.a
  %i.j = and i24 %.sroa.03.1.extract.shift, 255
  %i.k = zext nneg i24 %i.j to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs9_NtNtCsa5QsYiPB8Gl_5image6images4flatNtNtB9_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB5_5ErrorE4from, i64 %i.k
  %switch.load = load i8, ptr %switch.gep, align 1
  store i8 3, ptr %0, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 4, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.517.sroa.4.0..sroa.517.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %switch.load, ptr %.sroa.517.sroa.4.0..sroa.517.0..sroa_idx.sroa_idx, align 1
  br label %bb.i

bb.i:                                             ; preds = %switch.lookup, %bb.h, %_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNvXs9_NtNtB7_6images4flatNtB5_10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB13_5ErrorE4from23NormalFormRequiredErrorEB7_.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsA_NtCsa5QsYiPB8Gl_5image5errorNtB5_18ParameterErrorKindNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !22, !noundef !4 ; 3 uses
  %i.e = icmp ne i64 %i.d, -9223372036854775805
  tail call void @llvm.assume(i1 %i.e)
  %i.f = xor i64 %i.d, -9223372036854775808
  %i.g = icmp slt i64 %i.d, 0
  %i.h = select i1 %i.g, i64 %i.f, i64 3
  switch i64 %i.h, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @94, i64 noundef 17)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 13)
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.c, align 8
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 15, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @96)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 7, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @98)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 10)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.p, ptr %i.a, align 8
  %i.q = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef 8, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @101, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @96)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.c ], [ %i.j, %bb.d ], [ %i.l, %bb.e ], [ %i.m, %bb.f ], [ %i.n, %bb.g ], [ %i.q, %bb.h ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsD_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_27CicpTransferCharacteristicsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !1402, !noundef !4
  %switch.tableidx = add nsw i8 %i.a, -1          ; 2 uses
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsD_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_27CicpTransferCharacteristicsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %switch.tableidx to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsD_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_27CicpTransferCharacteristicsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.120, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCsa5QsYiPB8Gl_5image5colorNtB5_17ExtendedColorTypeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !29, !noundef !4
  switch i8 %i.b, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
    i8 22, label %bb.x
    i8 23, label %bb.y
    i8 24, label %bb.z
    i8 25, label %bb.aa
    i8 26, label %bb.ab
    i8 27, label %bb.ac
    i8 28, label %bb.ad
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @141, i64 noundef 2)
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 2)
  br label %bb.ae

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 3)
  br label %bb.ae

bb.e:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @144, i64 noundef 4)
  br label %bb.ae

bb.f:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @145, i64 noundef 5)
  br label %bb.ae

bb.g:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @146, i64 noundef 2)
  br label %bb.ae

bb.h:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 3)
  br label %bb.ae

bb.i:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 4)
  br label %bb.ae

bb.j:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 5)
  br label %bb.ae

bb.k:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 2)
  br label %bb.ae

bb.l:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @151, i64 noundef 3)
  br label %bb.ae

bb.m:                                             ; preds = %bb.a
end_hunk_7
begin_hunk_8_@_RNvXsN_NtCsa5QsYiPB8Gl_5image5errorNtB5_15ImageFormatHintNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt:bb.a
bb.e:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 7)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.h, %bb.c ], [ %i.j, %bb.d ], [ %i.k, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionmENtNtB7_3fmt5Debug3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !12, !noundef !4
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @197, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @196)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @195, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1406, !noundef !4 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1406, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1406, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !1406
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !1412
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1413, !noundef !4 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1413, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !1413
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !1413
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs3ddsNtNtB8_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, i32 noundef range(i32 0, 8) %1, i32 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1417
  store i8 0, ptr %i.a, align 8, !noalias !1418
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 7, ptr %.sroa.53.0..sroa_idx, align 1, !noalias !1418
  %i.b = invoke { ptr, ptr } @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtCsa5QsYiPB8Gl_5image6codecs3dds12DecoderErrorE4fromB2q_(i32 noundef range(i32 0, 8) %1, i32 %2)
          to label %_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtNtB7_6codecs3dds12DecoderErrorEB7_.exit unwind label %bb.b, !noalias !1417 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #28
          to label %bb.d unwind label %bb.c, !noalias !1417

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1417
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c

_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtNtB7_6codecs3dds12DecoderErrorEB7_.exit: ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.b, 0        ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.b, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e), "nonnull"(ptr %i.f) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1417
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.g, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 7, ptr %.sroa.0.sroa.4.0..sroa_idx, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 4, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs_NtNtCsj6eKBz9Db1c_4core5slice10specializeSINtNtNtB8_3mem12maybe_uninit11MaybeUninithEINtB4_8SpecFillBK_E9spec_fillCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %0, i8 %2, i64 %1, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoderNtNtBa_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1423
  store i8 0, ptr %i.a, align 8, !noalias !1424
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 10, ptr %.sroa.53.0..sroa_idx, align 1, !noalias !1424
  %i.b = invoke { ptr, ptr } @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder12DecoderErrorE4fromB2s_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %1)
          to label %_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtNtNtB7_6codecs3hdr7decoder12DecoderErrorEB7_.exit unwind label %bb.b, !noalias !1425 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #28
          to label %bb.d unwind label %bb.c, !noalias !1423

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1423
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c

_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtNtNtB7_6codecs3hdr7decoder12DecoderErrorEB7_.exit: ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.b, 0        ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.b, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e), "nonnull"(ptr %i.f) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1423
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.g, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 10, ptr %.sroa.0.sroa.4.0..sroa_idx, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 4, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderNtNtBa_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1430
  store i8 0, ptr %i.a, align 8, !noalias !1431
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 9, ptr %.sroa.53.0..sroa_idx, align 1, !noalias !1431
  %i.b = invoke { ptr, ptr } @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder12DecoderErrorE4fromB2s_(ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %1)
          to label %_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtNtNtB7_6codecs3ico7decoder12DecoderErrorEB7_.exit unwind label %bb.b, !noalias !1432 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #28
          to label %bb.d unwind label %bb.c, !noalias !1430

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1430
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c

_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtNtNtB7_6codecs3ico7decoder12DecoderErrorEB7_.exit: ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.b, 0        ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.b, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e), "nonnull"(ptr %i.f) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1430
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.g, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 9, ptr %.sroa.0.sroa.4.0..sroa_idx, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 4, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderNtNtBa_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1437
  store i8 0, ptr %i.a, align 8, !noalias !1438
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 4, ptr %.sroa.53.0..sroa_idx, align 1, !noalias !1438
  %i.b = invoke { ptr, ptr } @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12DecoderErrorE4fromB2s_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %1)
          to label %_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtNtNtB7_6codecs3pnm7decoder12DecoderErrorEB7_.exit unwind label %bb.b, !noalias !1439 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #28
          to label %bb.d unwind label %bb.c, !noalias !1437

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1437
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c

_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtNtNtB7_6codecs3pnm7decoder12DecoderErrorEB7_.exit: ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.b, 0        ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.b, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e), "nonnull"(ptr %i.f) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1437
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.g, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 4, ptr %.sroa.0.sroa.4.0..sroa_idx, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 4, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtCsa5QsYiPB8Gl_5image6codecs3tga7encoderNtNtBa_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12EncoderErrorE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(12) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1444
  store i8 0, ptr %i.a, align 8, !noalias !1445
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 6, ptr %.sroa.53.0..sroa_idx, align 1, !noalias !1445
  %i.b = invoke { ptr, ptr } @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3tga7encoder12EncoderErrorE4fromB2s_(ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %1)
          to label %_RINvMs0_NtCsa5QsYiPB8Gl_5image5errorNtB6_13EncodingError3newNtNtNtNtB8_6codecs3tga7encoder12EncoderErrorEB8_.exit unwind label %bb.b, !noalias !1446 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #28
          to label %bb.d unwind label %bb.c, !noalias !1444

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1444
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c

_RINvMs0_NtCsa5QsYiPB8Gl_5image5errorNtB6_13EncodingError3newNtNtNtNtB8_6codecs3tga7encoder12EncoderErrorEB8_.exit: ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.b, 0        ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.b, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e), "nonnull"(ptr %i.f) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1444
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.g, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 6, ptr %.sroa.0.sroa.4.0..sroa_idx, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 5, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXsa_NtCsa5QsYiPB8Gl_5image5errorNtB5_10ImageErrorNtNtCsj6eKBz9Db1c_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !36, !noundef !4 ; 3 uses
  %i.b = icmp ne i8 %i.a, 8
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i8 %i.a, -4
  %.inv = icmp samesign ult i8 %i.a, 4
  %narrow = select i1 %.inv, i8 4, i8 %i.c
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.h
    i8 4, label %bb.h
    i8 5, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %.not2 = icmp eq ptr %i.e, null
  br i1 %.not2, label %bb.h, label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %.not1 = icmp eq ptr %i.g, null
  br i1 %.not1, label %bb.h, label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.h, label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = tail call { ptr, ptr } @_RNvXs4_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error6source(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j) ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0
  %i.m = extractvalue { ptr, ptr } %i.k, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !align !19, !noundef !4
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a, %bb.a, %bb.j, %bb.i, %bb.g, %bb.f
  %.sroa.10.0 = phi ptr [ %i.o, %bb.g ], [ undef, %bb.a ], [ %i.s, %bb.i ], [ undef, %bb.c ], [ %i.u, %bb.j ], [ undef, %bb.d ], [ %i.m, %bb.f ], [ undef, %bb.a ], [ undef, %bb.e ]
  %.sroa.0.0 = phi ptr [ %i.e, %bb.g ], [ null, %bb.a ], [ %i.g, %bb.i ], [ null, %bb.c ], [ %i.i, %bb.j ], [ null, %bb.d ], [ %i.l, %bb.f ], [ null, %bb.a ], [ null, %bb.e ]
  %i.p = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.q = insertvalue { ptr, ptr } %i.p, ptr %.sroa.10.0, 1
  ret { ptr, ptr } %i.q

bb.i:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4, !align !19, !noundef !4
  br label %bb.h

bb.j:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !4, !align !19, !noundef !4
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsa_NtNtCsa5QsYiPB8Gl_5image6images4flatNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(3) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = load i8, ptr %0, align 1, !range !21, !noundef !4
  switch i8 %i.h, label %default.unreachable63 [
    i8 0, label %bb.d
    i8 1, label %switch.lookup
    i8 2, label %bb.b
    i8 3, label %bb.c
  ]

default.unreachable63:                            ; preds = %bb.a
  unreachable

switch.lookup:                                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.j = load i8, ptr %i.i, align 1, !range !32, !noundef !4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = zext nneg i8 %i.j to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsa_NtNtCsa5QsYiPB8Gl_5image6images4flatNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, i64 %i.l
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.m = zext nneg i8 %i.j to i64
  %switch.gep65 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsa_NtNtCsa5QsYiPB8Gl_5image6images4flatNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.123, i64 %i.m
  %switch.load66 = load i8, ptr %switch.gep65, align 1
  %switch.ext = zext i8 %switch.load66 to i64
  store ptr %switch.load, ptr %i.g, align 8, !captures !37
  store i64 %switch.ext, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.422.0..sroa_idx, align 8
  %i.n = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !4, !align !19, !noundef !4
  %i.q = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noundef nonnull @204, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.r, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.s, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRhNtB6_7Display3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.47.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.t, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRhNtB6_7Display3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.438.0..sroa_idx, align 8
  %i.u = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !align !19, !noundef !4
  %i.x = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.w, ptr noundef nonnull @205, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.y, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCsa5QsYiPB8Gl_5image5color9ColorTypeNtB6_5Debug3fmtBA_, ptr %.sroa.43.0..sroa_idx, align 8
  %i.z = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !4, !align !19, !noundef !4
  %i.ac = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab, ptr noundef nonnull @206, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !4, !align !19, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !invariant.load !4, !nonnull !4
  %i.ai = tail call noundef zeroext i1 %i.ah(ptr noundef nonnull %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @198, i64 noundef 23) #31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %switch.lookup
  %.sroa.0.0.in = phi i1 [ %i.ai, %bb.d ], [ %i.ac, %bb.c ], [ %i.q, %switch.lookup ], [ %i.x, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsb_NtCsa5QsYiPB8Gl_5image5errorNtB5_16UnsupportedErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
end_hunk_8
