Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/calibration_handeye?download=true
inline.NumInlined: 1532
inline.NumDeleted: 258
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN2cv16calibrateHandEyeERKNS_11_InputArrayES2_S2_S2_RKNS_12_OutputArrayES5_NS_24HandEyeCalibrationMethodE:bb.a
  %21 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %22 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %23 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %24 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %25 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %26 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %27 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %28 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %29 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %30 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %31 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %32 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %33 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %34 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %35 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %36 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %37 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %38 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %39 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %40 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %41 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %42 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %43 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %44 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %45 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %46 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %47 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %48 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %49 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %50 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %51 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %52 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %53 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %54 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %55 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %56 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %57 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %58 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %59 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %60 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %61 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %62 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %63 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %i.a = alloca [2 x i32], align 8                ; 5 uses
  %64 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %65 = alloca %"class.cv::Mat_", align 8         ; 7 uses
  %66 = alloca %"class.cv::Mat_", align 8         ; 10 uses
  %67 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %68 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %69 = alloca %"class.cv::Range", align 4        ; 5 uses
  %70 = alloca %"class.cv::Range", align 8        ; 4 uses
  %71 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %72 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %73 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %74 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %75 = alloca %"class.cv::Mat", align 16         ; 12 uses
  %76 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %77 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %78 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %79 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %80 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %81 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %82 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %83 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %84 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %85 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %86 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %87 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %88 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %89 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %90 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %91 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %92 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %93 = alloca %"class.cv::Matx.11", align 16     ; 15 uses
  %94 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %95 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %96 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %97 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %98 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %99 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %100 = alloca %"class.cv::Mat", align 8         ; 8 uses
  %101 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %102 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %103 = alloca %"class.cv::Mat", align 8         ; 8 uses
  %104 = alloca %"class.cv::Mat", align 8         ; 8 uses
  %105 = alloca %"class.cv::Mat", align 8         ; 9 uses
  %106 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %107 = alloca %"class.cv::Mat", align 8         ; 10 uses
  %108 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %109 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %110 = alloca %"class.cv::Mat", align 8         ; 9 uses
  %111 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %112 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %113 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %114 = alloca %"class.cv::Rect_", align 16      ; 5 uses
  %115 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %116 = alloca %"class.cv::Rect_", align 16      ; 5 uses
  %117 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %118 = alloca %"class.cv::Rect_", align 16      ; 5 uses
  %119 = alloca %"class.cv::Mat", align 8         ; 9 uses
  %120 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %121 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %122 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %123 = alloca %"class.cv::Rect_", align 4       ; 8 uses
  %124 = alloca %"class.cv::Mat", align 8         ; 9 uses
  %125 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %126 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %127 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %128 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %129 = alloca %"class.cv::Rect_", align 4       ; 8 uses
  %130 = alloca %"class.cv::Mat", align 8         ; 8 uses
  %131 = alloca %"class.cv::_InputArray", align 8 ; 8 uses
  %132 = alloca %"class.cv::_InputArray", align 8 ; 8 uses
  %133 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %134 = alloca %"class.cv::Mat", align 8         ; 12 uses
  %135 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %136 = alloca %"class.cv::Mat", align 8         ; 9 uses
  %137 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %138 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %139 = alloca %"class.cv::Mat", align 8         ; 9 uses
  %140 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %141 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %142 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %143 = alloca %"class.cv::Rect_", align 16      ; 5 uses
  %144 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %145 = alloca %"class.cv::Rect_", align 16      ; 5 uses
  %146 = alloca %"class.cv::Mat", align 8         ; 8 uses
  %147 = alloca %"class.cv::Mat", align 8         ; 8 uses
  %148 = alloca %"class.cv::_InputArray", align 8 ; 8 uses
  %149 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %150 = alloca %"class.cv::_InputArray", align 8 ; 8 uses
  %151 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %152 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %153 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %154 = alloca %"class.cv::Mat", align 8         ; 10 uses
  %155 = alloca %"class.cv::Mat", align 8         ; 9 uses
  %156 = alloca %"class.cv::_InputArray", align 8 ; 5 uses
  %157 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %158 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %159 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %160 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %161 = alloca %"class.cv::Mat", align 8         ; 12 uses
  %162 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %163 = alloca %"class.cv::Mat", align 8         ; 10 uses
  %164 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %165 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %166 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %167 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %168 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %169 = alloca %"class.cv::Mat", align 8         ; 8 uses
  %170 = alloca %"class.cv::Mat", align 8         ; 8 uses
  %171 = alloca %"class.cv::Mat", align 8         ; 9 uses
  %172 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %173 = alloca %"class.cv::Mat", align 8         ; 10 uses
  %174 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %175 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %176 = alloca %"class.cv::Mat", align 8         ; 9 uses
  %177 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %178 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %179 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %180 = alloca %"class.cv::Rect_", align 16      ; 5 uses
  %181 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %182 = alloca %"class.cv::Rect_", align 16      ; 5 uses
  %183 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %184 = alloca %"class.cv::Rect_", align 16      ; 5 uses
  %185 = alloca %"class.cv::Mat", align 8         ; 9 uses
  %186 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %187 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %188 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %189 = alloca %"class.cv::Rect_", align 4       ; 8 uses
  %190 = alloca %"class.cv::Mat", align 8         ; 9 uses
  %191 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %192 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %193 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %194 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %195 = alloca %"class.cv::Rect_", align 4       ; 8 uses
  %196 = alloca %"class.cv::Mat", align 8         ; 8 uses
  %197 = alloca %"class.cv::_InputArray", align 8 ; 8 uses
  %198 = alloca %"class.cv::_InputArray", align 8 ; 8 uses
  %199 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %200 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %201 = alloca %"class.std::allocator", align 1  ; 3 uses
  %202 = alloca %"class.cv::Mat", align 8         ; 9 uses
  %203 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %204 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %205 = alloca %"class.cv::Mat", align 8         ; 9 uses
  %206 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %207 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %208 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %209 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %210 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %211 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %212 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %213 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %214 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %215 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %216 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %217 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %218 = alloca %"class.cv::Mat", align 8         ; 11 uses
  %219 = alloca %"class.cv::Mat", align 8         ; 11 uses
  %220 = alloca %"class.std::vector", align 8     ; 20 uses
  %221 = alloca %"class.std::vector", align 8     ; 21 uses
  %222 = alloca %"class.cv::Mat", align 8         ; 11 uses
  %223 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %224 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %225 = alloca %"class.cv::Mat", align 8         ; 11 uses
  %226 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %227 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %228 = alloca %"class.cv::Mat", align 8         ; 11 uses
  %229 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %230 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %231 = alloca %"class.cv::Mat", align 8         ; 11 uses
  %232 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %233 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %234 = alloca %"class.cv::_InputArray", align 8 ; 8 uses
  %235 = alloca %"class.cv::_InputArray", align 8 ; 8 uses
  %236 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %237 = alloca %"class.cv::Mat", align 8         ; 8 uses
  %238 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %239 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %240 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %241 = alloca %"class.cv::Rect_", align 4       ; 8 uses
  %242 = alloca %"class.cv::Mat", align 8         ; 9 uses
  %243 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %244 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %245 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %246 = alloca %"class.cv::Rect_", align 4       ; 8 uses
  %247 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %248 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %249 = alloca %"class.cv::Mat", align 8         ; 10 uses
  %250 = alloca %"class.cv::_InputArray", align 8 ; 8 uses
  %251 = alloca %"class.cv::_InputArray", align 8 ; 8 uses
  %252 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %253 = alloca %"class.cv::Mat", align 8         ; 9 uses
  %254 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %255 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %256 = alloca %"class.cv::Mat", align 8         ; 9 uses
  %257 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %258 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %259 = alloca %"class.cv::Mat", align 8         ; 10 uses
  %260 = alloca %"class.cv::Mat", align 8         ; 15 uses
  %261 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %262 = alloca %"class.cv::Mat", align 8         ; 8 uses
  %263 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %264 = alloca %"class.cv::Mat", align 8         ; 11 uses
  %265 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %266 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %267 = alloca %"class.cv::Rect_", align 16      ; 5 uses
  %268 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %269 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %270 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %271 = alloca %"class.cv::Rect_", align 4       ; 8 uses
  %272 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %273 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %274 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %275 = alloca %"class.cv::Rect_", align 16      ; 5 uses
  %276 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %277 = alloca %"class.cv::Rect_", align 16      ; 5 uses
  %278 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %279 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %280 = alloca %"class.cv::Rect_", align 4       ; 8 uses
  %281 = alloca %"class.cv::Mat", align 8         ; 8 uses
  %282 = alloca %"class.cv::_InputArray", align 8 ; 8 uses
  %283 = alloca %"class.cv::_InputArray", align 8 ; 8 uses
  %284 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %285 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %286 = alloca %"class.std::allocator", align 1  ; 3 uses
  %287 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %288 = alloca %"class.std::allocator", align 1  ; 3 uses
  %289 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %290 = alloca %"class.std::allocator", align 1  ; 3 uses
  %291 = alloca %"class.std::vector", align 8     ; 15 uses
  %292 = alloca %"class.std::vector", align 8     ; 12 uses
  %293 = alloca %"class.std::vector", align 8     ; 16 uses
  %294 = alloca %"class.std::vector", align 8     ; 12 uses
  %295 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %296 = alloca %"class.std::allocator", align 1  ; 3 uses
  %297 = alloca %"class.std::vector", align 8     ; 42 uses
  %298 = alloca %"class.cv::Mat", align 8         ; 12 uses
  %299 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %300 = alloca %"class.cv::Mat", align 8         ; 8 uses
  %301 = alloca %"class.cv::Rect_", align 16      ; 5 uses
  %302 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %303 = alloca %"class.cv::Mat", align 8         ; 8 uses
  %304 = alloca %"class.cv::_InputArray", align 8 ; 8 uses
  %305 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %306 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %307 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %308 = alloca %"class.cv::Rect_", align 16      ; 5 uses
  %309 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %310 = alloca %"class.std::vector", align 8     ; 22 uses
  %311 = alloca %"class.cv::Mat", align 8         ; 12 uses
  %312 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %313 = alloca %"class.cv::Mat", align 8         ; 8 uses
  %314 = alloca %"class.cv::Rect_", align 16      ; 5 uses
  %315 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %316 = alloca %"class.cv::Mat", align 8         ; 8 uses
  %317 = alloca %"class.cv::_InputArray", align 8 ; 8 uses
  %318 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %319 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %320 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %321 = alloca %"class.cv::Rect_", align 16      ; 5 uses
  %322 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %323 = alloca %"class.cv::Mat", align 8         ; 14 uses
  %324 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %325 = alloca %"class.cv::Mat", align 8         ; 14 uses
  %326 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %i.b = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.c = icmp eq i32 %i.b, 327680
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.e = icmp eq i32 %i.d, 327680
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.g = icmp eq i32 %i.f, 327680
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.i = icmp eq i32 %i.h, 327680
  br i1 %i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %289) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %290) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %289, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %290)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %289, ptr noundef nonnull @__func__._ZN2cv16calibrateHandEyeERKNS_11_InputArrayES2_S2_S2_RKNS_12_OutputArrayES5_NS_24HandEyeCalibrationMethodE, ptr noundef nonnull @.str.1, i32 noundef 729) #20
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %289, align 8, !tbaa !18   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %289, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !19
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.j, %bb.h ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.k, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %290) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %289) #19
  br label %bb.zw

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %291) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %291, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %292) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %292, i8 0, i64 24, i1 false)
  invoke void @_ZNK2cv11_InputArray12getMatVectorERSt6vectorINS_3MatESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %291)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  invoke void @_ZNK2cv11_InputArray12getMatVectorERSt6vectorINS_3MatESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %292)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %293) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %293, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %294) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %294, i8 0, i64 24, i1 false)
  invoke void @_ZNK2cv11_InputArray12getMatVectorERSt6vectorINS_3MatESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %293)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  invoke void @_ZNK2cv11_InputArray12getMatVectorERSt6vectorINS_3MatESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %294)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.q = getelementptr inbounds nuw i8, ptr %291, i64 8 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !22   ; 2 uses
  %i.s = load ptr, ptr %291, align 8, !tbaa !23   ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 5 uses
  %i.w = sdiv exact i64 %i.v, 208                 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %292, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.z = load ptr, ptr %292, align 8, !tbaa !23
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
end_hunk_0
begin_hunk_1_@_ZN2cv16calibrateHandEyeERKNS_11_InputArrayES2_S2_S2_RKNS_12_OutputArrayES5_NS_24HandEyeCalibrationMethodE:bb.a
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.pn76.pn = phi { ptr, i32 } [ %i.gu, %bb.cg ], [ %i.gt, %bb.cf ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %316) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %316) #19
  br label %.body161

bb.ci:                                            ; preds = %bb.ce, %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %320) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %321) #19
  store <4 x i32> <i32 3, i32 0, i32 1, i32 3>, ptr %321, align 16, !tbaa !41
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %320, ptr noundef nonnull align 8 dereferenceable(208) %311, ptr noundef nonnull align 4 dereferenceable(16) %321)
          to label %bb.cj unwind label %bb.cn

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %321) #19
  %i.gv = load ptr, ptr %294, align 8, !tbaa !23
  %i.gw = getelementptr inbounds nuw [208 x i8], ptr %i.gv, i64 %.0323
  call void @llvm.lifetime.start.p0(ptr nonnull %322) #19
  store i64 0, ptr %i.do, align 8
  store i32 33619968, ptr %322, align 8, !tbaa !45
  store ptr %320, ptr %i.dn, align 8, !tbaa !46
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %i.gw, ptr noundef nonnull align 8 dereferenceable(24) %322, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.ck unwind label %bb.co

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %322) #19
  %i.gx = load ptr, ptr %i.dp, align 8, !tbaa !22 ; 3 uses
  %i.gy = load ptr, ptr %i.cn, align 8, !tbaa !25
  %.not.i166 = icmp eq ptr %i.gx, %i.gy
  br i1 %.not.i166, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.gx, ptr noundef nonnull align 8 dereferenceable(208) %311)
          to label %.noexc167 unwind label %bb.cp

.noexc167:                                        ; preds = %bb.cl
  %i.gz = load ptr, ptr %i.dp, align 8, !tbaa !22
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 208
  store ptr %i.ha, ptr %i.dp, align 8, !tbaa !22
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit169

bb.cm:                                            ; preds = %bb.ck
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %310, ptr %i.gx, ptr noundef nonnull align 8 dereferenceable(208) %311)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit169 unwind label %bb.cp

_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit169: ; preds = %.noexc167, %bb.cm
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %320) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %320) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %313) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %313) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %311) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %311) #19
  %i.hb = add nuw i64 %.0323, 1                   ; 2 uses
  %i.hc = load ptr, ptr %i.ae, align 8, !tbaa !22
  %i.hd = load ptr, ptr %293, align 8, !tbaa !23
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = sub i64 %i.he, %i.hf
  %i.hh = sdiv exact i64 %i.hg, 208
  %i.hi = icmp ult i64 %i.hb, %i.hh
  br i1 %i.hi, label %bb.bo, label %._crit_edge325, !llvm.loop !81

bb.cn:                                            ; preds = %bb.ci
  %i.hj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %321) #19
  br label %bb.cr

bb.co:                                            ; preds = %bb.cj
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %322) #19
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cm, %bb.cl
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.pn83 = phi { ptr, i32 } [ %i.hl, %bb.cp ], [ %i.hk, %bb.co ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %320) #19
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cn
  %.pn83.pn = phi { ptr, i32 } [ %.pn83, %bb.cq ], [ %i.hj, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %320) #19
  br label %.body161

.body161:                                         ; preds = %bb.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i152, %bb.cr, %bb.ch, %bb.cb
  %.pn83.pn.pn = phi { ptr, i32 } [ %.pn83.pn, %bb.cr ], [ %i.gp, %bb.cb ], [ %.pn76.pn, %bb.ch ], [ %i.go, %bb.ca ], [ %i.fz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i152 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %313) #19
  br label %bb.cs

bb.cs:                                            ; preds = %.body161, %bb.bz
  %.pn83.pn.pn.pn = phi { ptr, i32 } [ %.pn83.pn.pn, %.body161 ], [ %i.gn, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %313) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %311) #19
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.by
  %.pn83.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn83.pn.pn.pn, %bb.cs ], [ %.pn71, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %311) #19
  br label %bb.zs

bb.cu:                                            ; preds = %._crit_edge325
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %323) #19
  %i.hm = load ptr, ptr %324, align 8, !tbaa !38, !noalias !193 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !40
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hp = load ptr, ptr %i.ho, align 8
  invoke void %i.hp(ptr noundef nonnull align 8 dereferenceable(8) %i.hm, ptr noundef nonnull align 8 dereferenceable(688) %324, ptr noundef nonnull align 8 dereferenceable(208) %323, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit172 unwind label %.body170

.body170:                                         ; preds = %bb.cu
  %i.hq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %323) #19
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %324) #19
  br label %bb.cx

_ZNK2cv7MatExprcvNS_3MatEEv.exit172:              ; preds = %bb.cu
  %i.hr = getelementptr inbounds nuw i8, ptr %324, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.hr) #19
  %i.hs = getelementptr inbounds nuw i8, ptr %324, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.hs) #19
  %i.ht = getelementptr inbounds nuw i8, ptr %324, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ht) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %324) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %325) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %326) #19
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %326, i32 noundef 3, i32 noundef 1, i32 noundef 6)
          to label %bb.cv unwind label %bb.cy

bb.cv:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit172
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %325) #19
  %i.hu = load ptr, ptr %326, align 8, !tbaa !38, !noalias !194 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !40
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8
  invoke void %i.hx(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, ptr noundef nonnull align 8 dereferenceable(688) %326, ptr noundef nonnull align 8 dereferenceable(208) %325, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit175 unwind label %.body173

.body173:                                         ; preds = %bb.cv
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %325) #19
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %326) #19
  br label %bb.cz

_ZNK2cv7MatExprcvNS_3MatEEv.exit175:              ; preds = %bb.cv
  %i.hz = getelementptr inbounds nuw i8, ptr %326, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.hz) #19
  %i.ia = getelementptr inbounds nuw i8, ptr %326, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ia) #19
  %i.ib = getelementptr inbounds nuw i8, ptr %326, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ib) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %326) #19
  switch i32 %6, label %bb.zh [
    i32 0, label %bb.da
    i32 1, label %bb.lh
    i32 2, label %bb.qh
    i32 3, label %bb.uv
    i32 4, label %bb.zg
  ]

bb.cw:                                            ; preds = %._crit_edge325
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.cx:                                            ; preds = %.body170, %bb.cw
  %.pn64 = phi { ptr, i32 } [ %i.hq, %.body170 ], [ %i.ic, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %324) #19
  br label %bb.zr

bb.cy:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit172
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.cz:                                            ; preds = %.body173, %bb.cy
  %.pn66 = phi { ptr, i32 } [ %i.hy, %.body173 ], [ %i.id, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %326) #19
  br label %bb.zq

bb.da:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit175
  %i.ie = getelementptr inbounds nuw i8, ptr %297, i64 8 ; 3 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !22
  %i.ig = load ptr, ptr %297, align 8, !tbaa !23
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = ptrtoint ptr %i.ig to i64
  %i.ij = sub i64 %i.ih, %i.ii
  %i.ik = sdiv exact i64 %i.ij, 208               ; 2 uses
  %i.il = add nsw i64 %i.ik, -1
  %i.im = mul i64 %i.il, %i.ik
  %i.in = uitofp i64 %i.im to double
  %i.io = fmul nnan double %i.in, 5.000000e-01
  %i.ip = fptosi double %i.io to i32              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %218) #19
  %i.iq = mul nsw i32 %i.ip, 3                    ; 2 uses
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %218, i32 noundef %i.iq, i32 noundef 3, i32 noundef 6)
          to label %.noexc182 unwind label %bb.lg

.noexc182:                                        ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %219) #19
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %219, i32 noundef %i.iq, i32 noundef 1, i32 noundef 6)
          to label %bb.db unwind label %bb.de

bb.db:                                            ; preds = %.noexc182
  call void @llvm.lifetime.start.p0(ptr nonnull %220) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %220, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %221) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %221, i8 0, i64 24, i1 false)
  %327 = sext i32 %i.ip to i64                    ; 5 uses
  %328 = icmp slt i32 %i.ip, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %bb.db
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #20
          to label %.noexc.i unwind label %bb.df

.noexc.i:                                         ; preds = %329
  unreachable

330:                                              ; preds = %bb.db
  %331 = getelementptr inbounds nuw i8, ptr %220, i64 16 ; 4 uses
  %.not420.i = icmp eq i32 %i.ip, 0
  br i1 %.not420.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE7reserveEm.exit.i, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %330
  %i.ir = getelementptr inbounds nuw i8, ptr %220, i64 8 ; 2 uses
  %i.is = mul nuw nsw i64 %327, 208
  %i.it = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.is) #22
          to label %.noexc208.i unwind label %bb.df ; 4 uses

.noexc208.i:                                      ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE11_M_allocateEm.exit.i.i
  %i.iu = load ptr, ptr %220, align 8, !tbaa !23  ; 3 uses
  %i.iv = load ptr, ptr %i.ir, align 8, !tbaa !22 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.iu, %i.iv
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc208.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ix, %.lr.ph.i.i.i.i.i ], [ %i.it, %.noexc208.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.iw, %.lr.ph.i.i.i.i.i ], [ %i.iu, %.noexc208.i ] ; 3 uses
  call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(208) %.0911.i.i.i.i.i) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.0911.i.i.i.i.i) #19
  %i.iw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 208 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 208
  %.not.i.i.i.i.i = icmp eq ptr %i.iw, %i.iv
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pr.i.i = load ptr, ptr %220, align 8, !tbaa !23
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i

_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split.i.i, %.noexc208.i
  %i.iy = phi ptr [ %.pr.i.i, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split.i.i ], [ %i.iu, %.noexc208.i ] ; 3 uses
  %.not.i8.i.i = icmp eq ptr %i.iy, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit.i.i, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i
  %i.iz = load ptr, ptr %331, align 8, !tbaa !25
  %i.ja = ptrtoint ptr %i.iz to i64
  %i.jb = ptrtoint ptr %i.iy to i64
  %i.jc = sub i64 %i.ja, %i.jb
  call void @_ZdlPvm(ptr noundef nonnull %i.iy, i64 noundef %i.jc) #21
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit.i.i

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit.i.i: ; preds = %bb.dc, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i
  store ptr %i.it, ptr %220, align 8, !tbaa !23
  store ptr %i.it, ptr %i.ir, align 8, !tbaa !22
  %i.jd = getelementptr inbounds nuw [208 x i8], ptr %i.it, i64 %327
  store ptr %i.jd, ptr %331, align 8, !tbaa !25
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %221, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !25
  %.pre367.i = load ptr, ptr %221, align 8, !tbaa !23
  %i.je = ptrtoint ptr %.pre.i to i64
  %i.jf = ptrtoint ptr %.pre367.i to i64
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE7reserveEm.exit.i

_ZNSt6vectorIN2cv3MatESaIS1_EE7reserveEm.exit.i:  ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit.i.i, %330
  %i.jg = phi i64 [ 0, %330 ], [ %i.jf, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit.i.i ] ; 2 uses
  %i.jh = phi i64 [ 0, %330 ], [ %i.je, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit.i.i ]
  %i.ji = getelementptr inbounds nuw i8, ptr %221, i64 16 ; 4 uses
  %i.jj = sub i64 %i.jh, %i.jg
  %i.jk = sdiv exact i64 %i.jj, 208
  %i.jl = icmp ult i64 %i.jk, %327
  br i1 %i.jl, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE11_M_allocateEm.exit.i209.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE7reserveEm.exit222.i

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE11_M_allocateEm.exit.i209.i: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE7reserveEm.exit.i
  %i.jm = getelementptr inbounds nuw i8, ptr %221, i64 8 ; 3 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !22
  %i.jo = ptrtoint ptr %i.jn to i64
  %i.jp = sub i64 %i.jo, %i.jg
  %i.jq = mul nuw nsw i64 %327, 208
  %i.jr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jq) #22
          to label %.noexc221.i unwind label %bb.df ; 4 uses

.noexc221.i:                                      ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE11_M_allocateEm.exit.i209.i
  %i.js = load ptr, ptr %221, align 8, !tbaa !23  ; 3 uses
  %i.jt = load ptr, ptr %i.jm, align 8, !tbaa !22 ; 2 uses
  %.not10.i.i.i.i210.i = icmp eq ptr %i.js, %i.jt
  br i1 %.not10.i.i.i.i210.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i217.i, label %.lr.ph.i.i.i.i211.i

.lr.ph.i.i.i.i211.i:                              ; preds = %.noexc221.i, %.lr.ph.i.i.i.i211.i
  %.012.i.i.i.i212.i = phi ptr [ %i.jv, %.lr.ph.i.i.i.i211.i ], [ %i.jr, %.noexc221.i ] ; 2 uses
  %.0911.i.i.i.i213.i = phi ptr [ %i.ju, %.lr.ph.i.i.i.i211.i ], [ %i.js, %.noexc221.i ] ; 3 uses
  call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %.012.i.i.i.i212.i, ptr noundef nonnull align 8 dereferenceable(208) %.0911.i.i.i.i213.i) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.0911.i.i.i.i213.i) #19
  %i.ju = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i213.i, i64 208 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i212.i, i64 208
  %.not.i.i.i.i214.i = icmp eq ptr %i.ju, %i.jt
  br i1 %.not.i.i.i.i214.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split.i215.i, label %.lr.ph.i.i.i.i211.i, !llvm.loop !0

_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split.i215.i: ; preds = %.lr.ph.i.i.i.i211.i
  %.pr.i216.i = load ptr, ptr %221, align 8, !tbaa !23
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i217.i

_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i217.i: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split.i215.i, %.noexc221.i
  %i.jw = phi ptr [ %.pr.i216.i, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split.i215.i ], [ %i.js, %.noexc221.i ] ; 3 uses
  %.not.i8.i218.i = icmp eq ptr %i.jw, null
  br i1 %.not.i8.i218.i, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit.i219.i, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i217.i
  %i.jx = load ptr, ptr %i.ji, align 8, !tbaa !25
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.jw to i64
  %i.ka = sub i64 %i.jy, %i.jz
  call void @_ZdlPvm(ptr noundef nonnull %i.jw, i64 noundef %i.ka) #21
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit.i219.i

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit.i219.i: ; preds = %bb.dd, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i217.i
  store ptr %i.jr, ptr %221, align 8, !tbaa !23
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.jp
  store ptr %i.kb, ptr %i.jm, align 8, !tbaa !22
  %i.kc = getelementptr inbounds nuw [208 x i8], ptr %i.jr, i64 %327
  store ptr %i.kc, ptr %i.ji, align 8, !tbaa !25
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE7reserveEm.exit222.i

_ZNSt6vectorIN2cv3MatESaIS1_EE7reserveEm.exit222.i: ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit.i219.i, %_ZNSt6vectorIN2cv3MatESaIS1_EE7reserveEm.exit.i
  %i.kd = load ptr, ptr %i.ie, align 8, !tbaa !22 ; 2 uses
  %i.ke = load ptr, ptr %297, align 8, !tbaa !23  ; 2 uses
  %.not365.i.a = icmp eq ptr %i.kd, %i.ke
  br i1 %.not365.i.a, label %._crit_edge.thread.i, label %.lr.ph359.i

.lr.ph359.i:                                      ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE7reserveEm.exit222.i
  %i.kf = getelementptr inbounds nuw i8, ptr %223, i64 432
  %i.kg = getelementptr inbounds nuw i8, ptr %223, i64 224
  %i.kh = getelementptr inbounds nuw i8, ptr %223, i64 16
  %i.ki = getelementptr inbounds nuw i8, ptr %226, i64 432
  %i.kj = getelementptr inbounds nuw i8, ptr %226, i64 224
  %i.kk = getelementptr inbounds nuw i8, ptr %226, i64 16
  %i.kl = getelementptr inbounds nuw i8, ptr %229, i64 432
  %i.km = getelementptr inbounds nuw i8, ptr %229, i64 224
  %i.kn = getelementptr inbounds nuw i8, ptr %229, i64 16
  %i.ko = getelementptr inbounds nuw i8, ptr %232, i64 432
  %i.kp = getelementptr inbounds nuw i8, ptr %232, i64 224
  %i.kq = getelementptr inbounds nuw i8, ptr %232, i64 16
  %i.kr = getelementptr inbounds nuw i8, ptr %234, i64 16
  %i.ks = getelementptr inbounds nuw i8, ptr %234, i64 20
  %i.kt = getelementptr inbounds nuw i8, ptr %234, i64 8
  %i.ku = getelementptr inbounds nuw i8, ptr %235, i64 16
  %i.kv = getelementptr inbounds nuw i8, ptr %235, i64 20
  %i.kw = getelementptr inbounds nuw i8, ptr %235, i64 8
  %i.kx = getelementptr inbounds nuw i8, ptr %220, i64 8 ; 5 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %221, i64 8 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %241, i64 4
  %i.la = getelementptr inbounds nuw i8, ptr %241, i64 8
  %i.lb = getelementptr inbounds nuw i8, ptr %241, i64 12
  %i.lc = getelementptr inbounds nuw i8, ptr %239, i64 8
  %i.ld = getelementptr inbounds nuw i8, ptr %239, i64 16
  %i.le = getelementptr inbounds nuw i8, ptr %238, i64 432
  %i.lf = getelementptr inbounds nuw i8, ptr %238, i64 224
  %i.lg = getelementptr inbounds nuw i8, ptr %238, i64 16
  %i.lh = getelementptr inbounds nuw i8, ptr %243, i64 432
  %i.li = getelementptr inbounds nuw i8, ptr %243, i64 224
  %i.lj = getelementptr inbounds nuw i8, ptr %243, i64 16
  %i.lk = getelementptr inbounds nuw i8, ptr %246, i64 4
  %i.ll = getelementptr inbounds nuw i8, ptr %246, i64 8
  %i.lm = getelementptr inbounds nuw i8, ptr %246, i64 12
  %i.ln = getelementptr inbounds nuw i8, ptr %244, i64 8
  %i.lo = getelementptr inbounds nuw i8, ptr %244, i64 16
  br label %bb.dg

.loopexit.i:                                      ; preds = %bb.ez
  %i.lp = icmp ult i64 %i.lv, %i.ou
  br i1 %i.lp, label %bb.dg, label %._crit_edge.i, !llvm.loop !86

._crit_edge.i:                                    ; preds = %bb.dg, %.loopexit.i
  %.055.lcssa.i = phi i32 [ %.2.i, %.loopexit.i ], [ %.055357.i, %bb.dg ] ; 2 uses
  %i.lq = icmp slt i32 %.055.lcssa.i, 2
  br i1 %i.lq, label %._crit_edge.thread.i, label %bb.gi

bb.de:                                            ; preds = %.noexc182
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %bb.lf

bb.df:                                            ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE11_M_allocateEm.exit.i209.i, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE11_M_allocateEm.exit.i.i, %329
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %bb.lc

bb.dg:                                            ; preds = %.loopexit.i, %.lr.ph359.i
  %i.lt = phi ptr [ %i.ke, %.lr.ph359.i ], [ %i.oq, %.loopexit.i ] ; 2 uses
  %i.lu = phi ptr [ %i.kd, %.lr.ph359.i ], [ %i.op, %.loopexit.i ]
  %.054358.i = phi i64 [ 0, %.lr.ph359.i ], [ %i.lv, %.loopexit.i ] ; 3 uses
  %.055357.i = phi i32 [ 0, %.lr.ph359.i ], [ %.2.i, %.loopexit.i ] ; 2 uses
  %i.lv = add nuw i64 %.054358.i, 1               ; 4 uses
  %i.lw = ptrtoint ptr %i.lu to i64
  %i.lx = ptrtoint ptr %i.lt to i64
  %i.ly = sub i64 %i.lw, %i.lx
  %i.lz = sdiv exact i64 %i.ly, 208
  %i.ma = icmp ult i64 %i.lv, %i.lz
  br i1 %i.ma, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.dg, %bb.ez
  %i.mb = phi ptr [ %i.oq, %bb.ez ], [ %i.lt, %bb.dg ]
  %.053356.i = phi i64 [ %i.oo, %bb.ez ], [ %i.lv, %bb.dg ] ; 3 uses
  %.1355.i = phi i32 [ %.2.i, %bb.ez ], [ %.055357.i, %bb.dg ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %222) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %223) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %224) #19
  %i.mc = getelementptr inbounds nuw [208 x i8], ptr %i.mb, i64 %.053356.i
  invoke fastcc void @_ZN2cvL18homogeneousInverseERKNS_3MatE(ptr dead_on_unwind noalias writable align 8 %224, ptr noundef nonnull align 8 dereferenceable(208) %i.mc)
          to label %bb.dh unwind label %bb.du

bb.dh:                                            ; preds = %.lr.ph.i
  %i.md = load ptr, ptr %297, align 8, !tbaa !23
  %i.me = getelementptr inbounds nuw [208 x i8], ptr %i.md, i64 %.054358.i
  invoke void @_ZN2cvmlERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %223, ptr noundef nonnull align 8 dereferenceable(208) %224, ptr noundef nonnull align 8 dereferenceable(208) %i.me)
          to label %bb.di unwind label %bb.dv

bb.di:                                            ; preds = %bb.dh
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %222) #19
  %i.mf = load ptr, ptr %223, align 8, !tbaa !38, !noalias !195 ; 2 uses
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !40
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 24
  %i.mi = load ptr, ptr %i.mh, align 8
  invoke void %i.mi(ptr noundef nonnull align 8 dereferenceable(8) %i.mf, ptr noundef nonnull align 8 dereferenceable(688) %223, ptr noundef nonnull align 8 dereferenceable(208) %222, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i unwind label %.body.i

.body.i:                                          ; preds = %bb.di
  %i.mj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %222) #19
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %223) #19
  br label %bb.dw

_ZNK2cv7MatExprcvNS_3MatEEv.exit.i:               ; preds = %bb.di
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.kf) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.kg) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.kh) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %224) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %224) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %223) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %225) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %226) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %227) #19
  invoke fastcc void @_ZN2cvL15rot2quatMinimalERKNS_3MatE(ptr dead_on_unwind noalias writable align 8 %227, ptr noundef nonnull align 8 dereferenceable(208) %222)
          to label %bb.dj unwind label %bb.dy

bb.dj:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i
  invoke void @_ZN2cvmlEdRKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %226, double noundef 2.000000e+00, ptr noundef nonnull align 8 dereferenceable(208) %227)
          to label %bb.dk unwind label %bb.dz

bb.dk:                                            ; preds = %bb.dj
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %225) #19
  %i.mk = load ptr, ptr %226, align 8, !tbaa !38, !noalias !196 ; 2 uses
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !40
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 24
  %i.mn = load ptr, ptr %i.mm, align 8
  invoke void %i.mn(ptr noundef nonnull align 8 dereferenceable(8) %i.mk, ptr noundef nonnull align 8 dereferenceable(688) %226, ptr noundef nonnull align 8 dereferenceable(208) %225, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit225.i.a unwind label %.body223.i.a

.body223.i.a:                                     ; preds = %bb.dk
  %i.mo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %225) #19
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %226) #19
  br label %bb.ea

_ZNK2cv7MatExprcvNS_3MatEEv.exit225.i.a:          ; preds = %bb.dk
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ki) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.kj) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.kk) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %227) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %227) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %226) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %228) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %229) #19
  %i.mp = load ptr, ptr %310, align 8, !tbaa !23  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %230) #19
  %i.mq = getelementptr inbounds nuw [208 x i8], ptr %i.mp, i64 %.054358.i
  invoke fastcc void @_ZN2cvL18homogeneousInverseERKNS_3MatE(ptr dead_on_unwind noalias writable align 8 %230, ptr noundef nonnull align 8 dereferenceable(208) %i.mq)
          to label %bb.dl unwind label %bb.ec

bb.dl:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit225.i.a
  %i.mr = getelementptr inbounds nuw [208 x i8], ptr %i.mp, i64 %.053356.i
  invoke void @_ZN2cvmlERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %229, ptr noundef nonnull align 8 dereferenceable(208) %i.mr, ptr noundef nonnull align 8 dereferenceable(208) %230)
          to label %bb.dm unwind label %bb.ed

bb.dm:                                            ; preds = %bb.dl
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %228) #19
  %i.ms = load ptr, ptr %229, align 8, !tbaa !38, !noalias !197 ; 2 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !40
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 24
  %i.mv = load ptr, ptr %i.mu, align 8
  invoke void %i.mv(ptr noundef nonnull align 8 dereferenceable(8) %i.ms, ptr noundef nonnull align 8 dereferenceable(688) %229, ptr noundef nonnull align 8 dereferenceable(208) %228, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit228.i unwind label %.body226.i

.body226.i:                                       ; preds = %bb.dm
  %i.mw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %228) #19
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %229) #19
  br label %bb.ee

_ZNK2cv7MatExprcvNS_3MatEEv.exit228.i:            ; preds = %bb.dm
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.kl) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.km) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.kn) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %230) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %230) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %229) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %231) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %232) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %233) #19
  invoke fastcc void @_ZN2cvL15rot2quatMinimalERKNS_3MatE(ptr dead_on_unwind noalias writable align 8 %233, ptr noundef nonnull align 8 dereferenceable(208) %228)
          to label %bb.dn unwind label %bb.eg

bb.dn:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit228.i
  invoke void @_ZN2cvmlEdRKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %232, double noundef 2.000000e+00, ptr noundef nonnull align 8 dereferenceable(208) %233)
          to label %bb.do unwind label %bb.eh

bb.do:                                            ; preds = %bb.dn
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %231) #19
  %i.mx = load ptr, ptr %232, align 8, !tbaa !38, !noalias !198 ; 2 uses
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !40
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 24
  %i.na = load ptr, ptr %i.mz, align 8
  invoke void %i.na(ptr noundef nonnull align 8 dereferenceable(8) %i.mx, ptr noundef nonnull align 8 dereferenceable(688) %232, ptr noundef nonnull align 8 dereferenceable(208) %231, i32 noundef -1)
          to label %bb.dp unwind label %.body229.i

.body229.i:                                       ; preds = %bb.do
  %i.nb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %231) #19
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %232) #19
  br label %bb.ei

bb.dp:                                            ; preds = %bb.do
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ko) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.kp) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.kq) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %233) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %233) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %232) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %234) #19
  store i32 0, ptr %i.kr, align 8, !tbaa !47
  store i32 0, ptr %i.ks, align 4, !tbaa !48
  store i32 16842752, ptr %234, align 8, !tbaa !45
  store ptr %225, ptr %i.kt, align 8, !tbaa !46
  %i.nc = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.dq unwind label %bb.ek

bb.dq:                                            ; preds = %bb.dp
  %i.nd = invoke noundef double @_ZN2cv4normERKNS_11_InputArrayEiS2_(ptr noundef nonnull align 8 dereferenceable(24) %234, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(24) %i.nc)
          to label %bb.dr unwind label %bb.ek     ; 2 uses

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %234) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %235) #19
  store i32 0, ptr %i.ku, align 8, !tbaa !47
  store i32 0, ptr %i.kv, align 4, !tbaa !48
  store i32 16842752, ptr %235, align 8, !tbaa !45
  store ptr %231, ptr %i.kw, align 8, !tbaa !46
  %i.ne = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.ds unwind label %bb.el

bb.ds:                                            ; preds = %bb.dr
  %i.nf = invoke noundef double @_ZN2cv4normERKNS_11_InputArrayEiS2_(ptr noundef nonnull align 8 dereferenceable(24) %235, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(24) %i.ne)
          to label %bb.dt unwind label %bb.el     ; 2 uses

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %235) #19
  %i.ng = fcmp olt double %i.nd, 3.000000e-01
  %i.nh = fcmp olt double %i.nf, 3.000000e-01
  %or.cond.i = or i1 %i.ng, %i.nh
  %i.ni = fcmp ogt double %i.nd, 1.700000e+00
  %or.cond3.i = or i1 %i.ni, %or.cond.i
  %i.nj = fcmp ogt double %i.nf, 1.700000e+00
  %or.cond5.i = or i1 %i.nj, %or.cond3.i
  br i1 %or.cond5.i, label %bb.ez, label %bb.em

bb.du:                                            ; preds = %.lr.ph.i
  %i.nk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.dv:                                            ; preds = %bb.dh
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %.body.i
  %.pn171.i = phi { ptr, i32 } [ %i.mj, %.body.i ], [ %i.nl, %bb.dv ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %224) #19
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.du
  %.pn171.pn.i = phi { ptr, i32 } [ %.pn171.i, %bb.dw ], [ %i.nk, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %224) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %223) #19
  br label %bb.fr

bb.dy:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i
  %i.nm = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.dz:                                            ; preds = %bb.dj
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %.body223.i.a
  %.pn174.i = phi { ptr, i32 } [ %i.mo, %.body223.i.a ], [ %i.nn, %bb.dz ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %227) #19
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dy
  %.pn174.pn.i = phi { ptr, i32 } [ %.pn174.i, %bb.ea ], [ %i.nm, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %227) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %226) #19
  br label %bb.fq

bb.ec:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit225.i.a
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.ed:                                            ; preds = %bb.dl
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %.body226.i
  %.pn177.i = phi { ptr, i32 } [ %i.mw, %.body226.i ], [ %i.np, %bb.ed ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %230) #19
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ec
  %.pn177.pn.i = phi { ptr, i32 } [ %.pn177.i, %bb.ee ], [ %i.no, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %230) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %229) #19
  br label %bb.fp

bb.eg:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit228.i
  %i.nq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

bb.eh:                                            ; preds = %bb.dn
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %.body229.i
  %.pn180.i = phi { ptr, i32 } [ %i.nb, %.body229.i ], [ %i.nr, %bb.eh ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %233) #19
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eg
  %.pn180.pn.i = phi { ptr, i32 } [ %.pn180.i, %bb.ei ], [ %i.nq, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %233) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %232) #19
  br label %bb.fo

bb.ek:                                            ; preds = %bb.dq, %bb.dp
  %i.ns = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %234) #19
  br label %bb.fn

bb.el:                                            ; preds = %bb.ds, %bb.dr
  %i.nt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %235) #19
  br label %bb.fn

bb.em:                                            ; preds = %bb.dt
  %i.nu = load ptr, ptr %i.kx, align 8, !tbaa !22 ; 3 uses
  %i.nv = load ptr, ptr %331, align 8, !tbaa !25
  %.not.i.i = icmp eq ptr %i.nu, %i.nv
  br i1 %.not.i.i, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.nu, ptr noundef nonnull align 8 dereferenceable(208) %222)
          to label %.noexc232.i unwind label %bb.fa

.noexc232.i:                                      ; preds = %bb.en
  %i.nw = load ptr, ptr %i.kx, align 8, !tbaa !22
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 208
  store ptr %i.nx, ptr %i.kx, align 8, !tbaa !22
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit.i

bb.eo:                                            ; preds = %bb.em
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %220, ptr %i.nu, ptr noundef nonnull align 8 dereferenceable(208) %222)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit.i unwind label %bb.fa

_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit.i: ; preds = %bb.eo, %.noexc232.i
  %i.ny = load ptr, ptr %i.ky, align 8, !tbaa !22 ; 3 uses
  %i.nz = load ptr, ptr %i.ji, align 8, !tbaa !25
  %.not.i234.i = icmp eq ptr %i.ny, %i.nz
  br i1 %.not.i234.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit.i
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ny, ptr noundef nonnull align 8 dereferenceable(208) %228)
          to label %.noexc235.i unwind label %bb.fa

.noexc235.i:                                      ; preds = %bb.ep
  %i.oa = load ptr, ptr %i.ky, align 8, !tbaa !22
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 208
  store ptr %i.ob, ptr %i.ky, align 8, !tbaa !22
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit237.i

bb.eq:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit.i
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %221, ptr %i.ny, ptr noundef nonnull align 8 dereferenceable(208) %228)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit237.i unwind label %bb.fa

_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit237.i: ; preds = %bb.eq, %.noexc235.i
  call void @llvm.lifetime.start.p0(ptr nonnull %236) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %237) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %238) #19
  invoke void @_ZN2cvplERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %238, ptr noundef nonnull align 8 dereferenceable(208) %225, ptr noundef nonnull align 8 dereferenceable(208) %231)
          to label %bb.er unwind label %bb.fb

bb.er:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit237.i
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %237) #19
  %i.oc = load ptr, ptr %238, align 8, !tbaa !38, !noalias !199 ; 2 uses
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !40
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 24
  %i.of = load ptr, ptr %i.oe, align 8
  invoke void %i.of(ptr noundef nonnull align 8 dereferenceable(8) %i.oc, ptr noundef nonnull align 8 dereferenceable(688) %238, ptr noundef nonnull align 8 dereferenceable(208) %237, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit240.i unwind label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %.body238.i

_ZNK2cv7MatExprcvNS_3MatEEv.exit240.i:            ; preds = %bb.er
  invoke fastcc void @_ZN2cvL4skewERKNS_3MatE(ptr dead_on_unwind noalias writable align 8 %236, ptr noundef nonnull align 8 dereferenceable(208) %237)
          to label %bb.et unwind label %bb.fc

bb.et:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit240.i
  call void @llvm.lifetime.start.p0(ptr nonnull %239) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %240) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %241) #19
  %i.oh = mul nsw i32 %.1355.i, 3                 ; 2 uses
  store i32 0, ptr %241, align 4, !tbaa !50
  store i32 %i.oh, ptr %i.kz, align 4, !tbaa !51
  store i32 3, ptr %i.la, align 4, !tbaa !52
  store i32 3, ptr %i.lb, align 4, !tbaa !53
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %240, ptr noundef nonnull align 8 dereferenceable(208) %218, ptr noundef nonnull align 4 dereferenceable(16) %241)
          to label %bb.eu unwind label %bb.fd

bb.eu:                                            ; preds = %bb.et
  store i64 0, ptr %i.ld, align 8
  store i32 -1040121856, ptr %239, align 8, !tbaa !45
  store ptr %240, ptr %i.lc, align 8, !tbaa !46
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %236, ptr noundef nonnull align 8 dereferenceable(24) %239)
          to label %bb.ev unwind label %bb.fe

bb.ev:                                            ; preds = %bb.eu
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %240) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %241) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %240) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %239) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %236) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %237) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.le) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.lf) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.lg) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %238) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %237) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %236) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %242) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %243) #19
  invoke void @_ZN2cvmiERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %243, ptr noundef nonnull align 8 dereferenceable(208) %231, ptr noundef nonnull align 8 dereferenceable(208) %225)
          to label %bb.ew unwind label %bb.fh

bb.ew:                                            ; preds = %bb.ev
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %242) #19
  %i.oi = load ptr, ptr %243, align 8, !tbaa !38, !noalias !200 ; 2 uses
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !40
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 24
  %i.ol = load ptr, ptr %i.ok, align 8
  invoke void %i.ol(ptr noundef nonnull align 8 dereferenceable(8) %i.oi, ptr noundef nonnull align 8 dereferenceable(688) %243, ptr noundef nonnull align 8 dereferenceable(208) %242, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit244.i unwind label %.body242.i

.body242.i:                                       ; preds = %bb.ew
  %i.om = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %242) #19
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %243) #19
  br label %bb.fi

_ZNK2cv7MatExprcvNS_3MatEEv.exit244.i:            ; preds = %bb.ew
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.lh) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.li) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.lj) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %243) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %244) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %245) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %246) #19
  store i32 0, ptr %246, align 4, !tbaa !50
  store i32 %i.oh, ptr %i.lk, align 4, !tbaa !51
  store i32 1, ptr %i.ll, align 4, !tbaa !52
  store i32 3, ptr %i.lm, align 4, !tbaa !53
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %245, ptr noundef nonnull align 8 dereferenceable(208) %219, ptr noundef nonnull align 4 dereferenceable(16) %246)
          to label %bb.ex unwind label %bb.fj

bb.ex:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit244.i
  store i64 0, ptr %i.lo, align 8
  store i32 -1040121856, ptr %244, align 8, !tbaa !45
  store ptr %245, ptr %i.ln, align 8, !tbaa !46
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %242, ptr noundef nonnull align 8 dereferenceable(24) %244)
          to label %bb.ey unwind label %bb.fk

bb.ey:                                            ; preds = %bb.ex
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %245) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %246) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %245) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %244) #19
  %i.on = add nsw i32 %.1355.i, 1
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %242) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %242) #19
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.dt
  %.2.i = phi i32 [ %i.on, %bb.ey ], [ %.1355.i, %bb.dt ] ; 3 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %231) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %231) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %228) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %228) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %225) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %225) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %222) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %222) #19
  %i.oo = add nuw i64 %.053356.i, 1               ; 2 uses
  %i.op = load ptr, ptr %i.ie, align 8, !tbaa !22 ; 2 uses
  %i.oq = load ptr, ptr %297, align 8, !tbaa !23  ; 3 uses
  %i.or = ptrtoint ptr %i.op to i64
  %i.os = ptrtoint ptr %i.oq to i64
  %i.ot = sub i64 %i.or, %i.os
  %i.ou = sdiv exact i64 %i.ot, 208               ; 2 uses
  %i.ov = icmp ult i64 %i.oo, %i.ou
  br i1 %i.ov, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !99

bb.fa:                                            ; preds = %bb.eq, %bb.ep, %bb.eo, %bb.en
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.fb:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit237.i
  %i.ox = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.fc:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit240.i
  %i.oy = landingpad { ptr, i32 }
          cleanup
  br label %.body238.i

bb.fd:                                            ; preds = %bb.et
  %i.oz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.fe:                                            ; preds = %bb.eu
  %i.pa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %240) #19
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %.pn187.pn.i = phi { ptr, i32 } [ %i.pa, %bb.fe ], [ %i.oz, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %241) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %240) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %239) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %236) #19
  br label %.body238.i
end_hunk_1
begin_hunk_2_@_ZN2cv16calibrateHandEyeERKNS_11_InputArrayES2_S2_S2_RKNS_12_OutputArrayES5_NS_24HandEyeCalibrationMethodE:bb.a

bb.jy:                                            ; preds = %bb.ji
  %i.zc = landingpad { ptr, i32 }
          cleanup
  br label %bb.kg

bb.jz:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit273.i.a
  %i.zd = landingpad { ptr, i32 }
          cleanup
  br label %bb.kf

bb.ka:                                            ; preds = %bb.jj
  %i.ze = landingpad { ptr, i32 }
          cleanup
  br label %bb.ke

bb.kb:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit275.i
  %i.zf = landingpad { ptr, i32 }
          cleanup
  br label %bb.kd

bb.kc:                                            ; preds = %bb.jk
  %i.zg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %272) #19
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kc, %bb.kb
  %.pn149.i = phi { ptr, i32 } [ %i.zg, %bb.kc ], [ %i.zf, %bb.kb ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %276) #19
  br label %bb.ke

bb.ke:                                            ; preds = %bb.kd, %bb.ka
  %.pn149.pn.i = phi { ptr, i32 } [ %.pn149.i, %bb.kd ], [ %i.ze, %bb.ka ]
  call void @llvm.lifetime.end.p0(ptr nonnull %277) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %276) #19
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %273) #19
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.jz
  %.pn149.pn.pn.i = phi { ptr, i32 } [ %.pn149.pn.i, %bb.ke ], [ %i.zd, %bb.jz ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %274) #19
  br label %bb.kg

bb.kg:                                            ; preds = %bb.kf, %bb.jy
  %.pn149.pn.pn.pn.i = phi { ptr, i32 } [ %.pn149.pn.pn.i, %bb.kf ], [ %i.zc, %bb.jy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %275) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %274) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %273) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %272) #19
  br label %bb.kk

bb.kh:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit.i
  %i.zh = landingpad { ptr, i32 }
          cleanup
  br label %bb.kj

bb.ki:                                            ; preds = %bb.jl
  %i.zi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %279) #19
  br label %bb.kj

bb.kj:                                            ; preds = %bb.ki, %bb.kh
  %.pn154.pn.i = phi { ptr, i32 } [ %i.zi, %bb.ki ], [ %i.zh, %bb.kh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %280) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %279) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %278) #19
  br label %bb.kk

bb.kk:                                            ; preds = %bb.kj, %bb.kg, %bb.jx
  %.pn154.pn.pn.i = phi { ptr, i32 } [ %.pn154.pn.i, %bb.kj ], [ %.pn149.pn.pn.pn.i, %bb.kg ], [ %.pn146.pn.i, %bb.jx ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %264) #19
  br label %bb.kl

bb.kl:                                            ; preds = %bb.kk, %bb.ju
  %.pn154.pn.pn.pn.i = phi { ptr, i32 } [ %.pn154.pn.pn.i, %bb.kk ], [ %.pn142.pn.pn.i, %bb.ju ]
  call void @llvm.lifetime.end.p0(ptr nonnull %264) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %263) #19
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %bb.jo
  %.pn154.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn154.pn.pn.pn.i, %bb.kl ], [ %i.yw, %bb.jo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %263) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %262) #19
  br label %bb.kn

bb.kn:                                            ; preds = %bb.km, %bb.jn
  %.pn154.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn154.pn.pn.pn.pn.i, %bb.km ], [ %i.yv, %bb.jn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %262) #19
  br label %bb.kx

._crit_edge364.i:                                 ; preds = %bb.jm, %bb.io
  call void @llvm.lifetime.start.p0(ptr nonnull %281) #19
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %281) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %282) #19
  %i.zj = getelementptr inbounds nuw i8, ptr %282, i64 16
  store i32 0, ptr %i.zj, align 8, !tbaa !47
  %i.zk = getelementptr inbounds nuw i8, ptr %282, i64 20
  store i32 0, ptr %i.zk, align 4, !tbaa !48
  store i32 16842752, ptr %282, align 8, !tbaa !45
  %i.zl = getelementptr inbounds nuw i8, ptr %282, i64 8
  store ptr %218, ptr %i.zl, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %283) #19
  %i.zm = getelementptr inbounds nuw i8, ptr %283, i64 16
  store i32 0, ptr %i.zm, align 8, !tbaa !47
  %i.zn = getelementptr inbounds nuw i8, ptr %283, i64 20
  store i32 0, ptr %i.zn, align 4, !tbaa !48
  store i32 16842752, ptr %283, align 8, !tbaa !45
  %i.zo = getelementptr inbounds nuw i8, ptr %283, i64 8
  store ptr %219, ptr %i.zo, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %284) #19
  %i.zp = getelementptr inbounds nuw i8, ptr %284, i64 8
  %i.zq = getelementptr inbounds nuw i8, ptr %284, i64 16
  store i64 0, ptr %i.zq, align 8
  store i32 33619968, ptr %284, align 8, !tbaa !45
  store ptr %281, ptr %i.zp, align 8, !tbaa !46
  %i.zr = invoke noundef zeroext i1 @_ZN2cv5solveERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %282, ptr noundef nonnull align 8 dereferenceable(24) %283, ptr noundef nonnull align 8 dereferenceable(24) %284, i32 noundef 1)
          to label %bb.ko unwind label %bb.ku     ; 0 uses

bb.ko:                                            ; preds = %._crit_edge364.i
  call void @llvm.lifetime.end.p0(ptr nonnull %284) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %283) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %282) #19
  %i.zs = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %323, ptr noundef nonnull align 8 dereferenceable(208) %259)
          to label %bb.kp unwind label %bb.kv     ; 0 uses

bb.kp:                                            ; preds = %bb.ko
  %i.zt = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %325, ptr noundef nonnull align 8 dereferenceable(208) %281)
          to label %bb.kq unwind label %bb.kv     ; 0 uses

bb.kq:                                            ; preds = %bb.kp
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %281) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %281) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %259) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %259) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %256) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %256) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %253) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %253) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %249) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %249) #19
  br label %bb.kr

bb.kr:                                            ; preds = %bb.kq, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i, %bb.fu
  %i.zu = load ptr, ptr %221, align 8, !tbaa !23  ; 3 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %221, i64 8
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !22 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.zu, %i.zw
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i176

.lr.ph.i.i.i.i176:                                ; preds = %bb.kr, %.lr.ph.i.i.i.i176
  %.05.i.i.i.i = phi ptr [ %i.zx, %.lr.ph.i.i.i.i176 ], [ %i.zu, %bb.kr ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i) #19
  %i.zx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i177 = icmp eq ptr %i.zx, %i.zw
  br i1 %.not.i.i.i.i177, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i176, !llvm.loop !1

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i176
  %.pr.i279.i = load ptr, ptr %221, align 8, !tbaa !23
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.kr
  %i.zy = phi ptr [ %.pr.i279.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.zu, %bb.kr ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.zy, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit.i, label %bb.ks

bb.ks:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.zz = load ptr, ptr %i.ji, align 8, !tbaa !25
  %i.aaa = ptrtoint ptr %i.zz to i64
  %i.aab = ptrtoint ptr %i.zy to i64
  %i.aac = sub i64 %i.aaa, %i.aab
  call void @_ZdlPvm(ptr noundef nonnull %i.zy, i64 noundef %i.aac) #21
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit.i:        ; preds = %bb.ks, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %221) #19
  %i.aad = load ptr, ptr %220, align 8, !tbaa !23 ; 3 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %220, i64 8
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !22 ; 2 uses
  %.not4.i.i.i280.i = icmp eq ptr %i.aad, %i.aaf
  br i1 %.not4.i.i.i280.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i286.i, label %.lr.ph.i.i.i281.i

.lr.ph.i.i.i281.i:                                ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit.i, %.lr.ph.i.i.i281.i
  %.05.i.i.i282.i = phi ptr [ %i.aag, %.lr.ph.i.i.i281.i ], [ %i.aad, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit.i ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i282.i) #19
  %i.aag = getelementptr inbounds nuw i8, ptr %.05.i.i.i282.i, i64 208 ; 2 uses
  %.not.i.i.i283.i = icmp eq ptr %i.aag, %i.aaf
  br i1 %.not.i.i.i283.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i284.i, label %.lr.ph.i.i.i281.i, !llvm.loop !1

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i284.i: ; preds = %.lr.ph.i.i.i281.i
  %.pr.i285.i = load ptr, ptr %220, align 8, !tbaa !23
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i286.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i286.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i284.i, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit.i
  %i.aah = phi ptr [ %.pr.i285.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i284.i ], [ %i.aad, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i287.i = icmp eq ptr %i.aah, null
  br i1 %.not.i.i1.i287.i, label %_ZN2cvL20calibrateHandEyeTsaiERKSt6vectorINS_3MatESaIS1_EES5_RS1_S6_.exit, label %bb.kt

bb.kt:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i286.i
  %i.aai = load ptr, ptr %331, align 8, !tbaa !25
  %i.aaj = ptrtoint ptr %i.aai to i64
  %i.aak = ptrtoint ptr %i.aah to i64
  %i.aal = sub i64 %i.aaj, %i.aak
  call void @_ZdlPvm(ptr noundef nonnull %i.aah, i64 noundef %i.aal) #21
  br label %_ZN2cvL20calibrateHandEyeTsaiERKSt6vectorINS_3MatESaIS1_EES5_RS1_S6_.exit

bb.ku:                                            ; preds = %._crit_edge364.i
  %i.aam = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %284) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %283) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %282) #19
  br label %bb.kw

bb.kv:                                            ; preds = %bb.kp, %bb.ko
  %i.aan = landingpad { ptr, i32 }
          cleanup
  br label %bb.kw

bb.kw:                                            ; preds = %bb.kv, %bb.ku
  %.pn140.i = phi { ptr, i32 } [ %i.aan, %bb.kv ], [ %i.aam, %bb.ku ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %281) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %281) #19
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kw, %bb.kn
  %.pn154.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn154.pn.pn.pn.pn.pn.i, %bb.kn ], [ %.pn140.i, %bb.kw ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %259) #19
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kx, %bb.jb
  %.pn154.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn154.pn.pn.pn.pn.pn.pn.i, %bb.kx ], [ %.pn133.pn.i, %bb.jb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %259) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %256) #19
  br label %bb.kz

bb.kz:                                            ; preds = %bb.ky, %bb.iy
  %.pn154.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn154.pn.pn.pn.pn.pn.pn.pn.i, %bb.ky ], [ %.pn130.pn.i, %bb.iy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %256) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %253) #19
  br label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.iu
  %.pn154.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn154.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.kz ], [ %.pn127.pn.i, %bb.iu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %253) #19
  br label %bb.lb

bb.lb:                                            ; preds = %bb.la, %bb.iq
  %.pn154.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn154.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.la ], [ %i.xr, %bb.iq ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %249) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %249) #19
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lb, %bb.ip, %bb.gh, %bb.fs, %bb.fr, %bb.df
  %.pn195.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.ls, %bb.df ], [ %.pn195.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.fr ], [ %i.xq, %bb.ip ], [ %.pn154.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.lb ], [ %.pn166.pn.pn.i, %bb.gh ], [ %i.pf, %bb.fs ]
  %i.aao = load ptr, ptr %221, align 8, !tbaa !23 ; 3 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %221, i64 8
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !22 ; 2 uses
  %.not4.i.i.i289.i = icmp eq ptr %i.aao, %i.aaq
  br i1 %.not4.i.i.i289.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i295.i, label %.lr.ph.i.i.i290.i

.lr.ph.i.i.i290.i:                                ; preds = %bb.lc, %.lr.ph.i.i.i290.i
  %.05.i.i.i291.i = phi ptr [ %i.aar, %.lr.ph.i.i.i290.i ], [ %i.aao, %bb.lc ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i291.i) #19
  %i.aar = getelementptr inbounds nuw i8, ptr %.05.i.i.i291.i, i64 208 ; 2 uses
  %.not.i.i.i292.i = icmp eq ptr %i.aar, %i.aaq
  br i1 %.not.i.i.i292.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i293.i, label %.lr.ph.i.i.i290.i, !llvm.loop !1

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i293.i: ; preds = %.lr.ph.i.i.i290.i
  %.pr.i294.i = load ptr, ptr %221, align 8, !tbaa !23
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i295.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i295.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i293.i, %bb.lc
  %i.aas = phi ptr [ %.pr.i294.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i293.i ], [ %i.aao, %bb.lc ] ; 3 uses
  %.not.i.i1.i296.i = icmp eq ptr %i.aas, null
  br i1 %.not.i.i1.i296.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit297.i, label %bb.ld

bb.ld:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i295.i
  %i.aat = getelementptr inbounds nuw i8, ptr %221, i64 16
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !25
  %i.aav = ptrtoint ptr %i.aau to i64
  %i.aaw = ptrtoint ptr %i.aas to i64
  %i.aax = sub i64 %i.aav, %i.aaw
  call void @_ZdlPvm(ptr noundef nonnull %i.aas, i64 noundef %i.aax) #21
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit297.i

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit297.i:     ; preds = %bb.ld, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i295.i
  call void @llvm.lifetime.end.p0(ptr nonnull %221) #19
  %i.aay = load ptr, ptr %220, align 8, !tbaa !23 ; 3 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %220, i64 8
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !22 ; 2 uses
  %.not4.i.i.i298.i = icmp eq ptr %i.aay, %i.aba
  br i1 %.not4.i.i.i298.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i304.i, label %.lr.ph.i.i.i299.i

.lr.ph.i.i.i299.i:                                ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit297.i, %.lr.ph.i.i.i299.i
  %.05.i.i.i300.i = phi ptr [ %i.abb, %.lr.ph.i.i.i299.i ], [ %i.aay, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit297.i ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i300.i) #19
  %i.abb = getelementptr inbounds nuw i8, ptr %.05.i.i.i300.i, i64 208 ; 2 uses
  %.not.i.i.i301.i = icmp eq ptr %i.abb, %i.aba
  br i1 %.not.i.i.i301.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i302.i, label %.lr.ph.i.i.i299.i, !llvm.loop !1

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i302.i: ; preds = %.lr.ph.i.i.i299.i
  %.pr.i303.i = load ptr, ptr %220, align 8, !tbaa !23
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i304.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i304.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i302.i, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit297.i
  %i.abc = phi ptr [ %.pr.i303.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i302.i ], [ %i.aay, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit297.i ] ; 3 uses
  %.not.i.i1.i305.i = icmp eq ptr %i.abc, null
  br i1 %.not.i.i1.i305.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit306.i, label %bb.le

bb.le:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i304.i
  %332 = getelementptr inbounds nuw i8, ptr %220, i64 16
  %i.abd = load ptr, ptr %332, align 8, !tbaa !25
  %i.abe = ptrtoint ptr %i.abd to i64
  %i.abf = ptrtoint ptr %i.abc to i64
  %i.abg = sub i64 %i.abe, %i.abf
  call void @_ZdlPvm(ptr noundef nonnull %i.abc, i64 noundef %i.abg) #21
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit306.i

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit306.i:     ; preds = %bb.le, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i304.i
  call void @llvm.lifetime.end.p0(ptr nonnull %220) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %219) #19
  br label %bb.lf

bb.lf:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit306.i, %bb.de
  %.pn195.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn195.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit306.i ], [ %i.lr, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %219) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %218) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %218) #19
  br label %.body183

_ZN2cvL20calibrateHandEyeTsaiERKSt6vectorINS_3MatESaIS1_EES5_RS1_S6_.exit: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i286.i, %bb.kt
  call void @llvm.lifetime.end.p0(ptr nonnull %220) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %219) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %219) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %218) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %218) #19
  br label %bb.zh

bb.lg:                                            ; preds = %bb.uv, %bb.qh, %bb.lh, %bb.da, %bb.zi, %bb.zh, %bb.zg
  %i.abh = landingpad { ptr, i32 }
          cleanup
  br label %.body183

.body183:                                         ; preds = %bb.qg, %bb.lg, %bb.zf, %bb.uu, %bb.lf
  %eh.lpad-body184 = phi { ptr, i32 } [ %.pn195.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.lf ], [ %.pn182.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.qg ], [ %.pn188.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.uu ], [ %i.abh, %bb.lg ], [ %.pn136.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.zf ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %325) #19
  br label %bb.zq

bb.lh:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit175
  call void @llvm.lifetime.start.p0(ptr nonnull %134) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %135) #19
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %135, i32 noundef 3, i32 noundef 3, i32 noundef 6)
          to label %.noexc201 unwind label %bb.lg

.noexc201:                                        ; preds = %bb.lh
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %134) #19
  %i.abi = load ptr, ptr %135, align 8, !tbaa !38, !noalias !223 ; 2 uses
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !40
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 24
  %i.abl = load ptr, ptr %i.abk, align 8
  invoke void %i.abl(ptr noundef nonnull align 8 dereferenceable(8) %i.abi, ptr noundef nonnull align 8 dereferenceable(688) %135, ptr noundef nonnull align 8 dereferenceable(208) %134, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i186 unwind label %.body.i185

.body.i185:                                       ; preds = %.noexc201
  %i.abm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %134) #19
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %135) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #19
  br label %bb.qg

_ZNK2cv7MatExprcvNS_3MatEEv.exit.i186:            ; preds = %.noexc201
  %i.abn = getelementptr inbounds nuw i8, ptr %135, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.abn) #19
  %i.abo = getelementptr inbounds nuw i8, ptr %135, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.abo) #19
  %i.abp = getelementptr inbounds nuw i8, ptr %135, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.abp) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #19
  %i.abq = getelementptr inbounds nuw i8, ptr %297, i64 8 ; 5 uses
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !22 ; 2 uses
  %i.abs = load ptr, ptr %297, align 8, !tbaa !23 ; 2 uses
  %.not.i187 = icmp eq ptr %i.abr, %i.abs
  br i1 %.not.i187, label %._crit_edge.i188, label %.lr.ph261.i

.lr.ph261.i:                                      ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i186
  %i.abt = getelementptr inbounds nuw i8, ptr %137, i64 432
  %i.abu = getelementptr inbounds nuw i8, ptr %137, i64 224
  %i.abv = getelementptr inbounds nuw i8, ptr %137, i64 16
  %i.abw = getelementptr inbounds nuw i8, ptr %140, i64 432
  %i.abx = getelementptr inbounds nuw i8, ptr %140, i64 224
  %i.aby = getelementptr inbounds nuw i8, ptr %140, i64 16
  %i.abz = getelementptr inbounds nuw i8, ptr %148, i64 16
  %i.aca = getelementptr inbounds nuw i8, ptr %148, i64 20
  %i.acb = getelementptr inbounds nuw i8, ptr %148, i64 8
  %i.acc = getelementptr inbounds nuw i8, ptr %149, i64 8
  %i.acd = getelementptr inbounds nuw i8, ptr %149, i64 16
  %i.ace = getelementptr inbounds nuw i8, ptr %150, i64 16
  %i.acf = getelementptr inbounds nuw i8, ptr %150, i64 20
  %i.acg = getelementptr inbounds nuw i8, ptr %150, i64 8
  %i.ach = getelementptr inbounds nuw i8, ptr %151, i64 8
  %i.aci = getelementptr inbounds nuw i8, ptr %151, i64 16
  %i.acj = getelementptr inbounds nuw i8, ptr %152, i64 432
  %i.ack = getelementptr inbounds nuw i8, ptr %152, i64 224
  %i.acl = getelementptr inbounds nuw i8, ptr %152, i64 16
  %i.acm = getelementptr inbounds nuw i8, ptr %153, i64 432
  %i.acn = getelementptr inbounds nuw i8, ptr %153, i64 224
  %i.aco = getelementptr inbounds nuw i8, ptr %153, i64 16
  br label %bb.li

.loopexit227.i:                                   ; preds = %_ZN2cvpLERNS_3MatERKNS_7MatExprE.exit.i
  %i.acp = icmp ult i64 %i.acs, %i.aeb
  br i1 %i.acp, label %bb.li, label %._crit_edge.i188, !llvm.loop !124

._crit_edge.i188:                                 ; preds = %bb.li, %.loopexit227.i, %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i186
  call void @llvm.lifetime.start.p0(ptr nonnull %154) #19
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %154) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %155) #19
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %155) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %156) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %157) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %158) #19
  invoke void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %158, ptr noundef nonnull align 8 dereferenceable(208) %134)
          to label %bb.mq unwind label %bb.mv

bb.li:                                            ; preds = %.loopexit227.i, %.lr.ph261.i
  %i.acq = phi ptr [ %i.abs, %.lr.ph261.i ], [ %i.adx, %.loopexit227.i ] ; 2 uses
  %i.acr = phi ptr [ %i.abr, %.lr.ph261.i ], [ %i.adw, %.loopexit227.i ]
  %.050260.i = phi i64 [ 0, %.lr.ph261.i ], [ %i.acs, %.loopexit227.i ] ; 3 uses
  %i.acs = add nuw i64 %.050260.i, 1              ; 4 uses
  %i.act = ptrtoint ptr %i.acr to i64
  %i.acu = ptrtoint ptr %i.acq to i64
  %i.acv = sub i64 %i.act, %i.acu
  %i.acw = sdiv exact i64 %i.acv, 208
  %i.acx = icmp ult i64 %i.acs, %i.acw
  br i1 %i.acx, label %.lr.ph.i200, label %._crit_edge.i188

.lr.ph.i200:                                      ; preds = %bb.li, %_ZN2cvpLERNS_3MatERKNS_7MatExprE.exit.i
  %i.acy = phi ptr [ %i.adx, %_ZN2cvpLERNS_3MatERKNS_7MatExprE.exit.i ], [ %i.acq, %bb.li ]
  %.049259.i = phi i64 [ %i.adv, %_ZN2cvpLERNS_3MatERKNS_7MatExprE.exit.i ], [ %i.acs, %bb.li ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %136) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %137) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %138) #19
  %i.acz = getelementptr inbounds nuw [208 x i8], ptr %i.acy, i64 %.049259.i
  invoke fastcc void @_ZN2cvL18homogeneousInverseERKNS_3MatE(ptr dead_on_unwind noalias writable align 8 %138, ptr noundef nonnull align 8 dereferenceable(208) %i.acz)
          to label %bb.lj unwind label %bb.lu

bb.lj:                                            ; preds = %.lr.ph.i200
  %i.ada = load ptr, ptr %297, align 8, !tbaa !23
  %i.adb = getelementptr inbounds nuw [208 x i8], ptr %i.ada, i64 %.050260.i
  invoke void @_ZN2cvmlERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %137, ptr noundef nonnull align 8 dereferenceable(208) %138, ptr noundef nonnull align 8 dereferenceable(208) %i.adb)
          to label %bb.lk unwind label %bb.lv

bb.lk:                                            ; preds = %bb.lj
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %136) #19
  %i.adc = load ptr, ptr %137, align 8, !tbaa !38, !noalias !224 ; 2 uses
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !40
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 24
  %i.adf = load ptr, ptr %i.ade, align 8
  invoke void %i.adf(ptr noundef nonnull align 8 dereferenceable(8) %i.adc, ptr noundef nonnull align 8 dereferenceable(688) %137, ptr noundef nonnull align 8 dereferenceable(208) %136, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit194.i unwind label %.body192.i

.body192.i:                                       ; preds = %bb.lk
  %i.adg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %136) #19
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %137) #19
  br label %bb.lw

_ZNK2cv7MatExprcvNS_3MatEEv.exit194.i:            ; preds = %bb.lk
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.abt) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.abu) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.abv) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %138) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %139) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %140) #19
  %i.adh = load ptr, ptr %310, align 8, !tbaa !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %141) #19
  %i.adi = getelementptr inbounds nuw [208 x i8], ptr %i.adh, i64 %.050260.i
  invoke fastcc void @_ZN2cvL18homogeneousInverseERKNS_3MatE(ptr dead_on_unwind noalias writable align 8 %141, ptr noundef nonnull align 8 dereferenceable(208) %i.adi)
          to label %bb.ll unwind label %bb.ly

bb.ll:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit194.i
  %i.adj = getelementptr inbounds nuw [208 x i8], ptr %i.adh, i64 %.049259.i
  invoke void @_ZN2cvmlERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %140, ptr noundef nonnull align 8 dereferenceable(208) %i.adj, ptr noundef nonnull align 8 dereferenceable(208) %141)
          to label %bb.lm unwind label %bb.lz

bb.lm:                                            ; preds = %bb.ll
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %139) #19
  %i.adk = load ptr, ptr %140, align 8, !tbaa !38, !noalias !225 ; 2 uses
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !40
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 24
  %i.adn = load ptr, ptr %i.adm, align 8
  invoke void %i.adn(ptr noundef nonnull align 8 dereferenceable(8) %i.adk, ptr noundef nonnull align 8 dereferenceable(688) %140, ptr noundef nonnull align 8 dereferenceable(208) %139, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit197.i unwind label %.body195.i

.body195.i:                                       ; preds = %bb.lm
  %i.ado = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %139) #19
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %140) #19
  br label %bb.ma

_ZNK2cv7MatExprcvNS_3MatEEv.exit197.i:            ; preds = %bb.lm
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.abw) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.abx) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aby) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %141) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #19
end_hunk_2
begin_hunk_3_@_ZN2cv16calibrateHandEyeERKNS_11_InputArrayES2_S2_S2_RKNS_12_OutputArrayES5_NS_24HandEyeCalibrationMethodE:bb.a
  %i.afz = getelementptr inbounds nuw i8, ptr %.sink.i203.us.1.i, i64 8
  %i.aga = fdiv double 1.000000e+00, %i.afx
  store double %i.aga, ptr %i.afz, align 8, !tbaa !57
  %i.agb = load double, ptr %i.afl, align 8, !tbaa !57
  %i.agc = call double @sqrt(double noundef %i.agb) #19
  %i.agd = load i64, ptr %i.afs, align 8
  %i.age = shl i64 %i.agd, 1
  %.sink.i203.us.2.i = getelementptr inbounds nuw i8, ptr %i.afr, i64 %i.age
  br label %.split.us.i

_ZNK2cv7MatExprcvNS_3MatEEv.exit201.split.us.split.us.preheader.i: ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit201.split.us.i
  %i.agf = getelementptr inbounds nuw i8, ptr %i.afr, i64 8
  %i.agg = fdiv double 1.000000e+00, %i.afx
  store double %i.agg, ptr %i.agf, align 8, !tbaa !57
  %i.agh = load double, ptr %i.afl, align 8, !tbaa !57
  %i.agi = call double @sqrt(double noundef %i.agh) #19
  br label %.split.us.i

_ZNK2cv7MatExprcvNS_3MatEEv.exit201.split.i:      ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit201.i
  %i.agj = load i64, ptr %i.afm, align 8
  %.sink.i.us264.1.i = getelementptr inbounds nuw i8, ptr %i.afl, i64 %i.agj
  %i.agk = load double, ptr %.sink.i.us264.1.i, align 8, !tbaa !57
  %i.agl = call double @sqrt(double noundef %i.agk) #19 ; 2 uses
  br i1 %i.afp, label %_ZNK2cv7MatExprcvNS_3MatEEv.exit201.split.split.us.preheader.i, label %_ZNK2cv7MatExprcvNS_3MatEEv.exit201.split.split.preheader.i

_ZNK2cv7MatExprcvNS_3MatEEv.exit201.split.split.preheader.i: ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit201.split.i
  %i.agm = load i64, ptr %i.afs, align 8
  %.sink.i203.1.i = getelementptr inbounds nuw i8, ptr %i.afr, i64 %i.agm
  %i.agn = getelementptr inbounds nuw i8, ptr %.sink.i203.1.i, i64 8
  %i.ago = fdiv double 1.000000e+00, %i.agl
  store double %i.ago, ptr %i.agn, align 8, !tbaa !57
  %i.agp = load i64, ptr %i.afm, align 8
  %i.agq = shl i64 %i.agp, 1
  %.sink.i.2.i = getelementptr inbounds nuw i8, ptr %i.afl, i64 %i.agq
  %i.agr = load double, ptr %.sink.i.2.i, align 8, !tbaa !57
  %i.ags = call double @sqrt(double noundef %i.agr) #19
  %i.agt = load i64, ptr %i.afs, align 8
  %i.agu = shl i64 %i.agt, 1
  %.sink.i203.2.i = getelementptr inbounds nuw i8, ptr %i.afr, i64 %i.agu
  br label %.split.us.i

_ZNK2cv7MatExprcvNS_3MatEEv.exit201.split.split.us.preheader.i: ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit201.split.i
  %i.agv = getelementptr inbounds nuw i8, ptr %i.afr, i64 8
  %i.agw = fdiv double 1.000000e+00, %i.agl
  store double %i.agw, ptr %i.agv, align 8, !tbaa !57
  %i.agx = load i64, ptr %i.afm, align 8
  %i.agy = shl i64 %i.agx, 1
  %.sink.i.us264.2.i = getelementptr inbounds nuw i8, ptr %i.afl, i64 %i.agy
  %i.agz = load double, ptr %.sink.i.us264.2.i, align 8, !tbaa !57
  %i.aha = call double @sqrt(double noundef %i.agz) #19
  br label %.split.us.i

.split.us.i:                                      ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit201.split.split.us.preheader.i, %_ZNK2cv7MatExprcvNS_3MatEEv.exit201.split.split.preheader.i, %_ZNK2cv7MatExprcvNS_3MatEEv.exit201.split.us.split.us.preheader.i, %_ZNK2cv7MatExprcvNS_3MatEEv.exit201.split.us.split.preheader.i
  %.sink.i203.2.sink.i = phi ptr [ %.sink.i203.2.i, %_ZNK2cv7MatExprcvNS_3MatEEv.exit201.split.split.preheader.i ], [ %i.afr, %_ZNK2cv7MatExprcvNS_3MatEEv.exit201.split.split.us.preheader.i ], [ %.sink.i203.us.2.i, %_ZNK2cv7MatExprcvNS_3MatEEv.exit201.split.us.split.preheader.i ], [ %i.afr, %_ZNK2cv7MatExprcvNS_3MatEEv.exit201.split.us.split.us.preheader.i ]
  %.sink316.i = phi double [ %i.ags, %_ZNK2cv7MatExprcvNS_3MatEEv.exit201.split.split.preheader.i ], [ %i.aha, %_ZNK2cv7MatExprcvNS_3MatEEv.exit201.split.split.us.preheader.i ], [ %i.agc, %_ZNK2cv7MatExprcvNS_3MatEEv.exit201.split.us.split.preheader.i ], [ %i.agi, %_ZNK2cv7MatExprcvNS_3MatEEv.exit201.split.us.split.us.preheader.i ]
  %i.ahb = getelementptr inbounds nuw i8, ptr %.sink.i203.2.sink.i, i64 16
  %i.ahc = fdiv double 1.000000e+00, %.sink316.i
  store double %i.ahc, ptr %i.ahb, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %163) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %164) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %165) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %166) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %167) #19
  invoke void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %167, ptr noundef nonnull align 8 dereferenceable(208) %155)
          to label %bb.ne unwind label %bb.nn

bb.mv:                                            ; preds = %._crit_edge.i188
  %i.ahd = landingpad { ptr, i32 }
          cleanup
  br label %bb.nb

bb.mw:                                            ; preds = %bb.mq
  %i.ahe = landingpad { ptr, i32 }
          cleanup
  br label %bb.na

bb.mx:                                            ; preds = %bb.mr
  %i.ahf = landingpad { ptr, i32 }
          cleanup
  br label %bb.mz

bb.my:                                            ; preds = %bb.ms
  %i.ahg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %160) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %159) #19
  br label %bb.mz

bb.mz:                                            ; preds = %bb.my, %bb.mx
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.ahg, %bb.my ], [ %i.ahf, %bb.mx ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %157) #19
  br label %bb.na

bb.na:                                            ; preds = %bb.mz, %bb.mw
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.i, %bb.mz ], [ %i.ahe, %bb.mw ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %158) #19
  br label %bb.nb

bb.nb:                                            ; preds = %bb.na, %bb.mv
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.i, %bb.na ], [ %i.ahd, %bb.mv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #19
  br label %bb.qe

bb.nc:                                            ; preds = %bb.mt
  %i.ahh = landingpad { ptr, i32 }
          cleanup
  br label %bb.nd

bb.nd:                                            ; preds = %bb.nc, %.body199.i
  %.pn119.i = phi { ptr, i32 } [ %i.afd, %.body199.i ], [ %i.ahh, %bb.nc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %162) #19
  br label %bb.qd

bb.ne:                                            ; preds = %.split.us.i
  invoke void @_ZN2cvmlERKNS_7MatExprERKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %166, ptr noundef nonnull align 8 dereferenceable(688) %167, ptr noundef nonnull align 8 dereferenceable(208) %161)
          to label %bb.nf unwind label %bb.no

bb.nf:                                            ; preds = %bb.ne
  invoke void @_ZN2cvmlERKNS_7MatExprERKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %165, ptr noundef nonnull align 8 dereferenceable(688) %166, ptr noundef nonnull align 8 dereferenceable(208) %155)
          to label %bb.ng unwind label %bb.np

bb.ng:                                            ; preds = %bb.nf
  call void @llvm.lifetime.start.p0(ptr nonnull %168) #19
  invoke void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %168, ptr noundef nonnull align 8 dereferenceable(208) %134)
          to label %bb.nh unwind label %bb.nq

bb.nh:                                            ; preds = %bb.ng
  invoke void @_ZN2cvmlERKNS_7MatExprES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %164, ptr noundef nonnull align 8 dereferenceable(688) %165, ptr noundef nonnull align 8 dereferenceable(688) %168)
          to label %bb.ni unwind label %bb.nr

bb.ni:                                            ; preds = %bb.nh
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %163) #19
  %i.ahi = load ptr, ptr %164, align 8, !tbaa !38, !noalias !227 ; 2 uses
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !40
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 24
  %i.ahl = load ptr, ptr %i.ahk, align 8
  invoke void %i.ahl(ptr noundef nonnull align 8 dereferenceable(8) %i.ahi, ptr noundef nonnull align 8 dereferenceable(688) %164, ptr noundef nonnull align 8 dereferenceable(208) %163, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit206.i unwind label %.body204.i

.body204.i:                                       ; preds = %bb.ni
  %i.ahm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %163) #19
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %164) #19
  br label %bb.ns

_ZNK2cv7MatExprcvNS_3MatEEv.exit206.i:            ; preds = %bb.ni
  %i.ahn = getelementptr inbounds nuw i8, ptr %164, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ahn) #19
  %i.aho = getelementptr inbounds nuw i8, ptr %164, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aho) #19
  %i.ahp = getelementptr inbounds nuw i8, ptr %164, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ahp) #19
  %i.ahq = getelementptr inbounds nuw i8, ptr %168, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ahq) #19
  %i.ahr = getelementptr inbounds nuw i8, ptr %168, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ahr) #19
  %i.ahs = getelementptr inbounds nuw i8, ptr %168, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ahs) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %168) #19
  %i.aht = getelementptr inbounds nuw i8, ptr %165, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aht) #19
  %i.ahu = getelementptr inbounds nuw i8, ptr %165, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ahu) #19
  %i.ahv = getelementptr inbounds nuw i8, ptr %165, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ahv) #19
  %i.ahw = getelementptr inbounds nuw i8, ptr %166, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ahw) #19
  %i.ahx = getelementptr inbounds nuw i8, ptr %166, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ahx) #19
  %i.ahy = getelementptr inbounds nuw i8, ptr %166, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ahy) #19
  %i.ahz = getelementptr inbounds nuw i8, ptr %167, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ahz) #19
  %i.aia = getelementptr inbounds nuw i8, ptr %167, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aia) #19
  %i.aib = getelementptr inbounds nuw i8, ptr %167, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aib) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %167) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %166) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %165) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #19
  %i.aic = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %323, ptr noundef nonnull align 8 dereferenceable(208) %163)
          to label %bb.nj unwind label %bb.nx     ; 0 uses

bb.nj:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit206.i
  %i.aid = load ptr, ptr %i.abq, align 8, !tbaa !22
  %i.aie = load ptr, ptr %297, align 8, !tbaa !23
  %i.aif = ptrtoint ptr %i.aid to i64
  %i.aig = ptrtoint ptr %i.aie to i64
  %i.aih = sub i64 %i.aif, %i.aig
  %i.aii = sdiv exact i64 %i.aih, 208             ; 2 uses
  %i.aij = add nsw i64 %i.aii, -1
  %i.aik = mul i64 %i.aij, %i.aii
  %i.ail = uitofp i64 %i.aik to double
  %i.aim = fmul nnan double %i.ail, 5.000000e-01
  %i.ain = fptosi double %i.aim to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %169) #19
  %i.aio = mul nsw i32 %i.ain, 3                  ; 2 uses
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %169, i32 noundef %i.aio, i32 noundef 3, i32 noundef 6)
          to label %bb.nk unwind label %bb.ny

bb.nk:                                            ; preds = %bb.nj
  call void @llvm.lifetime.start.p0(ptr nonnull %170) #19
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %170, i32 noundef %i.aio, i32 noundef 1, i32 noundef 6)
          to label %bb.nl unwind label %bb.nz

bb.nl:                                            ; preds = %bb.nk
  call void @llvm.lifetime.start.p0(ptr nonnull %171) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %172) #19
  invoke void @_ZN2cv3Mat3eyeEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %172, i32 noundef 3, i32 noundef 3, i32 noundef 6)
          to label %bb.nm unwind label %bb.oa

bb.nm:                                            ; preds = %bb.nl
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %171) #19
  %i.aip = load ptr, ptr %172, align 8, !tbaa !38, !noalias !228 ; 2 uses
  %i.aiq = load ptr, ptr %i.aip, align 8, !tbaa !40
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 24
  %i.ais = load ptr, ptr %i.air, align 8
  invoke void %i.ais(ptr noundef nonnull align 8 dereferenceable(8) %i.aip, ptr noundef nonnull align 8 dereferenceable(688) %172, ptr noundef nonnull align 8 dereferenceable(208) %171, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit209.i unwind label %.body207.i

.body207.i:                                       ; preds = %bb.nm
  %i.ait = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %171) #19
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %172) #19
  br label %bb.ob

_ZNK2cv7MatExprcvNS_3MatEEv.exit209.i:            ; preds = %bb.nm
  %i.aiu = getelementptr inbounds nuw i8, ptr %172, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aiu) #19
  %i.aiv = getelementptr inbounds nuw i8, ptr %172, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aiv) #19
  %i.aiw = getelementptr inbounds nuw i8, ptr %172, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aiw) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %172) #19
  %i.aix = load ptr, ptr %i.abq, align 8, !tbaa !22 ; 2 uses
  %i.aiy = load ptr, ptr %297, align 8, !tbaa !23 ; 2 uses
  %.not279.i = icmp eq ptr %i.aix, %i.aiy
  br i1 %.not279.i, label %._crit_edge277.i, label %.lr.ph276.i

.lr.ph276.i:                                      ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit209.i
  %i.aiz = getelementptr inbounds nuw i8, ptr %174, i64 432
  %i.aja = getelementptr inbounds nuw i8, ptr %174, i64 224
  %i.ajb = getelementptr inbounds nuw i8, ptr %174, i64 16
  %i.ajc = getelementptr inbounds nuw i8, ptr %177, i64 432
  %i.ajd = getelementptr inbounds nuw i8, ptr %177, i64 224
  %i.aje = getelementptr inbounds nuw i8, ptr %177, i64 16
  %i.ajf = getelementptr inbounds nuw i8, ptr %186, i64 432
  %i.ajg = getelementptr inbounds nuw i8, ptr %186, i64 224
  %i.ajh = getelementptr inbounds nuw i8, ptr %186, i64 16
  %i.aji = getelementptr inbounds nuw i8, ptr %189, i64 4
  %i.ajj = getelementptr inbounds nuw i8, ptr %189, i64 8
  %i.ajk = getelementptr inbounds nuw i8, ptr %189, i64 12
  %i.ajl = getelementptr inbounds nuw i8, ptr %187, i64 8
  %i.ajm = getelementptr inbounds nuw i8, ptr %187, i64 16
  %i.ajn = getelementptr inbounds nuw i8, ptr %191, i64 432
  %i.ajo = getelementptr inbounds nuw i8, ptr %191, i64 224
  %i.ajp = getelementptr inbounds nuw i8, ptr %191, i64 16
  %i.ajq = getelementptr inbounds nuw i8, ptr %192, i64 432
  %i.ajr = getelementptr inbounds nuw i8, ptr %192, i64 224
  %i.ajs = getelementptr inbounds nuw i8, ptr %192, i64 16
  %i.ajt = getelementptr inbounds nuw i8, ptr %195, i64 4
  %i.aju = getelementptr inbounds nuw i8, ptr %195, i64 8
  %i.ajv = getelementptr inbounds nuw i8, ptr %195, i64 12
  %i.ajw = getelementptr inbounds nuw i8, ptr %193, i64 8
  %i.ajx = getelementptr inbounds nuw i8, ptr %193, i64 16
  br label %bb.oc

.loopexit.i199:                                   ; preds = %bb.on
  %i.ajy = icmp ult i64 %i.akk, %i.alz
  br i1 %i.ajy, label %bb.oc, label %._crit_edge277.i, !llvm.loop !137

bb.nn:                                            ; preds = %.split.us.i
  %i.ajz = landingpad { ptr, i32 }
          cleanup
  br label %bb.nw

bb.no:                                            ; preds = %bb.ne
  %i.aka = landingpad { ptr, i32 }
          cleanup
  br label %bb.nv

bb.np:                                            ; preds = %bb.nf
  %i.akb = landingpad { ptr, i32 }
          cleanup
  br label %bb.nu

bb.nq:                                            ; preds = %bb.ng
  %i.akc = landingpad { ptr, i32 }
          cleanup
  br label %bb.nt

bb.nr:                                            ; preds = %bb.nh
  %i.akd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ns

bb.ns:                                            ; preds = %bb.nr, %.body204.i
  %.pn121.i = phi { ptr, i32 } [ %i.ahm, %.body204.i ], [ %i.akd, %bb.nr ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %168) #19
  br label %bb.nt

bb.nt:                                            ; preds = %bb.ns, %bb.nq
  %.pn121.pn.i = phi { ptr, i32 } [ %.pn121.i, %bb.ns ], [ %i.akc, %bb.nq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %168) #19
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %165) #19
  br label %bb.nu

bb.nu:                                            ; preds = %bb.nt, %bb.np
  %.pn121.pn.pn.i = phi { ptr, i32 } [ %.pn121.pn.i, %bb.nt ], [ %i.akb, %bb.np ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %166) #19
  br label %bb.nv

bb.nv:                                            ; preds = %bb.nu, %bb.no
  %.pn121.pn.pn.pn.i = phi { ptr, i32 } [ %.pn121.pn.pn.i, %bb.nu ], [ %i.aka, %bb.no ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %167) #19
  br label %bb.nw

bb.nw:                                            ; preds = %bb.nv, %bb.nn
  %.pn121.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn121.pn.pn.pn.i, %bb.nv ], [ %i.ajz, %bb.nn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %167) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %166) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %165) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #19
  br label %bb.qc

bb.nx:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit206.i
  %i.ake = landingpad { ptr, i32 }
          cleanup
  br label %bb.qb

bb.ny:                                            ; preds = %bb.nj
  %i.akf = landingpad { ptr, i32 }
          cleanup
  br label %bb.qa

bb.nz:                                            ; preds = %bb.nk
  %i.akg = landingpad { ptr, i32 }
          cleanup
  br label %bb.pz

bb.oa:                                            ; preds = %bb.nl
  %i.akh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ob

bb.ob:                                            ; preds = %bb.oa, %.body207.i
  %.pn127.i191 = phi { ptr, i32 } [ %i.ait, %.body207.i ], [ %i.akh, %bb.oa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %172) #19
  br label %bb.py

bb.oc:                                            ; preds = %.loopexit.i199, %.lr.ph276.i
  %i.aki = phi ptr [ %i.aiy, %.lr.ph276.i ], [ %i.alv, %.loopexit.i199 ] ; 2 uses
  %i.akj = phi ptr [ %i.aix, %.lr.ph276.i ], [ %i.alu, %.loopexit.i199 ]
  %.046275.i = phi i64 [ 0, %.lr.ph276.i ], [ %i.akk, %.loopexit.i199 ] ; 3 uses
  %.047274.i = phi i32 [ 0, %.lr.ph276.i ], [ %i.alt, %.loopexit.i199 ]
  %i.akk = add nuw i64 %.046275.i, 1              ; 4 uses
  %i.akl = ptrtoint ptr %i.akj to i64
  %i.akm = ptrtoint ptr %i.aki to i64
  %i.akn = sub i64 %i.akl, %i.akm
  %i.ako = sdiv exact i64 %i.akn, 208
  %i.akp = icmp ult i64 %i.akk, %i.ako
  br i1 %i.akp, label %.lr.ph272.i, label %._crit_edge277.i

.lr.ph272.i:                                      ; preds = %bb.oc, %bb.on
  %i.akq = phi ptr [ %i.alv, %bb.on ], [ %i.aki, %bb.oc ]
  %.0270.i = phi i64 [ %i.als, %bb.on ], [ %i.akk, %bb.oc ] ; 3 uses
  %.1269.i = phi i32 [ %i.alt, %bb.on ], [ %.047274.i, %bb.oc ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %173) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %174) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %175) #19
  %i.akr = getelementptr inbounds nuw [208 x i8], ptr %i.akq, i64 %.0270.i
  invoke fastcc void @_ZN2cvL18homogeneousInverseERKNS_3MatE(ptr dead_on_unwind noalias writable align 8 %175, ptr noundef nonnull align 8 dereferenceable(208) %i.akr)
          to label %bb.od unwind label %bb.oo

bb.od:                                            ; preds = %.lr.ph272.i
  %i.aks = load ptr, ptr %297, align 8, !tbaa !23
  %i.akt = getelementptr inbounds nuw [208 x i8], ptr %i.aks, i64 %.046275.i
  invoke void @_ZN2cvmlERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %174, ptr noundef nonnull align 8 dereferenceable(208) %175, ptr noundef nonnull align 8 dereferenceable(208) %i.akt)
          to label %bb.oe unwind label %bb.op

bb.oe:                                            ; preds = %bb.od
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %173) #19
  %i.aku = load ptr, ptr %174, align 8, !tbaa !38, !noalias !229 ; 2 uses
  %i.akv = load ptr, ptr %i.aku, align 8, !tbaa !40
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 24
  %i.akx = load ptr, ptr %i.akw, align 8
  invoke void %i.akx(ptr noundef nonnull align 8 dereferenceable(8) %i.aku, ptr noundef nonnull align 8 dereferenceable(688) %174, ptr noundef nonnull align 8 dereferenceable(208) %173, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit212.i unwind label %.body210.i

.body210.i:                                       ; preds = %bb.oe
  %i.aky = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %173) #19
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %174) #19
  br label %bb.oq

end_hunk_3
begin_hunk_4_@_ZN2cv16calibrateHandEyeERKNS_11_InputArrayES2_S2_S2_RKNS_12_OutputArrayES5_NS_24HandEyeCalibrationMethodE:bb.a
          to label %bb.rl unwind label %bb.rm

bb.rl:                                            ; preds = %bb.rk
  invoke void @_ZN2cv3addERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_i(ptr noundef nonnull align 8 dereferenceable(24) %73, ptr noundef nonnull align 8 dereferenceable(24) %74, ptr noundef nonnull align 8 dereferenceable(24) %76, ptr noundef nonnull align 8 dereferenceable(24) %i.auo, i32 noundef -1)
          to label %bb.rn unwind label %bb.rm

bb.rm:                                            ; preds = %bb.rl, %bb.rk
  %i.aup = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %75) #19
  br label %.body.i.i217

.body.i.i217:                                     ; preds = %bb.rm, %bb.rj
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.aup, %bb.rm ], [ %i.aun, %bb.rj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #19
  br label %.body228.i

bb.rn:                                            ; preds = %bb.rl
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %75) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %92) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %91) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %89) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %87) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %84) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %81) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #19
  %i.auq = add nuw i64 %.075466.i, 1              ; 2 uses
  %i.aur = load ptr, ptr %i.anj, align 8, !tbaa !22 ; 2 uses
  %i.aus = load ptr, ptr %297, align 8, !tbaa !23 ; 3 uses
  %i.aut = ptrtoint ptr %i.aur to i64
  %i.auu = ptrtoint ptr %i.aus to i64
  %i.auv = sub i64 %i.aut, %i.auu
  %i.auw = sdiv exact i64 %i.auv, 208             ; 2 uses
  %i.aux = icmp ult i64 %i.auq, %i.auw
  br i1 %i.aux, label %.lr.ph.i212, label %.loopexit432.i, !llvm.loop !154

bb.ro:                                            ; preds = %.noexc.i216, %bb.ri
  %i.auy = landingpad { ptr, i32 }
          cleanup
  br label %.body228.i

.body228.i:                                       ; preds = %bb.ro, %.body.i.i217
  %.pn188.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i, %.body.i.i217 ], [ %i.auy, %bb.ro ]
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #19
  br label %bb.rp

bb.rp:                                            ; preds = %.body228.i, %bb.rh
  %.pn188.pn.i = phi { ptr, i32 } [ %.pn188.i, %.body228.i ], [ %i.arc, %bb.rh ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %92) #19
  br label %bb.rq

bb.rq:                                            ; preds = %bb.rp, %bb.rg
  %.pn188.pn.pn.i = phi { ptr, i32 } [ %.pn188.pn.i, %bb.rp ], [ %i.arb, %bb.rg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #19
  br label %bb.rr

bb.rr:                                            ; preds = %bb.rq, %bb.rb
  %.pn188.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn188.pn.pn.i, %bb.rq ], [ %i.aqk, %bb.rb ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %91) #19
  br label %bb.rs

bb.rs:                                            ; preds = %bb.rr, %bb.ra
  %.pn188.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn188.pn.pn.pn.pn.pn.pn.pn.i, %bb.rr ], [ %i.aqj, %bb.ra ]
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %89) #19
  br label %bb.rt

bb.rt:                                            ; preds = %bb.rs, %bb.qz
  %.pn188.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn188.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.rs ], [ %i.aqi, %bb.qz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %87) #19
  br label %bb.ru

bb.ru:                                            ; preds = %bb.rt, %bb.qy
  %.pn188.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn188.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.rt ], [ %i.aqh, %bb.qy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %84) #19
  br label %bb.rv

bb.rv:                                            ; preds = %bb.ru, %bb.qx
  %.pn188.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn188.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.ru ], [ %.pn185.pn.i, %bb.qx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %81) #19
  br label %bb.rw

bb.rw:                                            ; preds = %bb.rv, %bb.qt
  %.pn188.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn188.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.rv ], [ %.pn182.pn.i213, %bb.qt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #19
  br label %bb.ut

._crit_edge.i207:                                 ; preds = %bb.qi, %.loopexit432.i, %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i205
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #19
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %94) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #19
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %95) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #19
  %i.auz = getelementptr inbounds nuw i8, ptr %96, i64 16
  store i32 0, ptr %i.auz, align 8, !tbaa !47
  %i.ava = getelementptr inbounds nuw i8, ptr %96, i64 20
  store i32 0, ptr %i.ava, align 4, !tbaa !48
  store i32 16842752, ptr %96, align 8, !tbaa !45
  %i.avb = getelementptr inbounds nuw i8, ptr %96, i64 8
  store ptr %79, ptr %i.avb, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #19
  %i.avc = getelementptr inbounds nuw i8, ptr %97, i64 8
  %i.avd = getelementptr inbounds nuw i8, ptr %97, i64 16
  store i64 0, ptr %i.avd, align 8
  store i32 33619968, ptr %97, align 8, !tbaa !45
  store ptr %94, ptr %i.avc, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #19
  %i.ave = getelementptr inbounds nuw i8, ptr %98, i64 8
  %i.avf = getelementptr inbounds nuw i8, ptr %98, i64 16
  store i64 0, ptr %i.avf, align 8
  store i32 33619968, ptr %98, align 8, !tbaa !45
  store ptr %95, ptr %i.ave, align 8, !tbaa !46
  %i.avg = invoke noundef zeroext i1 @_ZN2cv5eigenERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %96, ptr noundef nonnull align 8 dereferenceable(24) %97, ptr noundef nonnull align 8 dereferenceable(24) %98)
          to label %bb.rx unwind label %bb.sg     ; 0 uses

bb.rx:                                            ; preds = %._crit_edge.i207
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %102) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #19, !noalias !236
  store i32 3, ptr %69, align 4, !tbaa !62, !noalias !236
  %i.avh = getelementptr inbounds nuw i8, ptr %69, i64 4
  store i32 4, ptr %i.avh, align 4, !tbaa !63, !noalias !236
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #19, !noalias !236
  store i64 9223372034707292160, ptr %70, align 8, !noalias !236
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %102, ptr noundef nonnull align 8 dereferenceable(208) %95, ptr noundef nonnull align 4 dereferenceable(8) %69, ptr noundef nonnull align 4 dereferenceable(8) %70)
          to label %bb.ry unwind label %bb.sh

bb.ry:                                            ; preds = %bb.rx
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #19, !noalias !236
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #19, !noalias !236
  invoke void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %101, ptr noundef nonnull align 8 dereferenceable(208) %102)
          to label %bb.rz unwind label %bb.si

bb.rz:                                            ; preds = %bb.ry
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %100) #19
  %i.avi = load ptr, ptr %101, align 8, !tbaa !38, !noalias !237 ; 2 uses
  %i.avj = load ptr, ptr %i.avi, align 8, !tbaa !40
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avj, i64 24
  %i.avl = load ptr, ptr %i.avk, align 8
  invoke void %i.avl(ptr noundef nonnull align 8 dereferenceable(8) %i.avi, ptr noundef nonnull align 8 dereferenceable(688) %101, ptr noundef nonnull align 8 dereferenceable(208) %100, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit233.i unwind label %bb.sa

bb.sa:                                            ; preds = %bb.rz
  %i.avm = landingpad { ptr, i32 }
          cleanup
  br label %.body231.i

_ZNK2cv7MatExprcvNS_3MatEEv.exit233.i:            ; preds = %bb.rz
  invoke fastcc void @_ZN2cvL8quat2rotERKNS_3MatE(ptr dead_on_unwind noalias writable align 8 %99, ptr noundef nonnull align 8 dereferenceable(208) %100)
          to label %bb.sb unwind label %bb.sj

bb.sb:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit233.i
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %100) #19
  %i.avn = getelementptr inbounds nuw i8, ptr %101, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.avn) #19
  %i.avo = getelementptr inbounds nuw i8, ptr %101, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.avo) #19
  %i.avp = getelementptr inbounds nuw i8, ptr %101, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.avp) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %102) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #19
  %i.avq = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %323, ptr noundef nonnull align 8 dereferenceable(208) %99)
          to label %bb.sc unwind label %bb.sm     ; 0 uses

bb.sc:                                            ; preds = %bb.sb
  %i.avr = load ptr, ptr %i.anj, align 8, !tbaa !22
  %i.avs = load ptr, ptr %297, align 8, !tbaa !23
  %i.avt = ptrtoint ptr %i.avr to i64
  %i.avu = ptrtoint ptr %i.avs to i64
  %i.avv = sub i64 %i.avt, %i.avu
  %i.avw = sdiv exact i64 %i.avv, 208             ; 2 uses
  %i.avx = add nsw i64 %i.avw, -1
  %i.avy = mul i64 %i.avx, %i.avw
  %i.avz = uitofp i64 %i.avy to double
  %i.awa = fmul nnan double %i.avz, 5.000000e-01
  %i.awb = fptosi double %i.awa to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #19
  %i.awc = mul nsw i32 %i.awb, 3                  ; 2 uses
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %103, i32 noundef %i.awc, i32 noundef 3, i32 noundef 6)
          to label %bb.sd unwind label %bb.sn

bb.sd:                                            ; preds = %bb.sc
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #19
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %104, i32 noundef %i.awc, i32 noundef 1, i32 noundef 6)
          to label %bb.se unwind label %bb.so

bb.se:                                            ; preds = %bb.sd
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %106) #19
  invoke void @_ZN2cv3Mat3eyeEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %106, i32 noundef 3, i32 noundef 3, i32 noundef 6)
          to label %bb.sf unwind label %bb.sp

bb.sf:                                            ; preds = %bb.se
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %105) #19
  %i.awd = load ptr, ptr %106, align 8, !tbaa !38, !noalias !238 ; 2 uses
  %i.awe = load ptr, ptr %i.awd, align 8, !tbaa !40
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awe, i64 24
  %i.awg = load ptr, ptr %i.awf, align 8
  invoke void %i.awg(ptr noundef nonnull align 8 dereferenceable(8) %i.awd, ptr noundef nonnull align 8 dereferenceable(688) %106, ptr noundef nonnull align 8 dereferenceable(208) %105, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit236.i unwind label %.body234.i

.body234.i:                                       ; preds = %bb.sf
  %i.awh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %105) #19
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %106) #19
  br label %bb.sq

_ZNK2cv7MatExprcvNS_3MatEEv.exit236.i:            ; preds = %bb.sf
  %i.awi = getelementptr inbounds nuw i8, ptr %106, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.awi) #19
  %i.awj = getelementptr inbounds nuw i8, ptr %106, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.awj) #19
  %i.awk = getelementptr inbounds nuw i8, ptr %106, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.awk) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #19
  %i.awl = load ptr, ptr %i.anj, align 8, !tbaa !22 ; 2 uses
  %i.awm = load ptr, ptr %297, align 8, !tbaa !23 ; 2 uses
  %.not478.i = icmp eq ptr %i.awl, %i.awm
  br i1 %.not478.i, label %._crit_edge477.i, label %.lr.ph476.i

.lr.ph476.i:                                      ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit236.i
  %i.awn = getelementptr inbounds nuw i8, ptr %108, i64 432
  %i.awo = getelementptr inbounds nuw i8, ptr %108, i64 224
  %i.awp = getelementptr inbounds nuw i8, ptr %108, i64 16
  %i.awq = getelementptr inbounds nuw i8, ptr %111, i64 432
  %i.awr = getelementptr inbounds nuw i8, ptr %111, i64 224
  %i.aws = getelementptr inbounds nuw i8, ptr %111, i64 16
  %i.awt = getelementptr inbounds nuw i8, ptr %120, i64 432
  %i.awu = getelementptr inbounds nuw i8, ptr %120, i64 224
  %i.awv = getelementptr inbounds nuw i8, ptr %120, i64 16
  %i.aww = getelementptr inbounds nuw i8, ptr %123, i64 4
  %i.awx = getelementptr inbounds nuw i8, ptr %123, i64 8
  %i.awy = getelementptr inbounds nuw i8, ptr %123, i64 12
  %i.awz = getelementptr inbounds nuw i8, ptr %121, i64 8
  %i.axa = getelementptr inbounds nuw i8, ptr %121, i64 16
  %i.axb = getelementptr inbounds nuw i8, ptr %125, i64 432
  %i.axc = getelementptr inbounds nuw i8, ptr %125, i64 224
  %i.axd = getelementptr inbounds nuw i8, ptr %125, i64 16
  %i.axe = getelementptr inbounds nuw i8, ptr %126, i64 432
  %i.axf = getelementptr inbounds nuw i8, ptr %126, i64 224
  %i.axg = getelementptr inbounds nuw i8, ptr %126, i64 16
  %i.axh = getelementptr inbounds nuw i8, ptr %129, i64 4
  %i.axi = getelementptr inbounds nuw i8, ptr %129, i64 8
  %i.axj = getelementptr inbounds nuw i8, ptr %129, i64 12
  %i.axk = getelementptr inbounds nuw i8, ptr %127, i64 8
  %i.axl = getelementptr inbounds nuw i8, ptr %127, i64 16
  br label %bb.sr

.loopexit.i211:                                   ; preds = %bb.tc
  %i.axm = icmp ult i64 %i.axx, %i.azm
  br i1 %i.axm, label %bb.sr, label %._crit_edge477.i, !llvm.loop !161

bb.sg:                                            ; preds = %._crit_edge.i207
  %i.axn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #19
  br label %bb.us

bb.sh:                                            ; preds = %bb.rx
  %i.axo = landingpad { ptr, i32 }
          cleanup
  br label %bb.sl

bb.si:                                            ; preds = %bb.ry
  %i.axp = landingpad { ptr, i32 }
          cleanup
  br label %bb.sk

bb.sj:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit233.i
  %i.axq = landingpad { ptr, i32 }
          cleanup
  br label %.body231.i

.body231.i:                                       ; preds = %bb.sj, %bb.sa
  %.pn138.i209 = phi { ptr, i32 } [ %i.axq, %bb.sj ], [ %i.avm, %bb.sa ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %100) #19
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %101) #19
  br label %bb.sk

bb.sk:                                            ; preds = %.body231.i, %bb.si
  %.pn138.pn.i208 = phi { ptr, i32 } [ %.pn138.i209, %.body231.i ], [ %i.axp, %bb.si ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %102) #19
  br label %bb.sl

bb.sl:                                            ; preds = %bb.sk, %bb.sh
  %.pn138.pn.pn.i = phi { ptr, i32 } [ %.pn138.pn.i208, %bb.sk ], [ %i.axo, %bb.sh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #19
  br label %bb.ur

bb.sm:                                            ; preds = %bb.sb
  %i.axr = landingpad { ptr, i32 }
          cleanup
  br label %bb.uq

bb.sn:                                            ; preds = %bb.sc
  %i.axs = landingpad { ptr, i32 }
          cleanup
  br label %bb.up

bb.so:                                            ; preds = %bb.sd
  %i.axt = landingpad { ptr, i32 }
          cleanup
  br label %bb.uo

bb.sp:                                            ; preds = %bb.se
  %i.axu = landingpad { ptr, i32 }
          cleanup
  br label %bb.sq

bb.sq:                                            ; preds = %bb.sp, %.body234.i
  %.pn142.i210 = phi { ptr, i32 } [ %i.awh, %.body234.i ], [ %i.axu, %bb.sp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #19
  br label %bb.un

bb.sr:                                            ; preds = %.loopexit.i211, %.lr.ph476.i
  %i.axv = phi ptr [ %i.awm, %.lr.ph476.i ], [ %i.azi, %.loopexit.i211 ] ; 2 uses
  %i.axw = phi ptr [ %i.awl, %.lr.ph476.i ], [ %i.azh, %.loopexit.i211 ]
  %.073475.i = phi i64 [ 0, %.lr.ph476.i ], [ %i.axx, %.loopexit.i211 ] ; 3 uses
  %.074474.i = phi i32 [ 0, %.lr.ph476.i ], [ %i.azg, %.loopexit.i211 ]
  %i.axx = add nuw i64 %.073475.i, 1              ; 4 uses
  %i.axy = ptrtoint ptr %i.axw to i64
  %i.axz = ptrtoint ptr %i.axv to i64
  %i.aya = sub i64 %i.axy, %i.axz
  %i.ayb = sdiv exact i64 %i.aya, 208
  %i.ayc = icmp ult i64 %i.axx, %i.ayb
  br i1 %i.ayc, label %.lr.ph472.i, label %._crit_edge477.i

.lr.ph472.i:                                      ; preds = %bb.sr, %bb.tc
  %i.ayd = phi ptr [ %i.azi, %bb.tc ], [ %i.axv, %bb.sr ]
  %.0470.i = phi i64 [ %i.azf, %bb.tc ], [ %i.axx, %bb.sr ] ; 3 uses
  %.1469.i = phi i32 [ %i.azg, %bb.tc ], [ %.074474.i, %bb.sr ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %108) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %109) #19
  %i.aye = getelementptr inbounds nuw [208 x i8], ptr %i.ayd, i64 %.0470.i
  invoke fastcc void @_ZN2cvL18homogeneousInverseERKNS_3MatE(ptr dead_on_unwind noalias writable align 8 %109, ptr noundef nonnull align 8 dereferenceable(208) %i.aye)
          to label %bb.ss unwind label %bb.td

bb.ss:                                            ; preds = %.lr.ph472.i
  %i.ayf = load ptr, ptr %297, align 8, !tbaa !23
  %i.ayg = getelementptr inbounds nuw [208 x i8], ptr %i.ayf, i64 %.073475.i
  invoke void @_ZN2cvmlERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %108, ptr noundef nonnull align 8 dereferenceable(208) %109, ptr noundef nonnull align 8 dereferenceable(208) %i.ayg)
          to label %bb.st unwind label %bb.te

bb.st:                                            ; preds = %bb.ss
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %107) #19
  %i.ayh = load ptr, ptr %108, align 8, !tbaa !38, !noalias !239 ; 2 uses
  %i.ayi = load ptr, ptr %i.ayh, align 8, !tbaa !40
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayi, i64 24
  %i.ayk = load ptr, ptr %i.ayj, align 8
  invoke void %i.ayk(ptr noundef nonnull align 8 dereferenceable(8) %i.ayh, ptr noundef nonnull align 8 dereferenceable(688) %108, ptr noundef nonnull align 8 dereferenceable(208) %107, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit239.i unwind label %.body237.i

.body237.i:                                       ; preds = %bb.st
  %i.ayl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %107) #19
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %108) #19
  br label %bb.tf

_ZNK2cv7MatExprcvNS_3MatEEv.exit239.i:            ; preds = %bb.st
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.awn) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.awo) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.awp) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %109) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %110) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %111) #19
  %i.aym = load ptr, ptr %310, align 8, !tbaa !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %112) #19
  %i.ayn = getelementptr inbounds nuw [208 x i8], ptr %i.aym, i64 %.073475.i
  invoke fastcc void @_ZN2cvL18homogeneousInverseERKNS_3MatE(ptr dead_on_unwind noalias writable align 8 %112, ptr noundef nonnull align 8 dereferenceable(208) %i.ayn)
end_hunk_4
begin_hunk_5_@_ZN2cv16calibrateHandEyeERKNS_11_InputArrayES2_S2_S2_RKNS_12_OutputArrayES5_NS_24HandEyeCalibrationMethodE:bb.a
  %i.baa = landingpad { ptr, i32 }
          cleanup
  br label %bb.tz

bb.ty:                                            ; preds = %bb.tb
  %i.bab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %128) #19
  br label %bb.tz

bb.tz:                                            ; preds = %bb.ty, %bb.tx
  %.pn164.pn.i = phi { ptr, i32 } [ %i.bab, %bb.ty ], [ %i.baa, %bb.tx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %124) #19
  br label %bb.ua

bb.ua:                                            ; preds = %bb.tz, %bb.tw
  %.pn164.pn.pn.i = phi { ptr, i32 } [ %.pn164.pn.i, %bb.tz ], [ %.pn161.pn.i, %bb.tw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #19
  br label %bb.ub

bb.ub:                                            ; preds = %bb.ua, %bb.ts
  %.pn164.pn.pn.pn.i = phi { ptr, i32 } [ %.pn164.pn.pn.i, %bb.ua ], [ %.pn158.pn.i, %bb.ts ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %119) #19
  br label %bb.uc

bb.uc:                                            ; preds = %bb.ub, %bb.tp
  %.pn164.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn164.pn.pn.pn.i, %bb.ub ], [ %.pn156.i, %bb.tp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %117) #19
  br label %bb.ud

bb.ud:                                            ; preds = %bb.uc, %bb.tn
  %.pn164.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn164.pn.pn.pn.pn.i, %bb.uc ], [ %i.azu, %bb.tn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %117) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %115) #19
  br label %bb.ue

bb.ue:                                            ; preds = %bb.ud, %bb.tm
  %.pn164.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn164.pn.pn.pn.pn.pn.i, %bb.ud ], [ %i.azt, %bb.tm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %113) #19
  br label %bb.uf

bb.uf:                                            ; preds = %bb.ue, %bb.tl
  %.pn164.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn164.pn.pn.pn.pn.pn.pn.i, %bb.ue ], [ %i.azs, %bb.tl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %110) #19
  br label %bb.ug

bb.ug:                                            ; preds = %bb.uf, %bb.tk
  %.pn164.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn164.pn.pn.pn.pn.pn.pn.pn.i, %bb.uf ], [ %.pn153.pn.i, %bb.tk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %107) #19
  br label %bb.uh

bb.uh:                                            ; preds = %bb.ug, %bb.tg
  %.pn164.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn164.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.ug ], [ %.pn150.pn.i, %bb.tg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #19
  br label %bb.um

._crit_edge477.i:                                 ; preds = %bb.sr, %.loopexit.i211, %_ZNK2cv7MatExprcvNS_3MatEEv.exit236.i
  call void @llvm.lifetime.start.p0(ptr nonnull %130) #19
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %130) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %131) #19
  %i.bac = getelementptr inbounds nuw i8, ptr %131, i64 16
  store i32 0, ptr %i.bac, align 8, !tbaa !47
  %i.bad = getelementptr inbounds nuw i8, ptr %131, i64 20
  store i32 0, ptr %i.bad, align 4, !tbaa !48
  store i32 16842752, ptr %131, align 8, !tbaa !45
  %i.bae = getelementptr inbounds nuw i8, ptr %131, i64 8
  store ptr %103, ptr %i.bae, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %132) #19
  %i.baf = getelementptr inbounds nuw i8, ptr %132, i64 16
  store i32 0, ptr %i.baf, align 8, !tbaa !47
  %i.bag = getelementptr inbounds nuw i8, ptr %132, i64 20
  store i32 0, ptr %i.bag, align 4, !tbaa !48
  store i32 16842752, ptr %132, align 8, !tbaa !45
  %i.bah = getelementptr inbounds nuw i8, ptr %132, i64 8
  store ptr %104, ptr %i.bah, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %133) #19
  %i.bai = getelementptr inbounds nuw i8, ptr %133, i64 8
  %i.baj = getelementptr inbounds nuw i8, ptr %133, i64 16
  store i64 0, ptr %i.baj, align 8
  store i32 33619968, ptr %133, align 8, !tbaa !45
  store ptr %130, ptr %i.bai, align 8, !tbaa !46
  %i.bak = invoke noundef zeroext i1 @_ZN2cv5solveERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %131, ptr noundef nonnull align 8 dereferenceable(24) %132, ptr noundef nonnull align 8 dereferenceable(24) %133, i32 noundef 1)
          to label %bb.ui unwind label %bb.uj     ; 0 uses

bb.ui:                                            ; preds = %._crit_edge477.i
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #19
  %i.bal = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %325, ptr noundef nonnull align 8 dereferenceable(208) %130)
          to label %_ZN2cvL22calibrateHandEyeHoraudERKSt6vectorINS_3MatESaIS1_EES5_RS1_S6_.exit unwind label %bb.uk ; 0 uses

bb.uj:                                            ; preds = %._crit_edge477.i
  %i.bam = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #19
  br label %bb.ul

bb.uk:                                            ; preds = %bb.ui
  %i.ban = landingpad { ptr, i32 }
          cleanup
  br label %bb.ul

bb.ul:                                            ; preds = %bb.uk, %bb.uj
  %.pn148.i = phi { ptr, i32 } [ %i.ban, %bb.uk ], [ %i.bam, %bb.uj ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %130) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #19
  br label %bb.um

bb.um:                                            ; preds = %bb.ul, %bb.uh
  %.pn164.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn164.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.uh ], [ %.pn148.i, %bb.ul ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %105) #19
  br label %bb.un

bb.un:                                            ; preds = %bb.um, %bb.sq
  %.pn164.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn164.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.um ], [ %.pn142.i210, %bb.sq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %104) #19
  br label %bb.uo

bb.uo:                                            ; preds = %bb.un, %bb.so
  %.pn164.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn164.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.un ], [ %i.axt, %bb.so ]
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %103) #19
  br label %bb.up

bb.up:                                            ; preds = %bb.uo, %bb.sn
  %.pn164.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn164.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.uo ], [ %i.axs, %bb.sn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #19
  br label %bb.uq

bb.uq:                                            ; preds = %bb.up, %bb.sm
  %.pn164.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn164.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.up ], [ %i.axr, %bb.sm ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %99) #19
  br label %bb.ur

bb.ur:                                            ; preds = %bb.uq, %bb.sl
  %.pn164.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn164.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.uq ], [ %.pn138.pn.pn.i, %bb.sl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #19
  br label %bb.us

bb.us:                                            ; preds = %bb.ur, %bb.sg
  %.pn164.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn164.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.ur ], [ %i.axn, %bb.sg ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %95) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %94) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #19
  br label %bb.ut

bb.ut:                                            ; preds = %bb.us, %bb.rw
  %.pn188.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn188.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.rw ], [ %.pn164.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.us ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %79) #19
  br label %bb.uu

bb.uu:                                            ; preds = %bb.ut, %.body.i204
  %.pn188.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn188.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.ut ], [ %i.anf, %.body.i204 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #19
  br label %.body183

_ZN2cvL22calibrateHandEyeHoraudERKSt6vectorINS_3MatESaIS1_EES5_RS1_S6_.exit: ; preds = %bb.ui
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %130) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %105) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %104) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %103) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %99) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %95) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %94) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %79) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #19
  br label %bb.zh

bb.uv:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit175
  %i.bao = getelementptr inbounds nuw i8, ptr %297, i64 8 ; 3 uses
  %i.bap = load ptr, ptr %i.bao, align 8, !tbaa !22
  %i.baq = load ptr, ptr %297, align 8, !tbaa !23
  %i.bar = ptrtoint ptr %i.bap to i64
  %i.bas = ptrtoint ptr %i.baq to i64
  %i.bat = sub i64 %i.bar, %i.bas
  %i.bau = sdiv exact i64 %i.bat, 208             ; 2 uses
  %i.bav = add nsw i64 %i.bau, -1
  %i.baw = mul i64 %i.bav, %i.bau
  %i.bax = uitofp i64 %i.baw to double
  %i.bay = fmul nnan double %i.bax, 5.000000e-01
  %i.baz = fptosi double %i.bay to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.bba = mul nsw i32 %i.baz, 12                 ; 2 uses
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef %i.bba, i32 noundef 12, i32 noundef 6)
          to label %.noexc234 unwind label %bb.lg

.noexc234:                                        ; preds = %bb.uv
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %8, i32 noundef %i.bba, i32 noundef 1, i32 noundef 6)
          to label %bb.uw unwind label %bb.vb

bb.uw:                                            ; preds = %.noexc234
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  invoke void @_ZN2cv3Mat3eyeEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %10, i32 noundef 9, i32 noundef 9, i32 noundef 6)
          to label %bb.ux unwind label %bb.vc

bb.ux:                                            ; preds = %bb.uw
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %9) #19
  %i.bbb = load ptr, ptr %10, align 8, !tbaa !38, !noalias !243 ; 2 uses
  %i.bbc = load ptr, ptr %i.bbb, align 8, !tbaa !40
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bbc, i64 24
  %i.bbe = load ptr, ptr %i.bbd, align 8
  invoke void %i.bbe(ptr noundef nonnull align 8 dereferenceable(8) %i.bbb, ptr noundef nonnull align 8 dereferenceable(688) %10, ptr noundef nonnull align 8 dereferenceable(208) %9, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i223 unwind label %.body.i222

.body.i222:                                       ; preds = %bb.ux
  %i.bbf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #19
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %10) #19
  br label %bb.vd

_ZNK2cv7MatExprcvNS_3MatEEv.exit.i223:            ; preds = %bb.ux
  %i.bbg = getelementptr inbounds nuw i8, ptr %10, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bbg) #19
  %i.bbh = getelementptr inbounds nuw i8, ptr %10, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bbh) #19
  %i.bbi = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bbi) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  invoke void @_ZN2cv3Mat3eyeEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %12, i32 noundef 3, i32 noundef 3, i32 noundef 6)
          to label %bb.uy unwind label %bb.ve

bb.uy:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i223
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %11) #19
  %i.bbj = load ptr, ptr %12, align 8, !tbaa !38, !noalias !244 ; 2 uses
  %i.bbk = load ptr, ptr %i.bbj, align 8, !tbaa !40
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbk, i64 24
  %i.bbm = load ptr, ptr %i.bbl, align 8
  invoke void %i.bbm(ptr noundef nonnull align 8 dereferenceable(8) %i.bbj, ptr noundef nonnull align 8 dereferenceable(688) %12, ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit158.i unwind label %.body156.i

.body156.i:                                       ; preds = %bb.uy
  %i.bbn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #19
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %12) #19
  br label %bb.vf

_ZNK2cv7MatExprcvNS_3MatEEv.exit158.i:            ; preds = %bb.uy
  %i.bbo = getelementptr inbounds nuw i8, ptr %12, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bbo) #19
  %i.bbp = getelementptr inbounds nuw i8, ptr %12, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bbp) #19
  %i.bbq = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bbq) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %14, i32 noundef 9, i32 noundef 3, i32 noundef 6)
          to label %bb.uz unwind label %bb.vg

bb.uz:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit158.i
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %13) #19
  %i.bbr = load ptr, ptr %14, align 8, !tbaa !38, !noalias !245 ; 2 uses
  %i.bbs = load ptr, ptr %i.bbr, align 8, !tbaa !40
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbs, i64 24
  %i.bbu = load ptr, ptr %i.bbt, align 8
  invoke void %i.bbu(ptr noundef nonnull align 8 dereferenceable(8) %i.bbr, ptr noundef nonnull align 8 dereferenceable(688) %14, ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit161.i unwind label %.body159.i

.body159.i:                                       ; preds = %bb.uz
  %i.bbv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #19
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %14) #19
  br label %bb.vh

_ZNK2cv7MatExprcvNS_3MatEEv.exit161.i:            ; preds = %bb.uz
  %i.bbw = getelementptr inbounds nuw i8, ptr %14, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bbw) #19
  %i.bbx = getelementptr inbounds nuw i8, ptr %14, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bbx) #19
  %i.bby = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bby) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %16, i32 noundef 9, i32 noundef 1, i32 noundef 6)
          to label %bb.va unwind label %bb.vi

bb.va:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit161.i
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %15) #19
  %i.bbz = load ptr, ptr %16, align 8, !tbaa !38, !noalias !246 ; 2 uses
  %i.bca = load ptr, ptr %i.bbz, align 8, !tbaa !40
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bca, i64 24
  %i.bcc = load ptr, ptr %i.bcb, align 8
  invoke void %i.bcc(ptr noundef nonnull align 8 dereferenceable(8) %i.bbz, ptr noundef nonnull align 8 dereferenceable(688) %16, ptr noundef nonnull align 8 dereferenceable(208) %15, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit164.i unwind label %.body162.i

.body162.i:                                       ; preds = %bb.va
  %i.bcd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #19
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %16) #19
  br label %bb.vj

_ZNK2cv7MatExprcvNS_3MatEEv.exit164.i:            ; preds = %bb.va
  %i.bce = getelementptr inbounds nuw i8, ptr %16, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bce) #19
  %i.bcf = getelementptr inbounds nuw i8, ptr %16, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bcf) #19
  %i.bcg = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bcg) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  %i.bch = load ptr, ptr %i.bao, align 8, !tbaa !22 ; 2 uses
  %i.bci = load ptr, ptr %297, align 8, !tbaa !23 ; 2 uses
  %.not.i224 = icmp eq ptr %i.bch, %i.bci
  br i1 %.not.i224, label %._crit_edge.i225, label %.lr.ph228.i

.lr.ph228.i:                                      ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit164.i
  %i.bcj = getelementptr inbounds nuw i8, ptr %18, i64 432
  %i.bck = getelementptr inbounds nuw i8, ptr %18, i64 224
  %i.bcl = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.bcm = getelementptr inbounds nuw i8, ptr %21, i64 432
  %i.bcn = getelementptr inbounds nuw i8, ptr %21, i64 224
  %i.bco = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.bcp = getelementptr inbounds nuw i8, ptr %32, i64 432
  %i.bcq = getelementptr inbounds nuw i8, ptr %32, i64 224
  %i.bcr = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.bcs = getelementptr inbounds nuw i8, ptr %37, i64 432
  %i.bct = getelementptr inbounds nuw i8, ptr %37, i64 224
  %i.bcu = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.bcv = getelementptr inbounds nuw i8, ptr %39, i64 432
  %i.bcw = getelementptr inbounds nuw i8, ptr %39, i64 224
  %i.bcx = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.bcy = getelementptr inbounds nuw i8, ptr %42, i64 4
  %i.bcz = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.bda = getelementptr inbounds nuw i8, ptr %42, i64 12
  %i.bdb = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.bdc = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.bdd = getelementptr inbounds nuw i8, ptr %45, i64 4
  %i.bde = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.bdf = getelementptr inbounds nuw i8, ptr %45, i64 12
  %i.bdg = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.bdh = getelementptr inbounds nuw i8, ptr %43, i64 16
  %i.bdi = getelementptr inbounds nuw i8, ptr %48, i64 4
  %i.bdj = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.bdk = getelementptr inbounds nuw i8, ptr %48, i64 12
  %i.bdl = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.bdm = getelementptr inbounds nuw i8, ptr %46, i64 16
  %i.bdn = getelementptr inbounds nuw i8, ptr %51, i64 4
  %i.bdo = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.bdp = getelementptr inbounds nuw i8, ptr %51, i64 12
  %i.bdq = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.bdr = getelementptr inbounds nuw i8, ptr %49, i64 16
  %i.bds = getelementptr inbounds nuw i8, ptr %54, i64 4
  %i.bdt = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.bdu = getelementptr inbounds nuw i8, ptr %54, i64 12
  %i.bdv = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.bdw = getelementptr inbounds nuw i8, ptr %52, i64 16
  %i.bdx = getelementptr inbounds nuw i8, ptr %57, i64 4
  %i.bdy = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.bdz = getelementptr inbounds nuw i8, ptr %57, i64 12
  %i.bea = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.beb = getelementptr inbounds nuw i8, ptr %55, i64 16
  br label %bb.vk

.loopexit.i233:                                   ; preds = %bb.wh
  %i.bec = icmp ult i64 %i.bek, %i.bgf
  br i1 %i.bec, label %bb.vk, label %._crit_edge.i225, !llvm.loop !179

bb.vb:                                            ; preds = %.noexc234
  %i.bed = landingpad { ptr, i32 }
          cleanup
  br label %bb.zf

bb.vc:                                            ; preds = %bb.uw
  %i.bee = landingpad { ptr, i32 }
          cleanup
  br label %bb.vd

bb.vd:                                            ; preds = %bb.vc, %.body.i222
  %.pn.i = phi { ptr, i32 } [ %i.bbf, %.body.i222 ], [ %i.bee, %bb.vc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.ze

bb.ve:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i223
  %i.bef = landingpad { ptr, i32 }
          cleanup
end_hunk_5
begin_hunk_6_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !55
  %i.l = load ptr, ptr %0, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_ZNK2cv11_InputArray12getMatVectorERSt6vectorINS_3MatESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_autoEmRKNS0_12CheckContextE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare void @_ZN2cv3Mat3eyeEiii(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #19
  ret void
}

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #5

declare void @_ZN2cv9RodriguesERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #5

declare void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cvL26calibrateHandEyeDaniilidisERKSt6vectorINS_3MatESaIS1_EES5_RS1_S6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %7 = alloca %"class.cv::Rect_", align 16        ; 4 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %9 = alloca %"class.cv::Rect_", align 16        ; 5 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %12 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %15 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %16 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %17 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %19 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %20 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %21 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %22 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %23 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %24 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %25 = alloca %"class.cv::Mat", align 8          ; 15 uses
  %26 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %27 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %28 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %29 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %30 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %31 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %32 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %33 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %34 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %35 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %36 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %37 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %38 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %39 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %40 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %41 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %42 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %43 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %44 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %45 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %46 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %47 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %48 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %49 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %50 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %51 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %52 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %53 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %54 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %55 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %56 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %57 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %58 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %59 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %60 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %61 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %62 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %63 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %64 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %65 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %66 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %67 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %68 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %69 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %70 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %71 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %72 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %73 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %74 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %75 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %76 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %77 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %78 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %79 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %80 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %81 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %82 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %83 = alloca %"class.cv::Mat", align 8          ; 14 uses
  %84 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %85 = alloca %"class.cv::Mat", align 8          ; 14 uses
  %86 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %87 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %88 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %89 = alloca %"class.cv::Mat", align 8          ; 14 uses
  %90 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %91 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %92 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %93 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %94 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %95 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %96 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %97 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %98 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %99 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %100 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %101 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %102 = alloca %"class.cv::Mat", align 8         ; 9 uses
  %103 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %104 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %105 = alloca %"class.cv::Mat", align 8         ; 9 uses
  %106 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %107 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %108 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %109 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %110 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %111 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %112 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %113 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %114 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %115 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %116 = alloca %"class.cv::Mat", align 8         ; 9 uses
  %117 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %118 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %119 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %120 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %121 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %122 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %123 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %124 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %125 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %126 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %127 = alloca %"class.cv::Mat", align 8         ; 13 uses
  %128 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %129 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %130 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %131 = alloca %"class.cv::Rect_", align 16      ; 5 uses
  %132 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %133 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %134 = alloca %"class.cv::Rect_", align 16      ; 5 uses
  %135 = alloca %"class.cv::Mat", align 8         ; 13 uses
  %136 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %137 = alloca %"class.cv::Rect_", align 16      ; 5 uses
  %138 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %139 = alloca %"class.cv::Rect_", align 16      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.c = load ptr, ptr %0, align 8, !tbaa !23
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 208                 ; 2 uses
  %i.h = add nsw i64 %i.g, -1
  %i.i = mul i64 %i.h, %i.g
  %i.j = uitofp i64 %i.i to double
  %i.k = fmul nnan double %i.j, 5.000000e-01
  %i.l = fptosi double %i.k to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  %i.m = mul nsw i32 %i.l, 6
  call void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %26, i32 noundef %i.m, i32 noundef 8, i32 noundef 6)
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %25) #19
  %i.n = load ptr, ptr %26, align 8, !tbaa !38, !noalias !293 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(688) %26, ptr noundef nonnull align 8 dereferenceable(208) %25, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body

.body:                                            ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #19
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %26) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  br label %bb.jl

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %26, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.s) #19
  %i.t = getelementptr inbounds nuw i8, ptr %26, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.t) #19
  %i.u = getelementptr inbounds nuw i8, ptr %26, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.u) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %.not = icmp eq ptr %i.v, %i.w
  br i1 %.not, label %._crit_edge, label %.lr.ph400

.lr.ph400:                                        ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %28, i64 432
  %i.y = getelementptr inbounds nuw i8, ptr %28, i64 224
  %i.z = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %31, i64 432
  %i.ab = getelementptr inbounds nuw i8, ptr %31, i64 224
  %i.ac = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %33, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %34, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %44, i64 432
  %i.ak = getelementptr inbounds nuw i8, ptr %44, i64 224
  %i.al = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %47, i64 432
  %i.an = getelementptr inbounds nuw i8, ptr %47, i64 224
  %i.ao = getelementptr inbounds nuw i8, ptr %47, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %49, i64 432
  %i.aq = getelementptr inbounds nuw i8, ptr %49, i64 224
  %i.ar = getelementptr inbounds nuw i8, ptr %49, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %52, i64 432
  %i.at = getelementptr inbounds nuw i8, ptr %52, i64 224
  %i.au = getelementptr inbounds nuw i8, ptr %52, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %54, i64 432
  %i.aw = getelementptr inbounds nuw i8, ptr %54, i64 224
  %i.ax = getelementptr inbounds nuw i8, ptr %54, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %57, i64 432
  %i.az = getelementptr inbounds nuw i8, ptr %57, i64 224
  %i.ba = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %60, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %60, i64 12
  %i.be = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %58, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %63, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %63, i64 12
  %i.bj = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %61, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %66, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %66, i64 12
  %i.bo = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %64, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %69, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %69, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %69, i64 12
  %i.bt = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %67, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %72, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %72, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %72, i64 12
  %i.by = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %70, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %75, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %75, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %75, i64 12
  %i.cd = getelementptr inbounds nuw i8, ptr %73, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %73, i64 16
  br label %bb.b

.loopexit:                                        ; preds = %bb.ax
  %i.cf = icmp ult i64 %i.ci, %i.fg
  br i1 %i.cf, label %bb.b, label %._crit_edge, !llvm.loop !255

bb.b:                                             ; preds = %.lr.ph400, %.loopexit
  %i.cg = phi ptr [ %i.w, %.lr.ph400 ], [ %i.fc, %.loopexit ] ; 2 uses
  %i.ch = phi ptr [ %i.v, %.lr.ph400 ], [ %i.fb, %.loopexit ]
  %.056399 = phi i64 [ 0, %.lr.ph400 ], [ %i.ci, %.loopexit ] ; 3 uses
  %.057398 = phi i32 [ 0, %.lr.ph400 ], [ %i.fa, %.loopexit ]
  %i.ci = add nuw i64 %.056399, 1                 ; 4 uses
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = sdiv exact i64 %i.cl, 208
  %i.cn = icmp ult i64 %i.ci, %i.cm
  br i1 %i.cn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.ax
  %i.co = phi ptr [ %i.fc, %bb.ax ], [ %i.cg, %bb.b ]
  %.055397 = phi i64 [ %i.ez, %bb.ax ], [ %i.ci, %bb.b ] ; 3 uses
  %.1396 = phi i32 [ %i.fa, %bb.ax ], [ %.057398, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  %i.cp = getelementptr inbounds nuw [208 x i8], ptr %i.co, i64 %.055397
  invoke fastcc void @_ZN2cvL18homogeneousInverseERKNS_3MatE(ptr dead_on_unwind noalias writable align 8 %29, ptr noundef nonnull align 8 dereferenceable(208) %i.cp)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %.lr.ph
  %i.cq = load ptr, ptr %0, align 8, !tbaa !23
  %i.cr = getelementptr inbounds nuw [208 x i8], ptr %i.cq, i64 %.056399
  invoke void @_ZN2cvmlERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %28, ptr noundef nonnull align 8 dereferenceable(208) %29, ptr noundef nonnull align 8 dereferenceable(208) %i.cr)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %27) #19
  %i.cs = load ptr, ptr %28, align 8, !tbaa !38, !noalias !294 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !40
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  invoke void %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull align 8 dereferenceable(688) %28, ptr noundef nonnull align 8 dereferenceable(208) %27, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit289 unwind label %.body287

.body287:                                         ; preds = %bb.d
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #19
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %28) #19
  br label %bb.l

_ZNK2cv7MatExprcvNS_3MatEEv.exit289:              ; preds = %bb.d
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.x) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.y) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.z) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  %i.cx = load ptr, ptr %1, align 8, !tbaa !23    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  %i.cy = getelementptr inbounds nuw [208 x i8], ptr %i.cx, i64 %.056399
  invoke fastcc void @_ZN2cvL18homogeneousInverseERKNS_3MatE(ptr dead_on_unwind noalias writable align 8 %32, ptr noundef nonnull align 8 dereferenceable(208) %i.cy)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit289
  %i.cz = getelementptr inbounds nuw [208 x i8], ptr %i.cx, i64 %.055397
  invoke void @_ZN2cvmlERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %31, ptr noundef nonnull align 8 dereferenceable(208) %i.cz, ptr noundef nonnull align 8 dereferenceable(208) %32)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %30) #19
  %i.da = load ptr, ptr %31, align 8, !tbaa !38, !noalias !295 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !40
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  invoke void %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %i.da, ptr noundef nonnull align 8 dereferenceable(688) %31, ptr noundef nonnull align 8 dereferenceable(208) %30, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit292 unwind label %.body290

.body290:                                         ; preds = %bb.f
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #19
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %31) #19
  br label %bb.p

_ZNK2cv7MatExprcvNS_3MatEEv.exit292:              ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aa) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ab) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ac) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #19
  invoke fastcc void @_ZN2cvL26homogeneous2dualQuaternionERKNS_3MatE(ptr dead_on_unwind noalias writable align 8 %33, ptr noundef nonnull align 8 dereferenceable(208) %27)
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit292
  %i.df = load ptr, ptr %i.ad, align 8, !tbaa !56
  %i.dg = load double, ptr %i.df, align 8, !tbaa !57
  %i.dh = fcmp olt double %i.dg, 0.000000e+00
  br i1 %i.dh, label %bb.h, label %bb.t

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  store i64 0, ptr %i.af, align 8
  store i32 33619968, ptr %24, align 8, !tbaa !45
end_hunk_6
