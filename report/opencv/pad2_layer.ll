Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/pad2_layer?download=true
inline.NumInlined: 1312
inline.NumDeleted: 469
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNSt6vectorIiSaIiEEaSERKS1_:bb.a
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #21 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !255

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.c, align 4, !tbaa !36
  store i32 %i.r, ptr %i.o, align 4, !tbaa !36
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !35     ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !58
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #22
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !58
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !34   ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 4
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !255

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 4
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !36
  store i32 %i.ae, ptr %i.i, align 4, !tbaa !36
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 4
  br i1 %i.af, label %bb.o, label %bb.p, !prof !255

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !35
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !34 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !35
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !34
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 4
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !36
  store i32 %i.ah, ptr %i.i, align 4, !tbaa !36
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

_ZSt4copyIPiS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 4, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 4
  br i1 %i.an, label %bb.r, label %bb.s, !prof !255

bb.r:                                             ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ai, ptr align 4 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.am, 4
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load i32, ptr %i.ak, align 4, !tbaa !36
  store i32 %i.ap, ptr %i.ai, align 4, !tbaa !36
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !34
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN2cv3dnnL20mapPadsToInputLayoutERKNS_8MatShapeERKSt6vectorIiSaIiEERS6_NS_10DataLayoutE(i32 %.0.val, i32 %.4.val, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq i32 %.4.val, 7
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = load ptr, ptr %0, align 8, !tbaa !35
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 2
  %i.i = trunc i64 %i.h to i32
  %i.j = shl nsw i32 %.0.val, 1
  %.not53 = icmp eq i32 %i.j, %i.i
  br i1 %.not53, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %0) ; 0 uses
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.l = add i32 %.0.val, -6
  %or.cond = icmp ult i32 %i.l, -4
  br i1 %or.cond, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %.0.val, -1                  ; 17 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.p = load ptr, ptr %0, align 8, !tbaa !35     ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = lshr exact i64 %i.s, 2
  %i.u = trunc i64 %i.t to i32
  %i.v = shl nuw nsw i32 %i.m, 1
  %.not50 = icmp eq i32 %i.v, %i.u
  br i1 %.not50, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.w = icmp eq i32 %2, 2
  %i.x = add nsw i32 %.0.val, -2                  ; 4 uses
  %i.y = select i1 %i.w, i32 1, i32 %i.x          ; 2 uses
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !36
  %.not51 = icmp eq i32 %i.ab, 0
  br i1 %.not51, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = add nuw nsw i32 %i.y, %i.m
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !36
  %.not52 = icmp eq i32 %i.af, 0
  br i1 %.not52, label %.lr.ph, label %bb.h

.lr.ph:                                           ; preds = %bb.g
  %i.ag = shl nuw nsw i32 %.0.val, 1
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !36
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ah, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.pre = load ptr, ptr %1, align 8, !tbaa !35    ; 15 uses
  %i.ai = icmp eq i32 %2, 4
  %i.aj = load ptr, ptr %0, align 8, !tbaa !35    ; 11 uses
  br i1 %i.ai, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ak = zext nneg i32 %i.m to i64
  %i.al = zext nneg i32 %.0.val to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ak ; 4 uses
  %invariant.gep12 = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.al ; 4 uses
  %i.am = load i32, ptr %i.aj, align 4, !tbaa !36
  store i32 %i.am, ptr %.pre, align 4, !tbaa !36
  %i.an = load i32, ptr %invariant.gep, align 4, !tbaa !36
  store i32 %i.an, ptr %invariant.gep12, align 4, !tbaa !36
  %exitcond.not = icmp eq i32 %i.m, 1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.1

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ao = zext nneg i32 %i.m to i64               ; 2 uses
  %i.ap = load i32, ptr %i.aj, align 4, !tbaa !36
  store i32 %i.ap, ptr %.pre, align 4, !tbaa !36
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ao
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !36
  %i.as = zext nneg i32 %.0.val to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.as
  store i32 %i.ar, ptr %i.at, align 4, !tbaa !36
  %exitcond8.peel.not = icmp eq i32 %i.m, 1
  br i1 %exitcond8.peel.not, label %._crit_edge, label %.lr.ph.split.us.peel.next

.lr.ph.split.us.peel.next:                        ; preds = %.lr.ph.split.us.preheader
  %invariant.gep14 = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ao ; 3 uses
  %i.au = icmp eq i32 %i.x, 1
  %spec.select.us = select i1 %i.au, i32 1, i32 2 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !36
  %i.ax = zext nneg i32 %spec.select.us to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ax
  store i32 %i.aw, ptr %i.ay, align 4, !tbaa !36
  %gep15 = getelementptr inbounds nuw i8, ptr %invariant.gep14, i64 4
  %i.az = load i32, ptr %gep15, align 4, !tbaa !36
  %i.ba = add nuw nsw i32 %spec.select.us, %.0.val
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.bb
  store i32 %i.az, ptr %i.bc, align 4, !tbaa !36
  %exitcond8.not = icmp eq i32 %i.m, 2
  br i1 %exitcond8.not, label %._crit_edge, label %.lr.ph.split.us.1

.lr.ph.split.us.1:                                ; preds = %.lr.ph.split.us.peel.next
  %i.bd = icmp eq i32 %i.x, 2
  %spec.select.us.1 = select i1 %i.bd, i32 1, i32 3 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !36
  %i.bg = zext nneg i32 %spec.select.us.1 to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.bg
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !36
  %gep15.1 = getelementptr inbounds nuw i8, ptr %invariant.gep14, i64 8
  %i.bi = load i32, ptr %gep15.1, align 4, !tbaa !36
  %i.bj = add nuw nsw i32 %spec.select.us.1, %.0.val
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.bk
  store i32 %i.bi, ptr %i.bl, align 4, !tbaa !36
  %exitcond8.not.1 = icmp eq i32 %i.m, 3
  br i1 %exitcond8.not.1, label %._crit_edge, label %.lr.ph.split.us.2

.lr.ph.split.us.2:                                ; preds = %.lr.ph.split.us.1
  %i.bm = icmp eq i32 %i.x, 3
  %spec.select.us.2 = select i1 %i.bm, i32 1, i32 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !36
  %i.bp = zext nneg i32 %spec.select.us.2 to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.bp
  store i32 %i.bo, ptr %i.bq, align 4, !tbaa !36
  %gep15.2 = getelementptr inbounds nuw i8, ptr %invariant.gep14, i64 12
  %i.br = load i32, ptr %gep15.2, align 4, !tbaa !36
  %i.bs = add nuw nsw i32 %spec.select.us.2, %.0.val
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.bt
  store i32 %i.br, ptr %i.bu, align 4, !tbaa !36
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split.preheader, %.lr.ph.split.1, %.lr.ph.split.2, %.lr.ph.split.3, %.lr.ph.split.us.peel.next, %.lr.ph.split.us.1, %.lr.ph.split.us.2, %.lr.ph.split.us.preheader
  %.pre-phi.shrunk = phi i32 [ 1, %.lr.ph.split.us.preheader ], [ %i.m, %.lr.ph.split.us.peel.next ], [ %i.m, %.lr.ph.split.us.2 ], [ %i.m, %.lr.ph.split.us.1 ], [ %i.m, %.lr.ph.split.3 ], [ %i.m, %.lr.ph.split.2 ], [ %i.m, %.lr.ph.split.1 ], [ %i.m, %.lr.ph.split.preheader ]
  %.pre-phi = zext i32 %.pre-phi.shrunk to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.pre-phi
  store i32 0, ptr %i.bv, align 4, !tbaa !36
  %i.bw = getelementptr [4 x i8], ptr %.pre, i64 %i.ah
  %i.bx = getelementptr i8, ptr %i.bw, i64 -4
  store i32 0, ptr %i.bx, align 4, !tbaa !36
  br label %bb.h

.lr.ph.split.1:                                   ; preds = %.lr.ph.split.preheader
  %i.by = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !36
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !36
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4
  %i.cb = load i32, ptr %gep.1, align 4, !tbaa !36
  %gep13.1 = getelementptr inbounds nuw i8, ptr %invariant.gep12, i64 4
  store i32 %i.cb, ptr %gep13.1, align 4, !tbaa !36
  %exitcond.not.1 = icmp eq i32 %i.m, 2
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.split.2

.lr.ph.split.2:                                   ; preds = %.lr.ph.split.1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !36
  %i.ce = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !36
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 8
  %i.cf = load i32, ptr %gep.2, align 4, !tbaa !36
  %gep13.2 = getelementptr inbounds nuw i8, ptr %invariant.gep12, i64 8
  store i32 %i.cf, ptr %gep13.2, align 4, !tbaa !36
  %exitcond.not.2 = icmp eq i32 %i.m, 3
  br i1 %exitcond.not.2, label %._crit_edge, label %.lr.ph.split.3

.lr.ph.split.3:                                   ; preds = %.lr.ph.split.2
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !36
  %i.ci = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !36
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 12
  %i.cj = load i32, ptr %gep.3, align 4, !tbaa !36
  %gep13.3 = getelementptr inbounds nuw i8, ptr %invariant.gep12, i64 12
  store i32 %i.cj, ptr %gep13.3, align 4, !tbaa !36
  br label %._crit_edge

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g, %._crit_edge, %bb.d, %bb.b, %bb.c
  %.2 = phi i1 [ false, %bb.d ], [ true, %bb.c ], [ false, %bb.b ], [ false, %bb.e ], [ true, %._crit_edge ], [ false, %bb.g ], [ false, %bb.f ]
  ret i1 %.2
}

declare void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3dnn13Pad2LayerImpl11getOutShapeERKNS_8MatShapeERKSt6vectorIiSaIiEE(ptr dead_on_unwind noalias writable sret(%"struct.cv::MatShape") align 4 %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 4 dereferenceable(52) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  tail call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %0, ptr noundef nonnull align 4 dereferenceable(52) %2)
  %i.a = load i32, ptr %2, align 4, !tbaa !163    ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4, !tbaa !163
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1)
  %i.d = load ptr, ptr %3, align 8, !tbaa !35     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = zext nneg i32 %i.a to i64
  %wide.trip.count = zext nneg i32 %narrow.i to i64
  %wide.trip.count25 = zext nneg i32 %i.a to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.f
  br label %bb.c

bb.b:                                             ; preds = %_ZN2cv8MatShapeixEm.exit22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond26.not = icmp eq i64 %indvars.iv.next, %wide.trip.count25
  br i1 %exitcond26.not, label %._crit_edge, label %bb.c, !llvm.loop !256

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %bb.d, label %_ZN2cv8MatShapeixEm.exit22

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.42, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.43, i32 noundef 97) #24
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %4, align 8, !tbaa !28     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !22
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %common.resume

_ZN2cv8MatShapeixEm.exit22:                       ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !36
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.o = load i32, ptr %gep, align 4, !tbaa !36
  %i.p = add nsw i32 %i.o, %i.n
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !36
  %i.s = add nsw i32 %i.p, %i.r                   ; 2 uses
  store i32 %i.s, ptr %i.q, align 4, !tbaa !36
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %bb.b, label %bb.g

bb.g:                                             ; preds = %_ZN2cv8MatShapeixEm.exit22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv3dnn13Pad2LayerImpl11getOutShapeERKNS_8MatShapeERKSt6vectorIiSaIiEE, ptr noundef nonnull @.str.7, i32 noundef 701) #24
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %6, align 8, !tbaa !28     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.z = load i64, ptr %i.x, align 8, !tbaa !22
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.v, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %common.resume
}

declare noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52), ptr noundef nonnull align 4 dereferenceable(52)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cv3dnnL24getOutShapeBlockSemanticERKNS_8MatShapeERKSt6vectorIiSaIiEENS_10DataLayoutE(ptr dead_on_unwind noalias nonnull writable align 4 %0, ptr noundef nonnull align 4 dereferenceable(52) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !162
  %i.c = icmp eq i32 %i.b, 7
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.45, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZN2cv3dnnL24getOutShapeBlockSemanticERKNS_8MatShapeERKSt6vectorIiSaIiEENS_10DataLayoutE, ptr noundef nonnull @.str.7, i32 noundef 429) #24
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %16, align 8, !tbaa !28    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !22
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %common.resume
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS8_RS6_E3$_0E9_M_invokeERKSt9_Any_dataS3_":bb.a
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !59
  %i.ck = mul i64 %i.cj, %i.by                    ; 5 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ai, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !59
  %i.co = mul i64 %i.cn, %i.bz                    ; 5 uses
  %i.cp = getelementptr inbounds i8, ptr %i.cl, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !59
  %i.cs = mul i64 %i.cr, %.pre.i.i.i              ; 5 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cp, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !59
  %i.cw = mul i64 %i.cv, %indvars.iv173.i.i.i     ; 5 uses
  %i.cx = getelementptr inbounds i8, ptr %i.ct, i64 %i.cw ; 13 uses
  %i.cy = or i32 %i.cd, %i.ch
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %.preheader.us.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.da = load ptr, ptr %i.ay, align 8, !tbaa !298, !nonnull !195, !align !211 ; 4 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !59
  %i.dc = mul i64 %i.db, %i.ca                    ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %i.y, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !59
  %i.dg = mul i64 %i.df, %i.cb                    ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %i.dd, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !59
  %i.dk = mul i64 %i.dj, %.pre-phi179.i.i.i       ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.dh, i64 %i.dk
  %i.dm = sext i32 %i.ch to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !59
  %i.dp = mul i64 %i.do, %i.dm                    ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %i.dl, i64 %i.dp ; 13 uses
  br i1 %i.az, label %.preheader114.us.i.i.i, label %.preheader116.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph.us.i.i.i.preheader, %.lr.ph.us.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %.lr.ph.us.i.i.i ], [ 0, %.lr.ph.us.i.i.i.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.i.i.i ], [ 0, %.lr.ph.us.i.i.i.preheader ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i.i.i
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !36
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds i8, ptr %i.dq, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !22
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv.i.i.i
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !22
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !36
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds i8, ptr %i.dq, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !22
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv.next.i.i.i
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !22
  %indvars.iv.next.i.i.i.1 = or disjoint i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.1
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !36
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds i8, ptr %i.dq, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !22
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv.next.i.i.i.1
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !22
  %indvars.iv.next.i.i.i.2 = or disjoint i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.2
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !36
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds i8, ptr %i.dq, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !22
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv.next.i.i.i.2
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !22
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit115.us.i.i.i.loopexit.unr-lcssa, label %.lr.ph.us.i.i.i, !llvm.loop !280

.loopexit115.us.i.i.i.loopexit.unr-lcssa:         ; preds = %.lr.ph.us.i.i.i
  br i1 %lcmp.mod.not, label %.loopexit115.us.i.i.i, label %.lr.ph.us.i.i.i.epil.preheader

.lr.ph.us.i.i.i.epil.preheader:                   ; preds = %.loopexit115.us.i.i.i.loopexit.unr-lcssa, %.lr.ph.us.i.i.i.preheader
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.us.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.3, %.loopexit115.us.i.i.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod22)
  br label %.lr.ph.us.i.i.i.epil

.lr.ph.us.i.i.i.epil:                             ; preds = %.lr.ph.us.i.i.i.epil, %.lr.ph.us.i.i.i.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.next.i.i.i.epil, %.lr.ph.us.i.i.i.epil ], [ %indvars.iv.i.i.i.epil.init, %.lr.ph.us.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.us.i.i.i.epil ], [ 0, %.lr.ph.us.i.i.i.epil.preheader ]
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i.i.i.epil
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !36
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds i8, ptr %i.dq, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !22
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv.i.i.i.epil
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !22
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit115.us.i.i.i, label %.lr.ph.us.i.i.i.epil, !llvm.loop !281

.loopexit115.us.i.i.i:                            ; preds = %.loopexit115.us.i.i.i.loopexit.unr-lcssa, %.lr.ph.us.i.i.i.epil, %.preheader116.us.i.i.i, %.lr.ph120.us.preheader.i.i.i, %.preheader114.us.i.i.i
  %.3.us.i.i.i = phi i32 [ 0, %.preheader114.us.i.i.i ], [ %i.an, %.lr.ph120.us.preheader.i.i.i ], [ 0, %.preheader116.us.i.i.i ], [ %i.an, %.lr.ph.us.i.i.i.epil ], [ %i.an, %.loopexit115.us.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %i.ev = icmp slt i32 %.3.us.i.i.i, %i.bb
  br i1 %i.ev, label %iter.check, label %._crit_edge.us.i.i.i

iter.check:                                       ; preds = %.loopexit115.us.i.i.i
  %i.ew = zext nneg i32 %.3.us.i.i.i to i64       ; 8 uses
  %i.ex = add nuw nsw i64 %i.ew, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ex, i64 %i.bf)
  %i.ey = sub nsw i64 %umax, %i.ew                ; 7 uses
  %min.iters.check = icmp ult i64 %i.ey, 8
  br i1 %min.iters.check, label %.lr.ph123.us.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ez = add i64 %i.bh, %i.cw
  %i.fa = add i64 %i.ez, %i.ck
  %i.fb = add i64 %i.fa, %i.co
  %i.fc = add i64 %i.fb, %i.cs
  %i.fd = add i64 %i.dk, %i.z
  %i.fe = add i64 %i.fd, %i.dc
  %i.ff = add i64 %i.fe, %i.dg
  %i.fg = add i64 %i.ff, %i.dp
  %i.fh = sub i64 %i.fg, %i.fc
  %diff.check = icmp ugt i64 %i.fh, -32
  br i1 %diff.check, label %.lr.ph123.us.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check13 = icmp ult i64 %i.ey, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fi = and i64 %i.ey, 24
  %n.vec = and i64 %i.ey, -32                     ; 4 uses
  %i.fj = add nsw i64 %n.vec, %i.ew               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fk = add nuw i64 %index, %i.ew               ; 2 uses
  %i.fl = sub nsw i64 %i.fk, %i.be
  %i.fm = getelementptr inbounds i8, ptr %i.dq, i64 %i.fl ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %wide.load = load <16 x i8>, ptr %i.fm, align 1, !tbaa !22
  %wide.load14 = load <16 x i8>, ptr %i.fn, align 1, !tbaa !22
  %i.fo = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.fk ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store <16 x i8> %wide.load, ptr %i.fo, align 1, !tbaa !22
  store <16 x i8> %wide.load14, ptr %i.fp, align 1, !tbaa !22
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %middle.block, label %vector.body, !llvm.loop !282

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ey, %n.vec
  br i1 %cmp.n, label %._crit_edge.us.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fi, 0
  br i1 %min.epilog.iters.check, label %.lr.ph123.us.i.i.i.preheader, label %vec.epilog.ph, !prof !299

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %i.ey, -8                    ; 3 uses
  %i.fr = add nsw i64 %n.vec15, %i.ew             ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 2 uses
  %i.fs = add nuw i64 %index16, %i.ew             ; 2 uses
  %i.ft = sub nsw i64 %i.fs, %i.be
  %i.fu = getelementptr inbounds i8, ptr %i.dq, i64 %i.ft
  %wide.load17 = load <8 x i8>, ptr %i.fu, align 1, !tbaa !22
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.fs
  store <8 x i8> %wide.load17, ptr %i.fv, align 1, !tbaa !22
  %index.next18 = add nuw i64 %index16, 8         ; 2 uses
  %i.fw = icmp eq i64 %index.next18, %n.vec15
  br i1 %i.fw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !283

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %i.ey, %n.vec15
  br i1 %cmp.n19, label %._crit_edge.us.loopexit.i.i.i, label %.lr.ph123.us.i.i.i.preheader

.lr.ph123.us.i.i.i.preheader:                     ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv159.i.i.i.ph = phi i64 [ %i.ew, %iter.check ], [ %i.ew, %vector.memcheck ], [ %i.fj, %vec.epilog.iter.check ], [ %i.fr, %vec.epilog.middle.block ]
  br label %.lr.ph123.us.i.i.i

.lr.ph123.us.i.i.i:                               ; preds = %.lr.ph123.us.i.i.i.preheader, %.lr.ph123.us.i.i.i
  %indvars.iv159.i.i.i = phi i64 [ %indvars.iv.next160.i.i.i, %.lr.ph123.us.i.i.i ], [ %indvars.iv159.i.i.i.ph, %.lr.ph123.us.i.i.i.preheader ] ; 3 uses
  %i.fx = sub nsw i64 %indvars.iv159.i.i.i, %i.be
  %i.fy = getelementptr inbounds i8, ptr %i.dq, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !22
  %i.ga = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv159.i.i.i
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !22
  %indvars.iv.next160.i.i.i = add nuw nsw i64 %indvars.iv159.i.i.i, 1 ; 3 uses
  %i.gb = icmp samesign ult i64 %indvars.iv.next160.i.i.i, %i.bf
  br i1 %i.gb, label %.lr.ph123.us.i.i.i, label %._crit_edge.us.loopexit.i.i.i, !llvm.loop !284

._crit_edge.us.loopexit.i.i.i:                    ; preds = %.lr.ph123.us.i.i.i, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next160.i.i.i.lcssa = phi i64 [ %i.fr, %vec.epilog.middle.block ], [ %i.fj, %middle.block ], [ %indvars.iv.next160.i.i.i, %.lr.ph123.us.i.i.i ]
  %i.gc = trunc nuw nsw i64 %indvars.iv.next160.i.i.i.lcssa to i32
  br label %._crit_edge.us.i.i.i

._crit_edge.us.i.i.i:                             ; preds = %._crit_edge.us.loopexit.i.i.i, %.loopexit115.us.i.i.i
  %.4.lcssa.us.i.i.i = phi i32 [ %.3.us.i.i.i, %.loopexit115.us.i.i.i ], [ %i.gc, %._crit_edge.us.loopexit.i.i.i ] ; 6 uses
  %i.gd = icmp slt i32 %.4.lcssa.us.i.i.i, %i.j   ; 2 uses
  br i1 %i.az, label %.preheader110.us.i.i.i, label %.preheader112.us.i.i.i

.lr.ph126.us.i.i.i:                               ; preds = %.lr.ph126.us.i.i.i.prol.loopexit, %.lr.ph126.us.i.i.i
  %indvars.iv162.i.i.i = phi i64 [ %indvars.iv.next163.i.i.i.3, %.lr.ph126.us.i.i.i ], [ %indvars.iv162.i.i.i.unr, %.lr.ph126.us.i.i.i.prol.loopexit ] ; 6 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv162.i.i.i
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !36
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds i8, ptr %i.dq, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !22
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv162.i.i.i
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !22
  %indvars.iv.next163.i.i.i = add nuw nsw i64 %indvars.iv162.i.i.i, 1 ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next163.i.i.i
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !36
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds i8, ptr %i.dq, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !22
  %i.gp = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv.next163.i.i.i
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !22
  %indvars.iv.next163.i.i.i.1 = add nuw nsw i64 %indvars.iv162.i.i.i, 2 ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next163.i.i.i.1
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !36
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds i8, ptr %i.dq, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !22
  %i.gv = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv.next163.i.i.i.1
  store i8 %i.gu, ptr %i.gv, align 1, !tbaa !22
  %indvars.iv.next163.i.i.i.2 = add nuw nsw i64 %indvars.iv162.i.i.i, 3 ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next163.i.i.i.2
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !36
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds i8, ptr %i.dq, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !22
  %i.hb = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv.next163.i.i.i.2
  store i8 %i.ha, ptr %i.hb, align 1, !tbaa !22
  %indvars.iv.next163.i.i.i.3 = add nuw nsw i64 %indvars.iv162.i.i.i, 4 ; 2 uses
  %i.hc = trunc nuw i64 %indvars.iv.next163.i.i.i.3 to i32
  %i.hd = icmp sgt i32 %i.j, %i.hc
  br i1 %i.hd, label %.lr.ph126.us.i.i.i, label %.loopexit.us.i.i.i, !llvm.loop !285

.loopexit.us.i.i.i:                               ; preds = %.lr.ph126.us.i.i.i.prol.loopexit, %.lr.ph126.us.i.i.i, %.preheader112.us.i.i.i, %.lr.ph128.us.preheader.i.i.i, %.preheader110.us.i.i.i, %.lr.ph130.us.preheader.i.i.i, %.preheader.us.i.i.i
  %indvars.iv.next174.i.i.i = add nuw nsw i64 %indvars.iv173.i.i.i, 1 ; 2 uses
  %exitcond177.not.i.i.i = icmp eq i64 %indvars.iv.next174.i.i.i, %wide.trip.count176.i.i.i
  br i1 %exitcond177.not.i.i.i, label %._crit_edge134.us.i.i.i, label %bb.g, !llvm.loop !286

.preheader.us.i.i.i:                              ; preds = %bb.i
  br i1 %i.bc, label %.lr.ph130.us.preheader.i.i.i, label %.loopexit.us.i.i.i

.lr.ph130.us.preheader.i.i.i:                     ; preds = %.preheader.us.i.i.i
  %i.he = getelementptr i8, ptr %i.ai, i64 %i.cw
  %i.hf = getelementptr i8, ptr %i.he, i64 %i.cs
  %i.hg = getelementptr i8, ptr %i.hf, i64 %i.co
  %scevgep169.i.i.i = getelementptr i8, ptr %i.hg, i64 %i.ck
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep169.i.i.i, i8 %i.ae, i64 %i.bg, i1 false), !tbaa !22
  br label %.loopexit.us.i.i.i

.preheader110.us.i.i.i:                           ; preds = %._crit_edge.us.i.i.i
  br i1 %i.gd, label %.lr.ph128.us.preheader.i.i.i, label %.loopexit.us.i.i.i

.lr.ph128.us.preheader.i.i.i:                     ; preds = %.preheader110.us.i.i.i
  %i.hh = zext i32 %.4.lcssa.us.i.i.i to i64
  %i.hi = getelementptr i8, ptr %i.ai, i64 %i.cw
  %i.hj = getelementptr i8, ptr %i.hi, i64 %i.cs
  %i.hk = getelementptr i8, ptr %i.hj, i64 %i.co
  %i.hl = getelementptr i8, ptr %i.hk, i64 %i.ck
  %scevgep165.i.i.i = getelementptr i8, ptr %i.hl, i64 %i.hh
  %i.hm = xor i32 %.4.lcssa.us.i.i.i, -1
  %i.hn = add i32 %i.j, %i.hm
  %i.ho = zext i32 %i.hn to i64
  %i.hp = add nuw nsw i64 %i.ho, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep165.i.i.i, i8 %i.ae, i64 %i.hp, i1 false), !tbaa !22
  br label %.loopexit.us.i.i.i

.preheader112.us.i.i.i:                           ; preds = %._crit_edge.us.i.i.i
  br i1 %i.gd, label %.lr.ph126.us.preheader.i.i.i, label %.loopexit.us.i.i.i

.lr.ph126.us.preheader.i.i.i:                     ; preds = %.preheader112.us.i.i.i
  %i.hq = zext i32 %.4.lcssa.us.i.i.i to i64      ; 2 uses
  %i.hr = sub i32 %i.j, %.4.lcssa.us.i.i.i
  %xtraiter23 = and i32 %i.hr, 3                  ; 2 uses
  %lcmp.mod24.not = icmp eq i32 %xtraiter23, 0
  br i1 %lcmp.mod24.not, label %.lr.ph126.us.i.i.i.prol.loopexit, label %.lr.ph126.us.i.i.i.prol

.lr.ph126.us.i.i.i.prol:                          ; preds = %.lr.ph126.us.preheader.i.i.i, %.lr.ph126.us.i.i.i.prol
  %indvars.iv162.i.i.i.prol = phi i64 [ %indvars.iv.next163.i.i.i.prol, %.lr.ph126.us.i.i.i.prol ], [ %i.hq, %.lr.ph126.us.preheader.i.i.i ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph126.us.i.i.i.prol ], [ 0, %.lr.ph126.us.preheader.i.i.i ]
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv162.i.i.i.prol
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !36
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds i8, ptr %i.dq, i64 %i.hu
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !22
  %i.hx = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv162.i.i.i.prol
  store i8 %i.hw, ptr %i.hx, align 1, !tbaa !22
  %indvars.iv.next163.i.i.i.prol = add nuw nsw i64 %indvars.iv162.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter23
  br i1 %prol.iter.cmp.not, label %.lr.ph126.us.i.i.i.prol.loopexit, label %.lr.ph126.us.i.i.i.prol, !llvm.loop !287

.lr.ph126.us.i.i.i.prol.loopexit:                 ; preds = %.lr.ph126.us.i.i.i.prol, %.lr.ph126.us.preheader.i.i.i
  %indvars.iv162.i.i.i.unr = phi i64 [ %i.hq, %.lr.ph126.us.preheader.i.i.i ], [ %indvars.iv.next163.i.i.i.prol, %.lr.ph126.us.i.i.i.prol ]
  %i.hy = sub i32 %.4.lcssa.us.i.i.i, %i.j
  %i.hz = icmp ugt i32 %i.hy, -4
  br i1 %i.hz, label %.loopexit.us.i.i.i, label %.lr.ph126.us.i.i.i

.preheader114.us.i.i.i:                           ; preds = %bb.j
  br i1 %i.ba, label %.lr.ph120.us.preheader.i.i.i, label %.loopexit115.us.i.i.i

.lr.ph120.us.preheader.i.i.i:                     ; preds = %.preheader114.us.i.i.i
  %i.ia = getelementptr i8, ptr %i.ai, i64 %i.cw
  %i.ib = getelementptr i8, ptr %i.ia, i64 %i.cs
  %i.ic = getelementptr i8, ptr %i.ib, i64 %i.co
  %scevgep.i.i.i = getelementptr i8, ptr %i.ic, i64 %i.ck
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i.i.i, i8 %i.ae, i64 %i.bd, i1 false), !tbaa !22
  br label %.loopexit115.us.i.i.i

.preheader116.us.i.i.i:                           ; preds = %bb.j
  br i1 %i.ba, label %.lr.ph.us.i.i.i.preheader, label %.loopexit115.us.i.i.i

.lr.ph.us.i.i.i.preheader:                        ; preds = %.preheader116.us.i.i.i
  br i1 %i.bi, label %.lr.ph.us.i.i.i.epil.preheader, label %.lr.ph.us.i.i.i

._crit_edge134.us.i.i.i:                          ; preds = %.loopexit.us.i.i.i
  %i.id = add nsw i32 %.091135.us.i.i.i, 1        ; 2 uses
  %i.ie = load i32, ptr %i.ap, align 4, !tbaa !199
  %i.if = icmp slt i32 %i.id, %i.ie
  br i1 %i.if, label %.lr.ph137.split.us.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS4_RS2_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit", !llvm.loop !288

"_ZSt10__invoke_rIvRZN2cv3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS4_RS2_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit": ; preds = %._crit_edge134.us.i.i.i, %bb.a, %.lr.ph137.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS8_RS6_E3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL3padERKNS1_3MatERKSt6vectorIiSaIiEEiS5_RS3_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnnL3padERKNS_3MatERKSt6vectorIiSaIiEEiS3_RS1_E3$_0", ptr %0, align 8, !tbaa !214
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL3padERKNS1_3MatERKSt6vectorIiSaIiEEiS5_RS3_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !206
  store ptr %.val, ptr %0, align 8, !tbaa !206
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL3padERKNS1_3MatERKSt6vectorIiSaIiEEiS5_RS3_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #21 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %.val6, i64 72, i1 false), !tbaa.struct !215
  store ptr %i.a, ptr %0, align 8, !tbaa !206
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL3padERKNS1_3MatERKSt6vectorIiSaIiEEiS5_RS3_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !206 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL3padERKNS1_3MatERKSt6vectorIiSaIiEEiS5_RS3_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 72) #22
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL3padERKNS1_3MatERKSt6vectorIiSaIiEEiS5_RS3_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL3padERKNS1_3MatERKSt6vectorIiSaIiEEiS5_RS3_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS8_RS6_E3$_1E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #16 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !206   ; 9 uses
  %.val2 = load i32, ptr %1, align 4, !tbaa !198  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3 = load i32, ptr %i.a, align 4            ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !319, !nonnull !195, !align !210 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !36   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !36   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !36   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load i32, ptr %i.j, align 4, !tbaa !36   ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !320, !nonnull !195, !align !211 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !35   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !35   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 72
end_hunk_1
begin_hunk_2_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS8_RS6_E3$_1E9_M_invokeERKSt9_Any_dataS3_":bb.a
  br i1 %.not98.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv74.i.i.i
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !36
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dh = phi i32 [ %i.dg, %bb.i ], [ %i.de, %bb.h ] ; 2 uses
  %i.di = mul nsw i64 %indvars.iv74.i.i.i, %i.bi
  %i.dj = getelementptr inbounds [2 x i8], ptr %i.cr, i64 %i.di ; 22 uses
  %i.dk = or i32 %i.cv, %i.dh
  %i.dl = icmp slt i32 %i.dk, 0
  br i1 %i.dl, label %.preheader.us.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dm = load ptr, ptr %i.av, align 8, !tbaa !327, !nonnull !195, !align !211 ; 4 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !59
  %i.do = mul i64 %i.dn, %i.cs                    ; 2 uses
  %i.dp = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !59
  %i.ds = mul i64 %i.dr, %i.ct                    ; 2 uses
  %i.dt = getelementptr inbounds [2 x i8], ptr %i.dp, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !59
  %i.dw = mul i64 %i.dv, %.pre-phi81.i.i.i        ; 2 uses
  %i.dx = getelementptr inbounds [2 x i8], ptr %i.dt, i64 %i.dw
  %i.dy = sext i32 %i.dh to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !59
  %i.eb = mul i64 %i.ea, %i.dy                    ; 2 uses
  %i.ec = getelementptr inbounds [2 x i8], ptr %i.dx, i64 %i.eb ; 13 uses
  br i1 %i.aw, label %.preheader15.us.i.i.i, label %.preheader17.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph.us.i.i.i.preheader, %.lr.ph.us.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %.lr.ph.us.i.i.i ], [ 0, %.lr.ph.us.i.i.i.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.i.i.i ], [ 0, %.lr.ph.us.i.i.i.preheader ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i.i.i
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !36
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [2 x i8], ptr %i.ec, i64 %i.ef
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !217
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv.i.i.i
  store i16 %i.eh, ptr %i.ei, align 2, !tbaa !217
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !36
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [2 x i8], ptr %i.ec, i64 %i.el
  %i.en = load i16, ptr %i.em, align 2, !tbaa !217
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv.next.i.i.i
  store i16 %i.en, ptr %i.eo, align 2, !tbaa !217
  %indvars.iv.next.i.i.i.1 = or disjoint i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.1
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !36
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [2 x i8], ptr %i.ec, i64 %i.er
  %i.et = load i16, ptr %i.es, align 2, !tbaa !217
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv.next.i.i.i.1
  store i16 %i.et, ptr %i.eu, align 2, !tbaa !217
  %indvars.iv.next.i.i.i.2 = or disjoint i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.2
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !36
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [2 x i8], ptr %i.ec, i64 %i.ex
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !217
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv.next.i.i.i.2
  store i16 %i.ez, ptr %i.fa, align 2, !tbaa !217
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit16.us.i.i.i.loopexit117.unr-lcssa, label %.lr.ph.us.i.i.i, !llvm.loop !300

.lr.ph21.us.i.i.i:                                ; preds = %.lr.ph21.us.i.i.i.preheader, %.lr.ph21.us.i.i.i
  %indvars.iv52.i.i.i = phi i64 [ %indvars.iv.next53.i.i.i, %.lr.ph21.us.i.i.i ], [ %indvars.iv52.i.i.i.ph, %.lr.ph21.us.i.i.i.preheader ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv52.i.i.i
  store i16 %i.af, ptr %i.fb, align 2, !tbaa !217
  %indvars.iv.next53.i.i.i = add nuw nsw i64 %indvars.iv52.i.i.i, 1 ; 2 uses
  %exitcond56.not.i.i.i = icmp eq i64 %indvars.iv.next53.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond56.not.i.i.i, label %.loopexit16.us.i.i.i, label %.lr.ph21.us.i.i.i, !llvm.loop !301

.loopexit16.us.i.i.i.loopexit117.unr-lcssa:       ; preds = %.lr.ph.us.i.i.i
  br i1 %lcmp.mod.not, label %.loopexit16.us.i.i.i, label %.lr.ph.us.i.i.i.epil.preheader

.lr.ph.us.i.i.i.epil.preheader:                   ; preds = %.loopexit16.us.i.i.i.loopexit117.unr-lcssa, %.lr.ph.us.i.i.i.preheader
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.us.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.3, %.loopexit16.us.i.i.i.loopexit117.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod119)
  br label %.lr.ph.us.i.i.i.epil

.lr.ph.us.i.i.i.epil:                             ; preds = %.lr.ph.us.i.i.i.epil, %.lr.ph.us.i.i.i.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.next.i.i.i.epil, %.lr.ph.us.i.i.i.epil ], [ %indvars.iv.i.i.i.epil.init, %.lr.ph.us.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.us.i.i.i.epil ], [ 0, %.lr.ph.us.i.i.i.epil.preheader ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i.i.i.epil
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !36
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [2 x i8], ptr %i.ec, i64 %i.fe
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !217
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv.i.i.i.epil
  store i16 %i.fg, ptr %i.fh, align 2, !tbaa !217
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit16.us.i.i.i, label %.lr.ph.us.i.i.i.epil, !llvm.loop !302

.loopexit16.us.i.i.i:                             ; preds = %.loopexit16.us.i.i.i.loopexit117.unr-lcssa, %.lr.ph.us.i.i.i.epil, %.lr.ph21.us.i.i.i, %middle.block98, %vec.epilog.middle.block112, %.preheader17.us.i.i.i, %.preheader15.us.i.i.i
  %.3.us.i.i.i = phi i32 [ 0, %.preheader15.us.i.i.i ], [ %i.ao, %middle.block98 ], [ 0, %.preheader17.us.i.i.i ], [ %i.ao, %.lr.ph21.us.i.i.i ], [ %i.ao, %vec.epilog.middle.block112 ], [ %i.ao, %.lr.ph.us.i.i.i.epil ], [ %i.ao, %.loopexit16.us.i.i.i.loopexit117.unr-lcssa ] ; 3 uses
  %i.fi = icmp slt i32 %.3.us.i.i.i, %i.ay
  br i1 %i.fi, label %iter.check75, label %._crit_edge.us.i.i.i

iter.check75:                                     ; preds = %.loopexit16.us.i.i.i
  %i.fj = zext nneg i32 %.3.us.i.i.i to i64       ; 8 uses
  %i.fk = add nuw nsw i64 %i.fj, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.fk, i64 %i.bk)
  %i.fl = sub nsw i64 %umax, %i.fj                ; 7 uses
  %min.iters.check62 = icmp ult i64 %i.fl, 4
  br i1 %min.iters.check62, label %.lr.ph24.us.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check75
  %i.fm = add i64 %i.dw, %i.do
  %i.fn = add i64 %i.fm, %i.ds
  %i.fo = add i64 %i.fn, %i.eb
  %i.fp = shl i64 %i.fo, 1
  %i.fq = sub i64 %i.fp, %i.dd
  %diff.check = icmp ugt i64 %i.fq, -32
  br i1 %diff.check, label %.lr.ph24.us.i.i.i.preheader, label %vector.main.loop.iter.check63

vector.main.loop.iter.check63:                    ; preds = %vector.memcheck
  %min.iters.check64 = icmp ult i64 %i.fl, 16
  br i1 %min.iters.check64, label %vec.epilog.ph79, label %vector.ph65

vector.ph65:                                      ; preds = %vector.main.loop.iter.check63
  %i.fr = and i64 %i.fl, 12
  %n.vec66 = and i64 %i.fl, -16                   ; 4 uses
  %i.fs = add nsw i64 %n.vec66, %i.fj             ; 2 uses
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph65
  %index68 = phi i64 [ 0, %vector.ph65 ], [ %index.next70, %vector.body67 ] ; 2 uses
  %i.ft = add nuw i64 %index68, %i.fj             ; 2 uses
  %i.fu = sub nsw i64 %i.ft, %i.bj
  %i.fv = getelementptr inbounds [2 x i8], ptr %i.ec, i64 %i.fu ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %wide.load = load <8 x i16>, ptr %i.fv, align 2, !tbaa !217
  %wide.load69 = load <8 x i16>, ptr %i.fw, align 2, !tbaa !217
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.ft ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store <8 x i16> %wide.load, ptr %i.fx, align 2, !tbaa !217
  store <8 x i16> %wide.load69, ptr %i.fy, align 2, !tbaa !217
  %index.next70 = add nuw i64 %index68, 16        ; 2 uses
  %i.fz = icmp eq i64 %index.next70, %n.vec66
  br i1 %i.fz, label %middle.block71, label %vector.body67, !llvm.loop !303

middle.block71:                                   ; preds = %vector.body67
  %cmp.n72 = icmp eq i64 %i.fl, %n.vec66
  br i1 %cmp.n72, label %._crit_edge.us.loopexit.i.i.i, label %vec.epilog.iter.check77

vec.epilog.iter.check77:                          ; preds = %middle.block71
  %min.epilog.iters.check78 = icmp eq i64 %i.fr, 0
  br i1 %min.epilog.iters.check78, label %.lr.ph24.us.i.i.i.preheader, label %vec.epilog.ph79, !prof !218

vec.epilog.ph79:                                  ; preds = %vector.main.loop.iter.check63, %vec.epilog.iter.check77
  %vec.epilog.resume.val73 = phi i64 [ %n.vec66, %vec.epilog.iter.check77 ], [ 0, %vector.main.loop.iter.check63 ]
  %n.vec80 = and i64 %i.fl, -4                    ; 3 uses
  %i.ga = add nsw i64 %n.vec80, %i.fj             ; 2 uses
  br label %vec.epilog.vector.body81

vec.epilog.vector.body81:                         ; preds = %vec.epilog.vector.body81, %vec.epilog.ph79
  %index82 = phi i64 [ %vec.epilog.resume.val73, %vec.epilog.ph79 ], [ %index.next84, %vec.epilog.vector.body81 ] ; 2 uses
  %i.gb = add nuw i64 %index82, %i.fj             ; 2 uses
  %i.gc = sub nsw i64 %i.gb, %i.bj
  %i.gd = getelementptr inbounds [2 x i8], ptr %i.ec, i64 %i.gc
  %wide.load83 = load <4 x i16>, ptr %i.gd, align 2, !tbaa !217
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.gb
  store <4 x i16> %wide.load83, ptr %i.ge, align 2, !tbaa !217
  %index.next84 = add nuw i64 %index82, 4         ; 2 uses
  %i.gf = icmp eq i64 %index.next84, %n.vec80
  br i1 %i.gf, label %vec.epilog.middle.block85, label %vec.epilog.vector.body81, !llvm.loop !304

vec.epilog.middle.block85:                        ; preds = %vec.epilog.vector.body81
  %cmp.n86 = icmp eq i64 %i.fl, %n.vec80
  br i1 %cmp.n86, label %._crit_edge.us.loopexit.i.i.i, label %.lr.ph24.us.i.i.i.preheader

.lr.ph24.us.i.i.i.preheader:                      ; preds = %vector.memcheck, %iter.check75, %vec.epilog.iter.check77, %vec.epilog.middle.block85
  %indvars.iv60.i.i.i.ph = phi i64 [ %i.fj, %iter.check75 ], [ %i.fj, %vector.memcheck ], [ %i.fs, %vec.epilog.iter.check77 ], [ %i.ga, %vec.epilog.middle.block85 ]
  br label %.lr.ph24.us.i.i.i

.lr.ph24.us.i.i.i:                                ; preds = %.lr.ph24.us.i.i.i.preheader, %.lr.ph24.us.i.i.i
  %indvars.iv60.i.i.i = phi i64 [ %indvars.iv.next61.i.i.i, %.lr.ph24.us.i.i.i ], [ %indvars.iv60.i.i.i.ph, %.lr.ph24.us.i.i.i.preheader ] ; 3 uses
  %i.gg = sub nsw i64 %indvars.iv60.i.i.i, %i.bj
  %i.gh = getelementptr inbounds [2 x i8], ptr %i.ec, i64 %i.gg
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !217
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv60.i.i.i
  store i16 %i.gi, ptr %i.gj, align 2, !tbaa !217
  %indvars.iv.next61.i.i.i = add nuw nsw i64 %indvars.iv60.i.i.i, 1 ; 3 uses
  %i.gk = icmp samesign ult i64 %indvars.iv.next61.i.i.i, %i.bk
  br i1 %i.gk, label %.lr.ph24.us.i.i.i, label %._crit_edge.us.loopexit.i.i.i, !llvm.loop !305

._crit_edge.us.loopexit.i.i.i:                    ; preds = %.lr.ph24.us.i.i.i, %vec.epilog.middle.block85, %middle.block71
  %indvars.iv.next61.i.i.i.lcssa = phi i64 [ %i.ga, %vec.epilog.middle.block85 ], [ %i.fs, %middle.block71 ], [ %indvars.iv.next61.i.i.i, %.lr.ph24.us.i.i.i ]
  %i.gl = trunc nuw nsw i64 %indvars.iv.next61.i.i.i.lcssa to i32
  br label %._crit_edge.us.i.i.i

._crit_edge.us.i.i.i:                             ; preds = %._crit_edge.us.loopexit.i.i.i, %.loopexit16.us.i.i.i
  %.4.lcssa.us.i.i.i = phi i32 [ %.3.us.i.i.i, %.loopexit16.us.i.i.i ], [ %i.gl, %._crit_edge.us.loopexit.i.i.i ] ; 6 uses
  %i.gm = icmp slt i32 %.4.lcssa.us.i.i.i, %i.k   ; 2 uses
  br i1 %i.aw, label %.preheader11.us.i.i.i, label %.preheader13.us.i.i.i

.lr.ph27.us.i.i.i:                                ; preds = %.lr.ph27.us.i.i.i.prol.loopexit, %.lr.ph27.us.i.i.i
  %indvars.iv63.i.i.i = phi i64 [ %indvars.iv.next64.i.i.i.3, %.lr.ph27.us.i.i.i ], [ %indvars.iv63.i.i.i.unr, %.lr.ph27.us.i.i.i.prol.loopexit ] ; 6 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv63.i.i.i
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !36
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds [2 x i8], ptr %i.ec, i64 %i.gp
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !217
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv63.i.i.i
  store i16 %i.gr, ptr %i.gs, align 2, !tbaa !217
  %indvars.iv.next64.i.i.i = add nuw nsw i64 %indvars.iv63.i.i.i, 1 ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next64.i.i.i
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !36
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [2 x i8], ptr %i.ec, i64 %i.gv
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !217
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv.next64.i.i.i
  store i16 %i.gx, ptr %i.gy, align 2, !tbaa !217
  %indvars.iv.next64.i.i.i.1 = add nuw nsw i64 %indvars.iv63.i.i.i, 2 ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next64.i.i.i.1
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !36
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [2 x i8], ptr %i.ec, i64 %i.hb
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !217
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv.next64.i.i.i.1
  store i16 %i.hd, ptr %i.he, align 2, !tbaa !217
  %indvars.iv.next64.i.i.i.2 = add nuw nsw i64 %indvars.iv63.i.i.i, 3 ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next64.i.i.i.2
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !36
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds [2 x i8], ptr %i.ec, i64 %i.hh
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !217
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv.next64.i.i.i.2
  store i16 %i.hj, ptr %i.hk, align 2, !tbaa !217
  %indvars.iv.next64.i.i.i.3 = add nuw nsw i64 %indvars.iv63.i.i.i, 4 ; 2 uses
  %i.hl = trunc nuw i64 %indvars.iv.next64.i.i.i.3 to i32
  %i.hm = icmp sgt i32 %i.k, %i.hl
  br i1 %i.hm, label %.lr.ph27.us.i.i.i, label %.loopexit.us.i.i.i, !llvm.loop !306

.lr.ph29.us.i.i.i:                                ; preds = %.lr.ph29.us.i.i.i.preheader, %.lr.ph29.us.i.i.i
  %indvars.iv66.i.i.i = phi i64 [ %indvars.iv.next67.i.i.i, %.lr.ph29.us.i.i.i ], [ %indvars.iv66.i.i.i.ph, %.lr.ph29.us.i.i.i.preheader ] ; 2 uses
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv66.i.i.i
  store i16 %i.af, ptr %i.hn, align 2, !tbaa !217
  %indvars.iv.next67.i.i.i = add nuw nsw i64 %indvars.iv66.i.i.i, 1 ; 2 uses
  %i.ho = trunc nuw i64 %indvars.iv.next67.i.i.i to i32
  %i.hp = icmp sgt i32 %i.k, %i.ho
  br i1 %i.hp, label %.lr.ph29.us.i.i.i, label %.loopexit.us.i.i.i, !llvm.loop !307

.lr.ph31.us.i.i.i:                                ; preds = %.lr.ph31.us.i.i.i.preheader, %.lr.ph31.us.i.i.i
  %indvars.iv69.i.i.i = phi i64 [ %indvars.iv.next70.i.i.i, %.lr.ph31.us.i.i.i ], [ %indvars.iv69.i.i.i.ph, %.lr.ph31.us.i.i.i.preheader ] ; 2 uses
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv69.i.i.i
  store i16 %i.af, ptr %i.hq, align 2, !tbaa !217
  %indvars.iv.next70.i.i.i = add nuw nsw i64 %indvars.iv69.i.i.i, 1 ; 2 uses
  %exitcond73.not.i.i.i = icmp eq i64 %indvars.iv.next70.i.i.i, %wide.trip.count72.i.i.i
  br i1 %exitcond73.not.i.i.i, label %.loopexit.us.i.i.i, label %.lr.ph31.us.i.i.i, !llvm.loop !308

.loopexit.us.i.i.i:                               ; preds = %.lr.ph27.us.i.i.i.prol.loopexit, %.lr.ph27.us.i.i.i, %.lr.ph29.us.i.i.i, %.lr.ph31.us.i.i.i, %middle.block44, %vec.epilog.middle.block59, %middle.block, %vec.epilog.middle.block, %.preheader13.us.i.i.i, %.preheader11.us.i.i.i, %.preheader.us.i.i.i
  %indvars.iv.next75.i.i.i = add nuw nsw i64 %indvars.iv74.i.i.i, 1 ; 2 uses
  %exitcond78.not.i.i.i = icmp eq i64 %indvars.iv.next75.i.i.i, %wide.trip.count77.i.i.i
  br i1 %exitcond78.not.i.i.i, label %._crit_edge35.us.i.i.i, label %bb.h, !llvm.loop !309

.preheader.us.i.i.i:                              ; preds = %bb.j
  br i1 %i.az, label %iter.check, label %.loopexit.us.i.i.i

iter.check:                                       ; preds = %.preheader.us.i.i.i
  br i1 %min.iters.check, label %.lr.ph31.us.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check27, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %index ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.hr, align 2, !tbaa !217
  store <8 x i16> %broadcast.splat, ptr %i.hs, align 2, !tbaa !217
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ht = icmp eq i64 %index.next, %n.vec
  br i1 %i.ht, label %middle.block, label %vector.body, !llvm.loop !310

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.us.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph31.us.i.i.i.preheader, label %vec.epilog.ph, !prof !218

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index31 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next32, %vec.epilog.vector.body ] ; 2 uses
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %index31
  store <4 x i16> %broadcast.splat30, ptr %i.hu, align 2, !tbaa !217
  %index.next32 = add nuw i64 %index31, 4         ; 2 uses
  %i.hv = icmp eq i64 %index.next32, %n.vec28
  br i1 %i.hv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !311

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n33, label %.loopexit.us.i.i.i, label %.lr.ph31.us.i.i.i.preheader

.lr.ph31.us.i.i.i.preheader:                      ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv69.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec28, %vec.epilog.middle.block ]
  br label %.lr.ph31.us.i.i.i

.preheader11.us.i.i.i:                            ; preds = %._crit_edge.us.i.i.i
  br i1 %i.gm, label %iter.check48, label %.loopexit.us.i.i.i

iter.check48:                                     ; preds = %.preheader11.us.i.i.i
  %i.hw = zext i32 %.4.lcssa.us.i.i.i to i64      ; 5 uses
  %i.hx = xor i32 %.4.lcssa.us.i.i.i, -1
  %i.hy = add i32 %i.k, %i.hx                     ; 3 uses
  %i.hz = zext i32 %i.hy to i64
  %i.ia = add nuw nsw i64 %i.hz, 1                ; 5 uses
  %min.iters.check34 = icmp ult i32 %i.hy, 3
  br i1 %min.iters.check34, label %.lr.ph29.us.i.i.i.preheader, label %vector.main.loop.iter.check35

vector.main.loop.iter.check35:                    ; preds = %iter.check48
  %min.iters.check36 = icmp ult i32 %i.hy, 15
  br i1 %min.iters.check36, label %vec.epilog.ph52, label %vector.ph37

vector.ph37:                                      ; preds = %vector.main.loop.iter.check35
  %i.ib = and i64 %i.ia, 12
  %n.vec38 = and i64 %i.ia, 8589934576            ; 4 uses
  %i.ic = add nuw nsw i64 %n.vec38, %i.hw
  %invariant.gep = getelementptr [2 x i8], ptr %i.dj, i64 %i.hw
  br label %vector.body41

vector.body41:                                    ; preds = %vector.body41, %vector.ph37
  %index42 = phi i64 [ 0, %vector.ph37 ], [ %index.next43, %vector.body41 ] ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index42 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <8 x i16> %broadcast.splat40, ptr %gep, align 2, !tbaa !217
  store <8 x i16> %broadcast.splat40, ptr %i.id, align 2, !tbaa !217
  %index.next43 = add nuw i64 %index42, 16        ; 2 uses
  %i.ie = icmp eq i64 %index.next43, %n.vec38
  br i1 %i.ie, label %middle.block44, label %vector.body41, !llvm.loop !312

middle.block44:                                   ; preds = %vector.body41
  %cmp.n45 = icmp eq i64 %i.ia, %n.vec38
  br i1 %cmp.n45, label %.loopexit.us.i.i.i, label %vec.epilog.iter.check50

vec.epilog.iter.check50:                          ; preds = %middle.block44
  %min.epilog.iters.check51 = icmp eq i64 %i.ib, 0
  br i1 %min.epilog.iters.check51, label %.lr.ph29.us.i.i.i.preheader, label %vec.epilog.ph52, !prof !218

vec.epilog.ph52:                                  ; preds = %vector.main.loop.iter.check35, %vec.epilog.iter.check50
  %vec.epilog.resume.val46 = phi i64 [ %n.vec38, %vec.epilog.iter.check50 ], [ 0, %vector.main.loop.iter.check35 ]
  %n.vec53 = and i64 %i.ia, 8589934588            ; 3 uses
  %i.if = add nuw nsw i64 %n.vec53, %i.hw
  %invariant.gep123 = getelementptr [2 x i8], ptr %i.dj, i64 %i.hw
  br label %vec.epilog.vector.body56

vec.epilog.vector.body56:                         ; preds = %vec.epilog.vector.body56, %vec.epilog.ph52
  %index57 = phi i64 [ %vec.epilog.resume.val46, %vec.epilog.ph52 ], [ %index.next58, %vec.epilog.vector.body56 ] ; 2 uses
  %gep124 = getelementptr [2 x i8], ptr %invariant.gep123, i64 %index57
  store <4 x i16> %broadcast.splat55, ptr %gep124, align 2, !tbaa !217
  %index.next58 = add nuw i64 %index57, 4         ; 2 uses
  %i.ig = icmp eq i64 %index.next58, %n.vec53
  br i1 %i.ig, label %vec.epilog.middle.block59, label %vec.epilog.vector.body56, !llvm.loop !313

vec.epilog.middle.block59:                        ; preds = %vec.epilog.vector.body56
  %cmp.n60 = icmp eq i64 %i.ia, %n.vec53
  br i1 %cmp.n60, label %.loopexit.us.i.i.i, label %.lr.ph29.us.i.i.i.preheader

.lr.ph29.us.i.i.i.preheader:                      ; preds = %iter.check48, %vec.epilog.iter.check50, %vec.epilog.middle.block59
  %indvars.iv66.i.i.i.ph = phi i64 [ %i.hw, %iter.check48 ], [ %i.ic, %vec.epilog.iter.check50 ], [ %i.if, %vec.epilog.middle.block59 ]
  br label %.lr.ph29.us.i.i.i

.preheader13.us.i.i.i:                            ; preds = %._crit_edge.us.i.i.i
  br i1 %i.gm, label %.lr.ph27.us.preheader.i.i.i, label %.loopexit.us.i.i.i

.lr.ph27.us.preheader.i.i.i:                      ; preds = %.preheader13.us.i.i.i
  %i.ih = zext i32 %.4.lcssa.us.i.i.i to i64      ; 2 uses
  %i.ii = sub i32 %i.k, %.4.lcssa.us.i.i.i
  %xtraiter120 = and i32 %i.ii, 3                 ; 2 uses
  %lcmp.mod121.not = icmp eq i32 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.lr.ph27.us.i.i.i.prol.loopexit, label %.lr.ph27.us.i.i.i.prol

.lr.ph27.us.i.i.i.prol:                           ; preds = %.lr.ph27.us.preheader.i.i.i, %.lr.ph27.us.i.i.i.prol
  %indvars.iv63.i.i.i.prol = phi i64 [ %indvars.iv.next64.i.i.i.prol, %.lr.ph27.us.i.i.i.prol ], [ %i.ih, %.lr.ph27.us.preheader.i.i.i ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph27.us.i.i.i.prol ], [ 0, %.lr.ph27.us.preheader.i.i.i ]
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv63.i.i.i.prol
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !36
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [2 x i8], ptr %i.ec, i64 %i.il
  %i.in = load i16, ptr %i.im, align 2, !tbaa !217
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv63.i.i.i.prol
  store i16 %i.in, ptr %i.io, align 2, !tbaa !217
  %indvars.iv.next64.i.i.i.prol = add nuw nsw i64 %indvars.iv63.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter120
  br i1 %prol.iter.cmp.not, label %.lr.ph27.us.i.i.i.prol.loopexit, label %.lr.ph27.us.i.i.i.prol, !llvm.loop !314

end_hunk_2
begin_hunk_3_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS8_RS6_E3$_2E9_M_invokeERKSt9_Any_dataS3_":bb.a
  %.pre178.i.i.i = sext i32 %i.ci to i64
  br label %.lr.ph133.us.i.i.i

.lr.ph133.us.i.i.i:                               ; preds = %bb.g, %bb.f
  %.pre-phi179.i.i.i = phi i64 [ %.pre178.i.i.i, %bb.g ], [ %.pre.i.i.i, %bb.f ]
  %i.cj = phi i32 [ %i.ci, %bb.g ], [ %i.bv, %bb.f ]
  %i.ck = sext i32 %i.by to i64                   ; 2 uses
  %i.cl = mul nsw i64 %i.be, %i.ck
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.cl
  %i.cn = sext i32 %i.bx to i64                   ; 2 uses
  %i.co = mul nsw i64 %i.bg, %i.cn
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.co
  %i.cq = mul nsw i64 %i.bi, %.pre.i.i.i
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = sext i32 %i.cc to i64
  %i.ct = sext i32 %i.cg to i64
  %i.cu = or i32 %i.cc, %i.cj
  %i.cv = or i32 %i.cu, %i.cg
  %i.cw = mul i64 %i.bq, %i.ck
  %i.cx = add i64 %i.bp, %i.cw
  %i.cy = mul i64 %i.br, %i.cn
  %i.cz = add i64 %i.cx, %i.cy
  %i.da = mul i64 %i.bs, %.pre.i.i.i
  %i.db = add i64 %i.cz, %i.da
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.us.i.i.i, %.lr.ph133.us.i.i.i
  %indvars.iv173.i.i.i = phi i64 [ 0, %.lr.ph133.us.i.i.i ], [ %indvars.iv.next174.i.i.i, %.loopexit.us.i.i.i ] ; 5 uses
  %i.dc = mul i64 %i.bt, %indvars.iv173.i.i.i
  %i.dd = add i64 %i.db, %i.dc
  %i.de = trunc nuw nsw i64 %indvars.iv173.i.i.i to i32
  br i1 %.not98.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv173.i.i.i
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !36
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dh = phi i32 [ %i.dg, %bb.i ], [ %i.de, %bb.h ] ; 2 uses
  %i.di = mul nsw i64 %indvars.iv173.i.i.i, %i.bk
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.di ; 18 uses
  %i.dk = or i32 %i.cv, %i.dh
  %i.dl = icmp slt i32 %i.dk, 0
  br i1 %i.dl, label %.preheader.us.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dm = load ptr, ptr %i.ax, align 8, !tbaa !351, !nonnull !195, !align !211 ; 4 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !59
  %i.do = mul i64 %i.dn, %i.cs                    ; 2 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !59
  %i.ds = mul i64 %i.dr, %i.ct                    ; 2 uses
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !59
  %i.dw = mul i64 %i.dv, %.pre-phi179.i.i.i       ; 2 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.dw
  %i.dy = sext i32 %i.dh to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !59
  %i.eb = mul i64 %i.ea, %i.dy                    ; 2 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.eb ; 12 uses
  br i1 %i.ay, label %.preheader114.us.i.i.i, label %.preheader116.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph.us.i.i.i.preheader, %.lr.ph.us.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %.lr.ph.us.i.i.i ], [ 0, %.lr.ph.us.i.i.i.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.i.i.i ], [ 0, %.lr.ph.us.i.i.i.preheader ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i.i.i
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !36
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !36
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.i.i.i
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !36
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !36
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !36
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.next.i.i.i
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !36
  %indvars.iv.next.i.i.i.1 = or disjoint i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.1
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !36
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !36
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.next.i.i.i.1
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !36
  %indvars.iv.next.i.i.i.2 = or disjoint i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.2
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !36
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !36
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.next.i.i.i.2
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !36
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit115.us.i.i.i.loopexit65.unr-lcssa, label %.lr.ph.us.i.i.i, !llvm.loop !328

.lr.ph120.us.i.i.i:                               ; preds = %.lr.ph120.us.i.i.i.preheader64, %.lr.ph120.us.i.i.i
  %indvars.iv151.i.i.i = phi i64 [ %indvars.iv.next152.i.i.i, %.lr.ph120.us.i.i.i ], [ %indvars.iv151.i.i.i.ph, %.lr.ph120.us.i.i.i.preheader64 ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv151.i.i.i
  store i32 %i.ae, ptr %i.fb, align 4, !tbaa !36
  %indvars.iv.next152.i.i.i = add nuw nsw i64 %indvars.iv151.i.i.i, 1 ; 2 uses
  %exitcond155.not.i.i.i = icmp eq i64 %indvars.iv.next152.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond155.not.i.i.i, label %.loopexit115.us.i.i.i, label %.lr.ph120.us.i.i.i, !llvm.loop !329

.loopexit115.us.i.i.i.loopexit65.unr-lcssa:       ; preds = %.lr.ph.us.i.i.i
  br i1 %lcmp.mod.not, label %.loopexit115.us.i.i.i, label %.lr.ph.us.i.i.i.epil.preheader

.lr.ph.us.i.i.i.epil.preheader:                   ; preds = %.loopexit115.us.i.i.i.loopexit65.unr-lcssa, %.lr.ph.us.i.i.i.preheader
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.us.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.3, %.loopexit115.us.i.i.i.loopexit65.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod67)
  br label %.lr.ph.us.i.i.i.epil

.lr.ph.us.i.i.i.epil:                             ; preds = %.lr.ph.us.i.i.i.epil, %.lr.ph.us.i.i.i.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.next.i.i.i.epil, %.lr.ph.us.i.i.i.epil ], [ %indvars.iv.i.i.i.epil.init, %.lr.ph.us.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.us.i.i.i.epil ], [ 0, %.lr.ph.us.i.i.i.epil.preheader ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i.i.i.epil
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !36
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !36
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.i.i.i.epil
  store i32 %i.fg, ptr %i.fh, align 4, !tbaa !36
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit115.us.i.i.i, label %.lr.ph.us.i.i.i.epil, !llvm.loop !330

.loopexit115.us.i.i.i:                            ; preds = %.loopexit115.us.i.i.i.loopexit65.unr-lcssa, %.lr.ph.us.i.i.i.epil, %.lr.ph120.us.i.i.i, %middle.block58, %.preheader116.us.i.i.i, %.preheader114.us.i.i.i
  %.3.us.i.i.i = phi i32 [ 0, %.preheader114.us.i.i.i ], [ %i.an, %middle.block58 ], [ 0, %.preheader116.us.i.i.i ], [ %i.an, %.lr.ph120.us.i.i.i ], [ %i.an, %.lr.ph.us.i.i.i.epil ], [ %i.an, %.loopexit115.us.i.i.i.loopexit65.unr-lcssa ] ; 3 uses
  %i.fi = icmp slt i32 %.3.us.i.i.i, %i.ba
  br i1 %i.fi, label %.lr.ph123.us.preheader.i.i.i, label %._crit_edge.us.i.i.i

.lr.ph123.us.preheader.i.i.i:                     ; preds = %.loopexit115.us.i.i.i
  %i.fj = zext nneg i32 %.3.us.i.i.i to i64       ; 6 uses
  %i.fk = add nuw nsw i64 %i.fj, 1
  %i.fl = tail call i64 @llvm.umax.i64(i64 %i.fk, i64 %i.bm)
  %i.fm = sub nsw i64 %i.fl, %i.fj                ; 3 uses
  %min.iters.check39 = icmp ult i64 %i.fm, 8
  br i1 %min.iters.check39, label %.lr.ph123.us.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph123.us.preheader.i.i.i
  %i.fn = add i64 %i.dw, %i.do
  %i.fo = add i64 %i.fn, %i.ds
  %i.fp = add i64 %i.fo, %i.eb
  %i.fq = shl i64 %i.fp, 2
  %i.fr = sub i64 %i.fq, %i.dd
  %diff.check = icmp ugt i64 %i.fr, -32
  br i1 %diff.check, label %.lr.ph123.us.i.i.i.preheader, label %vector.ph40

vector.ph40:                                      ; preds = %vector.memcheck
  %n.vec41 = and i64 %i.fm, -8                    ; 3 uses
  %i.fs = add nsw i64 %n.vec41, %i.fj             ; 2 uses
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %vector.ph40
  %index43 = phi i64 [ 0, %vector.ph40 ], [ %index.next45, %vector.body42 ] ; 2 uses
  %i.ft = add nuw i64 %index43, %i.fj             ; 2 uses
  %i.fu = sub nsw i64 %i.ft, %i.bl
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.fu ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %wide.load = load <4 x i32>, ptr %i.fv, align 4, !tbaa !36
  %wide.load44 = load <4 x i32>, ptr %i.fw, align 4, !tbaa !36
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.ft ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store <4 x i32> %wide.load, ptr %i.fx, align 4, !tbaa !36
  store <4 x i32> %wide.load44, ptr %i.fy, align 4, !tbaa !36
  %index.next45 = add nuw i64 %index43, 8         ; 2 uses
  %i.fz = icmp eq i64 %index.next45, %n.vec41
  br i1 %i.fz, label %middle.block46, label %vector.body42, !llvm.loop !331

middle.block46:                                   ; preds = %vector.body42
  %cmp.n47 = icmp eq i64 %i.fm, %n.vec41
  br i1 %cmp.n47, label %._crit_edge.us.loopexit.i.i.i, label %.lr.ph123.us.i.i.i.preheader

.lr.ph123.us.i.i.i.preheader:                     ; preds = %vector.memcheck, %.lr.ph123.us.preheader.i.i.i, %middle.block46
  %indvars.iv159.i.i.i.ph = phi i64 [ %i.fj, %vector.memcheck ], [ %i.fj, %.lr.ph123.us.preheader.i.i.i ], [ %i.fs, %middle.block46 ]
  br label %.lr.ph123.us.i.i.i

.lr.ph123.us.i.i.i:                               ; preds = %.lr.ph123.us.i.i.i.preheader, %.lr.ph123.us.i.i.i
  %indvars.iv159.i.i.i = phi i64 [ %indvars.iv.next160.i.i.i, %.lr.ph123.us.i.i.i ], [ %indvars.iv159.i.i.i.ph, %.lr.ph123.us.i.i.i.preheader ] ; 3 uses
  %i.ga = sub nsw i64 %indvars.iv159.i.i.i, %i.bl
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !36
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv159.i.i.i
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !36
  %indvars.iv.next160.i.i.i = add nuw nsw i64 %indvars.iv159.i.i.i, 1 ; 3 uses
  %i.ge = icmp samesign ult i64 %indvars.iv.next160.i.i.i, %i.bm
  br i1 %i.ge, label %.lr.ph123.us.i.i.i, label %._crit_edge.us.loopexit.i.i.i, !llvm.loop !332

._crit_edge.us.loopexit.i.i.i:                    ; preds = %.lr.ph123.us.i.i.i, %middle.block46
  %indvars.iv.next160.i.i.i.lcssa = phi i64 [ %i.fs, %middle.block46 ], [ %indvars.iv.next160.i.i.i, %.lr.ph123.us.i.i.i ]
  %i.gf = trunc nuw nsw i64 %indvars.iv.next160.i.i.i.lcssa to i32
  br label %._crit_edge.us.i.i.i

._crit_edge.us.i.i.i:                             ; preds = %._crit_edge.us.loopexit.i.i.i, %.loopexit115.us.i.i.i
  %.4.lcssa.us.i.i.i = phi i32 [ %.3.us.i.i.i, %.loopexit115.us.i.i.i ], [ %i.gf, %._crit_edge.us.loopexit.i.i.i ] ; 6 uses
  %i.gg = icmp slt i32 %.4.lcssa.us.i.i.i, %i.j   ; 2 uses
  br i1 %i.ay, label %.preheader110.us.i.i.i, label %.preheader112.us.i.i.i

.lr.ph126.us.i.i.i:                               ; preds = %.lr.ph126.us.i.i.i.prol.loopexit, %.lr.ph126.us.i.i.i
  %indvars.iv162.i.i.i = phi i64 [ %indvars.iv.next163.i.i.i.3, %.lr.ph126.us.i.i.i ], [ %indvars.iv162.i.i.i.unr, %.lr.ph126.us.i.i.i.prol.loopexit ] ; 6 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv162.i.i.i
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !36
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !36
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv162.i.i.i
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !36
  %indvars.iv.next163.i.i.i = add nuw nsw i64 %indvars.iv162.i.i.i, 1 ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next163.i.i.i
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !36
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !36
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.next163.i.i.i
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !36
  %indvars.iv.next163.i.i.i.1 = add nuw nsw i64 %indvars.iv162.i.i.i, 2 ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next163.i.i.i.1
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !36
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !36
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.next163.i.i.i.1
  store i32 %i.gx, ptr %i.gy, align 4, !tbaa !36
  %indvars.iv.next163.i.i.i.2 = add nuw nsw i64 %indvars.iv162.i.i.i, 3 ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next163.i.i.i.2
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !36
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.hb
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !36
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.next163.i.i.i.2
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !36
  %indvars.iv.next163.i.i.i.3 = add nuw nsw i64 %indvars.iv162.i.i.i, 4 ; 2 uses
  %i.hf = trunc nuw i64 %indvars.iv.next163.i.i.i.3 to i32
  %i.hg = icmp sgt i32 %i.j, %i.hf
  br i1 %i.hg, label %.lr.ph126.us.i.i.i, label %.loopexit.us.i.i.i, !llvm.loop !333

.lr.ph128.us.i.i.i:                               ; preds = %.lr.ph128.us.i.i.i.preheader, %.lr.ph128.us.i.i.i
  %indvars.iv165.i.i.i = phi i64 [ %indvars.iv.next166.i.i.i, %.lr.ph128.us.i.i.i ], [ %indvars.iv165.i.i.i.ph, %.lr.ph128.us.i.i.i.preheader ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv165.i.i.i
  store i32 %i.ae, ptr %i.hh, align 4, !tbaa !36
  %indvars.iv.next166.i.i.i = add nuw nsw i64 %indvars.iv165.i.i.i, 1 ; 2 uses
  %i.hi = trunc nuw i64 %indvars.iv.next166.i.i.i to i32
  %i.hj = icmp sgt i32 %i.j, %i.hi
  br i1 %i.hj, label %.lr.ph128.us.i.i.i, label %.loopexit.us.i.i.i, !llvm.loop !334

.lr.ph130.us.i.i.i:                               ; preds = %.lr.ph130.us.i.i.i.preheader61, %.lr.ph130.us.i.i.i
  %indvars.iv168.i.i.i = phi i64 [ %indvars.iv.next169.i.i.i, %.lr.ph130.us.i.i.i ], [ %indvars.iv168.i.i.i.ph, %.lr.ph130.us.i.i.i.preheader61 ] ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv168.i.i.i
  store i32 %i.ae, ptr %i.hk, align 4, !tbaa !36
  %indvars.iv.next169.i.i.i = add nuw nsw i64 %indvars.iv168.i.i.i, 1 ; 2 uses
  %exitcond172.not.i.i.i = icmp eq i64 %indvars.iv.next169.i.i.i, %wide.trip.count171.i.i.i
  br i1 %exitcond172.not.i.i.i, label %.loopexit.us.i.i.i, label %.lr.ph130.us.i.i.i, !llvm.loop !335

.loopexit.us.i.i.i:                               ; preds = %.lr.ph126.us.i.i.i.prol.loopexit, %.lr.ph126.us.i.i.i, %.lr.ph128.us.i.i.i, %.lr.ph130.us.i.i.i, %middle.block35, %middle.block, %.preheader112.us.i.i.i, %.preheader110.us.i.i.i, %.preheader.us.i.i.i
  %indvars.iv.next174.i.i.i = add nuw nsw i64 %indvars.iv173.i.i.i, 1 ; 2 uses
  %exitcond177.not.i.i.i = icmp eq i64 %indvars.iv.next174.i.i.i, %wide.trip.count176.i.i.i
  br i1 %exitcond177.not.i.i.i, label %._crit_edge134.us.i.i.i, label %bb.h, !llvm.loop !336

.preheader.us.i.i.i:                              ; preds = %bb.j
  br i1 %i.bb, label %.lr.ph130.us.i.i.i.preheader, label %.loopexit.us.i.i.i

.lr.ph130.us.i.i.i.preheader:                     ; preds = %.preheader.us.i.i.i
  br i1 %min.iters.check, label %.lr.ph130.us.i.i.i.preheader61, label %vector.body

vector.body:                                      ; preds = %.lr.ph130.us.i.i.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph130.us.i.i.i.preheader ] ; 2 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %index ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.hl, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat, ptr %i.hm, align 4, !tbaa !36
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hn = icmp eq i64 %index.next, %n.vec
  br i1 %i.hn, label %middle.block, label %vector.body, !llvm.loop !337

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.us.i.i.i, label %.lr.ph130.us.i.i.i.preheader61

.lr.ph130.us.i.i.i.preheader61:                   ; preds = %.lr.ph130.us.i.i.i.preheader, %middle.block
  %indvars.iv168.i.i.i.ph = phi i64 [ 0, %.lr.ph130.us.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph130.us.i.i.i

.preheader110.us.i.i.i:                           ; preds = %._crit_edge.us.i.i.i
  br i1 %i.gg, label %.lr.ph128.us.preheader.i.i.i, label %.loopexit.us.i.i.i

.lr.ph128.us.preheader.i.i.i:                     ; preds = %.preheader110.us.i.i.i
  %i.ho = zext i32 %.4.lcssa.us.i.i.i to i64      ; 3 uses
  %i.hp = xor i32 %.4.lcssa.us.i.i.i, -1
  %i.hq = add i32 %i.j, %i.hp                     ; 2 uses
  %i.hr = zext i32 %i.hq to i64
  %i.hs = add nuw nsw i64 %i.hr, 1                ; 2 uses
  %min.iters.check27 = icmp ult i32 %i.hq, 7
  br i1 %min.iters.check27, label %.lr.ph128.us.i.i.i.preheader, label %vector.ph28

vector.ph28:                                      ; preds = %.lr.ph128.us.preheader.i.i.i
  %n.vec29 = and i64 %i.hs, 8589934584            ; 3 uses
  %i.ht = add nuw nsw i64 %n.vec29, %i.ho
  %invariant.gep = getelementptr [4 x i8], ptr %i.dj, i64 %i.ho
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph28
  %index33 = phi i64 [ 0, %vector.ph28 ], [ %index.next34, %vector.body32 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index33 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat31, ptr %gep, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat31, ptr %i.hu, align 4, !tbaa !36
  %index.next34 = add nuw i64 %index33, 8         ; 2 uses
  %i.hv = icmp eq i64 %index.next34, %n.vec29
  br i1 %i.hv, label %middle.block35, label %vector.body32, !llvm.loop !338

middle.block35:                                   ; preds = %vector.body32
  %cmp.n36 = icmp eq i64 %i.hs, %n.vec29
  br i1 %cmp.n36, label %.loopexit.us.i.i.i, label %.lr.ph128.us.i.i.i.preheader

.lr.ph128.us.i.i.i.preheader:                     ; preds = %.lr.ph128.us.preheader.i.i.i, %middle.block35
  %indvars.iv165.i.i.i.ph = phi i64 [ %i.ho, %.lr.ph128.us.preheader.i.i.i ], [ %i.ht, %middle.block35 ]
  br label %.lr.ph128.us.i.i.i

.preheader112.us.i.i.i:                           ; preds = %._crit_edge.us.i.i.i
  br i1 %i.gg, label %.lr.ph126.us.preheader.i.i.i, label %.loopexit.us.i.i.i

.lr.ph126.us.preheader.i.i.i:                     ; preds = %.preheader112.us.i.i.i
  %i.hw = zext i32 %.4.lcssa.us.i.i.i to i64      ; 2 uses
  %i.hx = sub i32 %i.j, %.4.lcssa.us.i.i.i
  %xtraiter68 = and i32 %i.hx, 3                  ; 2 uses
  %lcmp.mod69.not = icmp eq i32 %xtraiter68, 0
  br i1 %lcmp.mod69.not, label %.lr.ph126.us.i.i.i.prol.loopexit, label %.lr.ph126.us.i.i.i.prol

.lr.ph126.us.i.i.i.prol:                          ; preds = %.lr.ph126.us.preheader.i.i.i, %.lr.ph126.us.i.i.i.prol
  %indvars.iv162.i.i.i.prol = phi i64 [ %indvars.iv.next163.i.i.i.prol, %.lr.ph126.us.i.i.i.prol ], [ %i.hw, %.lr.ph126.us.preheader.i.i.i ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph126.us.i.i.i.prol ], [ 0, %.lr.ph126.us.preheader.i.i.i ]
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv162.i.i.i.prol
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !36
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !36
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv162.i.i.i.prol
  store i32 %i.ic, ptr %i.id, align 4, !tbaa !36
  %indvars.iv.next163.i.i.i.prol = add nuw nsw i64 %indvars.iv162.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter68
  br i1 %prol.iter.cmp.not, label %.lr.ph126.us.i.i.i.prol.loopexit, label %.lr.ph126.us.i.i.i.prol, !llvm.loop !339

.lr.ph126.us.i.i.i.prol.loopexit:                 ; preds = %.lr.ph126.us.i.i.i.prol, %.lr.ph126.us.preheader.i.i.i
  %indvars.iv162.i.i.i.unr = phi i64 [ %i.hw, %.lr.ph126.us.preheader.i.i.i ], [ %indvars.iv.next163.i.i.i.prol, %.lr.ph126.us.i.i.i.prol ]
  %i.ie = sub i32 %.4.lcssa.us.i.i.i, %i.j
  %i.if = icmp ugt i32 %i.ie, -4
  br i1 %i.if, label %.loopexit.us.i.i.i, label %.lr.ph126.us.i.i.i

.preheader114.us.i.i.i:                           ; preds = %bb.k
  br i1 %i.az, label %.lr.ph120.us.i.i.i.preheader, label %.loopexit115.us.i.i.i

.lr.ph120.us.i.i.i.preheader:                     ; preds = %.preheader114.us.i.i.i
  br i1 %min.iters.check50, label %.lr.ph120.us.i.i.i.preheader64, label %vector.body55

vector.body55:                                    ; preds = %.lr.ph120.us.i.i.i.preheader, %vector.body55
  %index56 = phi i64 [ %index.next57, %vector.body55 ], [ 0, %.lr.ph120.us.i.i.i.preheader ] ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %index56 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store <4 x i32> %broadcast.splat54, ptr %i.ig, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat54, ptr %i.ih, align 4, !tbaa !36
  %index.next57 = add nuw i64 %index56, 8         ; 2 uses
  %i.ii = icmp eq i64 %index.next57, %n.vec52
  br i1 %i.ii, label %middle.block58, label %vector.body55, !llvm.loop !340

middle.block58:                                   ; preds = %vector.body55
  br i1 %cmp.n59, label %.loopexit115.us.i.i.i, label %.lr.ph120.us.i.i.i.preheader64

.lr.ph120.us.i.i.i.preheader64:                   ; preds = %.lr.ph120.us.i.i.i.preheader, %middle.block58
  %indvars.iv151.i.i.i.ph = phi i64 [ 0, %.lr.ph120.us.i.i.i.preheader ], [ %n.vec52, %middle.block58 ]
  br label %.lr.ph120.us.i.i.i

.preheader116.us.i.i.i:                           ; preds = %bb.k
  br i1 %i.az, label %.lr.ph.us.i.i.i.preheader, label %.loopexit115.us.i.i.i

.lr.ph.us.i.i.i.preheader:                        ; preds = %.preheader116.us.i.i.i
  br i1 %i.bu, label %.lr.ph.us.i.i.i.epil.preheader, label %.lr.ph.us.i.i.i

._crit_edge134.us.i.i.i:                          ; preds = %.loopexit.us.i.i.i
  %i.ij = add nsw i32 %.091135.us.i.i.i, 1        ; 2 uses
  %i.ik = load i32, ptr %i.ap, align 4, !tbaa !199
  %i.il = icmp slt i32 %i.ij, %i.ik
  br i1 %i.il, label %bb.b, label %"_ZSt10__invoke_rIvRZN2cv3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS4_RS2_E3$_2JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit", !llvm.loop !341

"_ZSt10__invoke_rIvRZN2cv3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS4_RS2_E3$_2JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit": ; preds = %._crit_edge134.us.i.i.i, %bb.a, %.lr.ph137.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS8_RS6_E3$_2E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL3padERKNS1_3MatERKSt6vectorIiSaIiEEiS5_RS3_E3$_2E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit" [
end_hunk_3
begin_hunk_4_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS8_RS6_E3$_3E9_M_invokeERKSt9_Any_dataS3_":bb.a
  %.pre-phi80.i.i.i = phi i64 [ %.pre79.i.i.i, %bb.g ], [ %.pre.i.i.i, %bb.f ]
  %i.bx = phi i32 [ %i.bw, %bb.g ], [ %i.bj, %bb.f ]
  %i.by = sext i32 %i.bm to i64
  %i.bz = sext i32 %i.bl to i64
  %i.ca = sext i32 %i.bq to i64
  %i.cb = sext i32 %i.bu to i64
  %i.cc = or i32 %i.bq, %i.bx
  %i.cd = or i32 %i.cc, %i.bu
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.us.i.i.i, %.lr.ph34.us.i.i.i
  %indvars.iv73.i.i.i = phi i64 [ 0, %.lr.ph34.us.i.i.i ], [ %indvars.iv.next74.i.i.i, %.loopexit.us.i.i.i ] ; 5 uses
  %i.ce = shl nuw nsw i64 %indvars.iv73.i.i.i, 3
  %i.cf = trunc nuw nsw i64 %indvars.iv73.i.i.i to i32
  br i1 %.not98.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv73.i.i.i
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !36
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ci = phi i32 [ %i.ch, %bb.i ], [ %i.cf, %bb.h ] ; 2 uses
  %i.cj = load i64, ptr %i.bb, align 8, !tbaa !59
  %i.ck = mul i64 %i.cj, %i.by                    ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ck
  %i.cm = load i64, ptr %i.bc, align 8, !tbaa !59
  %i.cn = mul i64 %i.cm, %i.bz                    ; 2 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cn
  %i.cp = load i64, ptr %i.bd, align 8, !tbaa !59
  %i.cq = mul i64 %i.cp, %.pre.i.i.i              ; 2 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.cq
  %i.cs = load i64, ptr %i.be, align 8, !tbaa !59 ; 2 uses
  %i.ct = mul nsw i64 %i.cs, %indvars.iv73.i.i.i
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.ct ; 18 uses
  %i.cv = or i32 %i.cd, %i.ci
  %i.cw = icmp slt i32 %i.cv, 0
  br i1 %i.cw, label %.preheader.us.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cx = load ptr, ptr %i.av, align 8, !tbaa !375, !nonnull !195, !align !211 ; 4 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !59
  %i.cz = mul i64 %i.cy, %i.ca                    ; 2 uses
  %i.da = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !59
  %i.dd = mul i64 %i.dc, %i.cb                    ; 2 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !59
  %i.dh = mul i64 %i.dg, %.pre-phi80.i.i.i        ; 2 uses
  %i.di = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.dh
  %i.dj = sext i32 %i.ci to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !59
  %i.dm = mul i64 %i.dl, %i.dj                    ; 2 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dm ; 12 uses
  br i1 %i.aw, label %.preheader15.us.i.i.i, label %.preheader17.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph.us.i.i.i.preheader, %.lr.ph.us.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %.lr.ph.us.i.i.i ], [ 0, %.lr.ph.us.i.i.i.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.i.i.i ], [ 0, %.lr.ph.us.i.i.i.preheader ]
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i.i.i
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !36
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !59
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.i.i.i
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !59
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !36
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !59
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.next.i.i.i
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !59
  %indvars.iv.next.i.i.i.1 = or disjoint i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.1
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !36
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !59
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.next.i.i.i.1
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !59
  %indvars.iv.next.i.i.i.2 = or disjoint i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.2
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !36
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.ei
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !59
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.next.i.i.i.2
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !59
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit16.us.i.i.i.loopexit65.unr-lcssa, label %.lr.ph.us.i.i.i, !llvm.loop !352

.lr.ph21.us.i.i.i:                                ; preds = %.lr.ph21.us.i.i.i.preheader64, %.lr.ph21.us.i.i.i
  %indvars.iv52.i.i.i = phi i64 [ %indvars.iv.next53.i.i.i, %.lr.ph21.us.i.i.i ], [ %indvars.iv52.i.i.i.ph, %.lr.ph21.us.i.i.i.preheader64 ] ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv52.i.i.i
  store i64 %i.af, ptr %i.em, align 8, !tbaa !59
  %indvars.iv.next53.i.i.i = add nuw nsw i64 %indvars.iv52.i.i.i, 1 ; 2 uses
  %exitcond56.not.i.i.i = icmp eq i64 %indvars.iv.next53.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond56.not.i.i.i, label %.loopexit16.us.i.i.i, label %.lr.ph21.us.i.i.i, !llvm.loop !353

.loopexit16.us.i.i.i.loopexit65.unr-lcssa:        ; preds = %.lr.ph.us.i.i.i
  br i1 %lcmp.mod.not, label %.loopexit16.us.i.i.i, label %.lr.ph.us.i.i.i.epil.preheader

.lr.ph.us.i.i.i.epil.preheader:                   ; preds = %.loopexit16.us.i.i.i.loopexit65.unr-lcssa, %.lr.ph.us.i.i.i.preheader
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.us.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.3, %.loopexit16.us.i.i.i.loopexit65.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod67)
  br label %.lr.ph.us.i.i.i.epil

.lr.ph.us.i.i.i.epil:                             ; preds = %.lr.ph.us.i.i.i.epil, %.lr.ph.us.i.i.i.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.next.i.i.i.epil, %.lr.ph.us.i.i.i.epil ], [ %indvars.iv.i.i.i.epil.init, %.lr.ph.us.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.us.i.i.i.epil ], [ 0, %.lr.ph.us.i.i.i.epil.preheader ]
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i.i.i.epil
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !36
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !59
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.i.i.i.epil
  store i64 %i.er, ptr %i.es, align 8, !tbaa !59
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit16.us.i.i.i, label %.lr.ph.us.i.i.i.epil, !llvm.loop !354

.loopexit16.us.i.i.i:                             ; preds = %.loopexit16.us.i.i.i.loopexit65.unr-lcssa, %.lr.ph.us.i.i.i.epil, %.lr.ph21.us.i.i.i, %middle.block58, %.preheader17.us.i.i.i, %.preheader15.us.i.i.i
  %.3.us.i.i.i = phi i32 [ 0, %.preheader15.us.i.i.i ], [ %i.ao, %middle.block58 ], [ 0, %.preheader17.us.i.i.i ], [ %i.ao, %.lr.ph21.us.i.i.i ], [ %i.ao, %.lr.ph.us.i.i.i.epil ], [ %i.ao, %.loopexit16.us.i.i.i.loopexit65.unr-lcssa ] ; 3 uses
  %i.et = icmp slt i32 %.3.us.i.i.i, %i.ay
  br i1 %i.et, label %.lr.ph24.us.preheader.i.i.i, label %._crit_edge.us.i.i.i

.lr.ph24.us.preheader.i.i.i:                      ; preds = %.loopexit16.us.i.i.i
  %i.eu = zext nneg i32 %.3.us.i.i.i to i64       ; 6 uses
  %i.ev = add nuw nsw i64 %i.eu, 1
  %i.ew = tail call i64 @llvm.umax.i64(i64 %i.ev, i64 %i.bg)
  %i.ex = sub nsw i64 %i.ew, %i.eu                ; 3 uses
  %min.iters.check39 = icmp ult i64 %i.ex, 14
  br i1 %min.iters.check39, label %.lr.ph24.us.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph24.us.preheader.i.i.i
  %i.ey = mul i64 %i.cs, %i.ce
  %i.ez = add i64 %i.bh, %i.ey
  %i.fa = add i64 %i.ck, %i.bf
  %i.fb = add i64 %i.fa, %i.cn
  %i.fc = add i64 %i.fb, %i.cq
  %i.fd = shl i64 %i.fc, 3
  %i.fe = add i64 %i.ez, %i.fd
  %i.ff = add i64 %i.dh, %i.cz
  %i.fg = add i64 %i.ff, %i.dd
  %i.fh = add i64 %i.fg, %i.dm
  %i.fi = shl i64 %i.fh, 3
  %i.fj = sub i64 %i.fi, %i.fe
  %diff.check = icmp ugt i64 %i.fj, -32
  br i1 %diff.check, label %.lr.ph24.us.i.i.i.preheader, label %vector.ph40

vector.ph40:                                      ; preds = %vector.memcheck
  %n.vec41 = and i64 %i.ex, -4                    ; 3 uses
  %i.fk = add nsw i64 %n.vec41, %i.eu             ; 2 uses
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %vector.ph40
  %index43 = phi i64 [ 0, %vector.ph40 ], [ %index.next45, %vector.body42 ] ; 2 uses
  %i.fl = add nuw i64 %index43, %i.eu             ; 2 uses
  %i.fm = sub nsw i64 %i.fl, %i.bf
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.fm ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %wide.load = load <2 x i64>, ptr %i.fn, align 8, !tbaa !59
  %wide.load44 = load <2 x i64>, ptr %i.fo, align 8, !tbaa !59
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.fl ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store <2 x i64> %wide.load, ptr %i.fp, align 8, !tbaa !59
  store <2 x i64> %wide.load44, ptr %i.fq, align 8, !tbaa !59
  %index.next45 = add nuw i64 %index43, 4         ; 2 uses
  %i.fr = icmp eq i64 %index.next45, %n.vec41
  br i1 %i.fr, label %middle.block46, label %vector.body42, !llvm.loop !355

middle.block46:                                   ; preds = %vector.body42
  %cmp.n47 = icmp eq i64 %i.ex, %n.vec41
  br i1 %cmp.n47, label %._crit_edge.us.loopexit.i.i.i, label %.lr.ph24.us.i.i.i.preheader

.lr.ph24.us.i.i.i.preheader:                      ; preds = %vector.memcheck, %.lr.ph24.us.preheader.i.i.i, %middle.block46
  %indvars.iv59.i.i.i.ph = phi i64 [ %i.eu, %vector.memcheck ], [ %i.eu, %.lr.ph24.us.preheader.i.i.i ], [ %i.fk, %middle.block46 ]
  br label %.lr.ph24.us.i.i.i

.lr.ph24.us.i.i.i:                                ; preds = %.lr.ph24.us.i.i.i.preheader, %.lr.ph24.us.i.i.i
  %indvars.iv59.i.i.i = phi i64 [ %indvars.iv.next60.i.i.i, %.lr.ph24.us.i.i.i ], [ %indvars.iv59.i.i.i.ph, %.lr.ph24.us.i.i.i.preheader ] ; 3 uses
  %i.fs = sub nsw i64 %indvars.iv59.i.i.i, %i.bf
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.fs
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !59
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv59.i.i.i
  store i64 %i.fu, ptr %i.fv, align 8, !tbaa !59
  %indvars.iv.next60.i.i.i = add nuw nsw i64 %indvars.iv59.i.i.i, 1 ; 3 uses
  %i.fw = icmp samesign ult i64 %indvars.iv.next60.i.i.i, %i.bg
  br i1 %i.fw, label %.lr.ph24.us.i.i.i, label %._crit_edge.us.loopexit.i.i.i, !llvm.loop !356

._crit_edge.us.loopexit.i.i.i:                    ; preds = %.lr.ph24.us.i.i.i, %middle.block46
  %indvars.iv.next60.i.i.i.lcssa = phi i64 [ %i.fk, %middle.block46 ], [ %indvars.iv.next60.i.i.i, %.lr.ph24.us.i.i.i ]
  %i.fx = trunc nuw nsw i64 %indvars.iv.next60.i.i.i.lcssa to i32
  br label %._crit_edge.us.i.i.i

._crit_edge.us.i.i.i:                             ; preds = %._crit_edge.us.loopexit.i.i.i, %.loopexit16.us.i.i.i
  %.4.lcssa.us.i.i.i = phi i32 [ %.3.us.i.i.i, %.loopexit16.us.i.i.i ], [ %i.fx, %._crit_edge.us.loopexit.i.i.i ] ; 6 uses
  %i.fy = icmp slt i32 %.4.lcssa.us.i.i.i, %i.k   ; 2 uses
  br i1 %i.aw, label %.preheader11.us.i.i.i, label %.preheader13.us.i.i.i

.lr.ph27.us.i.i.i:                                ; preds = %.lr.ph27.us.i.i.i.prol.loopexit, %.lr.ph27.us.i.i.i
  %indvars.iv62.i.i.i = phi i64 [ %indvars.iv.next63.i.i.i.3, %.lr.ph27.us.i.i.i ], [ %indvars.iv62.i.i.i.unr, %.lr.ph27.us.i.i.i.prol.loopexit ] ; 6 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv62.i.i.i
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !36
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.gb
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !59
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv62.i.i.i
  store i64 %i.gd, ptr %i.ge, align 8, !tbaa !59
  %indvars.iv.next63.i.i.i = add nuw nsw i64 %indvars.iv62.i.i.i, 1 ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next63.i.i.i
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !36
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.gh
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !59
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.next63.i.i.i
  store i64 %i.gj, ptr %i.gk, align 8, !tbaa !59
  %indvars.iv.next63.i.i.i.1 = add nuw nsw i64 %indvars.iv62.i.i.i, 2 ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next63.i.i.i.1
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !36
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.gn
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !59
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.next63.i.i.i.1
  store i64 %i.gp, ptr %i.gq, align 8, !tbaa !59
  %indvars.iv.next63.i.i.i.2 = add nuw nsw i64 %indvars.iv62.i.i.i, 3 ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next63.i.i.i.2
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !36
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.gt
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !59
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.next63.i.i.i.2
  store i64 %i.gv, ptr %i.gw, align 8, !tbaa !59
  %indvars.iv.next63.i.i.i.3 = add nuw nsw i64 %indvars.iv62.i.i.i, 4 ; 2 uses
  %i.gx = trunc nuw i64 %indvars.iv.next63.i.i.i.3 to i32
  %i.gy = icmp sgt i32 %i.k, %i.gx
  br i1 %i.gy, label %.lr.ph27.us.i.i.i, label %.loopexit.us.i.i.i, !llvm.loop !357

.lr.ph29.us.i.i.i:                                ; preds = %.lr.ph29.us.i.i.i.preheader, %.lr.ph29.us.i.i.i
  %indvars.iv65.i.i.i = phi i64 [ %indvars.iv.next66.i.i.i, %.lr.ph29.us.i.i.i ], [ %indvars.iv65.i.i.i.ph, %.lr.ph29.us.i.i.i.preheader ] ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv65.i.i.i
  store i64 %i.af, ptr %i.gz, align 8, !tbaa !59
  %indvars.iv.next66.i.i.i = add nuw nsw i64 %indvars.iv65.i.i.i, 1 ; 2 uses
  %i.ha = trunc nuw i64 %indvars.iv.next66.i.i.i to i32
  %i.hb = icmp sgt i32 %i.k, %i.ha
  br i1 %i.hb, label %.lr.ph29.us.i.i.i, label %.loopexit.us.i.i.i, !llvm.loop !358

.lr.ph31.us.i.i.i:                                ; preds = %.lr.ph31.us.i.i.i.preheader61, %.lr.ph31.us.i.i.i
  %indvars.iv68.i.i.i = phi i64 [ %indvars.iv.next69.i.i.i, %.lr.ph31.us.i.i.i ], [ %indvars.iv68.i.i.i.ph, %.lr.ph31.us.i.i.i.preheader61 ] ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv68.i.i.i
  store i64 %i.af, ptr %i.hc, align 8, !tbaa !59
  %indvars.iv.next69.i.i.i = add nuw nsw i64 %indvars.iv68.i.i.i, 1 ; 2 uses
  %exitcond72.not.i.i.i = icmp eq i64 %indvars.iv.next69.i.i.i, %wide.trip.count71.i.i.i
  br i1 %exitcond72.not.i.i.i, label %.loopexit.us.i.i.i, label %.lr.ph31.us.i.i.i, !llvm.loop !359

.loopexit.us.i.i.i:                               ; preds = %.lr.ph27.us.i.i.i.prol.loopexit, %.lr.ph27.us.i.i.i, %.lr.ph29.us.i.i.i, %.lr.ph31.us.i.i.i, %middle.block35, %middle.block, %.preheader13.us.i.i.i, %.preheader11.us.i.i.i, %.preheader.us.i.i.i
  %indvars.iv.next74.i.i.i = add nuw nsw i64 %indvars.iv73.i.i.i, 1 ; 2 uses
  %exitcond77.not.i.i.i = icmp eq i64 %indvars.iv.next74.i.i.i, %wide.trip.count76.i.i.i
  br i1 %exitcond77.not.i.i.i, label %._crit_edge35.us.i.i.i, label %bb.h, !llvm.loop !360

.preheader.us.i.i.i:                              ; preds = %bb.j
  br i1 %i.az, label %.lr.ph31.us.i.i.i.preheader, label %.loopexit.us.i.i.i

.lr.ph31.us.i.i.i.preheader:                      ; preds = %.preheader.us.i.i.i
  br i1 %min.iters.check, label %.lr.ph31.us.i.i.i.preheader61, label %vector.body

vector.body:                                      ; preds = %.lr.ph31.us.i.i.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph31.us.i.i.i.preheader ] ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %index ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.hd, align 8, !tbaa !59
  store <2 x i64> %broadcast.splat, ptr %i.he, align 8, !tbaa !59
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hf = icmp eq i64 %index.next, %n.vec
  br i1 %i.hf, label %middle.block, label %vector.body, !llvm.loop !361

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.us.i.i.i, label %.lr.ph31.us.i.i.i.preheader61

.lr.ph31.us.i.i.i.preheader61:                    ; preds = %.lr.ph31.us.i.i.i.preheader, %middle.block
  %indvars.iv68.i.i.i.ph = phi i64 [ 0, %.lr.ph31.us.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph31.us.i.i.i

.preheader11.us.i.i.i:                            ; preds = %._crit_edge.us.i.i.i
  br i1 %i.fy, label %.lr.ph29.us.preheader.i.i.i, label %.loopexit.us.i.i.i

.lr.ph29.us.preheader.i.i.i:                      ; preds = %.preheader11.us.i.i.i
  %i.hg = zext i32 %.4.lcssa.us.i.i.i to i64      ; 3 uses
  %i.hh = xor i32 %.4.lcssa.us.i.i.i, -1
  %i.hi = add i32 %i.k, %i.hh                     ; 2 uses
  %i.hj = zext i32 %i.hi to i64
  %i.hk = add nuw nsw i64 %i.hj, 1                ; 2 uses
  %min.iters.check27 = icmp ult i32 %i.hi, 3
  br i1 %min.iters.check27, label %.lr.ph29.us.i.i.i.preheader, label %vector.ph28

vector.ph28:                                      ; preds = %.lr.ph29.us.preheader.i.i.i
  %n.vec29 = and i64 %i.hk, 8589934588            ; 3 uses
  %i.hl = add nuw nsw i64 %n.vec29, %i.hg
  %invariant.gep = getelementptr [8 x i8], ptr %i.cu, i64 %i.hg
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph28
  %index33 = phi i64 [ 0, %vector.ph28 ], [ %index.next34, %vector.body32 ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index33 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x i64> %broadcast.splat31, ptr %gep, align 8, !tbaa !59
  store <2 x i64> %broadcast.splat31, ptr %i.hm, align 8, !tbaa !59
  %index.next34 = add nuw i64 %index33, 4         ; 2 uses
  %i.hn = icmp eq i64 %index.next34, %n.vec29
  br i1 %i.hn, label %middle.block35, label %vector.body32, !llvm.loop !362

middle.block35:                                   ; preds = %vector.body32
  %cmp.n36 = icmp eq i64 %i.hk, %n.vec29
  br i1 %cmp.n36, label %.loopexit.us.i.i.i, label %.lr.ph29.us.i.i.i.preheader

.lr.ph29.us.i.i.i.preheader:                      ; preds = %.lr.ph29.us.preheader.i.i.i, %middle.block35
  %indvars.iv65.i.i.i.ph = phi i64 [ %i.hg, %.lr.ph29.us.preheader.i.i.i ], [ %i.hl, %middle.block35 ]
  br label %.lr.ph29.us.i.i.i

.preheader13.us.i.i.i:                            ; preds = %._crit_edge.us.i.i.i
  br i1 %i.fy, label %.lr.ph27.us.preheader.i.i.i, label %.loopexit.us.i.i.i

.lr.ph27.us.preheader.i.i.i:                      ; preds = %.preheader13.us.i.i.i
  %i.ho = zext i32 %.4.lcssa.us.i.i.i to i64      ; 2 uses
  %i.hp = sub i32 %i.k, %.4.lcssa.us.i.i.i
  %xtraiter68 = and i32 %i.hp, 3                  ; 2 uses
  %lcmp.mod69.not = icmp eq i32 %xtraiter68, 0
  br i1 %lcmp.mod69.not, label %.lr.ph27.us.i.i.i.prol.loopexit, label %.lr.ph27.us.i.i.i.prol

.lr.ph27.us.i.i.i.prol:                           ; preds = %.lr.ph27.us.preheader.i.i.i, %.lr.ph27.us.i.i.i.prol
  %indvars.iv62.i.i.i.prol = phi i64 [ %indvars.iv.next63.i.i.i.prol, %.lr.ph27.us.i.i.i.prol ], [ %i.ho, %.lr.ph27.us.preheader.i.i.i ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph27.us.i.i.i.prol ], [ 0, %.lr.ph27.us.preheader.i.i.i ]
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv62.i.i.i.prol
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !36
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.hs
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !59
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv62.i.i.i.prol
  store i64 %i.hu, ptr %i.hv, align 8, !tbaa !59
  %indvars.iv.next63.i.i.i.prol = add nuw nsw i64 %indvars.iv62.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter68
  br i1 %prol.iter.cmp.not, label %.lr.ph27.us.i.i.i.prol.loopexit, label %.lr.ph27.us.i.i.i.prol, !llvm.loop !363

.lr.ph27.us.i.i.i.prol.loopexit:                  ; preds = %.lr.ph27.us.i.i.i.prol, %.lr.ph27.us.preheader.i.i.i
  %indvars.iv62.i.i.i.unr = phi i64 [ %i.ho, %.lr.ph27.us.preheader.i.i.i ], [ %indvars.iv.next63.i.i.i.prol, %.lr.ph27.us.i.i.i.prol ]
  %i.hw = sub i32 %.4.lcssa.us.i.i.i, %i.k
  %i.hx = icmp ugt i32 %i.hw, -4
  br i1 %i.hx, label %.loopexit.us.i.i.i, label %.lr.ph27.us.i.i.i

.preheader15.us.i.i.i:                            ; preds = %bb.k
  br i1 %i.ax, label %.lr.ph21.us.i.i.i.preheader, label %.loopexit16.us.i.i.i

.lr.ph21.us.i.i.i.preheader:                      ; preds = %.preheader15.us.i.i.i
  br i1 %min.iters.check50, label %.lr.ph21.us.i.i.i.preheader64, label %vector.body55

vector.body55:                                    ; preds = %.lr.ph21.us.i.i.i.preheader, %vector.body55
  %index56 = phi i64 [ %index.next57, %vector.body55 ], [ 0, %.lr.ph21.us.i.i.i.preheader ] ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %index56 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  store <2 x i64> %broadcast.splat54, ptr %i.hy, align 8, !tbaa !59
  store <2 x i64> %broadcast.splat54, ptr %i.hz, align 8, !tbaa !59
  %index.next57 = add nuw i64 %index56, 4         ; 2 uses
  %i.ia = icmp eq i64 %index.next57, %n.vec52
  br i1 %i.ia, label %middle.block58, label %vector.body55, !llvm.loop !364

middle.block58:                                   ; preds = %vector.body55
  br i1 %cmp.n59, label %.loopexit16.us.i.i.i, label %.lr.ph21.us.i.i.i.preheader64

.lr.ph21.us.i.i.i.preheader64:                    ; preds = %.lr.ph21.us.i.i.i.preheader, %middle.block58
  %indvars.iv52.i.i.i.ph = phi i64 [ 0, %.lr.ph21.us.i.i.i.preheader ], [ %n.vec52, %middle.block58 ]
  br label %.lr.ph21.us.i.i.i

.preheader17.us.i.i.i:                            ; preds = %bb.k
  br i1 %i.ax, label %.lr.ph.us.i.i.i.preheader, label %.loopexit16.us.i.i.i

.lr.ph.us.i.i.i.preheader:                        ; preds = %.preheader17.us.i.i.i
  br i1 %i.bi, label %.lr.ph.us.i.i.i.epil.preheader, label %.lr.ph.us.i.i.i

._crit_edge35.us.i.i.i:                           ; preds = %.loopexit.us.i.i.i
  %i.ib = add nsw i32 %.09136.us.i.i.i, 1         ; 2 uses
  %exitcond78.not.i.i.i = icmp eq i32 %i.ib, %.val3
  br i1 %exitcond78.not.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS4_RS2_E3$_3JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit", label %bb.b, !llvm.loop !365

"_ZSt10__invoke_rIvRZN2cv3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS4_RS2_E3$_3JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit": ; preds = %._crit_edge35.us.i.i.i, %bb.a, %.lr.ph38.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS8_RS6_E3$_3E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL3padERKNS1_3MatERKSt6vectorIiSaIiEEiS5_RS3_E3$_3E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit" [
    i32 0, label %bb.b
end_hunk_4
