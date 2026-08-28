Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ISelLowering?download=true
inline.NumInlined: 54009
inline.NumDeleted: 7556
loop-unroll.NumCompletelyUnrolled: 255
loop-unroll.NumRuntimeUnrolled: 77
loop-unroll.NumUnrolled: 338
begin_hunk_0_@_ZNK4llvm17X86TargetLowering39SimplifyDemandedVectorEltsForTargetNodeENS_7SDValueERKNS_5APIntERS2_S5_RNS_14TargetLowering17TargetLoweringOptEj:bb.a
  %58 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %59 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %60 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %61 = alloca %"struct.llvm::EVT", align 8       ; 60 uses
  %62 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %63 = alloca %"class.llvm::APInt", align 8      ; 10 uses
  %64 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %65 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %66 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %67 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %68 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %69 = alloca %"class.llvm::APInt", align 8      ; 11 uses
  %70 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %71 = alloca %"class.llvm::APInt", align 8      ; 11 uses
  %72 = alloca %"class.llvm::APInt", align 8      ; 12 uses
  %73 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %74 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %75 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %76 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %77 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %78 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %79 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %80 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %81 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %82 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %83 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %84 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %85 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %86 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %87 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %88 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %89 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %90 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %91 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %92 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %93 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %94 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %95 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %96 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %97 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %98 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %99 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %100 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %101 = alloca %"class.llvm::SDLoc", align 8     ; 5 uses
  %102 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  %103 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  %104 = alloca %"class.llvm::APInt", align 8     ; 11 uses
  %105 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  %106 = alloca %"class.llvm::SDLoc", align 8     ; 5 uses
  %107 = alloca %"class.llvm::SDLoc", align 8     ; 5 uses
  %108 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %109 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  %110 = alloca %"class.llvm::APInt", align 8     ; 9 uses
  %111 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  %112 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  %113 = alloca %"class.llvm::SDLoc", align 8     ; 5 uses
  %114 = alloca %"class.llvm::SDLoc", align 8     ; 12 uses
  %115 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %116 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %117 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %118 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %119 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %120 = alloca %"class.llvm::APInt", align 8     ; 8 uses
  %121 = alloca %"class.llvm::APInt", align 8     ; 8 uses
  %122 = alloca %"class.llvm::APInt", align 8     ; 8 uses
  %123 = alloca %"class.llvm::APInt", align 8     ; 8 uses
  %124 = alloca %"class.llvm::APInt", align 8     ; 7 uses
  %125 = alloca %"class.llvm::SDLoc", align 8     ; 6 uses
  %126 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %127 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  %128 = alloca %"class.llvm::APInt", align 8     ; 7 uses
  %129 = alloca %"class.llvm::SDLoc", align 8     ; 6 uses
  %130 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %131 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  %132 = alloca %"class.llvm::SDValue", align 8   ; 6 uses
  %133 = alloca %"class.llvm::SDValue", align 8   ; 6 uses
  %134 = alloca %"class.llvm::APInt", align 8     ; 8 uses
  %135 = alloca %"class.llvm::APInt", align 8     ; 10 uses
  %136 = alloca %"class.llvm::APInt", align 8     ; 8 uses
  %137 = alloca %"class.llvm::APInt", align 8     ; 10 uses
  %138 = alloca %"struct.std::pair.933", align 8  ; 10 uses
  %139 = alloca %"struct.std::pair.933", align 8  ; 10 uses
  %140 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  %141 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  %142 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  %143 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  %144 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %145 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %146 = alloca %"class.llvm::SDLoc", align 8     ; 5 uses
  %147 = alloca %"struct.llvm::EVT", align 8      ; 6 uses
  %148 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  %149 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  %150 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  %151 = alloca %"class.llvm::SDValue", align 8   ; 6 uses
  %152 = alloca %"class.llvm::SDValue", align 8   ; 6 uses
  %153 = alloca %"class.llvm::APInt", align 8     ; 8 uses
  %154 = alloca %"class.llvm::APInt", align 8     ; 8 uses
  %155 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  %156 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  %157 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  %158 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  %159 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %160 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %161 = alloca %"class.llvm::SDLoc", align 8     ; 5 uses
  %162 = alloca %"class.llvm::SDValue", align 8   ; 6 uses
  %163 = alloca %"class.llvm::SDValue", align 8   ; 6 uses
  %164 = alloca %"class.llvm::APInt", align 8     ; 13 uses
  %165 = alloca %"class.llvm::APInt", align 8     ; 13 uses
  %166 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  %167 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  %168 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  %169 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  %170 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %171 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %172 = alloca %"class.llvm::SDLoc", align 8     ; 5 uses
  %173 = alloca %"class.llvm::APInt", align 8     ; 9 uses
  %174 = alloca %"class.llvm::APInt", align 8     ; 9 uses
  %175 = alloca %"class.llvm::APInt", align 8     ; 9 uses
  %176 = alloca %"class.llvm::APInt", align 8     ; 5 uses
  %177 = alloca %"class.llvm::APInt", align 8     ; 5 uses
  %178 = alloca %"class.llvm::SmallVector.416", align 8 ; 9 uses
  %179 = alloca %"class.llvm::SDLoc", align 8     ; 7 uses
  %180 = alloca %"class.llvm::APInt", align 8     ; 10 uses
  %181 = alloca %"class.llvm::APInt", align 8     ; 10 uses
  %182 = alloca %"class.llvm::APInt", align 8     ; 10 uses
  %183 = alloca %"class.llvm::APInt", align 8     ; 10 uses
  %184 = alloca %"class.llvm::APInt", align 8     ; 7 uses
  %185 = alloca %"class.llvm::APInt", align 8     ; 7 uses
  %186 = alloca %"class.llvm::APInt", align 8     ; 5 uses
  %187 = alloca %"class.llvm::APInt", align 8     ; 5 uses
  %188 = alloca %"class.llvm::APInt", align 8     ; 5 uses
  %189 = alloca %"class.llvm::APInt", align 8     ; 5 uses
  %190 = alloca %"class.llvm::APInt", align 8     ; 8 uses
  %191 = alloca %"class.llvm::SDLoc", align 8     ; 6 uses
  %192 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %193 = alloca %"class.llvm::SDLoc", align 8     ; 5 uses
  %194 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %195 = alloca %"class.llvm::SDLoc", align 8     ; 5 uses
  %196 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  %197 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  %198 = alloca %"class.llvm::APInt", align 8     ; 7 uses
  %199 = alloca %"class.llvm::SDLoc", align 8     ; 5 uses
  %200 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %201 = alloca %"class.llvm::APInt", align 8     ; 14 uses
  %202 = alloca %"class.llvm::APInt", align 8     ; 11 uses
  %203 = alloca %"class.llvm::SDLoc", align 8     ; 7 uses
  %204 = alloca %"class.llvm::SDValue", align 8   ; 8 uses
  %205 = alloca %"class.llvm::SDLoc", align 8     ; 6 uses
  %206 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 5 uses
  %207 = alloca %"class.llvm::ArrayRef.420", align 8 ; 3 uses
  %208 = alloca %"struct.llvm::EVT", align 8      ; 3 uses
  %209 = alloca %"struct.llvm::EVT", align 8      ; 11 uses
  %210 = alloca %"class.llvm::SDLoc", align 8     ; 6 uses
  %211 = alloca %"class.llvm::SDLoc", align 8     ; 7 uses
  %212 = alloca %"class.llvm::SDLoc", align 8     ; 7 uses
  %213 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %214 = alloca %"class.llvm::SmallVector.940", align 8 ; 9 uses
  %215 = alloca %"class.llvm::SDLoc", align 8     ; 6 uses
  %216 = alloca %"class.llvm::SDLoc", align 8     ; 7 uses
  %217 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %218 = alloca %"class.llvm::SmallVector.416", align 8 ; 10 uses
  %219 = alloca %"class.llvm::SmallVector.726", align 8 ; 8 uses
  %220 = alloca %"class.llvm::MVT", align 2       ; 6 uses
  %221 = alloca %"class.llvm::MVT", align 2       ; 4 uses
  %222 = alloca %"class.llvm::SDLoc", align 8     ; 9 uses
  %223 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %224 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %225 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %226 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %227 = alloca %"class.llvm::SmallVector.416", align 8 ; 11 uses
  %228 = alloca %"class.llvm::SmallVector.726", align 8 ; 8 uses
  %229 = alloca %"class.llvm::MVT", align 2       ; 5 uses
  %230 = alloca %"class.llvm::MVT", align 2       ; 4 uses
  %231 = alloca %"class.llvm::SDLoc", align 8     ; 9 uses
  %232 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %233 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %234 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %235 = alloca %"class.llvm::SDLoc", align 8     ; 7 uses
  %236 = alloca %"struct.llvm::EVT", align 8      ; 6 uses
  %237 = alloca %"class.llvm::SDLoc", align 8     ; 7 uses
  %238 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %239 = alloca %"class.llvm::SDLoc", align 8     ; 7 uses
  %240 = alloca %"class.llvm::SmallVector.527", align 8 ; 10 uses
  %241 = alloca %"struct.llvm::EVT", align 8      ; 5 uses
  %242 = alloca %"class.llvm::ArrayRef.420", align 8 ; 3 uses
  %243 = alloca %"class.llvm::APInt", align 8     ; 9 uses
  %244 = alloca %"class.llvm::APInt", align 8     ; 9 uses
  %245 = alloca %"class.llvm::SmallVector.923", align 8 ; 13 uses
  %246 = alloca %"class.llvm::SmallVector.726", align 8 ; 13 uses
  %247 = alloca %"class.llvm::SDLoc", align 8     ; 5 uses
  %248 = alloca %"class.llvm::APInt", align 8     ; 11 uses
  %249 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  %250 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  %251 = alloca %"class.llvm::SmallVector.923", align 8 ; 7 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %252 = alloca [1 x %"class.llvm::SDValue"], align 8 ; 5 uses
  %253 = alloca %"class.llvm::ArrayRef.421", align 8 ; 3 uses
  %254 = alloca %"class.llvm::ArrayRef.945", align 8 ; 2 uses
  %255 = alloca %"class.llvm::SDLoc", align 8     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 11 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !645  ; 36 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !452  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #38
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !454
  %i.n = zext i32 %2 to i64                       ; 3 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.o, align 8, !tbaa !299 ; 12 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !455 ; 5 uses
  store i16 %.sroa.0.0.copyload.i.i, ptr %61, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 29 uses
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.p, align 8
  switch i32 %i.k, label %bb.og [
    i32 770, label %bb.b
    i32 771, label %bb.b
    i32 946, label %bb.aa
    i32 947, label %bb.aa
    i32 762, label %bb.bf
    i32 773, label %bb.ca
    i32 967, label %bb.cq
    i32 976, label %bb.cq
    i32 973, label %bb.cq
    i32 970, label %bb.dg
    i32 978, label %bb.dg
    i32 974, label %bb.dg
    i32 949, label %bb.do
    i32 950, label %bb.do
    i32 971, label %bb.do
    i32 979, label %bb.do
    i32 975, label %bb.do
    i32 571, label %bb.ec
    i32 574, label %bb.ec
    i32 763, label %bb.ei
    i32 764, label %bb.ei
    i32 709, label %bb.es
    i32 710, label %bb.fh
    i32 547, label %bb.fw
    i32 598, label %bb.hc
    i32 619, label %bb.hc
    i32 590, label %bb.hc
    i32 592, label %bb.hc
    i32 759, label %bb.hl
    i32 760, label %bb.hl
    i32 699, label %bb.ie
    i32 701, label %bb.ie
    i32 645, label %bb.ie
    i32 646, label %bb.ie
    i32 980, label %bb.jl
    i32 981, label %bb.jl
    i32 984, label %bb.jl
    i32 552, label %bb.jy
    i32 553, label %bb.ma
    i32 986, label %bb.nd
    i32 985, label %bb.nk
    i32 847, label %bb.nm
    i32 942, label %bb.od
    i32 774, label %bb.oe
    i32 943, label %bb.oe
    i32 941, label %bb.oe
    i32 948, label %bb.of
    i32 939, label %bb.of
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #38
  %i.q = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 3 uses
  store i32 1, ptr %i.q, align 8, !tbaa !645
  store i64 0, ptr %62, align 8, !tbaa !314
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #38
  %i.r = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 4 uses
  store i32 1, ptr %i.r, align 8, !tbaa !645
  store i64 0, ptr %63, align 8, !tbaa !314
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #38
  %i.s = getelementptr inbounds nuw i8, ptr %64, i64 8 ; 3 uses
  store i32 1, ptr %i.s, align 8, !tbaa !645
  store i64 0, ptr %64, align 8, !tbaa !314
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #38
  %i.t = getelementptr inbounds nuw i8, ptr %65, i64 8 ; 3 uses
  store i32 1, ptr %i.t, align 8, !tbaa !645
  store i64 0, ptr %65, align 8, !tbaa !314
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !636  ; 4 uses
  %.sroa.01516.0.copyload = load ptr, ptr %i.v, align 8, !tbaa !449
  %.sroa.41517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.41517.0.copyload = load i32, ptr %.sroa.41517.0..sroa_idx, align 8, !tbaa !189
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.01513.0.copyload = load ptr, ptr %i.w, align 8, !tbaa !449
  %.sroa.41514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.41514.0.copyload = load i32, ptr %.sroa.41514.0..sroa_idx, align 8, !tbaa !189
  %i.x = add i32 %7, 1                            ; 2 uses
  %i.y = call noundef zeroext i1 @_ZNK4llvm14TargetLowering26SimplifyDemandedVectorEltsENS_7SDValueERKNS_5APIntERS2_S5_RNS0_17TargetLoweringOptEjb(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %.sroa.01516.0.copyload, i32 %.sroa.41517.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %62, ptr noundef nonnull align 8 dereferenceable(12) %63, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef %i.x, i1 noundef zeroext false) #38
  br i1 %i.y, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = call noundef zeroext i1 @_ZNK4llvm14TargetLowering26SimplifyDemandedVectorEltsENS_7SDValueERKNS_5APIntERS2_S5_RNS0_17TargetLoweringOptEjb(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %.sroa.01513.0.copyload, i32 %.sroa.41514.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %64, ptr noundef nonnull align 8 dereferenceable(12) %65, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef %i.x, i1 noundef zeroext false) #38
  br i1 %i.z, label %bb.r, label %.critedge1919

.critedge1919:                                    ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #38
  %i.aa = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.r, align 8, !tbaa !645 ; 2 uses
  store i32 %i.ab, ptr %i.aa, align 8, !tbaa !645
  %i.ac = icmp ult i32 %i.ab, 65
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge1919
  %i.ad = load i64, ptr %63, align 8, !tbaa !314
  store i64 %i.ad, ptr %67, align 8, !tbaa !314
  br label %_ZN4llvm5APIntC2ERKS0_.exit

bb.e:                                             ; preds = %.critedge1919
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %67, ptr noundef nonnull align 8 dereferenceable(12) %63) #38
  br label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %bb.d, %bb.e
  call void @_ZN4llvmorENS_5APIntERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %66, ptr nofree noundef nonnull align 8 dereferenceable(16) %67, ptr noundef nonnull align 8 dereferenceable(12) %65)
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !645
  %i.ag = icmp ult i32 %i.af, 65
  br i1 %i.ag, label %_ZN4llvm5APIntD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  %i.ah = load ptr, ptr %5, align 8, !tbaa !314   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZN4llvm5APIntD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.ah) #41
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.g, %bb.f, %_ZN4llvm5APIntC2ERKS0_.exit
  %i.aj = load i64, ptr %66, align 8
  store i64 %i.aj, ptr %5, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !645
  store i32 %i.al, ptr %i.ae, align 8, !tbaa !645
  store i32 0, ptr %i.ak, align 8, !tbaa !645
  %i.am = load i32, ptr %i.aa, align 8, !tbaa !645
  %i.an = icmp ugt i32 %i.am, 64
  br i1 %i.an, label %bb.h, label %_ZN4llvm5APIntD2Ev.exit1973

bb.h:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.ao = load ptr, ptr %67, align 8, !tbaa !314  ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZN4llvm5APIntD2Ev.exit1973, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.ao) #41
  br label %_ZN4llvm5APIntD2Ev.exit1973

_ZN4llvm5APIntD2Ev.exit1973:                      ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #38
  %i.aq = load i32, ptr %i.t, align 8, !tbaa !645
  %i.ar = icmp ugt i32 %i.aq, 64
  br i1 %i.ar, label %bb.j, label %_ZN4llvm5APIntD2Ev.exit1974

bb.j:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit1973
  %i.as = load ptr, ptr %65, align 8, !tbaa !314  ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZN4llvm5APIntD2Ev.exit1974, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.as) #41
  br label %_ZN4llvm5APIntD2Ev.exit1974

_ZN4llvm5APIntD2Ev.exit1974:                      ; preds = %_ZN4llvm5APIntD2Ev.exit1973, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #38
  %i.au = load i32, ptr %i.s, align 8, !tbaa !645
  %i.av = icmp ugt i32 %i.au, 64
  br i1 %i.av, label %bb.l, label %_ZN4llvm5APIntD2Ev.exit1975

bb.l:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit1974
  %i.aw = load ptr, ptr %64, align 8, !tbaa !314  ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN4llvm5APIntD2Ev.exit1975, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.aw) #41
  br label %_ZN4llvm5APIntD2Ev.exit1975

_ZN4llvm5APIntD2Ev.exit1975:                      ; preds = %_ZN4llvm5APIntD2Ev.exit1974, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #38
  %i.ay = load i32, ptr %i.r, align 8, !tbaa !645
  %i.az = icmp ugt i32 %i.ay, 64
  br i1 %i.az, label %bb.n, label %_ZN4llvm5APIntD2Ev.exit1976

bb.n:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit1975
  %i.ba = load ptr, ptr %63, align 8, !tbaa !314  ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %_ZN4llvm5APIntD2Ev.exit1976, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.ba) #41
  br label %_ZN4llvm5APIntD2Ev.exit1976

_ZN4llvm5APIntD2Ev.exit1976:                      ; preds = %_ZN4llvm5APIntD2Ev.exit1975, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #38
  %i.bc = load i32, ptr %i.q, align 8, !tbaa !645
  %i.bd = icmp ugt i32 %i.bc, 64
end_hunk_0
begin_hunk_1_@_ZNK4llvm17X86TargetLowering39SimplifyDemandedVectorEltsForTargetNodeENS_7SDValueERKNS_5APIntERS2_S5_RNS_14TargetLowering17TargetLoweringOptEj:bb.a
  %spec.select.i.i2307 = icmp ult i16 %i.bvr, 197
  br i1 %spec.select.i.i2307, label %bb.qv, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

bb.qv:                                            ; preds = %._crit_edge
  %i.bvs = zext nneg i16 %.sroa.0.0.copyload.i2306 to i64
  %i.bvt = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.bvs
  %i.bvu = getelementptr i8, ptr %i.bvt, i64 -2
  %i.bvv = load i16, ptr %i.bvu, align 2, !tbaa !299
  br label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit:        ; preds = %._crit_edge, %bb.qv
  %.sroa.0.0.i23082773 = phi i16 [ %i.bvv, %bb.qv ], [ %.sroa.0.0.copyload.i2306, %._crit_edge ] ; 2 uses
  %i.bvw = zext nneg i32 %i.bdz to i64
  %i.bvx = zext i16 %.sroa.0.0.i23082773 to i64
  %i.bvy = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bvx
  %i.bvz = getelementptr i8, ptr %i.bvy, i64 -16
  %.sroa.0.0.copyload.i.i2311 = load i64, ptr %i.bvz, align 16
  %i.bwa = udiv i64 %i.bvw, %.sroa.0.0.copyload.i.i2311
  %i.bwb = trunc nuw nsw i64 %i.bwa to i32
  %i.bwc = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0.0.i23082773, i32 noundef %i.bwb)
  %i.bwd = load ptr, ptr %6, align 8, !tbaa !2801, !nonnull !24, !align !184
  %i.bwe = load ptr, ptr %240, align 8, !tbaa !26
  store ptr %i.bwe, ptr %242, align 8, !tbaa !751
  %i.bwf = getelementptr inbounds nuw i8, ptr %242, i64 8
  %i.bwg = load i32, ptr %i.bvk, align 8, !tbaa !630
  %i.bwh = zext i32 %i.bwg to i64
  store i64 %i.bwh, ptr %i.bwf, align 8, !tbaa !753
  %i.bwi = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.bwd, i32 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(12) %239, i16 %i.bwc, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.420") align 8 %242) #38 ; 2 uses
  %.fca.0.extract169 = extractvalue { ptr, i32 } %i.bwi, 0
  %.fca.1.extract170 = extractvalue { ptr, i32 } %i.bwi, 1
  %i.bwj = load ptr, ptr %6, align 8, !tbaa !2801, !nonnull !24, !align !184
  %.sroa.0163.0.copyload = load i16, ptr %61, align 8, !tbaa !299
  %.sroa.2165.0.copyload = load ptr, ptr %i.p, align 8, !tbaa !455
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  %i.bwk = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.bwj, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %24, i16 %.sroa.0163.0.copyload, ptr %.sroa.2165.0.copyload) #38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #38
  %.fca.0.extract159 = extractvalue { ptr, i32 } %i.bwk, 0
  %.fca.1.extract160 = extractvalue { ptr, i32 } %i.bwk, 1
  %i.bwl = load ptr, ptr %6, align 8, !tbaa !2801, !nonnull !24, !align !184
  %i.bwm = call fastcc { ptr, i32 } @_ZL15insertSubVectorN4llvm7SDValueES0_jRNS_12SelectionDAGERKNS_5SDLocEj(ptr %.fca.0.extract159, i32 %.fca.1.extract160, ptr %.fca.0.extract169, i32 %.fca.1.extract170, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(920) %i.bwl, ptr noundef nonnull align 8 dereferenceable(12) %239, i32 noundef %i.bdz) ; 2 uses
  %.fca.0.extract148 = extractvalue { ptr, i32 } %i.bwm, 0
  %.fca.1.extract149 = extractvalue { ptr, i32 } %i.bwm, 1
  %i.bwn = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %1, ptr %i.bwn, align 8, !tbaa !449
  %.sroa.22.0..sroa_idx.i2312 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %2, ptr %.sroa.22.0..sroa_idx.i2312, align 8, !tbaa !189
  %i.bwo = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %.fca.0.extract148, ptr %i.bwo, align 8, !tbaa !449
  %.sroa.2.0..sroa_idx.i2313 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %.fca.1.extract149, ptr %.sroa.2.0..sroa_idx.i2313, align 8, !tbaa !189
  %i.bwp = load ptr, ptr %240, align 8, !tbaa !26 ; 2 uses
  %i.bwq = icmp eq ptr %i.bwp, %i.bvj
  br i1 %i.bwq, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit, label %bb.qw

bb.qw:                                            ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit
  call void @free(ptr noundef %i.bwp) #38
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit: ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit, %bb.qw
  call void @llvm.lifetime.end.p0(ptr nonnull %240) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %239) #38
  br label %.thread2729

bb.qx:                                            ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ] ; 2 uses
  %i.bwr = load ptr, ptr %i.bvo, align 8, !tbaa !636
  %i.bws = getelementptr inbounds nuw [40 x i8], ptr %i.bwr, i64 %indvars.iv ; 2 uses
  %.sroa.02403.0.copyload = load ptr, ptr %i.bws, align 8, !tbaa !449 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bws, i64 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !189 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %241) #38
  %i.bwt = getelementptr inbounds nuw i8, ptr %.sroa.02403.0.copyload, i64 48
  %i.bwu = load ptr, ptr %i.bwt, align 8, !tbaa !454
  %i.bwv = zext i32 %.sroa.6.0.copyload to i64
  %i.bww = getelementptr inbounds nuw [16 x i8], ptr %i.bwu, i64 %i.bwv ; 2 uses
  %.sroa.0.0.copyload.i.i2314 = load i16, ptr %i.bww, align 8, !tbaa !299 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i2315 = getelementptr inbounds nuw i8, ptr %i.bww, i64 8
  %.sroa.21.0.copyload.i.i2316 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i2315, align 8, !tbaa !455
  store i16 %.sroa.0.0.copyload.i.i2314, ptr %241, align 8
  store ptr %.sroa.21.0.copyload.i.i2316, ptr %i.bvp, align 8
  %.not.i2319 = icmp eq i16 %.sroa.0.0.copyload.i.i2314, 0
  br i1 %.not.i2319, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split2775

.split2775:                                       ; preds = %bb.qx
  %i.bwx = add i16 %.sroa.0.0.copyload.i.i2314, -19
  %spec.select.i.i2320 = icmp ult i16 %i.bwx, 197
  br i1 %spec.select.i.i2320, label %bb.qy, label %bb.qz

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.qx
  %i.bwy = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %241) #39
  br i1 %i.bwy, label %bb.qy, label %bb.qz

bb.qy:                                            ; preds = %.split2775, %_ZNK4llvm3EVT8isVectorEv.exit
  %i.bwz = load ptr, ptr %6, align 8, !tbaa !2801, !nonnull !24, !align !184
  %i.bxa = call fastcc { ptr, i32 } @_ZL16extractSubVectorN4llvm7SDValueEjRNS_12SelectionDAGERKNS_5SDLocEj(ptr nonnull %.sroa.02403.0.copyload, i32 %.sroa.6.0.copyload, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(920) %i.bwz, ptr noundef nonnull align 8 dereferenceable(12) %239, i32 noundef %i.bdz) ; 2 uses
  %.fca.0.extract179 = extractvalue { ptr, i32 } %i.bxa, 0
  %.fca.1.extract180 = extractvalue { ptr, i32 } %i.bxa, 1
  br label %bb.qz

bb.qz:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit, %.split2775, %bb.qy
  %.sroa.0186.0 = phi ptr [ %.fca.0.extract179, %bb.qy ], [ %.sroa.02403.0.copyload, %.split2775 ], [ %.sroa.02403.0.copyload, %_ZNK4llvm3EVT8isVectorEv.exit ] ; 2 uses
  %.sroa.3187.0 = phi i32 [ %.fca.1.extract180, %bb.qy ], [ %.sroa.6.0.copyload, %.split2775 ], [ %.sroa.6.0.copyload, %_ZNK4llvm3EVT8isVectorEv.exit ] ; 2 uses
  %i.bxb = load i32, ptr %i.bvk, align 8, !tbaa !630 ; 2 uses
  %i.bxc = load i32, ptr %i.bvl, align 4, !tbaa !631
  %.not.i2321 = icmp ult i32 %i.bxb, %i.bxc
  br i1 %.not.i2321, label %bb.rb, label %bb.ra, !prof !632

bb.ra:                                            ; preds = %bb.qz
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %240, ptr %.sroa.0186.0, i32 %.sroa.3187.0)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.rb:                                            ; preds = %bb.qz
  %i.bxd = zext i32 %i.bxb to i64
  %i.bxe = load ptr, ptr %240, align 8, !tbaa !26
  %i.bxf = getelementptr inbounds nuw [16 x i8], ptr %i.bxe, i64 %i.bxd ; 2 uses
  store ptr %.sroa.0186.0, ptr %i.bxf, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bxf, i64 8
  store i32 %.sroa.3187.0, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.bxg = load i32, ptr %i.bvk, align 8, !tbaa !630
  %i.bxh = add i32 %i.bxg, 1
  store i32 %i.bxh, ptr %i.bvk, align 8, !tbaa !630
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit: ; preds = %bb.ra, %bb.rb
  call void @llvm.lifetime.end.p0(ptr nonnull %241) #38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not1909 = icmp eq i64 %indvars.iv.next, %i.bvq
  br i1 %.not1909, label %._crit_edge, label %bb.qx, !llvm.loop !2928

.critedge1934.thread:                             ; preds = %_ZNK4llvm3EVT14is256BitVectorEv.exit, %.critedge1934.thread3174, %.split3158.thread, %_ZNK4llvm5APInteqEm.exit2196.thread3154, %.split3158, %bb.oh, %bb.pg, %.split2750, %.thread2769, %.thread2763, %bb.qq, %bb.qm, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit2273, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit2278, %.critedge1936.thread
  %i.bxi = load i32, ptr %i.h, align 8, !tbaa !645 ; 2 uses
  %i.bxj = icmp ult i32 %i.bxi, 65
  br i1 %i.bxj, label %.split2780, label %_ZNK4llvm5APInt5isOneEv.exit

.split2780:                                       ; preds = %.critedge1934.thread
  %i.bxk = load i64, ptr %3, align 8, !tbaa !314
  %i.bxl = icmp eq i64 %i.bxk, 1
  br i1 %i.bxl, label %bb.rd, label %bb.rc

_ZNK4llvm5APInt5isOneEv.exit:                     ; preds = %.critedge1934.thread
  %i.bxm = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %3) #39
  %i.bxn = add i32 %i.bxi, -1
  %i.bxo = icmp eq i32 %i.bxm, %i.bxn
  br i1 %i.bxo, label %bb.rd, label %bb.rc

bb.rc:                                            ; preds = %.split2780, %_ZNK4llvm5APInt5isOneEv.exit
  %i.bxp = load ptr, ptr %6, align 8, !tbaa !2801, !nonnull !24, !align !184
  %i.bxq = call noundef zeroext i1 @_ZNK4llvm12SelectionDAG12isSplatValueENS_7SDValueEb(ptr noundef nonnull align 8 dereferenceable(920) %i.bxp, ptr %1, i32 %2, i1 noundef zeroext false) #38
  br i1 %i.bxq, label %.thread2729, label %bb.rd

bb.rd:                                            ; preds = %.split2780, %bb.rc, %_ZNK4llvm5APInt5isOneEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %243) #38
  %i.bxr = getelementptr inbounds nuw i8, ptr %243, i64 8 ; 3 uses
  store i32 1, ptr %i.bxr, align 8, !tbaa !645
  store i64 0, ptr %243, align 8, !tbaa !314
  call void @llvm.lifetime.start.p0(ptr nonnull %244) #38
  %i.bxs = getelementptr inbounds nuw i8, ptr %244, i64 8 ; 3 uses
  store i32 1, ptr %i.bxs, align 8, !tbaa !645
  store i64 0, ptr %244, align 8, !tbaa !314
  call void @llvm.lifetime.start.p0(ptr nonnull %245) #38
  %i.bxt = getelementptr inbounds nuw i8, ptr %245, i64 16 ; 2 uses
  store ptr %i.bxt, ptr %245, align 8, !tbaa !26
  %i.bxu = getelementptr inbounds nuw i8, ptr %245, i64 8 ; 2 uses
  store i32 0, ptr %i.bxu, align 8, !tbaa !630
  %i.bxv = getelementptr inbounds nuw i8, ptr %245, i64 12
  store i32 64, ptr %i.bxv, align 4, !tbaa !631
  call void @llvm.lifetime.start.p0(ptr nonnull %246) #38
  %i.bxw = getelementptr inbounds nuw i8, ptr %246, i64 16 ; 2 uses
  store ptr %i.bxw, ptr %246, align 8, !tbaa !26
  %i.bxx = getelementptr inbounds nuw i8, ptr %246, i64 8 ; 3 uses
  store i32 0, ptr %i.bxx, align 8, !tbaa !630
  %i.bxy = getelementptr inbounds nuw i8, ptr %246, i64 12
  store i32 2, ptr %i.bxy, align 4, !tbaa !631
  %i.bxz = load ptr, ptr %6, align 8, !tbaa !2801, !nonnull !24, !align !184
  %i.bya = icmp ugt i32 %7, 5
  br i1 %i.bya, label %_ZL22getTargetShuffleInputsN4llvm7SDValueERKNS_5APIntERNS_15SmallVectorImplIS0_EERNS4_IiEERS1_S9_RKNS_12SelectionDAGEjb.exit.thread, label %bb.re

bb.re:                                            ; preds = %bb.rd
  %i.byb = load ptr, ptr %i.l, align 8, !tbaa !454
  %i.byc = getelementptr inbounds nuw [16 x i8], ptr %i.byb, i64 %i.n
  %.sroa.0.0.copyload.i.i.i2323 = load i16, ptr %i.byc, align 8, !tbaa !299
  %i.byd = add i16 %.sroa.0.0.copyload.i.i.i2323, -19
  %spec.select.i.i.i2324 = icmp ult i16 %i.byd, 197
  br i1 %spec.select.i.i.i2324, label %bb.rf, label %_ZL22getTargetShuffleInputsN4llvm7SDValueERKNS_5APIntERNS_15SmallVectorImplIS0_EERNS4_IiEERS1_S9_RKNS_12SelectionDAGEjb.exit.thread

bb.rf:                                            ; preds = %bb.re
  %i.bye = call fastcc noundef zeroext i1 @_ZL28getTargetShuffleAndZeroablesN4llvm7SDValueERNS_15SmallVectorImplIiEERNS1_IS0_EERNS_5APIntES7_(ptr nonnull %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(16) %245, ptr noundef nonnull align 8 dereferenceable(16) %246, ptr noundef nonnull align 8 dereferenceable(12) %243, ptr noundef nonnull align 8 dereferenceable(12) %244), !inline_history !2929
  br i1 %i.bye, label %_ZL22getTargetShuffleInputsN4llvm7SDValueERKNS_5APIntERNS_15SmallVectorImplIS0_EERNS4_IiEERS1_S9_RKNS_12SelectionDAGEjb.exit, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %i.byf = call fastcc noundef zeroext i1 @_ZL18getFauxShuffleMaskN4llvm7SDValueERKNS_5APIntERNS_15SmallVectorImplIiEERNS4_IS0_EERKNS_12SelectionDAGEjb(ptr nonnull %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(16) %245, ptr noundef nonnull align 8 dereferenceable(16) %246, ptr noundef nonnull align 8 dereferenceable(920) %i.bxz, i32 noundef %7, i1 noundef zeroext false) #43, !inline_history !2929
  br i1 %i.byf, label %bb.rh, label %_ZL22getTargetShuffleInputsN4llvm7SDValueERKNS_5APIntERNS_15SmallVectorImplIS0_EERNS4_IiEERS1_S9_RKNS_12SelectionDAGEjb.exit.thread

bb.rh:                                            ; preds = %bb.rg
  call fastcc void @_ZL33resolveZeroablesFromTargetShuffleRKN4llvm15SmallVectorImplIiEERNS_5APIntES5_(ptr noundef nonnull align 8 dereferenceable(16) %245, ptr noundef nonnull align 8 dereferenceable(12) %243, ptr noundef nonnull align 8 dereferenceable(12) %244), !inline_history !2929
  br label %_ZL22getTargetShuffleInputsN4llvm7SDValueERKNS_5APIntERNS_15SmallVectorImplIS0_EERNS4_IiEERS1_S9_RKNS_12SelectionDAGEjb.exit

_ZL22getTargetShuffleInputsN4llvm7SDValueERKNS_5APIntERNS_15SmallVectorImplIS0_EERNS4_IiEERS1_S9_RKNS_12SelectionDAGEjb.exit: ; preds = %bb.rh, %bb.rf
  %i.byg = load i32, ptr %i.bxu, align 8, !tbaa !630
  %i.byh = zext i32 %i.i to i64                   ; 9 uses
  %.not1912 = icmp eq i32 %i.byg, %i.i
  br i1 %.not1912, label %bb.ri, label %_ZL22getTargetShuffleInputsN4llvm7SDValueERKNS_5APIntERNS_15SmallVectorImplIS0_EERNS4_IiEERS1_S9_RKNS_12SelectionDAGEjb.exit.thread

bb.ri:                                            ; preds = %_ZL22getTargetShuffleInputsN4llvm7SDValueERKNS_5APIntERNS_15SmallVectorImplIS0_EERNS4_IiEERS1_S9_RKNS_12SelectionDAGEjb.exit
  %.sroa.0133.0.copyload = load i16, ptr %61, align 8, !tbaa !299 ; 9 uses
  %.sroa.2135.0.copyload = load ptr, ptr %i.p, align 8, !tbaa !455
  %.val1969 = load ptr, ptr %246, align 8, !tbaa !26 ; 3 uses
  %.val1970 = load i32, ptr %i.bxx, align 8, !tbaa !630
  %i.byi = zext i32 %.val1970 to i64              ; 3 uses
  %i.byj = getelementptr inbounds nuw [16 x i8], ptr %.val1969, i64 %i.byi ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  store i16 %.sroa.0133.0.copyload, ptr %23, align 8
  %i.byk = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %.sroa.2135.0.copyload, ptr %i.byk, align 8
  %i.byl = ptrtoint ptr %i.byj to i64
  %i.bym = lshr i64 %i.byi, 2                     ; 2 uses
  %.not.i2325 = icmp eq i64 %i.bym, 0
  br i1 %.not.i2325, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ri
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.0133.0.copyload, 0 ; 4 uses
  %i.byn = zext i16 %.sroa.0133.0.copyload to i64
  %i.byo = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.byn ; 2 uses
  %i.byp = getelementptr i8, ptr %i.byo, i64 -16  ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.byo, i64 -8 ; 4 uses
  %i.byq = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.byr = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.bys = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.byt = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.byu = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.byv = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.byw = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.byx = getelementptr inbounds nuw i8, ptr %16, i64 8
  br label %bb.rj

bb.rj:                                            ; preds = %bb.rv, %.lr.ph.i.i.i.i.i.i
  %.0219.i.i.i.i.i.i = phi i64 [ %i.bym, %.lr.ph.i.i.i.i.i.i ], [ %i.cbr, %bb.rv ] ; 2 uses
  %.029218.i.i.i.i.i.i = phi ptr [ %.val1969, %.lr.ph.i.i.i.i.i.i ], [ %i.cbq, %bb.rv ] ; 21 uses
  %.029.val38.i.i.i.i.i.i = load ptr, ptr %.029218.i.i.i.i.i.i, align 8, !tbaa !449
  %i.byy = getelementptr i8, ptr %.029218.i.i.i.i.i.i, i64 8
  %.029.val39.i.i.i.i.i.i = load i32, ptr %i.byy, align 8, !tbaa !189
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.rl, label %bb.rk

bb.rk:                                            ; preds = %bb.rj
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.byp, align 16
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8
  %.fca.0.insert.i.i.i.i.i.i.i.i.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, 0
  %.fca.1.insert.i.i.i.i.i.i.i.i.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i.i.i.i.i.i.i.i.i, i8 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i.i.i.i.i.i.i

bb.rl:                                            ; preds = %bb.rj
  %i.byz = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %23) #39
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i.i.i.i.i.i.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.rl, %bb.rk
  %.pn.i.i.i.i.i.i.i.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i.i.i.i.i.i.i.i.i, %bb.rk ], [ %i.byz, %bb.rl ] ; 2 uses
  %.fca.0.extract1.i.i.i.i.i.i.i.i = extractvalue { i64, i8 } %.pn.i.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %.fca.1.extract2.i.i.i.i.i.i.i.i = extractvalue { i64, i8 } %.pn.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #38
  %i.bza = getelementptr inbounds nuw i8, ptr %.029.val38.i.i.i.i.i.i, i64 48
  %i.bzb = load ptr, ptr %i.bza, align 8, !tbaa !454
  %i.bzc = zext i32 %.029.val39.i.i.i.i.i.i to i64
  %i.bzd = getelementptr inbounds nuw [16 x i8], ptr %i.bzb, i64 %i.bzc ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.bzd, align 8, !tbaa !299 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bzd, i64 8
  %.sroa.21.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !455 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %21, align 8
  store ptr %.sroa.21.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %i.byq, align 8
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.i.i.i.i.i.i.i.i, label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.thread.i.i.i.i.i.i.i.i

_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i.i.i.i.i.i.i
  %i.bze = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %21) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  %.fca.0.extract.i.i.i.i.i.i.i.i = extractvalue { i64, i8 } %i.bze, 0
  %.fca.1.extract.i.i.i.i.i.i.i.i = extractvalue { i64, i8 } %i.bze, 1
  %.not.i5.i.i.i.i.i.i.i.i = icmp ne i64 %.fca.0.extract1.i.i.i.i.i.i.i.i, %.fca.0.extract.i.i.i.i.i.i.i.i
  %i.bzf = icmp ne i8 %.fca.1.extract2.i.i.i.i.i.i.i.i, %.fca.1.extract.i.i.i.i.i.i.i.i
  %i.bzg = select i1 %.not.i5.i.i.i.i.i.i.i.i, i1 true, i1 %i.bzf
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #38
  br i1 %i.bzg, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm17X86TargetLowering39SimplifyDemandedVectorEltsForTargetNodeENS2_7SDValueERKNS2_5APIntERS5_S8_RNS2_14TargetLowering17TargetLoweringOptEjE3$_4EclIPS4_EEbT_.exit.thread.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm17X86TargetLowering39SimplifyDemandedVectorEltsForTargetNodeENS2_7SDValueERKNS2_5APIntERS5_S8_RNS2_14TargetLowering17TargetLoweringOptEjE3$_4EclIPS4_EEbT_.exit.i.i.i.i.i.i"

_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i.i.i.i.i.i.i
  %i.bzh = zext i16 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bzi = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bzh ; 2 uses
  %i.bzj = getelementptr i8, ptr %i.bzi, i64 -16
  %.sroa.0.0.copyload.i.i3.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bzj, align 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.bzi, i64 -8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  %.not.i519.i.i.i.i.i.i.i.i = icmp ne i64 %.fca.0.extract1.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i3.i.i.i.i.i.i.i.i.i
  %i.bzk = icmp ne i8 %.fca.1.extract2.i.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  %i.bzl = select i1 %.not.i519.i.i.i.i.i.i.i.i, i1 true, i1 %i.bzk
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #38
  br i1 %i.bzl, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm17X86TargetLowering39SimplifyDemandedVectorEltsForTargetNodeENS2_7SDValueERKNS2_5APIntERS5_S8_RNS2_14TargetLowering17TargetLoweringOptEjE3$_4EclIPS4_EEbT_.exit.thread.i.i.i.i.i.i", label %.split.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.thread.i.i.i.i.i.i.i.i
  %i.bzm = add i16 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -19
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.bzm, 197
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %bb.rm, label %"_ZN4llvm6any_ofIRNS_11SmallVectorINS_7SDValueELj2EEEZNKS_17X86TargetLowering39SimplifyDemandedVectorEltsForTargetNodeES2_RKNS_5APIntERS6_S9_RNS_14TargetLowering17TargetLoweringOptEjE3$_4EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm17X86TargetLowering39SimplifyDemandedVectorEltsForTargetNodeENS2_7SDValueERKNS2_5APIntERS5_S8_RNS2_14TargetLowering17TargetLoweringOptEjE3$_4EclIPS4_EEbT_.exit.thread.i.i.i.i.i.i": ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.thread.i.i.i.i.i.i.i.i, %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  br label %"_ZN4llvm6any_ofIRNS_11SmallVectorINS_7SDValueELj2EEEZNKS_17X86TargetLowering39SimplifyDemandedVectorEltsForTargetNodeES2_RKNS_5APIntERS6_S9_RNS_14TargetLowering17TargetLoweringOptEjE3$_4EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm17X86TargetLowering39SimplifyDemandedVectorEltsForTargetNodeENS2_7SDValueERKNS2_5APIntERS5_S8_RNS2_14TargetLowering17TargetLoweringOptEjE3$_4EclIPS4_EEbT_.exit.i.i.i.i.i.i": ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.i.i.i.i.i.i.i.i
  store i16 0, ptr %22, align 8
  store ptr %.sroa.21.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %i.byr, align 8
  %i.bzn = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %22) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  br i1 %i.bzn, label %bb.rm, label %"_ZN4llvm6any_ofIRNS_11SmallVectorINS_7SDValueELj2EEEZNKS_17X86TargetLowering39SimplifyDemandedVectorEltsForTargetNodeES2_RKNS_5APIntERS6_S9_RNS_14TargetLowering17TargetLoweringOptEjE3$_4EEbOT_T0_.exit"

bb.rm:                                            ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm17X86TargetLowering39SimplifyDemandedVectorEltsForTargetNodeENS2_7SDValueERKNS2_5APIntERS5_S8_RNS2_14TargetLowering17TargetLoweringOptEjE3$_4EclIPS4_EEbT_.exit.i.i.i.i.i.i", %.split.i.i.i.i.i.i
  %i.bzo = getelementptr inbounds nuw i8, ptr %.029218.i.i.i.i.i.i, i64 16
  %.val36.i.i.i.i.i.i = load ptr, ptr %i.bzo, align 8, !tbaa !449
  %i.bzp = getelementptr i8, ptr %.029218.i.i.i.i.i.i, i64 24
  %.val37.i.i.i.i.i.i = load i32, ptr %i.bzp, align 8, !tbaa !189
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ro, label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  %.sroa.0.0.copyload.i.i.i.i41.i.i.i.i.i.i = load i64, ptr %i.byp, align 16
  %.sroa.2.0.copyload.i.i.i.i43.i.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8
  %.fca.0.insert.i.i.i.i44.i.i.i.i.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i.i.i41.i.i.i.i.i.i, 0
  %.fca.1.insert.i.i.i.i45.i.i.i.i.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i.i.i44.i.i.i.i.i.i, i8 %.sroa.2.0.copyload.i.i.i.i43.i.i.i.i.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i46.i.i.i.i.i.i

bb.ro:                                            ; preds = %bb.rm
  %i.bzq = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %23) #39
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i46.i.i.i.i.i.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i46.i.i.i.i.i.i: ; preds = %bb.ro, %bb.rn
  %.pn.i.i.i47.i.i.i.i.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i.i.i45.i.i.i.i.i.i, %bb.rn ], [ %i.bzq, %bb.ro ] ; 2 uses
  %.fca.0.extract1.i.i48.i.i.i.i.i.i = extractvalue { i64, i8 } %.pn.i.i.i47.i.i.i.i.i.i, 0 ; 2 uses
  %.fca.1.extract2.i.i49.i.i.i.i.i.i = extractvalue { i64, i8 } %.pn.i.i.i47.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #38
  %i.bzr = getelementptr inbounds nuw i8, ptr %.val36.i.i.i.i.i.i, i64 48
  %i.bzs = load ptr, ptr %i.bzr, align 8, !tbaa !454
  %i.bzt = zext i32 %.val37.i.i.i.i.i.i to i64
  %i.bzu = getelementptr inbounds nuw [16 x i8], ptr %i.bzs, i64 %i.bzt ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i50.i.i.i.i.i.i = load i16, ptr %i.bzu, align 8, !tbaa !299 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i.i.i.i51.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bzu, i64 8
  %.sroa.21.0.copyload.i.i.i.i.i52.i.i.i.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i51.i.i.i.i.i.i, align 8, !tbaa !455 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i.i.i.i50.i.i.i.i.i.i, ptr %19, align 8
  store ptr %.sroa.21.0.copyload.i.i.i.i.i52.i.i.i.i.i.i, ptr %i.bys, align 8
  %.not.i.i.i.i53.i.i.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i50.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i53.i.i.i.i.i.i, label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.i.i61.i.i.i.i.i.i, label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.thread.i.i54.i.i.i.i.i.i

_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.i.i61.i.i.i.i.i.i: ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i46.i.i.i.i.i.i
  %i.bzv = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %19) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  %.fca.0.extract.i.i62.i.i.i.i.i.i = extractvalue { i64, i8 } %i.bzv, 0
  %.fca.1.extract.i.i63.i.i.i.i.i.i = extractvalue { i64, i8 } %i.bzv, 1
  %.not.i5.i.i64.i.i.i.i.i.i = icmp ne i64 %.fca.0.extract1.i.i48.i.i.i.i.i.i, %.fca.0.extract.i.i62.i.i.i.i.i.i
  %i.bzw = icmp ne i8 %.fca.1.extract2.i.i49.i.i.i.i.i.i, %.fca.1.extract.i.i63.i.i.i.i.i.i
  %i.bzx = select i1 %.not.i5.i.i64.i.i.i.i.i.i, i1 true, i1 %i.bzw
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #38
  br i1 %i.bzx, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm17X86TargetLowering39SimplifyDemandedVectorEltsForTargetNodeENS2_7SDValueERKNS2_5APIntERS5_S8_RNS2_14TargetLowering17TargetLoweringOptEjE3$_4EclIPS4_EEbT_.exit65.thread.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm17X86TargetLowering39SimplifyDemandedVectorEltsForTargetNodeENS2_7SDValueERKNS2_5APIntERS5_S8_RNS2_14TargetLowering17TargetLoweringOptEjE3$_4EclIPS4_EEbT_.exit65.i.i.i.i.i.i"

_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.thread.i.i54.i.i.i.i.i.i: ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i46.i.i.i.i.i.i
  %i.bzy = zext i16 %.sroa.0.0.copyload.i.i.i.i.i50.i.i.i.i.i.i to i64
  %i.bzz = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bzy ; 2 uses
  %i.caa = getelementptr i8, ptr %i.bzz, i64 -16
  %.sroa.0.0.copyload.i.i3.i.i.i55.i.i.i.i.i.i = load i64, ptr %i.caa, align 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i56.i.i.i.i.i.i = getelementptr i8, ptr %i.bzz, i64 -8
  %.sroa.2.0.copyload.i.i.i.i.i57.i.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i56.i.i.i.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  %.not.i519.i.i58.i.i.i.i.i.i = icmp ne i64 %.fca.0.extract1.i.i48.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i3.i.i.i55.i.i.i.i.i.i
  %i.cab = icmp ne i8 %.fca.1.extract2.i.i49.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i57.i.i.i.i.i.i
  %i.cac = select i1 %.not.i519.i.i58.i.i.i.i.i.i, i1 true, i1 %i.cab
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #38
  br i1 %i.cac, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm17X86TargetLowering39SimplifyDemandedVectorEltsForTargetNodeENS2_7SDValueERKNS2_5APIntERS5_S8_RNS2_14TargetLowering17TargetLoweringOptEjE3$_4EclIPS4_EEbT_.exit65.thread.i.i.i.i.i.i", label %.split233.i.i.i.i.i.i

.split233.i.i.i.i.i.i:                            ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.thread.i.i54.i.i.i.i.i.i
  %i.cad = add i16 %.sroa.0.0.copyload.i.i.i.i.i50.i.i.i.i.i.i, -19
  %spec.select.i.i.i.i59.i.i.i.i.i.i = icmp ult i16 %i.cad, 197
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  br i1 %spec.select.i.i.i.i59.i.i.i.i.i.i, label %bb.rp, label %"_ZN4llvm6any_ofIRNS_11SmallVectorINS_7SDValueELj2EEEZNKS_17X86TargetLowering39SimplifyDemandedVectorEltsForTargetNodeES2_RKNS_5APIntERS6_S9_RNS_14TargetLowering17TargetLoweringOptEjE3$_4EEbOT_T0_.exit.loopexit.split.loop.exit"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm17X86TargetLowering39SimplifyDemandedVectorEltsForTargetNodeENS2_7SDValueERKNS2_5APIntERS5_S8_RNS2_14TargetLowering17TargetLoweringOptEjE3$_4EclIPS4_EEbT_.exit65.thread.i.i.i.i.i.i": ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.thread.i.i54.i.i.i.i.i.i, %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.i.i61.i.i.i.i.i.i
  %i.cae = getelementptr inbounds nuw i8, ptr %.029218.i.i.i.i.i.i, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  br label %"_ZN4llvm6any_ofIRNS_11SmallVectorINS_7SDValueELj2EEEZNKS_17X86TargetLowering39SimplifyDemandedVectorEltsForTargetNodeES2_RKNS_5APIntERS6_S9_RNS_14TargetLowering17TargetLoweringOptEjE3$_4EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm17X86TargetLowering39SimplifyDemandedVectorEltsForTargetNodeENS2_7SDValueERKNS2_5APIntERS5_S8_RNS2_14TargetLowering17TargetLoweringOptEjE3$_4EclIPS4_EEbT_.exit65.i.i.i.i.i.i": ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.i.i61.i.i.i.i.i.i
  store i16 0, ptr %20, align 8
  store ptr %.sroa.21.0.copyload.i.i.i.i.i52.i.i.i.i.i.i, ptr %i.byt, align 8
  %i.caf = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %20) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  br i1 %i.caf, label %bb.rp, label %"_ZN4llvm6any_ofIRNS_11SmallVectorINS_7SDValueELj2EEEZNKS_17X86TargetLowering39SimplifyDemandedVectorEltsForTargetNodeES2_RKNS_5APIntERS6_S9_RNS_14TargetLowering17TargetLoweringOptEjE3$_4EEbOT_T0_.exit.loopexit.split.loop.exit3193"

bb.rp:                                            ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm17X86TargetLowering39SimplifyDemandedVectorEltsForTargetNodeENS2_7SDValueERKNS2_5APIntERS5_S8_RNS2_14TargetLowering17TargetLoweringOptEjE3$_4EclIPS4_EEbT_.exit65.i.i.i.i.i.i", %.split233.i.i.i.i.i.i
  %i.cag = getelementptr inbounds nuw i8, ptr %.029218.i.i.i.i.i.i, i64 32
  %.val34.i.i.i.i.i.i = load ptr, ptr %i.cag, align 8, !tbaa !449
  %i.cah = getelementptr i8, ptr %.029218.i.i.i.i.i.i, i64 40
  %.val35.i.i.i.i.i.i = load i32, ptr %i.cah, align 8, !tbaa !189
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.rr, label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  %.sroa.0.0.copyload.i.i.i.i67.i.i.i.i.i.i = load i64, ptr %i.byp, align 16
end_hunk_1
begin_hunk_2_@_ZNK4llvm17X86TargetLowering39SimplifyDemandedVectorEltsForTargetNodeENS_7SDValueERKNS_5APIntERS2_S5_RNS_14TargetLowering17TargetLoweringOptEj:bb.a
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %243) #38
  br label %_ZN4llvm5APIntaSERKS0_.exit2326

_ZN4llvm5APIntaSERKS0_.exit2326:                  ; preds = %bb.sm, %bb.sn
  %i.cez = load i32, ptr %i.bxx, align 8, !tbaa !630 ; 3 uses
  %.not19132877 = icmp eq i32 %i.i, 0
  %.pre2956 = load ptr, ptr %245, align 8
  br i1 %.not19132877, label %_ZL14isUndefInRangeN4llvm8ArrayRefIiEEjj.exit.thread, label %.lr.ph2879

._crit_edge2880:                                  ; preds = %bb.sy
  %.pre2955 = load ptr, ptr %245, align 8, !tbaa !26 ; 6 uses
  %.idx3.i.i = shl nuw nsw i64 %i.byh, 2          ; 2 uses
  %i.cfa = getelementptr inbounds nuw i8, ptr %.pre2955, i64 %.idx3.i.i
  %i.cfb = lshr i64 %i.byh, 2                     ; 2 uses
  %.not.i.i2327 = icmp eq i64 %i.cfb, 0
  br i1 %.not.i.i2327, label %._crit_edge.i.i.i.i.i.i2335, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %._crit_edge2880
  %i.cfc = and i64 %.idx3.i.i, 17179869168
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %.pre2955, i64 %i.cfc
  br label %.lr.ph.i.i.i.i.i.i2328

.lr.ph.i.i.i.i.i.i2328:                           ; preds = %bb.sr, %.lr.ph.preheader.i.i.i.i.i.i
  %.018.i.i.i.i.i.i = phi i64 [ %i.cfh, %bb.sr ], [ %i.cfb, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.02917.i.i.i.i.i.i = phi ptr [ %i.cfg, %bb.sr ], [ %.pre2955, %.lr.ph.preheader.i.i.i.i.i.i ] ; 9 uses
  %.029.val39.i.i.i.i.i.i2329 = load i32, ptr %.02917.i.i.i.i.i.i, align 4, !tbaa !189
  %.not3.i.i.i.i.i.i = icmp eq i32 %.029.val39.i.i.i.i.i.i2329, -1
  br i1 %.not3.i.i.i.i.i.i, label %bb.so, label %_ZL14isUndefInRangeN4llvm8ArrayRefIiEEjj.exit

bb.so:                                            ; preds = %.lr.ph.i.i.i.i.i.i2328
  %i.cfd = getelementptr inbounds nuw i8, ptr %.02917.i.i.i.i.i.i, i64 4
  %.val37.i.i.i.i.i.i2331 = load i32, ptr %i.cfd, align 4, !tbaa !189
  %.not4.i.i.i.i.i.i = icmp eq i32 %.val37.i.i.i.i.i.i2331, -1
  br i1 %.not4.i.i.i.i.i.i, label %bb.sp, label %_ZL14isUndefInRangeN4llvm8ArrayRefIiEEjj.exit.loopexit.split.loop.exit

bb.sp:                                            ; preds = %bb.so
  %i.cfe = getelementptr inbounds nuw i8, ptr %.02917.i.i.i.i.i.i, i64 8
  %.val35.i.i.i.i.i.i2332 = load i32, ptr %i.cfe, align 4, !tbaa !189
  %.not5.i.i.i.i.i.i = icmp eq i32 %.val35.i.i.i.i.i.i2332, -1
  br i1 %.not5.i.i.i.i.i.i, label %bb.sq, label %_ZL14isUndefInRangeN4llvm8ArrayRefIiEEjj.exit.loopexit.split.loop.exit3216

bb.sq:                                            ; preds = %bb.sp
  %i.cff = getelementptr inbounds nuw i8, ptr %.02917.i.i.i.i.i.i, i64 12
  %.val33.i.i.i.i.i.i2333 = load i32, ptr %i.cff, align 4, !tbaa !189
  %.not6.i.i.i.i.i.i = icmp eq i32 %.val33.i.i.i.i.i.i2333, -1
  br i1 %.not6.i.i.i.i.i.i, label %bb.sr, label %_ZL14isUndefInRangeN4llvm8ArrayRefIiEEjj.exit.loopexit.split.loop.exit3218

bb.sr:                                            ; preds = %bb.sq
  %i.cfg = getelementptr inbounds nuw i8, ptr %.02917.i.i.i.i.i.i, i64 16
  %i.cfh = add nsw i64 %.018.i.i.i.i.i.i, -1
  %i.cfi = icmp sgt i64 %.018.i.i.i.i.i.i, 1
  br i1 %i.cfi, label %.lr.ph.i.i.i.i.i.i2328, label %._crit_edge.loopexit.i.i.i.i.i.i2334, !llvm.loop !2931

._crit_edge.loopexit.i.i.i.i.i.i2334:             ; preds = %bb.sr
  %i.cfj = and i32 %i.i, 3
  br label %._crit_edge.i.i.i.i.i.i2335

._crit_edge.i.i.i.i.i.i2335:                      ; preds = %._crit_edge.loopexit.i.i.i.i.i.i2334, %._crit_edge2880
  %.pre-phi24.i.i.i.i.i.i = phi i32 [ %i.cfj, %._crit_edge.loopexit.i.i.i.i.i.i2334 ], [ %i.i, %._crit_edge2880 ]
  %.029.lcssa.i.i.i.i.i.i2336 = phi ptr [ %scevgep.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i2334 ], [ %.pre2955, %._crit_edge2880 ] ; 5 uses
  switch i32 %.pre-phi24.i.i.i.i.i.i, label %_ZL14isUndefInRangeN4llvm8ArrayRefIiEEjj.exit.thread [
    i32 3, label %bb.ss
    i32 2, label %bb.su
    i32 1, label %bb.sw
  ]

bb.ss:                                            ; preds = %._crit_edge.i.i.i.i.i.i2335
  %.029.val.i.i.i.i.i.i2341 = load i32, ptr %.029.lcssa.i.i.i.i.i.i2336, align 4, !tbaa !189
  %.not.i.i.i.i.i.i = icmp eq i32 %.029.val.i.i.i.i.i.i2341, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.st, label %_ZL14isUndefInRangeN4llvm8ArrayRefIiEEjj.exit

bb.st:                                            ; preds = %bb.ss
  %i.cfk = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i2336, i64 4
  br label %bb.su

bb.su:                                            ; preds = %bb.st, %._crit_edge.i.i.i.i.i.i2335
  %.1.i.i.i.i.i.i2339 = phi ptr [ %i.cfk, %bb.st ], [ %.029.lcssa.i.i.i.i.i.i2336, %._crit_edge.i.i.i.i.i.i2335 ] ; 3 uses
  %.1.val.i.i.i.i.i.i2340 = load i32, ptr %.1.i.i.i.i.i.i2339, align 4, !tbaa !189
  %.not1.i.i.i.i.i.i = icmp eq i32 %.1.val.i.i.i.i.i.i2340, -1
  br i1 %.not1.i.i.i.i.i.i, label %bb.sv, label %_ZL14isUndefInRangeN4llvm8ArrayRefIiEEjj.exit

bb.sv:                                            ; preds = %bb.su
  %i.cfl = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i2339, i64 4
  br label %bb.sw

bb.sw:                                            ; preds = %bb.sv, %._crit_edge.i.i.i.i.i.i2335
  %.2.i.i.i.i.i.i2337 = phi ptr [ %i.cfl, %bb.sv ], [ %.029.lcssa.i.i.i.i.i.i2336, %._crit_edge.i.i.i.i.i.i2335 ] ; 2 uses
  %.2.val.i.i.i.i.i.i2338 = load i32, ptr %.2.i.i.i.i.i.i2337, align 4, !tbaa !189
  %.not2.i.i.i.i.i.i = icmp eq i32 %.2.val.i.i.i.i.i.i2338, -1
  br i1 %.not2.i.i.i.i.i.i, label %_ZL14isUndefInRangeN4llvm8ArrayRefIiEEjj.exit.thread, label %_ZL14isUndefInRangeN4llvm8ArrayRefIiEEjj.exit

_ZL14isUndefInRangeN4llvm8ArrayRefIiEEjj.exit.loopexit.split.loop.exit: ; preds = %bb.so
  %i.cfm = getelementptr inbounds nuw i8, ptr %.02917.i.i.i.i.i.i, i64 4
  br label %_ZL14isUndefInRangeN4llvm8ArrayRefIiEEjj.exit

_ZL14isUndefInRangeN4llvm8ArrayRefIiEEjj.exit.loopexit.split.loop.exit3216: ; preds = %bb.sp
  %i.cfn = getelementptr inbounds nuw i8, ptr %.02917.i.i.i.i.i.i, i64 8
  br label %_ZL14isUndefInRangeN4llvm8ArrayRefIiEEjj.exit

_ZL14isUndefInRangeN4llvm8ArrayRefIiEEjj.exit.loopexit.split.loop.exit3218: ; preds = %bb.sq
  %i.cfo = getelementptr inbounds nuw i8, ptr %.02917.i.i.i.i.i.i, i64 12
  br label %_ZL14isUndefInRangeN4llvm8ArrayRefIiEEjj.exit

_ZL14isUndefInRangeN4llvm8ArrayRefIiEEjj.exit:    ; preds = %.lr.ph.i.i.i.i.i.i2328, %_ZL14isUndefInRangeN4llvm8ArrayRefIiEEjj.exit.loopexit.split.loop.exit, %_ZL14isUndefInRangeN4llvm8ArrayRefIiEEjj.exit.loopexit.split.loop.exit3216, %_ZL14isUndefInRangeN4llvm8ArrayRefIiEEjj.exit.loopexit.split.loop.exit3218, %bb.ss, %bb.su, %bb.sw
  %.028.i.i.i.i.i.i2330 = phi ptr [ %.1.i.i.i.i.i.i2339, %bb.su ], [ %.029.lcssa.i.i.i.i.i.i2336, %bb.ss ], [ %.2.i.i.i.i.i.i2337, %bb.sw ], [ %i.cfo, %_ZL14isUndefInRangeN4llvm8ArrayRefIiEEjj.exit.loopexit.split.loop.exit3218 ], [ %i.cfn, %_ZL14isUndefInRangeN4llvm8ArrayRefIiEEjj.exit.loopexit.split.loop.exit3216 ], [ %i.cfm, %_ZL14isUndefInRangeN4llvm8ArrayRefIiEEjj.exit.loopexit.split.loop.exit ], [ %.02917.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i2328 ]
  %i.cfp = icmp eq ptr %i.cfa, %.028.i.i.i.i.i.i2330
  br i1 %i.cfp, label %_ZL14isUndefInRangeN4llvm8ArrayRefIiEEjj.exit.thread, label %bb.sz

.lr.ph2879:                                       ; preds = %_ZN4llvm5APIntaSERKS0_.exit2326, %bb.sy
  %indvars.iv2926 = phi i64 [ %indvars.iv.next2927, %bb.sy ], [ 0, %_ZN4llvm5APIntaSERKS0_.exit2326 ] ; 4 uses
  %i.cfq = and i64 %indvars.iv2926, 63
  %i.cfr = shl nuw i64 1, %i.cfq
  %i.cfs = load i32, ptr %i.h, align 8, !tbaa !645
  %i.cft = icmp ult i32 %i.cfs, 65
  %i.cfu = load ptr, ptr %3, align 8
  %i.cfv = lshr i64 %indvars.iv2926, 6
  %i.cfw = and i64 %i.cfv, 67108863
  %i.cfx = getelementptr inbounds nuw [8 x i8], ptr %i.cfu, i64 %i.cfw
  %.in.i.i = select i1 %i.cft, ptr %3, ptr %i.cfx
  %i.cfy = load i64, ptr %.in.i.i, align 8, !tbaa !314
  %i.cfz = and i64 %i.cfy, %i.cfr
  %.not2824 = icmp eq i64 %i.cfz, 0
  br i1 %.not2824, label %bb.sx, label %bb.sy

bb.sx:                                            ; preds = %.lr.ph2879
  %i.cga = getelementptr inbounds nuw [4 x i8], ptr %.pre2956, i64 %indvars.iv2926
  store i32 -1, ptr %i.cga, align 4, !tbaa !189
  br label %bb.sy

bb.sy:                                            ; preds = %.lr.ph2879, %bb.sx
  %indvars.iv.next2927 = add nuw nsw i64 %indvars.iv2926, 1 ; 2 uses
  %.not1913 = icmp eq i64 %indvars.iv.next2927, %i.byh
  br i1 %.not1913, label %._crit_edge2880, label %.lr.ph2879, !llvm.loop !2932

_ZL14isUndefInRangeN4llvm8ArrayRefIiEEjj.exit.thread: ; preds = %_ZN4llvm5APIntaSERKS0_.exit2326, %bb.sw, %._crit_edge.i.i.i.i.i.i2335, %_ZL14isUndefInRangeN4llvm8ArrayRefIiEEjj.exit
  call void @_ZN4llvm5APInt10setAllBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %4)
  %i.cgb = load ptr, ptr %6, align 8, !tbaa !2801, !nonnull !24, !align !184
  %.sroa.0119.0.copyload = load i16, ptr %61, align 8, !tbaa !299
  %.sroa.2121.0.copyload = load ptr, ptr %i.p, align 8, !tbaa !455
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.cgc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.cgb, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 %.sroa.0119.0.copyload, ptr %.sroa.2121.0.copyload) #38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  %.fca.0.extract115 = extractvalue { ptr, i32 } %i.cgc, 0
  %.fca.1.extract116 = extractvalue { ptr, i32 } %i.cgc, 1
  %i.cgd = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %1, ptr %i.cgd, align 8, !tbaa !449
  %.sroa.22.0..sroa_idx.i2342 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %2, ptr %.sroa.22.0..sroa_idx.i2342, align 8, !tbaa !189
  %i.cge = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %.fca.0.extract115, ptr %i.cge, align 8, !tbaa !449
  %.sroa.2.0..sroa_idx.i2343 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %.fca.1.extract116, ptr %.sroa.2.0..sroa_idx.i2343, align 8, !tbaa !189
  br label %_ZL22getTargetShuffleInputsN4llvm7SDValueERKNS_5APIntERNS_15SmallVectorImplIS0_EERNS4_IiEERS1_S9_RKNS_12SelectionDAGEjb.exit.thread

bb.sz:                                            ; preds = %_ZL14isUndefInRangeN4llvm8ArrayRefIiEEjj.exit
  %i.cgf = call fastcc noundef zeroext i1 @_ZL20isUndefOrZeroInRangeN4llvm8ArrayRefIiEEjj(ptr %.pre2955, i32 noundef 0, i32 noundef %i.i)
  br i1 %i.cgf, label %bb.ta, label %.preheader

.preheader:                                       ; preds = %bb.sz
  %.not19142889 = icmp eq i32 %i.cez, 0
  br i1 %.not19142889, label %.thread2785, label %.lr.ph.i2347.preheader

bb.ta:                                            ; preds = %bb.sz
  call void @_ZN4llvm5APInt10setAllBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %5)
  %.sroa.0.0.copyload.i2344 = load i16, ptr %61, align 8, !tbaa !299
  %i.cgg = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.cgh = load ptr, ptr %i.cgg, align 8, !tbaa !183, !nonnull !24, !align !184
  %i.cgi = load ptr, ptr %6, align 8, !tbaa !2801, !nonnull !24, !align !184
  call void @llvm.lifetime.start.p0(ptr nonnull %247) #38
  %i.cgj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cgk = load i64, ptr %i.cgj, align 8, !tbaa !735
  store i64 %i.cgk, ptr %247, align 8, !tbaa !735
  %i.cgl = getelementptr inbounds nuw i8, ptr %247, i64 8
  %i.cgm = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.cgn = load i32, ptr %i.cgm, align 4, !tbaa !736
  store i32 %i.cgn, ptr %i.cgl, align 8, !tbaa !737
  %i.cgo = getelementptr i8, ptr %i.cgh, i64 360
  %.val = load i32, ptr %i.cgo, align 8, !tbaa !297
  %i.cgp = call fastcc { ptr, i32 } @_ZL13getZeroVectorN4llvm3MVTERKNS_12X86SubtargetERNS_12SelectionDAGERKNS_5SDLocE(i16 %.sroa.0.0.copyload.i2344, i32 %.val, ptr noundef nonnull align 8 dereferenceable(920) %i.cgi, ptr noundef nonnull align 8 dereferenceable(12) %247) ; 2 uses
  %.fca.0.extract102 = extractvalue { ptr, i32 } %i.cgp, 0
  %.fca.1.extract103 = extractvalue { ptr, i32 } %i.cgp, 1
  %i.cgq = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %1, ptr %i.cgq, align 8, !tbaa !449
  %.sroa.22.0..sroa_idx.i2345 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %2, ptr %.sroa.22.0..sroa_idx.i2345, align 8, !tbaa !189
  %i.cgr = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %.fca.0.extract102, ptr %i.cgr, align 8, !tbaa !449
  %.sroa.2.0..sroa_idx.i2346 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %.fca.1.extract103, ptr %.sroa.2.0..sroa_idx.i2346, align 8, !tbaa !189
  call void @llvm.lifetime.end.p0(ptr nonnull %247) #38
  br label %_ZL22getTargetShuffleInputsN4llvm7SDValueERKNS_5APIntERNS_15SmallVectorImplIS0_EERNS4_IiEERS1_S9_RKNS_12SelectionDAGEjb.exit.thread

.lr.ph2899:                                       ; preds = %_ZL26isSequentialOrUndefInRangeN4llvm8ArrayRefIiEEjjii.exit
  %i.cgs = getelementptr inbounds nuw i8, ptr %248, i64 8 ; 3 uses
  %i.cgt = icmp ult i32 %i.i, 65
  %i.cgu = getelementptr inbounds nuw i8, ptr %249, i64 8 ; 2 uses
  %i.cgv = getelementptr inbounds nuw i8, ptr %250, i64 8 ; 2 uses
  %i.cgw = add nuw nsw i32 %7, 1
  %i.cgx = zext i32 %i.cez to i64
  br label %bb.tc

.lr.ph.i2347.preheader:                           ; preds = %.preheader, %_ZL26isSequentialOrUndefInRangeN4llvm8ArrayRefIiEEjjii.exit
  %.018822890 = phi i32 [ %i.chm, %_ZL26isSequentialOrUndefInRangeN4llvm8ArrayRefIiEEjjii.exit ], [ 0, %.preheader ] ; 3 uses
  %i.cgy = mul nuw nsw i32 %.018822890, %i.i
  br label %.lr.ph.i2347

.lr.ph.i2347:                                     ; preds = %.lr.ph.i2347.preheader, %bb.tb
  %indvars.iv2929 = phi i64 [ 0, %.lr.ph.i2347.preheader ], [ %indvars.iv.next2930, %bb.tb ] ; 2 uses
  %.01315.i = phi i32 [ %i.cgy, %.lr.ph.i2347.preheader ], [ %i.che, %bb.tb ] ; 2 uses
  %i.cgz = getelementptr inbounds nuw [4 x i8], ptr %.pre2955, i64 %indvars.iv2929
  %i.cha = load i32, ptr %i.cgz, align 4, !tbaa !189 ; 2 uses
  %i.chb = icmp eq i32 %i.cha, -1
  %i.chc = icmp eq i32 %i.cha, %.01315.i
  %i.chd = or i1 %i.chb, %i.chc
  br i1 %i.chd, label %bb.tb, label %_ZL26isSequentialOrUndefInRangeN4llvm8ArrayRefIiEEjjii.exit

bb.tb:                                            ; preds = %.lr.ph.i2347
  %indvars.iv.next2930 = add nuw nsw i64 %indvars.iv2929, 1 ; 2 uses
  %i.che = add nsw i32 %.01315.i, 1
  %.not.i2349 = icmp eq i64 %indvars.iv.next2930, %i.byh
  br i1 %.not.i2349, label %.loopexit, label %.lr.ph.i2347, !llvm.loop !2933

.loopexit:                                        ; preds = %bb.tb
  %i.chf = zext nneg i32 %.018822890 to i64
  %i.chg = load ptr, ptr %6, align 8, !tbaa !2801, !nonnull !24, !align !184
  %.sroa.090.0.copyload = load i16, ptr %61, align 8, !tbaa !299
  %.sroa.292.0.copyload = load ptr, ptr %i.p, align 8, !tbaa !455
  %i.chh = load ptr, ptr %246, align 8, !tbaa !26
  %i.chi = getelementptr inbounds nuw [16 x i8], ptr %i.chh, i64 %i.chf ; 2 uses
  %.sroa.087.0.copyload = load ptr, ptr %i.chi, align 8, !tbaa !449
  %.sroa.288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.chi, i64 8
  %.sroa.288.0.copyload = load i32, ptr %.sroa.288.0..sroa_idx, align 8, !tbaa !189
  %i.chj = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.chg, i16 %.sroa.090.0.copyload, ptr %.sroa.292.0.copyload, ptr %.sroa.087.0.copyload, i32 %.sroa.288.0.copyload) #38 ; 2 uses
  %.fca.0.extract83 = extractvalue { ptr, i32 } %i.chj, 0
  %.fca.1.extract84 = extractvalue { ptr, i32 } %i.chj, 1
  %i.chk = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %1, ptr %i.chk, align 8, !tbaa !449
  %.sroa.22.0..sroa_idx.i2350 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %2, ptr %.sroa.22.0..sroa_idx.i2350, align 8, !tbaa !189
  %i.chl = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %.fca.0.extract83, ptr %i.chl, align 8, !tbaa !449
  %.sroa.2.0..sroa_idx.i2351 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %.fca.1.extract84, ptr %.sroa.2.0..sroa_idx.i2351, align 8, !tbaa !189
  br label %_ZL22getTargetShuffleInputsN4llvm7SDValueERKNS_5APIntERNS_15SmallVectorImplIS0_EERNS4_IiEERS1_S9_RKNS_12SelectionDAGEjb.exit.thread

_ZL26isSequentialOrUndefInRangeN4llvm8ArrayRefIiEEjjii.exit: ; preds = %.lr.ph.i2347
  %i.chm = add nuw nsw i32 %.018822890, 1         ; 2 uses
  %.not1914 = icmp eq i32 %i.chm, %i.cez
  br i1 %.not1914, label %.lr.ph2899, label %.lr.ph.i2347.preheader, !llvm.loop !2934

bb.tc:                                            ; preds = %.lr.ph2899, %.critedge2800
  %indvars.iv2941 = phi i64 [ 0, %.lr.ph2899 ], [ %indvars.iv.next2942, %.critedge2800 ] ; 4 uses
  %i.chn = load ptr, ptr %246, align 8, !tbaa !26
  %i.cho = getelementptr inbounds nuw [16 x i8], ptr %i.chn, i64 %indvars.iv2941 ; 2 uses
  %i.chp = load ptr, ptr %i.cho, align 8, !tbaa !457
  %i.chq = getelementptr inbounds nuw i8, ptr %i.cho, i64 8
  %i.chr = load i32, ptr %i.chq, align 8, !tbaa !451
  %i.chs = getelementptr inbounds nuw i8, ptr %i.chp, i64 48
  %i.cht = load ptr, ptr %i.chs, align 8, !tbaa !454
  %i.chu = zext i32 %i.chr to i64
  %i.chv = getelementptr inbounds nuw [16 x i8], ptr %i.cht, i64 %i.chu ; 2 uses
  %.sroa.0.0.copyload.i.i2352 = load i16, ptr %i.chv, align 8, !tbaa !299
  %.sroa.21.0..sroa_idx.i.i2353 = getelementptr inbounds nuw i8, ptr %i.chv, i64 8
  %.sroa.21.0.copyload.i.i2354 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i2353, align 8, !tbaa !455
  %.sroa.075.0.copyload = load i16, ptr %61, align 8, !tbaa !299
  %.sroa.277.0.copyload = load ptr, ptr %i.p, align 8, !tbaa !455
  %.not.i2357 = icmp ne i16 %.sroa.0.0.copyload.i.i2352, %.sroa.075.0.copyload
  %i.chw = icmp ne ptr %.sroa.21.0.copyload.i.i2354, %.sroa.277.0.copyload
  %i.chx = select i1 %.not.i2357, i1 true, i1 %i.chw
  br i1 %i.chx, label %.critedge2800, label %bb.td

bb.td:                                            ; preds = %bb.tc
  %i.chy = mul nuw nsw i64 %indvars.iv2941, %i.byh ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %248) #38
  store i32 %i.i, ptr %i.cgs, align 8, !tbaa !645, !alias.scope !2935
  br i1 %i.cgt, label %_ZN4llvm5APInt7getZeroEj.exit, label %_ZN4llvm5APInt7getZeroEj.exit.thread

_ZN4llvm5APInt7getZeroEj.exit.thread:             ; preds = %bb.td
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %248, i64 noundef 0, i1 noundef zeroext false) #38
  br label %.lr.ph2894

_ZN4llvm5APInt7getZeroEj.exit:                    ; preds = %bb.td
  store i64 0, ptr %248, align 8, !tbaa !314, !alias.scope !2935
  br label %.lr.ph2894

.lr.ph2894:                                       ; preds = %_ZN4llvm5APInt7getZeroEj.exit, %_ZN4llvm5APInt7getZeroEj.exit.thread
  %i.chz = load i32, ptr %i.h, align 8, !tbaa !645
  %.fr = freeze i32 %i.chz
  %i.cia = icmp ult i32 %.fr, 65                  ; 2 uses
  %i.cib = load ptr, ptr %245, align 8            ; 3 uses
  %i.cic = load i32, ptr %i.cgs, align 8
  %.fr2905 = freeze i32 %i.cic
  %i.cid = icmp ult i32 %.fr2905, 65
  br i1 %i.cid, label %.lr.ph2894.split.us, label %.lr.ph2894.split.preheader

.lr.ph2894.split.preheader:                       ; preds = %.lr.ph2894
  %i.cie = trunc nuw i64 %i.chy to i32
  br label %.lr.ph2894.split

.lr.ph2894.split.us:                              ; preds = %.lr.ph2894
  %i.cif = load ptr, ptr %3, align 8              ; 2 uses
  %.promoted = load i64, ptr %248, align 8        ; 2 uses
  %i.cig = ptrtoint ptr %i.cif to i64
  %i.cih = trunc nuw i64 %i.chy to i32            ; 2 uses
  br i1 %i.cia, label %.lr.ph2894.split.us.split.us, label %.lr.ph2894.split.us.split

.lr.ph2894.split.us.split.us:                     ; preds = %.lr.ph2894.split.us, %_ZN4llvm5APInt6setBitEj.exit.us.us
  %indvars.iv2938 = phi i64 [ %indvars.iv.next2939, %_ZN4llvm5APInt6setBitEj.exit.us.us ], [ 0, %.lr.ph2894.split.us ] ; 3 uses
  %i.cii = phi i64 [ %i.civ, %_ZN4llvm5APInt6setBitEj.exit.us.us ], [ %.promoted, %.lr.ph2894.split.us ] ; 3 uses
  %i.cij = and i64 %indvars.iv2938, 63
  %i.cik = shl nuw i64 1, %i.cij
  %i.cil = and i64 %i.cik, %i.cig
  %.not2825.us.us = icmp eq i64 %i.cil, 0
  br i1 %.not2825.us.us, label %_ZN4llvm5APInt6setBitEj.exit.us.us, label %bb.te

bb.te:                                            ; preds = %.lr.ph2894.split.us.split.us
  %i.cim = getelementptr inbounds nuw [4 x i8], ptr %i.cib, i64 %indvars.iv2938
  %i.cin = load i32, ptr %i.cim, align 4, !tbaa !189
  %i.cio = sub nsw i32 %i.cin, %i.cih             ; 3 uses
  %i.cip = icmp sgt i32 %i.cio, -1
  %i.ciq = icmp slt i32 %i.cio, %i.i
  %or.cond.us.us = select i1 %i.cip, i1 %i.ciq, i1 false
  br i1 %or.cond.us.us, label %bb.tf, label %_ZN4llvm5APInt6setBitEj.exit.us.us

bb.tf:                                            ; preds = %bb.te
  %i.cir = and i32 %i.cio, 63
  %i.cis = zext nneg i32 %i.cir to i64
  %i.cit = shl nuw i64 1, %i.cis
  %i.ciu = or i64 %i.cii, %i.cit                  ; 2 uses
  store i64 %i.ciu, ptr %248, align 8, !tbaa !314
  br label %_ZN4llvm5APInt6setBitEj.exit.us.us

_ZN4llvm5APInt6setBitEj.exit.us.us:               ; preds = %.lr.ph2894.split.us.split.us, %bb.tf, %bb.te
  %i.civ = phi i64 [ %i.ciu, %bb.tf ], [ %i.cii, %bb.te ], [ %i.cii, %.lr.ph2894.split.us.split.us ]
  %indvars.iv.next2939 = add nuw nsw i64 %indvars.iv2938, 1 ; 2 uses
  %.not1916.us.us = icmp eq i64 %indvars.iv.next2939, %i.byh
  br i1 %.not1916.us.us, label %._crit_edge2895, label %.lr.ph2894.split.us.split.us, !llvm.loop !2938

.lr.ph2894.split.us.split:                        ; preds = %.lr.ph2894.split.us, %_ZN4llvm5APInt6setBitEj.exit.us
  %indvars.iv2935 = phi i64 [ %indvars.iv.next2936, %_ZN4llvm5APInt6setBitEj.exit.us ], [ 0, %.lr.ph2894.split.us ] ; 4 uses
  %i.ciw = phi i64 [ %i.cjn, %_ZN4llvm5APInt6setBitEj.exit.us ], [ %.promoted, %.lr.ph2894.split.us ] ; 3 uses
  %i.cix = and i64 %indvars.iv2935, 63
  %i.ciy = shl nuw i64 1, %i.cix
  %i.ciz = lshr i64 %indvars.iv2935, 6
  %i.cja = and i64 %i.ciz, 67108863
  %i.cjb = getelementptr inbounds nuw [8 x i8], ptr %i.cif, i64 %i.cja
  %i.cjc = load i64, ptr %i.cjb, align 8, !tbaa !314
  %i.cjd = and i64 %i.cjc, %i.ciy
  %.not2825.us = icmp eq i64 %i.cjd, 0
  br i1 %.not2825.us, label %_ZN4llvm5APInt6setBitEj.exit.us, label %bb.tg

bb.tg:                                            ; preds = %.lr.ph2894.split.us.split
  %i.cje = getelementptr inbounds nuw [4 x i8], ptr %i.cib, i64 %indvars.iv2935
  %i.cjf = load i32, ptr %i.cje, align 4, !tbaa !189
  %i.cjg = sub nsw i32 %i.cjf, %i.cih             ; 3 uses
  %i.cjh = icmp sgt i32 %i.cjg, -1
  %i.cji = icmp slt i32 %i.cjg, %i.i
  %or.cond.us = select i1 %i.cjh, i1 %i.cji, i1 false
  br i1 %or.cond.us, label %bb.th, label %_ZN4llvm5APInt6setBitEj.exit.us

bb.th:                                            ; preds = %bb.tg
  %i.cjj = and i32 %i.cjg, 63
  %i.cjk = zext nneg i32 %i.cjj to i64
  %i.cjl = shl nuw i64 1, %i.cjk
  %i.cjm = or i64 %i.ciw, %i.cjl                  ; 2 uses
  store i64 %i.cjm, ptr %248, align 8, !tbaa !314
  br label %_ZN4llvm5APInt6setBitEj.exit.us

_ZN4llvm5APInt6setBitEj.exit.us:                  ; preds = %bb.th, %bb.tg, %.lr.ph2894.split.us.split
  %i.cjn = phi i64 [ %i.cjm, %bb.th ], [ %i.ciw, %bb.tg ], [ %i.ciw, %.lr.ph2894.split.us.split ]
  %indvars.iv.next2936 = add nuw nsw i64 %indvars.iv2935, 1 ; 2 uses
  %.not1916.us = icmp eq i64 %indvars.iv.next2936, %i.byh
  br i1 %.not1916.us, label %._crit_edge2895, label %.lr.ph2894.split.us.split, !llvm.loop !2938

._crit_edge2895:                                  ; preds = %_ZN4llvm5APInt6setBitEj.exit, %_ZN4llvm5APInt6setBitEj.exit.us, %_ZN4llvm5APInt6setBitEj.exit.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %249) #38
  store i32 1, ptr %i.cgu, align 8, !tbaa !645
  store i64 0, ptr %249, align 8, !tbaa !314
  call void @llvm.lifetime.start.p0(ptr nonnull %250) #38
  store i32 1, ptr %i.cgv, align 8, !tbaa !645
  store i64 0, ptr %250, align 8, !tbaa !314
  %i.cjo = load ptr, ptr %246, align 8, !tbaa !26
  %i.cjp = getelementptr inbounds nuw [16 x i8], ptr %i.cjo, i64 %indvars.iv2941 ; 2 uses
  %.sroa.064.0.copyload = load ptr, ptr %i.cjp, align 8, !tbaa !449
  %.sroa.265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cjp, i64 8
  %.sroa.265.0.copyload = load i32, ptr %.sroa.265.0..sroa_idx, align 8, !tbaa !189
  %i.cjq = call noundef zeroext i1 @_ZNK4llvm14TargetLowering26SimplifyDemandedVectorEltsENS_7SDValueERKNS_5APIntERS2_S5_RNS0_17TargetLoweringOptEjb(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %.sroa.064.0.copyload, i32 %.sroa.265.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %248, ptr noundef nonnull align 8 dereferenceable(12) %249, ptr noundef nonnull align 8 dereferenceable(12) %250, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef %i.cgw, i1 noundef zeroext false) #38
  %i.cjr = load i32, ptr %i.cgv, align 8, !tbaa !645
  %i.cjs = icmp ugt i32 %i.cjr, 64
  br i1 %i.cjs, label %bb.ti, label %_ZN4llvm5APIntD2Ev.exit2359

bb.ti:                                            ; preds = %._crit_edge2895
  %i.cjt = load ptr, ptr %250, align 8, !tbaa !314 ; 2 uses
  %i.cju = icmp eq ptr %i.cjt, null
  br i1 %i.cju, label %_ZN4llvm5APIntD2Ev.exit2359, label %bb.tj

bb.tj:                                            ; preds = %bb.ti
  call void @_ZdaPv(ptr noundef nonnull %i.cjt) #41
  br label %_ZN4llvm5APIntD2Ev.exit2359

_ZN4llvm5APIntD2Ev.exit2359:                      ; preds = %._crit_edge2895, %bb.ti, %bb.tj
  call void @llvm.lifetime.end.p0(ptr nonnull %250) #38
  %i.cjv = load i32, ptr %i.cgu, align 8, !tbaa !645
  %i.cjw = icmp ugt i32 %i.cjv, 64
  br i1 %i.cjw, label %bb.tk, label %_ZN4llvm5APIntD2Ev.exit2360

bb.tk:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit2359
  %i.cjx = load ptr, ptr %249, align 8, !tbaa !314 ; 2 uses
  %i.cjy = icmp eq ptr %i.cjx, null
  br i1 %i.cjy, label %_ZN4llvm5APIntD2Ev.exit2360, label %bb.tl

bb.tl:                                            ; preds = %bb.tk
  call void @_ZdaPv(ptr noundef nonnull %i.cjx) #41
  br label %_ZN4llvm5APIntD2Ev.exit2360

_ZN4llvm5APIntD2Ev.exit2360:                      ; preds = %_ZN4llvm5APIntD2Ev.exit2359, %bb.tk, %bb.tl
  call void @llvm.lifetime.end.p0(ptr nonnull %249) #38
  %i.cjz = load i32, ptr %i.cgs, align 8, !tbaa !645
  %i.cka = icmp ugt i32 %i.cjz, 64
  br i1 %i.cka, label %bb.tm, label %_ZN4llvm5APIntD2Ev.exit2361

bb.tm:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit2360
  %i.ckb = load ptr, ptr %248, align 8, !tbaa !314 ; 2 uses
  %i.ckc = icmp eq ptr %i.ckb, null
  br i1 %i.ckc, label %_ZN4llvm5APIntD2Ev.exit2361, label %bb.tn

bb.tn:                                            ; preds = %bb.tm
  call void @_ZdaPv(ptr noundef nonnull %i.ckb) #41
  br label %_ZN4llvm5APIntD2Ev.exit2361

_ZN4llvm5APIntD2Ev.exit2361:                      ; preds = %_ZN4llvm5APIntD2Ev.exit2360, %bb.tm, %bb.tn
  call void @llvm.lifetime.end.p0(ptr nonnull %248) #38
  br i1 %i.cjq, label %_ZL22getTargetShuffleInputsN4llvm7SDValueERKNS_5APIntERNS_15SmallVectorImplIS0_EERNS4_IiEERS1_S9_RKNS_12SelectionDAGEjb.exit.thread, label %.critedge2800

.lr.ph2894.split:                                 ; preds = %.lr.ph2894.split.preheader, %_ZN4llvm5APInt6setBitEj.exit
  %indvars.iv2932 = phi i64 [ 0, %.lr.ph2894.split.preheader ], [ %indvars.iv.next2933, %_ZN4llvm5APInt6setBitEj.exit ] ; 4 uses
  %i.ckd = and i64 %indvars.iv2932, 63
  %i.cke = shl nuw i64 1, %i.ckd
  %i.ckf = load ptr, ptr %3, align 8
  %i.ckg = lshr i64 %indvars.iv2932, 6
  %i.ckh = and i64 %i.ckg, 67108863
  %i.cki = getelementptr inbounds nuw [8 x i8], ptr %i.ckf, i64 %i.ckh
  %.in.i.i2362 = select i1 %i.cia, ptr %3, ptr %i.cki
  %i.ckj = load i64, ptr %.in.i.i2362, align 8, !tbaa !314
  %i.ckk = and i64 %i.ckj, %i.cke
  %.not2825 = icmp eq i64 %i.ckk, 0
  br i1 %.not2825, label %_ZN4llvm5APInt6setBitEj.exit, label %bb.to

bb.to:                                            ; preds = %.lr.ph2894.split
  %i.ckl = getelementptr inbounds nuw [4 x i8], ptr %i.cib, i64 %indvars.iv2932
  %i.ckm = load i32, ptr %i.ckl, align 4, !tbaa !189
  %i.ckn = sub nsw i32 %i.ckm, %i.cie             ; 4 uses
  %i.cko = icmp sgt i32 %i.ckn, -1
  %i.ckp = icmp slt i32 %i.ckn, %i.i
  %or.cond = select i1 %i.cko, i1 %i.ckp, i1 false
  br i1 %or.cond, label %bb.tp, label %_ZN4llvm5APInt6setBitEj.exit

bb.tp:                                            ; preds = %bb.to
  %i.ckq = and i32 %i.ckn, 63
  %i.ckr = zext nneg i32 %i.ckq to i64
  %i.cks = shl nuw i64 1, %i.ckr
  %i.ckt = load ptr, ptr %248, align 8, !tbaa !314
  %i.cku = lshr i32 %i.ckn, 6
  %i.ckv = zext nneg i32 %i.cku to i64
  %i.ckw = getelementptr inbounds nuw [8 x i8], ptr %i.ckt, i64 %i.ckv ; 2 uses
  %i.ckx = load i64, ptr %i.ckw, align 8, !tbaa !722
  %i.cky = or i64 %i.ckx, %i.cks
  store i64 %i.cky, ptr %i.ckw, align 8, !tbaa !722
  br label %_ZN4llvm5APInt6setBitEj.exit

_ZN4llvm5APInt6setBitEj.exit:                     ; preds = %bb.tp, %bb.to, %.lr.ph2894.split
  %indvars.iv.next2933 = add nuw nsw i64 %indvars.iv2932, 1 ; 2 uses
  %.not1916 = icmp eq i64 %indvars.iv.next2933, %i.byh
  br i1 %.not1916, label %._crit_edge2895, label %.lr.ph2894.split, !llvm.loop !2938

.critedge2800:                                    ; preds = %_ZN4llvm5APIntD2Ev.exit2361, %bb.tc
  %indvars.iv.next2942 = add nuw nsw i64 %indvars.iv2941, 1 ; 2 uses
  %.not1915 = icmp eq i64 %indvars.iv.next2942, %i.cgx
  br i1 %.not1915, label %.thread2785, label %bb.tc, !llvm.loop !2939

.thread2785:                                      ; preds = %.critedge2800, %.preheader
  %i.ckz = call noundef zeroext i1 @_ZNK4llvm5APInt9isAllOnesEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
  br i1 %i.ckz, label %bb.tw, label %bb.tq

bb.tq:                                            ; preds = %.thread2785
  call void @llvm.lifetime.start.p0(ptr nonnull %251) #38
  %i.cla = sext i32 %i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #38
  store i32 -1, ptr %i.g, align 4, !tbaa !189
  call void @_ZN4llvm11SmallVectorIiLj64EEC2EmRKi(ptr noundef nonnull align 8 dereferenceable(272) %251, i64 noundef %i.cla, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #38
  %.pre2958 = load ptr, ptr %251, align 8         ; 2 uses
  br label %.lr.ph2903

._crit_edge2904:                                  ; preds = %bb.ts
  call void @llvm.lifetime.start.p0(ptr nonnull %252) #38
  store ptr %1, ptr %252, align 8, !tbaa !449
  %.sroa.136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %252, i64 8
  store i32 %2, ptr %.sroa.136.0..sroa_idx, align 8, !tbaa !189
  %i.clb = load i32, ptr %i.j, align 8, !tbaa !452
  %i.clc = load ptr, ptr %i.l, align 8, !tbaa !454
  %i.cld = getelementptr inbounds nuw [16 x i8], ptr %i.clc, i64 %i.n
  %.sroa.0.0.copyload.i.i.i2364 = load i16, ptr %i.cld, align 8, !tbaa !299
  store ptr %.pre2958, ptr %253, align 8, !tbaa !783
end_hunk_2
begin_hunk_3_@_ZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetE:bb.a
  %.0157.us.i.1 = phi i32 [ %i.ch, %._crit_edge.split.us11.i.1 ], [ 0, %.preheader.lr.ph.i.1 ] ; 2 uses
  %i.bw = add i32 %.0157.us.i.1, %i.w
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.preheader.us.i.1
  %.06.us9.i.1 = phi i32 [ 0, %.preheader.us.i.1 ], [ %i.cg, %bb.k ] ; 2 uses
  %i.bx = add i32 %i.bw, %.06.us9.i.1             ; 2 uses
  %i.by = and i32 %i.bx, 63
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = shl nuw i64 1, %i.bz
  %i.cb = lshr i32 %i.bx, 6
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !314
  %i.cf = and i64 %i.ca, %i.ce
  %.not2.us10.i.1 = icmp eq i64 %i.cf, 0
  br i1 %.not2.us10.i.1, label %"_ZZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetEENK3$_0clEiib.exit.thread15.1", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cg = add nuw nsw i32 %.06.us9.i.1, 1         ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.cg, %.03337
  br i1 %exitcond.not.i.1, label %._crit_edge.split.us11.i.1, label %bb.j, !llvm.loop !4245

._crit_edge.split.us11.i.1:                       ; preds = %bb.k
  %i.ch = add nsw i32 %.0157.us.i.1, %.03539      ; 2 uses
  %.not19.i.1 = icmp slt i32 %i.ch, %i.a
  br i1 %.not19.i.1, label %.preheader.us.i.1, label %.loopexit.1, !llvm.loop !4244

.preheader.us.us.i.1:                             ; preds = %.preheader.us.us.i.1.preheader, %._crit_edge.split.us.us.us.i.1
  %.0157.us.us.i.1 = phi i32 [ %i.cx, %._crit_edge.split.us.us.us.i.1 ], [ 0, %.preheader.us.us.i.1.preheader ] ; 2 uses
  %i.ci = add i32 %.0157.us.us.i.1, %i.w          ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us.i.1
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.ci, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.cj = add <16 x i32> %broadcast.splat, %vec.ind
  %i.ck = and <16 x i32> %i.cj, splat (i32 63)
  %i.cl = zext nneg <16 x i32> %i.ck to <16 x i64>
  %i.cm = shl nuw <16 x i64> splat (i64 1), %i.cl
  %i.cn = and <16 x i64> %i.cm, %broadcast.splat84
  %.fr104 = freeze <16 x i64> %i.cn
  %i.co = icmp eq <16 x i64> %.fr104, zeroinitializer
  %i.cp = bitcast <16 x i1> %i.co to i16
  %.not105 = icmp eq i16 %i.cp, 0
  br i1 %.not105, label %vector.body.interim, label %"_ZZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetEENK3$_0clEiib.exit.thread15.1"

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nuw nsw <16 x i32> %vec.ind, splat (i32 16)
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.cq = icmp eq i32 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !4247

middle.block:                                     ; preds = %vector.body.interim
  br i1 %cmp.n, label %._crit_edge.split.us.us.us.i.1, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us.i.1, %middle.block
  %.06.us.us.us.i.1.ph = phi i32 [ 0, %.preheader.us.us.i.1 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.l
  %.06.us.us.us.i.1 = phi i32 [ %i.cw, %bb.l ], [ %.06.us.us.us.i.1.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cr = add i32 %i.ci, %.06.us.us.us.i.1
  %i.cs = and i32 %i.cr, 63
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = shl nuw i64 1, %i.ct
  %i.cv = and i64 %i.cu, %i.bv
  %.not2.us.us.us.i.1 = icmp eq i64 %i.cv, 0
  br i1 %.not2.us.us.us.i.1, label %"_ZZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetEENK3$_0clEiib.exit.thread15.1", label %bb.l

bb.l:                                             ; preds = %scalar.ph
  %i.cw = add nuw nsw i32 %.06.us.us.us.i.1, 1    ; 2 uses
  %exitcond25.not.i.1 = icmp eq i32 %i.cw, %.03337
  br i1 %exitcond25.not.i.1, label %._crit_edge.split.us.us.us.i.1, label %scalar.ph, !llvm.loop !4248

._crit_edge.split.us.us.us.i.1:                   ; preds = %bb.l, %middle.block
  %i.cx = add nsw i32 %.0157.us.us.i.1, %.03539   ; 2 uses
  %.not20.i.1 = icmp slt i32 %i.cx, %i.a
  br i1 %.not20.i.1, label %.preheader.us.us.i.1, label %.loopexit.1, !llvm.loop !4244

.loopexit.1:                                      ; preds = %._crit_edge.split.us11.i.1, %._crit_edge.split.us.us.us.i.1, %"_ZZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetEENK3$_0clEiib.exit.thread15"
  br i1 %.not57.i, label %._crit_edge.i.1, label %.lr.ph.i.preheader.i.1

.lr.ph.i.preheader.i.1:                           ; preds = %.loopexit.1, %.loopexit.i.1
  %.03658.i.1 = phi i32 [ %i.dh, %.loopexit.i.1 ], [ 0, %.loopexit.1 ] ; 4 uses
  %.reass.i.1 = add i32 %invariant.op.i, %.03658.i.1
  %i.cy = add i32 %i.w, %.03658.i.1
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.m, %.lr.ph.i.preheader.i.1
  %.01116.i.i.1 = phi i32 [ %i.df, %bb.m ], [ %.03658.i.1, %.lr.ph.i.preheader.i.1 ] ; 2 uses
  %.01315.i.i.1 = phi i32 [ %i.dg, %bb.m ], [ %.reass.i.1, %.lr.ph.i.preheader.i.1 ] ; 2 uses
  %i.cz = zext i32 %.01116.i.i.1 to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !189 ; 2 uses
  %i.dc = icmp eq i32 %i.db, -1
  %i.dd = icmp eq i32 %i.db, %.01315.i.i.1
  %i.de = or i1 %i.dc, %i.dd
  br i1 %i.de, label %bb.m, label %"_ZZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetEENK3$_0clEiib.exit.thread15.1"

bb.m:                                             ; preds = %.lr.ph.i.i.1
  %i.df = add i32 %.01116.i.i.1, 1                ; 2 uses
  %i.dg = add nsw i32 %.01315.i.i.1, 1
  %.not.i.i.1 = icmp eq i32 %i.df, %i.cy
  br i1 %.not.i.i.1, label %.loopexit.i.1, label %.lr.ph.i.i.1, !llvm.loop !2933

.loopexit.i.1:                                    ; preds = %bb.m
  %i.dh = add nsw i32 %.03658.i.1, %.03539        ; 2 uses
  %.not.i.1 = icmp eq i32 %i.dh, %i.a
  br i1 %.not.i.1, label %._crit_edge.i.1, label %.lr.ph.i.preheader.i.1, !llvm.loop !4246

._crit_edge.i.1:                                  ; preds = %.loopexit.i.1, %.loopexit.1
  store i32 %i.m, ptr %1, align 4, !tbaa !189
  br i1 %i.k, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.1
  %i.di = sdiv i32 %i.a, %.03539
  %i.dj = tail call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0.0.i.i.1, i32 noundef %i.di)
  br label %"_ZZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetEENK3$_0clEiib.exit.1"

bb.o:                                             ; preds = %._crit_edge.i.1
  switch i32 %i.i, label %bb.p [
    i32 1, label %"_ZZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetEENK3$_0clEiib.exit.1"
    i32 2, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split.i.1
    i32 3, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split43.i.1
    i32 4, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split44.i.1
    i32 5, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split45.i.1
    i32 6, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split46.i.1
    i32 7, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split47.i.1
    i32 8, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split48.i.1
    i32 16, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split49.i.1
    i32 32, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split50.i.1
    i32 64, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split51.i.1
    i32 128, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split52.i.1
    i32 256, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split53.i.1
    i32 512, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split54.i.1
    i32 1024, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split55.i.1
  ]

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split55.i.1: ; preds = %bb.o
  br label %"_ZZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetEENK3$_0clEiib.exit.1"

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split54.i.1: ; preds = %bb.o
  br label %"_ZZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetEENK3$_0clEiib.exit.1"

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split53.i.1: ; preds = %bb.o
  br label %"_ZZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetEENK3$_0clEiib.exit.1"

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split52.i.1: ; preds = %bb.o
  br label %"_ZZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetEENK3$_0clEiib.exit.1"

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split51.i.1: ; preds = %bb.o
  br label %"_ZZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetEENK3$_0clEiib.exit.1"

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split50.i.1: ; preds = %bb.o
  br label %"_ZZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetEENK3$_0clEiib.exit.1"

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split49.i.1: ; preds = %bb.o
  br label %"_ZZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetEENK3$_0clEiib.exit.1"

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split48.i.1: ; preds = %bb.o
  br label %"_ZZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetEENK3$_0clEiib.exit.1"

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split47.i.1: ; preds = %bb.o
  br label %"_ZZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetEENK3$_0clEiib.exit.1"

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split46.i.1: ; preds = %bb.o
  br label %"_ZZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetEENK3$_0clEiib.exit.1"

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split45.i.1: ; preds = %bb.o
  br label %"_ZZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetEENK3$_0clEiib.exit.1"

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split44.i.1: ; preds = %bb.o
  br label %"_ZZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetEENK3$_0clEiib.exit.1"

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split43.i.1: ; preds = %bb.o
  br label %"_ZZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetEENK3$_0clEiib.exit.1"

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split.i.1: ; preds = %bb.o
  br label %"_ZZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetEENK3$_0clEiib.exit.1"

bb.p:                                             ; preds = %bb.o
  br label %"_ZZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetEENK3$_0clEiib.exit.1"

"_ZZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetEENK3$_0clEiib.exit.1": ; preds = %bb.p, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split.i.1, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split43.i.1, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split44.i.1, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split45.i.1, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split46.i.1, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split47.i.1, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split48.i.1, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split49.i.1, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split50.i.1, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split51.i.1, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split52.i.1, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split53.i.1, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split54.i.1, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split55.i.1, %bb.o, %bb.n
  %.sroa.01.0.i.1 = phi i16 [ %i.dj, %bb.n ], [ 0, %bb.p ], [ 48, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split49.i.1 ], [ 49, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split50.i.1 ], [ 50, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split51.i.1 ], [ 51, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split52.i.1 ], [ 52, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split53.i.1 ], [ 53, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split54.i.1 ], [ 40, %bb.o ], [ 47, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split48.i.1 ], [ 41, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split.i.1 ], [ 42, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split43.i.1 ], [ 43, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split44.i.1 ], [ 44, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split45.i.1 ], [ 45, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split46.i.1 ], [ 46, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split47.i.1 ], [ 54, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split55.i.1 ]
  store i16 %.sroa.01.0.i.1, ptr %0, align 2, !tbaa !299
  br i1 %i.aa, label %"_ZZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetEENK3$_0clEiib.exit.thread15.1", label %.loopexit35

"_ZZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetEENK3$_0clEiib.exit.thread15.1": ; preds = %bb.j, %vector.body, %scalar.ph, %.lr.ph.i.i.1, %"_ZZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetEENK3$_0clEiib.exit.1"
  %i.dk = add nuw nsw i32 %.03337, 1              ; 2 uses
  %.not42 = icmp eq i32 %i.dk, %.03539
  br i1 %.not42, label %.thread25, label %bb.b, !llvm.loop !4249

.thread25:                                        ; preds = %"_ZZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetEENK3$_0clEiib.exit.thread15.1"
  %i.dl = shl nuw nsw i32 %.03539, 1              ; 2 uses
  %i.dm = mul i32 %i.dl, %2                       ; 2 uses
  %.not = icmp ugt i32 %i.dm, %i.e
  br i1 %.not, label %.loopexit35, label %.preheader, !llvm.loop !4250

.loopexit35:                                      ; preds = %.thread25, %"_ZZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetEENK3$_0clEiib.exit", %"_ZZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetEENK3$_0clEiib.exit.1", %bb.a
  %spec.select = phi i32 [ %i.z, %"_ZZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetEENK3$_0clEiib.exit" ], [ -1, %bb.a ], [ %i.z, %"_ZZL19matchShuffleAsShiftRN4llvm3MVTERjjNS_8ArrayRefIiEEiRKNS_5APIntERKNS_12X86SubtargetEENK3$_0clEiib.exit.1" ], [ -1, %.thread25 ]
  ret i32 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL30getScalarValueForVectorElementN4llvm7SDValueEiRNS_12SelectionDAGE(ptr %0, i32 %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(920) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !454
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.d, align 8, !tbaa !299 ; 3 uses
  %i.e = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.f = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !299  ; 3 uses
  %i.i = tail call { ptr, i32 } @_ZN4llvm19peekThroughBitcastsENS_7SDValueE(ptr %0, i32 %1) #38 ; 2 uses
  %.fca.0.extract12 = extractvalue { ptr, i32 } %i.i, 0 ; 4 uses
  %.fca.1.extract13 = extractvalue { ptr, i32 } %i.i, 1
  %i.j = getelementptr inbounds nuw i8, ptr %.fca.0.extract12, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !454
  %i.l = zext i32 %.fca.1.extract13 to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.l
  %.sroa.0.0.copyload.i.i.i23 = load i16, ptr %i.m, align 8, !tbaa !299 ; 2 uses
  %i.n = add i16 %.sroa.0.0.copyload.i.i.i23, -19
  %spec.select.i = icmp ult i16 %i.n, 197
  br i1 %spec.select.i, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit, label %.critedge

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit:        ; preds = %bb.a
  %i.o = zext nneg i16 %.sroa.0.0.copyload.i.i.i23 to i64
  %i.p = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -2
  %i.r = load i16, ptr %i.q, align 2, !tbaa !299
  %i.s = zext i16 %i.r to i64
  %i.t = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.u, align 16
  %i.v = add i16 %.sroa.0.0.copyload.i.i.i, -19
  %spec.select.i.i.i24 = icmp ult i16 %i.v, 197
  %spec.select = select i1 %spec.select.i.i.i24, i16 %i.h, i16 %.sroa.0.0.copyload.i.i.i
  %i.w = zext i16 %spec.select to i64
  %i.x = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -16
  %.sroa.0.0.copyload.i.i26 = load i64, ptr %i.y, align 16
  %.not = icmp eq i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i.i26
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.fca.0.extract12, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !452 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 162
  br i1 %i.ab, label %.split, label %bb.c

.split:                                           ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %.fca.0.extract12, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !636
  %i.ae = zext i32 %2 to i64
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.ad, i64 %i.ae
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ag = icmp eq i32 %2, 0
  %i.ah = icmp eq i32 %i.aa, 174
  %or.cond = and i1 %i.ag, %i.ah
  br i1 %or.cond, label %.split22, label %.critedge

.split22:                                         ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %.fca.0.extract12, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !636
  br label %bb.d

bb.d:                                             ; preds = %.split22, %.split
  %phi.call = phi ptr [ %i.af, %.split ], [ %i.aj, %.split22 ] ; 2 uses
  %.sroa.039.0.copyload = load ptr, ptr %phi.call, align 8, !tbaa !449 ; 2 uses
  %.sroa.7.0.phi.call.sroa_idx = getelementptr inbounds nuw i8, ptr %phi.call, i64 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0.phi.call.sroa_idx, align 8, !tbaa !189 ; 2 uses
  %i.ak = zext i16 %i.h to i64
  %i.al = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ak ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 -16
  %.sroa.0.0.copyload.i = load i64, ptr %i.am, align 16
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.al, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.039.0.copyload, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !454
  %i.ap = zext i32 %.sroa.7.0.copyload to i64
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap
  %.sroa.0.0.copyload.i.i.i28 = load i16, ptr %i.aq, align 8, !tbaa !299
  %i.ar = zext i16 %.sroa.0.0.copyload.i.i.i28 to i64
  %i.as = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ar ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 -16
  %.sroa.0.0.copyload.i29 = load i64, ptr %i.at, align 16
  %.sroa.2.0..sroa_idx.i30 = getelementptr i8, ptr %i.as, i64 -8
  %.sroa.2.0.copyload.i31 = load i8, ptr %.sroa.2.0..sroa_idx.i30, align 8
  %i.au = icmp eq i64 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i29
  %i.av = icmp eq i8 %.sroa.2.0.copyload.i, %.sroa.2.0.copyload.i31
  %i.aw = select i1 %i.au, i1 %i.av, i1 false
  br i1 %i.aw, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ax = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %i.h, ptr null, ptr nonnull %.sroa.039.0.copyload, i32 %.sroa.7.0.copyload) #38 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ax, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ax, 1
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.d, %bb.a, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit, %bb.e
  %.sroa.656.0 = phi i32 [ %.fca.1.extract, %bb.e ], [ 0, %bb.a ], [ 0, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit ], [ 0, %bb.d ], [ 0, %bb.c ]
  %.sroa.055.0 = phi ptr [ %.fca.0.extract, %bb.e ], [ null, %bb.a ], [ null, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit ], [ null, %bb.d ], [ null, %bb.c ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.055.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.656.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL19matchShuffleAsBlendN4llvm3MVTENS_7SDValueES1_NS_15MutableArrayRefIiEERKNS_5APIntERbS7_Rm(i16 %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr nofree captures(none) %.0.val, i64 %.8.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %5, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %6, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %7, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) initializes((0, 8)) %8) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !452
  %i.c = add i32 %i.b, -53
  %spec.select.i.i = icmp ult i32 %i.c, 2
  br i1 %spec.select.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4llvm3ISD21isBuildVectorAllZerosEPKNS_6SDNodeE(ptr noundef nonnull %1) #38
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i1 [ true, %bb.a ], [ %i.d, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !452
  %i.h = add i32 %i.g, -53
  %spec.select.i.i108 = icmp ult i32 %i.h, 2
  br i1 %spec.select.i.i108, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef zeroext i1 @_ZN4llvm3ISD21isBuildVectorAllZerosEPKNS_6SDNodeE(ptr noundef nonnull %3) #38
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = phi i1 [ true, %bb.c ], [ %i.i, %bb.d ]
  store i64 0, ptr %8, align 8, !tbaa !722
  store i8 0, ptr %6, align 1, !tbaa !692
  store i8 0, ptr %7, align 1, !tbaa !692
  %i.k = trunc i64 %.8.val to i32                 ; 5 uses
  %i.l = zext i16 %0 to i64                       ; 2 uses
  %i.m = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.l ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.m, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.n = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.n, label %bb.f, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #40
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.e
  %i.o = getelementptr i8, ptr %i.m, i64 -16
  %.sroa.0.0.copyload.i = load i64, ptr %i.o, align 16 ; 2 uses
  %i.p = lshr i64 %.sroa.0.0.copyload.i, 7        ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = sdiv i32 %i.k, %i.q                      ; 3 uses
  %i.s = add i16 %0, -19
  %spec.select.i.i109 = icmp ult i16 %i.s, 144
  %i.t = icmp eq i64 %.sroa.0.0.copyload.i, 256
  %or.cond22 = and i1 %spec.select.i.i109, %i.t
  br i1 %or.cond22, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit, label %_ZNK4llvm3MVT14is256BitVectorEv.exit.thread

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit:        ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.u = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.l
  %i.v = getelementptr i8, ptr %i.u, i64 -2
  %i.w = load i16, ptr %i.v, align 2, !tbaa !299
  %i.x = zext i16 %i.w to i64
  %i.y = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.z, align 16
  %i.aa = icmp ugt i64 %.sroa.0.0.copyload.i.i, 31
  br label %_ZNK4llvm3MVT14is256BitVectorEv.exit.thread

_ZNK4llvm3MVT14is256BitVectorEv.exit.thread:      ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit
  %i.ab = phi i1 [ false, %_ZNK4llvm8TypeSizecvmEv.exit ], [ %i.aa, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit ]
  %.not10430 = icmp eq i32 %i.r, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ad = zext i32 %i.r to i64                    ; 2 uses
  %notmask = shl nsw i64 -1, %i.ad
  %i.ae = xor i64 %notmask, -1
  br i1 %.not10430, label %.critedge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZNK4llvm3MVT14is256BitVectorEv.exit.thread
  %i.af = sext i32 %i.r to i64
  %zext42 = and i64 %i.p, 4294967295
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv40 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next41, %._crit_edge ] ; 2 uses
  %i.ag = mul nsw i64 %indvars.iv40, %i.af        ; 2 uses
  br label %bb.g
end_hunk_3
begin_hunk_4_@_ZL22combineX86ShuffleChainN4llvm8ArrayRefINS_7SDValueEEEjNS_3MVTENS0_IiEEiNS0_IPKNS_6SDNodeEEEbbbRNS_12SelectionDAGERKNS_5SDLocERKNS_12X86SubtargetE:bb.a
  %min.iters.check3716 = icmp ult i32 %i.byd, 8
  br i1 %min.iters.check3716, label %.lr.ph.i75.i.i.preheader, label %vector.ph3717

vector.ph3717:                                    ; preds = %.lr.ph.i75.preheader.i.i
  %n.vec3718 = and i64 %i.bzi, 4294967288         ; 3 uses
  %broadcast.splatinsert3719 = insertelement <4 x i32> poison, i32 %i.bzj, i64 0
  %broadcast.splat3720 = shufflevector <4 x i32> %broadcast.splatinsert3719, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3721 = insertelement <4 x i32> poison, i32 %i.byd, i64 0
  %broadcast.splat3722 = shufflevector <4 x i32> %broadcast.splatinsert3721, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body3723

vector.body3723:                                  ; preds = %pred.store.continue3742, %vector.ph3717
  %index3724 = phi i64 [ 0, %vector.ph3717 ], [ %index.next3743, %pred.store.continue3742 ] ; 9 uses
  %i.bzk = getelementptr inbounds nuw [4 x i8], ptr %.pre793.i, i64 %index3724 ; 3 uses
  %i.bzl = getelementptr inbounds nuw i8, ptr %i.bzk, i64 16
  %wide.load3725 = load <4 x i32>, ptr %i.bzk, align 4, !tbaa !189 ; 3 uses
  %wide.load3726 = load <4 x i32>, ptr %i.bzl, align 4, !tbaa !189 ; 3 uses
  %i.bzm = icmp sgt <4 x i32> %wide.load3725, splat (i32 -1) ; 4 uses
  %i.bzn = icmp sgt <4 x i32> %wide.load3726, splat (i32 -1) ; 4 uses
  %i.bzo = icmp slt <4 x i32> %wide.load3725, %broadcast.splat3722
  %i.bzp = icmp slt <4 x i32> %wide.load3726, %broadcast.splat3722
  %i.bzq = select <4 x i1> %i.bzo, <4 x i32> %broadcast.splat3722, <4 x i32> %broadcast.splat3720
  %i.bzr = select <4 x i1> %i.bzp, <4 x i32> %broadcast.splat3722, <4 x i32> %broadcast.splat3720
  %i.bzs = add <4 x i32> %i.bzq, %wide.load3725   ; 4 uses
  %i.bzt = add <4 x i32> %i.bzr, %wide.load3726   ; 4 uses
  %i.bzu = extractelement <4 x i1> %i.bzm, i64 0
  br i1 %i.bzu, label %pred.store.if3727, label %pred.store.continue3728

pred.store.if3727:                                ; preds = %vector.body3723
  %i.bzv = extractelement <4 x i32> %i.bzs, i64 0
  store i32 %i.bzv, ptr %i.bzk, align 4, !tbaa !189
  br label %pred.store.continue3728

pred.store.continue3728:                          ; preds = %pred.store.if3727, %vector.body3723
  %i.bzw = extractelement <4 x i1> %i.bzm, i64 1
  br i1 %i.bzw, label %pred.store.if3729, label %pred.store.continue3730

pred.store.if3729:                                ; preds = %pred.store.continue3728
  %i.bzx = getelementptr inbounds nuw [4 x i8], ptr %.pre793.i, i64 %index3724
  %i.bzy = getelementptr inbounds nuw i8, ptr %i.bzx, i64 4
  %i.bzz = extractelement <4 x i32> %i.bzs, i64 1
  store i32 %i.bzz, ptr %i.bzy, align 4, !tbaa !189
  br label %pred.store.continue3730

pred.store.continue3730:                          ; preds = %pred.store.if3729, %pred.store.continue3728
  %i.caa = extractelement <4 x i1> %i.bzm, i64 2
  br i1 %i.caa, label %pred.store.if3731, label %pred.store.continue3732

pred.store.if3731:                                ; preds = %pred.store.continue3730
  %i.cab = getelementptr inbounds nuw [4 x i8], ptr %.pre793.i, i64 %index3724
  %i.cac = getelementptr inbounds nuw i8, ptr %i.cab, i64 8
  %i.cad = extractelement <4 x i32> %i.bzs, i64 2
  store i32 %i.cad, ptr %i.cac, align 4, !tbaa !189
  br label %pred.store.continue3732

pred.store.continue3732:                          ; preds = %pred.store.if3731, %pred.store.continue3730
  %i.cae = extractelement <4 x i1> %i.bzm, i64 3
  br i1 %i.cae, label %pred.store.if3733, label %pred.store.continue3734

pred.store.if3733:                                ; preds = %pred.store.continue3732
  %i.caf = getelementptr inbounds nuw [4 x i8], ptr %.pre793.i, i64 %index3724
  %i.cag = getelementptr inbounds nuw i8, ptr %i.caf, i64 12
  %i.cah = extractelement <4 x i32> %i.bzs, i64 3
  store i32 %i.cah, ptr %i.cag, align 4, !tbaa !189
  br label %pred.store.continue3734

pred.store.continue3734:                          ; preds = %pred.store.if3733, %pred.store.continue3732
  %i.cai = extractelement <4 x i1> %i.bzn, i64 0
  br i1 %i.cai, label %pred.store.if3735, label %pred.store.continue3736

pred.store.if3735:                                ; preds = %pred.store.continue3734
  %i.caj = getelementptr inbounds nuw [4 x i8], ptr %.pre793.i, i64 %index3724
  %i.cak = getelementptr inbounds nuw i8, ptr %i.caj, i64 16
  %i.cal = extractelement <4 x i32> %i.bzt, i64 0
  store i32 %i.cal, ptr %i.cak, align 4, !tbaa !189
  br label %pred.store.continue3736

pred.store.continue3736:                          ; preds = %pred.store.if3735, %pred.store.continue3734
  %i.cam = extractelement <4 x i1> %i.bzn, i64 1
  br i1 %i.cam, label %pred.store.if3737, label %pred.store.continue3738

pred.store.if3737:                                ; preds = %pred.store.continue3736
  %i.can = getelementptr inbounds nuw [4 x i8], ptr %.pre793.i, i64 %index3724
  %i.cao = getelementptr inbounds nuw i8, ptr %i.can, i64 20
  %i.cap = extractelement <4 x i32> %i.bzt, i64 1
  store i32 %i.cap, ptr %i.cao, align 4, !tbaa !189
  br label %pred.store.continue3738

pred.store.continue3738:                          ; preds = %pred.store.if3737, %pred.store.continue3736
  %i.caq = extractelement <4 x i1> %i.bzn, i64 2
  br i1 %i.caq, label %pred.store.if3739, label %pred.store.continue3740

pred.store.if3739:                                ; preds = %pred.store.continue3738
  %i.car = getelementptr inbounds nuw [4 x i8], ptr %.pre793.i, i64 %index3724
  %i.cas = getelementptr inbounds nuw i8, ptr %i.car, i64 24
  %i.cat = extractelement <4 x i32> %i.bzt, i64 2
  store i32 %i.cat, ptr %i.cas, align 4, !tbaa !189
  br label %pred.store.continue3740

pred.store.continue3740:                          ; preds = %pred.store.if3739, %pred.store.continue3738
  %i.cau = extractelement <4 x i1> %i.bzn, i64 3
  br i1 %i.cau, label %pred.store.if3741, label %pred.store.continue3742

pred.store.if3741:                                ; preds = %pred.store.continue3740
  %i.cav = getelementptr inbounds nuw [4 x i8], ptr %.pre793.i, i64 %index3724
  %i.caw = getelementptr inbounds nuw i8, ptr %i.cav, i64 28
  %i.cax = extractelement <4 x i32> %i.bzt, i64 3
  store i32 %i.cax, ptr %i.caw, align 4, !tbaa !189
  br label %pred.store.continue3742

pred.store.continue3742:                          ; preds = %pred.store.if3741, %pred.store.continue3740
  %index.next3743 = add nuw i64 %index3724, 8     ; 2 uses
  %i.cay = icmp eq i64 %index.next3743, %n.vec3718
  br i1 %i.cay, label %middle.block3744, label %vector.body3723, !llvm.loop !5005

middle.block3744:                                 ; preds = %pred.store.continue3742
  %cmp.n3745 = icmp eq i64 %n.vec3718, %i.bzi
  br i1 %cmp.n3745, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.loopexit.i.i2097, label %.lr.ph.i75.i.i.preheader

.lr.ph.i75.i.i.preheader:                         ; preds = %.lr.ph.i75.preheader.i.i, %middle.block3744
  %indvars.iv.i76.i.i.ph = phi i64 [ 0, %.lr.ph.i75.preheader.i.i ], [ %n.vec3718, %middle.block3744 ]
  br label %.lr.ph.i75.i.i

.lr.ph.i75.i.i:                                   ; preds = %.lr.ph.i75.i.i.preheader, %bb.ud
  %indvars.iv.i76.i.i = phi i64 [ %indvars.iv.next.i77.i.i, %bb.ud ], [ %indvars.iv.i76.i.i.ph, %.lr.ph.i75.i.i.preheader ] ; 2 uses
  %i.caz = getelementptr inbounds nuw [4 x i8], ptr %.pre793.i, i64 %indvars.iv.i76.i.i ; 2 uses
  %i.cba = load i32, ptr %i.caz, align 4, !tbaa !189 ; 3 uses
  %i.cbb = icmp slt i32 %i.cba, 0
  br i1 %i.cbb, label %bb.ud, label %.sink.split.i.i.i2094

.sink.split.i.i.i2094:                            ; preds = %.lr.ph.i75.i.i
  %i.cbc = icmp slt i32 %i.cba, %i.byd
  %.sink.p.i.i.i2095 = select i1 %i.cbc, i32 %i.byd, i32 %i.bzj
  %.sink.i.i.i2096 = add i32 %.sink.p.i.i.i2095, %i.cba
  store i32 %.sink.i.i.i2096, ptr %i.caz, align 4, !tbaa !189
  br label %bb.ud

bb.ud:                                            ; preds = %.sink.split.i.i.i2094, %.lr.ph.i75.i.i
  %indvars.iv.next.i77.i.i = add nuw nsw i64 %indvars.iv.i76.i.i, 1 ; 2 uses
  %.not.i78.i.i = icmp eq i64 %indvars.iv.next.i77.i.i, %i.bzi
  br i1 %.not.i78.i.i, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.loopexit.i.i2097, label %.lr.ph.i75.i.i, !llvm.loop !5006

_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.loopexit.i.i2097: ; preds = %bb.ud, %middle.block3744
  %.pre196.i.i = load i32, ptr %i.bwl, align 8, !tbaa !630
  br label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.i.i2098

_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.i.i2098: ; preds = %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.loopexit.i.i2097, %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit.i.i
  %i.cbd = phi i32 [ %.pre196.i.i, %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.loopexit.i.i2097 ], [ 0, %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit.i.i ]
  %.not.i79.i.i = icmp eq i32 %i.cbd, %i.boc
  br i1 %.not.i79.i.i, label %.preheader.i81.i.i, label %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit96.i.i

.preheader.i81.i.i:                               ; preds = %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.i.i2098
  br i1 %.not593.i.i.i, label %.loopexit.i.i, label %.lr.ph.i85.i.i

.lr.ph.i85.i.i:                                   ; preds = %.preheader.i81.i.i, %.critedge.i93.i.i
  %indvars.iv.i86.i.i = phi i64 [ %indvars.iv.next.i94.i.i, %.critedge.i93.i.i ], [ 0, %.preheader.i81.i.i ] ; 3 uses
  %i.cbe = getelementptr inbounds nuw [4 x i8], ptr %i.bob, i64 %indvars.iv.i86.i.i
  %i.cbf = load i32, ptr %i.cbe, align 4, !tbaa !189 ; 2 uses
  %i.cbg = getelementptr inbounds nuw [4 x i8], ptr %.pre793.i, i64 %indvars.iv.i86.i.i
  %i.cbh = load i32, ptr %i.cbg, align 4, !tbaa !189
  %i.cbi = icmp slt i32 %i.cbf, 0
  %.not58.i87.i.i = icmp eq i32 %i.cbf, %i.cbh
  %or.cond.i88.i.i = select i1 %i.cbi, i1 true, i1 %.not58.i87.i.i
  br i1 %or.cond.i88.i.i, label %.critedge.i93.i.i, label %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit96.i.i

.critedge.i93.i.i:                                ; preds = %.lr.ph.i85.i.i
  %indvars.iv.next.i94.i.i = add nuw nsw i64 %indvars.iv.i86.i.i, 1 ; 2 uses
  %exitcond.not.i95.i.i = icmp eq i64 %indvars.iv.next.i94.i.i, %wide.trip.count.i.i.i2092
  br i1 %exitcond.not.i95.i.i, label %.loopexit.i.i, label %.lr.ph.i85.i.i, !llvm.loop !4117

.loopexit.i.i:                                    ; preds = %.preheader.i81.i.i, %.critedge.i93.i.i
  %i.cbj = call range(i32 0, 7) i32 @llvm.ctpop.i32(i32 %i.bwv)
  %i.cbk = icmp eq i32 %i.cbj, 1
  %i.cbl = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bwv, i1 true)
  %switch.idx.cast.i100.i.i = trunc nuw nsw i32 %i.cbl to i16
  %switch.offset.i101.i.i = add nuw nsw i16 %switch.idx.cast.i100.i.i, 2
  %.sroa.0.0.i97.i.i = select i1 %i.cbk, i16 %switch.offset.i101.i.i, i16 0
  %i.cbm = sdiv i32 %i.boc, %.052161.i.i
  %i.cbn = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0.0.i97.i.i, i32 noundef %i.cbm)
  store i16 %i.cbn, ptr %118, align 2, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(16) %140, i64 16, i1 false), !tbaa.struct !745
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %140, ptr noundef nonnull align 8 dereferenceable(12) %141, i64 12, i1 false), !tbaa.struct !745
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %141, ptr noundef nonnull align 8 dereferenceable(12) %23, i64 12, i1 false), !tbaa.struct !745
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  br label %bb.ue

_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit96.i.i: ; preds = %.lr.ph.i85.i.i, %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.i.i2098
  %indvars.iv.next193.i.i = add nuw nsw i64 %indvars.iv192.i.i, 1 ; 2 uses
  %.not.i443.i = icmp eq i64 %indvars.iv.next193.i.i, %i.bwy
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i443.i, label %.thread.i.i, label %.preheader.i.i, !llvm.loop !5007

bb.ue:                                            ; preds = %.loopexit.i.i, %.loopexit128.i.i
  %.053160169.i.i = trunc i64 %indvars.iv192.i.i to i32
  %.1.i.i2099 = mul i32 %.053160169.i.i, %i.boj
  %.pre792.i = load ptr, ptr %24, align 8, !tbaa !26
  br label %.loopexit132.i.i

.thread.i.i:                                      ; preds = %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit96.i.i
  %i.cbo = shl nuw nsw i32 %.052161.i.i, 1        ; 2 uses
  %i.cbp = mul i32 %i.cbo, %i.boj                 ; 2 uses
  %i.cbq = icmp ugt i32 %i.cbp, 64
  br i1 %i.cbq, label %.loopexit132.i.i, label %.preheader129.i.i, !llvm.loop !5008

.loopexit132.i.i:                                 ; preds = %.thread.i.i, %bb.ue, %_ZN4llvm11SmallVectorIiLj32EEC2Em.exit.i.i
  %i.cbr = phi ptr [ %.pre792.i, %bb.ue ], [ %.pre793.i, %_ZN4llvm11SmallVectorIiLj32EEC2Em.exit.i.i ], [ %.pre793.i, %.thread.i.i ] ; 2 uses
  %spec.select.i444.i = phi i32 [ %.1.i.i2099, %bb.ue ], [ -1, %_ZN4llvm11SmallVectorIiLj32EEC2Em.exit.i.i ], [ -1, %.thread.i.i ] ; 2 uses
  %i.cbs = icmp eq ptr %i.cbr, %i.bwk
  br i1 %i.cbs, label %_ZL19matchShuffleAsVSHLDRN4llvm3MVTERNS_7SDValueES3_jNS_8ArrayRefIiEE.exit.i, label %bb.uf

bb.uf:                                            ; preds = %.loopexit132.i.i
  call void @free(ptr noundef %i.cbr) #38
  br label %_ZL19matchShuffleAsVSHLDRN4llvm3MVTERNS_7SDValueES3_jNS_8ArrayRefIiEE.exit.i

_ZL19matchShuffleAsVSHLDRN4llvm3MVTERNS_7SDValueES3_jNS_8ArrayRefIiEE.exit.i: ; preds = %bb.uf, %.loopexit132.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #38
  %i.cbt = icmp slt i32 %spec.select.i444.i, 1
  br i1 %i.cbt, label %.critedge366.i, label %bb.ug

bb.ug:                                            ; preds = %_ZL19matchShuffleAsVSHLDRN4llvm3MVTERNS_7SDValueES3_jNS_8ArrayRefIiEE.exit.i
  store i32 968, ptr %i.t, align 4, !tbaa !189
  store i32 %spec.select.i444.i, ptr %i.u, align 4, !tbaa !189
  br label %bb.xl

.critedge366.i:                                   ; preds = %_ZL19matchShuffleAsVSHLDRN4llvm3MVTERNS_7SDValueES3_jNS_8ArrayRefIiEE.exit.i, %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i", %.critedge363.i, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit.i2066
  %i.cbu = icmp ult i32 %i.boc, 9
  br i1 %i.cbu, label %bb.uh, label %.thread674.i

bb.uh:                                            ; preds = %.critedge366.i
  %i.cbv = getelementptr inbounds nuw i8, ptr %13, i64 360
  %i.cbw = load i32, ptr %i.cbv, align 8, !tbaa !297 ; 2 uses
  %i.cbx = icmp sgt i32 %i.cbw, 4
  br i1 %i.cbx, label %bb.ui, label %.thread674.i

bb.ui:                                            ; preds = %bb.uh
  br i1 %spec.select.i.i.i2027, label %_ZNK4llvm3MVT14is128BitVectorEv.exit448.i, label %.critedge13.i2069

_ZNK4llvm3MVT14is128BitVectorEv.exit448.i:        ; preds = %bb.ui
  br i1 %i.asc, label %.critedge.i2082.thread, label %_ZNK4llvm3MVT14is128BitVectorEv.exit448.thread.i

_ZNK4llvm3MVT14is128BitVectorEv.exit448.thread.i: ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit448.i
  %i.cby = icmp samesign ugt i32 %i.cbw, 6
  %i.cbz = icmp eq i64 %.sroa.0.0.copyload.i.i2023, 256
  %or.cond2864 = select i1 %i.cby, i1 %i.cbz, i1 false
  br i1 %or.cond2864, label %.critedge.i2082.thread, label %.thread674.i

.thread674.i:                                     ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit448.thread.i, %bb.uh, %.critedge366.i
  %i.cca = icmp eq i16 %i.qv, 63
  br i1 %i.cca, label %bb.uj, label %.critedge13.i2069

bb.uj:                                            ; preds = %.thread674.i
  %i.ccb = getelementptr inbounds nuw i8, ptr %13, i64 360
  %i.ccc = load i32, ptr %i.ccb, align 8, !tbaa !297
  %i.ccd = icmp sgt i32 %i.ccc, 7
  br i1 %i.ccd, label %.critedge.i2082, label %.critedge13.i2069

.critedge.i2082.thread:                           ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit448.thread.i, %_ZNK4llvm3MVT14is128BitVectorEv.exit448.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #38
  %i.cce = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  store ptr %i.cce, ptr %29, align 8, !tbaa !26
  %i.ccf = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store i32 0, ptr %i.ccf, align 8, !tbaa !630
  %i.ccg = getelementptr inbounds nuw i8, ptr %29, i64 12
  store i32 8, ptr %i.ccg, align 4, !tbaa !631
  %.idx.i452.i2809 = shl nuw nsw i64 %i.bod, 2
  br label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i

.critedge.i2082:                                  ; preds = %bb.uj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #38
  %i.cch = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 4 uses
  store ptr %i.cch, ptr %29, align 8, !tbaa !26
  %i.cci = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 4 uses
  store i32 0, ptr %i.cci, align 8, !tbaa !630
  %i.ccj = getelementptr inbounds nuw i8, ptr %29, i64 12
  store i32 8, ptr %i.ccj, align 4, !tbaa !631
  %.idx.i452.i = shl nuw nsw i64 %i.bod, 2        ; 2 uses
  %i.cck = icmp ugt i32 %i.boc, 8
  br i1 %i.cck, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i.i, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i.i: ; preds = %.critedge.i2082
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr noundef nonnull %i.cch, i64 noundef %i.bod, i64 noundef 4) #38
  %.pre8.pre.i.i.i = load i32, ptr %i.cci, align 8, !tbaa !630
  %i.ccl = zext i32 %.pre8.pre.i.i.i to i64
  %.pre794.i = load ptr, ptr %29, align 8, !tbaa !26
  br label %bb.uk

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i: ; preds = %.critedge.i2082.thread, %.critedge.i2082
  %.idx.i452.i2811 = phi i64 [ %.idx.i452.i2809, %.critedge.i2082.thread ], [ %.idx.i452.i, %.critedge.i2082 ]
  %i.ccm = phi ptr [ %i.ccf, %.critedge.i2082.thread ], [ %i.cci, %.critedge.i2082 ] ; 2 uses
  %i.ccn = phi ptr [ %i.cce, %.critedge.i2082.thread ], [ %i.cch, %.critedge.i2082 ] ; 4 uses
  %.not.i.i.i.i2083 = icmp eq i32 %i.boc, 0
  br i1 %.not.i.i.i.i2083, label %_ZN4llvm11SmallVectorIiLj8EEC2IivEENS_8ArrayRefIT_EE.exit.i, label %bb.uk

bb.uk:                                            ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i.i
  %.idx.i452.i2810 = phi i64 [ %.idx.i452.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i.i ], [ %.idx.i452.i2811, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ]
  %i.cco = phi ptr [ %i.cci, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i.i ], [ %i.ccm, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ] ; 2 uses
  %i.ccp = phi ptr [ %i.cch, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i.i ], [ %i.ccn, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ]
  %i.ccq = phi ptr [ %.pre794.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i.i ], [ %i.ccn, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ]
  %.pre8.i5.i.i = phi i64 [ %i.ccl, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ]
  %i.ccr = getelementptr inbounds nuw [4 x i8], ptr %i.ccq, i64 %.pre8.i5.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ccr, ptr readonly align 4 %i.bob, i64 %.idx.i452.i2810, i1 false)
  %.pre.i.i453.i = load i32, ptr %i.cco, align 8, !tbaa !630
  %.pre795.i = load ptr, ptr %29, align 8, !tbaa !26
  br label %_ZN4llvm11SmallVectorIiLj8EEC2IivEENS_8ArrayRefIT_EE.exit.i

_ZN4llvm11SmallVectorIiLj8EEC2IivEENS_8ArrayRefIT_EE.exit.i: ; preds = %bb.uk, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i
  %i.ccs = phi ptr [ %i.ccm, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ], [ %i.cco, %bb.uk ] ; 2 uses
  %i.cct = phi ptr [ %i.ccn, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ], [ %i.ccp, %bb.uk ] ; 2 uses
  %i.ccu = phi ptr [ %i.ccn, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ], [ %.pre795.i, %bb.uk ]
  %i.ccv = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ], [ %.pre.i.i453.i, %bb.uk ]
  %i.ccw = add i32 %i.ccv, %i.boc                 ; 2 uses
  store i32 %i.ccw, ptr %i.ccs, align 8, !tbaa !630
  %.sroa.0116.0.copyload.i = load ptr, ptr %140, align 8, !tbaa !449
  %.sroa.2117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %140, i64 8 ; 5 uses
  %.sroa.2117.0.copyload.i = load i32, ptr %.sroa.2117.0..sroa_idx.i, align 8, !tbaa !189
  %.sroa.0114.0.copyload.i = load ptr, ptr %141, align 8, !tbaa !449
  %.sroa.2115.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %141, i64 8 ; 5 uses
  %.sroa.2115.0.copyload.i = load i32, ptr %.sroa.2115.0..sroa_idx.i, align 8, !tbaa !189
  %i.ccx = zext i32 %i.ccw to i64
  %i.ccy = call fastcc noundef zeroext i1 @_ZL19matchShuffleAsBlendN4llvm3MVTENS_7SDValueES1_NS_15MutableArrayRefIiEERKNS_5APIntERbS7_Rm(i16 %i.qv, ptr %.sroa.0116.0.copyload.i, i32 %.sroa.2117.0.copyload.i, ptr %.sroa.0114.0.copyload.i, i32 %.sroa.2115.0.copyload.i, ptr %i.ccu, i64 %i.ccx, ptr noundef nonnull align 8 dereferenceable(12) %121, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.ccy, label %bb.ul, label %.critedge372.i

bb.ul:                                            ; preds = %_ZN4llvm11SmallVectorIiLj8EEC2IivEENS_8ArrayRefIT_EE.exit.i
  %i.ccz = icmp eq i16 %i.qv, 63
  br i1 %i.ccz, label %_ZL27isRepeatedTargetShuffleMaskjN4llvm3MVTENS_8ArrayRefIiEERNS_15SmallVectorImplIiEE.exit.i, label %bb.vi

_ZL27isRepeatedTargetShuffleMaskjN4llvm3MVTENS_8ArrayRefIiEERNS_15SmallVectorImplIiEE.exit.i: ; preds = %bb.ul
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #38
  %i.cda = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 3 uses
  store ptr %i.cda, ptr %30, align 8, !tbaa !26
  %i.cdb = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i32 0, ptr %i.cdb, align 8, !tbaa !630
  %i.cdc = getelementptr inbounds nuw i8, ptr %30, i64 12
  store i32 8, ptr %i.cdc, align 4, !tbaa !631
  %i.cdd = load ptr, ptr %29, align 8, !tbaa !26
  %i.cde = load i32, ptr %i.ccs, align 8, !tbaa !630
  %i.cdf = zext i32 %i.cde to i64
  %i.cdg = call fastcc noundef zeroext i1 @_ZL27isRepeatedTargetShuffleMaskjjN4llvm8ArrayRefIiEERNS_15SmallVectorImplIiEE(i32 noundef 16, ptr readonly %i.cdd, i64 %i.cdf, ptr noundef nonnull align 8 dereferenceable(16) %30)
  br i1 %i.cdg, label %bb.um, label %.critedge370.i

bb.um:                                            ; preds = %_ZL27isRepeatedTargetShuffleMaskjN4llvm3MVTENS_8ArrayRefIiEERNS_15SmallVectorImplIiEE.exit.i
  store i32 0, ptr %i.u, align 4, !tbaa !189
  %i.cdh = load ptr, ptr %30, align 8, !tbaa !26  ; 8 uses
  %i.cdi = load i32, ptr %i.cdh, align 4, !tbaa !189
  %i.cdj = icmp sgt i32 %i.cdi, 7
  %spec.store.select.i = zext i1 %i.cdj to i32    ; 3 uses
  store i32 %spec.store.select.i, ptr %i.u, align 4
  %i.cdk = getelementptr inbounds nuw i8, ptr %i.cdh, i64 4
  %i.cdl = load i32, ptr %i.cdk, align 4, !tbaa !189
  %i.cdm = icmp sgt i32 %i.cdl, 7
  br i1 %i.cdm, label %bb.un, label %bb.uo

bb.un:                                            ; preds = %bb.um
  %i.cdn = or disjoint i32 %spec.store.select.i, 2 ; 2 uses
  store i32 %i.cdn, ptr %i.u, align 4, !tbaa !189
  br label %bb.uo

bb.uo:                                            ; preds = %bb.un, %bb.um
  %i.cdo = phi i32 [ %i.cdn, %bb.un ], [ %spec.store.select.i, %bb.um ] ; 2 uses
  %i.cdp = getelementptr inbounds nuw i8, ptr %i.cdh, i64 8
  %i.cdq = load i32, ptr %i.cdp, align 4, !tbaa !189
  %i.cdr = icmp sgt i32 %i.cdq, 7
  br i1 %i.cdr, label %bb.up, label %bb.uq

bb.up:                                            ; preds = %bb.uo
  %i.cds = or i32 %i.cdo, 4                       ; 2 uses
  store i32 %i.cds, ptr %i.u, align 4, !tbaa !189
  br label %bb.uq

bb.uq:                                            ; preds = %bb.up, %bb.uo
  %i.cdt = phi i32 [ %i.cds, %bb.up ], [ %i.cdo, %bb.uo ] ; 2 uses
  %i.cdu = getelementptr inbounds nuw i8, ptr %i.cdh, i64 12
  %i.cdv = load i32, ptr %i.cdu, align 4, !tbaa !189
  %i.cdw = icmp sgt i32 %i.cdv, 7
  br i1 %i.cdw, label %bb.ur, label %bb.us

bb.ur:                                            ; preds = %bb.uq
  %i.cdx = or i32 %i.cdt, 8                       ; 2 uses
  store i32 %i.cdx, ptr %i.u, align 4, !tbaa !189
  br label %bb.us

bb.us:                                            ; preds = %bb.ur, %bb.uq
  %i.cdy = phi i32 [ %i.cdx, %bb.ur ], [ %i.cdt, %bb.uq ] ; 2 uses
  %i.cdz = getelementptr inbounds nuw i8, ptr %i.cdh, i64 16
  %i.cea = load i32, ptr %i.cdz, align 4, !tbaa !189
  %i.ceb = icmp sgt i32 %i.cea, 7
  br i1 %i.ceb, label %bb.ut, label %bb.uu

bb.ut:                                            ; preds = %bb.us
  %i.cec = or i32 %i.cdy, 16                      ; 2 uses
  store i32 %i.cec, ptr %i.u, align 4, !tbaa !189
  br label %bb.uu

bb.uu:                                            ; preds = %bb.ut, %bb.us
end_hunk_4
