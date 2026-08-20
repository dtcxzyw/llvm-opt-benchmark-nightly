inline.NumInlined: 2805
inline.NumDeleted: 1107
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZSt13__equal_rangeIN9__gnu_cxx17__normal_iteratorIPPN3igl8geodesic21SurfacePointWithIndexESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIS4_EENSB_14_Val_comp_iterIS4_EEESt4pairIT_SH_ESH_SH_RKT0_T1_T2_:bb.a
  %.2 = phi i64 [ %i.ah, %bb.e ], [ %i.k, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3igl8geodesic21SurfacePointWithIndexEEclIKPS4_NS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit ], [ %i.k, %_ZN3igl8geodesic12SurfacePoint4typeEv.exit12.i.i31 ] ; 2 uses
  %i.da = icmp sgt i64 %.2, 0
  br i1 %i.da, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN3igl8geodesic21SurfacePointWithIndexESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %.critedge, !llvm.loop !422

.critedge:                                        ; preds = %bb.v, %bb.u, %bb.a, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN3igl8geodesic21SurfacePointWithIndexESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIS4_EEET_SE_SE_RKT0_T1_.exit
  %.sroa.3.0 = phi ptr [ %.sroa.011.1.i51, %bb.u ], [ %i.by, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN3igl8geodesic21SurfacePointWithIndexESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIS4_EEET_SE_SE_RKT0_T1_.exit ], [ %0, %bb.a ], [ %.sroa.059.1, %bb.v ]
  %.sroa.064.0 = phi ptr [ %.sroa.011.0.lcssa.i, %bb.u ], [ %.sroa.011.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN3igl8geodesic21SurfacePointWithIndexESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIS4_EEET_SE_SE_RKT0_T1_.exit ], [ %0, %bb.a ], [ %.sroa.059.1, %bb.v ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.064.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #15

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #16

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #16

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #16

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #7

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #16

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8geodesic4Mesh20initialize_mesh_dataISt6vectorIdSaIdEES3_IiSaIiEEEEvjRT_jRT0_(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i32 %3, %1
  %i.b = shl i32 %i.a, 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @_ZN3igl8geodesic21SimlpeMemoryAllocatorIPvE5resetEjj(ptr noundef nonnull align 8 dereferenceable(36) %i.c, i32 noundef %i.b, i32 noundef 100)
  %i.d = zext i32 %1 to i64                       ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !423  ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !216    ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 88                  ; 3 uses
  %i.l = icmp ult i64 %i.k, %i.d
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = sub nuw nsw i64 %i.d, %i.k
  tail call void @_ZNSt6vectorIN3igl8geodesic6VertexESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.m)
  br label %_ZNSt6vectorIN3igl8geodesic6VertexESaIS2_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.k, %i.d
  br i1 %i.n, label %bb.d, label %_ZNSt6vectorIN3igl8geodesic6VertexESaIS2_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [88 x i8], ptr %i.g, i64 %i.d ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.o
  br i1 %.not.i.i, label %_ZNSt6vectorIN3igl8geodesic6VertexESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN3igl8geodesic6VertexES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN3igl8geodesic6VertexES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.o, ptr %i.e, align 8, !tbaa !423
  br label %_ZNSt6vectorIN3igl8geodesic6VertexESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN3igl8geodesic6VertexESaIS2_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN3igl8geodesic6VertexES2_EvT_S4_RSaIT0_E.exit.i.i
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN3igl8geodesic6VertexESaIS2_EE6resizeEm.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !216    ; 3 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !196    ; 9 uses
  %xtraiter = and i64 %i.d, 1
  %i.r = icmp eq i32 %1, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.d, 4294967294
  br label %bb.h

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod64 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod64)
  %i.s = getelementptr inbounds nuw [88 x i8], ptr %i.p, i64 %indvars.iv.epil.init ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = trunc nuw i64 %indvars.iv.epil.init to i32 ; 2 uses
  store i32 %i.u, ptr %i.t, align 4, !tbaa !27
  %i.v = mul i32 %i.u, 3                          ; 3 uses
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.w
  %i.y = load double, ptr %i.x, align 8, !tbaa !79
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store double %i.y, ptr %i.z, align 8, !tbaa !79
  %i.aa = add i32 %i.v, 1
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ab
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !79
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store double %i.ad, ptr %i.ae, align 8, !tbaa !79
  %i.af = add i32 %i.v, 2
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ag
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !79
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  store double %i.ai, ptr %i.aj, align 8, !tbaa !79
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZNSt6vectorIN3igl8geodesic6VertexESaIS2_EE6resizeEm.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.al = zext i32 %3 to i64                      ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !424 ; 2 uses
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !226 ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = sdiv exact i64 %i.ar, 80                ; 3 uses
  %i.at = icmp ult i64 %i.as, %i.al
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.au = sub nuw nsw i64 %i.al, %i.as
  tail call void @_ZNSt6vectorIN3igl8geodesic4FaceESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 noundef %i.au)
  br label %_ZNSt6vectorIN3igl8geodesic4FaceESaIS2_EE6resizeEm.exit

bb.f:                                             ; preds = %._crit_edge
  %i.av = icmp ugt i64 %i.as, %i.al
  br i1 %i.av, label %bb.g, label %_ZNSt6vectorIN3igl8geodesic4FaceESaIS2_EE6resizeEm.exit

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw [80 x i8], ptr %i.ao, i64 %i.al ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.an, %i.aw
  br i1 %.not.i.i39, label %_ZNSt6vectorIN3igl8geodesic4FaceESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN3igl8geodesic4FaceES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN3igl8geodesic4FaceES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.g
  store ptr %i.aw, ptr %i.am, align 8, !tbaa !424
  br label %_ZNSt6vectorIN3igl8geodesic4FaceESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN3igl8geodesic4FaceESaIS2_EE6resizeEm.exit: ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPN3igl8geodesic4FaceES2_EvT_S4_RSaIT0_E.exit.i.i
  %.not45 = icmp eq i32 %3, 0
  br i1 %.not45, label %._crit_edge44, label %.lr.ph43

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.h ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.ax = getelementptr inbounds nuw [88 x i8], ptr %i.p, i64 %indvars.iv ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !27
  %i.ba = mul i32 %i.az, 3                        ; 3 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bb
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !79
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  store double %i.bd, ptr %i.be, align 8, !tbaa !79
  %i.bf = or disjoint i32 %i.ba, 1
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !79
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  store double %i.bi, ptr %i.bj, align 8, !tbaa !79
  %i.bk = add i32 %i.ba, 2
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !79
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  store double %i.bn, ptr %i.bo, align 8, !tbaa !79
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw [88 x i8], ptr %i.p, i64 %indvars.iv.next ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.br = trunc nuw i64 %indvars.iv.next to i32   ; 2 uses
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !27
  %i.bs = mul i32 %i.br, 3                        ; 3 uses
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bt
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !79
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  store double %i.bv, ptr %i.bw, align 8, !tbaa !79
  %i.bx = add i32 %i.bs, 1
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.by
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !79
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  store double %i.ca, ptr %i.cb, align 8, !tbaa !79
  %i.cc = add i32 %i.bs, 2
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !79
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  store double %i.cf, ptr %i.cg, align 8, !tbaa !79
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !425

._crit_edge44:                                    ; preds = %.lr.ph43, %_ZNSt6vectorIN3igl8geodesic4FaceESaIS2_EE6resizeEm.exit
  tail call void @_ZN3igl8geodesic4Mesh17build_adjacenciesEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  ret void

.lr.ph43:                                         ; preds = %_ZNSt6vectorIN3igl8geodesic4FaceESaIS2_EE6resizeEm.exit, %.lr.ph43
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %.lr.ph43 ], [ 0, %_ZNSt6vectorIN3igl8geodesic4FaceESaIS2_EE6resizeEm.exit ] ; 3 uses
  %i.ch = load ptr, ptr %i.ak, align 8, !tbaa !226
  %i.ci = getelementptr inbounds nuw [80 x i8], ptr %i.ch, i64 %indvars.iv51 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.ck = trunc nuw i64 %indvars.iv51 to i32      ; 2 uses
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !27
  %i.cl = tail call noundef ptr @_ZN3igl8geodesic21SimlpeMemoryAllocatorIPvE8allocateEj(ptr noundef nonnull align 8 dereferenceable(36) %i.c, i32 noundef 3) ; 4 uses
  store i32 3, ptr %i.ci, align 8, !tbaa !426
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !83
  %i.cn = mul i32 %i.ck, 3                        ; 3 uses
  %i.co = load ptr, ptr %4, align 8, !tbaa !204   ; 3 uses
  %i.cp = zext i32 %i.cn to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !27
  %i.cs = zext i32 %i.cr to i64
  %i.ct = load ptr, ptr %0, align 8, !tbaa !216
  %i.cu = getelementptr inbounds nuw [88 x i8], ptr %i.ct, i64 %i.cs
  store ptr %i.cu, ptr %i.cl, align 8, !tbaa !86
  %i.cv = add i32 %i.cn, 1
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !27
  %i.cz = zext i32 %i.cy to i64
  %i.da = load ptr, ptr %0, align 8, !tbaa !216
  %i.db = getelementptr inbounds nuw [88 x i8], ptr %i.da, i64 %i.cz
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !86
  %i.dd = add i32 %i.cn, 2
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !27
  %i.dh = zext i32 %i.dg to i64
  %i.di = load ptr, ptr %0, align 8, !tbaa !216
  %i.dj = getelementptr inbounds nuw [88 x i8], ptr %i.di, i64 %i.dh
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !86
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next52, %i.al
  br i1 %exitcond55.not, label %._crit_edge44, label %.lr.ph43, !llvm.loop !427
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8geodesic4Mesh17build_adjacenciesEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !423  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !216    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 88                  ; 4 uses
  %i.h = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #27
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c          ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, label %.noexc219

.noexc219:                                        ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.i = shl nuw nsw i64 %i.g, 2
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #25 ; 5 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.g ; 2 uses
  store i32 0, ptr %i.j, align 4, !tbaa !27
  %i.l = getelementptr i8, ptr %i.j, i64 4        ; 3 uses
  %i.m = add nsw i64 %i.g, -1                     ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc219
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.m, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc219, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.34.3 = phi ptr [ %i.k, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.k, %.noexc219 ], [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ] ; 13 uses
  %.sroa.0322.3 = phi ptr [ %i.j, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.j, %.noexc219 ], [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ] ; 34 uses
  %.0.i.i.i.i.i = phi ptr [ %i.o, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.l, %.noexc219 ], [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %.0.i.i.i.i.i463 = ptrtoaddr ptr %.0.i.i.i.i.i to i64 ; 3 uses
  %.sroa.0322.3464 = ptrtoaddr ptr %.sroa.0322.3 to i64 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !424  ; 2 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !226  ; 3 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 80
  %.not440 = icmp eq ptr %i.r, %i.s
  br i1 %.not440, label %.preheader366, label %.lr.ph

.preheader366:                                    ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit
  br i1 %.not.i.i.i.i, label %._crit_edge, label %.lr.ph382

.lr.ph382:                                        ; preds = %.preheader366
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.b

.lr.ph:                                           ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit ] ; 2 uses
  %i.y = getelementptr inbounds nuw [80 x i8], ptr %i.s, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !83  ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !86
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !27
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0322.3, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !27
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !86
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !27
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0322.3, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !27
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !27
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !86
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.at = load i32, ptr %i.as, align 4, !tbaa !27
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0322.3, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !27
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !27
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.ay = and i64 %indvars.iv.next, 4294967295
  %i.az = icmp ugt i64 %i.w, %i.ay
  br i1 %i.az, label %.lr.ph, label %.preheader366, !llvm.loop !428

._crit_edge:                                      ; preds = %_ZN3igl8geodesic4Mesh17allocate_pointersEj.exit, %.preheader366
  %.not5.i.i.i.i = icmp eq ptr %.sroa.0322.3, %.0.i.i.i.i.i ; 3 uses
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %._crit_edge
  %i.ba = add i64 %.0.i.i.i.i.i463, -4
  %i.bb = sub i64 %i.ba, %.sroa.0322.3464
  %i.bc = and i64 %i.bb, -4
  %i.bd = add i64 %i.bc, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %.sroa.0322.3, i8 0, i64 %i.bd, i1 false), !tbaa !27
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_RKT0_.exit

bb.b:                                             ; preds = %.lr.ph382, %_ZN3igl8geodesic4Mesh17allocate_pointersEj.exit
  %i.be = phi ptr [ %i.c, %.lr.ph382 ], [ %i.bp, %_ZN3igl8geodesic4Mesh17allocate_pointersEj.exit ]
  %i.bf = phi i64 [ 0, %.lr.ph382 ], [ %i.bn, %_ZN3igl8geodesic4Mesh17allocate_pointersEj.exit ] ; 2 uses
  %.0178381 = phi i32 [ 0, %.lr.ph382 ], [ %i.bm, %_ZN3igl8geodesic4Mesh17allocate_pointersEj.exit ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0322.3, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !27 ; 2 uses
  %i.bi = invoke noundef ptr @_ZN3igl8geodesic21SimlpeMemoryAllocatorIPvE8allocateEj(ptr noundef nonnull align 8 dereferenceable(36) %i.x, i32 noundef %i.bh)
          to label %_ZN3igl8geodesic4Mesh17allocate_pointersEj.exit unwind label %_ZNSt6vectorIN3igl8geodesic8HalfEdgeESaIS2_EED2Ev.exit269.thread

_ZN3igl8geodesic4Mesh17allocate_pointersEj.exit:  ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw [88 x i8], ptr %i.be, i64 %i.bf ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  store i32 %i.bh, ptr %i.bk, align 8, !tbaa !80
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  store ptr %i.bi, ptr %i.bl, align 8, !tbaa !93
  %i.bm = add i32 %.0178381, 1                    ; 2 uses
  %i.bn = zext i32 %i.bm to i64                   ; 2 uses
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !423
  %i.bp = load ptr, ptr %0, align 8, !tbaa !216   ; 2 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = sdiv exact i64 %i.bs, 88
  %i.bu = icmp ugt i64 %i.bt, %i.bn
  br i1 %i.bu, label %bb.b, label %._crit_edge, !llvm.loop !429

_ZNSt6vectorIN3igl8geodesic8HalfEdgeESaIS2_EED2Ev.exit269.thread: ; preds = %bb.b
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %._crit_edge
  %i.bw = load ptr, ptr %i.q, align 8, !tbaa !424
  %i.bx = load ptr, ptr %i.p, align 8, !tbaa !226 ; 2 uses
  %.not442 = icmp eq ptr %i.bw, %i.bx
  br i1 %.not442, label %._crit_edge393._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3igl8geodesic8HalfEdgeESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit_crit_edge, label %.lr.ph385

_ZNSt6vectorIN3igl8geodesic8HalfEdgeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %.lr.ph385
  %i.by = icmp eq ptr %i.dy, %i.dz
  %i.bz = mul nuw nsw i64 %i.ed, 3                ; 2 uses
  br i1 %i.by, label %._crit_edge393._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3igl8geodesic8HalfEdgeESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit_crit_edge, label %bb.c
end_hunk_0
begin_hunk_1_@_ZN3igl8geodesic4Mesh17build_adjacenciesEv:bb.a
  br i1 %i.abs, label %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.thread.1.i.2507, label %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.1.i.2506

_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.1.i.2506: ; preds = %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.thread.i.2505
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abo, i64 8
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !86
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 48
  %i.abw = load i32, ptr %i.abv, align 4, !tbaa !27
  %i.abx = icmp eq i32 %i.abw, %i.abg
  br i1 %i.abx, label %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.thread.1.i.2507, label %_ZN3igl8geodesic4Face13opposite_edgeEPNS0_6VertexE.exit.2508

_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.thread.1.i.2507: ; preds = %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.1.i.2506, %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.thread.i.2505
  %i.aby = load ptr, ptr %i.si, align 8, !tbaa !78 ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 8
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !83 ; 2 uses
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !86
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 48
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !27
  %i.ace = icmp ne i32 %i.acd, %i.abg
  tail call void @llvm.assume(i1 %i.ace)
  %i.acf = getelementptr inbounds nuw i8, ptr %i.aca, i64 8
  %i.acg = load ptr, ptr %i.acf, align 8, !tbaa !86
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 48
  %i.aci = load i32, ptr %i.ach, align 4, !tbaa !27
  %i.acj = icmp ne i32 %i.aci, %i.abg
  tail call void @llvm.assume(i1 %i.acj)
  br label %_ZN3igl8geodesic4Face13opposite_edgeEPNS0_6VertexE.exit.2508

_ZN3igl8geodesic4Face13opposite_edgeEPNS0_6VertexE.exit.2508: ; preds = %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.thread.1.i.2507, %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.1.i.2506, %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.i.2504
  %i.ack = phi ptr [ %i.sb, %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.i.2504 ], [ %i.aby, %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.thread.1.i.2507 ], [ %i.abm, %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.1.i.2506 ]
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 56
  %i.acm = load double, ptr %i.acl, align 8, !tbaa !79 ; 2 uses
  %i.acn = load i32, ptr %i.sm, align 4, !tbaa !27 ; 6 uses
  %i.aco = icmp eq i32 %i.abf, %i.acn
  br i1 %i.aco, label %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.thread.i.1.2, label %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.i.1.2

_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.i.1.2: ; preds = %_ZN3igl8geodesic4Face13opposite_edgeEPNS0_6VertexE.exit.2508
  %i.acp = load ptr, ptr %i.sg, align 8, !tbaa !86
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 48
  %i.acr = load i32, ptr %i.acq, align 4, !tbaa !27
  %i.acs = icmp eq i32 %i.acr, %i.acn
  br i1 %i.acs, label %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.thread.i.1.2, label %_ZN3igl8geodesic4Face13opposite_edgeEPNS0_6VertexE.exit.1.2

_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.thread.i.1.2: ; preds = %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.i.1.2, %_ZN3igl8geodesic4Face13opposite_edgeEPNS0_6VertexE.exit.2508
  %i.act = load ptr, ptr %i.sh, align 8, !tbaa !78 ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 8
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !83 ; 2 uses
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !86
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 48
  %i.acy = load i32, ptr %i.acx, align 4, !tbaa !27
  %i.acz = icmp eq i32 %i.acy, %i.acn
  br i1 %i.acz, label %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.thread.1.i.1.2, label %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.1.i.1.2

_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.1.i.1.2: ; preds = %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.thread.i.1.2
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acv, i64 8
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !86
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 48
  %i.add = load i32, ptr %i.adc, align 4, !tbaa !27
  %i.ade = icmp eq i32 %i.add, %i.acn
  br i1 %i.ade, label %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.thread.1.i.1.2, label %_ZN3igl8geodesic4Face13opposite_edgeEPNS0_6VertexE.exit.1.2

_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.thread.1.i.1.2: ; preds = %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.1.i.1.2, %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.thread.i.1.2
  %i.adf = load ptr, ptr %i.si, align 8, !tbaa !78 ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 8
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !83 ; 2 uses
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !86
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 48
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !27
  %i.adl = icmp ne i32 %i.adk, %i.acn
  tail call void @llvm.assume(i1 %i.adl)
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adh, i64 8
  %i.adn = load ptr, ptr %i.adm, align 8, !tbaa !86
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 48
  %i.adp = load i32, ptr %i.ado, align 4, !tbaa !27
  %i.adq = icmp ne i32 %i.adp, %i.acn
  tail call void @llvm.assume(i1 %i.adq)
  br label %_ZN3igl8geodesic4Face13opposite_edgeEPNS0_6VertexE.exit.1.2

_ZN3igl8geodesic4Face13opposite_edgeEPNS0_6VertexE.exit.1.2: ; preds = %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.thread.1.i.1.2, %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.1.i.1.2, %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.i.1.2
  %i.adr = phi ptr [ %i.sb, %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.i.1.2 ], [ %i.adf, %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.thread.1.i.1.2 ], [ %i.act, %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.1.i.1.2 ]
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 56
  %i.adt = load double, ptr %i.ads, align 8, !tbaa !79 ; 3 uses
  %i.adu = load i32, ptr %i.tw, align 4, !tbaa !27 ; 6 uses
  %i.adv = icmp eq i32 %i.abf, %i.adu
  br i1 %i.adv, label %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.thread.i.2.2, label %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.i.2.2

_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.i.2.2: ; preds = %_ZN3igl8geodesic4Face13opposite_edgeEPNS0_6VertexE.exit.1.2
  %i.adw = load ptr, ptr %i.sg, align 8, !tbaa !86
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 48
  %i.ady = load i32, ptr %i.adx, align 4, !tbaa !27
  %i.adz = icmp eq i32 %i.ady, %i.adu
  br i1 %i.adz, label %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.thread.i.2.2, label %_ZN3igl8geodesic4Face13opposite_edgeEPNS0_6VertexE.exit.2.2

_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.thread.i.2.2: ; preds = %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.i.2.2, %_ZN3igl8geodesic4Face13opposite_edgeEPNS0_6VertexE.exit.1.2
  %i.aea = load ptr, ptr %i.sh, align 8, !tbaa !78 ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 8
  %i.aec = load ptr, ptr %i.aeb, align 8, !tbaa !83 ; 2 uses
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !86
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 48
  %i.aef = load i32, ptr %i.aee, align 4, !tbaa !27
  %i.aeg = icmp eq i32 %i.aef, %i.adu
  br i1 %i.aeg, label %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.thread.1.i.2.2, label %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.1.i.2.2

_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.1.i.2.2: ; preds = %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.thread.i.2.2
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aec, i64 8
  %i.aei = load ptr, ptr %i.aeh, align 8, !tbaa !86
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 48
  %i.aek = load i32, ptr %i.aej, align 4, !tbaa !27
  %i.ael = icmp eq i32 %i.aek, %i.adu
  br i1 %i.ael, label %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.thread.1.i.2.2, label %_ZN3igl8geodesic4Face13opposite_edgeEPNS0_6VertexE.exit.2.2

_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.thread.1.i.2.2: ; preds = %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.1.i.2.2, %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.thread.i.2.2
  %i.aem = load ptr, ptr %i.si, align 8, !tbaa !78 ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 8
  %i.aeo = load ptr, ptr %i.aen, align 8, !tbaa !83 ; 2 uses
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !86
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 48
  %i.aer = load i32, ptr %i.aeq, align 4, !tbaa !27
  %i.aes = icmp ne i32 %i.aer, %i.adu
  tail call void @llvm.assume(i1 %i.aes)
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aeo, i64 8
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !86
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 48
  %i.aew = load i32, ptr %i.aev, align 4, !tbaa !27
  %i.aex = icmp ne i32 %i.aew, %i.adu
  tail call void @llvm.assume(i1 %i.aex)
  br label %_ZN3igl8geodesic4Face13opposite_edgeEPNS0_6VertexE.exit.2.2

_ZN3igl8geodesic4Face13opposite_edgeEPNS0_6VertexE.exit.2.2: ; preds = %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.thread.1.i.2.2, %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.1.i.2.2, %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.i.2.2
  %i.aey = phi ptr [ %i.sb, %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.i.2.2 ], [ %i.aem, %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.thread.1.i.2.2 ], [ %i.aea, %_ZN3igl8geodesic4Edge7belongsEPNS0_6VertexE.exit.1.i.2.2 ]
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 56
  %i.afa = load double, ptr %i.aez, align 8, !tbaa !79 ; 3 uses
  %i.afb = fmul double %i.afa, %i.afa
  %i.afc = tail call double @llvm.fmuladd.f64(double %i.adt, double %i.adt, double %i.afb)
  %i.afd = fneg double %i.acm
  %i.afe = tail call double @llvm.fmuladd.f64(double %i.afd, double %i.acm, double %i.afc)
  %i.aff = fmul double %i.adt, 2.000000e+00
  %i.afg = fmul double %i.aff, %i.afa
  %i.afh = fdiv double %i.afe, %i.afg             ; 2 uses
  %i.afi = fcmp olt double %i.afh, -1.000000e+00
  %.sroa.speculated10.i.i.2 = select i1 %i.afi, double -1.000000e+00, double %i.afh ; 2 uses
  %i.afj = fcmp ogt double %.sroa.speculated10.i.i.2, 1.000000e+00
  %.sroa.speculated.i.i.2 = select i1 %i.afj, double 1.000000e+00, double %.sroa.speculated10.i.i.2
  %i.afk = tail call noundef double @acos(double noundef %.sroa.speculated.i.i.2) #22
  %i.afl = getelementptr inbounds nuw i8, ptr %i.rw, i64 72
  store double %i.afk, ptr %i.afl, align 8, !tbaa !79
  %i.afm = add i32 %.0170427, 1                   ; 2 uses
  %i.afn = zext i32 %i.afm to i64                 ; 2 uses
  %i.afo = icmp ugt i64 %i.qa, %i.afn
  br i1 %i.afo, label %.preheader362, label %._crit_edge429, !llvm.loop !446

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc263, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0276.0 = phi ptr [ %i.rq, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.rq, %.noexc263 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  %.sroa.11.0 = phi ptr [ %i.rr, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.rr, %.noexc263 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ]
  br i1 %.not451, label %.preheader361, label %.lr.ph434

.preheader361:                                    ; preds = %.lr.ph434, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  br i1 %.not.i.i.i.i259, label %.preheader, label %.lr.ph436

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.afp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.lr.ph434:                                        ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit, %.lr.ph434
  %indvars.iv513 = phi i64 [ %indvars.iv.next514, %.lr.ph434 ], [ 0, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit ] ; 2 uses
  %i.afq = getelementptr inbounds nuw [80 x i8], ptr %i.pw, i64 %indvars.iv513 ; 4 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 8
  %i.afs = load ptr, ptr %i.afr, align 8, !tbaa !83 ; 3 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afq, i64 56
  %i.afu = load ptr, ptr %i.afs, align 8, !tbaa !86
  %i.afv = load double, ptr %i.aft, align 8, !tbaa !79
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afu, i64 48
  %i.afx = load i32, ptr %i.afw, align 4, !tbaa !27
  %i.afy = zext i32 %i.afx to i64
  %i.afz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0276.0, i64 %i.afy ; 2 uses
  %i.aga = load double, ptr %i.afz, align 8, !tbaa !79
  %i.agb = fadd double %i.afv, %i.aga
  store double %i.agb, ptr %i.afz, align 8, !tbaa !79
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afs, i64 8
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !86
  %i.age = getelementptr inbounds nuw i8, ptr %i.afq, i64 64
  %i.agf = load double, ptr %i.age, align 8, !tbaa !79
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agd, i64 48
  %i.agh = load i32, ptr %i.agg, align 4, !tbaa !27
  %i.agi = zext i32 %i.agh to i64
  %i.agj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0276.0, i64 %i.agi ; 2 uses
  %i.agk = load double, ptr %i.agj, align 8, !tbaa !79
  %i.agl = fadd double %i.agf, %i.agk
  store double %i.agl, ptr %i.agj, align 8, !tbaa !79
  %i.agm = getelementptr inbounds nuw i8, ptr %i.afs, i64 16
  %i.agn = load ptr, ptr %i.agm, align 8, !tbaa !86
  %i.ago = getelementptr inbounds nuw i8, ptr %i.afq, i64 72
  %i.agp = load double, ptr %i.ago, align 8, !tbaa !79
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agn, i64 48
  %i.agr = load i32, ptr %i.agq, align 4, !tbaa !27
  %i.ags = zext i32 %i.agr to i64
  %i.agt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0276.0, i64 %i.ags ; 2 uses
  %i.agu = load double, ptr %i.agt, align 8, !tbaa !79
  %i.agv = fadd double %i.agp, %i.agu
  store double %i.agv, ptr %i.agt, align 8, !tbaa !79
  %indvars.iv.next514 = add nuw i64 %indvars.iv513, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next514, %i.qa
  br i1 %exitcond.not, label %.preheader361, label %.lr.ph434, !llvm.loop !447

.preheader:                                       ; preds = %.lr.ph436, %.preheader361
  %.not454 = icmp eq i64 %.lcssa368, 0
  br i1 %.not454, label %._crit_edge439, label %.lr.ph438

.lr.ph436:                                        ; preds = %.preheader361, %.lr.ph436
  %indvars.iv517 = phi i64 [ %indvars.iv.next518, %.lr.ph436 ], [ 0, %.preheader361 ] ; 2 uses
  %i.agw = getelementptr inbounds nuw [88 x i8], ptr %i.rj, i64 %indvars.iv517 ; 2 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 48
  %i.agy = load i32, ptr %i.agx, align 4, !tbaa !27
  %i.agz = zext i32 %i.agy to i64
  %i.aha = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0276.0, i64 %i.agz
  %i.ahb = load double, ptr %i.aha, align 8, !tbaa !79
  %i.ahc = fcmp ogt double %i.ahb, f0x401921F8B52D7BFC
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agw, i64 80
  %i.ahe = zext i1 %i.ahc to i8
  store i8 %i.ahe, ptr %i.ahd, align 4, !tbaa !88
  %indvars.iv.next518 = add i64 %indvars.iv517, 1 ; 2 uses
  %i.ahf = and i64 %indvars.iv.next518, 4294967295
  %i.ahg = icmp samesign ugt i64 %i.rn, %i.ahf
  br i1 %i.ahg, label %.lr.ph436, label %.preheader, !llvm.loop !448

._crit_edge439:                                   ; preds = %bb.aj, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.0276.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %._crit_edge439
  %i.ahh = ptrtoint ptr %.sroa.11.0 to i64
  %i.ahi = ptrtoint ptr %.sroa.0276.0 to i64
  %i.ahj = sub i64 %i.ahh, %i.ahi
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0276.0, i64 noundef %i.ahj) #23
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %._crit_edge439, %bb.af
  %.not.i.i.i264 = icmp eq ptr %.sroa.0296.0609621, null
  br i1 %.not.i.i.i264, label %_ZNSt6vectorIN3igl8geodesic8HalfEdgeESaIS2_EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.ahk = ptrtoint ptr %.sroa.31.0611619 to i64
  %i.ahl = sub i64 %i.ahk, %.pre-phi535
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0296.0609621, i64 noundef %i.ahl) #23
  br label %_ZNSt6vectorIN3igl8geodesic8HalfEdgeESaIS2_EED2Ev.exit

_ZNSt6vectorIN3igl8geodesic8HalfEdgeESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.ag
  %.not.i.i.i265 = icmp eq ptr %.sroa.0322.4, null
  br i1 %.not.i.i.i265, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN3igl8geodesic8HalfEdgeESaIS2_EED2Ev.exit
  %i.ahm = ptrtoint ptr %.sroa.34.4 to i64
  %i.ahn = ptrtoint ptr %.sroa.0322.4 to i64
  %i.aho = sub i64 %i.ahm, %i.ahn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0322.4, i64 noundef %i.aho) #23
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN3igl8geodesic8HalfEdgeESaIS2_EED2Ev.exit, %bb.ah
  ret void

.lr.ph438:                                        ; preds = %.preheader, %bb.aj
  %indvars.iv521 = phi i64 [ %indvars.iv.next522, %bb.aj ], [ 0, %.preheader ] ; 2 uses
  %i.ahp = getelementptr inbounds nuw [64 x i8], ptr %.lcssa369, i64 %indvars.iv521 ; 2 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahp, i64 32
  %i.ahr = load i32, ptr %i.ahq, align 8, !tbaa !80
  %i.ahs = icmp eq i32 %i.ahr, 1
  br i1 %i.ahs, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph438
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahp, i64 8
  %i.ahu = load ptr, ptr %i.aht, align 8, !tbaa !83 ; 2 uses
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !86
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 80
  store i8 1, ptr %i.ahw, align 1, !tbaa !88
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahu, i64 8
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !86
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 80
  store i8 1, ptr %i.ahz, align 1, !tbaa !88
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph438
  %indvars.iv.next522 = add i64 %indvars.iv521, 1 ; 2 uses
  %i.aia = and i64 %indvars.iv.next522, 4294967295
  %i.aib = icmp ugt i64 %.lcssa368, %i.aia
  br i1 %i.aib, label %.lr.ph438, label %._crit_edge439, !llvm.loop !449

bb.ak:                                            ; preds = %bb.ae, %bb.i, %bb.aa, %bb.z, %bb.r, %bb.n
  %.sroa.34.0 = phi ptr [ %.sroa.34.3, %bb.n ], [ %.sroa.34.3, %bb.r ], [ %.sroa.34.3, %bb.z ], [ %.sroa.34.4, %bb.ae ], [ %.sroa.34.3, %bb.aa ], [ %.sroa.34.3, %bb.i ] ; 2 uses
  %.sroa.0322.0 = phi ptr [ %.sroa.0322.3, %bb.n ], [ %.sroa.0322.3, %bb.r ], [ %.sroa.0322.3, %bb.z ], [ %.sroa.0322.4, %bb.ae ], [ %.sroa.0322.3, %bb.aa ], [ %.sroa.0322.3, %bb.i ] ; 2 uses
  %.pn211.pn.pn = phi { ptr, i32 } [ %i.jv, %bb.n ], [ %i.mf, %bb.r ], [ %i.po, %bb.z ], [ %i.afp, %bb.ae ], [ %i.qb, %bb.aa ], [ %i.hk, %bb.i ] ; 2 uses
  %.not.i.i.i268 = icmp eq ptr %.sroa.0296.0609621, null
  br i1 %.not.i.i.i268, label %_ZNSt6vectorIN3igl8geodesic8HalfEdgeESaIS2_EED2Ev.exit269, label %bb.al

bb.al:                                            ; preds = %.thread, %bb.ak
  %.pn211.pn.pn635 = phi { ptr, i32 } [ %i.gm, %.thread ], [ %.pn211.pn.pn, %bb.ak ]
  %.sroa.0322.0634 = phi ptr [ %.sroa.0322.3, %.thread ], [ %.sroa.0322.0, %bb.ak ]
  %.sroa.34.0633 = phi ptr [ %.sroa.34.3, %.thread ], [ %.sroa.34.0, %bb.ak ]
  %.sroa.0296.0610632 = phi ptr [ %i.cb, %.thread ], [ %.sroa.0296.0609621, %bb.ak ] ; 2 uses
  %.sroa.31.0611618631 = phi ptr [ %i.cc, %.thread ], [ %.sroa.31.0611619, %bb.ak ]
  %i.aic = ptrtoint ptr %.sroa.31.0611618631 to i64
  %i.aid = ptrtoint ptr %.sroa.0296.0610632 to i64
  %i.aie = sub i64 %i.aic, %i.aid
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0296.0610632, i64 noundef %i.aie) #23
  br label %_ZNSt6vectorIN3igl8geodesic8HalfEdgeESaIS2_EED2Ev.exit269

_ZNSt6vectorIN3igl8geodesic8HalfEdgeESaIS2_EED2Ev.exit269: ; preds = %bb.ak, %bb.al
  %.sroa.34.2 = phi ptr [ %.sroa.34.0633, %bb.al ], [ %.sroa.34.0, %bb.ak ]
  %.sroa.0322.2 = phi ptr [ %.sroa.0322.0634, %bb.al ], [ %.sroa.0322.0, %bb.ak ] ; 2 uses
  %.pn216 = phi { ptr, i32 } [ %.pn211.pn.pn635, %bb.al ], [ %.pn211.pn.pn, %bb.ak ] ; 2 uses
  %.not.i.i.i270 = icmp eq ptr %.sroa.0322.2, null
  br i1 %.not.i.i.i270, label %_ZNSt6vectorIjSaIjEED2Ev.exit271, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIN3igl8geodesic8HalfEdgeESaIS2_EED2Ev.exit269.thread636, %_ZNSt6vectorIN3igl8geodesic8HalfEdgeESaIS2_EED2Ev.exit269.thread, %_ZNSt6vectorIN3igl8geodesic8HalfEdgeESaIS2_EED2Ev.exit269
  %.pn216352 = phi { ptr, i32 } [ %i.bv, %_ZNSt6vectorIN3igl8geodesic8HalfEdgeESaIS2_EED2Ev.exit269.thread ], [ %.pn216, %_ZNSt6vectorIN3igl8geodesic8HalfEdgeESaIS2_EED2Ev.exit269 ], [ %i.en, %_ZNSt6vectorIN3igl8geodesic8HalfEdgeESaIS2_EED2Ev.exit269.thread636 ]
  %.sroa.0322.2351 = phi ptr [ %.sroa.0322.3, %_ZNSt6vectorIN3igl8geodesic8HalfEdgeESaIS2_EED2Ev.exit269.thread ], [ %.sroa.0322.2, %_ZNSt6vectorIN3igl8geodesic8HalfEdgeESaIS2_EED2Ev.exit269 ], [ %.sroa.0322.3, %_ZNSt6vectorIN3igl8geodesic8HalfEdgeESaIS2_EED2Ev.exit269.thread636 ] ; 2 uses
  %.sroa.34.2350 = phi ptr [ %.sroa.34.3, %_ZNSt6vectorIN3igl8geodesic8HalfEdgeESaIS2_EED2Ev.exit269.thread ], [ %.sroa.34.2, %_ZNSt6vectorIN3igl8geodesic8HalfEdgeESaIS2_EED2Ev.exit269 ], [ %.sroa.34.3, %_ZNSt6vectorIN3igl8geodesic8HalfEdgeESaIS2_EED2Ev.exit269.thread636 ]
  %i.aif = ptrtoint ptr %.sroa.34.2350 to i64
  %i.aig = ptrtoint ptr %.sroa.0322.2351 to i64
  %i.aih = sub i64 %i.aif, %i.aig
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0322.2351, i64 noundef %i.aih) #23
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit271

_ZNSt6vectorIjSaIjEED2Ev.exit271:                 ; preds = %bb.am, %_ZNSt6vectorIN3igl8geodesic8HalfEdgeESaIS2_EED2Ev.exit269
  %.pn216.pn = phi { ptr, i32 } [ %.pn216352, %bb.am ], [ %.pn216, %_ZNSt6vectorIN3igl8geodesic8HalfEdgeESaIS2_EED2Ev.exit269 ]
  resume { ptr, i32 } %.pn216.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN3igl8geodesic6VertexESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !423  ; 11 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !216    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 88                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !255
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 88                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 104811045873349726
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 104811045873349725, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  store i32 0, ptr %i.b, align 8, !tbaa !426
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.p, align 8, !tbaa !83
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.q, align 8, !tbaa !353
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr null, ptr %i.r, align 8, !tbaa !96
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 0, ptr %i.s, align 8, !tbaa !80
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.u = add nsw i64 %1, -1
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.v, %.lr.ph.i.i.i.prol ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.v, %.lr.ph.i.i.i.prol ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.prol ]
  %i.w = icmp eq i64 %1, 1
  br i1 %i.w, label %_ZSt27__uninitialized_default_n_aIPN3igl8geodesic6VertexEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.013.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 13 uses
  %.01012.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ %.01012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  store i32 0, ptr %.013.i.i.i, align 8, !tbaa !426
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  store ptr null, ptr %i.x, align 8, !tbaa !83
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  store i32 0, ptr %i.y, align 8, !tbaa !353
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24
  store ptr null, ptr %i.z, align 8, !tbaa !96
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  store i32 0, ptr %i.aa, align 8, !tbaa !80
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 88
  store i32 0, ptr %i.ac, align 8, !tbaa !426
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 96
  store ptr null, ptr %i.ad, align 8, !tbaa !83
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 104
  store i32 0, ptr %i.ae, align 8, !tbaa !353
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 112
end_hunk_1
