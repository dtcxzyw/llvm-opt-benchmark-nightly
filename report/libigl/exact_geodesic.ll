Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/exact_geodesic?download=true
inline.NumInlined: 2805
inline.NumDeleted: 1107
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZSt13__equal_rangeIN9__gnu_cxx17__normal_iteratorIPPN3igl8geodesic21SurfacePointWithIndexESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIS4_EENSB_14_Val_comp_iterIS4_EEESt4pairIT_SH_ESH_SH_RKT0_T1_T2_:bb.a
bb.q:                                             ; preds = %_ZN3igl8geodesic12SurfacePoint4typeEv.exit8.i.i.i47
  br i1 %.not.i7.i.i, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit10.i.i.i49, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = load i32, ptr %i.i, align 4, !tbaa !142
  br label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit10.i.i.i49

_ZN3igl8geodesic12SurfacePoint4typeEv.exit10.i.i.i49: ; preds = %bb.r, %bb.q
  %i.cn = phi i32 [ %i.cm, %bb.r ], [ 3, %bb.q ]
  br i1 %.not.i7.i.i.i46, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit12.i.i.i50, label %bb.s

bb.s:                                             ; preds = %_ZN3igl8geodesic12SurfacePoint4typeEv.exit10.i.i.i49
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 52
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !142
  br label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit12.i.i.i50

_ZN3igl8geodesic12SurfacePoint4typeEv.exit12.i.i.i50: ; preds = %bb.s, %_ZN3igl8geodesic12SurfacePoint4typeEv.exit10.i.i.i49
  %i.cq = phi i32 [ %i.cp, %bb.s ], [ 3, %_ZN3igl8geodesic12SurfacePoint4typeEv.exit10.i.i.i49 ]
  %i.cr = icmp slt i32 %i.cn, %i.cq
  br i1 %i.cr, label %bb.u, label %bb.t

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3igl8geodesic21SurfacePointWithIndexEEclIKPS4_NS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i: ; preds = %_ZN3igl8geodesic12SurfacePoint4typeEv.exit8.i.i.i47
  %i.cs = load i32, ptr %i.j, align 4, !tbaa !27
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !27
  %i.cv = icmp ult i32 %i.cs, %i.cu
  br i1 %i.cv, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3igl8geodesic21SurfacePointWithIndexEEclIKPS4_NS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i, %_ZN3igl8geodesic12SurfacePoint4typeEv.exit12.i.i.i50
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cx = xor i64 %i.cc, -1
  %i.cy = add nsw i64 %.016.i41, %i.cx
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3igl8geodesic21SurfacePointWithIndexEEclIKPS4_NS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i, %_ZN3igl8geodesic12SurfacePoint4typeEv.exit12.i.i.i50
  %.sroa.011.1.i51 = phi ptr [ %.sroa.011.015.i42, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3igl8geodesic21SurfacePointWithIndexEEclIKPS4_NS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i ], [ %i.cw, %bb.t ], [ %.sroa.011.015.i42, %_ZN3igl8geodesic12SurfacePoint4typeEv.exit12.i.i.i50 ] ; 2 uses
  %.1.i52 = phi i64 [ %i.cc, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3igl8geodesic21SurfacePointWithIndexEEclIKPS4_NS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i ], [ %i.cy, %bb.t ], [ %i.cc, %_ZN3igl8geodesic12SurfacePoint4typeEv.exit12.i.i.i50 ] ; 2 uses
  %i.cz = icmp sgt i64 %.1.i52, 0
  br i1 %i.cz, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN3igl8geodesic21SurfacePointWithIndexESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i40, label %.critedge, !llvm.loop !425

bb.v:                                             ; preds = %_ZN3igl8geodesic12SurfacePoint4typeEv.exit12.i.i31, %bb.e, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3igl8geodesic21SurfacePointWithIndexEEclIKPS4_NS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit
  %.sroa.059.1 = phi ptr [ %i.af, %bb.e ], [ %.sroa.059.076, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3igl8geodesic21SurfacePointWithIndexEEclIKPS4_NS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit ], [ %.sroa.059.076, %_ZN3igl8geodesic12SurfacePoint4typeEv.exit12.i.i31 ] ; 3 uses
  %.2 = phi i64 [ %i.ah, %bb.e ], [ %i.k, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3igl8geodesic21SurfacePointWithIndexEEclIKPS4_NS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit ], [ %i.k, %_ZN3igl8geodesic12SurfacePoint4typeEv.exit12.i.i31 ] ; 2 uses
  %i.da = icmp sgt i64 %.2, 0
  br i1 %i.da, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN3igl8geodesic21SurfacePointWithIndexESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %.critedge, !llvm.loop !426

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
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !427  ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !222    ; 2 uses
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
  store ptr %i.o, ptr %i.e, align 8, !tbaa !427
  br label %_ZNSt6vectorIN3igl8geodesic6VertexESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN3igl8geodesic6VertexESaIS2_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN3igl8geodesic6VertexES2_EvT_S4_RSaIT0_E.exit.i.i
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN3igl8geodesic6VertexESaIS2_EE6resizeEm.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !222    ; 3 uses
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
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !428 ; 2 uses
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !230 ; 2 uses
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
  store ptr %i.aw, ptr %i.am, align 8, !tbaa !428
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
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !429

._crit_edge44:                                    ; preds = %.lr.ph43, %_ZNSt6vectorIN3igl8geodesic4FaceESaIS2_EE6resizeEm.exit
  tail call void @_ZN3igl8geodesic4Mesh17build_adjacenciesEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  ret void

.lr.ph43:                                         ; preds = %_ZNSt6vectorIN3igl8geodesic4FaceESaIS2_EE6resizeEm.exit, %.lr.ph43
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %.lr.ph43 ], [ 0, %_ZNSt6vectorIN3igl8geodesic4FaceESaIS2_EE6resizeEm.exit ] ; 3 uses
  %i.ch = load ptr, ptr %i.ak, align 8, !tbaa !230
  %i.ci = getelementptr inbounds nuw [80 x i8], ptr %i.ch, i64 %indvars.iv51 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.ck = trunc nuw i64 %indvars.iv51 to i32      ; 2 uses
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !27
  %i.cl = tail call noundef ptr @_ZN3igl8geodesic21SimlpeMemoryAllocatorIPvE8allocateEj(ptr noundef nonnull align 8 dereferenceable(36) %i.c, i32 noundef 3) ; 4 uses
  store i32 3, ptr %i.ci, align 8, !tbaa !430
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !83
  %i.cn = mul i32 %i.ck, 3                        ; 3 uses
  %i.co = load ptr, ptr %4, align 8, !tbaa !204   ; 3 uses
  %i.cp = zext i32 %i.cn to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !27
  %i.cs = zext i32 %i.cr to i64
  %i.ct = load ptr, ptr %0, align 8, !tbaa !222
  %i.cu = getelementptr inbounds nuw [88 x i8], ptr %i.ct, i64 %i.cs
  store ptr %i.cu, ptr %i.cl, align 8, !tbaa !86
  %i.cv = add i32 %i.cn, 1
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !27
  %i.cz = zext i32 %i.cy to i64
  %i.da = load ptr, ptr %0, align 8, !tbaa !222
  %i.db = getelementptr inbounds nuw [88 x i8], ptr %i.da, i64 %i.cz
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !86
  %i.dd = add i32 %i.cn, 2
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !27
  %i.dh = zext i32 %i.dg to i64
  %i.di = load ptr, ptr %0, align 8, !tbaa !222
  %i.dj = getelementptr inbounds nuw [88 x i8], ptr %i.di, i64 %i.dh
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !86
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next52, %i.al
  br i1 %exitcond55.not, label %._crit_edge44, label %.lr.ph43, !llvm.loop !431
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8geodesic4Mesh17build_adjacenciesEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !427  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !222    ; 2 uses
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
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
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
  %.0.i.i.i.i.i455 = ptrtoaddr ptr %.0.i.i.i.i.i to i64 ; 3 uses
  %.sroa.0322.3456 = ptrtoaddr ptr %.sroa.0322.3 to i64 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !428  ; 2 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !230  ; 3 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 80
  %.not433 = icmp eq ptr %i.r, %i.s
  br i1 %.not433, label %.preheader367, label %.lr.ph

.preheader367:                                    ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !427
  %i.y = load ptr, ptr %0, align 8, !tbaa !222    ; 2 uses
  %.not434 = icmp eq ptr %i.x, %i.y
  br i1 %.not434, label %._crit_edge, label %.lr.ph379

.lr.ph379:                                        ; preds = %.preheader367
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.b

.lr.ph:                                           ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [80 x i8], ptr %i.s, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !83 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !86
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !27
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0322.3, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !27
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !86
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load i32, ptr %i.am, align 4, !tbaa !27
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0322.3, i64 %i.ao ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !27
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !27
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !86
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.av = load i32, ptr %i.au, align 4, !tbaa !27
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0322.3, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !27
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !27
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.ba = and i64 %indvars.iv.next, 4294967295
  %i.bb = icmp ugt i64 %i.w, %i.ba
  br i1 %i.bb, label %.lr.ph, label %.preheader367, !llvm.loop !432

._crit_edge:                                      ; preds = %_ZN3igl8geodesic4Mesh17allocate_pointersEj.exit, %.preheader367
  %.not5.i.i.i.i = icmp eq ptr %.sroa.0322.3, %.0.i.i.i.i.i ; 3 uses
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %._crit_edge
  %i.bc = add i64 %.0.i.i.i.i.i455, -4
  %i.bd = sub i64 %i.bc, %.sroa.0322.3456
  %i.be = and i64 %i.bd, -4
  %i.bf = add i64 %i.be, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %.sroa.0322.3, i8 0, i64 %i.bf, i1 false), !tbaa !27
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_RKT0_.exit

bb.b:                                             ; preds = %.lr.ph379, %_ZN3igl8geodesic4Mesh17allocate_pointersEj.exit
  %i.bg = phi ptr [ %i.y, %.lr.ph379 ], [ %i.br, %_ZN3igl8geodesic4Mesh17allocate_pointersEj.exit ]
  %i.bh = phi i64 [ 0, %.lr.ph379 ], [ %i.bp, %_ZN3igl8geodesic4Mesh17allocate_pointersEj.exit ] ; 2 uses
  %.0178378 = phi i32 [ 0, %.lr.ph379 ], [ %i.bo, %_ZN3igl8geodesic4Mesh17allocate_pointersEj.exit ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0322.3, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !27 ; 2 uses
  %i.bk = invoke noundef ptr @_ZN3igl8geodesic21SimlpeMemoryAllocatorIPvE8allocateEj(ptr noundef nonnull align 8 dereferenceable(36) %i.z, i32 noundef %i.bj)
          to label %_ZN3igl8geodesic4Mesh17allocate_pointersEj.exit unwind label %_ZNSt6vectorIN3igl8geodesic8HalfEdgeESaIS2_EED2Ev.exit269.thread

_ZN3igl8geodesic4Mesh17allocate_pointersEj.exit:  ; preds = %bb.b
  %i.bl = getelementptr inbounds nuw [88 x i8], ptr %i.bg, i64 %i.bh ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store i32 %i.bj, ptr %i.bm, align 8, !tbaa !80
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  store ptr %i.bk, ptr %i.bn, align 8, !tbaa !93
  %i.bo = add i32 %.0178378, 1                    ; 2 uses
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !427
  %i.br = load ptr, ptr %0, align 8, !tbaa !222   ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = sdiv exact i64 %i.bu, 88
  %i.bw = icmp ugt i64 %i.bv, %i.bp
  br i1 %i.bw, label %bb.b, label %._crit_edge, !llvm.loop !433

_ZNSt6vectorIN3igl8geodesic8HalfEdgeESaIS2_EED2Ev.exit269.thread: ; preds = %bb.b
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

end_hunk_0
