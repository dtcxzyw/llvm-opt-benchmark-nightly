Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/einstein?download=true
inline.NumInlined: 1464
inline.NumDeleted: 489
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNSt6vectorIxSaIxEE17_M_default_appendEm:bb.a
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !tbaa !23
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !17
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.76) #21
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #22 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i64 0, ptr %i.y, align 8, !tbaa !23
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !23
  br label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit

_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #23
  br label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36

_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36: ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !17
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIxSt4pairIKxxESt10_Select1stIS2_ESt4lessIxESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89
  tail call void @_ZNSt8_Rb_treeIxSt4pairIKxxESt10_Select1stIS2_ESt4lessIxESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !229

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi13einstein_evalIdEEvxRKSt6vectorIxSaIxEES5_S5_S5_PKT_S8_PS6_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 comdat {
bb.a:
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = load ptr, ptr %1, align 8, !tbaa !18     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 6 uses
  %i.h = icmp sgt i64 %i.g, 0
  %.pre = load ptr, ptr %2, align 8, !tbaa !20    ; 5 uses
  %.pre218 = load ptr, ptr %3, align 8, !tbaa !20 ; 5 uses
  %.pre219 = load ptr, ptr %4, align 8, !tbaa !20 ; 5 uses
  br i1 %i.h, label %bb.c, label %.thread151

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.c, i64 %i.f     ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !23   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.f
  %i.m = load i64, ptr %i.l, align 8, !tbaa !23   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.pre218, i64 %i.f
  %i.o = load i64, ptr %i.n, align 8, !tbaa !23   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pre219, i64 %i.f
  %i.q = load i64, ptr %i.p, align 8, !tbaa !23   ; 3 uses
  %.not168 = icmp eq i64 %i.f, 8
  br i1 %.not168, label %.thread151, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.i, i64 -16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !23   ; 2 uses
  %i.t = add nsw i64 %i.g, -1                     ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !23   ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.pre218, i64 %i.t
  %i.x = load i64, ptr %i.w, align 8, !tbaa !23   ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.pre219, i64 %i.t
  %i.z = load i64, ptr %i.y, align 8, !tbaa !23   ; 2 uses
  %i.aa = icmp samesign ugt i64 %i.g, 2
  br i1 %i.aa, label %bb.e, label %.thread151

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %i.i, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !23
  %i.ad = add nsw i64 %i.g, -2                    ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !23
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.pre218, i64 %i.ad
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !23
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.pre219, i64 %i.ad
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !23
  br label %.thread151

.thread151:                                       ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %.0129167 = phi i64 [ %i.z, %bb.e ], [ %i.z, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0130166 = phi i64 [ %i.x, %bb.e ], [ %i.x, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0131165 = phi i64 [ %i.v, %bb.e ], [ %i.v, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0136164 = phi i64 [ %i.s, %bb.e ], [ %i.s, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ] ; 4 uses
  %.0135147163 = phi i64 [ %i.k, %bb.e ], [ %i.k, %bb.d ], [ %i.k, %bb.c ], [ 1, %bb.b ] ; 10 uses
  %.0128148162 = phi i64 [ %i.m, %bb.e ], [ %i.m, %bb.d ], [ %i.m, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %.0127149161 = phi i64 [ %i.o, %bb.e ], [ %i.o, %bb.d ], [ %i.o, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %.0126150160 = phi i64 [ %i.q, %bb.e ], [ %i.q, %bb.d ], [ %i.q, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %.0137 = phi i64 [ %i.ac, %bb.e ], [ 1, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ] ; 4 uses
  %.0134 = phi i64 [ %i.af, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0133 = phi i64 [ %i.ah, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0132 = phi i64 [ %i.aj, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.pre218, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.pre219, i64 8 ; 3 uses
  %i.an = load i64, ptr %.pre, align 8, !tbaa !23
  %i.ao = getelementptr inbounds [8 x i8], ptr %5, i64 %i.an ; 3 uses
  %i.ap = load i64, ptr %.pre218, align 8, !tbaa !23
  %i.aq = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ap ; 3 uses
  %i.ar = load i64, ptr %.pre219, align 8, !tbaa !23
  %i.as = getelementptr inbounds [8 x i8], ptr %7, i64 %i.ar ; 3 uses
  %i.at = mul i64 %.0135147163, %.0136164
  %i.au = mul i64 %i.at, %.0137
  %i.av = sdiv i64 %0, %i.au                      ; 3 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.preheader171.lr.ph, label %.loopexit

.preheader171.lr.ph:                              ; preds = %.thread151
  %i.ax = icmp sgt i64 %.0137, 0
  %8 = icmp sgt i64 %.0135147163, 0               ; 2 uses
  %9 = icmp sgt i64 %.0136164, 0
  %or.cond = and i1 %i.ax, %9
  br i1 %or.cond, label %.preheader171.lr.ph.split.us.split.us, label %.loopexit

.preheader171.lr.ph.split.us.split.us:            ; preds = %.preheader171.lr.ph
  %10 = icmp sgt i64 %i.g, 3
  br i1 %10, label %.preheader171.lr.ph.split.us, label %.preheader171.lr.ph.split

.preheader171.lr.ph.split.us:                     ; preds = %.preheader171.lr.ph.split.us.split.us
  br i1 %8, label %.preheader171.us.us.us.preheader, label %.loopexit

.preheader171.us.us.us.preheader:                 ; preds = %.preheader171.lr.ph.split.us
  %i.ay = add nsw i64 %i.g, -3                    ; 3 uses
  %xtraiter240 = and i64 %i.ay, 1
  %i.az = icmp eq i64 %i.f, 32
  %unroll_iter246.a = and i64 %i.ay, -2
  %lcmp.mod241.not = icmp eq i64 %xtraiter240, 0
  %lcmp.mod245.a = trunc i64 %i.ay to i1
  %xtraiter249 = and i64 %.0135147163, 1
  %i.ba = icmp eq i64 %.0135147163, 1
  %unroll_iter252 = and i64 %.0135147163, 9223372036854775806
  %lcmp.mod250.not = icmp eq i64 %xtraiter249, 0
  %lcmp.mod251 = trunc i64 %.0135147163 to i1
  br label %.preheader171.us.us.us

.preheader171.us.us.us:                           ; preds = %.preheader171.us.us.us.preheader, %._crit_edge196.split197.us.us.us
  %.0125198.us.us.us = phi i64 [ %i.dy, %._crit_edge196.split197.us.us.us ], [ 0, %.preheader171.us.us.us.preheader ] ; 3 uses
  br i1 %i.az, label %.epil.preheader239, label %.preheader171.us.us.us.new

.preheader171.us.us.us.new:                       ; preds = %.preheader171.us.us.us, %.preheader171.us.us.us.new
  %.0120176.us.us.us = phi i64 [ %i.ci, %.preheader171.us.us.us.new ], [ 0, %.preheader171.us.us.us ] ; 6 uses
  %.0121175.us.us.us = phi i64 [ %i.ch, %.preheader171.us.us.us.new ], [ %.0125198.us.us.us, %.preheader171.us.us.us ] ; 2 uses
  %.0122174.us.us.us = phi ptr [ %i.cg, %.preheader171.us.us.us.new ], [ %i.as, %.preheader171.us.us.us ]
  %.0123173.us.us.us = phi ptr [ %i.cc, %.preheader171.us.us.us.new ], [ %i.aq, %.preheader171.us.us.us ]
  %.0124172.us.us.us = phi ptr [ %i.by, %.preheader171.us.us.us.new ], [ %i.ao, %.preheader171.us.us.us ]
  %niter247.a = phi i64 [ %niter247.next.1.a, %.preheader171.us.us.us.new ], [ 0, %.preheader171.us.us.us ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0120176.us.us.us
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !23 ; 2 uses
  %i.bd = srem i64 %.0121175.us.us.us, %i.bc      ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.0120176.us.us.us
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !23
  %i.bg = mul nsw i64 %i.bf, %i.bd
  %i.bh = getelementptr inbounds [8 x i8], ptr %.0124172.us.us.us, i64 %i.bg
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.0120176.us.us.us
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !23
  %i.bk = mul nsw i64 %i.bj, %i.bd
  %i.bl = getelementptr inbounds [8 x i8], ptr %.0123173.us.us.us, i64 %i.bk
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.0120176.us.us.us
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !23
  %i.bo = mul nsw i64 %i.bn, %i.bd
  %i.bp = getelementptr inbounds [8 x i8], ptr %.0122174.us.us.us, i64 %i.bo
  %i.bq = sdiv i64 %.0121175.us.us.us, %i.bc      ; 2 uses
  %i.br = or disjoint i64 %.0120176.us.us.us, 1   ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !23 ; 2 uses
  %i.bu = srem i64 %i.bq, %i.bt                   ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.br
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !23
  %i.bx = mul nsw i64 %i.bw, %i.bu
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bx ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.br
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !23
  %i.cb = mul nsw i64 %i.ca, %i.bu
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.cb ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.br
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !23
  %i.cf = mul nsw i64 %i.ce, %i.bu
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.cf ; 3 uses
  %i.ch = sdiv i64 %i.bq, %i.bt                   ; 2 uses
  %i.ci = add nuw nsw i64 %.0120176.us.us.us, 2   ; 2 uses
  %niter247.next.1.a = add i64 %niter247.a, 2     ; 2 uses
  %niter247.ncmp.1.a = icmp eq i64 %niter247.next.1.a, %unroll_iter246.a
  br i1 %niter247.ncmp.1.a, label %..preheader170_crit_edge.us.us.us.unr-lcssa, label %.preheader171.us.us.us.new, !llvm.loop !230

..preheader170_crit_edge.us.us.us.unr-lcssa:      ; preds = %.preheader171.us.us.us.new
  br i1 %lcmp.mod241.not, label %..preheader170_crit_edge.us.us.us, label %.epil.preheader239

.epil.preheader239:                               ; preds = %..preheader170_crit_edge.us.us.us.unr-lcssa, %.preheader171.us.us.us
  %.0120176.us.us.us.epil.init = phi i64 [ 0, %.preheader171.us.us.us ], [ %i.ci, %..preheader170_crit_edge.us.us.us.unr-lcssa ] ; 4 uses
  %.0121175.us.us.us.epil.init = phi i64 [ %.0125198.us.us.us, %.preheader171.us.us.us ], [ %i.ch, %..preheader170_crit_edge.us.us.us.unr-lcssa ]
  %.0122174.us.us.us.epil.init = phi ptr [ %i.as, %.preheader171.us.us.us ], [ %i.cg, %..preheader170_crit_edge.us.us.us.unr-lcssa ]
  %.0123173.us.us.us.epil.init = phi ptr [ %i.aq, %.preheader171.us.us.us ], [ %i.cc, %..preheader170_crit_edge.us.us.us.unr-lcssa ]
  %.0124172.us.us.us.epil.init = phi ptr [ %i.ao, %.preheader171.us.us.us ], [ %i.by, %..preheader170_crit_edge.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod245.a)
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0120176.us.us.us.epil.init
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !23
  %i.cl = srem i64 %.0121175.us.us.us.epil.init, %i.ck ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.0120176.us.us.us.epil.init
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !23
  %i.co = mul nsw i64 %i.cn, %i.cl
  %i.cp = getelementptr inbounds [8 x i8], ptr %.0124172.us.us.us.epil.init, i64 %i.co
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.0120176.us.us.us.epil.init
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !23
  %i.cs = mul nsw i64 %i.cr, %i.cl
  %i.ct = getelementptr inbounds [8 x i8], ptr %.0123173.us.us.us.epil.init, i64 %i.cs
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.0120176.us.us.us.epil.init
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !23
  %i.cw = mul nsw i64 %i.cv, %i.cl
  %i.cx = getelementptr inbounds [8 x i8], ptr %.0122174.us.us.us.epil.init, i64 %i.cw
  br label %..preheader170_crit_edge.us.us.us

..preheader170_crit_edge.us.us.us:                ; preds = %..preheader170_crit_edge.us.us.us.unr-lcssa, %.epil.preheader239
  %.lcssa236 = phi ptr [ %i.by, %..preheader170_crit_edge.us.us.us.unr-lcssa ], [ %i.cp, %.epil.preheader239 ]
  %.lcssa235 = phi ptr [ %i.cc, %..preheader170_crit_edge.us.us.us.unr-lcssa ], [ %i.ct, %.epil.preheader239 ]
  %.lcssa = phi ptr [ %i.cg, %..preheader170_crit_edge.us.us.us.unr-lcssa ], [ %i.cx, %.epil.preheader239 ]
  br label %.preheader169.us.us.us

.preheader169.us.us.us:                           ; preds = %..preheader170_crit_edge.us.us.us, %._crit_edge188.us.us.us
  %.0116195.us.us.us = phi i64 [ %i.dx, %._crit_edge188.us.us.us ], [ 0, %..preheader170_crit_edge.us.us.us ]
  %.0117193.us.us.us = phi ptr [ %i.dw, %._crit_edge188.us.us.us ], [ %.lcssa, %..preheader170_crit_edge.us.us.us ] ; 2 uses
  %.0118191.us.us.us = phi ptr [ %i.dv, %._crit_edge188.us.us.us ], [ %.lcssa235, %..preheader170_crit_edge.us.us.us ] ; 2 uses
  %.0119189.us.us.us = phi ptr [ %i.du, %._crit_edge188.us.us.us ], [ %.lcssa236, %..preheader170_crit_edge.us.us.us ] ; 2 uses
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader169.us.us.us
  %.0112187.us.us.us = phi i64 [ 0, %.preheader169.us.us.us ], [ %i.dt, %._crit_edge.us.us.us ]
  %.0113186.us.us.us = phi ptr [ %.0117193.us.us.us, %.preheader169.us.us.us ], [ %i.ds, %._crit_edge.us.us.us ] ; 3 uses
  %.0114185.us.us.us = phi ptr [ %.0118191.us.us.us, %.preheader169.us.us.us ], [ %i.dr, %._crit_edge.us.us.us ] ; 3 uses
  %.0115184.us.us.us = phi ptr [ %.0119189.us.us.us, %.preheader169.us.us.us ], [ %i.dq, %._crit_edge.us.us.us ] ; 3 uses
  br i1 %i.ba, label %.epil.preheader248, label %.preheader.us.us.us.new

.preheader.us.us.us.new:                          ; preds = %.preheader.us.us.us, %.preheader.us.us.us.new
  %.0109181.us.us.us = phi ptr [ %i.dl, %.preheader.us.us.us.new ], [ %.0113186.us.us.us, %.preheader.us.us.us ] ; 3 uses
  %.0110180.us.us.us = phi ptr [ %i.dk, %.preheader.us.us.us.new ], [ %.0114185.us.us.us, %.preheader.us.us.us ] ; 2 uses
  %.0111179.us.us.us = phi ptr [ %i.dj, %.preheader.us.us.us.new ], [ %.0115184.us.us.us, %.preheader.us.us.us ] ; 2 uses
  %niter253 = phi i64 [ %niter253.next.1, %.preheader.us.us.us.new ], [ 0, %.preheader.us.us.us ]
  %i.cy = load double, ptr %.0111179.us.us.us, align 8, !tbaa !75
  %i.cz = load double, ptr %.0110180.us.us.us, align 8, !tbaa !75
  %i.da = load double, ptr %.0109181.us.us.us, align 8, !tbaa !75
  %i.db = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.cz, double %i.da)
  store double %i.db, ptr %.0109181.us.us.us, align 8, !tbaa !75
  %i.dc = getelementptr inbounds [8 x i8], ptr %.0111179.us.us.us, i64 %.0128148162 ; 2 uses
  %i.dd = getelementptr inbounds [8 x i8], ptr %.0110180.us.us.us, i64 %.0127149161 ; 2 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %.0109181.us.us.us, i64 %.0126150160 ; 3 uses
  %i.df = load double, ptr %i.dc, align 8, !tbaa !75
  %i.dg = load double, ptr %i.dd, align 8, !tbaa !75
  %i.dh = load double, ptr %i.de, align 8, !tbaa !75
  %i.di = tail call double @llvm.fmuladd.f64(double %i.df, double %i.dg, double %i.dh)
  store double %i.di, ptr %i.de, align 8, !tbaa !75
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %.0128148162 ; 2 uses
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %.0127149161 ; 2 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.de, i64 %.0126150160 ; 2 uses
  %niter253.next.1 = add nuw nsw i64 %niter253, 2 ; 2 uses
  %niter253.ncmp.1 = icmp eq i64 %niter253.next.1, %unroll_iter252
  br i1 %niter253.ncmp.1, label %._crit_edge.us.us.us.unr-lcssa, label %.preheader.us.us.us.new, !llvm.loop !231

._crit_edge.us.us.us.unr-lcssa:                   ; preds = %.preheader.us.us.us.new
  br i1 %lcmp.mod250.not, label %._crit_edge.us.us.us, label %.epil.preheader248

.epil.preheader248:                               ; preds = %._crit_edge.us.us.us.unr-lcssa, %.preheader.us.us.us
  %.0109181.us.us.us.epil.init = phi ptr [ %.0113186.us.us.us, %.preheader.us.us.us ], [ %i.dl, %._crit_edge.us.us.us.unr-lcssa ] ; 2 uses
  %.0110180.us.us.us.epil.init = phi ptr [ %.0114185.us.us.us, %.preheader.us.us.us ], [ %i.dk, %._crit_edge.us.us.us.unr-lcssa ]
  %.0111179.us.us.us.epil.init = phi ptr [ %.0115184.us.us.us, %.preheader.us.us.us ], [ %i.dj, %._crit_edge.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod251)
  %i.dm = load double, ptr %.0111179.us.us.us.epil.init, align 8, !tbaa !75
  %i.dn = load double, ptr %.0110180.us.us.us.epil.init, align 8, !tbaa !75
  %i.do = load double, ptr %.0109181.us.us.us.epil.init, align 8, !tbaa !75
  %i.dp = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.dn, double %i.do)
  store double %i.dp, ptr %.0109181.us.us.us.epil.init, align 8, !tbaa !75
  br label %._crit_edge.us.us.us

._crit_edge.us.us.us:                             ; preds = %._crit_edge.us.us.us.unr-lcssa, %.epil.preheader248
  %i.dq = getelementptr inbounds [8 x i8], ptr %.0115184.us.us.us, i64 %.0131165
  %i.dr = getelementptr inbounds [8 x i8], ptr %.0114185.us.us.us, i64 %.0130166
  %i.ds = getelementptr inbounds [8 x i8], ptr %.0113186.us.us.us, i64 %.0129167
  %i.dt = add nuw nsw i64 %.0112187.us.us.us, 1   ; 2 uses
  %exitcond215.not = icmp eq i64 %i.dt, %.0136164
  br i1 %exitcond215.not, label %._crit_edge188.us.us.us, label %.preheader.us.us.us, !llvm.loop !232

._crit_edge188.us.us.us:                          ; preds = %._crit_edge.us.us.us
  %i.du = getelementptr inbounds [8 x i8], ptr %.0119189.us.us.us, i64 %.0134
  %i.dv = getelementptr inbounds [8 x i8], ptr %.0118191.us.us.us, i64 %.0133
  %i.dw = getelementptr inbounds [8 x i8], ptr %.0117193.us.us.us, i64 %.0132
  %i.dx = add nuw nsw i64 %.0116195.us.us.us, 1   ; 2 uses
  %exitcond216.not = icmp eq i64 %i.dx, %.0137
  br i1 %exitcond216.not, label %._crit_edge196.split197.us.us.us, label %.preheader169.us.us.us, !llvm.loop !233

._crit_edge196.split197.us.us.us:                 ; preds = %._crit_edge188.us.us.us
  %i.dy = add nuw nsw i64 %.0125198.us.us.us, 1   ; 2 uses
  %exitcond217.not = icmp eq i64 %i.dy, %i.av
  br i1 %exitcond217.not, label %.loopexit, label %.preheader171.us.us.us, !llvm.loop !234

.preheader171.lr.ph.split:                        ; preds = %.preheader171.lr.ph.split.us.split.us
  br i1 %8, label %.preheader171.preheader, label %.loopexit

.preheader171.preheader:                          ; preds = %.preheader171.lr.ph.split
  %xtraiter = and i64 %.0135147163, 1
  %i.dz = icmp eq i64 %.0135147163, 1
  %unroll_iter = and i64 %.0135147163, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod238 = trunc i64 %.0135147163 to i1
  br label %.preheader171

.preheader171:                                    ; preds = %.preheader171.preheader, %._crit_edge196.us.us
  %.0125198 = phi i64 [ %22, %._crit_edge196.us.us ], [ 0, %.preheader171.preheader ]
  br label %.preheader169

.preheader169:                                    ; preds = %.preheader.new, %.preheader171
  %.0116195 = phi i64 [ 0, %.preheader171 ], [ %niter.next.1, %.preheader.new ]
  %.0117193 = phi ptr [ %i.as, %.preheader171 ], [ %i.eo, %.preheader.new ] ; 2 uses
  %.0118191 = phi ptr [ %i.aq, %.preheader171 ], [ %i.en, %.preheader.new ] ; 2 uses
  %.0119189 = phi ptr [ %i.ao, %.preheader171 ], [ %i.em, %.preheader.new ] ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader169
  %.0112187 = phi i64 [ 0, %.preheader169 ], [ %i.el, %._crit_edge ]
  %.0113186 = phi ptr [ %.0117193, %.preheader169 ], [ %i.ek, %._crit_edge ] ; 3 uses
  %.0114185 = phi ptr [ %.0118191, %.preheader169 ], [ %i.ej, %._crit_edge ] ; 3 uses
  %.0115184 = phi ptr [ %.0119189, %.preheader169 ], [ %i.ei, %._crit_edge ] ; 3 uses
  br i1 %i.dz, label %.epil.preheader, label %._crit_edge188

._crit_edge188:                                   ; preds = %.preheader, %._crit_edge188
  %.0109181.us.us = phi ptr [ %i.ec, %._crit_edge188 ], [ %.0113186, %.preheader ] ; 3 uses
  %.0110180.us.us = phi ptr [ %i.eb, %._crit_edge188 ], [ %.0114185, %.preheader ] ; 2 uses
  %.0111179.us.us = phi ptr [ %i.ea, %._crit_edge188 ], [ %.0115184, %.preheader ] ; 2 uses
  %niter = phi i64 [ %i.ed, %._crit_edge188 ], [ 0, %.preheader ]
  %11 = load double, ptr %.0111179.us.us, align 8, !tbaa !75
  %12 = load double, ptr %.0110180.us.us, align 8, !tbaa !75
  %13 = load double, ptr %.0109181.us.us, align 8, !tbaa !75
  %14 = tail call double @llvm.fmuladd.f64(double %11, double %12, double %13)
  store double %14, ptr %.0109181.us.us, align 8, !tbaa !75
  %15 = getelementptr inbounds [8 x i8], ptr %.0111179.us.us, i64 %.0128148162 ; 2 uses
  %16 = getelementptr inbounds [8 x i8], ptr %.0110180.us.us, i64 %.0127149161 ; 2 uses
  %17 = getelementptr inbounds [8 x i8], ptr %.0109181.us.us, i64 %.0126150160 ; 3 uses
  %18 = load double, ptr %15, align 8, !tbaa !75
  %19 = load double, ptr %16, align 8, !tbaa !75
  %20 = load double, ptr %17, align 8, !tbaa !75
  %21 = tail call double @llvm.fmuladd.f64(double %18, double %19, double %20)
  store double %21, ptr %17, align 8, !tbaa !75
  %i.ea = getelementptr inbounds [8 x i8], ptr %15, i64 %.0128148162 ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %16, i64 %.0127149161 ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %17, i64 %.0126150160 ; 2 uses
  %i.ed = add nuw nsw i64 %niter, 2               ; 2 uses
  %exitcond211.not = icmp eq i64 %i.ed, %unroll_iter
  br i1 %exitcond211.not, label %._crit_edge.unr-lcssa, label %._crit_edge188, !llvm.loop !231

._crit_edge.unr-lcssa:                            ; preds = %._crit_edge188
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %.0109181.epil.init = phi ptr [ %.0113186, %.preheader ], [ %i.ec, %._crit_edge.unr-lcssa ] ; 2 uses
  %.0110180.epil.init = phi ptr [ %.0114185, %.preheader ], [ %i.eb, %._crit_edge.unr-lcssa ]
  %.0111179.epil.init = phi ptr [ %.0115184, %.preheader ], [ %i.ea, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod238)
  %i.ee = load double, ptr %.0111179.epil.init, align 8, !tbaa !75
  %i.ef = load double, ptr %.0110180.epil.init, align 8, !tbaa !75
  %i.eg = load double, ptr %.0109181.epil.init, align 8, !tbaa !75
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.ef, double %i.eg)
  store double %i.eh, ptr %.0109181.epil.init, align 8, !tbaa !75
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.ei = getelementptr inbounds [8 x i8], ptr %.0115184, i64 %.0131165
  %i.ej = getelementptr inbounds [8 x i8], ptr %.0114185, i64 %.0130166
  %i.ek = getelementptr inbounds [8 x i8], ptr %.0113186, i64 %.0129167
  %i.el = add nuw nsw i64 %.0112187, 1            ; 2 uses
  %exitcond210.not = icmp eq i64 %i.el, %.0136164
  br i1 %exitcond210.not, label %.preheader.new, label %.preheader, !llvm.loop !232

.preheader.new:                                   ; preds = %._crit_edge
  %i.em = getelementptr inbounds [8 x i8], ptr %.0119189, i64 %.0134
  %i.en = getelementptr inbounds [8 x i8], ptr %.0118191, i64 %.0133
  %i.eo = getelementptr inbounds [8 x i8], ptr %.0117193, i64 %.0132
  %niter.next.1 = add nuw nsw i64 %.0116195, 1    ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %.0137
  br i1 %niter.ncmp.1, label %._crit_edge196.us.us, label %.preheader169, !llvm.loop !233

._crit_edge196.us.us:                             ; preds = %.preheader.new
  %22 = add nuw nsw i64 %.0125198, 1              ; 2 uses
  %exitcond207.not = icmp eq i64 %22, %i.av
  br i1 %exitcond207.not, label %.loopexit, label %.preheader171, !llvm.loop !234

.loopexit:                                        ; preds = %._crit_edge196.us.us, %._crit_edge196.split197.us.us.us, %.preheader171.lr.ph, %.preheader171.lr.ph.split.us, %.thread151, %.preheader171.lr.ph.split, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi13einstein_evalINS_6SXElemEEEvxRKSt6vectorIxSaIxEES6_S6_S6_PKT_S9_PS7_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.casadi::SXElem", align 8    ; 7 uses
  %9 = alloca %"class.casadi::SXElem", align 8    ; 7 uses
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = load ptr, ptr %1, align 8, !tbaa !18     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 6 uses
  %i.h = icmp sgt i64 %i.g, 0
  %.pre = load ptr, ptr %2, align 8, !tbaa !20    ; 5 uses
  %.pre213 = load ptr, ptr %3, align 8, !tbaa !20 ; 5 uses
  %.pre214 = load ptr, ptr %4, align 8, !tbaa !20 ; 5 uses
  br i1 %i.h, label %bb.c, label %.thread151

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.c, i64 %i.f     ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !23   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.f
  %i.m = load i64, ptr %i.l, align 8, !tbaa !23   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.pre213, i64 %i.f
  %i.o = load i64, ptr %i.n, align 8, !tbaa !23   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pre214, i64 %i.f
  %i.q = load i64, ptr %i.p, align 8, !tbaa !23   ; 3 uses
  %.not168 = icmp eq i64 %i.f, 8
  br i1 %.not168, label %.thread151, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.i, i64 -16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !23   ; 2 uses
  %i.t = add nsw i64 %i.g, -1                     ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !23   ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.pre213, i64 %i.t
  %i.x = load i64, ptr %i.w, align 8, !tbaa !23   ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.pre214, i64 %i.t
  %i.z = load i64, ptr %i.y, align 8, !tbaa !23   ; 2 uses
  %i.aa = icmp samesign ugt i64 %i.g, 2
  br i1 %i.aa, label %bb.e, label %.thread151

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %i.i, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !23
  %i.ad = add nsw i64 %i.g, -2                    ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !23
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.pre213, i64 %i.ad
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !23
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.pre214, i64 %i.ad
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !23
  br label %.thread151

.thread151:                                       ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %.0129167 = phi i64 [ %i.z, %bb.e ], [ %i.z, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %.0130166 = phi i64 [ %i.x, %bb.e ], [ %i.x, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %.0131165 = phi i64 [ %i.v, %bb.e ], [ %i.v, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %.0136164 = phi i64 [ %i.s, %bb.e ], [ %i.s, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ] ; 3 uses
  %.0135147163 = phi i64 [ %i.k, %bb.e ], [ %i.k, %bb.d ], [ %i.k, %bb.c ], [ 1, %bb.b ] ; 3 uses
  %.0128148162 = phi i64 [ %i.m, %bb.e ], [ %i.m, %bb.d ], [ %i.m, %bb.c ], [ 0, %bb.b ]
  %.0127149161 = phi i64 [ %i.o, %bb.e ], [ %i.o, %bb.d ], [ %i.o, %bb.c ], [ 0, %bb.b ]
  %.0126150160 = phi i64 [ %i.q, %bb.e ], [ %i.q, %bb.d ], [ %i.q, %bb.c ], [ 0, %bb.b ]
  %.0137 = phi i64 [ %i.ac, %bb.e ], [ 1, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ] ; 3 uses
  %.0134 = phi i64 [ %i.af, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %.0133 = phi i64 [ %i.ah, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %.0132 = phi i64 [ %i.aj, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.pre213, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.pre214, i64 8 ; 3 uses
  %i.an = load i64, ptr %.pre, align 8, !tbaa !23
  %i.ao = getelementptr inbounds [8 x i8], ptr %5, i64 %i.an ; 3 uses
  %i.ap = load i64, ptr %.pre213, align 8, !tbaa !23
  %i.aq = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ap ; 3 uses
  %i.ar = load i64, ptr %.pre214, align 8, !tbaa !23
  %i.as = getelementptr inbounds [8 x i8], ptr %7, i64 %i.ar ; 3 uses
  %i.at = mul i64 %.0135147163, %.0136164
  %i.au = mul i64 %i.at, %.0137
  %i.av = sdiv i64 %0, %i.au                      ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.preheader171.lr.ph, label %.loopexit

.preheader171.lr.ph:                              ; preds = %.thread151
  %i.ax = icmp sgt i64 %i.g, 3
  %i.ay = icmp slt i64 %.0137, 1
  %i.az = icmp slt i64 %.0135147163, 1
  %i.ba = icmp slt i64 %.0136164, 1
  %or.cond.not226 = or i1 %i.ay, %i.ba
  %brmerge = or i1 %or.cond.not226, %i.az
  br i1 %brmerge, label %.loopexit, label %.preheader171.us.us.us.preheader

.preheader171.us.us.us.preheader:                 ; preds = %.preheader171.lr.ph
  %i.bb = add nsw i64 %i.g, -3                    ; 3 uses
  %xtraiter = and i64 %i.bb, 1
  %i.bc = icmp eq i64 %i.f, 32
  %unroll_iter = and i64 %i.bb, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod234 = trunc i64 %i.bb to i1
  br label %.preheader171.us.us.us

.preheader171.us.us.us:                           ; preds = %.preheader171.us.us.us.preheader, %._crit_edge196.us.us.us
  %.0125198.us.us.us = phi i64 [ %i.dn, %._crit_edge196.us.us.us ], [ 0, %.preheader171.us.us.us.preheader ] ; 3 uses
  br i1 %i.ax, label %.lr.ph.us.us.us.preheader, label %.preheader169.us.us.us.preheader

.lr.ph.us.us.us.preheader:                        ; preds = %.preheader171.us.us.us
  br i1 %i.bc, label %.lr.ph.us.us.us.epil.preheader, label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %.lr.ph.us.us.us
  %.0120176.us.us.us = phi i64 [ %i.ck, %.lr.ph.us.us.us ], [ 0, %.lr.ph.us.us.us.preheader ] ; 6 uses
  %.0121175.us.us.us = phi i64 [ %i.cj, %.lr.ph.us.us.us ], [ %.0125198.us.us.us, %.lr.ph.us.us.us.preheader ] ; 2 uses
  %.0122174.us.us.us = phi ptr [ %i.ci, %.lr.ph.us.us.us ], [ %i.as, %.lr.ph.us.us.us.preheader ]
  %.0123173.us.us.us = phi ptr [ %i.ce, %.lr.ph.us.us.us ], [ %i.aq, %.lr.ph.us.us.us.preheader ]
  %.0124172.us.us.us = phi ptr [ %i.ca, %.lr.ph.us.us.us ], [ %i.ao, %.lr.ph.us.us.us.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.us ], [ 0, %.lr.ph.us.us.us.preheader ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0120176.us.us.us
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !23 ; 2 uses
  %i.bf = srem i64 %.0121175.us.us.us, %i.be      ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.0120176.us.us.us
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !23
  %i.bi = mul nsw i64 %i.bh, %i.bf
  %i.bj = getelementptr inbounds [8 x i8], ptr %.0124172.us.us.us, i64 %i.bi
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.0120176.us.us.us
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !23
  %i.bm = mul nsw i64 %i.bl, %i.bf
  %i.bn = getelementptr inbounds [8 x i8], ptr %.0123173.us.us.us, i64 %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.0120176.us.us.us
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !23
  %i.bq = mul nsw i64 %i.bp, %i.bf
  %i.br = getelementptr inbounds [8 x i8], ptr %.0122174.us.us.us, i64 %i.bq
  %i.bs = sdiv i64 %.0121175.us.us.us, %i.be      ; 2 uses
  %i.bt = or disjoint i64 %.0120176.us.us.us, 1   ; 4 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !23 ; 2 uses
  %i.bw = srem i64 %i.bs, %i.bv                   ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.bt
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !23
  %i.bz = mul nsw i64 %i.by, %i.bw
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.bz ; 3 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bt
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !23
  %i.cd = mul nsw i64 %i.cc, %i.bw
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.cd ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.bt
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !23
  %i.ch = mul nsw i64 %i.cg, %i.bw
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.ch ; 3 uses
  %i.cj = sdiv i64 %i.bs, %i.bv                   ; 2 uses
  %i.ck = add nuw nsw i64 %.0120176.us.us.us, 2   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader169.us.us.us.preheader.loopexit.unr-lcssa, label %.lr.ph.us.us.us, !llvm.loop !235

.preheader169.us.us.us.preheader.loopexit.unr-lcssa: ; preds = %.lr.ph.us.us.us
  br i1 %lcmp.mod.not, label %.preheader169.us.us.us.preheader, label %.lr.ph.us.us.us.epil.preheader

.lr.ph.us.us.us.epil.preheader:                   ; preds = %.preheader169.us.us.us.preheader.loopexit.unr-lcssa, %.lr.ph.us.us.us.preheader
  %.0120176.us.us.us.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.preheader ], [ %i.ck, %.preheader169.us.us.us.preheader.loopexit.unr-lcssa ] ; 4 uses
  %.0121175.us.us.us.epil.init = phi i64 [ %.0125198.us.us.us, %.lr.ph.us.us.us.preheader ], [ %i.cj, %.preheader169.us.us.us.preheader.loopexit.unr-lcssa ]
  %.0122174.us.us.us.epil.init = phi ptr [ %i.as, %.lr.ph.us.us.us.preheader ], [ %i.ci, %.preheader169.us.us.us.preheader.loopexit.unr-lcssa ]
  %.0123173.us.us.us.epil.init = phi ptr [ %i.aq, %.lr.ph.us.us.us.preheader ], [ %i.ce, %.preheader169.us.us.us.preheader.loopexit.unr-lcssa ]
  %.0124172.us.us.us.epil.init = phi ptr [ %i.ao, %.lr.ph.us.us.us.preheader ], [ %i.ca, %.preheader169.us.us.us.preheader.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod234)
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0120176.us.us.us.epil.init
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !23
  %i.cn = srem i64 %.0121175.us.us.us.epil.init, %i.cm ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.0120176.us.us.us.epil.init
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !23
  %i.cq = mul nsw i64 %i.cp, %i.cn
  %i.cr = getelementptr inbounds [8 x i8], ptr %.0124172.us.us.us.epil.init, i64 %i.cq
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.0120176.us.us.us.epil.init
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !23
  %i.cu = mul nsw i64 %i.ct, %i.cn
  %i.cv = getelementptr inbounds [8 x i8], ptr %.0123173.us.us.us.epil.init, i64 %i.cu
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.0120176.us.us.us.epil.init
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !23
  %i.cy = mul nsw i64 %i.cx, %i.cn
  %i.cz = getelementptr inbounds [8 x i8], ptr %.0122174.us.us.us.epil.init, i64 %i.cy
  br label %.preheader169.us.us.us.preheader

.preheader169.us.us.us.preheader:                 ; preds = %.lr.ph.us.us.us.epil.preheader, %.preheader169.us.us.us.preheader.loopexit.unr-lcssa, %.preheader171.us.us.us
  %.0117193.us.us.us.ph = phi ptr [ %i.as, %.preheader171.us.us.us ], [ %i.ci, %.preheader169.us.us.us.preheader.loopexit.unr-lcssa ], [ %i.cz, %.lr.ph.us.us.us.epil.preheader ]
  %.0118191.us.us.us.ph = phi ptr [ %i.aq, %.preheader171.us.us.us ], [ %i.ce, %.preheader169.us.us.us.preheader.loopexit.unr-lcssa ], [ %i.cv, %.lr.ph.us.us.us.epil.preheader ]
  %.0119189.us.us.us.ph = phi ptr [ %i.ao, %.preheader171.us.us.us ], [ %i.ca, %.preheader169.us.us.us.preheader.loopexit.unr-lcssa ], [ %i.cr, %.lr.ph.us.us.us.epil.preheader ]
  br label %.preheader169.us.us.us

.preheader169.us.us.us:                           ; preds = %.preheader169.us.us.us.preheader, %._crit_edge188.us.us.us
  %.0116195.us.us.us = phi i64 [ %i.dm, %._crit_edge188.us.us.us ], [ 0, %.preheader169.us.us.us.preheader ]
  %.0117193.us.us.us = phi ptr [ %i.dl, %._crit_edge188.us.us.us ], [ %.0117193.us.us.us.ph, %.preheader169.us.us.us.preheader ] ; 2 uses
  %.0118191.us.us.us = phi ptr [ %i.dk, %._crit_edge188.us.us.us ], [ %.0118191.us.us.us.ph, %.preheader169.us.us.us.preheader ] ; 2 uses
  %.0119189.us.us.us = phi ptr [ %i.dj, %._crit_edge188.us.us.us ], [ %.0119189.us.us.us.ph, %.preheader169.us.us.us.preheader ] ; 2 uses
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader169.us.us.us
  %.0112187.us.us.us = phi i64 [ 0, %.preheader169.us.us.us ], [ %i.di, %._crit_edge.us.us.us ]
  %.0113186.us.us.us = phi ptr [ %.0117193.us.us.us, %.preheader169.us.us.us ], [ %i.dh, %._crit_edge.us.us.us ] ; 2 uses
  %.0114185.us.us.us = phi ptr [ %.0118191.us.us.us, %.preheader169.us.us.us ], [ %i.dg, %._crit_edge.us.us.us ] ; 2 uses
  %.0115184.us.us.us = phi ptr [ %.0119189.us.us.us, %.preheader169.us.us.us ], [ %i.df, %._crit_edge.us.us.us ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN6casadi11ContractionINS_6SXElemEEEvRKT_S4_RS2_.exit.us.us.us, %.preheader.us.us.us
  %.0182.us.us.us = phi i64 [ 0, %.preheader.us.us.us ], [ %i.de, %_ZN6casadi11ContractionINS_6SXElemEEEvRKT_S4_RS2_.exit.us.us.us ]
  %.0109181.us.us.us = phi ptr [ %.0113186.us.us.us, %.preheader.us.us.us ], [ %i.dd, %_ZN6casadi11ContractionINS_6SXElemEEEvRKT_S4_RS2_.exit.us.us.us ] ; 3 uses
  %.0110180.us.us.us = phi ptr [ %.0114185.us.us.us, %.preheader.us.us.us ], [ %i.dc, %_ZN6casadi11ContractionINS_6SXElemEEEvRKT_S4_RS2_.exit.us.us.us ] ; 2 uses
  %.0111179.us.us.us = phi ptr [ %.0115184.us.us.us, %.preheader.us.us.us ], [ %i.db, %_ZN6casadi11ContractionINS_6SXElemEEEvRKT_S4_RS2_.exit.us.us.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %9, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(8) %.0111179.us.us.us, ptr noundef nonnull align 8 dereferenceable(8) %.0110180.us.us.us)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %8, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %.0109181.us.us.us, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %.noexc.i.us.us.us unwind label %.split.us.split.us.split.us

.noexc.i.us.us.us:                                ; preds = %bb.f
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.0109181.us.us.us, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZN6casadi11ContractionINS_6SXElemEEEvRKT_S4_RS2_.exit.us.us.us unwind label %.split200.us.split.us.split.us ; 0 uses

_ZN6casadi11ContractionINS_6SXElemEEEvRKT_S4_RS2_.exit.us.us.us: ; preds = %.noexc.i.us.us.us
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.db = getelementptr inbounds [8 x i8], ptr %.0111179.us.us.us, i64 %.0128148162
  %i.dc = getelementptr inbounds [8 x i8], ptr %.0110180.us.us.us, i64 %.0127149161
  %i.dd = getelementptr inbounds [8 x i8], ptr %.0109181.us.us.us, i64 %.0126150160
  %i.de = add nuw nsw i64 %.0182.us.us.us, 1      ; 2 uses
  %exitcond209.not = icmp eq i64 %i.de, %.0135147163
  br i1 %exitcond209.not, label %._crit_edge.us.us.us, label %bb.f, !llvm.loop !236

._crit_edge.us.us.us:                             ; preds = %_ZN6casadi11ContractionINS_6SXElemEEEvRKT_S4_RS2_.exit.us.us.us
  %i.df = getelementptr inbounds [8 x i8], ptr %.0115184.us.us.us, i64 %.0131165
  %i.dg = getelementptr inbounds [8 x i8], ptr %.0114185.us.us.us, i64 %.0130166
  %i.dh = getelementptr inbounds [8 x i8], ptr %.0113186.us.us.us, i64 %.0129167
  %i.di = add nuw nsw i64 %.0112187.us.us.us, 1   ; 2 uses
  %exitcond210.not = icmp eq i64 %i.di, %.0136164
  br i1 %exitcond210.not, label %._crit_edge188.us.us.us, label %.preheader.us.us.us, !llvm.loop !237

._crit_edge188.us.us.us:                          ; preds = %._crit_edge.us.us.us
  %i.dj = getelementptr inbounds [8 x i8], ptr %.0119189.us.us.us, i64 %.0134
  %i.dk = getelementptr inbounds [8 x i8], ptr %.0118191.us.us.us, i64 %.0133
  %i.dl = getelementptr inbounds [8 x i8], ptr %.0117193.us.us.us, i64 %.0132
  %i.dm = add nuw nsw i64 %.0116195.us.us.us, 1   ; 2 uses
  %exitcond211.not = icmp eq i64 %i.dm, %.0137
  br i1 %exitcond211.not, label %._crit_edge196.us.us.us, label %.preheader169.us.us.us, !llvm.loop !238

._crit_edge196.us.us.us:                          ; preds = %._crit_edge188.us.us.us
  %i.dn = add nuw nsw i64 %.0125198.us.us.us, 1   ; 2 uses
  %exitcond212.not = icmp eq i64 %i.dn, %i.av
  br i1 %exitcond212.not, label %.loopexit, label %.preheader171.us.us.us, !llvm.loop !239

.split.us.split.us.split.us:                      ; preds = %bb.f
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.split200.us.split.us.split.us:                   ; preds = %.noexc.i.us.us.us
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.body.i

.body.i:                                          ; preds = %.split.us.split.us.split.us, %.split200.us.split.us.split.us
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.do, %.split.us.split.us.split.us ], [ %i.dp, %.split200.us.split.us.split.us ]
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  resume { ptr, i32 } %eh.lpad-body.i

.loopexit:                                        ; preds = %._crit_edge196.us.us.us, %.preheader171.lr.ph, %.thread151, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

declare void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind writable sret(%"class.casadi::SXElem") align 8, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN6casadi2MX6binaryExRKS0_S2_(ptr dead_on_unwind writable sret(%"class.casadi::MX") align 8, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6casadi13einstein_evalIyEEvxRKSt6vectorIxSaIxEES5_S5_S5_PKT_S8_PS6_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #5 comdat {
bb.a:
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = load ptr, ptr %1, align 8, !tbaa !18     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 6 uses
  %i.h = icmp sgt i64 %i.g, 0
  %.pre = load ptr, ptr %2, align 8, !tbaa !20    ; 5 uses
  %.pre218 = load ptr, ptr %3, align 8, !tbaa !20 ; 5 uses
  %.pre219 = load ptr, ptr %4, align 8, !tbaa !20 ; 5 uses
  br i1 %i.h, label %bb.c, label %.thread151

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.c, i64 %i.f     ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !23   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.f
  %i.m = load i64, ptr %i.l, align 8, !tbaa !23   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.pre218, i64 %i.f
  %i.o = load i64, ptr %i.n, align 8, !tbaa !23   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pre219, i64 %i.f
  %i.q = load i64, ptr %i.p, align 8, !tbaa !23   ; 3 uses
  %.not168 = icmp eq i64 %i.f, 8
  br i1 %.not168, label %.thread151, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.i, i64 -16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !23   ; 2 uses
  %i.t = add nsw i64 %i.g, -1                     ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !23   ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.pre218, i64 %i.t
  %i.x = load i64, ptr %i.w, align 8, !tbaa !23   ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.pre219, i64 %i.t
  %i.z = load i64, ptr %i.y, align 8, !tbaa !23   ; 2 uses
  %i.aa = icmp samesign ugt i64 %i.g, 2
  br i1 %i.aa, label %bb.e, label %.thread151

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %i.i, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !23
  %i.ad = add nsw i64 %i.g, -2                    ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !23
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.pre218, i64 %i.ad
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !23
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.pre219, i64 %i.ad
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !23
  br label %.thread151

.thread151:                                       ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %.0129167 = phi i64 [ %i.z, %bb.e ], [ %i.z, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0130166 = phi i64 [ %i.x, %bb.e ], [ %i.x, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0131165 = phi i64 [ %i.v, %bb.e ], [ %i.v, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0136164 = phi i64 [ %i.s, %bb.e ], [ %i.s, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ] ; 4 uses
  %.0135147163 = phi i64 [ %i.k, %bb.e ], [ %i.k, %bb.d ], [ %i.k, %bb.c ], [ 1, %bb.b ] ; 10 uses
  %.0128148162 = phi i64 [ %i.m, %bb.e ], [ %i.m, %bb.d ], [ %i.m, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %.0127149161 = phi i64 [ %i.o, %bb.e ], [ %i.o, %bb.d ], [ %i.o, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %.0126150160 = phi i64 [ %i.q, %bb.e ], [ %i.q, %bb.d ], [ %i.q, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %.0137 = phi i64 [ %i.ac, %bb.e ], [ 1, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ] ; 4 uses
  %.0134 = phi i64 [ %i.af, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0133 = phi i64 [ %i.ah, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0132 = phi i64 [ %i.aj, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.pre218, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.pre219, i64 8 ; 3 uses
  %i.an = load i64, ptr %.pre, align 8, !tbaa !23
  %i.ao = getelementptr inbounds [8 x i8], ptr %5, i64 %i.an ; 3 uses
  %i.ap = load i64, ptr %.pre218, align 8, !tbaa !23
  %i.aq = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ap ; 3 uses
  %i.ar = load i64, ptr %.pre219, align 8, !tbaa !23
  %i.as = getelementptr inbounds [8 x i8], ptr %7, i64 %i.ar ; 3 uses
  %i.at = mul i64 %.0135147163, %.0136164
  %i.au = mul i64 %i.at, %.0137
  %i.av = sdiv i64 %0, %i.au                      ; 3 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.preheader171.lr.ph, label %.loopexit

.preheader171.lr.ph:                              ; preds = %.thread151
  %i.ax = icmp sgt i64 %.0137, 0
  %8 = icmp sgt i64 %.0135147163, 0               ; 2 uses
  %9 = icmp sgt i64 %.0136164, 0
  %or.cond = and i1 %i.ax, %9
  br i1 %or.cond, label %.preheader171.lr.ph.split.us.split.us, label %.loopexit

.preheader171.lr.ph.split.us.split.us:            ; preds = %.preheader171.lr.ph
  %10 = icmp sgt i64 %i.g, 3
  br i1 %10, label %.preheader171.lr.ph.split.us, label %.preheader171.lr.ph.split

.preheader171.lr.ph.split.us:                     ; preds = %.preheader171.lr.ph.split.us.split.us
  br i1 %8, label %.preheader171.us.us.us.preheader, label %.loopexit

.preheader171.us.us.us.preheader:                 ; preds = %.preheader171.lr.ph.split.us
  %i.ay = add nsw i64 %i.g, -3                    ; 3 uses
  %xtraiter240 = and i64 %i.ay, 1
  %i.az = icmp eq i64 %i.f, 32
  %unroll_iter246.a = and i64 %i.ay, -2
  %lcmp.mod241.not = icmp eq i64 %xtraiter240, 0
  %lcmp.mod245.a = trunc i64 %i.ay to i1
  %xtraiter249 = and i64 %.0135147163, 1
  %i.ba = icmp eq i64 %.0135147163, 1
  %unroll_iter252 = and i64 %.0135147163, 9223372036854775806
  %lcmp.mod250.not = icmp eq i64 %xtraiter249, 0
  %lcmp.mod251 = trunc i64 %.0135147163 to i1
  br label %.preheader171.us.us.us

.preheader171.us.us.us:                           ; preds = %.preheader171.us.us.us.preheader, %._crit_edge196.split197.us.us.us
  %.0125198.us.us.us = phi i64 [ %i.eb, %._crit_edge196.split197.us.us.us ], [ 0, %.preheader171.us.us.us.preheader ] ; 3 uses
  br i1 %i.az, label %.epil.preheader239, label %.preheader171.us.us.us.new

.preheader171.us.us.us.new:                       ; preds = %.preheader171.us.us.us, %.preheader171.us.us.us.new
  %.0120176.us.us.us = phi i64 [ %i.ci, %.preheader171.us.us.us.new ], [ 0, %.preheader171.us.us.us ] ; 6 uses
  %.0121175.us.us.us = phi i64 [ %i.ch, %.preheader171.us.us.us.new ], [ %.0125198.us.us.us, %.preheader171.us.us.us ] ; 2 uses
  %.0122174.us.us.us = phi ptr [ %i.cg, %.preheader171.us.us.us.new ], [ %i.as, %.preheader171.us.us.us ]
  %.0123173.us.us.us = phi ptr [ %i.cc, %.preheader171.us.us.us.new ], [ %i.aq, %.preheader171.us.us.us ]
  %.0124172.us.us.us = phi ptr [ %i.by, %.preheader171.us.us.us.new ], [ %i.ao, %.preheader171.us.us.us ]
  %niter247.a = phi i64 [ %niter247.next.1.a, %.preheader171.us.us.us.new ], [ 0, %.preheader171.us.us.us ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0120176.us.us.us
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !23 ; 2 uses
  %i.bd = srem i64 %.0121175.us.us.us, %i.bc      ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.0120176.us.us.us
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !23
  %i.bg = mul nsw i64 %i.bf, %i.bd
  %i.bh = getelementptr inbounds [8 x i8], ptr %.0124172.us.us.us, i64 %i.bg
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.0120176.us.us.us
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !23
  %i.bk = mul nsw i64 %i.bj, %i.bd
  %i.bl = getelementptr inbounds [8 x i8], ptr %.0123173.us.us.us, i64 %i.bk
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.0120176.us.us.us
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !23
  %i.bo = mul nsw i64 %i.bn, %i.bd
  %i.bp = getelementptr inbounds [8 x i8], ptr %.0122174.us.us.us, i64 %i.bo
  %i.bq = sdiv i64 %.0121175.us.us.us, %i.bc      ; 2 uses
  %i.br = or disjoint i64 %.0120176.us.us.us, 1   ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !23 ; 2 uses
  %i.bu = srem i64 %i.bq, %i.bt                   ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.br
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !23
  %i.bx = mul nsw i64 %i.bw, %i.bu
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bx ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.br
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !23
  %i.cb = mul nsw i64 %i.ca, %i.bu
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.cb ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.br
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !23
  %i.cf = mul nsw i64 %i.ce, %i.bu
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.cf ; 3 uses
  %i.ch = sdiv i64 %i.bq, %i.bt                   ; 2 uses
  %i.ci = add nuw nsw i64 %.0120176.us.us.us, 2   ; 2 uses
  %niter247.next.1.a = add i64 %niter247.a, 2     ; 2 uses
  %niter247.ncmp.1.a = icmp eq i64 %niter247.next.1.a, %unroll_iter246.a
  br i1 %niter247.ncmp.1.a, label %..preheader170_crit_edge.us.us.us.unr-lcssa, label %.preheader171.us.us.us.new, !llvm.loop !240

..preheader170_crit_edge.us.us.us.unr-lcssa:      ; preds = %.preheader171.us.us.us.new
  br i1 %lcmp.mod241.not, label %..preheader170_crit_edge.us.us.us, label %.epil.preheader239

.epil.preheader239:                               ; preds = %..preheader170_crit_edge.us.us.us.unr-lcssa, %.preheader171.us.us.us
  %.0120176.us.us.us.epil.init = phi i64 [ 0, %.preheader171.us.us.us ], [ %i.ci, %..preheader170_crit_edge.us.us.us.unr-lcssa ] ; 4 uses
  %.0121175.us.us.us.epil.init = phi i64 [ %.0125198.us.us.us, %.preheader171.us.us.us ], [ %i.ch, %..preheader170_crit_edge.us.us.us.unr-lcssa ]
  %.0122174.us.us.us.epil.init = phi ptr [ %i.as, %.preheader171.us.us.us ], [ %i.cg, %..preheader170_crit_edge.us.us.us.unr-lcssa ]
  %.0123173.us.us.us.epil.init = phi ptr [ %i.aq, %.preheader171.us.us.us ], [ %i.cc, %..preheader170_crit_edge.us.us.us.unr-lcssa ]
  %.0124172.us.us.us.epil.init = phi ptr [ %i.ao, %.preheader171.us.us.us ], [ %i.by, %..preheader170_crit_edge.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod245.a)
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0120176.us.us.us.epil.init
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !23
  %i.cl = srem i64 %.0121175.us.us.us.epil.init, %i.ck ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.0120176.us.us.us.epil.init
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !23
  %i.co = mul nsw i64 %i.cn, %i.cl
  %i.cp = getelementptr inbounds [8 x i8], ptr %.0124172.us.us.us.epil.init, i64 %i.co
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.0120176.us.us.us.epil.init
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !23
  %i.cs = mul nsw i64 %i.cr, %i.cl
  %i.ct = getelementptr inbounds [8 x i8], ptr %.0123173.us.us.us.epil.init, i64 %i.cs
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.0120176.us.us.us.epil.init
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !23
  %i.cw = mul nsw i64 %i.cv, %i.cl
  %i.cx = getelementptr inbounds [8 x i8], ptr %.0122174.us.us.us.epil.init, i64 %i.cw
  br label %..preheader170_crit_edge.us.us.us

..preheader170_crit_edge.us.us.us:                ; preds = %..preheader170_crit_edge.us.us.us.unr-lcssa, %.epil.preheader239
  %.lcssa236 = phi ptr [ %i.by, %..preheader170_crit_edge.us.us.us.unr-lcssa ], [ %i.cp, %.epil.preheader239 ]
  %.lcssa235 = phi ptr [ %i.cc, %..preheader170_crit_edge.us.us.us.unr-lcssa ], [ %i.ct, %.epil.preheader239 ]
  %.lcssa = phi ptr [ %i.cg, %..preheader170_crit_edge.us.us.us.unr-lcssa ], [ %i.cx, %.epil.preheader239 ]
  br label %.preheader169.us.us.us

.preheader169.us.us.us:                           ; preds = %..preheader170_crit_edge.us.us.us, %._crit_edge188.us.us.us
  %.0116195.us.us.us = phi i64 [ %i.ea, %._crit_edge188.us.us.us ], [ 0, %..preheader170_crit_edge.us.us.us ]
  %.0117193.us.us.us = phi ptr [ %i.dz, %._crit_edge188.us.us.us ], [ %.lcssa, %..preheader170_crit_edge.us.us.us ] ; 2 uses
  %.0118191.us.us.us = phi ptr [ %i.dy, %._crit_edge188.us.us.us ], [ %.lcssa235, %..preheader170_crit_edge.us.us.us ] ; 2 uses
  %.0119189.us.us.us = phi ptr [ %i.dx, %._crit_edge188.us.us.us ], [ %.lcssa236, %..preheader170_crit_edge.us.us.us ] ; 2 uses
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader169.us.us.us
  %.0112187.us.us.us = phi i64 [ 0, %.preheader169.us.us.us ], [ %i.dw, %._crit_edge.us.us.us ]
  %.0113186.us.us.us = phi ptr [ %.0117193.us.us.us, %.preheader169.us.us.us ], [ %i.dv, %._crit_edge.us.us.us ] ; 3 uses
  %.0114185.us.us.us = phi ptr [ %.0118191.us.us.us, %.preheader169.us.us.us ], [ %i.du, %._crit_edge.us.us.us ] ; 3 uses
  %.0115184.us.us.us = phi ptr [ %.0119189.us.us.us, %.preheader169.us.us.us ], [ %i.dt, %._crit_edge.us.us.us ] ; 3 uses
  br i1 %i.ba, label %.epil.preheader248, label %.preheader.us.us.us.new

.preheader.us.us.us.new:                          ; preds = %.preheader.us.us.us, %.preheader.us.us.us.new
  %.0109181.us.us.us = phi ptr [ %i.dn, %.preheader.us.us.us.new ], [ %.0113186.us.us.us, %.preheader.us.us.us ] ; 3 uses
  %.0110180.us.us.us = phi ptr [ %i.dm, %.preheader.us.us.us.new ], [ %.0114185.us.us.us, %.preheader.us.us.us ] ; 2 uses
  %.0111179.us.us.us = phi ptr [ %i.dl, %.preheader.us.us.us.new ], [ %.0115184.us.us.us, %.preheader.us.us.us ] ; 2 uses
  %niter253 = phi i64 [ %niter253.next.1, %.preheader.us.us.us.new ], [ 0, %.preheader.us.us.us ]
  %i.cy = load i64, ptr %.0111179.us.us.us, align 8, !tbaa !23
  %i.cz = load i64, ptr %.0110180.us.us.us, align 8, !tbaa !23
  %i.da = or i64 %i.cz, %i.cy
  %i.db = load i64, ptr %.0109181.us.us.us, align 8, !tbaa !23
  %i.dc = or i64 %i.da, %i.db
  store i64 %i.dc, ptr %.0109181.us.us.us, align 8, !tbaa !23
  %i.dd = getelementptr inbounds [8 x i8], ptr %.0111179.us.us.us, i64 %.0128148162 ; 2 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %.0110180.us.us.us, i64 %.0127149161 ; 2 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %.0109181.us.us.us, i64 %.0126150160 ; 3 uses
  %i.dg = load i64, ptr %i.dd, align 8, !tbaa !23
  %i.dh = load i64, ptr %i.de, align 8, !tbaa !23
  %i.di = or i64 %i.dh, %i.dg
  %i.dj = load i64, ptr %i.df, align 8, !tbaa !23
  %i.dk = or i64 %i.di, %i.dj
  store i64 %i.dk, ptr %i.df, align 8, !tbaa !23
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %.0128148162 ; 2 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.de, i64 %.0127149161 ; 2 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.df, i64 %.0126150160 ; 2 uses
  %niter253.next.1 = add nuw nsw i64 %niter253, 2 ; 2 uses
  %niter253.ncmp.1 = icmp eq i64 %niter253.next.1, %unroll_iter252
  br i1 %niter253.ncmp.1, label %._crit_edge.us.us.us.unr-lcssa, label %.preheader.us.us.us.new, !llvm.loop !241

._crit_edge.us.us.us.unr-lcssa:                   ; preds = %.preheader.us.us.us.new
  br i1 %lcmp.mod250.not, label %._crit_edge.us.us.us, label %.epil.preheader248

.epil.preheader248:                               ; preds = %._crit_edge.us.us.us.unr-lcssa, %.preheader.us.us.us
  %.0109181.us.us.us.epil.init = phi ptr [ %.0113186.us.us.us, %.preheader.us.us.us ], [ %i.dn, %._crit_edge.us.us.us.unr-lcssa ] ; 2 uses
  %.0110180.us.us.us.epil.init = phi ptr [ %.0114185.us.us.us, %.preheader.us.us.us ], [ %i.dm, %._crit_edge.us.us.us.unr-lcssa ]
  %.0111179.us.us.us.epil.init = phi ptr [ %.0115184.us.us.us, %.preheader.us.us.us ], [ %i.dl, %._crit_edge.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod251)
  %i.do = load i64, ptr %.0111179.us.us.us.epil.init, align 8, !tbaa !23
  %i.dp = load i64, ptr %.0110180.us.us.us.epil.init, align 8, !tbaa !23
  %i.dq = or i64 %i.dp, %i.do
  %i.dr = load i64, ptr %.0109181.us.us.us.epil.init, align 8, !tbaa !23
  %i.ds = or i64 %i.dq, %i.dr
  store i64 %i.ds, ptr %.0109181.us.us.us.epil.init, align 8, !tbaa !23
  br label %._crit_edge.us.us.us

._crit_edge.us.us.us:                             ; preds = %._crit_edge.us.us.us.unr-lcssa, %.epil.preheader248
  %i.dt = getelementptr inbounds [8 x i8], ptr %.0115184.us.us.us, i64 %.0131165
  %i.du = getelementptr inbounds [8 x i8], ptr %.0114185.us.us.us, i64 %.0130166
  %i.dv = getelementptr inbounds [8 x i8], ptr %.0113186.us.us.us, i64 %.0129167
  %i.dw = add nuw nsw i64 %.0112187.us.us.us, 1   ; 2 uses
  %exitcond215.not = icmp eq i64 %i.dw, %.0136164
  br i1 %exitcond215.not, label %._crit_edge188.us.us.us, label %.preheader.us.us.us, !llvm.loop !242

._crit_edge188.us.us.us:                          ; preds = %._crit_edge.us.us.us
  %i.dx = getelementptr inbounds [8 x i8], ptr %.0119189.us.us.us, i64 %.0134
  %i.dy = getelementptr inbounds [8 x i8], ptr %.0118191.us.us.us, i64 %.0133
  %i.dz = getelementptr inbounds [8 x i8], ptr %.0117193.us.us.us, i64 %.0132
  %i.ea = add nuw nsw i64 %.0116195.us.us.us, 1   ; 2 uses
  %exitcond216.not = icmp eq i64 %i.ea, %.0137
  br i1 %exitcond216.not, label %._crit_edge196.split197.us.us.us, label %.preheader169.us.us.us, !llvm.loop !243

._crit_edge196.split197.us.us.us:                 ; preds = %._crit_edge188.us.us.us
  %i.eb = add nuw nsw i64 %.0125198.us.us.us, 1   ; 2 uses
  %exitcond217.not = icmp eq i64 %i.eb, %i.av
  br i1 %exitcond217.not, label %.loopexit, label %.preheader171.us.us.us, !llvm.loop !244

.preheader171.lr.ph.split:                        ; preds = %.preheader171.lr.ph.split.us.split.us
  br i1 %8, label %.preheader171.preheader, label %.loopexit

.preheader171.preheader:                          ; preds = %.preheader171.lr.ph.split
  %xtraiter = and i64 %.0135147163, 1
  %i.ec = icmp eq i64 %.0135147163, 1
  %unroll_iter = and i64 %.0135147163, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod238 = trunc i64 %.0135147163 to i1
  br label %.preheader171

.preheader171:                                    ; preds = %.preheader171.preheader, %._crit_edge196.us.us
  %.0125198 = phi i64 [ %24, %._crit_edge196.us.us ], [ 0, %.preheader171.preheader ]
  br label %.preheader169

.preheader169:                                    ; preds = %.preheader.new, %.preheader171
  %.0116195 = phi i64 [ 0, %.preheader171 ], [ %niter.next.1, %.preheader.new ]
  %.0117193 = phi ptr [ %i.as, %.preheader171 ], [ %i.es, %.preheader.new ] ; 2 uses
  %.0118191 = phi ptr [ %i.aq, %.preheader171 ], [ %i.er, %.preheader.new ] ; 2 uses
  %.0119189 = phi ptr [ %i.ao, %.preheader171 ], [ %i.eq, %.preheader.new ] ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader169
  %.0112187 = phi i64 [ 0, %.preheader169 ], [ %i.ep, %._crit_edge ]
  %.0113186 = phi ptr [ %.0117193, %.preheader169 ], [ %i.eo, %._crit_edge ] ; 3 uses
  %.0114185 = phi ptr [ %.0118191, %.preheader169 ], [ %i.en, %._crit_edge ] ; 3 uses
  %.0115184 = phi ptr [ %.0119189, %.preheader169 ], [ %i.em, %._crit_edge ] ; 3 uses
  br i1 %i.ec, label %.epil.preheader, label %._crit_edge188

._crit_edge188:                                   ; preds = %.preheader, %._crit_edge188
  %.0109181.us.us = phi ptr [ %i.ef, %._crit_edge188 ], [ %.0113186, %.preheader ] ; 3 uses
  %.0110180.us.us = phi ptr [ %i.ee, %._crit_edge188 ], [ %.0114185, %.preheader ] ; 2 uses
  %.0111179.us.us = phi ptr [ %i.ed, %._crit_edge188 ], [ %.0115184, %.preheader ] ; 2 uses
  %niter = phi i64 [ %i.eg, %._crit_edge188 ], [ 0, %.preheader ]
  %11 = load i64, ptr %.0111179.us.us, align 8, !tbaa !23
  %12 = load i64, ptr %.0110180.us.us, align 8, !tbaa !23
  %13 = or i64 %12, %11
  %14 = load i64, ptr %.0109181.us.us, align 8, !tbaa !23
  %15 = or i64 %13, %14
  store i64 %15, ptr %.0109181.us.us, align 8, !tbaa !23
  %16 = getelementptr inbounds [8 x i8], ptr %.0111179.us.us, i64 %.0128148162 ; 2 uses
  %17 = getelementptr inbounds [8 x i8], ptr %.0110180.us.us, i64 %.0127149161 ; 2 uses
  %18 = getelementptr inbounds [8 x i8], ptr %.0109181.us.us, i64 %.0126150160 ; 3 uses
  %19 = load i64, ptr %16, align 8, !tbaa !23
  %20 = load i64, ptr %17, align 8, !tbaa !23
  %21 = or i64 %20, %19
  %22 = load i64, ptr %18, align 8, !tbaa !23
  %23 = or i64 %21, %22
  store i64 %23, ptr %18, align 8, !tbaa !23
  %i.ed = getelementptr inbounds [8 x i8], ptr %16, i64 %.0128148162 ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %17, i64 %.0127149161 ; 2 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %18, i64 %.0126150160 ; 2 uses
  %i.eg = add nuw nsw i64 %niter, 2               ; 2 uses
  %exitcond211.not = icmp eq i64 %i.eg, %unroll_iter
  br i1 %exitcond211.not, label %._crit_edge.unr-lcssa, label %._crit_edge188, !llvm.loop !241

._crit_edge.unr-lcssa:                            ; preds = %._crit_edge188
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %.0109181.epil.init = phi ptr [ %.0113186, %.preheader ], [ %i.ef, %._crit_edge.unr-lcssa ] ; 2 uses
  %.0110180.epil.init = phi ptr [ %.0114185, %.preheader ], [ %i.ee, %._crit_edge.unr-lcssa ]
  %.0111179.epil.init = phi ptr [ %.0115184, %.preheader ], [ %i.ed, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod238)
  %i.eh = load i64, ptr %.0111179.epil.init, align 8, !tbaa !23
  %i.ei = load i64, ptr %.0110180.epil.init, align 8, !tbaa !23
  %i.ej = or i64 %i.ei, %i.eh
  %i.ek = load i64, ptr %.0109181.epil.init, align 8, !tbaa !23
  %i.el = or i64 %i.ej, %i.ek
  store i64 %i.el, ptr %.0109181.epil.init, align 8, !tbaa !23
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.em = getelementptr inbounds [8 x i8], ptr %.0115184, i64 %.0131165
  %i.en = getelementptr inbounds [8 x i8], ptr %.0114185, i64 %.0130166
  %i.eo = getelementptr inbounds [8 x i8], ptr %.0113186, i64 %.0129167
  %i.ep = add nuw nsw i64 %.0112187, 1            ; 2 uses
  %exitcond210.not = icmp eq i64 %i.ep, %.0136164
  br i1 %exitcond210.not, label %.preheader.new, label %.preheader, !llvm.loop !242

.preheader.new:                                   ; preds = %._crit_edge
  %i.eq = getelementptr inbounds [8 x i8], ptr %.0119189, i64 %.0134
  %i.er = getelementptr inbounds [8 x i8], ptr %.0118191, i64 %.0133
  %i.es = getelementptr inbounds [8 x i8], ptr %.0117193, i64 %.0132
  %niter.next.1 = add nuw nsw i64 %.0116195, 1    ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %.0137
  br i1 %niter.ncmp.1, label %._crit_edge196.us.us, label %.preheader169, !llvm.loop !243

._crit_edge196.us.us:                             ; preds = %.preheader.new
  %24 = add nuw nsw i64 %.0125198, 1              ; 2 uses
  %exitcond207.not = icmp eq i64 %24, %i.av
  br i1 %exitcond207.not, label %.loopexit, label %.preheader171, !llvm.loop !244

.loopexit:                                        ; preds = %._crit_edge196.us.us, %._crit_edge196.split197.us.us.us, %.preheader171.lr.ph, %.preheader171.lr.ph.split.us, %.thread151, %.preheader171.lr.ph.split, %bb.a
  ret void
}

declare void @_ZN6casadi2MX8einsteinERKS0_S2_S2_RKSt6vectorIxSaIxEES7_S7_S7_S7_S7_(ptr dead_on_unwind writable sret(%"class.casadi::MX") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #5 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIxEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #15 = { cold noreturn }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { noreturn }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { builtin nounwind }
attributes #24 = { nounwind }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { noreturn nounwind }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !48}
!1 = distinct !{null}
!2 = distinct !{!2, !48}
!3 = distinct !{!3, !48}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"vtable pointer", !7, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"p1 long long", !14, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!16, !15, i64 8}
!18 = !{!16, !15, i64 0}
!19 = !{!16, !15, i64 16}
!20 = !{!15, !15, i64 0}
!21 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!22 = !{!"long long", !8, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"p1 _ZTSN6casadi14GenericWeakRefINS_12SharedObjectENS_20SharedObjectInternalEEE", !14, i64 0}
!25 = !{!"_ZTSN6casadi21GenericSharedInternalINS_12SharedObjectENS_20SharedObjectInternalEEE", !24, i64 8}
!26 = !{!"_ZTSN6casadi20SharedObjectInternalE", !25, i64 0, !22, i64 16}
!27 = !{!"p1 _ZTSN6casadi2MXE", !14, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIN6casadi2MXESaIS1_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!29 = !{!"_ZTSNSt12_Vector_baseIN6casadi2MXESaIS1_EE12_Vector_implE", !28, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIN6casadi2MXESaIS1_EE", !29, i64 0}
!31 = !{!"_ZTSSt6vectorIN6casadi2MXESaIS1_EE", !30, i64 0}
!32 = !{!"p1 _ZTSN6casadi20SharedObjectInternalE", !14, i64 0}
!33 = !{!"_ZTSN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEE", !32, i64 0}
!34 = !{!"_ZTSN6casadi12SharedObjectE", !33, i64 0}
!35 = !{!"_ZTSN6casadi8SparsityE", !34, i64 0}
!36 = !{!"_ZTSN6casadi6MXNodeE", !26, i64 0, !22, i64 24, !31, i64 32, !35, i64 56}
!37 = !{!"_ZTSNSt12_Vector_baseIxSaIxEE12_Vector_implE", !16, i64 0}
!38 = !{!"_ZTSSt12_Vector_baseIxSaIxEE", !37, i64 0}
!39 = !{!"_ZTSSt6vectorIxSaIxEE", !38, i64 0}
!40 = !{!"_ZTSN6casadi8EinsteinE", !36, i64 0, !39, i64 64, !39, i64 88, !39, i64 112, !39, i64 136, !39, i64 160, !39, i64 184, !39, i64 208, !39, i64 232, !39, i64 256, !39, i64 280, !22, i64 304}
!41 = !{!40, !22, i64 304}
!42 = !{!"p1 omnipotent char", !14, i64 0}
!43 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !42, i64 0}
!44 = !{!"long", !8, i64 0}
!45 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !43, i64 0, !44, i64 8, !8, i64 16}
!46 = !{!45, !42, i64 0}
!47 = !{!8, !8, i64 0}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!"_ZTSSt14_Rb_tree_color", !8, i64 0}
!51 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !14, i64 0}
!52 = !{!"_ZTSSt18_Rb_tree_node_base", !50, i64 0, !51, i64 8, !51, i64 16, !51, i64 24}
!53 = !{!"_ZTSSt15_Rb_tree_header", !52, i64 0, !44, i64 32}
!54 = !{!53, !50, i64 0}
!55 = !{!53, !51, i64 8}
!56 = !{!53, !51, i64 16}
!57 = !{!53, !51, i64 24}
!58 = !{!53, !44, i64 32}
!59 = !{!51, !51, i64 0}
!60 = !{!"_ZTSSt4pairIKxxE", !22, i64 0, !22, i64 8}
!61 = !{!60, !22, i64 8}
!62 = !{!60, !22, i64 0}
!63 = !{!"_ZTSSt4pairIxxE", !22, i64 0, !22, i64 8}
!64 = !{!63, !22, i64 8}
!65 = !{!63, !22, i64 0}
!66 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!68 = !{!67, !66, i64 8}
!69 = !{!67, !66, i64 0}
!70 = !{!45, !44, i64 8}
!71 = !{!43, !42, i64 0}
!72 = !{!28, !27, i64 8}
!73 = !{!28, !27, i64 0}
!74 = !{!"double", !8, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!"p1 _ZTSSt6vectorIN6casadi2MXESaIS1_EE", !14, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EE17_Vector_impl_dataE", !76, i64 0, !76, i64 8, !76, i64 16}
!78 = !{!77, !76, i64 8}
!79 = !{!77, !76, i64 0}
!80 = !{!44, !44, i64 0}
!81 = !{!"p1 _ZTSNSt6locale5_ImplE", !14, i64 0}
!82 = !{!"_ZTSSt6locale", !81, i64 0}
!83 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !82, i64 56}
!84 = !{!83, !42, i64 40}
!85 = !{!83, !42, i64 32}
!86 = !{!"_ZTSSi", !44, i64 8}
!87 = !{!86, !44, i64 8}
!88 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !14, i64 0}
!89 = !{!52, !51, i64 24}
!90 = !{!52, !51, i64 16}
!91 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!92 = distinct !{!92, i1 false, !"_ZN6casadi6strvecB5cxx11Ev"}
!93 = distinct !{!93, !92, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!94 = distinct !{!94, i1 false, !"_ZN6casadi6strvecB5cxx11Ev"}
!95 = distinct !{!95, !94, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!96 = distinct !{!96, i1 false, !"_ZN6casadi6strvecB5cxx11Ev"}
!97 = distinct !{!97, !96, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!98 = distinct !{!98, !48}
!99 = distinct !{!99, !49}
!100 = distinct !{!100, i1 false, !"_ZN6casadi6strvecB5cxx11Ev"}
!101 = distinct !{!101, !100, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!102 = distinct !{!102, !49}
!103 = distinct !{!103, i1 false, !"_ZN6casadi6strvecB5cxx11Ev"}
!104 = distinct !{!104, !103, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!105 = distinct !{!105, !49}
!106 = distinct !{!106, i1 false, !"_ZN6casadi6strvecB5cxx11Ev"}
!107 = distinct !{!107, !106, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!108 = distinct !{!108, i1 false, !"_ZN6casadi6strvecB5cxx11Ev"}
!109 = distinct !{!109, !108, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!110 = distinct !{!110, i1 false, !"_ZN6casadi6strvecB5cxx11Ev"}
!111 = distinct !{!111, !110, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!112 = distinct !{!112, i1 false, !"_ZN6casadi6strvecB5cxx11Ev"}
!113 = distinct !{!113, !112, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!114 = distinct !{!114, i1 false, !"_ZN6casadi6strvecB5cxx11Ev"}
!115 = distinct !{!115, !114, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!116 = distinct !{!116, !48}
!117 = distinct !{!117, i1 false, !"_ZN6casadi6strvecB5cxx11Ev"}
!118 = distinct !{!118, !117, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!119 = distinct !{!119, !48}
!120 = distinct !{!120, i1 false, !"_ZN6casadi6strvecB5cxx11Ev"}
!121 = distinct !{!121, !120, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!122 = distinct !{!122, !48}
!123 = distinct !{!123, i1 false, !"_ZSt19__relocate_object_aISt4pairIxxES1_SaIS1_EEvPT_PT0_RT1_"}
!124 = distinct !{!124, !123, !"_ZSt19__relocate_object_aISt4pairIxxES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
end_hunk_0
