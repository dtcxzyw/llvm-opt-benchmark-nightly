Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/noise?download=true
inline.NumInlined: 150
inline.NumDeleted: 63
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN13PrngExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
._crit_edge.i.i.i:                                ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !20
  store i8 %i.k, ptr %i.j, align 1, !tbaa !20
  br label %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.d:                                             ; preds = %.noexc.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #29
  unreachable

_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.n = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !23
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13PrngException, i64 16), ptr %0, align 8, !tbaa !25
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN9PcgRandom5bytesEPvm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %.not12 = icmp eq i64 %2, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.in = phi i64 [ %2, %.lr.ph ], [ %i.b, %bb.d ]
  %.015 = phi i32 [ undef, %.lr.ph ], [ %i.r, %bb.d ]
  %.0814 = phi i32 [ 0, %.lr.ph ], [ %i.q, %bb.d ] ; 2 uses
  %.01013 = phi ptr [ %1, %.lr.ph ], [ %i.p, %bb.d ] ; 2 uses
  %i.b = add i64 %.in, -1                         ; 2 uses
  %i.c = icmp eq i32 %.0814, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr %0, align 8, !tbaa !13     ; 4 uses
  %i.e = mul i64 %i.d, 6364136223846793005
  %i.f = load i64, ptr %i.a, align 8, !tbaa !12
  %i.g = add i64 %i.e, %i.f
  store i64 %i.g, ptr %0, align 8, !tbaa !13
  %i.h = lshr i64 %i.d, 45
  %i.i = lshr i64 %i.d, 27
  %i.j = xor i64 %i.h, %i.i
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = lshr i64 %i.d, 59
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = tail call noundef i32 @llvm.fshr.i32(i32 %i.k, i32 %i.k, i32 %i.m)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.19 = phi i32 [ 4, %bb.c ], [ %.0814, %bb.b ]
  %.1 = phi i32 [ %i.n, %bb.c ], [ %.015, %bb.b ] ; 2 uses
  %i.o = trunc i32 %.1 to i8
  store i8 %i.o, ptr %.01013, align 1, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %.01013, i64 1
  %i.q = add nsw i32 %.19, -1
  %i.r = lshr i32 %.1, 8
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !69

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9PcgRandom14randNormalDistEiii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %.not10 = icmp eq i32 %3, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.a = sitofp nsz i32 %i.h to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.08.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.a, %._crit_edge.loopexit ]
  %i.b = sitofp nsz i32 %3 to float
  %i.c = fdiv nsz float %.08.lcssa, %i.b          ; 2 uses
  %i.d = fcmp nsz olt float %i.c, 0.000000e+00
  %.v.i = select i1 %i.d, float -5.000000e-01, float 5.000000e-01
  %i.e = fadd nsz float %i.c, %.v.i
  %i.f = fptosi float %i.e to i32
  ret i32 %i.f

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi i32 [ %i.i, %.lr.ph ], [ 0, %bb.a ]
  %.0811 = phi i32 [ %i.h, %.lr.ph ], [ 0, %bb.a ]
  %i.g = tail call noundef i32 @_ZN9PcgRandom5rangeEii(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2)
  %i.h = add nsw i32 %i.g, %.0811                 ; 2 uses
  %i.i = add nuw nsw i32 %.012, 1                 ; 2 uses
  %.not = icmp eq i32 %i.i, %3
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !70
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZNK9PcgRandom8getStateEPm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !13
  store i64 %i.a, ptr %1, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.c, ptr %i.d, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN9PcgRandom8setStateEPKm(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !22
  store i64 %i.a, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.d, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @_Z7noise2diii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = mul nsw i32 %0, 1619
  %i.b = mul nsw i32 %1, 31337
  %i.c = add nsw i32 %i.b, %i.a
  %i.d = mul i32 %2, 1013
  %i.e = add i32 %i.c, %i.d
  %i.f = and i32 %i.e, 2147483647                 ; 2 uses
  %i.g = lshr i32 %i.f, 13
  %i.h = xor i32 %i.g, %i.f                       ; 3 uses
  %i.i = mul i32 %i.h, 60493
  %i.j = mul i32 %i.i, %i.h
  %i.k = add i32 %i.j, 19990303
  %i.l = mul i32 %i.k, %i.h
  %i.m = add i32 %i.l, 1376312589
  %i.n = and i32 %i.m, 2147483647
  %i.o = uitofp nneg i32 %i.n to float
  %i.p = fmul nnan nsz float %i.o, f0x30800000
  %i.q = fsub nsz float 1.000000e+00, %i.p
  ret float %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @_Z7noise3diiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = mul nsw i32 %0, 1619
  %i.b = mul nsw i32 %1, 31337
  %i.c = add nsw i32 %i.b, %i.a
  %i.d = mul nsw i32 %2, 52591
  %i.e = add nsw i32 %i.c, %i.d
  %i.f = mul i32 %3, 1013
  %i.g = add i32 %i.e, %i.f
  %i.h = and i32 %i.g, 2147483647                 ; 2 uses
  %i.i = lshr i32 %i.h, 13
  %i.j = xor i32 %i.i, %i.h                       ; 3 uses
  %i.k = mul i32 %i.j, 60493
  %i.l = mul i32 %i.k, %i.j
  %i.m = add i32 %i.l, 19990303
  %i.n = mul i32 %i.m, %i.j
  %i.o = add i32 %i.n, 1376312589
  %i.p = and i32 %i.o, 2147483647
  %i.q = uitofp nneg i32 %i.p to float
  %i.r = fmul nnan nsz float %i.q, f0x30800000
  %i.s = fsub nsz float 1.000000e+00, %i.r
  ret float %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @_Z13noise2d_valueffib(float noundef %0, float noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #7 {
bb.a:
  %i.a = insertelement <2 x float> poison, float %1, i64 0
  %i.b = insertelement <2 x float> %i.a, float %0, i64 1 ; 3 uses
  %i.c = fcmp nsz olt <2 x float> %i.b, zeroinitializer
  %i.d = fptosi <2 x float> %i.b to <2 x i32>
  %i.e = sext <2 x i1> %i.c to <2 x i32>
  %i.f = add nsw <2 x i32> %i.e, %i.d             ; 3 uses
  %i.g = sitofp <2 x i32> %i.f to <2 x float>
  %i.h = fsub nsz <2 x float> %i.b, %i.g          ; 6 uses
  br i1 %3, label %bb.b, label %_Z21biLinearInterpolationffffffb.exit

bb.b:                                             ; preds = %bb.a
  %i.i = fmul nsz <2 x float> %i.h, %i.h
  %i.j = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> splat (float 6.000000e+00), <2 x float> splat (float -1.500000e+01))
  %i.k = fmul nsz <2 x float> %i.h, %i.i
  %i.l = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %i.j, <2 x float> splat (float 1.000000e+01))
  %i.m = fmul nsz <2 x float> %i.k, %i.l
  br label %_Z21biLinearInterpolationffffffb.exit

_Z21biLinearInterpolationffffffb.exit:            ; preds = %bb.a, %bb.b
  %i.n = phi <2 x float> [ %i.m, %bb.b ], [ %i.h, %bb.a ] ; 2 uses
  %i.o = extractelement <2 x i32> %i.f, i64 0
  %i.p = mul i32 %i.o, 31337                      ; 3 uses
  %i.q = add i32 %i.p, 31337                      ; 2 uses
  %i.r = extractelement <2 x i32> %i.f, i64 1
  %i.s = mul i32 %i.r, 1619                       ; 2 uses
  %i.t = add i32 %i.s, 1619
  %i.u = mul i32 %2, 1013                         ; 2 uses
  %i.v = add i32 %i.t, %i.u                       ; 2 uses
  %i.w = add i32 %i.v, %i.q
  %i.x = add i32 %i.s, %i.u                       ; 2 uses
  %i.y = add i32 %i.x, %i.q
  %i.z = add i32 %i.v, %i.p
  %i.aa = add i32 %i.x, %i.p
  %i.ab = and i32 %i.w, 2147483647                ; 2 uses
  %i.ac = lshr i32 %i.ab, 13
  %i.ad = xor i32 %i.ac, %i.ab                    ; 3 uses
  %i.ae = mul i32 %i.ad, 60493
  %i.af = mul i32 %i.ae, %i.ad
  %i.ag = add i32 %i.af, 19990303
  %i.ah = mul i32 %i.ag, %i.ad
  %i.ai = add i32 %i.ah, 1376312589
  %i.aj = and i32 %i.ai, 2147483647
  %i.ak = uitofp nneg i32 %i.aj to float
  %i.al = and i32 %i.y, 2147483647                ; 2 uses
  %i.am = lshr i32 %i.al, 13
  %i.an = xor i32 %i.am, %i.al                    ; 3 uses
  %i.ao = mul i32 %i.an, 60493
  %i.ap = mul i32 %i.ao, %i.an
  %i.aq = add i32 %i.ap, 19990303
  %i.ar = mul i32 %i.aq, %i.an
  %i.as = add i32 %i.ar, 1376312589
  %i.at = and i32 %i.as, 2147483647
  %i.au = uitofp nneg i32 %i.at to float
  %i.av = and i32 %i.z, 2147483647                ; 2 uses
  %i.aw = lshr i32 %i.av, 13
  %i.ax = xor i32 %i.aw, %i.av                    ; 3 uses
  %i.ay = mul i32 %i.ax, 60493
  %i.az = mul i32 %i.ay, %i.ax
  %i.ba = add i32 %i.az, 19990303
  %i.bb = mul i32 %i.ba, %i.ax
  %i.bc = add i32 %i.bb, 1376312589
  %i.bd = and i32 %i.bc, 2147483647
  %i.be = uitofp nneg i32 %i.bd to float
  %i.bf = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.bg = insertelement <2 x float> %i.bf, float %i.be, i64 1
  %i.bh = fmul nnan nsz <2 x float> %i.bg, splat (float f0x30800000)
  %i.bi = fsub nsz <2 x float> splat (float 1.000000e+00), %i.bh
  %i.bj = and i32 %i.aa, 2147483647               ; 2 uses
  %i.bk = lshr i32 %i.bj, 13
  %i.bl = xor i32 %i.bk, %i.bj                    ; 3 uses
  %i.bm = mul i32 %i.bl, 60493
  %i.bn = mul i32 %i.bm, %i.bl
  %i.bo = add i32 %i.bn, 19990303
  %i.bp = mul i32 %i.bo, %i.bl
  %i.bq = add i32 %i.bp, 1376312589
  %i.br = and i32 %i.bq, 2147483647
  %i.bs = uitofp nneg i32 %i.br to float
  %i.bt = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bu = insertelement <2 x float> %i.bt, float %i.bs, i64 1
  %i.bv = fmul nnan nsz <2 x float> %i.bu, splat (float f0x30800000)
  %i.bw = fsub nsz <2 x float> splat (float 1.000000e+00), %i.bv ; 2 uses
  %i.bx = fsub nsz <2 x float> %i.bi, %i.bw
  %i.by = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bz = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.by, <2 x float> %i.bw) ; 2 uses
  %i.ca = extractelement <2 x float> %i.bz, i64 0
  %i.cb = extractelement <2 x float> %i.bz, i64 1 ; 2 uses
  %i.cc = fsub nsz float %i.ca, %i.cb
  %i.cd = extractelement <2 x float> %i.n, i64 0
  %i.ce = tail call nsz noundef float @llvm.fmuladd.f32(float %i.cc, float %i.cd, float %i.cb)
  ret float %i.ce
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @_Z13noise3d_valuefffib(float noundef %0, float noundef %1, float noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #7 {
bb.a:
  %i.a = insertelement <2 x float> poison, float %1, i64 0
  %i.b = insertelement <2 x float> %i.a, float %0, i64 1 ; 3 uses
  %i.c = fcmp nsz olt <2 x float> %i.b, zeroinitializer
  %i.d = fptosi <2 x float> %i.b to <2 x i32>
  %i.e = fcmp nsz olt float %2, 0.000000e+00
  %i.f = fptosi float %2 to i32
  %i.g = sext i1 %i.e to i32
  %i.h = add nsw i32 %i.g, %i.f                   ; 2 uses
  %i.i = sext <2 x i1> %i.c to <2 x i32>
  %i.j = add nsw <2 x i32> %i.i, %i.d             ; 3 uses
  %i.k = sitofp <2 x i32> %i.j to <2 x float>
  %i.l = fsub nsz <2 x float> %i.b, %i.k          ; 6 uses
  %i.m = sitofp nsz i32 %i.h to float
  %i.n = fsub nsz float %2, %i.m                  ; 6 uses
  br i1 %4, label %bb.b, label %_Z22triLinearInterpolationfffffffffffb.exit

bb.b:                                             ; preds = %bb.a
  %i.o = fmul nsz <2 x float> %i.l, %i.l
  %i.p = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.l, <2 x float> splat (float 6.000000e+00), <2 x float> splat (float -1.500000e+01))
  %i.q = fmul nsz <2 x float> %i.l, %i.o
  %i.r = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.l, <2 x float> %i.p, <2 x float> splat (float 1.000000e+01))
  %i.s = fmul nsz <2 x float> %i.q, %i.r
  %i.t = fmul nsz float %i.n, %i.n
  %i.u = fmul nsz float %i.n, %i.t
  %i.v = tail call nsz float @llvm.fmuladd.f32(float %i.n, float 6.000000e+00, float -1.500000e+01)
  %i.w = tail call nsz float @llvm.fmuladd.f32(float %i.n, float %i.v, float 1.000000e+01)
  %i.x = fmul nsz float %i.u, %i.w
  br label %_Z22triLinearInterpolationfffffffffffb.exit

_Z22triLinearInterpolationfffffffffffb.exit:      ; preds = %bb.a, %bb.b
  %.019.i = phi nsz float [ %i.x, %bb.b ], [ %i.n, %bb.a ]
  %i.y = phi <2 x float> [ %i.s, %bb.b ], [ %i.l, %bb.a ] ; 2 uses
  %i.z = extractelement <2 x i32> %i.j, i64 0
  %i.aa = mul i32 %i.z, 31337                     ; 3 uses
  %i.ab = add i32 %i.aa, 31337                    ; 2 uses
  %i.ac = extractelement <2 x i32> %i.j, i64 1
  %i.ad = mul i32 %i.ac, 1619                     ; 3 uses
  %i.ae = add i32 %i.ad, 1619                     ; 2 uses
  %i.af = add nsw i32 %i.ab, %i.ae                ; 2 uses
  %i.ag = mul i32 %i.h, 52591                     ; 2 uses
  %i.ah = add i32 %i.ag, 52591
  %i.ai = mul i32 %3, 1013                        ; 2 uses
  %i.aj = add i32 %i.ah, %i.ai                    ; 4 uses
  %i.ak = add i32 %i.aj, %i.af
  %i.al = add nsw i32 %i.ab, %i.ad                ; 2 uses
  %i.am = add i32 %i.aj, %i.al
  %i.an = add nsw i32 %i.aa, %i.ae                ; 2 uses
  %i.ao = add i32 %i.aj, %i.an
  %i.ap = add nsw i32 %i.aa, %i.ad                ; 2 uses
  %i.aq = add i32 %i.aj, %i.ap
  %i.ar = add i32 %i.ag, %i.ai                    ; 4 uses
  %i.as = add i32 %i.ar, %i.af
  %i.at = add i32 %i.ar, %i.al
  %i.au = add i32 %i.ar, %i.an
  %i.av = add i32 %i.ar, %i.ap
  %i.aw = and i32 %i.as, 2147483647               ; 2 uses
  %i.ax = lshr i32 %i.aw, 13
  %i.ay = xor i32 %i.ax, %i.aw                    ; 3 uses
  %i.az = mul i32 %i.ay, 60493
  %i.ba = mul i32 %i.az, %i.ay
  %i.bb = add i32 %i.ba, 19990303
  %i.bc = mul i32 %i.bb, %i.ay
  %i.bd = add i32 %i.bc, 1376312589
  %i.be = and i32 %i.bd, 2147483647
  %i.bf = uitofp nneg i32 %i.be to float
  %i.bg = and i32 %i.at, 2147483647               ; 2 uses
  %i.bh = lshr i32 %i.bg, 13
  %i.bi = xor i32 %i.bh, %i.bg                    ; 3 uses
  %i.bj = mul i32 %i.bi, 60493
  %i.bk = mul i32 %i.bj, %i.bi
  %i.bl = add i32 %i.bk, 19990303
  %i.bm = mul i32 %i.bl, %i.bi
  %i.bn = add i32 %i.bm, 1376312589
  %i.bo = and i32 %i.bn, 2147483647
  %i.bp = uitofp nneg i32 %i.bo to float
  %i.bq = and i32 %i.au, 2147483647               ; 2 uses
  %i.br = lshr i32 %i.bq, 13
  %i.bs = xor i32 %i.br, %i.bq                    ; 3 uses
  %i.bt = mul i32 %i.bs, 60493
  %i.bu = mul i32 %i.bt, %i.bs
  %i.bv = add i32 %i.bu, 19990303
  %i.bw = mul i32 %i.bv, %i.bs
  %i.bx = add i32 %i.bw, 1376312589
  %i.by = and i32 %i.bx, 2147483647
  %i.bz = uitofp nneg i32 %i.by to float
  %i.ca = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.cb = insertelement <2 x float> %i.ca, float %i.bz, i64 1
  %i.cc = fmul nnan nsz <2 x float> %i.cb, splat (float f0x30800000)
  %i.cd = fsub nsz <2 x float> splat (float 1.000000e+00), %i.cc
  %i.ce = and i32 %i.av, 2147483647               ; 2 uses
  %i.cf = lshr i32 %i.ce, 13
  %i.cg = xor i32 %i.cf, %i.ce                    ; 3 uses
  %i.ch = mul i32 %i.cg, 60493
  %i.ci = mul i32 %i.ch, %i.cg
  %i.cj = add i32 %i.ci, 19990303
  %i.ck = mul i32 %i.cj, %i.cg
  %i.cl = add i32 %i.ck, 1376312589
  %i.cm = and i32 %i.cl, 2147483647
  %i.cn = uitofp nneg i32 %i.cm to float
  %i.co = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.cp = insertelement <2 x float> %i.co, float %i.cn, i64 1
  %i.cq = fmul nnan nsz <2 x float> %i.cp, splat (float f0x30800000)
  %i.cr = fsub nsz <2 x float> splat (float 1.000000e+00), %i.cq ; 2 uses
  %i.cs = fsub nsz <2 x float> %i.cd, %i.cr
  %i.ct = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.ct, <2 x float> %i.cr) ; 2 uses
  %i.cv = extractelement <2 x float> %i.cu, i64 0
  %i.cw = extractelement <2 x float> %i.cu, i64 1 ; 2 uses
  %i.cx = fsub nsz float %i.cv, %i.cw
  %i.cy = extractelement <2 x float> %i.y, i64 0  ; 2 uses
  %i.cz = tail call nsz noundef float @llvm.fmuladd.f32(float %i.cx, float %i.cy, float %i.cw) ; 2 uses
  %i.da = and i32 %i.ak, 2147483647               ; 2 uses
  %i.db = lshr i32 %i.da, 13
  %i.dc = xor i32 %i.db, %i.da                    ; 3 uses
  %i.dd = mul i32 %i.dc, 60493
  %i.de = mul i32 %i.dd, %i.dc
  %i.df = add i32 %i.de, 19990303
  %i.dg = mul i32 %i.df, %i.dc
  %i.dh = add i32 %i.dg, 1376312589
  %i.di = and i32 %i.dh, 2147483647
  %i.dj = uitofp nneg i32 %i.di to float
  %i.dk = and i32 %i.am, 2147483647               ; 2 uses
  %i.dl = lshr i32 %i.dk, 13
  %i.dm = xor i32 %i.dl, %i.dk                    ; 3 uses
  %i.dn = mul i32 %i.dm, 60493
  %i.do = mul i32 %i.dn, %i.dm
  %i.dp = add i32 %i.do, 19990303
  %i.dq = mul i32 %i.dp, %i.dm
  %i.dr = add i32 %i.dq, 1376312589
  %i.ds = and i32 %i.dr, 2147483647
  %i.dt = uitofp nneg i32 %i.ds to float
  %i.du = and i32 %i.ao, 2147483647               ; 2 uses
  %i.dv = lshr i32 %i.du, 13
  %i.dw = xor i32 %i.dv, %i.du                    ; 3 uses
  %i.dx = mul i32 %i.dw, 60493
  %i.dy = mul i32 %i.dx, %i.dw
  %i.dz = add i32 %i.dy, 19990303
  %i.ea = mul i32 %i.dz, %i.dw
  %i.eb = add i32 %i.ea, 1376312589
  %i.ec = and i32 %i.eb, 2147483647
  %i.ed = uitofp nneg i32 %i.ec to float
  %i.ee = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.ef = insertelement <2 x float> %i.ee, float %i.ed, i64 1
  %i.eg = fmul nnan nsz <2 x float> %i.ef, splat (float f0x30800000)
  %i.eh = fsub nsz <2 x float> splat (float 1.000000e+00), %i.eg
  %i.ei = and i32 %i.aq, 2147483647               ; 2 uses
  %i.ej = lshr i32 %i.ei, 13
  %i.ek = xor i32 %i.ej, %i.ei                    ; 3 uses
  %i.el = mul i32 %i.ek, 60493
  %i.em = mul i32 %i.el, %i.ek
  %i.en = add i32 %i.em, 19990303
  %i.eo = mul i32 %i.en, %i.ek
  %i.ep = add i32 %i.eo, 1376312589
  %i.eq = and i32 %i.ep, 2147483647
  %i.er = uitofp nneg i32 %i.eq to float
  %i.es = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.et = insertelement <2 x float> %i.es, float %i.er, i64 1
  %i.eu = fmul nnan nsz <2 x float> %i.et, splat (float f0x30800000)
  %i.ev = fsub nsz <2 x float> splat (float 1.000000e+00), %i.eu ; 2 uses
  %i.ew = fsub nsz <2 x float> %i.eh, %i.ev
  %i.ex = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ew, <2 x float> %i.ct, <2 x float> %i.ev) ; 2 uses
  %i.ey = extractelement <2 x float> %i.ex, i64 0
  %i.ez = extractelement <2 x float> %i.ex, i64 1 ; 2 uses
  %i.fa = fsub nsz float %i.ey, %i.ez
  %i.fb = tail call nsz noundef float @llvm.fmuladd.f32(float %i.fa, float %i.cy, float %i.ez)
  %i.fc = fsub nsz float %i.fb, %i.cz
  %i.fd = tail call nsz noundef float @llvm.fmuladd.f32(float %i.fc, float %.019.i, float %i.cz)
  ret float %i.fd
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @_Z15noise2d_fractalffiifb(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4, i1 noundef zeroext %5) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = insertelement <2 x float> poison, float %0, i64 0
  %i.c = insertelement <2 x float> %i.b, float %1, i64 1
  %i.d = insertelement <2 x float> <float poison, float 2.000000e+00>, float %4, i64 0
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.017.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.m, %.lr.ph ]
  ret float %.017.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.021 = phi i32 [ %i.o, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.01718 = phi float [ %i.m, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader ]
  %i.e = phi <2 x float> [ %i.n, %.lr.ph ], [ splat (float 1.000000e+00), %.lr.ph.preheader ] ; 3 uses
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.g = fmul nsz <2 x float> %i.c, %i.f          ; 2 uses
  %i.h = add nsw i32 %.021, %2
  %i.i = extractelement <2 x float> %i.g, i64 0
  %i.j = extractelement <2 x float> %i.g, i64 1
  %i.k = tail call nsz noundef float @_Z13noise2d_valueffib(float noundef %i.i, float noundef %i.j, i32 noundef %i.h, i1 noundef zeroext %5)
  %i.l = extractelement <2 x float> %i.e, i64 0
  %i.m = tail call nsz float @llvm.fmuladd.f32(float %i.l, float %i.k, float %.01718) ; 2 uses
  %i.n = fmul nsz <2 x float> %i.d, %i.e
  %i.o = add nuw nsw i32 %.021, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.o, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !71
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @_Z7contourf(float noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call nsz noundef float @llvm.fabs.f32(float %0) ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5Noise12allocBuffersEv:bb.a
  %i.h = load i32, ptr %i.g, align 4, !tbaa !43   ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.g, align 4, !tbaa !43
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = phi i32 [ 1, %bb.f ], [ %i.h, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.k, align 8, !tbaa !44
  %i.l = icmp ugt i32 %i.j, 1
  tail call void @_ZN5Noise14resizeNoiseBufEb(ptr noundef nonnull align 8 dereferenceable(88) %0, i1 noundef zeroext %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !45   ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #28
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !47   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #28
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.v = load i32, ptr %i.a, align 4, !tbaa !41
  %i.w = load i32, ptr %i.d, align 8, !tbaa !42
  %i.x = mul i32 %i.w, %i.v
  %i.y = load i32, ptr %i.g, align 4, !tbaa !43
  %i.z = mul i32 %i.x, %i.y
  %i.aa = zext i32 %i.z to i64
  store ptr null, ptr %i.p, align 8, !tbaa !46
  %i.ab = shl nuw nsw i64 %i.aa, 2                ; 2 uses
  %i.ac = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #30
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  store ptr %i.ac, ptr %i.m, align 8, !tbaa !45
  %i.ad = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #30
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %i.ad, ptr %i.s, align 8, !tbaa !47
  ret void

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.ae = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc             ; 3 uses
  %i.af = extractvalue { ptr, i32 } %i.ae, 1
  %i.ag = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #26
  %i.ah = icmp eq i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.ai = extractvalue { ptr, i32 } %i.ae, 0
  %i.aj = tail call ptr @__cxa_begin_catch(ptr %i.ai) #26 ; 0 uses
  %i.ak = tail call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  invoke void @_ZN27InvalidNoiseParamsExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ak)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTI27InvalidNoiseParamsException, ptr nonnull @_ZN13BaseExceptionD2Ev) #27
          to label %bb.x unwind label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ak) #26
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.am, %bb.t ], [ %i.al, %bb.s ]
  invoke void @__cxa_end_catch()
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.p
  %.merged = phi { ptr, i32 } [ %i.ae, %bb.p ], [ %.pn, %bb.u ]
  resume { ptr, i32 } %.merged

bb.w:                                             ; preds = %bb.u
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #29
  unreachable

bb.x:                                             ; preds = %bb.r
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5NoiseD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(88) dereferenceable(88) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: uwtable
define dso_local void @_ZN5Noise14resizeNoiseBufEb(ptr noundef nonnull align 8 dereferenceable(88) %0, i1 noundef zeroext %1) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load float, ptr %i.c, align 8, !tbaa !79 ; 3 uses
  %i.e = fcmp nsz ogt float %i.d, 1.000000e+00
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = fpext nsz float %i.d to double
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i16, ptr %i.g, align 8, !tbaa !48
  %i.i = zext i16 %i.h to i32
  %i.j = add nsw i32 %i.i, -1
  %i.k = sitofp nsz i32 %i.j to double
  %i.l = tail call nsz double @llvm.pow.f64(double %i.f, double %i.k)
  %i.m = fptrunc nsz double %i.l to float
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.n = phi float [ %i.m, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load <2 x float>, ptr %i.p, align 8, !tbaa !27 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.s = load i32, ptr %i.r, align 4, !tbaa !43
  %i.t = uitofp nsz i32 %i.s to float
  %i.u = fmul nsz float %i.n, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load float, ptr %i.v, align 8, !tbaa !80 ; 2 uses
  %i.x = fdiv nsz float %i.u, %i.w                ; 2 uses
  %i.y = load <2 x i32>, ptr %i.o, align 4, !tbaa !36
  %i.z = uitofp <2 x i32> %i.y to <2 x float>
  %i.aa = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ac = fmul nsz <2 x float> %i.ab, %i.z
  %i.ad = fdiv nsz <2 x float> %i.ac, %i.q        ; 3 uses
  %i.ae = fcmp nsz ogt <2 x float> %i.ad, splat (float 1.000000e+09) ; 2 uses
  %i.af = extractelement <2 x i1> %i.ae, i64 0
  %i.ag = extractelement <2 x i1> %i.ae, i64 1
  %or.cond = select i1 %i.af, i1 true, i1 %i.ag
  %i.ah = fcmp nsz ogt float %i.x, 1.000000e+09
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.ah
  br i1 %or.cond3, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ai = tail call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  invoke void @_ZN27InvalidNoiseParamsExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ai)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTI27InvalidNoiseParamsException, ptr nonnull @_ZN13BaseExceptionD2Ev) #27
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ai) #26
  br label %bb.ab

bb.g:                                             ; preds = %bb.c
  %i.ak = fdiv nsz <2 x float> %i.q, %i.ab
  %i.al = fcmp nsz olt <2 x float> %i.ak, splat (float 1.000000e+00) ; 2 uses
  %i.am = extractelement <2 x i1> %i.al, i64 0
  %i.an = extractelement <2 x i1> %i.al, i64 1
  %or.cond41 = select i1 %i.am, i1 true, i1 %i.an
  %i.ao = fdiv nsz float %i.w, %i.n
  %i.ap = fcmp nsz olt float %i.ao, 1.000000e+00
  %or.cond43 = select i1 %or.cond41, i1 true, i1 %i.ap
  br i1 %or.cond43, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i, label %_ZTW11errorstream.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit

_ZTW11errorstream.exit:                           ; preds = %bb.h, %bb.i
  %i.aq = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !89, !nonnull !90, !align !91 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !25
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call noundef zeroext i1 %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.ar), !inline_history !77
  %.v.i = select i1 %i.au, i64 976, i64 984
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.v.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.6, ptr %i.b, align 8, !tbaa !53
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRtEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 2 dereferenceable(2) %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.7, ptr %i.a, align 8, !tbaa !53
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !54 ; 5 uses
  %.not.i44 = icmp eq ptr %i.ba, null
  br i1 %.not.i44, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.j

bb.j:                                             ; preds = %_ZTW11errorstream.exit
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !25
  %i.bc = getelementptr i8, ptr %i.bb, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds i8, ptr %i.ba, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !61
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
  %.pre.i = load ptr, ptr %i.az, align 8, !tbaa !54
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bi = phi ptr [ %.pre.i, %bb.k ], [ %i.ba, %bb.j ]
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.bi), !inline_history !78 ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZTW11errorstream.exit, %bb.l
  %i.bk = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  call void @_ZN27InvalidNoiseParamsExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %2)
  invoke void @__cxa_throw(ptr nonnull %i.bk, ptr nonnull @_ZTI27InvalidNoiseParamsException, ptr nonnull @_ZN13BaseExceptionD2Ev) #27
          to label %bb.ad unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %2, align 8, !tbaa !19    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !20
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.ab

bb.o:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @__cxa_free_exception(ptr %i.bk) #26
  br label %bb.ab

bb.p:                                             ; preds = %bb.g
  %i.bs = extractelement <2 x float> %i.ad, i64 0
  %i.bt = tail call nsz noundef float @llvm.ceil.f32(float %i.bs)
  %i.bu = fptoui float %i.bt to i64
  %i.bv = add i64 %i.bu, 3
  %i.bw = extractelement <2 x float> %i.ad, i64 1
  %i.bx = tail call nsz noundef float @llvm.ceil.f32(float %i.bw)
  %i.by = fptoui float %i.bx to i64
  %i.bz = add i64 %i.by, 3
  br i1 %1, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ca = tail call nsz noundef float @llvm.ceil.f32(float %i.x)
  %i.cb = fptoui float %i.ca to i64
  %i.cc = add i64 %i.cb, 3
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.cd = phi i64 [ %i.cc, %bb.q ], [ 1, %bb.p ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !44 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZdaPv(ptr noundef nonnull %i.cf) #28
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ch = mul i64 %i.bz, %i.bv
  %i.ci = mul i64 %i.ch, %i.cd                    ; 2 uses
  %i.cj = icmp ugt i64 %i.ci, 4611686018427387903
  %i.ck = shl i64 %i.ci, 2
  %i.cl = select i1 %i.cj, i64 -1, i64 %i.ck
  %i.cm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cl) #30
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.cm, ptr %i.ce, align 8, !tbaa !44
  ret void

bb.v:                                             ; preds = %bb.t
  %i.cn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc             ; 3 uses
  %i.co = extractvalue { ptr, i32 } %i.cn, 1
  %i.cp = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #26
  %i.cq = icmp eq i32 %i.co, %i.cp
  br i1 %i.cq, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.cr = extractvalue { ptr, i32 } %i.cn, 0
  %i.cs = tail call ptr @__cxa_begin_catch(ptr %i.cr) #26 ; 0 uses
  %i.ct = tail call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  invoke void @_ZN27InvalidNoiseParamsExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ct)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @__cxa_throw(ptr nonnull %i.ct, ptr nonnull @_ZTI27InvalidNoiseParamsException, ptr nonnull @_ZN13BaseExceptionD2Ev) #27
          to label %bb.ad unwind label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.cu = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ct) #26
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
end_hunk_1
begin_hunk_2_@_ZN27InvalidNoiseParamsExceptionC2Ev:.noexc.i
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.y = load i64, ptr %i.c, align 8, !tbaa !20
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV27InvalidNoiseParamsException, i64 16), ptr %0, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13BaseExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !20
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  ret void
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5Noise7setSizeEjjj(ptr noundef nonnull align 8 dereferenceable(88) initializes((44, 64)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %1, ptr %i.a, align 4, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %2, ptr %i.b, align 8, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %3, ptr %i.c, align 4, !tbaa !43
  tail call void @_ZN5Noise12allocBuffersEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5Noise15setSpreadFactorEN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(88) initializes((8, 20)) %0, <2 x float> %1, float %2) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %1, ptr %i.a, align 8, !tbaa !27
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %2, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.c = load i32, ptr %i.b, align 4, !tbaa !43
  %i.d = icmp ugt i32 %i.c, 1
  tail call void @_ZN5Noise14resizeNoiseBufEb(ptr noundef nonnull align 8 dereferenceable(88) %0, i1 noundef zeroext %i.d)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5Noise10setOctavesEi(ptr noundef nonnull align 8 dereferenceable(88) initializes((24, 26)) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = trunc i32 %1 to i16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %i.a, ptr %i.b, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !43
  %i.e = icmp ugt i32 %i.d, 1
  tail call void @_ZN5Noise14resizeNoiseBufEb(ptr noundef nonnull align 8 dereferenceable(88) %0, i1 noundef zeroext %i.e)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRtEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54     ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !61
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %0, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ]
  %i.j = load i16, ptr %1, align 2, !tbaa !37
  %i.k = zext i16 %i.j to i64
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef %i.k) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN27InvalidNoiseParamsExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !21
  %i.d = load ptr, ptr %1, align 8, !tbaa !19     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.f, ptr %i.a, align 8, !tbaa !22
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.d   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !19
  %i.i = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.i, ptr %i.c, align 8, !tbaa !20
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !20
  store i8 %i.k, ptr %i.j, align 1, !tbaa !20
  br label %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.d:                                             ; preds = %.noexc.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #29
  unreachable

_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.n = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !23
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV27InvalidNoiseParamsException, i64 16), ptr %0, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5Noise10valueMap2DEffffi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, i32 noundef %5) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !62
  %i.c = and i32 %i.b, 3
  %.not87 = icmp eq i32 %i.c, 0
  %i.d = insertelement <2 x float> poison, float %1, i64 0
  %i.e = insertelement <2 x float> %i.d, float %2, i64 1 ; 2 uses
  %i.f = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.h = fptosi <2 x float> %i.f to <2 x i32>     ; 4 uses
  %i.i = sitofp <2 x i32> %i.h to <2 x float>
  %i.j = fsub nsz <2 x float> %i.e, %i.i          ; 4 uses
  %i.k = load <2 x i32>, ptr %i.g, align 4, !tbaa !36 ; 3 uses
  %i.l = uitofp <2 x i32> %i.k to <2 x float>
  %i.m = insertelement <2 x float> poison, float %3, i64 0
  %i.n = insertelement <2 x float> %i.m, float %4, i64 1
  %i.o = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.l, <2 x float> %i.n, <2 x float> %i.j) ; 2 uses
  %i.p = extractelement <2 x float> %i.o, i64 0
  %i.q = fptoui float %i.p to i32                 ; 2 uses
  %i.r = add i32 %i.q, 2                          ; 9 uses
  %i.s = extractelement <2 x float> %i.o, i64 1
  %i.t = fptoui float %i.s to i32
  %i.u = add i32 %i.t, 2                          ; 2 uses
  %.not92 = icmp eq i32 %i.u, 0
  br i1 %.not92, label %.preheader, label %.preheader88.lr.ph

.preheader88.lr.ph:                               ; preds = %bb.a
  %.not8689 = icmp eq i32 %i.r, 0
  %i.v = mul i32 %5, 1013
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  br i1 %.not8689, label %.preheader, label %.preheader88.preheader

.preheader88.preheader:                           ; preds = %.preheader88.lr.ph
  %i.y = extractelement <2 x i32> %i.h, i64 1
  %min.iters.check = icmp ult i32 %i.r, 4
  %i.z = sub i32 -2, %i.q
  %n.vec = and i32 %i.r, -4                       ; 4 uses
  %broadcast.splat139 = shufflevector <2 x i32> %i.h, <2 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i32 %i.r, %n.vec
  %i.aa = extractelement <2 x i32> %i.h, i64 0
  br label %.preheader88

.preheader88:                                     ; preds = %.preheader88.preheader, %._crit_edge
  %.06494 = phi i32 [ %i.ef, %._crit_edge ], [ 0, %.preheader88.preheader ] ; 2 uses
  %.06893 = phi i32 [ %.lcssa137, %._crit_edge ], [ 0, %.preheader88.preheader ] ; 4 uses
  %i.ab = add i32 %.06494, %i.y
  %i.ac = mul nsw i32 %i.ab, 31337
  %i.ad = add i32 %i.ac, %i.v                     ; 2 uses
  %i.ae = icmp ult i32 %i.z, %.06893
  %or.cond = select i1 %min.iters.check, i1 true, i1 %i.ae
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader88
  %i.af = add i32 %.06893, %n.vec                 ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ag = add i32 %.06893, %index
  %i.ah = add <4 x i32> %vec.ind, %broadcast.splat139
  %i.ai = mul nsw <4 x i32> %i.ah, splat (i32 1619)
  %i.aj = add <4 x i32> %broadcast.splat, %i.ai
  %i.ak = and <4 x i32> %i.aj, splat (i32 2147483647) ; 2 uses
  %i.al = lshr <4 x i32> %i.ak, splat (i32 13)
  %i.am = xor <4 x i32> %i.al, %i.ak              ; 3 uses
  %i.an = mul <4 x i32> %i.am, splat (i32 60493)
  %i.ao = mul <4 x i32> %i.an, %i.am
  %i.ap = add <4 x i32> %i.ao, splat (i32 19990303)
  %i.aq = mul <4 x i32> %i.ap, %i.am
  %i.ar = add <4 x i32> %i.aq, splat (i32 1376312589)
  %i.as = and <4 x i32> %i.ar, splat (i32 2147483647)
  %i.at = uitofp nneg <4 x i32> %i.as to <4 x float>
  %i.au = fmul nnan nsz <4 x float> %i.at, splat (float f0x30800000)
  %i.av = fsub nsz <4 x float> splat (float 1.000000e+00), %i.au
  %i.aw = zext i32 %i.ag to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.aw
  store <4 x float> %i.av, ptr %i.ax, align 4, !tbaa !27
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.ay = icmp eq i32 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader88, %middle.block
  %.06691.ph = phi i32 [ 0, %.preheader88 ], [ %n.vec, %middle.block ]
  %.16990.ph = phi i32 [ %.06893, %.preheader88 ], [ %i.af, %middle.block ]
  br label %scalar.ph

.preheader:                                       ; preds = %._crit_edge, %.preheader88.lr.ph, %bb.a
  %i.az = extractelement <2 x i32> %i.k, i64 1    ; 3 uses
  %.not84107 = icmp eq i32 %i.az, 0
  br i1 %.not84107, label %._crit_edge114.split, label %.lr.ph113

.lr.ph113:                                        ; preds = %.preheader
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !44 ; 12 uses
  %i.bc = extractelement <2 x i32> %i.k, i64 0    ; 3 uses
  %.not8595 = icmp eq i32 %i.bc, 0
  br i1 %.not8595, label %._crit_edge114.split, label %.lr.ph113.split

.lr.ph113.split:                                  ; preds = %.lr.ph113
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !45 ; 2 uses
  %i.bf = extractelement <2 x float> %i.j, i64 1  ; 2 uses
  br i1 %.not87, label %.lr.ph.us.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph113.split
  %i.bg = extractelement <2 x float> %i.j, i64 0
  br label %.lr.ph

.lr.ph.us.preheader:                              ; preds = %.lr.ph113.split
  %i.bh = extractelement <2 x float> %i.j, i64 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge105.split.us.us
  %.0112.us = phi i32 [ %.1.us, %._crit_edge105.split.us.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %.165111.us = phi i32 [ %i.dl, %._crit_edge105.split.us.us ], [ 0, %.lr.ph.us.preheader ]
  %.2110.us = phi i32 [ %i.cn, %._crit_edge105.split.us.us ], [ 0, %.lr.ph.us.preheader ]
  %.070108.us = phi float [ %.171.us, %._crit_edge105.split.us.us ], [ %i.bf, %.lr.ph.us.preheader ] ; 2 uses
  %i.bi = mul i32 %.0112.us, %i.r                 ; 3 uses
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bj
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !27
  %i.bm = add i32 %i.bi, 1
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bn
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !27
  %i.bq = add i32 %.0112.us, 1                    ; 2 uses
  %i.br = mul i32 %i.bq, %i.r                     ; 3 uses
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !27
  %i.bv = add i32 %i.br, 1
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bw
  %i.by = load float, ptr %i.bx, align 4, !tbaa !27
  %i.bz = insertelement <2 x float> poison, float %i.by, i64 0
  %i.ca = insertelement <2 x float> %i.bz, float %i.bp, i64 1
  %i.cb = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.cc = insertelement <2 x float> %i.cb, float %i.bl, i64 1
  br label %_Z21biLinearInterpolationffffffb.exit.us.us

_Z21biLinearInterpolationffffffb.exit.us.us:      ; preds = %bb.c, %.lr.ph.us
  %.062103.us.us = phi i32 [ 0, %.lr.ph.us ], [ %.163.us.us, %bb.c ] ; 3 uses
  %.167102.us.us = phi i32 [ 0, %.lr.ph.us ], [ %i.dh, %bb.c ]
  %.3101.us.us = phi i32 [ %.2110.us, %.lr.ph.us ], [ %i.cn, %bb.c ] ; 2 uses
  %.072100.us.us = phi float [ %i.bh, %.lr.ph.us ], [ %.173.us.us, %bb.c ] ; 2 uses
  %i.cd = phi <2 x float> [ %i.ca, %.lr.ph.us ], [ %i.df, %bb.c ] ; 3 uses
  %i.ce = phi <2 x float> [ %i.cc, %.lr.ph.us ], [ %i.dg, %bb.c ] ; 3 uses
  %i.cf = fsub nsz <2 x float> %i.cd, %i.ce
  %i.cg = insertelement <2 x float> poison, float %.072100.us.us, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> %i.ch, <2 x float> %i.ce) ; 2 uses
  %i.cj = extractelement <2 x float> %i.ci, i64 0
  %i.ck = extractelement <2 x float> %i.ci, i64 1 ; 2 uses
  %i.cl = fsub nsz float %i.cj, %i.ck
  %i.cm = tail call nsz noundef float @llvm.fmuladd.f32(float %i.cl, float %.070108.us, float %i.ck)
  %i.cn = add i32 %.3101.us.us, 1                 ; 2 uses
  %i.co = zext i32 %.3101.us.us to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.co
  store float %i.cm, ptr %i.cp, align 4, !tbaa !27
  %i.cq = fadd nsz float %3, %.072100.us.us       ; 3 uses
  %i.cr = fcmp nsz ult float %i.cq, 1.000000e+00
  br i1 %i.cr, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_Z21biLinearInterpolationffffffb.exit.us.us
  %i.cs = fadd nsz float %i.cq, -1.000000e+00
  %i.ct = add i32 %.062103.us.us, 1
  %i.cu = add i32 %.062103.us.us, 2               ; 2 uses
  %i.cv = add i32 %i.cu, %i.bi
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.cw
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !27
  %i.cz = add i32 %i.cu, %i.br
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.da
  %i.dc = load float, ptr %i.db, align 4, !tbaa !27
  %i.dd = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.de = insertelement <2 x float> %i.dd, float %i.cy, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_Z21biLinearInterpolationffffffb.exit.us.us
  %.173.us.us = phi nsz float [ %i.cs, %bb.b ], [ %i.cq, %_Z21biLinearInterpolationffffffb.exit.us.us ]
  %.163.us.us = phi i32 [ %i.ct, %bb.b ], [ %.062103.us.us, %_Z21biLinearInterpolationffffffb.exit.us.us ]
  %i.df = phi <2 x float> [ %i.de, %bb.b ], [ %i.cd, %_Z21biLinearInterpolationffffffb.exit.us.us ]
  %i.dg = phi <2 x float> [ %i.cd, %bb.b ], [ %i.ce, %_Z21biLinearInterpolationffffffb.exit.us.us ]
  %i.dh = add nuw i32 %.167102.us.us, 1           ; 2 uses
  %.not85.us.us = icmp eq i32 %i.dh, %i.bc
  br i1 %.not85.us.us, label %._crit_edge105.split.us.us, label %_Z21biLinearInterpolationffffffb.exit.us.us, !llvm.loop !93

._crit_edge105.split.us.us:                       ; preds = %bb.c
  %i.di = fadd nsz float %4, %.070108.us          ; 3 uses
  %i.dj = fcmp nsz ult float %i.di, 1.000000e+00  ; 2 uses
  %i.dk = fadd nsz float %i.di, -1.000000e+00
  %.171.us = select nsz i1 %i.dj, float %i.di, float %i.dk
  %.1.us = select i1 %i.dj, i32 %.0112.us, i32 %i.bq
  %i.dl = add nuw i32 %.165111.us, 1              ; 2 uses
  %.not84.us = icmp eq i32 %i.dl, %i.az
  br i1 %.not84.us, label %._crit_edge114.split, label %.lr.ph.us, !llvm.loop !94

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.06691 = phi i32 [ %i.ee, %scalar.ph ], [ %.06691.ph, %scalar.ph.preheader ] ; 2 uses
  %.16990 = phi i32 [ %i.eb, %scalar.ph ], [ %.16990.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dm = add i32 %.06691, %i.aa
  %i.dn = mul nsw i32 %i.dm, 1619
  %i.do = add i32 %i.ad, %i.dn
  %i.dp = and i32 %i.do, 2147483647               ; 2 uses
  %i.dq = lshr i32 %i.dp, 13
  %i.dr = xor i32 %i.dq, %i.dp                    ; 3 uses
  %i.ds = mul i32 %i.dr, 60493
  %i.dt = mul i32 %i.ds, %i.dr
  %i.du = add i32 %i.dt, 19990303
  %i.dv = mul i32 %i.du, %i.dr
  %i.dw = add i32 %i.dv, 1376312589
  %i.dx = and i32 %i.dw, 2147483647
  %i.dy = uitofp nneg i32 %i.dx to float
  %i.dz = fmul nnan nsz float %i.dy, f0x30800000
  %i.ea = fsub nsz float 1.000000e+00, %i.dz
  %i.eb = add i32 %.16990, 1                      ; 2 uses
  %i.ec = zext i32 %.16990 to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ec
  store float %i.ea, ptr %i.ed, align 4, !tbaa !27
  %i.ee = add nuw i32 %.06691, 1                  ; 2 uses
  %.not86 = icmp eq i32 %i.ee, %i.r
  br i1 %.not86, label %._crit_edge, label %scalar.ph, !llvm.loop !95

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa137 = phi i32 [ %i.af, %middle.block ], [ %i.eb, %scalar.ph ]
  %i.ef = add nuw i32 %.06494, 1                  ; 2 uses
  %.not = icmp eq i32 %i.ef, %i.u
  br i1 %.not, label %.preheader, label %.preheader88, !llvm.loop !96

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge105.split
  %.0112 = phi i32 [ %.1, %._crit_edge105.split ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.165111 = phi i32 [ %i.gt, %._crit_edge105.split ], [ 0, %.lr.ph.preheader ]
  %.2110 = phi i32 [ %i.fv, %._crit_edge105.split ], [ 0, %.lr.ph.preheader ]
  %.070108 = phi float [ %.171, %._crit_edge105.split ], [ %i.bf, %.lr.ph.preheader ] ; 6 uses
  %i.eg = mul i32 %.0112, %i.r                    ; 3 uses
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.eh
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !27
  %i.ek = add i32 %i.eg, 1
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.el
  %i.en = load float, ptr %i.em, align 4, !tbaa !27
  %i.eo = add i32 %.0112, 1                       ; 2 uses
  %i.ep = mul i32 %i.eo, %i.r                     ; 3 uses
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.eq
  %i.es = load float, ptr %i.er, align 4, !tbaa !27
  %i.et = add i32 %i.ep, 1
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.eu
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !27
  %i.ex = fmul nsz float %.070108, %.070108
  %i.ey = fmul nsz float %.070108, %i.ex
  %i.ez = tail call nsz float @llvm.fmuladd.f32(float %.070108, float 6.000000e+00, float -1.500000e+01)
  %i.fa = tail call nsz float @llvm.fmuladd.f32(float %.070108, float %i.ez, float 1.000000e+01)
  %i.fb = fmul nsz float %i.ey, %i.fa
  %i.fc = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %i.en, i64 1
  %i.fe = insertelement <2 x float> poison, float %i.es, i64 0
  %i.ff = insertelement <2 x float> %i.fe, float %i.ej, i64 1
  br label %_Z21biLinearInterpolationffffffb.exit

_Z21biLinearInterpolationffffffb.exit:            ; preds = %.lr.ph, %bb.e
  %.062103 = phi i32 [ 0, %.lr.ph ], [ %.163, %bb.e ] ; 3 uses
  %.167102 = phi i32 [ 0, %.lr.ph ], [ %i.gp, %bb.e ]
  %.3101 = phi i32 [ %.2110, %.lr.ph ], [ %i.fv, %bb.e ] ; 2 uses
  %.072100 = phi float [ %i.bg, %.lr.ph ], [ %.173, %bb.e ] ; 6 uses
  %i.fg = phi <2 x float> [ %i.fd, %.lr.ph ], [ %i.gn, %bb.e ] ; 3 uses
  %i.fh = phi <2 x float> [ %i.ff, %.lr.ph ], [ %i.go, %bb.e ] ; 3 uses
  %i.fi = fmul nsz float %.072100, %.072100
  %i.fj = fmul nsz float %.072100, %i.fi
  %i.fk = tail call nsz float @llvm.fmuladd.f32(float %.072100, float 6.000000e+00, float -1.500000e+01)
  %i.fl = tail call nsz float @llvm.fmuladd.f32(float %.072100, float %i.fk, float 1.000000e+01)
  %i.fm = fmul nsz float %i.fj, %i.fl
  %i.fn = fsub nsz <2 x float> %i.fg, %i.fh
  %i.fo = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> %i.fp, <2 x float> %i.fh) ; 2 uses
  %i.fr = extractelement <2 x float> %i.fq, i64 0
  %i.fs = extractelement <2 x float> %i.fq, i64 1 ; 2 uses
  %i.ft = fsub nsz float %i.fr, %i.fs
  %i.fu = tail call nsz noundef float @llvm.fmuladd.f32(float %i.ft, float %i.fb, float %i.fs)
  %i.fv = add i32 %.3101, 1                       ; 2 uses
  %i.fw = zext i32 %.3101 to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.fw
  store float %i.fu, ptr %i.fx, align 4, !tbaa !27
  %i.fy = fadd nsz float %3, %.072100             ; 3 uses
  %i.fz = fcmp nsz ult float %i.fy, 1.000000e+00
  br i1 %i.fz, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_Z21biLinearInterpolationffffffb.exit
  %i.ga = fadd nsz float %i.fy, -1.000000e+00
  %i.gb = add i32 %.062103, 1
  %i.gc = add i32 %.062103, 2                     ; 2 uses
  %i.gd = add i32 %i.gc, %i.eg
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.ge
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !27
  %i.gh = add i32 %i.gc, %i.ep
  %i.gi = zext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.gi
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !27
  %i.gl = insertelement <2 x float> poison, float %i.gk, i64 0
  %i.gm = insertelement <2 x float> %i.gl, float %i.gg, i64 1
  br label %bb.e

bb.e:                                             ; preds = %_Z21biLinearInterpolationffffffb.exit, %bb.d
  %.173 = phi nsz float [ %i.ga, %bb.d ], [ %i.fy, %_Z21biLinearInterpolationffffffb.exit ]
  %.163 = phi i32 [ %i.gb, %bb.d ], [ %.062103, %_Z21biLinearInterpolationffffffb.exit ]
  %i.gn = phi <2 x float> [ %i.gm, %bb.d ], [ %i.fg, %_Z21biLinearInterpolationffffffb.exit ]
  %i.go = phi <2 x float> [ %i.fg, %bb.d ], [ %i.fh, %_Z21biLinearInterpolationffffffb.exit ]
  %i.gp = add nuw i32 %.167102, 1                 ; 2 uses
  %.not85 = icmp eq i32 %i.gp, %i.bc
  br i1 %.not85, label %._crit_edge105.split, label %_Z21biLinearInterpolationffffffb.exit, !llvm.loop !93

._crit_edge105.split:                             ; preds = %bb.e
  %i.gq = fadd nsz float %4, %.070108             ; 3 uses
  %i.gr = fcmp nsz ult float %i.gq, 1.000000e+00  ; 2 uses
  %i.gs = fadd nsz float %i.gq, -1.000000e+00
  %.171 = select nsz i1 %i.gr, float %i.gq, float %i.gs
  %.1 = select i1 %i.gr, i32 %.0112, i32 %i.eo
  %i.gt = add nuw i32 %.165111, 1                 ; 2 uses
  %.not84 = icmp eq i32 %i.gt, %i.az
  br i1 %.not84, label %._crit_edge114.split, label %.lr.ph, !llvm.loop !94

._crit_edge114.split:                             ; preds = %._crit_edge105.split, %._crit_edge105.split.us.us, %.lr.ph113, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5Noise10valueMap3DEffffffi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, i32 noundef %7) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !62
  %i.c = and i32 %i.b, 2
  %.not180 = icmp eq i32 %i.c, 0
  %i.d = insertelement <2 x float> poison, float %1, i64 0
  %i.e = insertelement <2 x float> %i.d, float %2, i64 1 ; 2 uses
  %i.f = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.e)
  %i.g = tail call nsz noundef float @llvm.floor.f32(float %3)
  %i.h = fptosi float %i.g to i32                 ; 2 uses
  %i.i = sitofp nsz i32 %i.h to float
  %i.j = fsub nsz float %3, %i.i                  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = fptosi <2 x float> %i.f to <2 x i32>     ; 4 uses
  %i.m = sitofp <2 x i32> %i.l to <2 x float>
  %i.n = fsub nsz <2 x float> %i.e, %i.m          ; 3 uses
  %i.o = load <2 x i32>, ptr %i.k, align 4, !tbaa !36 ; 3 uses
  %i.p = uitofp <2 x i32> %i.o to <2 x float>
  %i.q = insertelement <2 x float> poison, float %4, i64 0
  %i.r = insertelement <2 x float> %i.q, float %5, i64 1
  %i.s = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.r, <2 x float> %i.n)
  %i.t = fptoui <2 x float> %i.s to <2 x i32>     ; 2 uses
  %i.u = add <2 x i32> %i.t, splat (i32 2)        ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.w = load i32, ptr %i.v, align 4, !tbaa !43   ; 3 uses
  %i.x = uitofp nsz i32 %i.w to float
  %i.y = tail call nsz float @llvm.fmuladd.f32(float %i.x, float %6, float %i.j)
  %i.z = fptoui float %i.y to i32
  %i.aa = add i32 %i.z, 2                         ; 2 uses
  %.not192 = icmp eq i32 %i.aa, 0
  br i1 %.not192, label %.preheader181, label %.preheader183.lr.ph

.preheader183.lr.ph:                              ; preds = %bb.a
  %i.ab = icmp eq <2 x i32> %i.u, zeroinitializer ; 2 uses
  %i.ac = mul i32 %7, 1013
  %i.ad = extractelement <2 x i1> %i.ab, i64 0
  %i.ae = extractelement <2 x i1> %i.ab, i64 1
  %or.cond = select i1 %i.ae, i1 true, i1 %i.ad
  br i1 %or.cond, label %.preheader181, label %.preheader183.lr.ph.split.split

.preheader183.lr.ph.split.split:                  ; preds = %.preheader183.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !44 ; 2 uses
  %i.ah = extractelement <2 x i32> %i.u, i64 0    ; 4 uses
  %i.ai = extractelement <2 x i32> %i.u, i64 1
  %i.aj = extractelement <2 x i32> %i.t, i64 0
  %i.ak = extractelement <2 x i32> %i.l, i64 1
  %min.iters.check = icmp ult i32 %i.ah, 4
  %i.al = sub i32 -2, %i.aj
  %n.vec = and i32 %i.ah, -4                      ; 4 uses
  %broadcast.splat260 = shufflevector <2 x i32> %i.l, <2 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i32 %i.ah, %n.vec
  %i.am = extractelement <2 x i32> %i.l, i64 0
  br label %.preheader183

.preheader183:                                    ; preds = %.preheader183.lr.ph.split.split, %._crit_edge190.split
  %.0142194 = phi i32 [ 0, %.preheader183.lr.ph.split.split ], [ %i.cs, %._crit_edge190.split ] ; 2 uses
  %.0148193 = phi i32 [ 0, %.preheader183.lr.ph.split.split ], [ %.lcssa258, %._crit_edge190.split ]
  %i.an = add i32 %.0142194, %i.h
  %i.ao = mul nsw i32 %i.an, 52591
  %i.ap = add i32 %i.ao, %i.ac
  br label %.preheader182

.preheader181:                                    ; preds = %._crit_edge190.split, %.preheader183.lr.ph, %bb.a
  %i.aq = extractelement <2 x i32> %i.u, i64 0    ; 3 uses
  %i.ar = extractelement <2 x i32> %i.u, i64 1
  %factor.op.mul223 = mul i32 %i.ar, %i.aq        ; 2 uses
  %.not175224 = icmp eq i32 %i.w, 0
  br i1 %.not175224, label %._crit_edge230.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader181
  %i.as = extractelement <2 x i32> %i.o, i64 1    ; 2 uses
  %.not176213 = icmp eq i32 %i.as, 0
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  br i1 %.not176213, label %._crit_edge230.split, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.au = extractelement <2 x i32> %i.o, i64 0    ; 3 uses
  %.not177197 = icmp eq i32 %i.au, 0
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44 ; 16 uses
  br i1 %.not177197, label %._crit_edge230.split, label %.preheader.lr.ph.split.split

.preheader.lr.ph.split.split:                     ; preds = %.preheader.lr.ph.split
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !45 ; 2 uses
  %i.ay = extractelement <2 x float> %i.n, i64 1
  %i.az = extractelement <2 x float> %i.n, i64 0  ; 2 uses
  br label %.preheader

.preheader182:                                    ; preds = %.preheader183, %._crit_edge
  %.0144189 = phi i32 [ 0, %.preheader183 ], [ %i.cr, %._crit_edge ] ; 2 uses
  %.1149188 = phi i32 [ %.0148193, %.preheader183 ], [ %.lcssa258, %._crit_edge ] ; 4 uses
  %i.ba = add i32 %.0144189, %i.ak
  %i.bb = mul nsw i32 %i.ba, 31337
  %i.bc = add i32 %i.ap, %i.bb                    ; 2 uses
  %i.bd = icmp ult i32 %i.al, %.1149188
  %or.cond263 = select i1 %min.iters.check, i1 true, i1 %i.bd
  br i1 %or.cond263, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader182
  %i.be = add i32 %.1149188, %n.vec               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bf = add i32 %.1149188, %index
  %i.bg = add <4 x i32> %vec.ind, %broadcast.splat260
  %i.bh = mul nsw <4 x i32> %i.bg, splat (i32 1619)
  %i.bi = add <4 x i32> %broadcast.splat, %i.bh
  %i.bj = and <4 x i32> %i.bi, splat (i32 2147483647) ; 2 uses
  %i.bk = lshr <4 x i32> %i.bj, splat (i32 13)
  %i.bl = xor <4 x i32> %i.bk, %i.bj              ; 3 uses
  %i.bm = mul <4 x i32> %i.bl, splat (i32 60493)
  %i.bn = mul <4 x i32> %i.bm, %i.bl
  %i.bo = add <4 x i32> %i.bn, splat (i32 19990303)
  %i.bp = mul <4 x i32> %i.bo, %i.bl
  %i.bq = add <4 x i32> %i.bp, splat (i32 1376312589)
  %i.br = and <4 x i32> %i.bq, splat (i32 2147483647)
  %i.bs = uitofp nneg <4 x i32> %i.br to <4 x float>
  %i.bt = fmul nnan nsz <4 x float> %i.bs, splat (float f0x30800000)
  %i.bu = fsub nsz <4 x float> splat (float 1.000000e+00), %i.bt
  %i.bv = zext i32 %i.bf to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bv
  store <4 x float> %i.bu, ptr %i.bw, align 4, !tbaa !27
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.bx = icmp eq i32 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader182, %middle.block
  %.0146186.ph = phi i32 [ 0, %.preheader182 ], [ %n.vec, %middle.block ]
  %.2185.ph = phi i32 [ %.1149188, %.preheader182 ], [ %i.be, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0146186 = phi i32 [ %i.cq, %scalar.ph ], [ %.0146186.ph, %scalar.ph.preheader ] ; 2 uses
  %.2185 = phi i32 [ %i.cn, %scalar.ph ], [ %.2185.ph, %scalar.ph.preheader ] ; 2 uses
  %i.by = add i32 %.0146186, %i.am
  %i.bz = mul nsw i32 %i.by, 1619
  %i.ca = add i32 %i.bc, %i.bz
  %i.cb = and i32 %i.ca, 2147483647               ; 2 uses
  %i.cc = lshr i32 %i.cb, 13
  %i.cd = xor i32 %i.cc, %i.cb                    ; 3 uses
  %i.ce = mul i32 %i.cd, 60493
  %i.cf = mul i32 %i.ce, %i.cd
  %i.cg = add i32 %i.cf, 19990303
  %i.ch = mul i32 %i.cg, %i.cd
  %i.ci = add i32 %i.ch, 1376312589
  %i.cj = and i32 %i.ci, 2147483647
  %i.ck = uitofp nneg i32 %i.cj to float
  %i.cl = fmul nnan nsz float %i.ck, f0x30800000
  %i.cm = fsub nsz float 1.000000e+00, %i.cl
  %i.cn = add i32 %.2185, 1                       ; 2 uses
  %i.co = zext i32 %.2185 to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.co
  store float %i.cm, ptr %i.cp, align 4, !tbaa !27
  %i.cq = add nuw i32 %.0146186, 1                ; 2 uses
  %.not179 = icmp eq i32 %i.cq, %i.ah
  br i1 %.not179, label %._crit_edge, label %scalar.ph, !llvm.loop !98

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa258 = phi i32 [ %i.be, %middle.block ], [ %i.cn, %scalar.ph ] ; 2 uses
  %i.cr = add nuw i32 %.0144189, 1                ; 2 uses
  %.not178 = icmp eq i32 %i.cr, %i.ai
  br i1 %.not178, label %._crit_edge190.split, label %.preheader182, !llvm.loop !99

._crit_edge190.split:                             ; preds = %._crit_edge
  %i.cs = add nuw i32 %.0142194, 1                ; 2 uses
  %.not = icmp eq i32 %i.cs, %i.aa
  br i1 %.not, label %.preheader181, label %.preheader183, !llvm.loop !100

.preheader:                                       ; preds = %.preheader.lr.ph.split.split, %._crit_edge220.split
  %.0229 = phi i32 [ 0, %.preheader.lr.ph.split.split ], [ %.1, %._crit_edge220.split ] ; 3 uses
  %.1143228 = phi i32 [ 0, %.preheader.lr.ph.split.split ], [ %i.jl, %._crit_edge220.split ]
  %.3227 = phi i32 [ 0, %.preheader.lr.ph.split.split ], [ %.us-phi, %._crit_edge220.split ]
  %.0150225 = phi float [ %i.j, %.preheader.lr.ph.split.split ], [ %.1151, %._crit_edge220.split ] ; 7 uses
  %factor.op.mul.reass = mul i32 %factor.op.mul223, %.0229 ; 2 uses
  %i.ct = add i32 %.0229, 1
  %i.cu = mul i32 %factor.op.mul223, %i.ct        ; 2 uses
  %i.cv = fmul nsz float %.0150225, %.0150225
  %i.cw = fmul nsz float %.0150225, %i.cv
  %i.cx = tail call nsz float @llvm.fmuladd.f32(float %.0150225, float 6.000000e+00, float -1.500000e+01)
  %i.cy = tail call nsz float @llvm.fmuladd.f32(float %.0150225, float %i.cx, float 1.000000e+01)
  %i.cz = fmul nsz float %i.cw, %i.cy
  br label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %._crit_edge211
  %.0138218 = phi i32 [ 0, %.preheader ], [ %.1139, %._crit_edge211 ] ; 3 uses
  %.1145217 = phi i32 [ 0, %.preheader ], [ %i.jg, %._crit_edge211 ]
  %.4216 = phi i32 [ %.3227, %.preheader ], [ %.us-phi, %._crit_edge211 ] ; 2 uses
  %.0152214 = phi float [ %i.ay, %.preheader ], [ %.1153, %._crit_edge211 ] ; 7 uses
  %i.da = mul i32 %.0138218, %i.aq                ; 2 uses
  %i.db = add i32 %i.da, %factor.op.mul.reass     ; 4 uses
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.dc
  %i.de = load float, ptr %i.dd, align 4, !tbaa !27 ; 2 uses
  %i.df = add i32 %i.db, 1
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.dg
  %i.di = load float, ptr %i.dh, align 4, !tbaa !27 ; 2 uses
  %i.dj = add i32 %.0138218, 1                    ; 2 uses
  %i.dk = mul i32 %i.dj, %i.aq                    ; 2 uses
  %i.dl = add i32 %i.dk, %factor.op.mul.reass     ; 4 uses
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.dm
  %i.do = load float, ptr %i.dn, align 4, !tbaa !27 ; 2 uses
  %i.dp = add i32 %i.dl, 1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !27 ; 2 uses
  %i.dt = add i32 %i.da, %i.cu                    ; 4 uses
  %i.du = zext i32 %i.dt to i64
end_hunk_2
