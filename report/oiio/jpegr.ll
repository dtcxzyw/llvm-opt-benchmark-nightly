inline.NumInlined: 1678
inline.NumDeleted: 808
begin_hunk_0_@_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh:bb.a
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = icmp eq i64 %i.t, 1
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds i8, ptr %i.d, i64 -1
  %i.z = load i8, ptr %1, align 1, !tbaa !93
  store i8 %i.z, ptr %i.y, align 1, !tbaa !93
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %2, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.l:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %2, %i.j
  br i1 %i.aa, label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = sub nuw i64 %2, %i.j                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.d, i8 %i.h, i64 %i.ab, i1 false)
  br label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit

_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ac, %bb.m ] ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !216
  %i.ad = icmp sgt i64 %i.j, 1
  br i1 %i.ad, label %bb.n, label %bb.o, !prof !642

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.i.i.i.i.i, ptr align 1 %1, i64 %i.j, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  %i.ae = icmp eq i64 %i.j, 1
  br i1 %i.ae, label %bb.p, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.af = load i8, ptr %1, align 1, !tbaa !93
  store i8 %i.af, ptr %.0.i.i.i.i.i, align 1, !tbaa !93
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !216
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.j
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !216
  %.not.i.i.i70 = icmp eq ptr %i.d, %1
  br i1 %.not.i.i.i70, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %i.j, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.r:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %0, align 8, !tbaa !105   ; 5 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.ak = sub i64 %i.f, %i.aj                     ; 4 uses
  %i.al = sub i64 9223372036854775807, %i.ak
  %i.am = icmp ult i64 %i.al, %2
  br i1 %i.am, label %bb.s, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #29
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.r
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 %2)
  %i.an = add i64 %.sroa.speculated.i, %i.ak      ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.ak
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 9223372036854775807)
  %i.aq = select i1 %i.ao, i64 9223372036854775807, i64 %i.ap ; 3 uses
  %i.ar = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.as = sub i64 %i.ar, %i.aj                    ; 4 uses
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #31
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.au = phi ptr [ %i.at, %bb.t ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.as ; 2 uses
  %i.aw = load i8, ptr %3, align 1, !tbaa !93
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 %i.aw, i64 %2, i1 false)
  %i.ax = icmp sgt i64 %i.as, 1
  br i1 %i.ax, label %bb.v, label %bb.w, !prof !642

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ai, i64 %i.as, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.u
  %i.ay = icmp eq i64 %i.as, 1
  br i1 %i.ay, label %bb.x, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.x:                                             ; preds = %bb.w
  %i.az = load i8, ptr %i.ai, align 1, !tbaa !93
  store i8 %i.az, ptr %i.au, align 1, !tbaa !93
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.x, %bb.w, %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %2 ; 3 uses
  %i.bb = sub i64 %i.f, %i.ar                     ; 4 uses
  %i.bc = icmp sgt i64 %i.bb, 1
  br i1 %i.bc, label %bb.y, label %bb.z, !prof !642

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr align 1 %1, i64 %i.bb, i1 false)
  br label %bb.ab

bb.z:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.bd = icmp eq i64 %i.bb, 1
  br i1 %i.bd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.be = load i8, ptr %1, align 1, !tbaa !93
  store i8 %i.be, ptr %i.ba, align 1, !tbaa !93
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.bf = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb
  %.not.i75 = icmp eq ptr %i.ai, null
  br i1 %.not.i75, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bg = sub i64 %i.e, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.bg) #30
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %bb.ab, %bb.ac
  store ptr %i.au, ptr %0, align 8, !tbaa !105
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !216
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aq
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !107
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

_ZSt4fillIPhhEvT_S1_RKT0_.exit:                   ; preds = %bb.k, %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69, %bb.q, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #20 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"struct.ultrahdr::Color", align 8  ; 5 uses
  %2 = alloca %"struct.ultrahdr::Color", align 4  ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !58    ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.c = load ptr, ptr %.val, align 8, !tbaa !122
  %i.d = load i32, ptr %i.c, align 8, !tbaa !73   ; 2 uses
  %i.e = tail call noundef zeroext i1 @_ZN8ultrahdr16isPixelFormatRgbE12uhdr_img_fmt(i32 noundef %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !126
  %i.h = load i32, ptr %i.g, align 8, !tbaa !73
  %i.i = tail call noundef zeroext i1 @_ZN8ultrahdr16isPixelFormatRgbE12uhdr_img_fmt(i32 noundef %i.h)
  %i.j = load ptr, ptr %.val, align 8, !tbaa !122
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !119
  %.not162.i.i.i = icmp eq i32 %i.l, 0            ; 2 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !126  ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !58
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.u = load i32, ptr %i.t, align 8, !tbaa !3
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !3
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 80 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !663, !nonnull !26, !align !473
  %i.ae = call noundef zeroext i1 @_ZN8ultrahdr8JobQueue10dequeueJobERjS1_(ptr noundef nonnull align 8 dereferenceable(176) %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br i1 %i.ae, label %.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS3_E3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.af = icmp eq i32 %i.d, 0                     ; 3 uses
  %i.ag = select i1 %i.af, i64 2, i64 1           ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %.sroa.213.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 56 ; 2 uses
  %i.aq = select i1 %i.af, i32 4, i32 1
  %i.ar = uitofp nneg i32 %i.aq to float          ; 2 uses
  %i.as = zext i1 %i.af to i64                    ; 2 uses
  %i.at = insertelement <2 x i1> poison, i1 %.not162.i.i.i, i64 0
  %i.au = shufflevector <2 x i1> %i.at, <2 x i1> poison, <2 x i32> zeroinitializer
  br label %bb.b

.loopexit.i.i.i:                                  ; preds = %._crit_edge.i.i.i, %bb.b
  %i.av = load ptr, ptr %i.ac, align 8, !tbaa !663, !nonnull !26, !align !473
  %i.aw = call noundef zeroext i1 @_ZN8ultrahdr8JobQueue10dequeueJobERjS1_(ptr noundef nonnull align 8 dereferenceable(176) %i.av, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br i1 %i.aw, label %bb.b, label %"_ZSt10__invoke_rIvRZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS3_E3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit", !llvm.loop !664

bb.b:                                             ; preds = %.loopexit.i.i.i, %.lr.ph.i.i.i
  %i.ax = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.ay = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp ult i32 %i.ax, %i.ay
  br i1 %i.ba, label %.preheader164.preheader.i.i.i, label %.loopexit.i.i.i

.preheader164.preheader.i.i.i:                    ; preds = %bb.b
  %i.bb = zext i32 %i.ax to i64
  %.pre.i.i.i = load ptr, ptr %.val, align 8, !tbaa !122
  br label %.preheader164.i.i.i

.preheader164.i.i.i:                              ; preds = %._crit_edge.i.i.i, %.preheader164.preheader.i.i.i
  %i.bc = phi ptr [ %i.bi, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %.preheader164.preheader.i.i.i ] ; 2 uses
  %.0176.i.i.i = phi i64 [ %i.bj, %._crit_edge.i.i.i ], [ %i.bb, %.preheader164.preheader.i.i.i ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !171
  %.not179.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not179.i.i.i, label %._crit_edge.i.i.i, label %.preheader163.lr.ph.i.i.i

.preheader163.lr.ph.i.i.i:                        ; preds = %.preheader164.i.i.i
  %i.bf = lshr i64 %.0176.i.i.i, %i.as            ; 2 uses
  %i.bg = mul nuw i64 %i.bf, %i.y
  %invariant.gep172.i.i.i = getelementptr i8, ptr %i.q, i64 %i.bg
  %i.bh = mul nuw i64 %i.bf, %i.ab
  %invariant.gep174.i.i.i = getelementptr i8, ptr %i.s, i64 %i.bh
  br label %.preheader163.i.i.i

.preheader163.i.i.i:                              ; preds = %bb.n, %.preheader163.lr.ph.i.i.i
  %.0142171.i.i.i = phi i64 [ 0, %.preheader163.lr.ph.i.i.i ], [ %i.el, %bb.n ] ; 4 uses
  %invariant.gep.i.i.i = getelementptr i8, ptr %i.o, i64 %.0142171.i.i.i
  br label %.preheader.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.n, %.preheader164.i.i.i
  %i.bi = phi ptr [ %i.bc, %.preheader164.i.i.i ], [ %i.em, %bb.n ]
  %i.bj = add nuw nsw i64 %.0176.i.i.i, %i.ag     ; 2 uses
  %i.bk = icmp samesign ult i64 %i.bj, %i.az
  br i1 %i.bk, label %.preheader164.i.i.i, label %.loopexit.i.i.i, !llvm.loop !665

.preheader.i.i.i:                                 ; preds = %bb.d, %.preheader163.i.i.i
  %indvars.iv181.i.i.i = phi i64 [ 0, %.preheader163.i.i.i ], [ %indvars.iv.next182.i.i.i, %bb.d ] ; 2 uses
  %i.bl = phi <2 x float> [ zeroinitializer, %.preheader163.i.i.i ], [ %i.ek, %bb.d ]
  %i.bm = add nuw i64 %indvars.iv181.i.i.i, %.0176.i.i.i ; 4 uses
  %i.bn = mul nuw i64 %i.bm, %i.v
  %gep.i.i.i = getelementptr i8, ptr %invariant.gep.i.i.i, i64 %i.bn
  br label %bb.e

bb.c:                                             ; preds = %bb.d
  %i.bo = load ptr, ptr %i.f, align 8, !tbaa !126
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !73
  %i.bq = icmp eq i32 %i.bp, 1
  br i1 %i.bq, label %bb.m, label %bb.n

bb.d:                                             ; preds = %bb.l
  %indvars.iv.next182.i.i.i = add nuw nsw i64 %indvars.iv181.i.i.i, 1 ; 2 uses
  %exitcond185.not.i.i.i = icmp eq i64 %indvars.iv.next182.i.i.i, %i.ag
  br i1 %exitcond185.not.i.i.i, label %bb.c, label %.preheader.i.i.i, !llvm.loop !666

bb.e:                                             ; preds = %bb.l, %.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.l ] ; 3 uses
  %i.br = phi <2 x float> [ %i.bl, %.preheader.i.i.i ], [ %i.ek, %bb.l ] ; 3 uses
  %i.bs = load ptr, ptr %i.ah, align 8, !tbaa !131
  %i.bt = load ptr, ptr %.val, align 8, !tbaa !122
  %i.bu = add i64 %indvars.iv.i.i.i, %.0142171.i.i.i ; 3 uses
  %i.bv = call { <2 x float>, float } %i.bs(ptr noundef %i.bt, i64 noundef %i.bu, i64 noundef %i.bm), !inline_history !667 ; 3 uses
  br i1 %i.e, label %_ZN8ultrahdr13globalTonemapERKSt5arrayIfLm3EEfb.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.fca.0.extract69.i.i.i = extractvalue { <2 x float>, float } %i.bv, 0
  %.fca.1.extract70.i.i.i = extractvalue { <2 x float>, float } %i.bv, 1
  %i.bw = load ptr, ptr %i.ai, align 8, !tbaa !129
  %i.bx = call { <2 x float>, float } %i.bw(<2 x float> %.fca.0.extract69.i.i.i, float %.fca.1.extract70.i.i.i), !inline_history !667
  br label %_ZN8ultrahdr13globalTonemapERKSt5arrayIfLm3EEfb.exit.i.i.i

_ZN8ultrahdr13globalTonemapERKSt5arrayIfLm3EEfb.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.pn.i.i.i = phi { <2 x float>, float } [ %i.bx, %bb.f ], [ %i.bv, %bb.e ] ; 2 uses
  %.sroa.582.0.i.i.i = extractvalue { <2 x float>, float } %.pn.i.i.i, 1
  %.sroa.081.0.i.i.i = extractvalue { <2 x float>, float } %.pn.i.i.i, 0
  %i.by = load ptr, ptr %i.aj, align 8, !tbaa !127
  %i.bz = call { <2 x float>, float } %i.by(<2 x float> %.sroa.081.0.i.i.i, float %.sroa.582.0.i.i.i), !inline_history !667 ; 2 uses
  %.fca.0.extract49.i.i.i = extractvalue { <2 x float>, float } %i.bz, 0
  %.fca.1.extract50.i.i.i = extractvalue { <2 x float>, float } %i.bz, 1
  %i.ca = load ptr, ptr %i.ak, align 8, !tbaa !134
  %i.cb = load ptr, ptr %i.al, align 8, !tbaa !133
  %i.cc = call { <2 x float>, float } %i.ca(<2 x float> %.fca.0.extract49.i.i.i, float %.fca.1.extract50.i.i.i, ptr noundef %i.cb), !inline_history !667 ; 2 uses
  %.fca.0.extract39.i.i.i = extractvalue { <2 x float>, float } %i.cc, 0 ; 2 uses
  %.fca.1.extract40.i.i.i = extractvalue { <2 x float>, float } %i.cc, 1 ; 2 uses
  %i.cd = load float, ptr %i.am, align 8, !tbaa !130
  %i.ce = fdiv contract float %i.cd, 2.030000e+02 ; 4 uses
  %i.cf = fmul contract float %.fca.1.extract40.i.i.i, %i.ce
  %.sroa.11.0.i.i.i.i = select i1 %.not162.i.i.i, float %.fca.1.extract40.i.i.i, float %i.cf ; 4 uses
  %i.cg = fmul contract float %i.ce, %i.ce
  %i.ch = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = fmul contract <2 x float> %i.ci, %.fca.0.extract39.i.i.i
  %i.ck = select <2 x i1> %i.au, <2 x float> %.fca.0.extract39.i.i.i, <2 x float> %i.cj ; 4 uses
  %i.cl = extractelement <2 x float> %i.ck, i64 0 ; 2 uses
  %i.cm = extractelement <2 x float> %i.ck, i64 1 ; 2 uses
  %i.cn = fcmp contract olt float %i.cl, %i.cm
  %i.co = select i1 %i.cn, float %i.cm, float %i.cl ; 2 uses
  %i.cp = fcmp contract olt float %i.co, %.sroa.11.0.i.i.i.i
  %.sroa.speculated.i.i.i.i = select i1 %i.cp, float %.sroa.11.0.i.i.i.i, float %i.co ; 5 uses
  %i.cq = fdiv contract float %.sroa.speculated.i.i.i.i, %i.cg
  %i.cr = fadd contract float %i.cq, 1.000000e+00
  %i.cs = fadd contract float %.sroa.speculated.i.i.i.i, 1.000000e+00
  %i.ct = fdiv contract float %i.cr, %i.cs
  %i.cu = fmul contract float %.sroa.speculated.i.i.i.i, %i.ct ; 2 uses
  %i.cv = fcmp contract ogt <2 x float> %i.ck, zeroinitializer
  %i.cw = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fmul contract <2 x float> %i.ck, %i.cx
  %i.cz = insertelement <2 x float> poison, float %.sroa.speculated.i.i.i.i, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = fdiv contract <2 x float> %i.cy, %i.da
  %i.dc = select <2 x i1> %i.cv, <2 x float> %i.db, <2 x float> zeroinitializer
  %i.dd = fcmp contract ogt float %.sroa.11.0.i.i.i.i, 0.000000e+00
  %i.de = fmul contract float %.sroa.11.0.i.i.i.i, %i.cu
  %i.df = fdiv contract float %i.de, %.sroa.speculated.i.i.i.i
  %.0.i.i.2.i.i.i.i = select i1 %i.dd, float %i.df, float 0.000000e+00
  %i.dg = load ptr, ptr %i.an, align 8, !tbaa !128
  %i.dh = call { <2 x float>, float } %i.dg(<2 x float> %i.dc, float %.0.i.i.2.i.i.i.i), !inline_history !667 ; 2 uses
  %.fca.0.extract27.i.i.i = extractvalue { <2 x float>, float } %i.dh, 0 ; 3 uses
  %.fca.1.extract28.i.i.i = extractvalue { <2 x float>, float } %i.dh, 1 ; 3 uses
  %i.di = fcmp contract olt <2 x float> %.fca.0.extract27.i.i.i, zeroinitializer
  %i.dj = fcmp contract ogt <2 x float> %.fca.0.extract27.i.i.i, splat (float 1.000000e+00)
  %i.dk = select <2 x i1> %i.dj, <2 x float> splat (float 1.000000e+00), <2 x float> %.fca.0.extract27.i.i.i
  %i.dl = select <2 x i1> %i.di, <2 x float> zeroinitializer, <2 x float> %i.dk
  %i.dm = fcmp contract olt float %.fca.1.extract28.i.i.i, 0.000000e+00
  %i.dn = fcmp contract ogt float %.fca.1.extract28.i.i.i, 1.000000e+00
  %i.do = select contract i1 %i.dn, float 1.000000e+00, float %.fca.1.extract28.i.i.i
  %i.dp = select contract i1 %i.dm, float 0.000000e+00, float %i.do
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.dq = call { <2 x float>, float } @_ZN8ultrahdr8srgbOetfENS_5ColorE(<2 x float> %i.dl, float %i.dp) ; 2 uses
  %.fca.0.extract10.i.i.i = extractvalue { <2 x float>, float } %i.dq, 0 ; 2 uses
  %.fca.1.extract11.i.i.i = extractvalue { <2 x float>, float } %i.dq, 1 ; 2 uses
  store <2 x float> %.fca.0.extract10.i.i.i, ptr %1, align 8
  store float %.fca.1.extract11.i.i.i, ptr %.sroa.213.0..sroa_idx.i.i.i, align 8
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN8ultrahdr13globalTonemapERKSt5arrayIfLm3EEfb.exit.i.i.i
  %i.dr = load ptr, ptr %i.ap, align 8, !tbaa !132
  %i.ds = load ptr, ptr %i.f, align 8, !tbaa !126
  call void %i.dr(ptr noundef %i.ds, i64 noundef %i.bu, i64 noundef %i.bm, ptr noundef nonnull align 4 dereferenceable(12) %1), !inline_history !667
  br label %bb.l

bb.h:                                             ; preds = %_ZN8ultrahdr13globalTonemapERKSt5arrayIfLm3EEfb.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.dt = call { <2 x float>, float } @_ZN8ultrahdr10p3RgbToYuvENS_5ColorE(<2 x float> %.fca.0.extract10.i.i.i, float %.fca.1.extract11.i.i.i) ; 2 uses
  %.fca.0.extract2.i.i.i = extractvalue { <2 x float>, float } %i.dt, 0 ; 2 uses
  %.fca.1.extract3.i.i.i = extractvalue { <2 x float>, float } %i.dt, 1
  %i.du = extractelement <2 x float> %.fca.0.extract2.i.i.i, i64 0
  %i.dv = fadd contract float %i.du, 0.000000e+00 ; 2 uses
  store float %i.dv, ptr %2, align 4, !tbaa !93
  %i.dw = shufflevector <2 x float> %.fca.0.extract2.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dx = insertelement <2 x float> %i.dw, float %.fca.1.extract3.i.i.i, i64 1
  %i.dy = fadd contract <2 x float> %i.dx, splat (float 5.000000e-01) ; 2 uses
  store <2 x float> %i.dy, ptr %i.ao, align 4, !tbaa !93
  %i.dz = load ptr, ptr %i.f, align 8, !tbaa !126 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !73
  %.not.i.i.i = icmp eq i32 %i.ea, 1
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eb = load ptr, ptr %i.ap, align 8, !tbaa !132
  call void %i.eb(ptr noundef nonnull %i.dz, i64 noundef %i.bu, i64 noundef %i.bm, ptr noundef nonnull align 4 dereferenceable(12) %2), !inline_history !667
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ec = fmul contract float %i.dv, 2.550000e+02
  %i.ed = call contract noundef float @llvm.round.f32(float %i.ec)
  %i.ee = fptosi float %i.ed to i32
  %.sroa.speculate.load.false.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.ee, i32 0)
  %i.ef = call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.i.i.i.i, i32 255)
  %i.eg = trunc nuw i32 %i.ef to i8
  %i.eh = getelementptr i8, ptr %gep.i.i.i, i64 %indvars.iv.i.i.i
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !93
  %i.ei = fadd contract <2 x float> %i.br, %i.dy
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ej = phi <2 x float> [ %i.br, %bb.i ], [ %i.ei, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %i.ek = phi <2 x float> [ %i.br, %bb.g ], [ %i.ej, %bb.k ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.ag
  br i1 %exitcond.not.i.i.i, label %bb.d, label %bb.e, !llvm.loop !668

bb.m:                                             ; preds = %bb.c
  %3 = extractelement <2 x float> %i.ek, i64 0
  %4 = fdiv contract float %3, %i.ar
  %5 = extractelement <2 x float> %i.ek, i64 1
  %6 = fdiv contract float %5, %i.ar
  %7 = fmul contract float %4, 2.550000e+02
  %8 = call contract noundef float @llvm.round.f32(float %7)
  %9 = fptosi float %8 to i32
  %.sroa.speculate.load.false.i155.i.i.i = call i32 @llvm.smax.i32(i32 %9, i32 0)
  %10 = call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.i155.i.i.i, i32 255)
  %11 = trunc nuw i32 %10 to i8
  %12 = lshr i64 %.0142171.i.i.i, %i.as           ; 2 uses
  %gep173.i.i.i = getelementptr i8, ptr %invariant.gep172.i.i.i, i64 %12
  store i8 %11, ptr %gep173.i.i.i, align 1, !tbaa !93
  %13 = fmul contract float %6, 2.550000e+02
  %14 = call contract noundef float @llvm.round.f32(float %13)
  %15 = fptosi float %14 to i32
  %.sroa.speculate.load.false.i156.i.i.i = call i32 @llvm.smax.i32(i32 %15, i32 0)
  %16 = call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.i156.i.i.i, i32 255)
  %17 = trunc nuw i32 %16 to i8
  %gep175.i.i.i = getelementptr i8, ptr %invariant.gep174.i.i.i, i64 %12
  store i8 %17, ptr %gep175.i.i.i, align 1, !tbaa !93
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.c
  %i.el = add i64 %.0142171.i.i.i, %i.ag          ; 2 uses
  %i.em = load ptr, ptr %.val, align 8, !tbaa !122 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !171
  %i.ep = zext i32 %i.eo to i64
  %i.eq = icmp ult i64 %i.el, %i.ep
  br i1 %i.eq, label %.preheader163.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !669

"_ZSt10__invoke_rIvRZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS3_E3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit": ; preds = %.loopexit.i.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #3 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS2_E3$_0", ptr %0, align 8, !tbaa !493
  br label %"_ZNSt14_Function_base13_Base_managerIZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !58
  store ptr %.val, ptr %0, align 8, !tbaa !58
  br label %"_ZNSt14_Function_base13_Base_managerIZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #31 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(88) %.val6, i64 88, i1 false), !tbaa.struct !437
  store ptr %i.a, ptr %0, align 8, !tbaa !58
  br label %"_ZNSt14_Function_base13_Base_managerIZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !58 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 88) #30
  br label %"_ZNSt14_Function_base13_Base_managerIZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare { <2 x float>, float } @_ZN8ultrahdr8srgbOetfENS_5ColorE(<2 x float>, float) local_unnamed_addr #7

declare { <2 x float>, float } @_ZN8ultrahdr10p3RgbToYuvENS_5ColorE(<2 x float>, float) local_unnamed_addr #7

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_jpegr.cpp() #24 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdrL13kXmpNameSpaceB5cxx11E, i64 16), ptr @_ZN8ultrahdrL13kXmpNameSpaceB5cxx11E, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 28, ptr %i.b, align 8, !tbaa !142
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN8ultrahdrL13kXmpNameSpaceB5cxx11E, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr @_ZN8ultrahdrL13kXmpNameSpaceB5cxx11E, align 8, !tbaa !118
  %i.d = load i64, ptr %i.b, align 8, !tbaa !142  ; 3 uses
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdrL13kXmpNameSpaceB5cxx11E, i64 16), align 8, !tbaa !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.c, ptr noundef nonnull align 1 dereferenceable(28) @.str, i64 28, i1 false)
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdrL13kXmpNameSpaceB5cxx11E, i64 8), align 8, !tbaa !91
  %i.e = load ptr, ptr @_ZN8ultrahdrL13kXmpNameSpaceB5cxx11E, align 8, !tbaa !118
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  store i8 0, ptr %i.f, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.g = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN8ultrahdrL13kXmpNameSpaceB5cxx11E, ptr nonnull @__dso_handle) #28 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdrL13kIsoNameSpaceB5cxx11E, i64 16), ptr @_ZN8ultrahdrL13kIsoNameSpaceB5cxx11E, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 27, ptr %i.a, align 8, !tbaa !142
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN8ultrahdrL13kIsoNameSpaceB5cxx11E, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr @_ZN8ultrahdrL13kIsoNameSpaceB5cxx11E, align 8, !tbaa !118
  %i.i = load i64, ptr %i.a, align 8, !tbaa !142  ; 3 uses
  store i64 %i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdrL13kIsoNameSpaceB5cxx11E, i64 16), align 8, !tbaa !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.h, ptr noundef nonnull align 1 dereferenceable(27) @.str.2, i64 27, i1 false)
  store i64 %i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdrL13kIsoNameSpaceB5cxx11E, i64 8), align 8, !tbaa !91
  %i.j = load ptr, ptr @_ZN8ultrahdrL13kIsoNameSpaceB5cxx11E, align 8, !tbaa !118
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  store i8 0, ptr %i.k, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.l = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN8ultrahdrL13kIsoNameSpaceB5cxx11E, ptr nonnull @__dso_handle) #28 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.trunc.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree noreturn }
attributes #18 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nounwind }
attributes #29 = { noreturn }
attributes #30 = { builtin nounwind }
attributes #31 = { builtin allocsize(0) }
attributes #32 = { noreturn nounwind }
attributes #33 = { cold nounwind }
attributes #34 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSSt15_Deque_iteratorISt5tupleIJjjEERS1_PS1_E", !9, i64 0, !9, i64 8, !9, i64 16, !11, i64 24}
!9 = !{!"p1 _ZTSSt5tupleIJjjEE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p2 _ZTSSt5tupleIJjjEE", !12, i64 0}
!12 = !{!"any p2 pointer", !10, i64 0}
!13 = !{!14, !15, i64 0}
!14 = !{!"_ZTSN8ultrahdr8JobQueueE", !15, i64 0, !16, i64 8, !21, i64 88, !23, i64 128}
!15 = !{!"bool", !5, i64 0}
!16 = !{!"_ZTSSt5dequeISt5tupleIJjjEESaIS1_EE", !17, i64 0}
!17 = !{!"_ZTSSt11_Deque_baseISt5tupleIJjjEESaIS1_EE", !18, i64 0}
!18 = !{!"_ZTSNSt11_Deque_baseISt5tupleIJjjEESaIS1_EE11_Deque_implE", !19, i64 0}
!19 = !{!"_ZTSNSt11_Deque_baseISt5tupleIJjjEESaIS1_EE16_Deque_impl_dataE", !11, i64 0, !20, i64 8, !8, i64 16, !8, i64 48}
!20 = !{!"long", !5, i64 0}
!21 = !{!"_ZTSSt5mutex", !22, i64 0}
!22 = !{!"_ZTSSt12__mutex_base", !5, i64 0}
!23 = !{!"_ZTSSt18condition_variable", !24, i64 0}
!24 = !{!"_ZTSSt9__condvar", !5, i64 0}
!25 = !{i8 0, i8 2}
!26 = !{}
!27 = !{!28, !20, i64 0}
!28 = !{!"_ZTS8timespec", !20, i64 0, !20, i64 8}
!29 = !{!28, !20, i64 8}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!8, !11, i64 24}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZNSt5dequeISt5tupleIJjjEESaIS1_EE5beginEv: argument 0"}
!35 = distinct !{!35, !"_ZNSt5dequeISt5tupleIJjjEESaIS1_EE5beginEv"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZNKSt15_Deque_iteratorISt5tupleIJjjEERKS1_PS2_E13_M_const_castEv: argument 0"}
!38 = distinct !{!38, !"_ZNKSt15_Deque_iteratorISt5tupleIJjjEERKS1_PS2_E13_M_const_castEv"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZNSt5dequeISt5tupleIJjjEESaIS1_EE5eraseESt15_Deque_iteratorIS1_RKS1_PS5_E: argument 0"}
!41 = distinct !{!41, !"_ZNSt5dequeISt5tupleIJjjEESaIS1_EE5eraseESt15_Deque_iteratorIS1_RKS1_PS5_E"}
!42 = !{!9, !9, i64 0}
!43 = !{!37, !40}
!44 = !{!8, !9, i64 8}
!45 = !{!8, !9, i64 16}
!46 = !{!47, !4, i64 0}
!47 = !{!"_ZTSSt10_Head_baseILm1EjLb0EE", !4, i64 0}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZSt10make_tupleIJRjS0_EESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOS4_: argument 0"}
!50 = distinct !{!50, !"_ZSt10make_tupleIJRjS0_EESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOS4_"}
!51 = !{!52, !4, i64 0}
!52 = !{!"_ZTSSt10_Head_baseILm0EjLb0EE", !4, i64 0}
!53 = !{!19, !9, i64 48}
!54 = !{!19, !9, i64 64}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZNSt5dequeISt5tupleIJjjEESaIS1_EE5beginEv: argument 0"}
!57 = distinct !{!57, !"_ZNSt5dequeISt5tupleIJjjEESaIS1_EE5beginEv"}
!58 = !{!10, !10, i64 0}
!59 = !{!19, !11, i64 72}
!60 = distinct !{!60, !31}
!61 = !{!62, !10, i64 0}
!62 = !{!"_ZTSN8ultrahdr5JpegRE", !10, i64 0, !4, i64 8, !4, i64 12, !15, i64 16, !63, i64 20, !64, i64 24, !63, i64 28, !63, i64 32, !63, i64 36}
!63 = !{!"float", !5, i64 0}
!64 = !{!"_ZTS15uhdr_enc_preset", !5, i64 0}
!65 = !{!62, !4, i64 8}
!66 = !{!62, !4, i64 12}
!67 = !{!62, !15, i64 16}
!68 = !{!62, !63, i64 20}
!69 = !{!62, !64, i64 24}
!70 = !{!62, !63, i64 28}
!71 = !{!62, !63, i64 32}
!72 = !{!62, !63, i64 36}
!73 = !{!74, !75, i64 0}
!74 = !{!"_ZTS14uhdr_raw_image", !75, i64 0, !76, i64 4, !77, i64 8, !78, i64 12, !4, i64 16, !4, i64 20, !5, i64 24, !5, i64 48}
!75 = !{!"_ZTS12uhdr_img_fmt", !5, i64 0}
!76 = !{!"_ZTS16uhdr_color_gamut", !5, i64 0}
!77 = !{!"_ZTS19uhdr_color_transfer", !5, i64 0}
!78 = !{!"_ZTS16uhdr_color_range", !5, i64 0}
!79 = !{!80, !81, i64 0}
!80 = !{!"_ZTS15uhdr_error_info", !81, i64 0, !4, i64 4, !5, i64 8}
!81 = !{!"_ZTS14uhdr_codec_err", !5, i64 0}
!82 = !{!80, !4, i64 4}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZSt11make_uniqueIN8ultrahdr18uhdr_raw_image_extEJR12uhdr_img_fmt16uhdr_color_gamut19uhdr_color_transfer16uhdr_color_rangeRjS7_iEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!85 = distinct !{!85, !"_ZSt11make_uniqueIN8ultrahdr18uhdr_raw_image_extEJR12uhdr_img_fmt16uhdr_color_gamut19uhdr_color_transfer16uhdr_color_rangeRjS7_iEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!86 = !{!87, !87, i64 0}
!87 = !{!"p1 _ZTSN8ultrahdr18uhdr_raw_image_extE", !10, i64 0}
!88 = !{!89, !90, i64 0}
!89 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !90, i64 0}
!90 = !{!"p1 omnipotent char", !10, i64 0}
!91 = !{!92, !20, i64 8}
!92 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !89, i64 0, !20, i64 8, !5, i64 16}
!93 = !{!5, !5, i64 0}
!94 = !{!95, !87, i64 0}
!95 = !{!"_ZTSSt10_Head_baseILm0EPN8ultrahdr18uhdr_raw_image_extELb0EE", !87, i64 0}
!96 = !{!74, !76, i64 4}
!97 = !{!98, !99, i64 0}
!98 = !{!"_ZTSSt12__shared_ptrIN8ultrahdr10DataStructELN9__gnu_cxx12_Lock_policyE2EE", !99, i64 0, !100, i64 8}
!99 = !{!"p1 _ZTSN8ultrahdr10DataStructE", !10, i64 0}
!100 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !101, i64 0}
!101 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!102 = !{!103, !76, i64 24}
!103 = !{!"_ZTS21uhdr_compressed_image", !10, i64 0, !20, i64 8, !20, i64 16, !76, i64 24, !77, i64 28, !78, i64 32}
!104 = !{!90, !90, i64 0}
!105 = !{!106, !90, i64 0}
!106 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !90, i64 0, !90, i64 8, !90, i64 16}
!107 = !{!106, !90, i64 16}
!108 = !{!109, !109, i64 0}
!109 = !{!"p1 _ZTSN8ultrahdr17uhdr_memory_blockE", !10, i64 0}
!110 = !{!100, !101, i64 0}
!111 = !{!112, !4, i64 8}
!112 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!113 = !{!112, !4, i64 12}
!114 = !{!115, !115, i64 0}
!115 = !{!"vtable pointer", !6, i64 0}
!116 = distinct !{ptr @_ZNSt12__shared_ptrIN8ultrahdr10DataStructELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!117 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!118 = !{!92, !90, i64 0}
!119 = !{!74, !77, i64 8}
!120 = !{!74, !78, i64 12}
!121 = !{!74, !4, i64 20}
!122 = !{!123, !124, i64 0}
!123 = !{!"_ZTSZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS2_E3$_0", !124, i64 0, !124, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !63, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !125, i64 80}
!124 = !{!"p1 _ZTS14uhdr_raw_image", !10, i64 0}
!125 = !{!"p1 _ZTSN8ultrahdr8JobQueueE", !10, i64 0}
!126 = !{!123, !124, i64 8}
!127 = !{!123, !10, i64 16}
!128 = !{!123, !10, i64 24}
!129 = !{!123, !10, i64 32}
!130 = !{!123, !63, i64 40}
!131 = !{!123, !10, i64 48}
!132 = !{!123, !10, i64 56}
!133 = !{!123, !10, i64 64}
!134 = !{!123, !10, i64 72}
!135 = !{!125, !125, i64 0}
!136 = !{!137, !138, i64 8}
!137 = !{!"_ZTSNSt12_Vector_baseISt6threadSaIS0_EE17_Vector_impl_dataE", !138, i64 0, !138, i64 8, !138, i64 16}
!138 = !{!"p1 _ZTSSt6thread", !10, i64 0}
!139 = !{!137, !138, i64 16}
!140 = !{!141, !20, i64 0}
!141 = !{!"_ZTSNSt6thread2idE", !20, i64 0}
!142 = !{!20, !20, i64 0}
!143 = !{!137, !138, i64 0}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!146 = distinct !{!146, !"_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_"}
!147 = !{!148}
!148 = distinct !{!148, !146, !"_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!149 = !{!148, !150}
!150 = distinct !{!150, !151}
!151 = distinct !{!151, !"LVerDomain"}
!152 = !{!145, !153}
!153 = distinct !{!153, !151}
!154 = distinct !{!154, !31, !155, !156}
!155 = !{!"llvm.loop.isvectorized", i32 1}
!156 = !{!"llvm.loop.unroll.runtime.disable"}
!157 = distinct !{!157, !31, !155}
!158 = distinct !{!158, !31}
!159 = !{!160}
end_hunk_0
