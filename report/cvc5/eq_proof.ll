Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/eq_proof?download=true
inline.NumInlined: 2900
inline.NumDeleted: 603
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK4cvc58internal6theory2eq7EqProof22reduceNestedCongruenceEjNS0_12NodeTemplateILb1EEERSt6vectorIS6_IS5_SaIS5_EESaIS8_EEPNS0_7CDProofERSt13unordered_mapIS5_S5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEERSt13unordered_setIS5_SG_SI_S7_Eb:bb.a
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4cvc58internal6theory2eq7EqProof10addToProofEPNS0_7CDProofERSt13unordered_mapINS0_12NodeTemplateILb1EEES8_St4hashIS8_ESt8equal_toIS8_ESaISt4pairIKS8_S8_EEERSt13unordered_setIS8_SA_SC_SaIS8_EE(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 4 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 4 uses
  %8 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 4 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 4 uses
  %11 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 4 uses
  %13 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 4 uses
  %14 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %15 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 4 uses
  %16 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 4 uses
  %17 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %18 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 4 uses
  %19 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 4 uses
  %20 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 4 uses
  %21 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %22 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %23 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 4 uses
  %24 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 4 uses
  %25 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %26 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 4 uses
  %27 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 4 uses
  %28 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %29 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 4 uses
  %30 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 4 uses
  %31 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %32 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %33 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 4 uses
  %34 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 4 uses
  %35 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %36 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %37 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 4 uses
  %38 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 4 uses
  %39 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %40 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 4 uses
  %41 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 4 uses
  %42 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %43 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %44 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 4 uses
  %45 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 4 uses
  %46 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %47 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %48 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 4 uses
  %49 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %50 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 4 uses
  %51 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 4 uses
  %52 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %53 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %54 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 4 uses
  %55 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %56 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %57 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 4 uses
  %58 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 4 uses
  %59 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %60 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %61 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 20 uses
  %62 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %63 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %64 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %65 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %66 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %67 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %68 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %69 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %70 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %71 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %72 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %73 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %74 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %75 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %76 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %77 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %78 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %79 = alloca %"class.std::vector.9", align 8    ; 13 uses
  %80 = alloca [1 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 8 uses
  %81 = alloca %"class.std::vector.9", align 8    ; 10 uses
  %82 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %83 = alloca %"class.std::vector.9", align 8    ; 10 uses
  %84 = alloca %"class.std::vector.9", align 8    ; 13 uses
  %85 = alloca [1 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 8 uses
  %86 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %87 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %88 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %89 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %90 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %91 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %92 = alloca %"class.std::vector.9", align 8    ; 13 uses
  %93 = alloca [1 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 8 uses
  %94 = alloca %"class.std::vector.9", align 8    ; 10 uses
  %95 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %96 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %97 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %98 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %99 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %100 = alloca %"class.std::vector.9", align 8   ; 10 uses
  %101 = alloca %"class.std::vector.9", align 8   ; 13 uses
  %102 = alloca [1 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 8 uses
  %103 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %104 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %105 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %106 = alloca %"class.std::vector.9", align 8   ; 10 uses
  %107 = alloca %"class.std::vector.9", align 8   ; 13 uses
  %108 = alloca [1 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 8 uses
  %109 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %110 = alloca %"class.std::vector.9", align 8   ; 13 uses
  %111 = alloca [1 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 8 uses
  %112 = alloca %"class.std::vector.9", align 8   ; 10 uses
  %113 = alloca %"class.std::vector.9", align 8   ; 14 uses
  %114 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %115 = alloca %"class.std::vector.9", align 8   ; 14 uses
  %116 = alloca %"class.std::vector.9", align 8   ; 16 uses
  %117 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %118 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 14 uses
  %119 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %120 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %121 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %122 = alloca %"class.std::vector.9", align 8   ; 10 uses
  %123 = alloca %"class.std::vector.9", align 8   ; 12 uses
  %124 = alloca [1 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 8 uses
  %125 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 13 uses
  %126 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %127 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %128 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %129 = alloca %"class.std::vector.9", align 8   ; 11 uses
  %130 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %131 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %132 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %133 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %134 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %135 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %136 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %137 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %138 = alloca %"class.std::vector.9", align 8   ; 10 uses
  %139 = alloca %"class.std::vector.9", align 8   ; 13 uses
  %140 = alloca [1 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 8 uses
  %141 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %142 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %143 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %144 = alloca %"class.std::vector.9", align 8   ; 13 uses
  %145 = alloca [2 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 12 uses
  %146 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %147 = alloca %"class.std::vector.9", align 8   ; 10 uses
  %148 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %149 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %i.d = alloca i8, align 1                       ; 6 uses
  %150 = alloca %"class.std::vector.9", align 8   ; 20 uses
  %151 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %152 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %153 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %154 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %155 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %156 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %157 = alloca %"class.std::vector.9", align 8   ; 7 uses
  %158 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %159 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %160 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %161 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %162 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %163 = alloca %"class.std::vector.121", align 8 ; 23 uses
  %164 = alloca %"class.std::vector.9", align 8   ; 10 uses
  %165 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  %166 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 20 uses
  %167 = alloca %"class.std::vector.121", align 8 ; 8 uses
  %168 = alloca %"class.std::allocator.123", align 1 ; 4 uses
  %169 = alloca %"class.std::vector.9", align 8   ; 7 uses
  %170 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %171 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %172 = alloca %"class.std::vector.9", align 8   ; 7 uses
  %173 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %174 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %175 = alloca %"class.std::allocator.11", align 1 ; 4 uses
  %176 = alloca %"class.std::vector.9", align 8   ; 7 uses
  %177 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %178 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %179 = alloca %"class.std::allocator.11", align 1 ; 4 uses
  %180 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %181 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %182 = alloca %"class.std::vector.9", align 8   ; 10 uses
  %183 = alloca [1 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 7 uses
  %184 = alloca %"class.std::allocator.11", align 1 ; 4 uses
  %185 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %186 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %187 = alloca %"class.std::vector.9", align 8   ; 10 uses
  %188 = alloca [1 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 7 uses
  %189 = alloca %"class.std::allocator.11", align 1 ; 4 uses
  %190 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %191 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %192 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %193 = alloca [2 x %"class.cvc5::internal::NodeTemplate.8"], align 8 ; 6 uses
  %194 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %195 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %196 = alloca %"class.std::vector.9", align 8   ; 19 uses
  %197 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 22 uses
  %198 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %199 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %200 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %201 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %202 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %203 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %204 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %205 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %206 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %207 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %208 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %209 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %210 = alloca %"class.std::vector.9", align 8   ; 10 uses
  %211 = alloca %"class.std::vector.9", align 8   ; 12 uses
  %212 = alloca [1 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 8 uses
  %213 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %214 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 2 uses
  %215 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 2 uses
  %216 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %217 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %218 = alloca %"class.std::vector.9", align 8   ; 10 uses
  %219 = alloca %"class.std::vector.9", align 8   ; 8 uses
  %220 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %221 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %222 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %223 = alloca %"class.std::vector.9", align 8   ; 7 uses
  %224 = alloca [1 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 7 uses
  %225 = alloca %"class.std::allocator.11", align 1 ; 4 uses
  %226 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 2 uses
  %227 = alloca %"class.cvc5::internal::NodeTemplate.8", align 8 ; 2 uses
  %228 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %229 = alloca %"class.std::vector.9", align 8   ; 7 uses
  %230 = alloca [1 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 7 uses
  %231 = alloca %"class.std::allocator.11", align 1 ; 4 uses
  %232 = alloca %"class.std::vector.9", align 8   ; 7 uses
  %233 = alloca [1 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 7 uses
  %234 = alloca %"class.std::allocator.11", align 1 ; 4 uses
  %235 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %236 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %237 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %238 = alloca %"class.std::vector.9", align 8   ; 7 uses
  %239 = alloca %"class.std::vector.9", align 8   ; 7 uses
  %240 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %241 = alloca %"class.std::vector.9", align 8   ; 7 uses
  %242 = alloca [2 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 11 uses
  %243 = alloca %"class.std::allocator.11", align 1 ; 4 uses
  %244 = alloca %"class.std::vector.9", align 8   ; 7 uses
  %245 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %246 = alloca %"class.std::vector.9", align 8   ; 7 uses
  %247 = alloca [1 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 7 uses
  %248 = alloca %"class.std::allocator.11", align 1 ; 4 uses
  %249 = alloca %"class.std::vector.9", align 8   ; 7 uses
  %250 = alloca [1 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 7 uses
  %251 = alloca %"class.std::allocator.11", align 1 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 86 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !375
  %.not.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load ptr, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.h, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !207 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit2550, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %.loopexit2551, label %bb.c, !llvm.loop !377

bb.e:                                             ; preds = %bb.a
  %i.m = tail call noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb1EEEEclERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !378  ; 2 uses
  %i.p = urem i64 %i.m, %i.o                      ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !379
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !211  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %.loopexit2550, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !207  ; 4 uses
  %i.u = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !212
  %i.y = icmp eq i64 %i.m, %i.x
  %i.z = load ptr, ptr %i.v, align 8
  %i.aa = icmp eq ptr %i.u, %i.z
  %i.ab = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %i.ab, label %.loopexit2551, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ad = icmp eq i64 %i.m, %i.aj
  %i.ae = load ptr, ptr %i.ac, align 8
  %i.af = icmp eq ptr %i.u, %i.ae
  %i.ag = select i1 %i.ad, i1 %i.af, i1 false
  br i1 %i.ag, label %.loopexit2551, label %.lr.ph.i.i.i.i, !llvm.loop !380

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.ah, %bb.g ], [ %i.t, %bb.f ]
  %i.ah = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !207 ; 5 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not18.i.i.i.i, label %.loopexit2550, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !212 ; 2 uses
  %i.ak = urem i64 %i.aj, %i.o
  %.not19.i.i.i.i = icmp eq i64 %i.ak, %i.p
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !380

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %.loopexit2550, !llvm.loop !380

.loopexit2551:                                    ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.d ], [ %i.t, %bb.f ], [ %i.ah, %bb.g ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !32 ; 5 uses
  store ptr %i.am, ptr %0, align 8, !tbaa !32
  %i.an = load i64, ptr %i.am, align 8            ; 3 uses
  %i.ao = lshr i64 %i.an, 40
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = and i32 %i.ap, 1048575                  ; 3 uses
  %i.ar = icmp samesign ult i32 %i.aq, 1048574
  br i1 %i.ar, label %bb.i, label %bb.j, !prof !76

bb.i:                                             ; preds = %.loopexit2551
  %i.as = add nuw nsw i32 %i.aq, 1
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 40
  %i.av = and i64 %i.an, -1152920405095219201
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.am, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.j:                                             ; preds = %.loopexit2551
  %i.ax = icmp eq i32 %i.aq, 1048574
  br i1 %i.ax, label %bb.k, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !77

bb.k:                                             ; preds = %bb.j
  %i.ay = or i64 %i.an, 1152920405095219200
  store i64 %i.ay, ptr %i.am, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.am)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

.loopexit2550:                                    ; preds = %.lr.ph.i.i.i.i, %bb.c, %..loopexit_crit_edge21.i.i.i.i, %bb.e
  %i.az = load i32, ptr %1, align 8, !tbaa !19    ; 2 uses
  switch i32 %i.az, label %bb.oe [
    i32 1, label %.loopexit2549
    i32 2, label %.thread2466.thread
  ]

.loopexit2549:                                    ; preds = %.loopexit2550
  %i.ba = tail call noundef zeroext i1 @_ZN4cvc58internal13Configuration12isDebugBuildEv() ; 0 uses
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !32  ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = and i64 %i.bc, 1023
  %i.be = icmp eq i64 %i.bd, 5
  br i1 %i.be, label %bb.l, label %.critedge778.thread

bb.l:                                             ; preds = %.loopexit2549
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.bf = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 5), !noalias !381
  %i.bg = icmp eq i32 %i.bf, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.bi = zext i1 %i.bg to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !34, !noalias !381 ; 9 uses
  store ptr %i.bk, ptr %60, align 8, !tbaa !32, !alias.scope !381
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !381 ; 3 uses
  %i.bm = lshr i64 %i.bl, 40
  %i.bn = trunc nuw nsw i64 %i.bm to i32
  %i.bo = and i32 %i.bn, 1048575                  ; 3 uses
  %i.bp = icmp samesign ult i32 %i.bo, 1048574
  br i1 %i.bp, label %bb.m, label %bb.n, !prof !76

bb.m:                                             ; preds = %bb.l
  %i.bq = add nuw nsw i32 %i.bo, 1
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 40
  %i.bt = and i64 %i.bl, -1152920405095219201
  %i.bu = or i64 %i.bs, %i.bt
  store i64 %i.bu, ptr %i.bk, align 8, !noalias !381
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

bb.n:                                             ; preds = %bb.l
  %i.bv = icmp eq i32 %i.bo, 1048574
end_hunk_0
begin_hunk_1_@_ZNK4cvc58internal6theory2eq7EqProof10addToProofEPNS0_7CDProofERSt13unordered_mapINS0_12NodeTemplateILb1EEES8_St4hashIS8_ESt8equal_toIS8_ESaISt4pairIKS8_S8_EEERSt13unordered_setIS8_SA_SC_SaIS8_EE:bb.a
  %.sroa.06.0.i.i.i1976 = load ptr, ptr %.sroa.06.0.in.i.i.i1975, align 8, !tbaa !207 ; 3 uses
  %.not.i.i.i1977 = icmp eq ptr %.sroa.06.0.i.i.i1976, null
  br i1 %.not.i.i.i1977, label %.loopexit2526, label %bb.ann

bb.ann:                                           ; preds = %bb.anm
  %i.eir = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1976, i64 8
  %i.eis = load ptr, ptr %i.eir, align 8, !tbaa !32
  %i.eit = icmp eq ptr %i.eiq, %i.eis
  br i1 %i.eit, label %.loopexit2527, label %bb.anm, !llvm.loop !208

bb.ano:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1964
  %i.eiu = invoke noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb1EEEEclERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc1978 unwind label %bb.aob ; 3 uses

.noexc1978:                                       ; preds = %bb.ano
  %i.eiv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eiw = load i64, ptr %i.eiv, align 8, !tbaa !209 ; 2 uses
  %i.eix = urem i64 %i.eiu, %i.eiw                ; 2 uses
  %i.eiy = load ptr, ptr %4, align 8, !tbaa !210
  %i.eiz = getelementptr inbounds nuw [8 x i8], ptr %i.eiy, i64 %i.eix
  %i.eja = load ptr, ptr %i.eiz, align 8, !tbaa !211 ; 2 uses
  %.not.i.i.i.i.i1966 = icmp eq ptr %i.eja, null
  %.pre2677 = load ptr, ptr %i.e, align 8         ; 5 uses
  br i1 %.not.i.i.i.i.i1966, label %.loopexit2526, label %bb.anp

bb.anp:                                           ; preds = %.noexc1978
  %i.ejb = load ptr, ptr %i.eja, align 8, !tbaa !207 ; 3 uses
  %i.ejc = getelementptr inbounds nuw i8, ptr %i.ejb, i64 8
  %i.ejd = getelementptr inbounds nuw i8, ptr %i.ejb, i64 16
  %i.eje = load i64, ptr %i.ejd, align 8, !tbaa !212
  %i.ejf = icmp eq i64 %i.eiu, %i.eje
  %i.ejg = load ptr, ptr %i.ejc, align 8
  %i.ejh = icmp eq ptr %.pre2677, %i.ejg
  %i.eji = select i1 %i.ejf, i1 %i.ejh, i1 false
  br i1 %i.eji, label %.loopexit2527, label %.lr.ph.i.i.i.i.i1967

bb.anq:                                           ; preds = %bb.anr
  %i.ejj = getelementptr inbounds nuw i8, ptr %i.ejo, i64 8
  %i.ejk = icmp eq i64 %i.eiu, %i.ejq
  %i.ejl = load ptr, ptr %i.ejj, align 8
  %i.ejm = icmp eq ptr %.pre2677, %i.ejl
  %i.ejn = select i1 %i.ejk, i1 %i.ejm, i1 false
  br i1 %i.ejn, label %.loopexit2527, label %.lr.ph.i.i.i.i.i1967, !llvm.loop !214

.lr.ph.i.i.i.i.i1967:                             ; preds = %bb.anp, %bb.anq
  %.020.i.i.i.i.i1968 = phi ptr [ %i.ejo, %bb.anq ], [ %i.ejb, %bb.anp ]
  %i.ejo = load ptr, ptr %.020.i.i.i.i.i1968, align 8, !tbaa !207 ; 4 uses
  %.not18.i.i.i.i.i1969 = icmp eq ptr %i.ejo, null
  br i1 %.not18.i.i.i.i.i1969, label %.loopexit2526, label %bb.anr

bb.anr:                                           ; preds = %.lr.ph.i.i.i.i.i1967
  %i.ejp = getelementptr inbounds nuw i8, ptr %i.ejo, i64 16
  %i.ejq = load i64, ptr %i.ejp, align 8, !tbaa !212 ; 2 uses
  %i.ejr = urem i64 %i.ejq, %i.eiw
  %.not19.i.i.i.i.i1970 = icmp eq i64 %i.ejr, %i.eix
  br i1 %.not19.i.i.i.i.i1970, label %bb.anq, label %..loopexit_crit_edge21.i.i.i.i.i1971, !llvm.loop !214

..loopexit_crit_edge21.i.i.i.i.i1971:             ; preds = %bb.anr
  br label %.loopexit2526, !llvm.loop !214

.loopexit2527:                                    ; preds = %bb.anq, %bb.ann, %bb.anp
  %i.ejs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS4_S4_ESaIS7_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS6_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEEixERS9_.exit1981 unwind label %bb.aob ; 2 uses

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEEixERS9_.exit1981: ; preds = %.loopexit2527
  %i.ejt = load ptr, ptr %i.ejs, align 8, !tbaa !32 ; 4 uses
  %i.eju = load ptr, ptr %i.e, align 8, !tbaa !32
  %.not.i1982 = icmp eq ptr %i.ejt, %i.eju
  br i1 %.not.i1982, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit1987, label %bb.ans, !prof !77

bb.ans:                                           ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEEixERS9_.exit1981
  %i.ejv = load i64, ptr %i.ejt, align 8          ; 3 uses
  %i.ejw = and i64 %i.ejv, 1152920405095219200
  %.not.i.i1983 = icmp eq i64 %i.ejw, 1152920405095219200
  br i1 %.not.i.i1983, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i1984, label %bb.ant, !prof !77

bb.ant:                                           ; preds = %bb.ans
  %i.ejx = add i64 %i.ejv, 1152920405095219200
  %i.ejy = and i64 %i.ejx, 1152920405095219200    ; 2 uses
  %i.ejz = and i64 %i.ejv, -1152920405095219201
  %i.eka = or disjoint i64 %i.ejy, %i.ejz
  store i64 %i.eka, ptr %i.ejt, align 8
  %i.ekb = icmp eq i64 %i.ejy, 0
  br i1 %i.ekb, label %bb.anu, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i1984, !prof !77

bb.anu:                                           ; preds = %bb.ant
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ejt)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i1984 unwind label %bb.aob

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i1984: ; preds = %bb.anu, %bb.ant, %bb.ans
  %i.ekc = load ptr, ptr %i.e, align 8, !tbaa !32 ; 5 uses
  store ptr %i.ekc, ptr %i.ejs, align 8, !tbaa !32
  %i.ekd = load i64, ptr %i.ekc, align 8          ; 3 uses
  %i.eke = lshr i64 %i.ekd, 40
  %i.ekf = trunc nuw nsw i64 %i.eke to i32
  %i.ekg = and i32 %i.ekf, 1048575                ; 3 uses
  %i.ekh = icmp samesign ult i32 %i.ekg, 1048574
  br i1 %i.ekh, label %bb.anv, label %bb.anw, !prof !76

bb.anv:                                           ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i1984
  %i.eki = add nuw nsw i32 %i.ekg, 1
  %i.ekj = zext nneg i32 %i.eki to i64
  %i.ekk = shl nuw nsw i64 %i.ekj, 40
  %i.ekl = and i64 %i.ekd, -1152920405095219201
  %i.ekm = or i64 %i.ekk, %i.ekl
  store i64 %i.ekm, ptr %i.ekc, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit1987

bb.anw:                                           ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i1984
  %i.ekn = icmp eq i32 %i.ekg, 1048574
  br i1 %i.ekn, label %bb.anx, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit1987, !prof !77

bb.anx:                                           ; preds = %bb.anw
  %i.eko = or i64 %i.ekd, 1152920405095219200
  store i64 %i.eko, ptr %i.ekc, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ekc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit1987 unwind label %bb.aob

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit1987: ; preds = %bb.anw, %bb.anv, %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEEixERS9_.exit1981, %bb.anx
  %i.ekp = load ptr, ptr %i.e, align 8, !tbaa !32 ; 5 uses
  store ptr %i.ekp, ptr %0, align 8, !tbaa !32
  %i.ekq = load i64, ptr %i.ekp, align 8          ; 3 uses
  %i.ekr = lshr i64 %i.ekq, 40
  %i.eks = trunc nuw nsw i64 %i.ekr to i32
  %i.ekt = and i32 %i.eks, 1048575                ; 3 uses
  %i.eku = icmp samesign ult i32 %i.ekt, 1048574
  br i1 %i.eku, label %bb.any, label %bb.anz, !prof !76

bb.any:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit1987
  %i.ekv = add nuw nsw i32 %i.ekt, 1
  %i.ekw = zext nneg i32 %i.ekv to i64
  %i.ekx = shl nuw nsw i64 %i.ekw, 40
  %i.eky = and i64 %i.ekq, -1152920405095219201
  %i.ekz = or i64 %i.ekx, %i.eky
  store i64 %i.ekz, ptr %i.ekp, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1989

bb.anz:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit1987
  %i.ela = icmp eq i32 %i.ekt, 1048574
  br i1 %i.ela, label %bb.aoa, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1989, !prof !77

bb.aoa:                                           ; preds = %bb.anz
  %i.elb = or i64 %i.ekq, 1152920405095219200
  store i64 %i.elb, ptr %i.ekp, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ekp)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1989 unwind label %bb.aob

bb.aob:                                           ; preds = %bb.aoa, %bb.anx, %bb.anu, %.loopexit2527, %bb.ano, %bb.amz
  %i.elc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bep

bb.aoc:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1947
  %i.eld = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %165) #20
  br label %bb.bep

.loopexit2526:                                    ; preds = %.lr.ph.i.i.i.i.i1967, %bb.anm, %..loopexit_crit_edge21.i.i.i.i.i1971, %.noexc1978
  %i.ele = phi ptr [ %i.eiq, %bb.anm ], [ %.pre2677, %.noexc1978 ], [ %.pre2677, %..loopexit_crit_edge21.i.i.i.i.i1971 ], [ %.pre2677, %.lr.ph.i.i.i.i.i1967 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %166) #20
  store ptr %i.ele, ptr %166, align 8, !tbaa !32
  %i.elf = load i64, ptr %i.ele, align 8          ; 3 uses
  %i.elg = lshr i64 %i.elf, 40
  %i.elh = trunc nuw nsw i64 %i.elg to i32
  %i.eli = and i32 %i.elh, 1048575                ; 3 uses
  %i.elj = icmp samesign ult i32 %i.eli, 1048574
  br i1 %i.elj, label %bb.aod, label %bb.aoe, !prof !76

bb.aod:                                           ; preds = %.loopexit2526
  %i.elk = add nuw nsw i32 %i.eli, 1
  %i.ell = zext nneg i32 %i.elk to i64
  %i.elm = shl nuw nsw i64 %i.ell, 40
  %i.eln = and i64 %i.elf, -1152920405095219201
  %i.elo = or i64 %i.elm, %i.eln
  store i64 %i.elo, ptr %i.ele, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1991

bb.aoe:                                           ; preds = %.loopexit2526
  %i.elp = icmp eq i32 %i.eli, 1048574
  br i1 %i.elp, label %bb.aof, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1991, !prof !77

bb.aof:                                           ; preds = %bb.aoe
  %i.elq = or i64 %i.elf, 1152920405095219200
  store i64 %i.elq, ptr %i.ele, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ele)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1991 unwind label %bb.aoh

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1991: ; preds = %bb.aoe, %bb.aod, %bb.aof
  %i.elr = load ptr, ptr %166, align 8, !tbaa !32
  %i.els = getelementptr inbounds nuw i8, ptr %i.elr, i64 16
  %i.elt = load ptr, ptr %i.els, align 8, !tbaa !102 ; 5 uses
  br i1 %i.eau, label %bb.aog, label %.critedge807

bb.aog:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1991
  %.not5172595 = icmp eq i32 %.1, 0
  br i1 %.not5172595, label %.critedge807.thread, label %.lr.ph2598

.critedge807.thread:                              ; preds = %bb.aog
  call void @llvm.lifetime.start.p0(ptr nonnull %196) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %196, i8 0, i64 24, i1 false)
  br label %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i

.lr.ph2598:                                       ; preds = %bb.aog
  %i.elu = load ptr, ptr %163, align 8, !tbaa !372 ; 5 uses
  %umax2642 = call i32 @llvm.umax.i32(i32 %i.egr, i32 2)
  %wide.trip.count2643 = zext i32 %umax2642 to i64 ; 2 uses
  %min.iters.check = icmp ult i32 %i.egr, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph2598
  %i.elv = add nsw i64 %wide.trip.count2643, -1   ; 2 uses
  %i.elw = and i64 %i.elv, 3                      ; 2 uses
  %i.elx = icmp eq i64 %i.elw, 0
  %i.ely = select i1 %i.elx, i64 4, i64 %i.elw
  %n.vec = sub nsw i64 %i.elv, %i.ely             ; 2 uses
  %i.elz = add nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.eng, %vector.body ]
  %vec.phi3152 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.enh, %vector.body ]
  %i.ema = getelementptr inbounds nuw [24 x i8], ptr %i.elu, i64 %index ; 2 uses
  %i.emb = getelementptr inbounds nuw i8, ptr %i.ema, i64 24
  %i.emc = getelementptr inbounds nuw [24 x i8], ptr %i.elu, i64 %index ; 2 uses
  %i.emd = getelementptr inbounds nuw i8, ptr %i.emc, i64 48
  %i.eme = getelementptr inbounds nuw [24 x i8], ptr %i.elu, i64 %index ; 2 uses
  %i.emf = getelementptr inbounds nuw i8, ptr %i.eme, i64 72
  %i.emg = getelementptr [24 x i8], ptr %i.elu, i64 %index ; 2 uses
  %i.emh = getelementptr i8, ptr %i.emg, i64 96
  %i.emi = load ptr, ptr %i.emb, align 8, !tbaa !84
  %i.emj = load ptr, ptr %i.emd, align 8, !tbaa !84
  %i.emk = insertelement <2 x ptr> poison, ptr %i.emi, i64 0
  %i.eml = insertelement <2 x ptr> %i.emk, ptr %i.emj, i64 1
  %i.emm = load ptr, ptr %i.emf, align 8, !tbaa !84
  %i.emn = load ptr, ptr %i.emh, align 8, !tbaa !84
  %i.emo = insertelement <2 x ptr> poison, ptr %i.emm, i64 0
  %i.emp = insertelement <2 x ptr> %i.emo, ptr %i.emn, i64 1
  %i.emq = getelementptr inbounds nuw i8, ptr %i.ema, i64 32
  %i.emr = getelementptr inbounds nuw i8, ptr %i.emc, i64 56
  %i.ems = getelementptr inbounds nuw i8, ptr %i.eme, i64 80
  %i.emt = getelementptr i8, ptr %i.emg, i64 104
  %i.emu = load ptr, ptr %i.emq, align 8, !tbaa !84
  %i.emv = load ptr, ptr %i.emr, align 8, !tbaa !84
  %i.emw = insertelement <2 x ptr> poison, ptr %i.emu, i64 0
  %i.emx = insertelement <2 x ptr> %i.emw, ptr %i.emv, i64 1
  %i.emy = load ptr, ptr %i.ems, align 8, !tbaa !84
  %i.emz = load ptr, ptr %i.emt, align 8, !tbaa !84
  %i.ena = insertelement <2 x ptr> poison, ptr %i.emy, i64 0
  %i.enb = insertelement <2 x ptr> %i.ena, ptr %i.emz, i64 1
  %i.enc = icmp eq <2 x ptr> %i.eml, %i.emx
  %i.end = icmp eq <2 x ptr> %i.emp, %i.enb
  %i.ene = zext <2 x i1> %i.enc to <2 x i32>
  %i.enf = zext <2 x i1> %i.end to <2 x i32>
  %i.eng = add <2 x i32> %vec.phi, %i.ene         ; 2 uses
  %i.enh = add <2 x i32> %vec.phi3152, %i.enf     ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eni = icmp eq i64 %index.next, %n.vec
  br i1 %i.eni, label %middle.block, label %vector.body, !llvm.loop !597

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.enh, %i.eng
  %i.enj = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph2598, %middle.block
  %indvars.iv2639.ph = phi i64 [ 1, %.lr.ph2598 ], [ %i.elz, %middle.block ]
  %.ph = phi i32 [ 0, %.lr.ph2598 ], [ %i.enj, %middle.block ]
  br label %scalar.ph

._crit_edge2599:                                  ; preds = %scalar.ph
  %.not518 = icmp eq i32 %spec.select2604, 0
  br i1 %.not518, label %.critedge807, label %bb.aoi

bb.aoh:                                           ; preds = %bb.aof
  %i.enk = landingpad { ptr, i32 }
          cleanup
  br label %bb.beo

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv2639 = phi i64 [ %indvars.iv.next2640, %scalar.ph ], [ %indvars.iv2639.ph, %scalar.ph.preheader ] ; 2 uses
  %i.enl = phi i32 [ %spec.select2604, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %i.enm = getelementptr inbounds nuw [24 x i8], ptr %i.elu, i64 %indvars.iv2639 ; 2 uses
  %i.enn = load ptr, ptr %i.enm, align 8, !tbaa !84
  %i.eno = getelementptr inbounds nuw i8, ptr %i.enm, i64 8
  %i.enp = load ptr, ptr %i.eno, align 8, !tbaa !84
  %i.enq = icmp eq ptr %i.enn, %i.enp
  %i.enr = zext i1 %i.enq to i32
  %spec.select2604 = add i32 %i.enl, %i.enr       ; 5 uses
  %indvars.iv.next2640 = add nuw nsw i64 %indvars.iv2639, 1 ; 2 uses
  %exitcond2644 = icmp eq i64 %indvars.iv.next2640, %wide.trip.count2643
  br i1 %exitcond2644, label %._crit_edge2599, label %scalar.ph, !llvm.loop !600

bb.aoi:                                           ; preds = %._crit_edge2599
  call void @llvm.lifetime.start.p0(ptr nonnull %167) #20
  %i.ens = load ptr, ptr %163, align 8, !tbaa !601
  %i.ent = getelementptr inbounds nuw i8, ptr %i.ens, i64 24
  %i.enu = zext i32 %spec.select2604 to i64
  %i.env = getelementptr inbounds nuw [24 x i8], ptr %i.ent, i64 %i.enu
  %i.enw = getelementptr inbounds nuw i8, ptr %163, i64 8 ; 2 uses
  %i.enx = load ptr, ptr %i.enw, align 8, !tbaa !601
  call void @llvm.lifetime.start.p0(ptr nonnull %168) #20
  invoke void @_ZNSt6vectorIS_IN4cvc58internal12NodeTemplateILb1EEESaIS3_EESaIS5_EEC2IN9__gnu_cxx17__normal_iteratorIPS5_S7_EEvEET_SD_RKS6_(ptr noundef nonnull align 8 dereferenceable(24) %167, ptr nonnull %i.env, ptr %i.enx, ptr noundef nonnull align 1 dereferenceable(1) %168)
          to label %bb.aoj unwind label %bb.apy

bb.aoj:                                           ; preds = %bb.aoi
  call void @llvm.lifetime.end.p0(ptr nonnull %168) #20
  call void @_ZNSt6vectorIS_IN4cvc58internal12NodeTemplateILb1EEESaIS3_EESaIS5_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %163) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %169) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %169, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIS_IN4cvc58internal12NodeTemplateILb1EEESaIS3_EESaIS5_EE9push_backEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %163, ptr noundef nonnull align 8 dereferenceable(24) %169)
          to label %bb.aok unwind label %bb.apz

bb.aok:                                           ; preds = %bb.aoj
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %169) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %169) #20
  %i.eny = load ptr, ptr %i.enw, align 8, !tbaa !601
  %i.enz = load ptr, ptr %167, align 8, !tbaa !601
  %i.eoa = getelementptr inbounds nuw i8, ptr %167, i64 8
  %i.eob = load ptr, ptr %i.eoa, align 8, !tbaa !601
  %i.eoc = load ptr, ptr %163, align 8, !tbaa !601 ; 2 uses
  %i.eod = ptrtoint ptr %i.eny to i64
  %i.eoe = ptrtoint ptr %i.eoc to i64
  %i.eof = sub i64 %i.eod, %i.eoe
  %i.eog = getelementptr inbounds i8, ptr %i.eoc, i64 %i.eof
  invoke void @_ZNSt6vectorIS_IN4cvc58internal12NodeTemplateILb1EEESaIS3_EESaIS5_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEEvSC_T_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %163, ptr %i.eog, ptr %i.enz, ptr %i.eob)
          to label %bb.aol unwind label %bb.aqa

bb.aol:                                           ; preds = %bb.aok
  call void @llvm.lifetime.start.p0(ptr nonnull %170) #20
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EEixEi(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %170, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef 0)
          to label %bb.aom unwind label %bb.aqb

bb.aom:                                           ; preds = %bb.aol
  %i.eoh = invoke noundef i64 @_ZNK4cvc58internal12NodeTemplateILb1EE14getNumChildrenEv(ptr noundef nonnull align 8 dereferenceable(8) %170)
          to label %bb.aon unwind label %bb.aqc

bb.aon:                                           ; preds = %bb.aom
  %i.eoi = trunc i64 %i.eoh to i32
  %i.eoj = add i32 %spec.select2604, 1
  %i.eok = sub i32 %i.eoj, %.1                    ; 2 uses
  %i.eol = add i32 %i.eok, %i.eoi
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %170) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %170) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %171) #20
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EEixEi(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %171, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef 1)
          to label %bb.aoo unwind label %bb.aqe

bb.aoo:                                           ; preds = %bb.aon
  %i.eom = invoke noundef i64 @_ZNK4cvc58internal12NodeTemplateILb1EE14getNumChildrenEv(ptr noundef nonnull align 8 dereferenceable(8) %171)
          to label %bb.aop unwind label %bb.aqf

bb.aop:                                           ; preds = %bb.aoo
  %i.eon = trunc i64 %i.eom to i32
  %i.eoo = add i32 %i.eok, %i.eon
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %171) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %171) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %172) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %173) #20
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EEixEi(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %173, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef 0)
          to label %bb.aoq unwind label %bb.aqh

bb.aoq:                                           ; preds = %bb.aop
  %i.eop = load ptr, ptr %173, align 8, !tbaa !32 ; 2 uses
  %i.eoq = getelementptr inbounds nuw i8, ptr %i.eop, i64 8
  %i.eor = load i64, ptr %i.eoq, align 8
  %i.eos = trunc i64 %i.eor to i32
  %i.eot = and i32 %i.eos, 1023                   ; 2 uses
  %i.eou = icmp eq i32 %i.eot, 1023
  %i.eov = select i1 %i.eou, i32 -1, i32 %i.eot
  %i.eow = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.eov)
          to label %bb.aor unwind label %bb.aqi

bb.aor:                                           ; preds = %bb.aoq
  %i.eox = icmp eq i32 %i.eow, 2
  %spec.select.v.i.i = select i1 %i.eox, i64 32, i64 24
  %spec.select.i.i1993 = getelementptr inbounds nuw i8, ptr %i.eop, i64 %spec.select.v.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %174) #20
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EEixEi(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %174, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef 0)
          to label %bb.aos unwind label %bb.aqj

bb.aos:                                           ; preds = %bb.aor
  %i.eoy = load ptr, ptr %174, align 8, !tbaa !32 ; 2 uses
  %i.eoz = getelementptr inbounds nuw i8, ptr %i.eoy, i64 8
  %i.epa = load i64, ptr %i.eoz, align 8
  %i.epb = trunc i64 %i.epa to i32
  %i.epc = and i32 %i.epb, 1023                   ; 2 uses
  %i.epd = icmp eq i32 %i.epc, 1023
  %i.epe = select i1 %i.epd, i32 -1, i32 %i.epc
  %i.epf = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.epe)
          to label %bb.aot unwind label %bb.aqk

bb.aot:                                           ; preds = %bb.aos
  %i.epg = icmp eq i32 %i.epf, 2
  %spec.select.v.i.i1995 = select i1 %i.epg, i64 32, i64 24
  %spec.select.i.i1996 = getelementptr inbounds nuw i8, ptr %i.eoy, i64 %spec.select.v.i.i1995
  %i.eph = zext i32 %i.eol to i64                 ; 2 uses
  %i.epi = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i.i1996, i64 %i.eph
  call void @llvm.lifetime.start.p0(ptr nonnull %175) #20
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2INS1_4expr9NodeValue8iteratorIS3_EEvEET_SB_RKS4_(ptr noundef nonnull align 8 dereferenceable(24) %172, ptr nonnull %spec.select.i.i1993, ptr nonnull %i.epi, ptr noundef nonnull align 1 dereferenceable(1) %175)
end_hunk_1
begin_hunk_2_@_ZNK4cvc58internal6theory2eq7EqProof10addToProofEPNS0_7CDProofERSt13unordered_mapINS0_12NodeTemplateILb1EEES8_St4hashIS8_ESt8equal_toIS8_ESaISt4pairIKS8_S8_EEERSt13unordered_setIS8_SA_SC_SaIS8_EE:bb.a
          cleanup
  br label %.loopexit2525

.loopexit2525.loopexit:                           ; preds = %bb.apc
  %i.ets = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %184) #20
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %183) #20
  br label %.loopexit2525

.loopexit2525:                                    ; preds = %.loopexit2525.loopexit, %bb.arb
  %.pn533 = phi { ptr, i32 } [ %i.etr, %bb.arb ], [ %i.ets, %.loopexit2525.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %183) #20
  br label %bb.arw

bb.arc:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit2009
  %i.ett = landingpad { ptr, i32 }
          cleanup
  br label %bb.ari

bb.ard:                                           ; preds = %bb.aph
  %i.etu = landingpad { ptr, i32 }
          cleanup
  br label %bb.arh

bb.are:                                           ; preds = %bb.api
  %i.etv = landingpad { ptr, i32 }
          cleanup
  br label %bb.arg

bb.arf:                                           ; preds = %bb.apj
  %i.etw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %186) #20
  br label %bb.arg

bb.arg:                                           ; preds = %bb.arf, %bb.are
  %.pn535 = phi { ptr, i32 } [ %i.etw, %bb.arf ], [ %i.etv, %bb.are ]
  call void @llvm.lifetime.end.p0(ptr nonnull %186) #20
  br label %bb.arh

bb.arh:                                           ; preds = %bb.arg, %bb.ard
  %.pn535.pn = phi { ptr, i32 } [ %.pn535, %bb.arg ], [ %i.etu, %bb.ard ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %185) #20
  br label %bb.ari

bb.ari:                                           ; preds = %bb.arh, %bb.arc
  %.pn535.pn.pn = phi { ptr, i32 } [ %.pn535.pn, %bb.arh ], [ %i.ett, %bb.arc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %185) #20
  br label %bb.arv

bb.arj:                                           ; preds = %bb.apk
  %i.etx = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit2524

.loopexit2524.loopexit:                           ; preds = %bb.apl
  %i.ety = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %189) #20
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %188) #20
  br label %.loopexit2524

.loopexit2524:                                    ; preds = %.loopexit2524.loopexit, %bb.arj
  %.pn539 = phi { ptr, i32 } [ %i.etx, %bb.arj ], [ %i.ety, %.loopexit2524.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %188) #20
  br label %bb.aru

bb.ark:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit2017
  %i.etz = landingpad { ptr, i32 }
          cleanup
  br label %bb.arq

bb.arl:                                           ; preds = %bb.apq
  %i.eua = landingpad { ptr, i32 }
          cleanup
  br label %bb.arp

bb.arm:                                           ; preds = %bb.apr
  %i.eub = landingpad { ptr, i32 }
          cleanup
  br label %bb.aro

bb.arn:                                           ; preds = %bb.aps
  %i.euc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %191) #20
  br label %bb.aro

bb.aro:                                           ; preds = %bb.arn, %bb.arm
  %.pn541 = phi { ptr, i32 } [ %i.euc, %bb.arn ], [ %i.eub, %bb.arm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %191) #20
  br label %bb.arp

bb.arp:                                           ; preds = %bb.aro, %bb.arl
  %.pn541.pn = phi { ptr, i32 } [ %.pn541, %bb.aro ], [ %i.eua, %bb.arl ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %190) #20
  br label %bb.arq

bb.arq:                                           ; preds = %bb.arp, %bb.ark
  %.pn541.pn.pn = phi { ptr, i32 } [ %.pn541.pn, %bb.arp ], [ %i.etz, %bb.ark ]
  call void @llvm.lifetime.end.p0(ptr nonnull %190) #20
  br label %bb.art

.thread2490:                                      ; preds = %bb.apt
  %i.eud = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit2523

bb.arr:                                           ; preds = %bb.apv
  %i.eue = landingpad { ptr, i32 }
          cleanup
  br label %.thread2496

bb.ars:                                           ; preds = %bb.apw
  %i.euf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %192) #20
  br label %.thread2496

.thread2496:                                      ; preds = %bb.ars, %bb.arr
  %.pn545 = phi { ptr, i32 } [ %i.euf, %bb.ars ], [ %i.eue, %bb.arr ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %195) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %195) #20
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %194) #20
  br label %.loopexit2523

.loopexit2523.loopexit:                           ; preds = %bb.apu
  %i.eug = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %195) #20
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %194) #20
  br label %.loopexit2523

.loopexit2523:                                    ; preds = %.loopexit2523.loopexit, %.thread2496, %.thread2490
  %.pn545.pn.pn2495 = phi { ptr, i32 } [ %i.eud, %.thread2490 ], [ %.pn545, %.thread2496 ], [ %i.eug, %.loopexit2523.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %194) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %193) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %192) #20
  br label %bb.art

bb.art:                                           ; preds = %.loopexit2523, %bb.arq
  %.pn549 = phi { ptr, i32 } [ %.pn541.pn.pn, %bb.arq ], [ %.pn545.pn.pn2495, %.loopexit2523 ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %187) #20
  br label %bb.aru

bb.aru:                                           ; preds = %bb.art, %.loopexit2524
  %.pn549.pn = phi { ptr, i32 } [ %.pn549, %bb.art ], [ %.pn539, %.loopexit2524 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %187) #20
  br label %bb.arv

bb.arv:                                           ; preds = %bb.aru, %bb.ari
  %.pn549.pn.pn = phi { ptr, i32 } [ %.pn549.pn, %bb.aru ], [ %.pn535.pn.pn, %bb.ari ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %182) #20
  br label %bb.arw

bb.arw:                                           ; preds = %.loopexit2525, %bb.arv
  %.pn549.pn.pn.pn = phi { ptr, i32 } [ %.pn549.pn.pn, %bb.arv ], [ %.pn533, %.loopexit2525 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %182) #20
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %181) #20
  br label %bb.arx

bb.arx:                                           ; preds = %bb.arw, %bb.ara
  %.pn549.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn549.pn.pn.pn, %bb.arw ], [ %i.etq, %bb.ara ]
  call void @llvm.lifetime.end.p0(ptr nonnull %181) #20
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %180) #20
  br label %bb.ary

bb.ary:                                           ; preds = %bb.arx, %bb.aqz
  %.pn549.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn549.pn.pn.pn.pn.pn, %bb.arx ], [ %i.etp, %bb.aqz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %180) #20
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %176) #20
  br label %bb.arz

bb.arz:                                           ; preds = %bb.ary, %bb.aqy
  %.pn549.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn549.pn.pn.pn.pn.pn.pn, %bb.ary ], [ %.pn528.pn.pn.pn, %bb.aqy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %176) #20
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %172) #20
  br label %bb.asa

bb.asa:                                           ; preds = %bb.arz, %bb.aqp
  %.pn549.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn549.pn.pn.pn.pn.pn.pn.pn, %bb.arz ], [ %.pn523.pn.pn.pn, %bb.aqp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %172) #20
  br label %bb.asb

bb.asb:                                           ; preds = %bb.aqd, %bb.asa, %bb.aqg, %bb.aqa, %bb.apz
  %.pn549.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.esz, %bb.apz ], [ %i.eta, %bb.aqa ], [ %.pn519, %bb.aqd ], [ %.pn549.pn.pn.pn.pn.pn.pn.pn.pn, %bb.asa ], [ %.pn521, %bb.aqg ]
  call void @_ZNSt6vectorIS_IN4cvc58internal12NodeTemplateILb1EEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %167) #20
  br label %bb.asc

bb.asc:                                           ; preds = %bb.apy, %bb.asb
  %.pn549.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn549.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.asb ], [ %i.esy, %bb.apy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %167) #20
  br label %bb.ben

.critedge807:                                     ; preds = %._crit_edge2599, %bb.apx, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1991
  %.pre-phi = phi i32 [ %i.egr, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1991 ], [ %.pre2681, %bb.apx ], [ %i.egr, %._crit_edge2599 ] ; 2 uses
  %.3 = phi i32 [ %.1, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1991 ], [ %i.esx, %bb.apx ], [ %.1, %._crit_edge2599 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %196) #20
  %i.euh = zext i32 %.pre-phi to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %196, i8 0, i64 24, i1 false)
  %.not.i.i.i.i2051 = icmp eq i32 %.pre-phi, 0
  br i1 %.not.i.i.i.i2051, label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i, label %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i

_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %.critedge807.thread, %.critedge807
  %i.eui = phi i64 [ 1, %.critedge807.thread ], [ %i.euh, %.critedge807 ] ; 2 uses
  %.33110 = phi i32 [ 0, %.critedge807.thread ], [ %.3, %.critedge807 ]
  %i.euj = shl nuw nsw i64 %i.eui, 3
  %i.euk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.euj) #22
          to label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i unwind label %bb.asl

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i, %.critedge807
  %i.eul = phi i64 [ 0, %.critedge807 ], [ %i.eui, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %.33111 = phi i32 [ %.3, %.critedge807 ], [ %.33110, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i ]
  %i.eum = phi ptr [ null, %.critedge807 ], [ %i.euk, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.eum, ptr %196, align 8, !tbaa !72
  %i.eun = getelementptr inbounds nuw i8, ptr %196, i64 8 ; 3 uses
  store ptr %i.eum, ptr %i.eun, align 8, !tbaa !69
  %i.euo = getelementptr inbounds nuw [8 x i8], ptr %i.eum, i64 %i.eul
  %i.eup = getelementptr inbounds nuw i8, ptr %196, i64 16 ; 3 uses
  store ptr %i.euo, ptr %i.eup, align 8, !tbaa !81
  %i.euq = invoke noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN4cvc58internal12NodeTemplateILb1EEEmEET_S7_T0_(ptr noundef %i.eum, i64 noundef %i.eul)
          to label %bb.asf unwind label %bb.asd

bb.asd:                                           ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i
  %i.eur = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eus = load ptr, ptr %196, align 8, !tbaa !72 ; 3 uses
  %.not.i.i.i2052 = icmp eq ptr %i.eus, null
  br i1 %.not.i.i.i2052, label %.body2055, label %bb.ase

bb.ase:                                           ; preds = %bb.asd
  %i.eut = load ptr, ptr %i.eup, align 8, !tbaa !81
  %i.euu = ptrtoint ptr %i.eut to i64
  %i.euv = ptrtoint ptr %i.eus to i64
  %i.euw = sub i64 %i.euu, %i.euv
  call void @_ZdlPvm(ptr noundef nonnull %i.eus, i64 noundef %i.euw) #21
  br label %.body2055

bb.asf:                                           ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i
  store ptr %i.euq, ptr %i.eun, align 8, !tbaa !69
  %i.eux = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.euy = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.euz = getelementptr inbounds nuw i8, ptr %218, i64 8
  %i.eva = getelementptr inbounds nuw i8, ptr %218, i64 16
  %i.evb = getelementptr inbounds nuw i8, ptr %212, i64 8
  %i.evc = getelementptr inbounds nuw i8, ptr %211, i64 16 ; 3 uses
  %i.evd = getelementptr inbounds nuw i8, ptr %211, i64 8 ; 2 uses
  %i.eve = getelementptr inbounds nuw i8, ptr %210, i64 8
  %i.evf = getelementptr inbounds nuw i8, ptr %210, i64 16
  br label %bb.asm

bb.asg:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit2275
  %i.evg = load ptr, ptr %196, align 8, !tbaa !72
  %i.evh = load ptr, ptr %i.evg, align 8, !tbaa !32
  %i.evi = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.evj = icmp eq i8 %i.evi, 0
  br i1 %i.evj, label %bb.ash, label %bb.baf, !prof !33

bb.ash:                                           ; preds = %bb.asg
  %i.evk = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #20
  %.not.i.i2057 = icmp eq i32 %i.evk, 0
  br i1 %.not.i.i2057, label %bb.baf, label %bb.asi

bb.asi:                                           ; preds = %bb.ash
  %i.evl = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.asj unwind label %bb.ask   ; 3 uses

bb.asj:                                           ; preds = %bb.asi
  store i64 1152920405095219200, ptr %i.evl, align 8
  %i.evm = getelementptr inbounds nuw i8, ptr %i.evl, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.evm, i8 0, i64 16, i1 false)
  store ptr %i.evl, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !34
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #20
  br label %bb.baf

bb.ask:                                           ; preds = %bb.asi
  %i.evn = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #20
  br label %.body2058

bb.asl:                                           ; preds = %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i
  %i.evo = landingpad { ptr, i32 }
          cleanup
  br label %.body2055

bb.asm:                                           ; preds = %bb.asf, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit2275
  %.04812603 = phi i32 [ 0, %bb.asf ], [ %i.fwf, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit2275 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %197) #20
  %i.evp = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.evq = icmp eq i8 %i.evp, 0
  br i1 %i.evq, label %bb.asn, label %bb.asr, !prof !33

bb.asn:                                           ; preds = %bb.asm
  %i.evr = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #20
  %.not.i.i2061 = icmp eq i32 %i.evr, 0
  br i1 %.not.i.i2061, label %bb.asr, label %bb.aso

bb.aso:                                           ; preds = %bb.asn
  %i.evs = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.asp unwind label %bb.asq   ; 3 uses

bb.asp:                                           ; preds = %bb.aso
  store i64 1152920405095219200, ptr %i.evs, align 8
  %i.evt = getelementptr inbounds nuw i8, ptr %i.evs, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.evt, i8 0, i64 16, i1 false)
  store ptr %i.evs, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !34
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #20
  br label %bb.asr

bb.asq:                                           ; preds = %bb.aso
  %i.evu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #20
  br label %.body2062

bb.asr:                                           ; preds = %bb.asp, %bb.asn, %bb.asm
  %i.evv = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !34
  store ptr %i.evv, ptr %197, align 8, !tbaa !32
  %i.evw = icmp eq i32 %.04812603, 0
  br i1 %i.evw, label %bb.ass, label %bb.aun

bb.ass:                                           ; preds = %bb.asr
  %i.evx = load ptr, ptr %163, align 8, !tbaa !372 ; 2 uses
  %i.evy = load ptr, ptr %i.evx, align 8, !tbaa !84
  %i.evz = getelementptr inbounds nuw i8, ptr %i.evx, i64 8
  %i.ewa = load ptr, ptr %i.evz, align 8, !tbaa !84
  %i.ewb = icmp eq ptr %i.evy, %i.ewa
  br i1 %i.ewb, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit2206, label %bb.ast

bb.ast:                                           ; preds = %bb.ass
  call void @llvm.lifetime.start.p0(ptr nonnull %198) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %199) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %200) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !602)
  %i.ewc = load ptr, ptr %166, align 8, !tbaa !32, !noalias !602 ; 2 uses
  %i.ewd = getelementptr inbounds nuw i8, ptr %i.ewc, i64 8
  %i.ewe = load i64, ptr %i.ewd, align 8, !noalias !602
  %i.ewf = trunc i64 %i.ewe to i32
  %i.ewg = and i32 %i.ewf, 1023                   ; 2 uses
  %i.ewh = icmp eq i32 %i.ewg, 1023
  %i.ewi = select i1 %i.ewh, i32 -1, i32 %i.ewg
  %i.ewj = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ewi)
          to label %.noexc2066 unwind label %bb.aud

.noexc2066:                                       ; preds = %bb.ast
  %i.ewk = icmp eq i32 %i.ewj, 2
  %i.ewl = getelementptr inbounds nuw i8, ptr %i.ewc, i64 24
  %i.ewm = zext i1 %i.ewk to i64
  %i.ewn = getelementptr inbounds nuw [8 x i8], ptr %i.ewl, i64 %i.ewm
  %i.ewo = load ptr, ptr %i.ewn, align 8, !tbaa !34, !noalias !602 ; 5 uses
  store ptr %i.ewo, ptr %200, align 8, !tbaa !32, !alias.scope !602
  %i.ewp = load i64, ptr %i.ewo, align 8, !noalias !602 ; 3 uses
  %i.ewq = lshr i64 %i.ewp, 40
  %i.ewr = trunc nuw nsw i64 %i.ewq to i32
  %i.ews = and i32 %i.ewr, 1048575                ; 3 uses
  %i.ewt = icmp samesign ult i32 %i.ews, 1048574
  br i1 %i.ewt, label %bb.asu, label %bb.asv, !prof !76

bb.asu:                                           ; preds = %.noexc2066
  %i.ewu = add nuw nsw i32 %i.ews, 1
  %i.ewv = zext nneg i32 %i.ewu to i64
  %i.eww = shl nuw nsw i64 %i.ewv, 40
  %i.ewx = and i64 %i.ewp, -1152920405095219201
  %i.ewy = or i64 %i.eww, %i.ewx
  store i64 %i.ewy, ptr %i.ewo, align 8, !noalias !602
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit2068

bb.asv:                                           ; preds = %.noexc2066
  %i.ewz = icmp eq i32 %i.ews, 1048574
  br i1 %i.ewz, label %bb.asw, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit2068, !prof !77

bb.asw:                                           ; preds = %bb.asv
  %i.exa = or i64 %i.ewp, 1152920405095219200
  store i64 %i.exa, ptr %i.ewo, align 8, !noalias !602
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ewo)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit2068 unwind label %bb.aud

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit2068: ; preds = %bb.asv, %bb.asu, %bb.asw
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EE11getOperatorEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %199, ptr noundef nonnull align 8 dereferenceable(8) %200)
          to label %bb.asx unwind label %bb.aue

bb.asx:                                           ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit2068
  call void @llvm.lifetime.start.p0(ptr nonnull %201) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %202) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !605)
  %i.exb = load ptr, ptr %166, align 8, !tbaa !32, !noalias !605 ; 2 uses
  %i.exc = getelementptr inbounds nuw i8, ptr %i.exb, i64 8
  %i.exd = load i64, ptr %i.exc, align 8, !noalias !605
  %i.exe = trunc i64 %i.exd to i32
  %i.exf = and i32 %i.exe, 1023                   ; 2 uses
  %i.exg = icmp eq i32 %i.exf, 1023
  %i.exh = select i1 %i.exg, i32 -1, i32 %i.exf
  %i.exi = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.exh)
          to label %.noexc2070 unwind label %bb.auf

.noexc2070:                                       ; preds = %bb.asx
  %i.exj = icmp eq i32 %i.exi, 2
  %spec.select.i.i2069 = select i1 %i.exj, i64 2, i64 1
  %i.exk = getelementptr inbounds nuw i8, ptr %i.exb, i64 24
end_hunk_2
