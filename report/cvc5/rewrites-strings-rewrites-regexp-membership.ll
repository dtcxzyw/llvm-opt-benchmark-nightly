Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/rewrites-strings-rewrites-regexp-membership?download=true
inline.NumInlined: 863
inline.NumDeleted: 88
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4cvc58internal8rewriter46addRewrites_strings_rewrites_regexp_membershipEPNS0_11NodeManagerERNS1_9RewriteDbE:bb.a
  %47 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %48 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %49 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %50 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %51 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %52 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %53 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 4 uses
  %54 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %55 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %56 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %57 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %58 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %59 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %60 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 8 uses
  %61 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 10 uses
  %62 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %63 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %64 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %65 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %66 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %67 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %68 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %69 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 4 uses
  %70 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %71 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %72 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %73 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %74 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %75 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %76 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 8 uses
  %77 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 10 uses
  %78 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %79 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 4 uses
  %80 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %81 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %82 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %83 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %84 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %85 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 4 uses
  %86 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %87 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %88 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %89 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %90 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %91 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 4 uses
  %92 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %93 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %94 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %95 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %96 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %97 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 4 uses
  %98 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %99 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %100 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %101 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %102 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 7 uses
  %103 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 7 uses
  %104 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %105 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 4 uses
  %106 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %107 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 4 uses
  %108 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 7 uses
  %109 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %110 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %111 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %112 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 4 uses
  %113 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %114 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %115 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %116 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %117 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %118 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %119 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %120 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %121 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %122 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %123 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %124 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %125 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %126 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %127 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %128 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %129 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %130 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %131 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %132 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %133 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %134 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %135 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %136 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %137 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %138 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %139 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %140 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %141 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %142 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %143 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %144 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %145 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %146 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %147 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %148 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 2 uses
  %149 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %150 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %151 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %152 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %153 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %154 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %155 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %156 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %157 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %158 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %159 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %160 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %161 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %162 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %163 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %164 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 2 uses
  %165 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %166 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %167 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %168 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %169 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %170 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %171 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %172 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %173 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %174 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %175 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %176 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %177 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %178 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %179 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %180 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %181 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %182 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %183 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %184 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %185 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %186 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %187 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %188 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %189 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 18 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %190 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %191 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %192 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %193 = alloca %"class.cvc5::internal::String", align 8 ; 9 uses
  %194 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %195 = alloca %"class.cvc5::internal::String", align 8 ; 9 uses
  %196 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %197 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %198 = alloca %"class.cvc5::internal::String", align 8 ; 10 uses
  %199 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %200 = alloca %"class.cvc5::internal::String", align 8 ; 9 uses
  %201 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %202 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %203 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %204 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %205 = alloca %"class.cvc5::internal::Rational", align 8 ; 7 uses
  %206 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %207 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %208 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %209 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %210 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %211 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %212 = alloca %"class.std::vector.103", align 8 ; 10 uses
  %213 = alloca [1 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 8 uses
  %214 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %215 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %216 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %217 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %218 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %219 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %220 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %221 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %222 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %223 = alloca %"class.std::vector.103", align 8 ; 10 uses
  %224 = alloca [1 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 8 uses
  %225 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %226 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %227 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %228 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %229 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %230 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %231 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %232 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %233 = alloca %"class.std::vector.103", align 8 ; 10 uses
  %234 = alloca [1 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 8 uses
  %235 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %236 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %237 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %238 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %239 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %240 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %241 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %242 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %243 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %244 = alloca %"class.std::vector.103", align 8 ; 10 uses
  %245 = alloca [2 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 12 uses
  %246 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %247 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %248 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %249 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %250 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %251 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %252 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %253 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %254 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %255 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %256 = alloca %"class.std::vector.103", align 8 ; 10 uses
  %257 = alloca [2 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 12 uses
  %258 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %259 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %260 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %261 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %262 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %263 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %264 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %265 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %266 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %267 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %268 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %269 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %270 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %271 = alloca %"class.std::vector.103", align 8 ; 10 uses
  %272 = alloca [4 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 18 uses
  %273 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %274 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %275 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %276 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %277 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %278 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %279 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %280 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %281 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %282 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %283 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %284 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %285 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %286 = alloca %"class.std::vector.103", align 8 ; 10 uses
  %287 = alloca [4 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 18 uses
  %288 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %289 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %290 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %291 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %292 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %293 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %294 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %295 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %296 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %297 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %298 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %299 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %300 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %301 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %302 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %303 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %304 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %305 = alloca %"class.std::vector.103", align 8 ; 10 uses
  %306 = alloca [3 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 15 uses
  %307 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %308 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %309 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %310 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %311 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %312 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %313 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %314 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %315 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %316 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %317 = alloca %"class.std::vector.103", align 8 ; 10 uses
  %318 = alloca [2 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 12 uses
  %319 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %320 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %321 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %322 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %323 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %324 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %325 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %326 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %327 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %328 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %329 = alloca %"class.cvc5::internal::Rational", align 8 ; 8 uses
  %330 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %331 = alloca %"class.std::vector.103", align 8 ; 10 uses
  %332 = alloca [1 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 8 uses
  %333 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %334 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %335 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %336 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %337 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %338 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %339 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %340 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %341 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %342 = alloca %"class.std::vector.103", align 8 ; 10 uses
  %343 = alloca [1 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 8 uses
  %344 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %345 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %346 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %347 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %115) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #17
  %i.c = getelementptr inbounds nuw i8, ptr %116, i64 16 ; 6 uses
  store ptr %i.c, ptr %116, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.c, ptr noundef nonnull align 1 dereferenceable(5) @.str, i64 5, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %116, i64 8
  store i64 5, ptr %i.d, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %116, i64 21
  store i8 0, ptr %i.e, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %117) #17
  invoke void @_ZN4cvc58internal11NodeManager10stringTypeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %117, ptr noundef nonnull align 8 dereferenceable(3592) %0)
          to label %bb.b unwind label %bb.apn

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4cvc58internal11NodeManager10mkBoundVarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8TypeNodeE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %115, ptr noundef nonnull align 8 dereferenceable(32) %116, ptr noundef nonnull align 8 dereferenceable(8) %117)
          to label %bb.c unwind label %bb.apo

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %117, align 8, !tbaa !19   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8              ; 3 uses
  %i.h = and i64 %i.g, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.h, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.i = add i64 %i.g, 1152920405095219200
  %i.j = and i64 %i.i, 1152920405095219200        ; 2 uses
  %i.k = and i64 %i.g, -1152920405095219201
  %i.l = or disjoint i64 %i.j, %i.k
  store i64 %i.l, ptr %i.f, align 8
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %bb.e, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !20

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #18
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %117) #17
  %i.p = load ptr, ptr %116, align 8, !tbaa !21   ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.c
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit
  %i.r = load i64, ptr %i.c, align 8, !tbaa !16
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %118) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %119) #17
  %i.t = getelementptr inbounds nuw i8, ptr %119, i64 16 ; 6 uses
  store ptr %i.t, ptr %119, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.t, ptr noundef nonnull align 1 dereferenceable(5) @.str.1, i64 5, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %119, i64 8
  store i64 5, ptr %i.u, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %119, i64 21
  store i8 0, ptr %i.v, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #17
  invoke void @_ZN4cvc58internal11NodeManager10stringTypeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %120, ptr noundef nonnull align 8 dereferenceable(3592) %0)
          to label %bb.g unwind label %bb.apq

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  invoke void @_ZN4cvc58internal11NodeManager10mkBoundVarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8TypeNodeE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %118, ptr noundef nonnull align 8 dereferenceable(32) %119, ptr noundef nonnull align 8 dereferenceable(8) %120)
          to label %bb.h unwind label %bb.apr

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %120, align 8, !tbaa !19   ; 3 uses
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = and i64 %i.x, 1152920405095219200
  %.not.i.i804 = icmp eq i64 %i.y, 1152920405095219200
  br i1 %.not.i.i804, label %_ZN4cvc58internal8TypeNodeD2Ev.exit805, label %bb.i, !prof !20

bb.i:                                             ; preds = %bb.h
  %i.z = add i64 %i.x, 1152920405095219200
  %i.aa = and i64 %i.z, 1152920405095219200       ; 2 uses
  %i.ab = and i64 %i.x, -1152920405095219201
  %i.ac = or disjoint i64 %i.aa, %i.ab
  store i64 %i.ac, ptr %i.w, align 8
  %i.ad = icmp eq i64 %i.aa, 0
  br i1 %i.ad, label %bb.j, label %_ZN4cvc58internal8TypeNodeD2Ev.exit805, !prof !20

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit805 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #18
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit805:           ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #17
  %i.ag = load ptr, ptr %119, align 8, !tbaa !21  ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.t
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i807, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i806

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i806: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit805
  %i.ai = load i64, ptr %i.t, align 8, !tbaa !16
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i807

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i807: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit805, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i806
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %122) #17
  %i.ak = getelementptr inbounds nuw i8, ptr %122, i64 16 ; 6 uses
  store ptr %i.ak, ptr %122, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ak, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %122, i64 8
  store i64 5, ptr %i.al, align 8, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %122, i64 21
  store i8 0, ptr %i.am, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %123) #17
  invoke void @_ZN4cvc58internal11NodeManager10stringTypeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %123, ptr noundef nonnull align 8 dereferenceable(3592) %0)
          to label %bb.l unwind label %bb.apt

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i807
  invoke void @_ZN4cvc58internal11NodeManager10mkBoundVarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8TypeNodeE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %121, ptr noundef nonnull align 8 dereferenceable(32) %122, ptr noundef nonnull align 8 dereferenceable(8) %123)
          to label %bb.m unwind label %bb.apu

bb.m:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %123, align 8, !tbaa !19  ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8            ; 3 uses
  %i.ap = and i64 %i.ao, 1152920405095219200
  %.not.i.i813 = icmp eq i64 %i.ap, 1152920405095219200
  br i1 %.not.i.i813, label %_ZN4cvc58internal8TypeNodeD2Ev.exit814, label %bb.n, !prof !20

bb.n:                                             ; preds = %bb.m
  %i.aq = add i64 %i.ao, 1152920405095219200
  %i.ar = and i64 %i.aq, 1152920405095219200      ; 2 uses
  %i.as = and i64 %i.ao, -1152920405095219201
  %i.at = or disjoint i64 %i.ar, %i.as
  store i64 %i.at, ptr %i.an, align 8
  %i.au = icmp eq i64 %i.ar, 0
  br i1 %i.au, label %bb.o, label %_ZN4cvc58internal8TypeNodeD2Ev.exit814, !prof !20

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit814 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #18
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit814:           ; preds = %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #17
  %i.ax = load ptr, ptr %122, align 8, !tbaa !21  ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ak
  br i1 %i.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i816, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i815

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i815: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit814
  %i.az = load i64, ptr %i.ak, align 8, !tbaa !16
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i816
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal8rewriter46addRewrites_strings_rewrites_regexp_membershipEPNS0_11NodeManagerERNS1_9RewriteDbE:bb.a
  br label %bb.aum

bb.aum:                                           ; preds = %bb.aul, %bb.auk
  %.pn611 = phi { ptr, i32 } [ %i.ffk, %bb.aul ], [ %i.ffj, %bb.auk ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %227) #17
  br label %bb.aun

bb.aun:                                           ; preds = %bb.aum, %bb.auj
  %.pn611.pn = phi { ptr, i32 } [ %.pn611, %bb.aum ], [ %i.ffi, %bb.auj ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %226) #17
  br label %bb.auo

bb.auo:                                           ; preds = %bb.aun, %bb.aui
  %.pn611.pn.pn = phi { ptr, i32 } [ %.pn611.pn, %bb.aun ], [ %i.ffh, %bb.aui ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %225) #17
  br label %bb.aup

bb.aup:                                           ; preds = %bb.auo, %bb.auh
  %.pn611.pn.pn.pn = phi { ptr, i32 } [ %.pn611.pn.pn, %bb.auo ], [ %i.ffg, %bb.auh ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %223) #17
  br label %.body1134

.body1134:                                        ; preds = %bb.it, %bb.is, %bb.aup
  %.pn611.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn611.pn.pn.pn, %bb.aup ], [ %i.aev, %bb.is ], [ %i.aev, %bb.it ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %224) #17
  br label %.loopexit2388

.loopexit2388:                                    ; preds = %.body1134, %bb.aug
  %.pn611.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fff, %bb.aug ], [ %.pn611.pn.pn.pn.pn, %.body1134 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %224) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %222) #17
  br label %bb.auq

bb.auq:                                           ; preds = %.loopexit2388, %bb.auf
  %.pn611.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn611.pn.pn.pn.pn.pn, %.loopexit2388 ], [ %i.ffe, %bb.auf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %222) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %221) #17
  br label %bb.aur

bb.aur:                                           ; preds = %bb.auq, %bb.aue
  %.pn611.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn611.pn.pn.pn.pn.pn.pn, %bb.auq ], [ %i.ffd, %bb.aue ]
  call void @llvm.lifetime.end.p0(ptr nonnull %221) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %219) #17
  br label %bb.aus

bb.aus:                                           ; preds = %bb.aur, %bb.aud
  %.pn611.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn611.pn.pn.pn.pn.pn.pn.pn, %bb.aur ], [ %.pn609, %bb.aud ]
  call void @llvm.lifetime.end.p0(ptr nonnull %219) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %218) #17
  br label %.body1107

.body1107:                                        ; preds = %bb.aua, %.loopexit.split-lp.loopexit.split-lp.i1101, %bb.aus
  %.pn611.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn611.pn.pn.pn.pn.pn.pn.pn.pn, %bb.aus ], [ %i.ffa, %bb.aua ], [ %lpad.loopexit.split-lp9.i1102, %.loopexit.split-lp.loopexit.split-lp.i1101 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %218) #17
  br label %bb.bbn

bb.aut:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1174
  %i.ffl = landingpad { ptr, i32 }
          cleanup
  br label %.body1181

bb.auu:                                           ; preds = %bb.kq
  %i.ffm = landingpad { ptr, i32 }
          cleanup
  br label %bb.avj

bb.auv:                                           ; preds = %bb.kt
  %i.ffn = landingpad { ptr, i32 }
          cleanup
  br label %bb.avi

bb.auw:                                           ; preds = %bb.kw
  %i.ffo = landingpad { ptr, i32 }
          cleanup
  br label %bb.avh

bb.aux:                                           ; preds = %bb.kz
  %i.ffp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit2387

bb.auy:                                           ; preds = %bb.lf
  %i.ffq = landingpad { ptr, i32 }
          cleanup
  br label %bb.avg

bb.auz:                                           ; preds = %bb.li
  %i.ffr = landingpad { ptr, i32 }
          cleanup
  br label %bb.avf

bb.ava:                                           ; preds = %bb.ll
  %i.ffs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ave

bb.avb:                                           ; preds = %bb.lo
  %i.fft = landingpad { ptr, i32 }
          cleanup
  br label %bb.avd

bb.avc:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1205
  %i.ffu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %238) #17
  br label %bb.avd

bb.avd:                                           ; preds = %bb.avc, %bb.avb
  %.pn622 = phi { ptr, i32 } [ %i.ffu, %bb.avc ], [ %i.fft, %bb.avb ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %237) #17
  br label %bb.ave

bb.ave:                                           ; preds = %bb.avd, %bb.ava
  %.pn622.pn = phi { ptr, i32 } [ %.pn622, %bb.avd ], [ %i.ffs, %bb.ava ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %236) #17
  br label %bb.avf

bb.avf:                                           ; preds = %bb.ave, %bb.auz
  %.pn622.pn.pn = phi { ptr, i32 } [ %.pn622.pn, %bb.ave ], [ %i.ffr, %bb.auz ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %235) #17
  br label %bb.avg

bb.avg:                                           ; preds = %bb.avf, %bb.auy
  %.pn622.pn.pn.pn = phi { ptr, i32 } [ %.pn622.pn.pn, %bb.avf ], [ %i.ffq, %bb.auy ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %233) #17
  br label %.body1195

.body1195:                                        ; preds = %bb.lb, %bb.la, %bb.avg
  %.pn622.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn622.pn.pn.pn, %bb.avg ], [ %i.ans, %bb.la ], [ %i.ans, %bb.lb ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %234) #17
  br label %.loopexit2387

.loopexit2387:                                    ; preds = %.body1195, %bb.aux
  %.pn622.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ffp, %bb.aux ], [ %.pn622.pn.pn.pn.pn, %.body1195 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %234) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %232) #17
  br label %bb.avh

bb.avh:                                           ; preds = %.loopexit2387, %bb.auw
  %.pn622.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn622.pn.pn.pn.pn.pn, %.loopexit2387 ], [ %i.ffo, %bb.auw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %232) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %231) #17
  br label %bb.avi

bb.avi:                                           ; preds = %bb.avh, %bb.auv
  %.pn622.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn622.pn.pn.pn.pn.pn.pn, %bb.avh ], [ %i.ffn, %bb.auv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %231) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %230) #17
  br label %bb.avj

bb.avj:                                           ; preds = %bb.avi, %bb.auu
  %.pn622.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn622.pn.pn.pn.pn.pn.pn.pn, %bb.avi ], [ %i.ffm, %bb.auu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %230) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %229) #17
  br label %.body1181

.body1181:                                        ; preds = %bb.aut, %.loopexit.split-lp.loopexit.split-lp.i1175, %bb.avj
  %.pn622.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn622.pn.pn.pn.pn.pn.pn.pn.pn, %bb.avj ], [ %i.ffl, %bb.aut ], [ %lpad.loopexit.split-lp9.i1176, %.loopexit.split-lp.loopexit.split-lp.i1175 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %229) #17
  br label %bb.bbn

bb.avk:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1235
  %i.ffv = landingpad { ptr, i32 }
          cleanup
  br label %.body1237

bb.avl:                                           ; preds = %bb.mx
  %i.ffw = landingpad { ptr, i32 }
          cleanup
  br label %.body1246

.body1246:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i1240, %bb.avl
  %eh.lpad-body1247 = phi { ptr, i32 } [ %i.ffw, %bb.avl ], [ %lpad.loopexit.split-lp9.i1241, %.loopexit.split-lp.loopexit.split-lp.i1240 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %240) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %240) #17
  br label %.loopexit2386

.body1237:                                        ; preds = %bb.avk, %bb.mw
  %.pn633 = phi { ptr, i32 } [ %i.auj, %bb.mw ], [ %i.ffv, %bb.avk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %240) #17
  br label %.loopexit2386

bb.avm:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1250
  %i.ffx = landingpad { ptr, i32 }
          cleanup
  br label %.body1257

bb.avn:                                           ; preds = %bb.nf
  %i.ffy = landingpad { ptr, i32 }
          cleanup
  br label %bb.avz

bb.avo:                                           ; preds = %bb.ni
  %i.ffz = landingpad { ptr, i32 }
          cleanup
  br label %bb.avy

.loopexit2384.loopexit2400:                       ; preds = %bb.no
  %i.fga = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %245) #17
  br label %.loopexit2384

bb.avp:                                           ; preds = %bb.nu
  %i.fgb = landingpad { ptr, i32 }
          cleanup
  br label %bb.avx

bb.avq:                                           ; preds = %bb.nx
  %i.fgc = landingpad { ptr, i32 }
          cleanup
  br label %bb.avw

bb.avr:                                           ; preds = %bb.oa
  %i.fgd = landingpad { ptr, i32 }
          cleanup
  br label %bb.avv

bb.avs:                                           ; preds = %bb.od
  %i.fge = landingpad { ptr, i32 }
          cleanup
  br label %bb.avu

bb.avt:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1281
  %i.fgf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %249) #17
  br label %bb.avu

bb.avu:                                           ; preds = %bb.avt, %bb.avs
  %.pn635 = phi { ptr, i32 } [ %i.fgf, %bb.avt ], [ %i.fge, %bb.avs ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %248) #17
  br label %bb.avv

bb.avv:                                           ; preds = %bb.avu, %bb.avr
  %.pn635.pn = phi { ptr, i32 } [ %.pn635, %bb.avu ], [ %i.fgd, %bb.avr ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %247) #17
  br label %bb.avw

bb.avw:                                           ; preds = %bb.avv, %bb.avq
  %.pn635.pn.pn = phi { ptr, i32 } [ %.pn635.pn, %bb.avv ], [ %i.fgc, %bb.avq ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %246) #17
  br label %bb.avx

bb.avx:                                           ; preds = %bb.avw, %bb.avp
  %.pn635.pn.pn.pn = phi { ptr, i32 } [ %.pn635.pn.pn, %bb.avw ], [ %i.fgb, %bb.avp ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %244) #17
  br label %.body1271

.body1271:                                        ; preds = %bb.nq, %bb.np, %bb.avx
  %.pn635.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn635.pn.pn.pn, %bb.avx ], [ %i.axm, %bb.np ], [ %i.axm, %bb.nq ]
  %i.fgg = getelementptr inbounds nuw i8, ptr %245, i64 8
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fgg) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %245) #17
  br label %.loopexit2384

.loopexit2384:                                    ; preds = %.loopexit2384.loopexit2400, %.body1271, %.thread
  %.pn635.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn635.pn.pn.pn.pn, %.body1271 ], [ %i.aws, %.thread ], [ %i.fga, %.loopexit2384.loopexit2400 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %245) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %243) #17
  br label %bb.avy

bb.avy:                                           ; preds = %.loopexit2384, %bb.avo
  %.pn635.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn635.pn.pn.pn.pn.pn, %.loopexit2384 ], [ %i.ffz, %bb.avo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %243) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %242) #17
  br label %bb.avz

bb.avz:                                           ; preds = %bb.avy, %bb.avn
  %.pn635.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn635.pn.pn.pn.pn.pn.pn, %bb.avy ], [ %i.ffy, %bb.avn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %242) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %241) #17
  br label %.body1257

.body1257:                                        ; preds = %bb.avm, %.loopexit.split-lp.loopexit.split-lp.i1251, %bb.avz
  %.pn635.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn635.pn.pn.pn.pn.pn.pn.pn, %bb.avz ], [ %i.ffx, %bb.avm ], [ %lpad.loopexit.split-lp9.i1252, %.loopexit.split-lp.loopexit.split-lp.i1251 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %241) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %239) #17
  br label %.loopexit2386

.loopexit2386:                                    ; preds = %.body1246, %.body1237, %.body1257
  %.pn635.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn635.pn.pn.pn.pn.pn.pn.pn.pn, %.body1257 ], [ %eh.lpad-body1247, %.body1246 ], [ %.pn633, %.body1237 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %239) #17
  br label %bb.bbn

bb.awa:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1311
  %i.fgh = landingpad { ptr, i32 }
          cleanup
  br label %.body1313

bb.awb:                                           ; preds = %bb.po
  %i.fgi = landingpad { ptr, i32 }
          cleanup
  br label %.body1322

.body1322:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i1316, %bb.awb
  %eh.lpad-body1323 = phi { ptr, i32 } [ %i.fgi, %bb.awb ], [ %lpad.loopexit.split-lp9.i1317, %.loopexit.split-lp.loopexit.split-lp.i1316 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %251) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %251) #17
  br label %.loopexit2383

.body1313:                                        ; preds = %bb.awa, %bb.pn
  %.pn646 = phi { ptr, i32 } [ %i.bem, %bb.pn ], [ %i.fgh, %bb.awa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %251) #17
  br label %.loopexit2383

bb.awc:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1326
  %i.fgj = landingpad { ptr, i32 }
          cleanup
  br label %.body1333

bb.awd:                                           ; preds = %bb.pt
  %i.fgk = landingpad { ptr, i32 }
          cleanup
  br label %.body1337

.body1337:                                        ; preds = %bb.pv, %bb.awd
  %eh.lpad-body1338 = phi { ptr, i32 } [ %i.fgk, %bb.awd ], [ %i.bfm, %bb.pv ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %253) #17
  br label %.body1333

.body1333:                                        ; preds = %bb.awc, %.loopexit.split-lp.loopexit.split-lp.i1327, %.body1337
  %.pn648 = phi { ptr, i32 } [ %eh.lpad-body1338, %.body1337 ], [ %i.fgj, %bb.awc ], [ %lpad.loopexit.split-lp9.i1328, %.loopexit.split-lp.loopexit.split-lp.i1327 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %253) #17
  br label %bb.awr

bb.awe:                                           ; preds = %bb.qc
  %i.fgl = landingpad { ptr, i32 }
          cleanup
  br label %bb.awq

bb.awf:                                           ; preds = %bb.qf
  %i.fgm = landingpad { ptr, i32 }
          cleanup
  br label %bb.awp

.loopexit2381.loopexit2399:                       ; preds = %bb.ql
  %i.fgn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %257) #17
  br label %.loopexit2381

bb.awg:                                           ; preds = %bb.qr
  %i.fgo = landingpad { ptr, i32 }
          cleanup
  br label %bb.awo

bb.awh:                                           ; preds = %bb.qu
  %i.fgp = landingpad { ptr, i32 }
          cleanup
  br label %bb.awn

bb.awi:                                           ; preds = %bb.qx
  %i.fgq = landingpad { ptr, i32 }
          cleanup
  br label %bb.awm

bb.awj:                                           ; preds = %bb.ra
  %i.fgr = landingpad { ptr, i32 }
          cleanup
  br label %bb.awl

bb.awk:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1363
  %i.fgs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %261) #17
  br label %bb.awl

bb.awl:                                           ; preds = %bb.awk, %bb.awj
  %.pn650 = phi { ptr, i32 } [ %i.fgs, %bb.awk ], [ %i.fgr, %bb.awj ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %260) #17
  br label %bb.awm

bb.awm:                                           ; preds = %bb.awl, %bb.awi
  %.pn650.pn = phi { ptr, i32 } [ %.pn650, %bb.awl ], [ %i.fgq, %bb.awi ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %259) #17
  br label %bb.awn

bb.awn:                                           ; preds = %bb.awm, %bb.awh
  %.pn650.pn.pn = phi { ptr, i32 } [ %.pn650.pn, %bb.awm ], [ %i.fgp, %bb.awh ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %258) #17
  br label %bb.awo

bb.awo:                                           ; preds = %bb.awn, %bb.awg
  %.pn650.pn.pn.pn = phi { ptr, i32 } [ %.pn650.pn.pn, %bb.awn ], [ %i.fgo, %bb.awg ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %256) #17
  br label %.body1353

.body1353:                                        ; preds = %bb.qn, %bb.qm, %bb.awo
  %.pn650.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn650.pn.pn.pn, %bb.awo ], [ %i.bie, %bb.qm ], [ %i.bie, %bb.qn ]
  %i.fgt = getelementptr inbounds nuw i8, ptr %257, i64 8
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fgt) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %257) #17
  br label %.loopexit2381

.loopexit2381:                                    ; preds = %.loopexit2381.loopexit2399, %.body1353, %.thread2289
  %.pn650.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn650.pn.pn.pn.pn, %.body1353 ], [ %i.bhk, %.thread2289 ], [ %i.fgn, %.loopexit2381.loopexit2399 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %257) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %255) #17
  br label %bb.awp

bb.awp:                                           ; preds = %.loopexit2381, %bb.awf
  %.pn650.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn650.pn.pn.pn.pn.pn, %.loopexit2381 ], [ %i.fgm, %bb.awf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %255) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %254) #17
  br label %bb.awq

bb.awq:                                           ; preds = %bb.awp, %bb.awe
  %.pn650.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn650.pn.pn.pn.pn.pn.pn, %bb.awp ], [ %i.fgl, %bb.awe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %254) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %252) #17
  br label %bb.awr

bb.awr:                                           ; preds = %bb.awq, %.body1333
  %.pn650.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn650.pn.pn.pn.pn.pn.pn.pn, %bb.awq ], [ %.pn648, %.body1333 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %252) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %250) #17
  br label %.loopexit2383

.loopexit2383:                                    ; preds = %.body1322, %.body1313, %bb.awr
  %.pn650.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn650.pn.pn.pn.pn.pn.pn.pn.pn, %bb.awr ], [ %eh.lpad-body1323, %.body1322 ], [ %.pn646, %.body1313 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %250) #17
  br label %bb.bbn

bb.aws:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1393
  %i.fgu = landingpad { ptr, i32 }
          cleanup
  br label %.preheader2379.preheader

bb.awt:                                           ; preds = %bb.sj
  %i.fgv = landingpad { ptr, i32 }
          cleanup
  br label %.body1400

.body1400:                                        ; preds = %bb.awt, %.loopexit.split-lp.loopexit.split-lp.i1402
  %eh.lpad-body1409 = phi { ptr, i32 } [ %i.fgv, %bb.awt ], [ %lpad.loopexit.split-lp9.i1403, %.loopexit.split-lp.loopexit.split-lp.i1402 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %263) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %263) #17
  br label %.loopexit2380

.preheader2379.preheader:                         ; preds = %.loopexit.split-lp.loopexit.split-lp.i1394, %bb.aws
  %.pn661.ph = phi { ptr, i32 } [ %i.fgu, %bb.aws ], [ %lpad.loopexit.split-lp9.i1395, %.loopexit.split-lp.loopexit.split-lp.i1394 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %263) #17
  br label %.loopexit2380

bb.awu:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1412
  %i.fgw = landingpad { ptr, i32 }
          cleanup
  br label %.preheader2377.preheader

bb.awv:                                           ; preds = %bb.so
  %i.fgx = landingpad { ptr, i32 }
          cleanup
  br label %.body1419

.body1419:                                        ; preds = %bb.awv, %.loopexit.split-lp.loopexit.split-lp.i1422
  %eh.lpad-body1429 = phi { ptr, i32 } [ %i.fgx, %bb.awv ], [ %lpad.loopexit.split-lp9.i1423, %.loopexit.split-lp.loopexit.split-lp.i1422 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %265) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %265) #17
  br label %.loopexit2378

.preheader2377.preheader:                         ; preds = %.loopexit.split-lp.loopexit.split-lp.i1413, %bb.awu
  %.pn663.ph = phi { ptr, i32 } [ %i.fgw, %bb.awu ], [ %lpad.loopexit.split-lp9.i1414, %.loopexit.split-lp.loopexit.split-lp.i1413 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %265) #17
  br label %.loopexit2378

bb.aww:                                           ; preds = %bb.sv
  %i.fgy = landingpad { ptr, i32 }
          cleanup
  br label %bb.axm

bb.awx:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1434
  %i.fgz = landingpad { ptr, i32 }
          cleanup
  br label %.body1436.thread

bb.awy:                                           ; preds = %bb.sy
  %i.fha = landingpad { ptr, i32 }
          cleanup
  br label %.body1436.thread2816

bb.awz:                                           ; preds = %bb.sz
  %i.fhb = landingpad { ptr, i32 }
          cleanup
  br label %.body1436

bb.axa:                                           ; preds = %bb.ta
  %i.fhc = landingpad { ptr, i32 }
          cleanup
  br label %.body1463

.body1463:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i1457, %bb.axa
  %eh.lpad-body1464 = phi { ptr, i32 } [ %i.fhc, %bb.axa ], [ %lpad.loopexit.split-lp9.i1458, %.loopexit.split-lp.loopexit.split-lp.i1457 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %269) #17
  br label %.body1436

.body1436.thread:                                 ; preds = %bb.sx, %bb.awx
  %.pn665.pn.pn.ph = phi { ptr, i32 } [ %i.brk, %bb.sx ], [ %i.fgz, %bb.awx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %268) #17
  br label %.loopexit2375

.body1436.thread2816:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i1439, %bb.awy
  %.pn665.pn.ph = phi { ptr, i32 } [ %i.fha, %bb.awy ], [ %lpad.loopexit.split-lp9.i1440, %.loopexit.split-lp.loopexit.split-lp.i1439 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %270) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %269) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %268) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %268) #17
  br label %.loopexit2375

.body1436:                                        ; preds = %.body1463, %.loopexit.split-lp.loopexit.split-lp.i1448, %bb.awz
  %.pn665 = phi { ptr, i32 } [ %eh.lpad-body1464, %.body1463 ], [ %lpad.loopexit.split-lp9.i1449, %.loopexit.split-lp.loopexit.split-lp.i1448 ], [ %i.fhb, %bb.awz ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %270) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %270) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %269) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %268) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %268) #17
  br label %.loopexit2375

bb.axb:                                           ; preds = %bb.tw, %bb.tt, %bb.tq
  %.0502 = phi ptr [ %i.bux, %bb.tw ], [ %i.buj, %bb.tt ], [ %i.btv, %bb.tq ]
  %i.fhd = landingpad { ptr, i32 }
          cleanup
  br label %bb.axc

bb.axc:                                           ; preds = %bb.axb, %bb.axc
  %i.fhe = phi ptr [ %.0502, %bb.axb ], [ %i.fhf, %bb.axc ]
  %i.fhf = getelementptr inbounds i8, ptr %i.fhe, i64 -8 ; 3 uses
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fhf) #17
  %i.fhg = icmp eq ptr %i.fhf, %272
  br i1 %i.fhg, label %.loopexit2372, label %bb.axc

bb.axd:                                           ; preds = %bb.uc
  %i.fhh = landingpad { ptr, i32 }
          cleanup
  br label %bb.axl

bb.axe:                                           ; preds = %bb.uf
  %i.fhi = landingpad { ptr, i32 }
          cleanup
  br label %bb.axk

bb.axf:                                           ; preds = %bb.ui
  %i.fhj = landingpad { ptr, i32 }
          cleanup
  br label %bb.axj

bb.axg:                                           ; preds = %bb.ul
  %i.fhk = landingpad { ptr, i32 }
          cleanup
  br label %bb.axi

bb.axh:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1493
  %i.fhl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %276) #17
  br label %bb.axi

bb.axi:                                           ; preds = %bb.axh, %bb.axg
  %.pn669 = phi { ptr, i32 } [ %i.fhl, %bb.axh ], [ %i.fhk, %bb.axg ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %275) #17
  br label %bb.axj

bb.axj:                                           ; preds = %bb.axi, %bb.axf
  %.pn669.pn = phi { ptr, i32 } [ %.pn669, %bb.axi ], [ %i.fhj, %bb.axf ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %274) #17
  br label %bb.axk

bb.axk:                                           ; preds = %bb.axj, %bb.axe
  %.pn669.pn.pn = phi { ptr, i32 } [ %.pn669.pn, %bb.axj ], [ %i.fhi, %bb.axe ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %273) #17
  br label %bb.axl

bb.axl:                                           ; preds = %bb.axk, %bb.axd
  %.pn669.pn.pn.pn = phi { ptr, i32 } [ %.pn669.pn.pn, %bb.axk ], [ %i.fhh, %bb.axd ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %271) #17
  br label %.body1483

.body1483:                                        ; preds = %bb.ty, %bb.tx, %bb.axl
  %.pn669.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn669.pn.pn.pn, %bb.axl ], [ %i.bvq, %bb.tx ], [ %i.bvq, %bb.ty ]
  %i.fhm = getelementptr inbounds nuw i8, ptr %272, i64 24
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fhm) #17
  %i.fhn = getelementptr inbounds nuw i8, ptr %272, i64 16
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fhn) #17
  %i.fho = getelementptr inbounds nuw i8, ptr %272, i64 8
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fho) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %272) #17
  br label %.loopexit2372

.loopexit2372:                                    ; preds = %bb.axc, %.body1483, %.thread2296
  %.pn669.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn669.pn.pn.pn.pn, %.body1483 ], [ %i.btu, %.thread2296 ], [ %i.fhd, %bb.axc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %272) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %267) #17
  br label %.loopexit2375

.loopexit2375:                                    ; preds = %.body1436, %.body1436.thread, %.body1436.thread2816, %.loopexit2372
  %.pn669.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn669.pn.pn.pn.pn.pn, %.loopexit2372 ], [ %.pn665.pn.pn.ph, %.body1436.thread ], [ %.pn665, %.body1436 ], [ %.pn665.pn.ph, %.body1436.thread2816 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %267) #17
end_hunk_1
begin_hunk_2_@_ZN4cvc58internal8rewriter46addRewrites_strings_rewrites_regexp_membershipEPNS0_11NodeManagerERNS1_9RewriteDbE:bb.a

bb.ays:                                           ; preds = %bb.aat
  %i.fiu = landingpad { ptr, i32 }
          cleanup
  br label %.body1743

bb.ayt:                                           ; preds = %bb.aau
  %i.fiv = landingpad { ptr, i32 }
          cleanup
  br label %.body1752

.body1752:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i1746, %bb.ayt
  %eh.lpad-body1753 = phi { ptr, i32 } [ %i.fiv, %bb.ayt ], [ %lpad.loopexit.split-lp9.i1747, %.loopexit.split-lp.loopexit.split-lp.i1746 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %302) #17
  br label %.body1743

.body1743:                                        ; preds = %bb.ays, %.loopexit.split-lp.loopexit.split-lp.i1737, %.body1752
  %.pn706 = phi { ptr, i32 } [ %eh.lpad-body1753, %.body1752 ], [ %lpad.loopexit.split-lp9.i1738, %.loopexit.split-lp.loopexit.split-lp.i1737 ], [ %i.fiu, %bb.ays ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %303) #17
  br label %.body1730

.body1730.thread:                                 ; preds = %.loopexit.split-lp.loopexit.split-lp.i1724, %bb.ayq
  %.pn706.pn.pn.ph = phi { ptr, i32 } [ %i.fis, %bb.ayq ], [ %lpad.loopexit.split-lp9.i1725, %.loopexit.split-lp.loopexit.split-lp.i1724 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %301) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %301) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %300) #17
  br label %.loopexit2357

.body1730:                                        ; preds = %bb.ayr, %bb.aas, %.body1743
  %.pn706.pn = phi { ptr, i32 } [ %.pn706, %.body1743 ], [ %i.cvj, %bb.aas ], [ %i.fit, %bb.ayr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %303) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %302) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %300) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %301) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %301) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %300) #17
  br label %.loopexit2357

.thread2319:                                      ; preds = %bb.aao, %bb.ayp
  %.pn706.pn.pn.pn.ph = phi { ptr, i32 } [ %i.cux, %bb.aao ], [ %i.fir, %bb.ayp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %301) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %300) #17
  br label %.loopexit2357

bb.ayu:                                           ; preds = %bb.abk
  %i.fiw = landingpad { ptr, i32 }
          cleanup
  br label %bb.azg

bb.ayv:                                           ; preds = %bb.abt, %bb.abq
  %.0467 = phi ptr [ %i.cyy, %bb.abt ], [ %i.cyk, %bb.abq ]
  %i.fix = landingpad { ptr, i32 }
          cleanup
  br label %bb.ayw

bb.ayw:                                           ; preds = %bb.ayv, %bb.ayw
  %i.fiy = phi ptr [ %.0467, %bb.ayv ], [ %i.fiz, %bb.ayw ]
  %i.fiz = getelementptr inbounds i8, ptr %i.fiy, i64 -8 ; 3 uses
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fiz) #17
  %i.fja = icmp eq ptr %i.fiz, %306
  br i1 %i.fja, label %.loopexit2354, label %bb.ayw

bb.ayx:                                           ; preds = %bb.abz
  %i.fjb = landingpad { ptr, i32 }
          cleanup
  br label %bb.azf

bb.ayy:                                           ; preds = %bb.acc
  %i.fjc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aze

bb.ayz:                                           ; preds = %bb.acf
  %i.fjd = landingpad { ptr, i32 }
          cleanup
  br label %bb.azd

bb.aza:                                           ; preds = %bb.aci
  %i.fje = landingpad { ptr, i32 }
          cleanup
  br label %bb.azc

bb.azb:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1784
  %i.fjf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %310) #17
  br label %bb.azc

bb.azc:                                           ; preds = %bb.azb, %bb.aza
  %.pn711 = phi { ptr, i32 } [ %i.fjf, %bb.azb ], [ %i.fje, %bb.aza ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %309) #17
  br label %bb.azd

bb.azd:                                           ; preds = %bb.azc, %bb.ayz
  %.pn711.pn = phi { ptr, i32 } [ %.pn711, %bb.azc ], [ %i.fjd, %bb.ayz ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %308) #17
  br label %bb.aze

bb.aze:                                           ; preds = %bb.azd, %bb.ayy
  %.pn711.pn.pn = phi { ptr, i32 } [ %.pn711.pn, %bb.azd ], [ %i.fjc, %bb.ayy ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %307) #17
  br label %bb.azf

bb.azf:                                           ; preds = %bb.aze, %bb.ayx
  %.pn711.pn.pn.pn = phi { ptr, i32 } [ %.pn711.pn.pn, %bb.aze ], [ %i.fjb, %bb.ayx ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %305) #17
  br label %.body1774

.body1774:                                        ; preds = %bb.abv, %bb.abu, %bb.azf
  %.pn711.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn711.pn.pn.pn, %bb.azf ], [ %i.czr, %bb.abu ], [ %i.czr, %bb.abv ]
  %i.fjg = getelementptr inbounds nuw i8, ptr %306, i64 16
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fjg) #17
  %i.fjh = getelementptr inbounds nuw i8, ptr %306, i64 8
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fjh) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %306) #17
  br label %.loopexit2354

.loopexit2354:                                    ; preds = %bb.ayw, %.body1774, %.thread2327
  %.pn711.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn711.pn.pn.pn.pn, %.body1774 ], [ %i.cyj, %.thread2327 ], [ %i.fix, %bb.ayw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %306) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %304) #17
  br label %bb.azg

bb.azg:                                           ; preds = %.loopexit2354, %bb.ayu
  %.pn711.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn711.pn.pn.pn.pn.pn, %.loopexit2354 ], [ %i.fiw, %bb.ayu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %304) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %299) #17
  br label %.loopexit2357

.loopexit2357:                                    ; preds = %.body1730, %.thread2319, %.body1730.thread, %bb.azg
  %.pn711.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn711.pn.pn.pn.pn.pn.pn, %bb.azg ], [ %.pn706.pn.pn.pn.ph, %.thread2319 ], [ %.pn706.pn, %.body1730 ], [ %.pn706.pn.pn.ph, %.body1730.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %299) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %294) #17
  br label %.loopexit2359

.loopexit2359:                                    ; preds = %.body1687, %.thread2310, %.body1687.thread, %.loopexit2357
  %.pn711.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn711.pn.pn.pn.pn.pn.pn.pn, %.loopexit2357 ], [ %.pn701.pn.pn.pn.ph, %.thread2310 ], [ %.pn701.pn2309, %.body1687 ], [ %.pn701.pn.pn.ph, %.body1687.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %294) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %292) #17
  br label %.loopexit2362

.loopexit2362:                                    ; preds = %.preheader2361.preheader, %.body1663, %.loopexit2359
  %.pn711.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn711.pn.pn.pn.pn.pn.pn.pn.pn, %.loopexit2359 ], [ %.pn699.ph, %.preheader2361.preheader ], [ %eh.lpad-body1673, %.body1663 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %292) #17
  br label %bb.bbn

bb.azh:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1814
  %i.fji = landingpad { ptr, i32 }
          cleanup
  br label %.body1816

bb.azi:                                           ; preds = %bb.adv
  %i.fjj = landingpad { ptr, i32 }
          cleanup
  br label %.body1827.thread

bb.azj:                                           ; preds = %bb.adw
  %i.fjk = landingpad { ptr, i32 }
          cleanup
  br label %.body1827

.body1827.thread:                                 ; preds = %.loopexit.split-lp.loopexit.split-lp.i1819, %bb.azi
  %.pn722.ph = phi { ptr, i32 } [ %i.fjj, %bb.azi ], [ %lpad.loopexit.split-lp9.i1820, %.loopexit.split-lp.loopexit.split-lp.i1819 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %313) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %313) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %312) #17
  br label %.loopexit2353

.body1827:                                        ; preds = %bb.azj, %.loopexit.split-lp.loopexit.split-lp.i1830
  %eh.lpad-body1837 = phi { ptr, i32 } [ %i.fjk, %bb.azj ], [ %lpad.loopexit.split-lp9.i1831, %.loopexit.split-lp.loopexit.split-lp.i1830 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %312) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %313) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %313) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %312) #17
  br label %.loopexit2353

.body1816:                                        ; preds = %bb.azh, %bb.adu
  %.pn722.pn = phi { ptr, i32 } [ %i.dhb, %bb.adu ], [ %i.fji, %bb.azh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %313) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %312) #17
  br label %.loopexit2353

bb.azk:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1842
  %i.fjl = landingpad { ptr, i32 }
          cleanup
  br label %.body1849

bb.azl:                                           ; preds = %bb.aeh
  %i.fjm = landingpad { ptr, i32 }
          cleanup
  br label %bb.azx

bb.azm:                                           ; preds = %bb.aek
  %i.fjn = landingpad { ptr, i32 }
          cleanup
  br label %bb.azw

.loopexit2350.loopexit2395:                       ; preds = %bb.aeq
  %i.fjo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %318) #17
  br label %.loopexit2350

bb.azn:                                           ; preds = %bb.aew
  %i.fjp = landingpad { ptr, i32 }
          cleanup
  br label %bb.azv

bb.azo:                                           ; preds = %bb.aez
  %i.fjq = landingpad { ptr, i32 }
          cleanup
  br label %bb.azu

bb.azp:                                           ; preds = %bb.afc
  %i.fjr = landingpad { ptr, i32 }
          cleanup
  br label %bb.azt

bb.azq:                                           ; preds = %bb.aff
  %i.fjs = landingpad { ptr, i32 }
          cleanup
  br label %bb.azs

bb.azr:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1873
  %i.fjt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %322) #17
  br label %bb.azs

bb.azs:                                           ; preds = %bb.azr, %bb.azq
  %.pn725 = phi { ptr, i32 } [ %i.fjt, %bb.azr ], [ %i.fjs, %bb.azq ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %321) #17
  br label %bb.azt

bb.azt:                                           ; preds = %bb.azs, %bb.azp
  %.pn725.pn = phi { ptr, i32 } [ %.pn725, %bb.azs ], [ %i.fjr, %bb.azp ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %320) #17
  br label %bb.azu

bb.azu:                                           ; preds = %bb.azt, %bb.azo
  %.pn725.pn.pn = phi { ptr, i32 } [ %.pn725.pn, %bb.azt ], [ %i.fjq, %bb.azo ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %319) #17
  br label %bb.azv

bb.azv:                                           ; preds = %bb.azu, %bb.azn
  %.pn725.pn.pn.pn = phi { ptr, i32 } [ %.pn725.pn.pn, %bb.azu ], [ %i.fjp, %bb.azn ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %317) #17
  br label %.body1863

.body1863:                                        ; preds = %bb.aes, %bb.aer, %bb.azv
  %.pn725.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn725.pn.pn.pn, %bb.azv ], [ %i.dkv, %bb.aer ], [ %i.dkv, %bb.aes ]
  %i.fju = getelementptr inbounds nuw i8, ptr %318, i64 8
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fju) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %318) #17
  br label %.loopexit2350

.loopexit2350:                                    ; preds = %.loopexit2350.loopexit2395, %.body1863, %.thread2337
  %.pn725.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn725.pn.pn.pn.pn, %.body1863 ], [ %i.dkb, %.thread2337 ], [ %i.fjo, %.loopexit2350.loopexit2395 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %318) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %316) #17
  br label %bb.azw

bb.azw:                                           ; preds = %.loopexit2350, %bb.azm
  %.pn725.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn725.pn.pn.pn.pn.pn, %.loopexit2350 ], [ %i.fjn, %bb.azm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %316) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %315) #17
  br label %bb.azx

bb.azx:                                           ; preds = %bb.azw, %bb.azl
  %.pn725.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn725.pn.pn.pn.pn.pn.pn, %bb.azw ], [ %i.fjm, %bb.azl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %315) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %314) #17
  br label %.body1849

.body1849:                                        ; preds = %bb.azk, %.loopexit.split-lp.loopexit.split-lp.i1843, %bb.azx
  %.pn725.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn725.pn.pn.pn.pn.pn.pn.pn, %bb.azx ], [ %i.fjl, %bb.azk ], [ %lpad.loopexit.split-lp9.i1844, %.loopexit.split-lp.loopexit.split-lp.i1843 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %314) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %311) #17
  br label %.loopexit2353

.loopexit2353:                                    ; preds = %.body1827, %.body1827.thread, %.body1816, %.body1849
  %.pn725.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn725.pn.pn.pn.pn.pn.pn.pn.pn, %.body1849 ], [ %eh.lpad-body1837, %.body1827 ], [ %.pn722.ph, %.body1827.thread ], [ %.pn722.pn, %.body1816 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %311) #17
  br label %bb.bbn

bb.azy:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1903
  %i.fjv = landingpad { ptr, i32 }
          cleanup
  br label %.body1905.thread

bb.azz:                                           ; preds = %bb.agq
  %i.fjw = landingpad { ptr, i32 }
          cleanup
  br label %.preheader2348.preheader

bb.baa:                                           ; preds = %bb.agr
  %i.fjx = landingpad { ptr, i32 }
          cleanup
  br label %.body1914

.body1914:                                        ; preds = %bb.baa, %.loopexit.split-lp.loopexit.split-lp.i1917
  %eh.lpad-body1924 = phi { ptr, i32 } [ %i.fjx, %bb.baa ], [ %lpad.loopexit.split-lp9.i1918, %.loopexit.split-lp.loopexit.split-lp.i1917 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %325) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %325) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %324) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %324) #17
  br label %.loopexit2349

.body1905.thread:                                 ; preds = %bb.agp, %bb.azy
  %.pn736.pn.ph = phi { ptr, i32 } [ %i.dru, %bb.agp ], [ %i.fjv, %bb.azy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %324) #17
  br label %.loopexit2349

.preheader2348.preheader:                         ; preds = %.loopexit.split-lp.loopexit.split-lp.i1908, %bb.azz
  %.pn736.ph = phi { ptr, i32 } [ %i.fjw, %bb.azz ], [ %lpad.loopexit.split-lp9.i1909, %.loopexit.split-lp.loopexit.split-lp.i1908 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %325) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %324) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %324) #17
  br label %.loopexit2349

bb.bab:                                           ; preds = %bb.ahb
  %i.fjy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bas

.split:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1931
  %i.fjz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %329) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %328) #17
  br label %.loopexit2347

bb.bac:                                           ; preds = %bb.ahc
  %i.fka = landingpad { ptr, i32 }
          cleanup
  br label %bb.bae

bb.bad:                                           ; preds = %bb.ahd
  %i.fkb = landingpad { ptr, i32 }
          cleanup
  br label %.body1938

.body1938:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i1932, %bb.bad
  %eh.lpad-body1939 = phi { ptr, i32 } [ %i.fkb, %bb.bad ], [ %lpad.loopexit.split-lp9.i1933, %.loopexit.split-lp.loopexit.split-lp.i1932 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %328) #17
  br label %bb.bae

bb.bae:                                           ; preds = %.body1938, %bb.bac
  %.pn739 = phi { ptr, i32 } [ %eh.lpad-body1939, %.body1938 ], [ %i.fka, %bb.bac ]
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %329)
          to label %_ZN4cvc58internal8RationalD2Ev.exit2202 unwind label %bb.baf

bb.baf:                                           ; preds = %bb.bae
  %i.fkc = landingpad { ptr, i32 }
          catch ptr null
  %i.fkd = extractvalue { ptr, i32 } %i.fkc, 0
  call void @__clang_call_terminate(ptr %i.fkd) #18
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit2202:          ; preds = %bb.bae
  call void @llvm.lifetime.end.p0(ptr nonnull %329) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %328) #17
  br label %.loopexit2347

bb.bag:                                           ; preds = %bb.ahl
  %i.fke = landingpad { ptr, i32 }
          cleanup
  br label %bb.bar

bb.bah:                                           ; preds = %bb.aho
  %i.fkf = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit2346

bb.bai:                                           ; preds = %bb.ahu
  %i.fkg = landingpad { ptr, i32 }
          cleanup
  br label %bb.baq

bb.baj:                                           ; preds = %bb.ahx
  %i.fkh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bap

bb.bak:                                           ; preds = %bb.aia
  %i.fki = landingpad { ptr, i32 }
          cleanup
  br label %bb.bao

bb.bal:                                           ; preds = %bb.aid
  %i.fkj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ban

bb.bam:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1961
  %i.fkk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %336) #17
  br label %bb.ban

bb.ban:                                           ; preds = %bb.bam, %bb.bal
  %.pn742 = phi { ptr, i32 } [ %i.fkk, %bb.bam ], [ %i.fkj, %bb.bal ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %335) #17
  br label %bb.bao

bb.bao:                                           ; preds = %bb.ban, %bb.bak
  %.pn742.pn = phi { ptr, i32 } [ %.pn742, %bb.ban ], [ %i.fki, %bb.bak ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %334) #17
  br label %bb.bap

bb.bap:                                           ; preds = %bb.bao, %bb.baj
  %.pn742.pn.pn = phi { ptr, i32 } [ %.pn742.pn, %bb.bao ], [ %i.fkh, %bb.baj ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %333) #17
  br label %bb.baq

bb.baq:                                           ; preds = %bb.bap, %bb.bai
  %.pn742.pn.pn.pn = phi { ptr, i32 } [ %.pn742.pn.pn, %bb.bap ], [ %i.fkg, %bb.bai ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %331) #17
  br label %.body1951

.body1951:                                        ; preds = %bb.ahq, %bb.ahp, %bb.baq
  %.pn742.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn742.pn.pn.pn, %bb.baq ], [ %i.dvl, %bb.ahp ], [ %i.dvl, %bb.ahq ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %332) #17
  br label %.loopexit2346

.loopexit2346:                                    ; preds = %.body1951, %bb.bah
  %.pn742.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fkf, %bb.bah ], [ %.pn742.pn.pn.pn.pn, %.body1951 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %332) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %330) #17
  br label %bb.bar

bb.bar:                                           ; preds = %.loopexit2346, %bb.bag
  %.pn742.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn742.pn.pn.pn.pn.pn, %.loopexit2346 ], [ %i.fke, %bb.bag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %330) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %327) #17
  br label %.loopexit2347

.loopexit2347:                                    ; preds = %_ZN4cvc58internal8RationalD2Ev.exit2202, %.split, %bb.bar
  %.pn742.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn742.pn.pn.pn.pn.pn.pn, %bb.bar ], [ %.pn739, %_ZN4cvc58internal8RationalD2Ev.exit2202 ], [ %i.fjz, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %327) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %326) #17
  br label %bb.bas

bb.bas:                                           ; preds = %.loopexit2347, %bb.bab
  %.pn742.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn742.pn.pn.pn.pn.pn.pn.pn, %.loopexit2347 ], [ %i.fjy, %bb.bab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %326) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %323) #17
  br label %.loopexit2349

.loopexit2349:                                    ; preds = %.body1905.thread, %.preheader2348.preheader, %.body1914, %bb.bas
  %.pn742.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn742.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bas ], [ %.pn736.pn.ph, %.body1905.thread ], [ %eh.lpad-body1924, %.body1914 ], [ %.pn736.ph, %.preheader2348.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %323) #17
  br label %bb.bbn

bb.bat:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1991
  %i.fkl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bav
end_hunk_2
