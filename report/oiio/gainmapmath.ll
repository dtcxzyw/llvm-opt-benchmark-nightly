Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/gainmapmath?download=true
inline.NumInlined: 483
inline.NumDeleted: 171
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8ultrahdr12ConvertGamutENS_5ColorERKSt5arrayIfLm9EE:bb.a
  %i.r = load <2 x float>, ptr %i.q, align 4, !tbaa !14
  %i.s = fmul contract <2 x float> %0, %i.r       ; 2 uses
  %shift = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd contract <2 x float> %i.s, %shift
  %i.t = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = load float, ptr %i.u, align 4, !tbaa !14
  %i.w = fmul contract float %1, %i.v
  %i.x = fadd contract float %i.t, %i.w
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.p, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.x, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr9bt709ToP3ENS_5ColorE(<2 x float> %0, float %1) #5 {
bb.a:
  %i.a = fmul contract float %1, f0x358637BD
  %i.b = fmul contract <2 x float> %0, <float 3.319400e-02, float 1.775370e-01>
  %i.c = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.d = fmul contract <2 x float> %0, <float 8.224620e-01, float 9.668070e-01>
  %i.e = fadd contract <2 x float> %i.c, %i.d     ; 2 uses
  %i.f = insertelement <2 x float> poison, float %i.a, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.h = fadd contract <2 x float> %i.e, %i.g
  %i.i = fsub contract <2 x float> %i.e, %i.g
  %i.j = shufflevector <2 x float> %i.h, <2 x float> %i.i, <2 x i32> <i32 0, i32 3>
  %i.k = fmul contract <2 x float> %0, <float 1.708300e-02, float 7.239800e-02> ; 2 uses
  %shift = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd contract <2 x float> %i.k, %shift
  %i.l = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.m = fmul contract float %1, 9.105200e-01
  %i.n = fadd contract float %i.m, %i.l
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.j, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.n, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr13bt709ToBt2100ENS_5ColorE(<2 x float> %0, float %1) #5 {
bb.a:
  %i.a = insertelement <2 x float> poison, float %1, i64 0
  %i.b = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> zeroinitializer
  %i.c = fmul contract <2 x float> %i.b, <float 4.331400e-02, float 1.136200e-02>
  %i.d = fmul contract <2 x float> %0, <float 6.909700e-02, float 3.292820e-01>
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.f = fmul contract <2 x float> %0, <float 6.274040e-01, float 9.195410e-01>
  %i.g = fadd contract <2 x float> %i.e, %i.f
  %i.h = fadd contract <2 x float> %i.c, %i.g
  %i.i = fmul contract <2 x float> %0, <float 1.639200e-02, float 8.801300e-02> ; 2 uses
  %shift = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd contract <2 x float> %i.i, %shift
  %i.j = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.k = fmul contract float %1, 8.955950e-01
  %i.l = fadd contract float %i.k, %i.j
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.h, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.l, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr9p3ToBt709ENS_5ColorE(<2 x float> %0, float %1) #5 {
bb.a:
  %i.a = fmul contract float %1, 0.000000e+00
  %i.b = fmul contract <2 x float> %0, <float 4.205700e-02, float 2.249400e-01>
  %i.c = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.d = fmul contract <2 x float> %0, <float 1.224940e+00, float f0x3F856220>
  %i.e = fsub contract <2 x float> %i.d, %i.c
  %i.f = insertelement <2 x float> poison, float %i.a, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fadd contract <2 x float> %i.g, %i.e
  %i.i = fmul contract <2 x float> %0, <float -1.963800e-02, float f0x3DA10BE9> ; 2 uses
  %shift = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub contract <2 x float> %i.i, %shift
  %i.j = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.k = fmul contract float %1, f0x3F8C943E
  %i.l = fadd contract float %i.k, %i.j
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.h, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.l, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr10p3ToBt2100ENS_5ColorE(<2 x float> %0, float %1) #5 {
bb.a:
  %i.a = insertelement <2 x float> poison, float %1, i64 0
  %i.b = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> zeroinitializer
  %i.c = fmul contract <2 x float> %i.b, <float 4.757000e-02, float 1.247900e-02>
  %i.d = fmul contract <2 x float> %0, <float 4.574400e-02, float 1.985970e-01>
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.f = fmul contract <2 x float> %0, <float f0x3F40FB33, float 9.417770e-01>
  %i.g = fadd contract <2 x float> %i.e, %i.f
  %i.h = fadd contract <2 x float> %i.c, %i.g
  %i.i = fmul contract <2 x float> %0, <float 1.210000e-03, float 1.760100e-02> ; 2 uses
  %shift = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub contract <2 x float> %shift, %i.i
  %i.j = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.k = fmul contract float %1, 9.836080e-01
  %i.l = fadd contract float %i.k, %i.j
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.h, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.l, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr13bt2100ToBt709ENS_5ColorE(<2 x float> %0, float %1) #5 {
bb.a:
  %i.a = insertelement <2 x float> poison, float %1, i64 0
  %i.b = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> zeroinitializer
  %i.c = fmul contract <2 x float> %i.b, <float 7.285000e-02, float f0x3C08CA3E>
  %i.d = fmul contract <2 x float> %0, <float 1.245510e-01, float 5.876410e-01>
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.f = fmul contract <2 x float> %0, <float f0x3FD48AF8, float 1.132900e+00>
  %i.g = fsub contract <2 x float> %i.f, %i.e
  %i.h = fsub contract <2 x float> %i.g, %i.c
  %i.i = fmul contract <2 x float> %0, <float -1.815100e-02, float 1.005790e-01> ; 2 uses
  %shift = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub contract <2 x float> %i.i, %shift
  %i.j = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.k = fmul contract float %1, 1.118730e+00
  %i.l = fadd contract float %i.k, %i.j
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.h, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.l, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr10bt2100ToP3ENS_5ColorE(<2 x float> %0, float %1) #5 {
bb.a:
  %i.a = insertelement <2 x float> poison, float %1, i64 0
  %i.b = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> zeroinitializer
  %i.c = fmul contract <2 x float> %i.b, <float 6.139900e-02, float 1.049000e-02>
  %i.d = fmul contract <2 x float> %0, <float 6.529800e-02, float 2.821790e-01>
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.f = fmul contract <2 x float> %0, <float f0x3FABFA5D, float f0x3F89B36C>
  %i.g = fsub contract <2 x float> %i.f, %i.e
  %i.h = fsub contract <2 x float> %i.g, %i.c
  %i.i = fmul contract <2 x float> %0, <float 2.822000e-03, float 1.959800e-02> ; 2 uses
  %shift = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub contract <2 x float> %i.i, %shift
  %i.j = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.k = fmul contract float %1, f0x3F8225C0
  %i.l = fadd contract float %i.k, %i.j
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.h, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.l, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { <2 x float>, float } @_ZN8ultrahdr23yuvColorGamutConversionENS_5ColorERKSt5arrayIfLm9EE(<2 x float> %0, float %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %2) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load <4 x float>, ptr %2, align 4, !tbaa !14 ; 3 uses
  %i.c = shufflevector <2 x float> %0, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.d = shufflevector <4 x float> %i.b, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.e = fmul contract <2 x float> %i.c, %i.d
  %i.f = load <2 x float>, ptr %i.a, align 4, !tbaa !14 ; 2 uses
  %i.g = shufflevector <4 x float> %i.b, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.h = shufflevector <2 x float> %i.g, <2 x float> %i.f, <2 x i32> <i32 0, i32 2>
  %i.i = fmul contract <2 x float> %0, %i.h
  %i.j = fadd contract <2 x float> %i.e, %i.i
  %i.k = insertelement <2 x float> poison, float %1, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = shufflevector <4 x float> %i.b, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.n = shufflevector <2 x float> %i.m, <2 x float> %i.f, <2 x i32> <i32 0, i32 3>
  %i.o = fmul contract <2 x float> %i.l, %i.n
  %i.p = fadd contract <2 x float> %i.j, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = load <2 x float>, ptr %i.q, align 4, !tbaa !14
  %i.s = fmul contract <2 x float> %0, %i.r       ; 2 uses
  %shift = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd contract <2 x float> %i.s, %shift
  %i.t = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = load float, ptr %i.u, align 4, !tbaa !14
  %i.w = fmul contract float %1, %i.v
  %i.x = fadd contract float %i.t, %i.w
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.p, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.x, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN8ultrahdr15transformYuv420EP14uhdr_raw_imageRKSt5arrayIfLm9EE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %1) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35   ; 2 uses
  %.not = icmp ult i32 %i.b, 2
  br i1 %.not, label %._crit_edge220, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.pre = load i32, ptr %i.c, align 8, !tbaa !36
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.m = phi i32 [ %i.b, %.preheader.lr.ph ], [ %i.q, %._crit_edge ]
  %i.n = phi i32 [ %.pre, %.preheader.lr.ph ], [ %i.r, %._crit_edge ] ; 2 uses
  %.0219 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.s, %._crit_edge ] ; 4 uses
  %.not221 = icmp ult i32 %i.n, 2
  br i1 %.not221, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.o = shl nuw nsw i64 %.0219, 1                ; 2 uses
  %i.p = or disjoint i64 %i.o, 1
  br label %bb.b

._crit_edge220:                                   ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge.loopexit:                             ; preds = %bb.n
  %.pre222 = load i32, ptr %i.a, align 4, !tbaa !35
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.q = phi i32 [ %.pre222, %._crit_edge.loopexit ], [ %i.m, %.preheader ] ; 2 uses
  %i.r = phi i32 [ %i.du, %._crit_edge.loopexit ], [ %i.n, %.preheader ]
  %i.s = add nuw nsw i64 %.0219, 1                ; 2 uses
  %i.t = lshr i32 %i.q, 1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = icmp samesign ult i64 %i.s, %i.u
  br i1 %i.v, label %.preheader, label %._crit_edge220, !llvm.loop !61

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %.0131218 = phi i64 [ 0, %.lr.ph ], [ %i.dt, %bb.n ] ; 4 uses
  %i.w = shl nuw nsw i64 %.0131218, 1
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.y = load i32, ptr %i.e, align 8, !tbaa !9
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.ab = load i32, ptr %i.g, align 4, !tbaa !9
  %i.ac = zext i32 %i.ab to i64
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.ae = load i32, ptr %i.i, align 8, !tbaa !9
  %i.af = zext i32 %i.ae to i64
  %i.ag = mul i64 %i.o, %i.z                      ; 2 uses
  %i.ah = mul i64 %.0219, %i.ac
  %i.ai = mul i64 %.0219, %i.af
  %i.aj = getelementptr i8, ptr %i.x, i64 %i.w    ; 3 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.ag  ; 2 uses
  %i.al = getelementptr i8, ptr %i.aa, i64 %.0131218
  %i.am = getelementptr i8, ptr %i.al, i64 %i.ah  ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !24
  %i.ao = getelementptr i8, ptr %i.ad, i64 %.0131218
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.ai  ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !24
  %i.ar = getelementptr i8, ptr %i.aj, i64 1      ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 %i.ag
  %i.at = mul i64 %i.p, %i.z                      ; 2 uses
  %i.au = getelementptr i8, ptr %i.aj, i64 %i.at  ; 2 uses
  %i.av = getelementptr i8, ptr %i.ar, i64 %i.at
  %i.aw = load float, ptr %1, align 4, !tbaa !14  ; 3 uses
  %i.ax = zext i8 %i.an to i16
  %i.ay = add nsw i16 %i.ax, -128
  %i.az = zext i8 %i.aq to i16
  %i.ba = add nsw i16 %i.az, -128
  %i.bb = insertelement <2 x i16> poison, i16 %i.ay, i64 0
  %i.bc = insertelement <2 x i16> %i.bb, i16 %i.ba, i64 1
  %i.bd = sitofp <2 x i16> %i.bc to <2 x float>
  %i.be = fmul nnan contract <2 x float> %i.bd, splat (float f0x3B808081) ; 4 uses
  %i.bf = load <2 x float>, ptr %i.j, align 4, !tbaa !14
  %i.bg = fmul contract <2 x float> %i.be, %i.bf  ; 3 uses
  %i.bh = extractelement <2 x float> %i.bg, i64 0 ; 2 uses
  %i.bi = extractelement <2 x float> %i.bg, i64 1 ; 4 uses
  %i.bj = load <2 x i8>, ptr %i.ak, align 1, !tbaa !24
  %i.bk = uitofp <2 x i8> %i.bj to <2 x float>
  %i.bl = fmul nnan contract <2 x float> %i.bk, splat (float f0x3B808081) ; 2 uses
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bn = insertelement <4 x float> poison, float %i.aw, i64 0
  %2 = load <2 x i8>, ptr %i.au, align 1, !tbaa !24
  %3 = uitofp <2 x i8> %2 to <2 x float>
  %4 = fmul nnan contract <2 x float> %3, splat (float f0x3B808081) ; 3 uses
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %6 = extractelement <2 x float> %4, i64 0
  %7 = fmul contract float %6, %i.aw
  %8 = fadd contract float %7, %i.bh
  %9 = fadd contract float %8, %i.bi
  %10 = load <4 x float>, ptr %i.k, align 4, !tbaa !14 ; 5 uses
  %11 = load <2 x float>, ptr %i.l, align 4, !tbaa !14 ; 2 uses
  %12 = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %13 = shufflevector <4 x float> %10, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %14 = shufflevector <2 x float> %11, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %15 = shufflevector <4 x float> %10, <4 x float> %14, <2 x i32> <i32 1, i32 4> ; 2 uses
  %16 = fmul contract <2 x float> %12, %15        ; 4 uses
  %17 = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %18 = shufflevector <2 x float> %13, <2 x float> %11, <2 x i32> <i32 0, i32 3>
  %19 = fmul contract <2 x float> %17, %18        ; 4 uses
  %20 = shufflevector <4 x float> %i.bn, <4 x float> %10, <4 x i32> <i32 0, i32 4, i32 7, i32 0>
  %21 = fmul contract <4 x float> %i.bm, %20
  %22 = shufflevector <2 x float> %4, <2 x float> %i.be, <2 x i32> <i32 0, i32 2>
  %23 = shufflevector <4 x float> %10, <4 x float> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %24 = shufflevector <2 x float> %23, <2 x float> %15, <2 x i32> <i32 0, i32 3>
  %25 = fmul contract <2 x float> %22, %24
  %26 = shufflevector <2 x float> %i.bg, <2 x float> %16, <4 x i32> <i32 0, i32 2, i32 3, i32 0>
  %i.bo = fadd contract <4 x float> %21, %26      ; 3 uses
  %27 = extractelement <4 x float> %i.bo, i64 0
  %28 = fadd contract float %27, %i.bi
  %29 = shufflevector <4 x float> %i.bo, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %30 = fadd contract <2 x float> %29, %19
  %31 = extractelement <4 x float> %i.bo, i64 3
  %i.bp = fadd contract float %31, %i.bi
  %32 = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %33 = fmul contract <2 x float> %32, %23
  %34 = fadd contract <2 x float> %33, %16
  %35 = fadd contract <2 x float> %34, %19
  %36 = shufflevector <4 x float> %10, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 0, i32 poison>
  %37 = insertelement <4 x float> %36, float %i.aw, i64 1
  %38 = shufflevector <4 x float> %37, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %39 = fmul contract <4 x float> %38, %5         ; 3 uses
  %40 = shufflevector <4 x float> %39, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %41 = shufflevector <2 x float> %16, <2 x float> %40, <2 x i32> <i32 0, i32 3>
  %i.bq = fadd contract <2 x float> %41, %25
  %42 = fadd contract <2 x float> %i.bq, %19
  %43 = extractelement <4 x float> %39, i64 1
  %44 = fadd contract float %43, %i.bh
  %i.br = fadd contract float %44, %i.bi
  %i.bs = shufflevector <4 x float> %39, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.bt = fadd contract <2 x float> %i.bs, %16
  %i.bu = fadd contract <2 x float> %i.bt, %19
  %45 = fadd contract <2 x float> %30, %35
  %i.bv = fadd contract <2 x float> %42, %45
  %i.bw = fadd contract <2 x float> %i.bu, %i.bv  ; 2 uses
  %i.bx = extractelement <2 x float> %i.bw, i64 0
  %i.by = fmul contract float %i.bx, 2.500000e-01
  %i.bz = extractelement <2 x float> %i.bw, i64 1
  %i.ca = fmul contract float %i.bz, 2.500000e-01
  %i.cb = fmul contract float %28, 2.550000e+02
  %i.cc = fadd contract float %i.cb, 5.000000e-01 ; 3 uses
  %i.cd = fcmp contract olt float %i.cc, 0.000000e+00
  br i1 %i.cd, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ce = fcmp contract ogt float %i.cc, 2.550000e+02
  %i.cf = select contract i1 %i.ce, float 2.550000e+02, float %i.cc
  %i.cg = fptoui float %i.cf to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ch = phi i8 [ %i.cg, %bb.c ], [ 0, %bb.b ]
  store i8 %i.ch, ptr %i.ak, align 1, !tbaa !24
  %i.ci = fmul contract float %i.bp, 2.550000e+02
  %i.cj = fadd contract float %i.ci, 5.000000e-01 ; 3 uses
  %i.ck = fcmp contract olt float %i.cj, 0.000000e+00
  br i1 %i.ck, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cl = fcmp contract ogt float %i.cj, 2.550000e+02
  %i.cm = select contract i1 %i.cl, float 2.550000e+02, float %i.cj
  %i.cn = fptoui float %i.cm to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.co = phi i8 [ %i.cn, %bb.e ], [ 0, %bb.d ]
  store i8 %i.co, ptr %i.as, align 1, !tbaa !24
  %i.cp = fmul contract float %9, 2.550000e+02
  %i.cq = fadd contract float %i.cp, 5.000000e-01 ; 3 uses
  %i.cr = fcmp contract olt float %i.cq, 0.000000e+00
  br i1 %i.cr, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cs = fcmp contract ogt float %i.cq, 2.550000e+02
  %i.ct = select contract i1 %i.cs, float 2.550000e+02, float %i.cq
  %i.cu = fptoui float %i.ct to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.cv = phi i8 [ %i.cu, %bb.g ], [ 0, %bb.f ]
  store i8 %i.cv, ptr %i.au, align 1, !tbaa !24
  %i.cw = fmul contract float %i.br, 2.550000e+02
  %i.cx = fadd contract float %i.cw, 5.000000e-01 ; 3 uses
  %i.cy = fcmp contract olt float %i.cx, 0.000000e+00
  br i1 %i.cy, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cz = fcmp contract ogt float %i.cx, 2.550000e+02
  %i.da = select contract i1 %i.cz, float 2.550000e+02, float %i.cx
  %i.db = fptoui float %i.da to i8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.dc = phi i8 [ %i.db, %bb.i ], [ 0, %bb.h ]
  store i8 %i.dc, ptr %i.av, align 1, !tbaa !24
  %i.dd = fmul contract float %i.by, 2.550000e+02
  %i.de = fadd contract float %i.dd, 1.280000e+02
  %i.df = fadd contract float %i.de, 5.000000e-01 ; 3 uses
  %i.dg = fcmp contract olt float %i.df, 0.000000e+00
  br i1 %i.dg, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dh = fcmp contract ogt float %i.df, 2.550000e+02
  %i.di = select contract i1 %i.dh, float 2.550000e+02, float %i.df
  %i.dj = fptoui float %i.di to i8
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.dk = phi i8 [ %i.dj, %bb.k ], [ 0, %bb.j ]
  store i8 %i.dk, ptr %i.am, align 1, !tbaa !24
  %i.dl = fmul contract float %i.ca, 2.550000e+02
  %i.dm = fadd contract float %i.dl, 1.280000e+02
  %i.dn = fadd contract float %i.dm, 5.000000e-01 ; 3 uses
  %i.do = fcmp contract olt float %i.dn, 0.000000e+00
  br i1 %i.do, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dp = fcmp contract ogt float %i.dn, 2.550000e+02
  %i.dq = select contract i1 %i.dp, float 2.550000e+02, float %i.dn
  %i.dr = fptoui float %i.dq to i8
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ds = phi i8 [ %i.dr, %bb.m ], [ 0, %bb.l ]
  store i8 %i.ds, ptr %i.ap, align 1, !tbaa !24
  %i.dt = add nuw nsw i64 %.0131218, 1            ; 2 uses
  %i.du = load i32, ptr %i.c, align 8, !tbaa !36  ; 2 uses
  %i.dv = lshr i32 %i.du, 1
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = icmp samesign ult i64 %i.dt, %i.dw
  br i1 %i.dx, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !62
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN8ultrahdr15transformYuv444EP14uhdr_raw_imageRKSt5arrayIfLm9EE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %1) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge54, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre = load i32, ptr %i.c, align 8, !tbaa !36
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.q = phi i32 [ %i.b, %.preheader.lr.ph ], [ %i.s, %._crit_edge ]
  %i.r = phi i32 [ %.pre, %.preheader.lr.ph ], [ %i.t, %._crit_edge ]
  %.053 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.u, %._crit_edge ] ; 4 uses
  %.not55 = icmp eq i32 %i.r, 0
  br i1 %.not55, label %._crit_edge, label %.lr.ph

._crit_edge54:                                    ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre56 = load i32, ptr %i.a, align 4, !tbaa !35
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.s = phi i32 [ %.pre56, %._crit_edge.loopexit ], [ %i.q, %.preheader ] ; 2 uses
  %i.t = phi i32 [ %i.da, %._crit_edge.loopexit ], [ 0, %.preheader ]
  %i.u = add nuw nsw i64 %.053, 1                 ; 2 uses
  %i.v = zext i32 %i.s to i64
  %i.w = icmp samesign ult i64 %i.u, %i.v
  br i1 %i.w, label %.preheader, label %._crit_edge54, !llvm.loop !63

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %.04852 = phi i64 [ %i.cz, %bb.g ], [ 0, %.preheader ] ; 4 uses
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.y = load i32, ptr %i.e, align 8, !tbaa !9
  %i.z = zext i32 %i.y to i64
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.ab = load i32, ptr %i.g, align 4, !tbaa !9
  %i.ac = zext i32 %i.ab to i64
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.ae = load i32, ptr %i.i, align 8, !tbaa !9
  %i.af = zext i32 %i.ae to i64
  %i.ag = mul i64 %.053, %i.z
  %i.ah = mul i64 %.053, %i.ac
  %i.ai = mul i64 %.053, %i.af
  %i.aj = getelementptr i8, ptr %i.x, i64 %.04852
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.ag  ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !24
  %i.am = getelementptr i8, ptr %i.aa, i64 %.04852
  %i.an = getelementptr i8, ptr %i.am, i64 %i.ah  ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !24
  %i.ap = getelementptr i8, ptr %i.ad, i64 %.04852
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.ai  ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !24
  %i.as = uitofp i8 %i.al to float
  %i.at = fmul nnan contract float %i.as, f0x3B808081 ; 3 uses
  %i.au = load float, ptr %1, align 4, !tbaa !14
  %i.av = fmul contract float %i.at, %i.au
  %i.aw = zext i8 %i.ao to i16
  %i.ax = add nsw i16 %i.aw, -128
  %i.ay = zext i8 %i.ar to i16
  %i.az = add nsw i16 %i.ay, -128
  %i.ba = insertelement <2 x i16> poison, i16 %i.ax, i64 0
  %i.bb = insertelement <2 x i16> %i.ba, i16 %i.az, i64 1
  %i.bc = sitofp <2 x i16> %i.bb to <2 x float>
  %i.bd = fmul nnan contract <2 x float> %i.bc, splat (float f0x3B808081) ; 3 uses
  %i.be = load <2 x float>, ptr %i.j, align 4, !tbaa !14
  %i.bf = fmul contract <2 x float> %i.be, %i.bd  ; 2 uses
  %i.bg = extractelement <2 x float> %i.bf, i64 0
  %i.bh = fadd contract float %i.av, %i.bg
  %i.bi = extractelement <2 x float> %i.bf, i64 1
  %i.bj = fadd contract float %i.bh, %i.bi
  %i.bk = load float, ptr %i.k, align 4, !tbaa !14
  %i.bl = fmul contract float %i.at, %i.bk
  %i.bm = load float, ptr %i.l, align 4, !tbaa !14
  %i.bn = extractelement <2 x float> %i.bd, i64 0 ; 2 uses
  %i.bo = fmul contract float %i.bn, %i.bm
  %i.bp = fadd contract float %i.bl, %i.bo
  %i.bq = load float, ptr %i.m, align 4, !tbaa !14
  %i.br = extractelement <2 x float> %i.bd, i64 1 ; 2 uses
  %i.bs = fmul contract float %i.br, %i.bq
  %i.bt = fadd contract float %i.bp, %i.bs
  %i.bu = load float, ptr %i.n, align 4, !tbaa !14
  %i.bv = fmul contract float %i.at, %i.bu
  %i.bw = load float, ptr %i.o, align 4, !tbaa !14
  %i.bx = fmul contract float %i.bn, %i.bw
  %i.by = fadd contract float %i.bv, %i.bx
  %i.bz = load float, ptr %i.p, align 4, !tbaa !14
  %i.ca = fmul contract float %i.br, %i.bz
  %i.cb = fadd contract float %i.by, %i.ca
  %i.cc = fmul contract float %i.bj, 2.550000e+02
  %i.cd = fadd contract float %i.cc, 5.000000e-01 ; 3 uses
  %i.ce = fcmp contract olt float %i.cd, 0.000000e+00
  br i1 %i.ce, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.cf = fcmp contract ogt float %i.cd, 2.550000e+02
  %i.cg = select contract i1 %i.cf, float 2.550000e+02, float %i.cd
  %i.ch = fptoui float %i.cg to i8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.ci = phi i8 [ %i.ch, %bb.b ], [ 0, %.lr.ph ]
  store i8 %i.ci, ptr %i.ak, align 1, !tbaa !24
  %i.cj = fmul contract float %i.bt, 2.550000e+02
  %i.ck = fadd contract float %i.cj, 1.280000e+02
  %i.cl = fadd contract float %i.ck, 5.000000e-01 ; 3 uses
  %i.cm = fcmp contract olt float %i.cl, 0.000000e+00
  br i1 %i.cm, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cn = fcmp contract ogt float %i.cl, 2.550000e+02
  %i.co = select contract i1 %i.cn, float 2.550000e+02, float %i.cl
  %i.cp = fptoui float %i.co to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.cq = phi i8 [ %i.cp, %bb.d ], [ 0, %bb.c ]
  store i8 %i.cq, ptr %i.an, align 1, !tbaa !24
  %i.cr = fmul contract float %i.cb, 2.550000e+02
  %i.cs = fadd contract float %i.cr, 1.280000e+02
  %i.ct = fadd contract float %i.cs, 5.000000e-01 ; 3 uses
  %i.cu = fcmp contract olt float %i.ct, 0.000000e+00
  br i1 %i.cu, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cv = fcmp contract ogt float %i.ct, 2.550000e+02
  %i.cw = select contract i1 %i.cv, float 2.550000e+02, float %i.ct
  %i.cx = fptoui float %i.cw to i8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
end_hunk_0
