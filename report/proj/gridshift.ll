Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/gridshift?download=true
inline.NumInlined: 813
inline.NumDeleted: 372
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12_GLOBAL__N_113gridshiftData19grid_apply_internalEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb6PJ_XYZ12PJ_DIRECTIONPKN5osgeo4proj16GenericShiftGridEPNSE_19GenericShiftGridSetERb:bb.a
  %.085 = phi ptr [ %.287, %bb.ac ], [ %i.d, %.preheader ] ; 5 uses
  %.082 = phi ptr [ %.183, %bb.ac ], [ %8, %.preheader ] ; 3 uses
  %.055 = phi i32 [ %i.dp, %bb.ac ], [ 10, %.preheader ]
  %.0 = phi ptr [ %.2, %bb.ac ], [ %7, %.preheader ] ; 6 uses
  %i.bh = phi <2 x double> [ %i.dn, %bb.ac ], [ %i.bd, %.preheader ] ; 12 uses
  %i.bi = phi <2 x double> [ %i.do, %bb.ac ], [ %i.ba, %.preheader ] ; 2 uses
  %i.bj = extractelement <2 x double> %i.bh, i64 0 ; 2 uses
  %i.bk = extractelement <2 x double> %i.bh, i64 1 ; 2 uses
  call fastcc void @_ZN12_GLOBAL__N_113gridshiftData16grid_interpolateEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE5PJ_XYPKN5osgeo4proj16GenericShiftGridERb(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, double %i.bj, double %i.bk, ptr noundef %.0, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.bl = load ptr, ptr %.0, align 8, !tbaa !84
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = tail call noundef zeroext i1 %i.bn(ptr noundef nonnull align 8 dereferenceable(120) %.0)
  br i1 %i.bo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bp = load ptr, ptr %.082, align 8, !tbaa !84
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call noundef zeroext i1 %i.br(ptr noundef nonnull align 8 dereferenceable(96) %.082, ptr noundef %2)
  %i.bt = zext i1 %i.bs to i8
  store i8 %i.bt, ptr %9, align 1, !tbaa !55
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double +inf, ptr %i.bu, align 8, !tbaa !91
  store <2 x double> splat (double +inf), ptr %0, align 8, !tbaa !86
  br label %.critedge63

bb.r:                                             ; preds = %bb.p
  %i.bv = load double, ptr %10, align 8, !tbaa !111 ; 2 uses
  %i.bw = fcmp oeq double %i.bv, +inf             ; 2 uses
  br i1 %i.bw, label %bb.s, label %bb.aa

bb.s:                                             ; preds = %bb.r
  %.val = load ptr, ptr %1, align 8, !tbaa !80    ; 2 uses
  %.val65 = load ptr, ptr %i.bg, align 8, !tbaa !80 ; 2 uses
  %.not1315.i = icmp eq ptr %.val, %.val65
  br i1 %.not1315.i, label %.critedge.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %bb.t
  %.sroa.05.016.i = phi ptr [ %i.bz, %bb.t ], [ %.val, %bb.s ] ; 3 uses
  %i.bx = load ptr, ptr %.sroa.05.016.i, align 8, !tbaa !82
  %i.by = tail call noundef ptr @_ZNK5osgeo4proj19GenericShiftGridSet6gridAtERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdd(ptr noundef nonnull align 8 dereferenceable(96) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %3, double noundef %i.bj, double noundef %i.bk) ; 13 uses
  %.not.i = icmp eq ptr %i.by, null
  br i1 %.not.i, label %bb.t, label %_ZNK12_GLOBAL__N_113gridshiftData8findGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK6PJ_XYZRPN5osgeo4proj19GenericShiftGridSetE.exit

bb.t:                                             ; preds = %.lr.ph.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.05.016.i, i64 8 ; 2 uses
  %.not13.i = icmp eq ptr %i.bz, %.val65
  br i1 %.not13.i, label %.critedge.thread, label %.lr.ph.i

_ZNK12_GLOBAL__N_113gridshiftData8findGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK6PJ_XYZRPN5osgeo4proj19GenericShiftGridSetE.exit: ; preds = %.lr.ph.i
  %i.ca = load ptr, ptr %.sroa.05.016.i, align 8, !tbaa !82 ; 4 uses
  %i.cb = icmp eq ptr %i.by, %.0
  br i1 %i.cb, label %.critedge.thread, label %bb.u

bb.u:                                             ; preds = %_ZNK12_GLOBAL__N_113gridshiftData8findGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK6PJ_XYZRPN5osgeo4proj19GenericShiftGridSetE.exit
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !84
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = tail call noundef zeroext i1 %i.ce(ptr noundef nonnull align 8 dereferenceable(120) %i.by)
  br i1 %i.cf, label %.critedge.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !60
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !60
  tail call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %2, i32 noundef 3, ptr noundef nonnull @.str.21, ptr noundef %i.ch, ptr noundef %i.cj)
  %i.ck = load <2 x double>, ptr %5, align 8, !tbaa !86 ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 48 ; 5 uses
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !97, !range !57, !noundef !58
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.co = getelementptr inbounds nuw i8, ptr %i.by, i64 88
  %i.cp = load <2 x double>, ptr %i.co, align 8, !tbaa !86
  %i.cq = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.cp)
  %i.cr = fmul double %i.cq, 1.000000e-05         ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !112
  %i.cu = fsub double %i.ct, %i.cr
  %i.cv = extractelement <2 x double> %i.ck, i64 0 ; 2 uses
  %i.cw = fcmp olt double %i.cv, %i.cu
  br i1 %i.cw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cx = fadd <2 x double> %i.ck, <double f0x401921FB54442D18, double -0.000000e+00>
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.cy = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !113
  %i.da = fadd double %i.cr, %i.cz
  %i.db = fcmp ogt double %i.cv, %i.da
  br i1 %i.db, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.dc = fadd <2 x double> %i.ck, <double f0xC01921FB54442D18, double -0.000000e+00>
  br label %bb.ab

bb.aa:                                            ; preds = %bb.r
  %i.dd = load double, ptr %i.ax, align 8, !tbaa !164
  %i.de = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.df = insertelement <2 x double> %i.de, double %i.dd, i64 1
  %i.dg = fadd <2 x double> %i.bh, %i.df
  %i.dh = fsub <2 x double> %i.dg, %i.bi          ; 4 uses
  %i.di = fsub <2 x double> %i.bh, %i.dh
  %foldExtExtBinop = fmul <2 x double> %i.dh, %i.dh
  %i.dj = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.dk = extractelement <2 x double> %i.dh, i64 0 ; 2 uses
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.dk, double %i.dk, double %i.dj)
  %i.dm = fcmp ogt double %i.dl, f0x3AF357C299A88EA7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.v, %bb.x, %bb.y, %bb.z, %bb.aa
  %.287 = phi ptr [ %.085, %bb.aa ], [ %i.cl, %bb.z ], [ %i.cl, %bb.y ], [ %i.cl, %bb.x ], [ %i.cl, %bb.v ] ; 3 uses
  %.183 = phi ptr [ %.082, %bb.aa ], [ %i.ca, %bb.z ], [ %i.ca, %bb.y ], [ %i.ca, %bb.x ], [ %i.ca, %bb.v ]
  %.sroa.06.2 = phi i1 [ %i.dm, %bb.aa ], [ true, %bb.z ], [ true, %bb.y ], [ true, %bb.x ], [ true, %bb.v ]
  %.2 = phi ptr [ %.0, %bb.aa ], [ %i.by, %bb.z ], [ %i.by, %bb.y ], [ %i.by, %bb.x ], [ %i.by, %bb.v ]
  %i.dn = phi <2 x double> [ %i.di, %bb.aa ], [ %i.bh, %bb.z ], [ %i.bh, %bb.y ], [ %i.bh, %bb.x ], [ %i.bh, %bb.v ] ; 3 uses
  %i.do = phi <2 x double> [ %i.bi, %bb.aa ], [ %i.dc, %bb.z ], [ %i.ck, %bb.y ], [ %i.cx, %bb.x ], [ %i.ck, %bb.v ]
  %i.dp = add nsw i32 %.055, -1                   ; 2 uses
  %.not = icmp eq i32 %i.dp, 0
  br i1 %.not, label %.critedge64, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %.sroa.06.2, label %bb.p, label %.critedge, !llvm.loop !163

.critedge64:                                      ; preds = %bb.ab
  tail call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %2, i32 noundef 3, ptr noundef nonnull @.str.22)
  tail call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %2, i32 noundef 2054)
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double +inf, ptr %i.dq, align 8, !tbaa !91
  store <2 x double> splat (double +inf), ptr %0, align 8, !tbaa !86
  br label %.critedge63

.critedge:                                        ; preds = %bb.ac
  br i1 %i.bw, label %.critedge.thread, label %bb.ad

.critedge.thread:                                 ; preds = %_ZNK12_GLOBAL__N_113gridshiftData8findGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK6PJ_XYZRPN5osgeo4proj19GenericShiftGridSetE.exit, %bb.u, %bb.s, %bb.t, %.critedge
  %.3102 = phi ptr [ %.287, %.critedge ], [ %.085, %bb.t ], [ %.085, %bb.s ], [ %.085, %bb.u ], [ %.085, %_ZNK12_GLOBAL__N_113gridshiftData8findGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK6PJ_XYZRPN5osgeo4proj19GenericShiftGridSetE.exit ]
  %i.dr = phi <2 x double> [ %i.dn, %.critedge ], [ %i.bh, %bb.t ], [ %i.bh, %bb.s ], [ %i.bh, %bb.u ], [ %i.bh, %_ZNK12_GLOBAL__N_113gridshiftData8findGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK6PJ_XYZRPN5osgeo4proj19GenericShiftGridSetE.exit ]
  tail call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %2, i32 noundef 3, ptr noundef nonnull @.str.23)
  br label %bb.ad

bb.ad:                                            ; preds = %.critedge.thread, %.critedge, %bb.o
  %.4 = phi ptr [ %i.d, %bb.o ], [ %.3102, %.critedge.thread ], [ %.287, %.critedge ]
  %i.ds = phi <2 x double> [ %i.bd, %bb.o ], [ %i.dr, %.critedge.thread ], [ %i.dn, %.critedge ] ; 2 uses
  %i.dt = load i8, ptr %.4, align 8, !tbaa !97, !range !57, !noundef !58
  %i.du = trunc nuw i8 %i.dt to i1
  %i.dv = extractelement <2 x double> %i.ds, i64 0 ; 2 uses
  br i1 %i.du, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dw = tail call noundef double @_Z6adjlond(double noundef %i.dv)
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.dx = phi double [ %i.dw, %bb.ae ], [ %i.dv, %bb.ad ]
  store double %i.dx, ptr %0, align 8, !tbaa !111
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dz = extractelement <2 x double> %i.ds, i64 1
  store double %i.dz, ptr %i.dy, align 8, !tbaa !164
  %i.ea = load double, ptr %.sroa.379.0..sroa_idx, align 8, !tbaa !91
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !91
  %i.ed = fsub double %i.ea, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ed, ptr %i.ee, align 8, !tbaa !91
  br label %.critedge63

.critedge63:                                      ; preds = %bb.af, %.critedge64, %bb.q, %bb.n, %bb.l, %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.ag

bb.ag:                                            ; preds = %.critedge63, %bb.b
  ret void
}

declare i32 @proj_context_errno(ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZNK5osgeo4proj19GenericShiftGridSet6gridAtERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdd(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(32), double noundef, double noundef) local_unnamed_addr #5

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_113gridshiftData16grid_interpolateEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE5PJ_XYPKN5osgeo4proj16GenericShiftGridERb(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, double %4, double %5, ptr noundef nonnull %6, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %7) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"struct.(anonymous namespace)::GridInfo", align 8 ; 20 uses
  %i.c = alloca i32, align 4                      ; 11 uses
  %i.d = alloca i8, align 1                       ; 11 uses
  store <2 x double> splat (double +inf), ptr %0, align 8, !tbaa !86
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !91
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.g = load i8, ptr %i.f, align 8, !tbaa !97, !range !57, !noundef !58 ; 2 uses
  %i.h = trunc nuw i8 %i.g to i1                  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 5 uses
  %.val.i.i = load ptr, ptr %i.i, align 8, !tbaa !18 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 10 uses
  %.not2.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not2.i.i.i, label %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.04.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %.val.i.i, %bb.a ] ; 3 uses
  %.083.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.j, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !93
  %i.m = icmp ult ptr %i.l, %6                    ; 2 uses
  %.19.i.i.i = select i1 %i.m, ptr %.083.i.i.i, ptr %.04.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.m, i64 24, i64 16
  %.1.in.i.i.i = getelementptr i8, ptr %.04.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !61 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPKN5osgeo4proj16GenericShiftGridESt4pairIKS4_N12_GLOBAL__N_18GridInfoEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS6_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !165

_ZNSt8_Rb_treeIPKN5osgeo4proj16GenericShiftGridESt4pairIKS4_N12_GLOBAL__N_18GridInfoEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS6_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.n = icmp eq ptr %.19.i.i.i, %i.j
  br i1 %i.n, label %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit.thread, label %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit

_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit: ; preds = %_ZNSt8_Rb_treeIPKN5osgeo4proj16GenericShiftGridESt4pairIKS4_N12_GLOBAL__N_18GridInfoEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS6_.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !93
  %i.q = icmp ult ptr %6, %i.p
  br i1 %i.q, label %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit.thread, label %bb.bq

_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit.thread: ; preds = %_ZNSt8_Rb_treeIPKN5osgeo4proj16GenericShiftGridESt4pairIKS4_N12_GLOBAL__N_18GridInfoEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS6_.exit.i.i, %bb.a, %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit
  %i.r = load ptr, ptr %6, align 8, !tbaa !84
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(144) %6) ; 3 uses
  %.not338663 = icmp sgt i32 %i.u, 0
  br i1 %.not338663, label %.lr.ph, label %._crit_edge._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread588_crit_edge

.lr.ph:                                           ; preds = %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456
  %i.ah = add nuw nsw i32 %.0312666, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ah, %i.u
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !166

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.0278668 = phi i8 [ 0, %.lr.ph ], [ %.2, %bb.b ] ; 12 uses
  %.0280667 = phi i32 [ -1, %.lr.ph ], [ %.2282, %bb.b ] ; 12 uses
  %.0312666 = phi i32 [ 0, %.lr.ph ], [ %i.ah, %bb.b ] ; 17 uses
  %.0313665 = phi i32 [ -1, %.lr.ph ], [ %.2315, %bb.b ] ; 14 uses
  %.0317664 = phi i32 [ -1, %.lr.ph ], [ %.2319, %bb.b ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.ai = load ptr, ptr %6, align 8, !tbaa !84
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(144) %6, i32 noundef %.0312666)
  %i.al = load i64, ptr %i.v, align 8, !tbaa !49  ; 2 uses
  br i1 %i.h, label %bb.d, label %.critedge353

bb.d:                                             ; preds = %bb.c
  switch i64 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit430.thread583 [
    i64 15, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 16, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit394
    i64 25, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit424
    i64 14, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit428
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.d
  %i.am = load ptr, ptr %8, align 8, !tbaa !60    ; 2 uses
  %i.an = load i64, ptr %i.am, align 1
  %i.ao = xor i64 %i.an, 7306093638347678060
  %i.ap = getelementptr i8, ptr %i.am, i64 7
  %i.aq = load i64, ptr %i.ap, align 1
  %i.ar = xor i64 %i.aq, 8387236764689850213
  %i.as = or i64 %i.ao, %i.ar
  %i.at = icmp ne i64 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit430

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.aw = load ptr, ptr %6, align 8, !tbaa !84
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8
  invoke void %i.ay(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(144) %6, i32 noundef %.0312666)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.az = load i64, ptr %i.ac, align 8, !tbaa !49 ; 2 uses
  switch i64 %i.az, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread [
    i64 0, label %._crit_edge709
    i64 10, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  ]

._crit_edge709:                                   ; preds = %bb.e
  %.pre710 = load ptr, ptr %9, align 8, !tbaa !60
  br label %bb.h

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.e
  %i.ba = load ptr, ptr %9, align 8, !tbaa !60    ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 1
  %i.bc = xor i64 %i.bb, 8026370506261492321
  %i.bd = getelementptr i8, ptr %i.ba, i64 8
  %i.be = load i16, ptr %i.bd, align 1
  %i.bf = zext i16 %i.be to i64
  %i.bg = xor i64 %i.bf, 25710
  %i.bh = or i64 %i.bc, %i.bg
  %i.bi = icmp ne i64 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  %.not607 = icmp eq i32 %i.bj, 0
  br i1 %.not607, label %bb.h, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.e, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  invoke void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.26)
          to label %.critedge unwind label %bb.g

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %9, align 8, !tbaa !60    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.ad
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.bo = load i64, ptr %i.ad, align 8, !tbaa !50
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %._crit_edge709, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bq = phi ptr [ %.pre710, %._crit_edge709 ], [ %i.ba, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ] ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.ad
  br i1 %i.br, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i391, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i391: ; preds = %bb.h
  %i.bs = icmp samesign ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.bs)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390: ; preds = %bb.h
  %i.bt = load i64, ptr %i.ad, align 8, !tbaa !50
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i391, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit430.thread583

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.f ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bl, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.y

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit394: ; preds = %bb.d
  %i.bv = load ptr, ptr %8, align 8, !tbaa !60
  %i.bw = load i128, ptr %i.bv, align 1
  %i.bx = icmp ne i128 %i.bw, 154717210083841367507314652478555713388
  %i.by = zext i1 %i.bx to i32
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit394.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit426

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit394.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit394
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.ca = load ptr, ptr %6, align 8, !tbaa !84
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8
  invoke void %i.cc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(144) %6, i32 noundef %.0312666)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit394.thread
  %i.cd = load i64, ptr %i.aa, align 8, !tbaa !49 ; 2 uses
  switch i64 %i.cd, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit396.thread [
    i64 0, label %._crit_edge707
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_113gridshiftData16grid_interpolateEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE5PJ_XYPKN5osgeo4proj16GenericShiftGridERb:bb.a
  %.4284830 = phi i32 [ %.4284, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit465 ], [ %.4284831, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463 ] ; 2 uses
  %.4321821 = phi i32 [ %.4321, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit465 ], [ %.4321822, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463 ] ; 2 uses
  %.0313.lcssa804817 = phi i32 [ %.0313.lcssa804, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit465 ], [ %.0313.lcssa804818, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463 ]
  %i.kf = icmp slt i32 %.4284830, 0
  %i.kg = icmp slt i32 %.4321821, 0
  %or.cond14 = select i1 %i.kf, i1 true, i1 %i.kg
  br i1 %or.cond14, label %bb.aa, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471.thread593

bb.aa:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463.thread
  call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.37)
  br label %.critedge364

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471.thread593: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit465, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread588._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit469_crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread588._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit467_crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread588, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread588._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471_crit_edge
  %.4847 = phi i8 [ %.4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread588._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471_crit_edge ], [ %.4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread588 ], [ %.4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit465 ], [ %.4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread588._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit469_crit_edge ], [ %.4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread588._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit467_crit_edge ], [ %.4846, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463 ], [ %.4845, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463.thread ]
  %.4284837 = phi i32 [ %.4284, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread588._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471_crit_edge ], [ %.4284, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread588 ], [ %.4284, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit465 ], [ %.4284, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread588._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit469_crit_edge ], [ %.4284, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread588._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit467_crit_edge ], [ %.4284831, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463 ], [ %.4284830, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463.thread ]
  %.4321828 = phi i32 [ %.4321, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread588._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471_crit_edge ], [ %.4321, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread588 ], [ %.4321, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit465 ], [ %.4321, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread588._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit469_crit_edge ], [ %.4321, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread588._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit467_crit_edge ], [ %.4321822, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463 ], [ %.4321821, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463.thread ]
  %.0313.lcssa804819 = phi i32 [ %.0313.lcssa804, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread588._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471_crit_edge ], [ %.0313.lcssa804, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread588 ], [ %.0313.lcssa804, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit465 ], [ %.0313.lcssa804, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread588._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit469_crit_edge ], [ %.0313.lcssa804, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread588._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit467_crit_edge ], [ %.0313.lcssa804818, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463 ], [ %.0313.lcssa804817, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463.thread ] ; 2 uses
  %i.kh = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.36)
  %i.ki = icmp slt i32 %.0313.lcssa804819, 0
  %or.cond53 = select i1 %i.kh, i1 %i.ki, i1 false
  br i1 %or.cond53, label %bb.ab, label %bb.ac

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit467.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread588._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471_crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread588._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit469_crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread588._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit467_crit_edge
  %.old52 = icmp slt i32 %.0313.lcssa804, 0
  br i1 %.old52, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471.thread593, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit467.thread
  call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.37)
  br label %.critedge364

bb.ac:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit467.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471.thread593
  %.4839 = phi i8 [ %.4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit467.thread ], [ %.4847, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471.thread593 ]
  %.4284832 = phi i32 [ %.4284, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit467.thread ], [ %.4284837, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471.thread593 ] ; 3 uses
  %.4321823 = phi i32 [ %.4321, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit467.thread ], [ %.4321828, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471.thread593 ] ; 3 uses
  %.0313.lcssa804820 = phi i32 [ %.0313.lcssa804, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit467.thread ], [ %.0313.lcssa804819, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471.thread593 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.kk = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 9 uses
  store ptr %i.kk, ptr %14, align 8, !tbaa !48
  %i.kl = load ptr, ptr %i.kj, align 8, !tbaa !60 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !49 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.kn, ptr %i.b, align 8, !tbaa !59
  %i.ko = icmp ugt i64 %i.kn, 15
  br i1 %i.ko, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.ac
  %i.kp = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.kp, ptr %14, align 8, !tbaa !60
  %i.kq = load i64, ptr %i.b, align 8, !tbaa !59
  store i64 %i.kq, ptr %i.kk, align 8, !tbaa !50
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.ac
  %i.kr = phi ptr [ %i.kp, %.noexc.i ], [ %i.kk, %bb.ac ] ; 2 uses
  switch i64 %i.kn, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i
  %i.ks = load i8, ptr %i.kl, align 1, !tbaa !50
  store i8 %i.ks, ptr %i.kr, align 1, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.ae:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kr, ptr align 1 %i.kl, i64 %i.kn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.ad, %bb.ae
  %i.kt = load i64, ptr %i.b, align 8, !tbaa !59  ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  store i64 %i.kt, ptr %i.ku, align 8, !tbaa !49
  %i.kv = load ptr, ptr %14, align 8, !tbaa !60
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.kt
  store i8 0, ptr %i.kw, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.kx = load i64, ptr %i.ku, align 8, !tbaa !49 ; 2 uses
  %i.ky = icmp eq i64 %i.kx, 0
  br i1 %i.ky, label %.noexc.i473, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

.noexc.i473:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.kz = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.kz, ptr %15, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 20, ptr %i.a, align 8, !tbaa !59
  %i.la = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.ag    ; 2 uses

.noexc:                                           ; preds = %.noexc.i473
  store ptr %i.la, ptr %15, align 8, !tbaa !60
  %i.lb = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.lb, ptr %i.kz, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.la, ptr noundef nonnull align 1 dereferenceable(20) @.str.41, i64 20, i1 false)
  %i.lc = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.lb, ptr %i.lc, align 8, !tbaa !49
  %i.ld = load ptr, ptr %15, align 8, !tbaa !60
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lb
  store i8 0, ptr %i.le, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.lf = load ptr, ptr %6, align 8, !tbaa !84
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8
  %i.li = invoke noundef nonnull align 8 dereferenceable(32) ptr %i.lh(ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef -1)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %.noexc
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.li)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.ah

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.af
  %i.lj = load ptr, ptr %15, align 8, !tbaa !60   ; 2 uses
  %i.lk = icmp eq ptr %i.lj, %i.kz
  br i1 %i.lk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i476, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ll = load i64, ptr %i.kz, align 8, !tbaa !50
  %i.lm = add i64 %i.ll, 1
  call void @_ZdlPvm(ptr noundef %i.lj, i64 noundef %i.lm) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i476

bb.ag:                                            ; preds = %.noexc.i473
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480

bb.ah:                                            ; preds = %bb.af, %.noexc
  %i.lo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lp = load ptr, ptr %15, align 8, !tbaa !60   ; 2 uses
  %i.lq = icmp eq ptr %i.lp, %i.kz
  br i1 %i.lq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i478

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i478: ; preds = %bb.ah
  %i.lr = load i64, ptr %i.kz, align 8, !tbaa !50
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %i.lp, i64 noundef %i.ls) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i478, %bb.ag
  %.pn339 = phi { ptr, i32 } [ %i.ln, %bb.ag ], [ %i.lo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i478 ], [ %i.lo, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.bo

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i476: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %.pr = load i64, ptr %i.ku, align 8, !tbaa !49  ; 2 uses
  %i.lt = icmp eq i64 %.pr, 0
  br i1 %i.lt, label %bb.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i476
  %i.lu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.11, i64 noundef 8)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exitthread-pre-split unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %bb.ai, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit485.thread
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exitthread-pre-split: ; preds = %bb.ai
  %.pr595 = load i64, ptr %i.ku, align 8, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exitthread-pre-split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i476
  %i.lw = phi i64 [ %.pr595, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exitthread-pre-split ], [ %.pr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i476 ], [ %i.kx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ]
  switch i64 %i.lw, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit485.thread [
    i64 8, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit483
    i64 11, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit485
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit483: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.lx = load ptr, ptr %14, align 8, !tbaa !60
  %i.ly = load i64, ptr %i.lx, align 1
  %i.lz = icmp ne i64 %i.ly, 8241980317954238818
  %i.ma = zext i1 %i.lz to i32
  %.not600 = icmp eq i32 %i.ma, 0
  br i1 %.not600, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit483.thread596, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit485.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit485: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.mb = load ptr, ptr %14, align 8, !tbaa !60   ; 2 uses
  %i.mc = load i64, ptr %i.mb, align 1
  %i.md = xor i64 %i.mc, 7021785138768996706
  %i.me = getelementptr i8, ptr %i.mb, i64 3
  %i.mf = load i64, ptr %i.me, align 1
  %i.mg = xor i64 %i.mf, 7163384644189315445
  %i.mh = or i64 %i.md, %i.mg
  %i.mi = icmp ne i64 %i.mh, 0
  %i.mj = zext i1 %i.mi to i32
  %.not601 = icmp eq i32 %i.mj, 0
  br i1 %.not601, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit483.thread596, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit485.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit485.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit483, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit485
  invoke void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.42)
          to label %bb.bm unwind label %bb.aj

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit483.thread596: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit485, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit483
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.mk = getelementptr inbounds nuw i8, ptr %16, i64 13
  %i.ml = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ml, i8 0, i64 25, i1 false)
  %i.mn = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #22
          to label %bb.ak unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.i ; 9 uses

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit483.thread596
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ak:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit483.thread596
  %i.mp = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.mq = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.mr = getelementptr inbounds nuw i8, ptr %16, i64 4
  store ptr %i.mn, ptr %i.mm, align 8, !tbaa !105
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mn, i64 12 ; 4 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %16, i64 64 ; 2 uses
  store ptr %i.ms, ptr %i.mt, align 8, !tbaa !106
  store i32 -1, ptr %i.mn, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mn, i64 4 ; 2 uses
  store i32 -1, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mn, i64 8 ; 2 uses
  store i32 -1, ptr %.sroa.6.0..sroa_idx.i, align 4
  %i.mu = getelementptr inbounds nuw i8, ptr %16, i64 56
  store ptr %i.ms, ptr %i.mu, align 8, !tbaa !168
  %i.mv = getelementptr inbounds nuw i8, ptr %16, i64 72 ; 2 uses
  store i32 -1, ptr %i.mv, align 8, !tbaa !170
  %i.mw = getelementptr inbounds nuw i8, ptr %16, i64 76
  store i32 -1, ptr %i.mw, align 4, !tbaa !171
  store i32 %.4321823, ptr %16, align 8, !tbaa !179
  store i32 %.4284832, ptr %i.mr, align 4, !tbaa !180
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 38
  %i.my = load i8, ptr %i.mx, align 2, !tbaa !85, !range !57, !noundef !58
  %i.mz = trunc nuw i8 %i.my to i1
  %i.na = select i1 %i.mz, i32 -1, i32 %.0313.lcssa804820
  store i32 %i.na, ptr %i.mq, align 8, !tbaa !181
  store i8 %.4839, ptr %i.mp, align 4, !tbaa !182
  %i.nb = load i64, ptr %i.ku, align 8, !tbaa !49
  %i.nc = icmp eq i64 %i.nb, 8
  br i1 %i.nc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit487, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit487.thread598

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit487: ; preds = %bb.ak
  %i.nd = load ptr, ptr %14, align 8, !tbaa !60
  %i.ne = load i64, ptr %i.nd, align 1
  %i.nf = icmp ne i64 %i.ne, 8241980317954238818
  %i.ng = zext i1 %i.nf to i32
  %i.nh = icmp eq i32 %i.ng, 0
  br i1 %i.nh, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit487.thread598

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit487.thread598: ; preds = %bb.ak, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit487
  %i.ni = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.nj = load i32, ptr %i.ni, align 8, !tbaa !184
  %i.nk = icmp slt i32 %i.nj, 3
  br i1 %i.nk, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit487.thread598
  %i.nl = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !185
  %i.nn = icmp slt i32 %i.nm, 3
  %i.no = zext i1 %i.nn to i8
  br label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.al, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit487.thread598, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit487
  %i.np = phi i8 [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit487.thread598 ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit487 ], [ %i.no, %bb.al ]
  store i8 %i.np, ptr %i.mk, align 1, !tbaa !186
  %i.nq = invoke noalias noundef nonnull dereferenceable(108) ptr @_Znwm(i64 noundef 108) #22
          to label %_ZNSt6vectorIfSaIfEE6resizeEm.exit unwind label %bb.bn ; 4 uses

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  %i.nr = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.ns = getelementptr inbounds nuw i8, ptr %16, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(108) %i.nq, i8 0, i64 108, i1 false)
  store ptr %i.nq, ptr %i.ml, align 8, !tbaa !109
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nq, i64 108 ; 4 uses
  store ptr %i.nt, ptr %i.ns, align 8, !tbaa !187
  store ptr %i.nt, ptr %i.nr, align 8, !tbaa !110
  %i.nu = icmp eq i32 %.4321823, 1
  %i.nv = icmp eq i32 %.4284832, 0
  %or.cond16 = select i1 %i.nu, i1 %i.nv, i1 false
  br i1 %or.cond16, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.nw = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i8 1, ptr %i.nw, align 8, !tbaa !188
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit, %bb.am
  %17 = phi i8 [ 1, %bb.am ], [ 0, %_ZNSt6vectorIfSaIfEE6resizeEm.exit ]
  %storemerge602 = phi i32 [ 0, %bb.am ], [ %.4321823, %_ZNSt6vectorIfSaIfEE6resizeEm.exit ]
  %storemerge = phi i32 [ 1, %bb.am ], [ %.4284832, %_ZNSt6vectorIfSaIfEE6resizeEm.exit ]
  store i32 %storemerge602, ptr %i.mn, align 4, !tbaa !189
  store i32 %storemerge, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !189
  store i32 %.0313.lcssa804820, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !189
  %.val.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !18 ; 2 uses
  %.not2.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not2.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.an, %.lr.ph.i.i.i.i
  %.04.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.val.i.i.i, %bb.an ] ; 3 uses
  %.083.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.j, %bb.an ]
  %i.nx = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 32
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !93
  %i.nz = icmp ult ptr %i.ny, %6                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.nz, ptr %.083.i.i.i.i, ptr %.04.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.nz, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr i8, ptr %.04.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !61 ; 2 uses
  %.not.i.i.i.i489 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i489, label %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE11lower_boundERSA_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !165

_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE11lower_boundERSA_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.oa = icmp eq ptr %.19.i.i.i.i, %i.j
  br i1 %i.oa, label %.critedge.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE11lower_boundERSA_.exit.i
  %i.ob = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !191
  %i.od = icmp ult ptr %6, %i.oc
  br i1 %i.od, label %.critedge.i, label %.critedge370.thread855

.critedge.i:                                      ; preds = %bb.ao, %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE11lower_boundERSA_.exit.i, %bb.an
  %i.oe = phi i1 [ false, %bb.ao ], [ true, %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE11lower_boundERSA_.exit.i ], [ true, %bb.an ]
  %.08.lcssa.i.i.i28.i = phi ptr [ %.19.i.i.i.i, %bb.ao ], [ %.19.i.i.i.i, %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE11lower_boundERSA_.exit.i ], [ %i.j, %bb.an ] ; 10 uses
  %i.of = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #22
          to label %.noexc491 unwind label %bb.bn ; 14 uses

.noexc491:                                        ; preds = %.critedge.i
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 32
  store ptr %6, ptr %i.og, align 8, !tbaa !191
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.oh, ptr noundef nonnull align 8 dereferenceable(80) %16, i64 14, i1 false)
  %i.oi = getelementptr inbounds nuw i8, ptr %i.of, i64 56 ; 2 uses
  store ptr %i.nq, ptr %i.oi, align 8, !tbaa !109
  %i.oj = getelementptr inbounds nuw i8, ptr %i.of, i64 64
  store ptr %i.nt, ptr %i.oj, align 8, !tbaa !187
  %i.ok = getelementptr inbounds nuw i8, ptr %i.of, i64 72 ; 2 uses
  store ptr %i.nt, ptr %i.ok, align 8, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ml, i8 0, i64 24, i1 false)
  %i.ol = getelementptr inbounds nuw i8, ptr %i.of, i64 80
  store i8 %17, ptr %i.ol, align 8, !tbaa !188
  %i.om = getelementptr inbounds nuw i8, ptr %i.of, i64 88
  store ptr %i.mn, ptr %i.om, align 8, !tbaa !105
  %i.on = getelementptr inbounds nuw i8, ptr %i.of, i64 96
  store ptr %i.ms, ptr %i.on, align 8, !tbaa !168
  %i.oo = getelementptr inbounds nuw i8, ptr %i.of, i64 104
  store ptr %i.ms, ptr %i.oo, align 8, !tbaa !106
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mm, i8 0, i64 24, i1 false)
  %i.op = getelementptr inbounds nuw i8, ptr %i.of, i64 112
  %i.oq = load i64, ptr %i.mv, align 8, !tbaa !189
  store i64 %i.oq, ptr %i.op, align 8, !tbaa !189
  br i1 %i.oe, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %.noexc491
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val12.i.i.i.i = load i64, ptr %i.or, align 8, !tbaa !100
  %.not.i.i.i20.i = icmp eq i64 %.val12.i.i.i.i, 0
  br i1 %.not.i.i.i20.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !61 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 32
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !93
  %i.ow = icmp ult ptr %i.ov, %6
  br i1 %i.ow, label %.thread.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.01113.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !61 ; 2 uses
  %.not14.i.i.i.i.i = icmp eq ptr %.01113.i.i.i.i.i, null
  br i1 %.not14.i.i.i.i.i, label %._crit_edge.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ar, %.lr.ph.i.i.i.i.i
  %.01115.i.i.i.i.i = phi ptr [ %.011.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.01113.i.i.i.i.i, %bb.ar ] ; 5 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.01115.i.i.i.i.i, i64 32
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !93 ; 2 uses
  %i.oz = icmp ult ptr %6, %i.oy                  ; 2 uses
  %.in.v.i.i.i.i.i = select i1 %i.oz, i64 16, i64 24
  %.in.i.i.i.i.i = getelementptr i8, ptr %.01115.i.i.i.i.i, i64 %.in.v.i.i.i.i.i
  %.011.i.i.i.i.i = load ptr, ptr %.in.i.i.i.i.i, align 8, !tbaa !61 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.011.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !167

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.oz, label %._crit_edge.thread.i.i.i.i.i, label %bb.at

._crit_edge.thread.i.i.i.i.i:                     ; preds = %._crit_edge.i.i.i.i.i, %bb.ar
  %.010.lcssa20.i.i.i.i.i = phi ptr [ %.01115.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.j, %bb.ar ] ; 4 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val9.i.i.i.i.i = load ptr, ptr %i.pa, align 8, !tbaa !51
  %i.pb = icmp eq ptr %.010.lcssa20.i.i.i.i.i, %.val9.i.i.i.i.i
  br i1 %i.pb, label %.thread.i.i.i, label %bb.as

bb.as:                                            ; preds = %._crit_edge.thread.i.i.i.i.i
  %i.pc = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.010.lcssa20.i.i.i.i.i) #26 ; 2 uses
  %.phi.trans.insert31.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pc, i64 32
  %.pre32.i.i.i.i = load ptr, ptr %.phi.trans.insert31.i.i.i.i, align 8, !tbaa !93
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %._crit_edge.i.i.i.i.i
  %i.pd = phi ptr [ %.pre32.i.i.i.i, %bb.as ], [ %i.oy, %._crit_edge.i.i.i.i.i ]
  %.010.lcssa19.i.i.i.i.i = phi ptr [ %.010.lcssa20.i.i.i.i.i, %bb.as ], [ %.01115.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %.sroa.01.0.i.i.i.i.i = phi ptr [ %i.pc, %bb.as ], [ %.01115.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %i.pe = icmp ult ptr %i.pd, %6
  br i1 %i.pe, label %.thread.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i.i.i

bb.au:                                            ; preds = %.noexc491
  %i.pf = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i28.i, i64 32
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !93 ; 2 uses
  %i.ph = icmp ult ptr %6, %i.pg
  br i1 %i.ph, label %bb.av, label %bb.bb

bb.av:                                            ; preds = %bb.au
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !61 ; 4 uses
  %i.pk = icmp eq ptr %i.pj, %.08.lcssa.i.i.i28.i
  br i1 %i.pk, label %bb.bi, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.pl = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.08.lcssa.i.i.i28.i) #26 ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 32
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !93
  %i.po = icmp ult ptr %i.pn, %6
  br i1 %i.po, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.pp = getelementptr i8, ptr %i.pl, i64 24
  %.val10.i.i.i.i = load ptr, ptr %i.pp, align 8, !tbaa !101
  %i.pq = icmp eq ptr %.val10.i.i.i.i, null       ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.pq, ptr null, ptr %.08.lcssa.i.i.i28.i
  %spec.select22.i.i.i.i = select i1 %i.pq, ptr %i.pl, ptr %.08.lcssa.i.i.i28.i
  br label %.thread.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %.01113.i16.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !61 ; 2 uses
  %.not14.i17.i.i.i.i = icmp eq ptr %.01113.i16.i.i.i.i, null
  br i1 %.not14.i17.i.i.i.i, label %._crit_edge.thread.i33.i.i.i.i, label %.lr.ph.i18.i.i.i.i

.lr.ph.i18.i.i.i.i:                               ; preds = %bb.ay, %.lr.ph.i18.i.i.i.i
  %.01115.i19.i.i.i.i = phi ptr [ %.011.i22.i.i.i.i, %.lr.ph.i18.i.i.i.i ], [ %.01113.i16.i.i.i.i, %bb.ay ] ; 5 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.01115.i19.i.i.i.i, i64 32
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !93 ; 2 uses
  %i.pt = icmp ult ptr %6, %i.ps                  ; 2 uses
  %.in.v.i20.i.i.i.i = select i1 %i.pt, i64 16, i64 24
  %.in.i21.i.i.i.i = getelementptr i8, ptr %.01115.i19.i.i.i.i, i64 %.in.v.i20.i.i.i.i
  %.011.i22.i.i.i.i = load ptr, ptr %.in.i21.i.i.i.i, align 8, !tbaa !61 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %.011.i22.i.i.i.i, null
  br i1 %.not.i23.i.i.i.i, label %._crit_edge.i24.i.i.i.i, label %.lr.ph.i18.i.i.i.i, !llvm.loop !167

._crit_edge.i24.i.i.i.i:                          ; preds = %.lr.ph.i18.i.i.i.i
  br i1 %i.pt, label %._crit_edge.thread.i33.i.i.i.i, label %bb.ba

._crit_edge.thread.i33.i.i.i.i:                   ; preds = %._crit_edge.i24.i.i.i.i, %bb.ay
  %.010.lcssa20.i34.i.i.i.i = phi ptr [ %.01115.i19.i.i.i.i, %._crit_edge.i24.i.i.i.i ], [ %i.j, %bb.ay ] ; 4 uses
  %i.pu = icmp eq ptr %.010.lcssa20.i34.i.i.i.i, %i.pj
  br i1 %i.pu, label %.thread.i.i.i, label %bb.az

bb.az:                                            ; preds = %._crit_edge.thread.i33.i.i.i.i
  %i.pv = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.010.lcssa20.i34.i.i.i.i) #26 ; 2 uses
  %.phi.trans.insert29.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pv, i64 32
  %.pre30.i.i.i.i = load ptr, ptr %.phi.trans.insert29.i.i.i.i, align 8, !tbaa !93
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %._crit_edge.i24.i.i.i.i
  %i.pw = phi ptr [ %.pre30.i.i.i.i, %bb.az ], [ %i.ps, %._crit_edge.i24.i.i.i.i ]
  %.010.lcssa19.i25.i.i.i.i = phi ptr [ %.010.lcssa20.i34.i.i.i.i, %bb.az ], [ %.01115.i19.i.i.i.i, %._crit_edge.i24.i.i.i.i ]
  %.sroa.01.0.i26.i.i.i.i = phi ptr [ %i.pv, %bb.az ], [ %.01115.i19.i.i.i.i, %._crit_edge.i24.i.i.i.i ]
  %i.px = icmp ult ptr %i.pw, %6
  br i1 %i.px, label %.thread.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i.i.i

bb.bb:                                            ; preds = %bb.au
  %i.py = icmp ult ptr %i.pg, %6
  br i1 %i.py, label %bb.bc, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !61 ; 2 uses
  %i.qb = icmp eq ptr %i.qa, %.08.lcssa.i.i.i28.i
  br i1 %i.qb, label %bb.bi, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.qc = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.08.lcssa.i.i.i28.i) #26 ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 32
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !93
  %i.qf = icmp ult ptr %6, %i.qe
  br i1 %i.qf, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.qg = getelementptr i8, ptr %.08.lcssa.i.i.i28.i, i64 24
  %.val.i.i.i.i = load ptr, ptr %i.qg, align 8, !tbaa !101
  %i.qh = icmp eq ptr %.val.i.i.i.i, null         ; 2 uses
  %spec.select23.i.i.i.i = select i1 %i.qh, ptr null, ptr %i.qc
  %spec.select24.i.i.i.i = select i1 %i.qh, ptr %.08.lcssa.i.i.i28.i, ptr %i.qc
  br label %.thread.i.i.i

bb.bf:                                            ; preds = %bb.bd
  %.01113.i37.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !61 ; 2 uses
  %.not14.i38.i.i.i.i = icmp eq ptr %.01113.i37.i.i.i.i, null
  br i1 %.not14.i38.i.i.i.i, label %._crit_edge.thread.i54.i.i.i.i, label %.lr.ph.i39.i.i.i.i

.lr.ph.i39.i.i.i.i:                               ; preds = %bb.bf, %.lr.ph.i39.i.i.i.i
  %.01115.i40.i.i.i.i = phi ptr [ %.011.i43.i.i.i.i, %.lr.ph.i39.i.i.i.i ], [ %.01113.i37.i.i.i.i, %bb.bf ] ; 5 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.01115.i40.i.i.i.i, i64 32
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !93 ; 2 uses
  %i.qk = icmp ult ptr %6, %i.qj                  ; 2 uses
  %.in.v.i41.i.i.i.i = select i1 %i.qk, i64 16, i64 24
  %.in.i42.i.i.i.i = getelementptr i8, ptr %.01115.i40.i.i.i.i, i64 %.in.v.i41.i.i.i.i
  %.011.i43.i.i.i.i = load ptr, ptr %.in.i42.i.i.i.i, align 8, !tbaa !61 ; 2 uses
  %.not.i44.i.i.i.i = icmp eq ptr %.011.i43.i.i.i.i, null
  br i1 %.not.i44.i.i.i.i, label %._crit_edge.i45.i.i.i.i, label %.lr.ph.i39.i.i.i.i, !llvm.loop !167

._crit_edge.i45.i.i.i.i:                          ; preds = %.lr.ph.i39.i.i.i.i
  br i1 %i.qk, label %._crit_edge.thread.i54.i.i.i.i, label %bb.bh

._crit_edge.thread.i54.i.i.i.i:                   ; preds = %._crit_edge.i45.i.i.i.i, %bb.bf
  %.010.lcssa20.i55.i.i.i.i = phi ptr [ %.01115.i40.i.i.i.i, %._crit_edge.i45.i.i.i.i ], [ %i.j, %bb.bf ] ; 4 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val9.i56.i.i.i.i = load ptr, ptr %i.ql, align 8, !tbaa !51
  %i.qm = icmp eq ptr %.010.lcssa20.i55.i.i.i.i, %.val9.i56.i.i.i.i
  br i1 %i.qm, label %.thread.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge.thread.i54.i.i.i.i
  %i.qn = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.010.lcssa20.i55.i.i.i.i) #26 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.qn, i64 32
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !93
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %._crit_edge.i45.i.i.i.i
  %i.qo = phi ptr [ %.pre.i.i.i.i, %bb.bg ], [ %i.qj, %._crit_edge.i45.i.i.i.i ]
  %.010.lcssa19.i46.i.i.i.i = phi ptr [ %.010.lcssa20.i55.i.i.i.i, %bb.bg ], [ %.01115.i40.i.i.i.i, %._crit_edge.i45.i.i.i.i ]
  %.sroa.01.0.i47.i.i.i.i = phi ptr [ %i.qn, %bb.bg ], [ %.01115.i40.i.i.i.i, %._crit_edge.i45.i.i.i.i ]
  %i.qp = icmp ult ptr %i.qo, %6
  br i1 %i.qp, label %.thread.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bc, %bb.av
  %.sroa.021.2.i.i.i.i = phi ptr [ null, %bb.bc ], [ %i.pj, %bb.av ] ; 2 uses
  %.sroa.12.2.i.i.i.i = phi ptr [ %i.qa, %bb.bc ], [ %i.pj, %bb.av ] ; 2 uses
  %.not.i.i.i490 = icmp eq ptr %.sroa.12.2.i.i.i.i, null
  br i1 %.not.i.i.i490, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i.i.i, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.bi, %bb.bh, %._crit_edge.thread.i54.i.i.i.i, %bb.be, %bb.ba, %._crit_edge.thread.i33.i.i.i.i, %bb.ax, %bb.at, %._crit_edge.thread.i.i.i.i.i, %bb.aq
  %.sroa.12.2.i21.i.i.i = phi ptr [ %.sroa.12.2.i.i.i.i, %bb.bi ], [ %.010.lcssa19.i25.i.i.i.i, %bb.ba ], [ %.010.lcssa19.i.i.i.i.i, %bb.at ], [ %spec.select22.i.i.i.i, %bb.ax ], [ %.010.lcssa20.i55.i.i.i.i, %._crit_edge.thread.i54.i.i.i.i ], [ %.010.lcssa20.i34.i.i.i.i, %._crit_edge.thread.i33.i.i.i.i ], [ %.010.lcssa20.i.i.i.i.i, %._crit_edge.thread.i.i.i.i.i ], [ %spec.select24.i.i.i.i, %bb.be ], [ %i.ot, %bb.aq ], [ %.010.lcssa19.i46.i.i.i.i, %bb.bh ] ; 3 uses
  %.sroa.021.2.i20.i.i.i = phi ptr [ %.sroa.021.2.i.i.i.i, %bb.bi ], [ null, %bb.ba ], [ null, %bb.at ], [ %spec.select.i.i.i.i, %bb.ax ], [ null, %._crit_edge.thread.i54.i.i.i.i ], [ null, %._crit_edge.thread.i33.i.i.i.i ], [ null, %._crit_edge.thread.i.i.i.i.i ], [ %spec.select23.i.i.i.i, %bb.be ], [ null, %bb.aq ], [ null, %bb.bh ]
  %.not.i.i10.i.i.i = icmp ne ptr %.sroa.021.2.i20.i.i.i, null
  %i.qq = icmp eq ptr %.sroa.12.2.i21.i.i.i, %i.j
  %or.cond.i.i.i.i.i = select i1 %.not.i.i10.i.i.i, i1 true, i1 %i.qq
  br i1 %or.cond.i.i.i.i.i, label %.critedge370, label %bb.bj

bb.bj:                                            ; preds = %.thread.i.i.i
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i21.i.i.i, i64 32
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !93
  %i.qt = icmp ult ptr %6, %i.qs
  br label %.critedge370

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i.i.i:    ; preds = %bb.bi, %bb.bh, %bb.bb, %bb.ba, %bb.at
  %.sroa.012.0.ph.i.i.i = phi ptr [ %.sroa.021.2.i.i.i.i, %bb.bi ], [ %.sroa.01.0.i26.i.i.i.i, %bb.ba ], [ %.sroa.01.0.i.i.i.i.i, %bb.at ], [ %.sroa.01.0.i47.i.i.i.i, %bb.bh ], [ %.08.lcssa.i.i.i28.i, %bb.bb ]
  call void @_ZdlPvm(ptr noundef nonnull %i.mn, i64 noundef 12) #25
  %.pre.i.i.i = load ptr, ptr %i.oi, align 8, !tbaa !109 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i.i, label %.critedge370.thread, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i.i.i
  %18 = load ptr, ptr %i.ok, align 8, !tbaa !110
  %19 = ptrtoint ptr %18 to i64
  %20 = ptrtoint ptr %.pre.i.i.i to i64
  %21 = sub i64 %19, %20
  call void @_ZdlPvm(ptr noundef nonnull %.pre.i.i.i, i64 noundef %21) #25
  br label %.critedge370.thread

.critedge370.thread:                              ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i.i.i, %bb.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.of, i64 noundef 120) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

.critedge370:                                     ; preds = %.thread.i.i.i, %bb.bj
  %22 = phi i1 [ %i.qt, %bb.bj ], [ true, %.thread.i.i.i ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %22, ptr noundef nonnull %i.of, ptr noundef nonnull %.sroa.12.2.i21.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #23
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %24 = load i64, ptr %23, align 8, !tbaa !100
  %25 = add i64 %24, 1
  store i64 %25, ptr %23, align 8, !tbaa !100
  %.pre721 = load ptr, ptr %i.mm, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i.i492 = icmp eq ptr %.pre721, null
  br i1 %.not.i.i.i.i492, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %.critedge370.thread855

.critedge370.thread855:                           ; preds = %bb.ao, %.critedge370
  %.sroa.026.0.i858 = phi ptr [ %i.of, %.critedge370 ], [ %.19.i.i.i.i, %bb.ao ]
  %26 = phi ptr [ %.pre721, %.critedge370 ], [ %i.mn, %bb.ao ] ; 2 uses
  %i.qu = load ptr, ptr %i.mt, align 8, !tbaa !106
  %i.qv = ptrtoint ptr %i.qu to i64
  %i.qw = ptrtoint ptr %26 to i64
  %i.qx = sub i64 %i.qv, %i.qw
  call void @_ZdlPvm(ptr noundef nonnull %26, i64 noundef %i.qx) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %.critedge370.thread, %.critedge370.thread855, %.critedge370
  %.sroa.026.0.i854 = phi ptr [ %.sroa.012.0.ph.i.i.i, %.critedge370.thread ], [ %.sroa.026.0.i858, %.critedge370.thread855 ], [ %i.of, %.critedge370 ]
  %27 = load ptr, ptr %i.ml, align 8, !tbaa !109  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %27, null
  br i1 %.not.i.i.i1.i, label %_ZN12_GLOBAL__N_18GridInfoD2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %28 = getelementptr inbounds nuw i8, ptr %16, i64 32
  %29 = load ptr, ptr %28, align 8, !tbaa !110
  %30 = ptrtoint ptr %29 to i64
  %31 = ptrtoint ptr %27 to i64
  %32 = sub i64 %30, %31
  call void @_ZdlPvm(ptr noundef nonnull %27, i64 noundef %32) #25
  br label %_ZN12_GLOBAL__N_18GridInfoD2Ev.exit

_ZN12_GLOBAL__N_18GridInfoD2Ev.exit:              ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.qy = load ptr, ptr %14, align 8, !tbaa !60   ; 2 uses
  %i.qz = icmp eq ptr %i.qy, %i.kk
  br i1 %i.qz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit496, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i494

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i494: ; preds = %_ZN12_GLOBAL__N_18GridInfoD2Ev.exit
  %i.ra = load i64, ptr %i.kk, align 8, !tbaa !50
  %i.rb = add i64 %i.ra, 1
  call void @_ZdlPvm(ptr noundef %i.qy, i64 noundef %i.rb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit496

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit496: ; preds = %_ZN12_GLOBAL__N_18GridInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i494
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.bq

bb.bm:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit485.thread
  %i.rc = load ptr, ptr %14, align 8, !tbaa !60   ; 2 uses
  %i.rd = icmp eq ptr %i.rc, %i.kk
  br i1 %i.rd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i497

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i497: ; preds = %bb.bm
  %i.re = load i64, ptr %i.kk, align 8, !tbaa !50
  %i.rf = add i64 %i.re, 1
  call void @_ZdlPvm(ptr noundef %i.rc, i64 noundef %i.rf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i497
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %.critedge364

bb.bn:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i, %.critedge.i
  %i.rg = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN12_GLOBAL__N_18GridInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %16) #23
  br label %.body

.body:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %bb.bn
  %.pn341.pn = phi { ptr, i32 } [ %i.rg, %bb.bn ], [ %i.mo, %_ZNSt6vectorIfSaIfEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.bo

bb.bo:                                            ; preds = %.body, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480
  %.pn344 = phi { ptr, i32 } [ %i.lv, %bb.aj ], [ %.pn341.pn, %.body ], [ %.pn339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480 ]
  %i.rh = load ptr, ptr %14, align 8, !tbaa !60   ; 2 uses
  %i.ri = icmp eq ptr %i.rh, %i.kk
  br i1 %i.ri, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit502, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i500

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i500: ; preds = %bb.bo
  %i.rj = load i64, ptr %i.kk, align 8, !tbaa !50
  %i.rk = add i64 %i.rj, 1
  call void @_ZdlPvm(ptr noundef %i.rh, i64 noundef %i.rk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit502

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit502: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i500
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.bp

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit502, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459
  %.pn344.pn = phi { ptr, i32 } [ %.pn344, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit502 ], [ %.pn335.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459 ]
  resume { ptr, i32 } %.pn344.pn

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit496, %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit
  %.sroa.0554.0 = phi ptr [ %.sroa.026.0.i854, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit496 ], [ %.19.i.i.i, %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit ] ; 24 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.sroa.0554.0, i64 40
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !179 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %.sroa.0554.0, i64 44
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !180 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.0554.0, i64 48
  %i.rq = load i32, ptr %i.rp, align 8, !tbaa !181
  store i32 %i.rq, ptr %i.c, align 4, !tbaa !189
  %i.rr = getelementptr inbounds nuw i8, ptr %.sroa.0554.0, i64 53
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !186, !range !57, !noundef !58 ; 2 uses
  %i.rt = trunc nuw i8 %i.rs to i1
  %i.ru = xor i8 %i.rs, 1
  store i8 %i.ru, ptr %7, align 1, !tbaa !55
  %i.rv = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.rw = load double, ptr %i.rv, align 8, !tbaa !112
  %i.rx = fsub double %4, %i.rw
  %i.ry = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.rz = load double, ptr %i.ry, align 8, !tbaa !192
  %i.sa = fdiv double %i.rx, %i.rz                ; 3 uses
  %i.sb = fcmp uno double %i.sa, 0.000000e+00
  br i1 %i.sb, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.sc = call double @llvm.floor.f64(double %i.sa)
  %i.sd = call i64 @lround(double noundef %i.sc) #23
  %i.se = trunc i64 %i.sd to i32
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br
  %i.sf = phi i32 [ %i.se, %bb.br ], [ 0, %bb.bq ] ; 6 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.sh = load double, ptr %i.sg, align 8, !tbaa !193
  %i.si = fsub double %5, %i.sh
  %i.sj = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.sk = load double, ptr %i.sj, align 8, !tbaa !194
  %i.sl = fdiv double %i.si, %i.sk                ; 3 uses
  %i.sm = fcmp uno double %i.sl, 0.000000e+00
  br i1 %i.sm, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.sn = call double @llvm.floor.f64(double %i.sl)
  %i.so = call i64 @lround(double noundef %i.sn) #23
  %i.sp = trunc i64 %i.so to i32
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt
  %i.sq = phi i32 [ %i.sp, %bb.bt ], [ 0, %bb.bs ] ; 6 uses
  %i.sr = sitofp i32 %i.sf to double
  %i.ss = fsub double %i.sa, %i.sr                ; 3 uses
  %i.st = sitofp i32 %i.sq to double
  %i.su = fsub double %i.sl, %i.st                ; 3 uses
  %i.sv = icmp slt i32 %i.sf, 0
  br i1 %i.sv, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.sw = icmp eq i32 %i.sf, -1
  %i.sx = fcmp ogt double %i.ss, 9.999000e-01
  %or.cond19 = and i1 %i.sw, %i.sx
  br i1 %or.cond19, label %bb.bz, label %bb.dn

bb.bw:                                            ; preds = %bb.bu
  %i.sy = add nuw nsw i32 %i.sf, 1                ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ta = load i32, ptr %i.sz, align 8, !tbaa !184 ; 2 uses
  %.not347 = icmp slt i32 %i.sy, %i.ta
  br i1 %.not347, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.tb = icmp eq i32 %i.sy, %i.ta
  %i.tc = fcmp olt double %i.ss, 1.000000e-04
  %or.cond22 = and i1 %i.tc, %i.tb
  br i1 %or.cond22, label %bb.by, label %bb.dn

bb.by:                                            ; preds = %bb.bx
  %i.td = add nsw i32 %i.sf, -1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bv, %bb.bw, %bb.by
  %.sroa.0509.0 = phi i32 [ %i.td, %bb.by ], [ %i.sf, %bb.bw ], [ 0, %bb.bv ] ; 10 uses
  %.sroa.0.0 = phi double [ 1.000000e+00, %bb.by ], [ %i.ss, %bb.bw ], [ 0.000000e+00, %bb.bv ] ; 6 uses
  %i.te = icmp slt i32 %i.sq, 0
  br i1 %i.te, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.tf = icmp eq i32 %i.sq, -1
  %i.tg = fcmp ogt double %i.su, 9.999000e-01
  %or.cond25 = select i1 %i.tf, i1 %i.tg, i1 false
  br i1 %or.cond25, label %bb.ce, label %bb.dn

bb.cb:                                            ; preds = %bb.bz
  %i.th = add nuw nsw i32 %i.sq, 1                ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !185 ; 2 uses
  %.not348 = icmp slt i32 %i.th, %i.tj
  br i1 %.not348, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.tk = icmp eq i32 %i.th, %i.tj
  %i.tl = fcmp olt double %i.su, 1.000000e-04
  %or.cond28 = select i1 %i.tk, i1 %i.tl, i1 false
  br i1 %or.cond28, label %bb.cd, label %bb.dn

bb.cd:                                            ; preds = %bb.cc
  %i.tm = add nsw i32 %i.sq, -1
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ca, %bb.cb, %bb.cd
  %.sroa.22.0 = phi i32 [ %i.tm, %bb.cd ], [ %i.sq, %bb.cb ], [ 0, %bb.ca ] ; 10 uses
  %.sroa.18.0 = phi double [ 1.000000e+00, %bb.cd ], [ %i.su, %bb.cb ], [ 0.000000e+00, %bb.ca ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i8 0, ptr %i.d, align 1, !tbaa !55
  br i1 %i.rt, label %bb.cf, label %bb.cr

bb.cf:                                            ; preds = %bb.ce
  %i.tn = fsub double 1.000000e+00, %.sroa.0.0    ; 2 uses
  %i.to = fmul double %.sroa.0.0, %.sroa.18.0     ; 4 uses
  %i.tp = fmul double %i.tn, %.sroa.18.0          ; 4 uses
  %i.tq = fsub double 1.000000e+00, %.sroa.18.0   ; 2 uses
  %i.tr = fmul double %i.tn, %i.tq                ; 4 uses
  %i.ts = fmul double %.sroa.0.0, %i.tq           ; 4 uses
  %i.tt = icmp sgt i32 %i.rm, -1
  %i.tu = icmp sgt i32 %i.ro, -1
  %or.cond30 = select i1 %i.tt, i1 %i.tu, i1 false
  br i1 %or.cond30, label %bb.cg, label %bb.cm

bb.cg:                                            ; preds = %bb.cf
  %i.tv = getelementptr inbounds nuw i8, ptr %.sroa.0554.0, i64 112 ; 2 uses
  %.val386 = load i32, ptr %i.tv, align 8, !tbaa !170
  %i.tw = getelementptr i8, ptr %.sroa.0554.0, i64 116
  %.val387 = load i32, ptr %i.tw, align 4
  %.not.i = icmp ne i32 %.val386, %.sroa.0509.0
  %i.tx = icmp ne i32 %.val387, %.sroa.22.0
  %i.ty = select i1 %.not.i, i1 true, i1 %i.tx
  %.pre725 = load i32, ptr %i.c, align 4, !tbaa !189 ; 2 uses
  br i1 %i.ty, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.tz = icmp sgt i32 %.pre725, -1
  %i.ua = select i1 %i.tz, i32 3, i32 2
  %i.ub = getelementptr inbounds nuw i8, ptr %.sroa.0554.0, i64 88
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !105
  %i.ud = getelementptr inbounds nuw i8, ptr %.sroa.0554.0, i64 56
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !109
  %i.uf = load ptr, ptr %6, align 8, !tbaa !84
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 80
  %i.uh = load ptr, ptr %i.ug, align 8
  %i.ui = call noundef zeroext i1 %i.uh(ptr noundef nonnull align 8 dereferenceable(144) %6, i32 noundef %.sroa.0509.0, i32 noundef %.sroa.22.0, i32 noundef 2, i32 noundef 2, i32 noundef %i.ua, ptr noundef %i.uc, ptr noundef %i.ue, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  %.not = xor i1 %i.ui, true
  %i.uj = load i8, ptr %i.d, align 1, !range !57
  %i.uk = trunc nuw i8 %i.uj to i1
  %or.cond32 = select i1 %.not, i1 true, i1 %i.uk
  br i1 %or.cond32, label %.critedge366, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %.sroa.22.0.insert.ext541 = zext i32 %.sroa.22.0 to i64
  %.sroa.22.0.insert.shift542 = shl nuw i64 %.sroa.22.0.insert.ext541, 32
  %.sroa.0509.0.insert.ext527 = zext i32 %.sroa.0509.0 to i64
  %.sroa.0509.0.insert.insert529 = or disjoint i64 %.sroa.22.0.insert.shift542, %.sroa.0509.0.insert.ext527
  store i64 %.sroa.0509.0.insert.insert529, ptr %i.tv, align 8, !tbaa !189
  %.pre724 = load i32, ptr %i.c, align 4, !tbaa !189
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.cg
  %i.ul = phi i32 [ %.pre724, %bb.ci ], [ %.pre725, %bb.cg ]
  %i.um = icmp sgt i32 %i.ul, -1
  %i.un = getelementptr inbounds nuw i8, ptr %.sroa.0554.0, i64 56
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !109 ; 12 uses
  %i.up = load float, ptr %i.uo, align 4, !tbaa !196
  %i.uq = fpext float %i.up to double             ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uo, i64 4 ; 2 uses
  br i1 %i.um, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.us = getelementptr inbounds nuw i8, ptr %i.uo, i64 12
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uo, i64 24
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uo, i64 36
  %i.uv = load float, ptr %i.ur, align 4, !tbaa !196
  %i.uw = fpext float %i.uv to double
  %i.ux = load <2 x float>, ptr %i.us, align 4, !tbaa !196
  %i.uy = fpext <2 x float> %i.ux to <2 x double>
  %i.uz = insertelement <2 x double> poison, double %i.ts, i64 0
  %i.va = shufflevector <2 x double> %i.uz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vb = fmul <2 x double> %i.va, %i.uy
  %i.vc = insertelement <2 x double> poison, double %i.tr, i64 0
  %i.vd = shufflevector <2 x double> %i.vc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ve = insertelement <2 x double> poison, double %i.uq, i64 0
  %i.vf = insertelement <2 x double> %i.ve, double %i.uw, i64 1
  %i.vg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vd, <2 x double> %i.vf, <2 x double> %i.vb)
  %i.vh = load <2 x float>, ptr %i.ut, align 4, !tbaa !196
  %i.vi = fpext <2 x float> %i.vh to <2 x double>
  %i.vj = insertelement <2 x double> poison, double %i.tp, i64 0
  %i.vk = shufflevector <2 x double> %i.vj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vk, <2 x double> %i.vi, <2 x double> %i.vg)
  %i.vm = load <2 x float>, ptr %i.uu, align 4, !tbaa !196
  %i.vn = fpext <2 x float> %i.vm to <2 x double>
  %i.vo = insertelement <2 x double> poison, double %i.to, i64 0
  %i.vp = shufflevector <2 x double> %i.vo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vp, <2 x double> %i.vn, <2 x double> %i.vl) ; 2 uses
  store <2 x double> %i.vq, ptr %0, align 8, !tbaa !86
  %i.vr = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
end_hunk_1
