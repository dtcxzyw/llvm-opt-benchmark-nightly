Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/gridshift?download=true
inline.NumInlined: 813
inline.NumDeleted: 372
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12_GLOBAL__N_113gridshiftData19grid_apply_internalEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb6PJ_XYZ12PJ_DIRECTIONPKN5osgeo4proj16GenericShiftGridEPNSE_19GenericShiftGridSetERb:bb.a
  %.085 = phi ptr [ %.287, %bb.ac ], [ %i.d, %.preheader ] ; 5 uses
  %.082 = phi ptr [ %.183, %bb.ac ], [ %8, %.preheader ] ; 3 uses
  %.055 = phi i32 [ %i.dt, %bb.ac ], [ 10, %.preheader ]
  %.0 = phi ptr [ %.2, %bb.ac ], [ %7, %.preheader ] ; 6 uses
  %i.bj = phi <2 x double> [ %i.dr, %bb.ac ], [ %i.bf, %.preheader ] ; 12 uses
  %i.bk = phi <2 x double> [ %i.ds, %bb.ac ], [ %i.bc, %.preheader ] ; 2 uses
  %i.bl = extractelement <2 x double> %i.bj, i64 0 ; 2 uses
  %i.bm = extractelement <2 x double> %i.bj, i64 1 ; 2 uses
  call fastcc void @_ZN12_GLOBAL__N_113gridshiftData16grid_interpolateEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE5PJ_XYPKN5osgeo4proj16GenericShiftGridERb(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, double %i.bl, double %i.bm, ptr noundef %.0, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.bn = load ptr, ptr %.0, align 8, !tbaa !107
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = tail call noundef zeroext i1 %i.bp(ptr noundef nonnull align 8 dereferenceable(120) %.0)
  br i1 %i.bq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.br = load ptr, ptr %.082, align 8, !tbaa !107
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = tail call noundef zeroext i1 %i.bt(ptr noundef nonnull align 8 dereferenceable(96) %.082, ptr noundef %2)
  %i.bv = zext i1 %i.bu to i8
  store i8 %i.bv, ptr %9, align 1, !tbaa !59
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double +inf, ptr %i.bw, align 8, !tbaa !118
  store <2 x double> splat (double +inf), ptr %0, align 8, !tbaa !115
  br label %.critedge63

bb.r:                                             ; preds = %bb.p
  %i.bx = load double, ptr %10, align 8, !tbaa !152 ; 2 uses
  %i.by = fcmp oeq double %i.bx, +inf             ; 2 uses
  br i1 %i.by, label %bb.s, label %bb.aa

bb.s:                                             ; preds = %bb.r
  %.val = load ptr, ptr %1, align 8, !tbaa !104   ; 2 uses
  %.val65 = load ptr, ptr %i.bi, align 8, !tbaa !104 ; 2 uses
  %.not1315.i = icmp eq ptr %.val, %.val65
  br i1 %.not1315.i, label %.critedge.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %bb.t
  %.sroa.05.016.i = phi ptr [ %i.cb, %bb.t ], [ %.val, %bb.s ] ; 3 uses
  %i.bz = load ptr, ptr %.sroa.05.016.i, align 8, !tbaa !105
  %i.ca = tail call noundef ptr @_ZNK5osgeo4proj19GenericShiftGridSet6gridAtERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdd(ptr noundef nonnull align 8 dereferenceable(96) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %3, double noundef %i.bl, double noundef %i.bm) ; 14 uses
  %.not.i = icmp eq ptr %i.ca, null
  br i1 %.not.i, label %bb.t, label %_ZNK12_GLOBAL__N_113gridshiftData8findGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK6PJ_XYZRPN5osgeo4proj19GenericShiftGridSetE.exit

bb.t:                                             ; preds = %.lr.ph.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.05.016.i, i64 8 ; 2 uses
  %.not13.i = icmp eq ptr %i.cb, %.val65
  br i1 %.not13.i, label %.critedge.thread, label %.lr.ph.i

_ZNK12_GLOBAL__N_113gridshiftData8findGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK6PJ_XYZRPN5osgeo4proj19GenericShiftGridSetE.exit: ; preds = %.lr.ph.i
  %i.cc = load ptr, ptr %.sroa.05.016.i, align 8, !tbaa !105 ; 4 uses
  %i.cd = icmp eq ptr %i.ca, %.0
  br i1 %i.cd, label %.critedge.thread, label %bb.u

bb.u:                                             ; preds = %_ZNK12_GLOBAL__N_113gridshiftData8findGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK6PJ_XYZRPN5osgeo4proj19GenericShiftGridSetE.exit
  %i.ce = load ptr, ptr %i.ca, align 8, !tbaa !107
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = tail call noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(120) %i.ca)
  br i1 %i.ch, label %.critedge.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !83
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !83
  tail call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %2, i32 noundef 3, ptr noundef nonnull @.str.21, ptr noundef %i.cj, ptr noundef %i.cl)
  %i.cm = load <2 x double>, ptr %5, align 8, !tbaa !115 ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 48 ; 5 uses
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !129, !range !80, !noundef !81
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 88
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !156
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ca, i64 96
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !157
  %i.cu = fadd double %i.cr, %i.ct
  %i.cv = fmul double %i.cu, 1.000000e-05         ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !158
  %i.cy = fsub double %i.cx, %i.cv
  %i.cz = extractelement <2 x double> %i.cm, i64 0 ; 2 uses
  %i.da = fcmp olt double %i.cz, %i.cy
  br i1 %i.da, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.db = fadd <2 x double> %i.cm, <double f0x401921FB54442D18, double -0.000000e+00>
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !159
  %i.de = fadd double %i.cv, %i.dd
  %i.df = fcmp ogt double %i.cz, %i.de
  br i1 %i.df, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.dg = fadd <2 x double> %i.cm, <double f0xC01921FB54442D18, double -0.000000e+00>
  br label %bb.ab

bb.aa:                                            ; preds = %bb.r
  %i.dh = load double, ptr %i.az, align 8, !tbaa !161
  %i.di = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.dj = insertelement <2 x double> %i.di, double %i.dh, i64 1
  %i.dk = fadd <2 x double> %i.bj, %i.dj
  %i.dl = fsub <2 x double> %i.dk, %i.bk          ; 4 uses
  %i.dm = fsub <2 x double> %i.bj, %i.dl
  %foldExtExtBinop = fmul <2 x double> %i.dl, %i.dl
  %i.dn = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.do = extractelement <2 x double> %i.dl, i64 0 ; 2 uses
  %i.dp = tail call double @llvm.fmuladd.f64(double %i.do, double %i.do, double %i.dn)
  %i.dq = fcmp ogt double %i.dp, f0x3AF357C299A88EA7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.v, %bb.x, %bb.y, %bb.z, %bb.aa
  %.287 = phi ptr [ %.085, %bb.aa ], [ %i.cn, %bb.z ], [ %i.cn, %bb.y ], [ %i.cn, %bb.x ], [ %i.cn, %bb.v ] ; 3 uses
  %.183 = phi ptr [ %.082, %bb.aa ], [ %i.cc, %bb.z ], [ %i.cc, %bb.y ], [ %i.cc, %bb.x ], [ %i.cc, %bb.v ]
  %.sroa.06.2 = phi i1 [ %i.dq, %bb.aa ], [ true, %bb.z ], [ true, %bb.y ], [ true, %bb.x ], [ true, %bb.v ]
  %.2 = phi ptr [ %.0, %bb.aa ], [ %i.ca, %bb.z ], [ %i.ca, %bb.y ], [ %i.ca, %bb.x ], [ %i.ca, %bb.v ]
  %i.dr = phi <2 x double> [ %i.dm, %bb.aa ], [ %i.bj, %bb.z ], [ %i.bj, %bb.y ], [ %i.bj, %bb.x ], [ %i.bj, %bb.v ] ; 3 uses
  %i.ds = phi <2 x double> [ %i.bk, %bb.aa ], [ %i.dg, %bb.z ], [ %i.cm, %bb.y ], [ %i.db, %bb.x ], [ %i.cm, %bb.v ]
  %i.dt = add nsw i32 %.055, -1                   ; 2 uses
  %.not = icmp eq i32 %i.dt, 0
  br i1 %.not, label %.critedge64, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %.sroa.06.2, label %bb.p, label %.critedge, !llvm.loop !162

.critedge64:                                      ; preds = %bb.ab
  tail call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %2, i32 noundef 3, ptr noundef nonnull @.str.22)
  tail call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %2, i32 noundef 2054)
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double +inf, ptr %i.du, align 8, !tbaa !118
  store <2 x double> splat (double +inf), ptr %0, align 8, !tbaa !115
  br label %.critedge63

.critedge:                                        ; preds = %bb.ac
  br i1 %i.by, label %.critedge.thread, label %bb.ad

.critedge.thread:                                 ; preds = %_ZNK12_GLOBAL__N_113gridshiftData8findGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK6PJ_XYZRPN5osgeo4proj19GenericShiftGridSetE.exit, %bb.u, %bb.s, %bb.t, %.critedge
  %.3102 = phi ptr [ %.287, %.critedge ], [ %.085, %bb.t ], [ %.085, %bb.s ], [ %.085, %bb.u ], [ %.085, %_ZNK12_GLOBAL__N_113gridshiftData8findGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK6PJ_XYZRPN5osgeo4proj19GenericShiftGridSetE.exit ]
  %i.dv = phi <2 x double> [ %i.dr, %.critedge ], [ %i.bj, %bb.t ], [ %i.bj, %bb.s ], [ %i.bj, %bb.u ], [ %i.bj, %_ZNK12_GLOBAL__N_113gridshiftData8findGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK6PJ_XYZRPN5osgeo4proj19GenericShiftGridSetE.exit ]
  tail call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %2, i32 noundef 3, ptr noundef nonnull @.str.23)
  br label %bb.ad

bb.ad:                                            ; preds = %.critedge.thread, %.critedge, %bb.o
  %.4 = phi ptr [ %i.d, %bb.o ], [ %.3102, %.critedge.thread ], [ %.287, %.critedge ]
  %i.dw = phi <2 x double> [ %i.bf, %bb.o ], [ %i.dv, %.critedge.thread ], [ %i.dr, %.critedge ] ; 2 uses
  %i.dx = load i8, ptr %.4, align 8, !tbaa !129, !range !80, !noundef !81
  %i.dy = trunc nuw i8 %i.dx to i1
  %i.dz = extractelement <2 x double> %i.dw, i64 0 ; 2 uses
  br i1 %i.dy, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ea = tail call noundef double @_Z6adjlond(double noundef %i.dz)
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.eb = phi double [ %i.ea, %bb.ae ], [ %i.dz, %bb.ad ]
  store double %i.eb, ptr %0, align 8, !tbaa !152
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ed = extractelement <2 x double> %i.dw, i64 1
  store double %i.ed, ptr %i.ec, align 8, !tbaa !161
  %i.ee = load double, ptr %.sroa.379.0..sroa_idx, align 8, !tbaa !118
  %i.ef = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !118
  %i.eh = fsub double %i.ee, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.eh, ptr %i.ei, align 8, !tbaa !118
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
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"struct.(anonymous namespace)::GridInfo", align 8 ; 20 uses
  %i.c = alloca i32, align 4                      ; 11 uses
  %i.d = alloca i8, align 1                       ; 11 uses
  store <2 x double> splat (double +inf), ptr %0, align 8, !tbaa !115
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !118
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.g = load i8, ptr %i.f, align 8, !tbaa !129, !range !80, !noundef !81 ; 2 uses
  %i.h = trunc nuw i8 %i.g to i1                  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %.val.i.i = load ptr, ptr %i.i, align 8, !tbaa !8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 10 uses
  %.not2.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not2.i.i.i, label %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.04.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %.val.i.i, %bb.a ] ; 3 uses
  %.083.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.j, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !122
  %i.m = icmp ult ptr %i.l, %6                    ; 2 uses
  %.19.i.i.i = select i1 %i.m, ptr %.083.i.i.i, ptr %.04.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.m, i64 24, i64 16
  %.1.in.i.i.i = getelementptr i8, ptr %.04.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPKN5osgeo4proj16GenericShiftGridESt4pairIKS4_N12_GLOBAL__N_18GridInfoEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS6_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !163

_ZNSt8_Rb_treeIPKN5osgeo4proj16GenericShiftGridESt4pairIKS4_N12_GLOBAL__N_18GridInfoEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS6_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.n = icmp eq ptr %.19.i.i.i, %i.j
  br i1 %i.n, label %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit.thread, label %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit

_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit: ; preds = %_ZNSt8_Rb_treeIPKN5osgeo4proj16GenericShiftGridESt4pairIKS4_N12_GLOBAL__N_18GridInfoEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS6_.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !122
  %i.q = icmp ult ptr %6, %i.p
  br i1 %i.q, label %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit.thread, label %bb.bt

_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit.thread: ; preds = %_ZNSt8_Rb_treeIPKN5osgeo4proj16GenericShiftGridESt4pairIKS4_N12_GLOBAL__N_18GridInfoEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS6_.exit.i.i, %bb.a, %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit
  %i.r = load ptr, ptr %6, align 8, !tbaa !107
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(144) %6) ; 3 uses
  %.not338662 = icmp sgt i32 %i.u, 0
  br i1 %.not338662, label %.lr.ph, label %._crit_edge._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587_crit_edge

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
  %i.ah = add nuw nsw i32 %.0312665, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ah, %i.u
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !164

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.0278667 = phi i8 [ 0, %.lr.ph ], [ %.2, %bb.b ] ; 12 uses
  %.0280666 = phi i32 [ -1, %.lr.ph ], [ %.2282, %bb.b ] ; 12 uses
  %.0312665 = phi i32 [ 0, %.lr.ph ], [ %i.ah, %bb.b ] ; 17 uses
  %.0313664 = phi i32 [ -1, %.lr.ph ], [ %.2315, %bb.b ] ; 14 uses
  %.0317663 = phi i32 [ -1, %.lr.ph ], [ %.2319, %bb.b ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.ai = load ptr, ptr %6, align 8, !tbaa !107
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(144) %6, i32 noundef %.0312665)
  %i.al = load i64, ptr %i.v, align 8, !tbaa !48  ; 2 uses
  br i1 %i.h, label %bb.d, label %.critedge353

bb.d:                                             ; preds = %bb.c
  switch i64 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit430.thread582 [
    i64 15, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 16, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit394
    i64 25, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit424
    i64 14, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit428
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.d
  %i.am = load ptr, ptr %8, align 8, !tbaa !83    ; 2 uses
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
  %i.aw = load ptr, ptr %6, align 8, !tbaa !107
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8
  invoke void %i.ay(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(144) %6, i32 noundef %.0312665)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.az = load i64, ptr %i.ac, align 8, !tbaa !48 ; 2 uses
  switch i64 %i.az, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread [
    i64 0, label %._crit_edge708
    i64 10, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  ]

._crit_edge708:                                   ; preds = %bb.e
  %.pre709 = load ptr, ptr %9, align 8, !tbaa !83
  br label %bb.h

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.e
  %i.ba = load ptr, ptr %9, align 8, !tbaa !83    ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 1
  %i.bc = xor i64 %i.bb, 8026370506261492321
  %i.bd = getelementptr i8, ptr %i.ba, i64 8
  %i.be = load i16, ptr %i.bd, align 1
  %i.bf = zext i16 %i.be to i64
  %i.bg = xor i64 %i.bf, 25710
  %i.bh = or i64 %i.bc, %i.bg
  %i.bi = icmp ne i64 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  %.not606.a = icmp eq i32 %i.bj, 0
  br i1 %.not606.a, label %bb.h, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

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
  %i.bm = load ptr, ptr %9, align 8, !tbaa !83    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.ad
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.bo = load i64, ptr %i.ad, align 8, !tbaa !49
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %._crit_edge708, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bq = phi ptr [ %.pre709, %._crit_edge708 ], [ %i.ba, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ] ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.ad
  br i1 %i.br, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i391, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i391: ; preds = %bb.h
  %i.bs = icmp samesign ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.bs)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390: ; preds = %bb.h
  %i.bt = load i64, ptr %i.ad, align 8, !tbaa !49
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i391, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit430.thread582

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.f ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bl, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.y

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit394: ; preds = %bb.d
  %i.bv = load ptr, ptr %8, align 8, !tbaa !83
  %i.bw = load i128, ptr %i.bv, align 1
  %i.bx = icmp ne i128 %i.bw, 154717210083841367507314652478555713388
  %i.by = zext i1 %i.bx to i32
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit394.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit426

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit394.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit394
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.ca = load ptr, ptr %6, align 8, !tbaa !107
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8
  invoke void %i.cc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(144) %6, i32 noundef %.0312665)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit394.thread
  %i.cd = load i64, ptr %i.aa, align 8, !tbaa !48 ; 2 uses
  switch i64 %i.cd, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit396.thread [
    i64 0, label %._crit_edge706
    i64 10, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit396
  ]

._crit_edge706:                                   ; preds = %bb.i
  %.pre707 = load ptr, ptr %10, align 8, !tbaa !83
  br label %bb.l

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit396: ; preds = %bb.i
  %i.ce = load ptr, ptr %10, align 8, !tbaa !83   ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_113gridshiftData16grid_interpolateEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE5PJ_XYPKN5osgeo4proj16GenericShiftGridERb:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit430.thread582
  %i.is = load i64, ptr %i.ag, align 8, !tbaa !49
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.it) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit430.thread582, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %cond5, label %bb.b, label %.critedge364

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit409, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn335.pn = phi { ptr, i32 } [ %.pn335, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit409 ], [ %.pn333, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419 ], [ %.pn331, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn329, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399 ]
  %i.iu = load ptr, ptr %8, align 8, !tbaa !83    ; 2 uses
  %i.iv = icmp eq ptr %i.iu, %i.ag
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457: ; preds = %bb.y
  %i.iw = load i64, ptr %i.ag, align 8, !tbaa !49
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.ix) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.bs

._crit_edge:                                      ; preds = %bb.b
  %i.iy = icmp ne i32 %i.u, 1
  %i.iz = icmp slt i32 %.2282, 0
  %or.cond = select i1 %i.iy, i1 %i.iz, i1 false
  %i.ja = icmp slt i32 %.2319, 0
  %or.cond12 = select i1 %or.cond, i1 %i.ja, i1 false
  br i1 %or.cond12, label %bb.z, label %._crit_edge._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587_crit_edge

._crit_edge._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587_crit_edge: ; preds = %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit.thread, %._crit_edge
  %.0278.lcssa806 = phi i8 [ %.2, %._crit_edge ], [ 0, %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit.thread ]
  %.0280.lcssa805 = phi i32 [ %.2282, %._crit_edge ], [ -1, %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit.thread ]
  %.0313.lcssa804.a = phi i32 [ %.2315, %._crit_edge ], [ -1, %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit.thread ]
  %.0317.lcssa802 = phi i32 [ %.2319, %._crit_edge ], [ -1, %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit.thread ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre715 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !48
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587

bb.z:                                             ; preds = %._crit_edge
  %i.jb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !48 ; 2 uses
  %i.jd = icmp eq i64 %i.jc, 17
  br i1 %i.jd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461: ; preds = %bb.z
  %i.je = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.jf = load i128, ptr %i.je, align 1
  %i.jg = xor i128 %i.jf, 92149117687625741372679619491912634184
  %i.jh = getelementptr i8, ptr %i.je, i64 16
  %i.ji = load i8, ptr %i.jh, align 1
  %i.jj = zext i8 %i.ji to i128
  %i.jk = xor i128 %i.jj, 84
  %i.jl = or i128 %i.jg, %i.jk
  %i.jm = icmp ne i128 %i.jl, 0
  %i.jn = zext i1 %i.jm to i32
  %i.jo = icmp eq i32 %i.jn, 0
  br i1 %i.jo, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461
  %. = zext nneg i8 %i.g to i32
  %not. = xor i1 %i.h, true
  %.362 = zext i1 %not. to i32
  %.3. = select i1 %i.h, i8 %.2, i8 1
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587: ; preds = %._crit_edge._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587_crit_edge, %bb.z
  %.0313.lcssa803 = phi i32 [ %.2315, %bb.z ], [ %.0313.lcssa804.a, %._crit_edge._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587_crit_edge ] ; 9 uses
  %i.jp = phi i64 [ %i.jc, %bb.z ], [ %.pre715, %._crit_edge._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587_crit_edge ] ; 5 uses
  %.4321 = phi i32 [ %.2319, %bb.z ], [ %.0317.lcssa802, %._crit_edge._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587_crit_edge ] ; 8 uses
  %.4284 = phi i32 [ %.2282, %bb.z ], [ %.0280.lcssa805, %._crit_edge._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587_crit_edge ] ; 8 uses
  %.4 = phi i8 [ %.2, %bb.z ], [ %.0278.lcssa806, %._crit_edge._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587_crit_edge ] ; 8 uses
  switch i64 %i.jp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471.thread592 [
    i64 17, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463
    i64 20, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit465
    i64 25, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit467_crit_edge
    i64 38, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit469_crit_edge
    i64 36, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471_crit_edge
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471_crit_edge: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587
  %.pre719.a = load ptr, ptr %3, align 8, !tbaa !83
  %bcmp.i470 = call i32 @bcmp(ptr %.pre719.a, ptr nonnull @.str.40, i64 %i.jp)
  %i.jq = icmp eq i32 %bcmp.i470, 0
  br i1 %i.jq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit467.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471.thread592

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit469_crit_edge: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587
  %.pre718.a = load ptr, ptr %3, align 8, !tbaa !83
  %bcmp.i468 = call i32 @bcmp(ptr %.pre718.a, ptr nonnull @.str.39, i64 %i.jp)
  %i.jr = icmp eq i32 %bcmp.i468, 0
  br i1 %i.jr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit467.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471.thread592

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit467_crit_edge: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587
  %.pre717.a = load ptr, ptr %3, align 8, !tbaa !83
  %bcmp.i466 = call i32 @bcmp(ptr %.pre717.a, ptr nonnull @.str.38, i64 %i.jp)
  %i.js = icmp eq i32 %bcmp.i466, 0
  br i1 %i.js, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit467.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471.thread592

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587
  %.4845.a = phi i8 [ %.4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587 ], [ %.2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461 ], [ %.3., %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread ] ; 2 uses
  %.4284830.a = phi i32 [ %.4284, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587 ], [ %.2282, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461 ], [ %.362, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread ] ; 2 uses
  %.4321821.a = phi i32 [ %.4321, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587 ], [ %.2319, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461 ], [ %., %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread ] ; 2 uses
  %.0313.lcssa803817 = phi i32 [ %.0313.lcssa803, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587 ], [ %.2315, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461 ], [ %.2315, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread ] ; 2 uses
  %i.jt = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.ju = load i128, ptr %i.jt, align 1
  %i.jv = xor i128 %i.ju, 92149117687625741372679619491912634184
  %i.jw = getelementptr i8, ptr %i.jt, i64 16
  %i.jx = load i8, ptr %i.jw, align 1
  %i.jy = zext i8 %i.jx to i128
  %i.jz = xor i128 %i.jy, 84
  %i.ka = or i128 %i.jv, %i.jz
  %i.kb = icmp ne i128 %i.ka, 0
  %i.kc = zext i1 %i.kb to i32
  %i.kd = icmp eq i32 %i.kc, 0
  br i1 %i.kd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471.thread592

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit465: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587
  %.pre716 = load ptr, ptr %3, align 8, !tbaa !83
  %bcmp.i464 = call i32 @bcmp(ptr %.pre716, ptr nonnull @.str.36, i64 %i.jp)
  %i.ke = icmp eq i32 %bcmp.i464, 0
  br i1 %i.ke, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471.thread592

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit465, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463
  %.4844 = phi i8 [ %.4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit465 ], [ %.4845.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463 ]
  %.4284829 = phi i32 [ %.4284, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit465 ], [ %.4284830.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463 ] ; 2 uses
  %.4321820 = phi i32 [ %.4321, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit465 ], [ %.4321821.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463 ] ; 2 uses
  %.0313.lcssa803816 = phi i32 [ %.0313.lcssa803, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit465 ], [ %.0313.lcssa803817, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463 ]
  %i.kf = icmp slt i32 %.4284829, 0
  %i.kg = icmp slt i32 %.4321820, 0
  %or.cond14 = select i1 %i.kf, i1 true, i1 %i.kg
  br i1 %or.cond14, label %bb.aa, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471.thread592

bb.aa:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463.thread
  call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.37)
  br label %.critedge364

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471.thread592: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit465, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit469_crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit467_crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471_crit_edge
  %.4846 = phi i8 [ %.4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471_crit_edge ], [ %.4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587 ], [ %.4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit465 ], [ %.4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit469_crit_edge ], [ %.4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit467_crit_edge ], [ %.4845.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463 ], [ %.4844, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463.thread ]
  %.4284836 = phi i32 [ %.4284, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471_crit_edge ], [ %.4284, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587 ], [ %.4284, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit465 ], [ %.4284, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit469_crit_edge ], [ %.4284, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit467_crit_edge ], [ %.4284830.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463 ], [ %.4284829, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463.thread ]
  %.4321827 = phi i32 [ %.4321, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471_crit_edge ], [ %.4321, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587 ], [ %.4321, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit465 ], [ %.4321, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit469_crit_edge ], [ %.4321, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit467_crit_edge ], [ %.4321821.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463 ], [ %.4321820, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463.thread ]
  %.0313.lcssa803818 = phi i32 [ %.0313.lcssa803, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471_crit_edge ], [ %.0313.lcssa803, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587 ], [ %.0313.lcssa803, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit465 ], [ %.0313.lcssa803, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit469_crit_edge ], [ %.0313.lcssa803, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit467_crit_edge ], [ %.0313.lcssa803817, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463 ], [ %.0313.lcssa803816, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463.thread ] ; 2 uses
  %i.kh = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.36)
  %i.ki = icmp slt i32 %.0313.lcssa803818, 0
  %or.cond53 = select i1 %i.kh, i1 %i.ki, i1 false
  br i1 %or.cond53, label %bb.ab, label %bb.ac

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit467.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471_crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit469_crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread587._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit467_crit_edge
  %.old52 = icmp slt i32 %.0313.lcssa803, 0
  br i1 %.old52, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471.thread592, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit467.thread
  call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.37)
  br label %.critedge364

bb.ac:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit467.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471.thread592
  %.4838 = phi i8 [ %.4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit467.thread ], [ %.4846, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471.thread592 ]
  %.4284831 = phi i32 [ %.4284, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit467.thread ], [ %.4284836, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471.thread592 ] ; 3 uses
  %.4321822 = phi i32 [ %.4321, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit467.thread ], [ %.4321827, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471.thread592 ] ; 3 uses
  %.0313.lcssa803819 = phi i32 [ %.0313.lcssa803, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit467.thread ], [ %.0313.lcssa803818, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit471.thread592 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.kk = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 9 uses
  store ptr %i.kk, ptr %14, align 8, !tbaa !47
  %i.kl = load ptr, ptr %i.kj, align 8, !tbaa !83 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.kn, ptr %i.b, align 8, !tbaa !82
  %i.ko = icmp ugt i64 %i.kn, 15
  br i1 %i.ko, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.ac
  %i.kp = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.kp, ptr %14, align 8, !tbaa !83
  %i.kq = load i64, ptr %i.b, align 8, !tbaa !82
  store i64 %i.kq, ptr %i.kk, align 8, !tbaa !49
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.ac
  %i.kr = phi ptr [ %i.kp, %.noexc.i ], [ %i.kk, %bb.ac ] ; 2 uses
  switch i64 %i.kn, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i
  %i.ks = load i8, ptr %i.kl, align 1, !tbaa !49
  store i8 %i.ks, ptr %i.kr, align 1, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.ae:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kr, ptr align 1 %i.kl, i64 %i.kn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.ad, %bb.ae
  %i.kt = load i64, ptr %i.b, align 8, !tbaa !82  ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store i64 %i.kt, ptr %i.ku, align 8, !tbaa !48
  %i.kv = load ptr, ptr %14, align 8, !tbaa !83
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.kt
  store i8 0, ptr %i.kw, align 1, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.kx = load i64, ptr %i.ku, align 8, !tbaa !48 ; 2 uses
  %i.ky = icmp eq i64 %i.kx, 0
  br i1 %i.ky, label %.noexc.i473, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

.noexc.i473:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.kz = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.kz, ptr %15, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 20, ptr %i.a, align 8, !tbaa !82
  %i.la = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.ag    ; 2 uses

.noexc:                                           ; preds = %.noexc.i473
  store ptr %i.la, ptr %15, align 8, !tbaa !83
  %i.lb = load i64, ptr %i.a, align 8, !tbaa !82  ; 3 uses
  store i64 %i.lb, ptr %i.kz, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.la, ptr noundef nonnull align 1 dereferenceable(20) @.str.41, i64 20, i1 false)
  %i.lc = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.lb, ptr %i.lc, align 8, !tbaa !48
  %i.ld = load ptr, ptr %15, align 8, !tbaa !83
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lb
  store i8 0, ptr %i.le, align 1, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.lf = load ptr, ptr %6, align 8, !tbaa !107
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8
  %i.li = invoke noundef nonnull align 8 dereferenceable(32) ptr %i.lh(ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef -1)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %.noexc
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.li)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.ah

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.af
  %i.lj = load ptr, ptr %15, align 8, !tbaa !83   ; 2 uses
  %i.lk = icmp eq ptr %i.lj, %i.kz
  br i1 %i.lk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i476, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ll = load i64, ptr %i.kz, align 8, !tbaa !49
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
  %i.lp = load ptr, ptr %15, align 8, !tbaa !83   ; 2 uses
  %i.lq = icmp eq ptr %i.lp, %i.kz
  br i1 %i.lq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i478

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i478: ; preds = %bb.ah
  %i.lr = load i64, ptr %i.kz, align 8, !tbaa !49
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %i.lp, i64 noundef %i.ls) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i478, %bb.ag
  %.pn339 = phi { ptr, i32 } [ %i.ln, %bb.ag ], [ %i.lo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i478 ], [ %i.lo, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.br

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i476: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %.pr = load i64, ptr %i.ku, align 8, !tbaa !48  ; 2 uses
  %i.lt = icmp eq i64 %.pr, 0
  br i1 %i.lt, label %bb.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i476
  %i.lu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.11, i64 noundef 8)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exitthread-pre-split unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %bb.ai, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit485.thread
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exitthread-pre-split: ; preds = %bb.ai
  %.pr594 = load i64, ptr %i.ku, align 8, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exitthread-pre-split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i476
  %i.lw = phi i64 [ %.pr594, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exitthread-pre-split ], [ %.pr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i476 ], [ %i.kx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  %17 = icmp eq i64 %i.lw, 8                      ; 2 uses
  br i1 %17, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit483, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit483.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit483: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.lx = load ptr, ptr %14, align 8, !tbaa !83   ; 2 uses
  %i.ly = load i64, ptr %i.lx, align 1
  %i.lz = icmp ne i64 %i.ly, 8241980317954238818
  %i.ma = zext i1 %i.lz to i32
  %.not599 = icmp eq i32 %i.ma, 0
  br i1 %.not599, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit483.thread595, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit485.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit483.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %18 = icmp eq i64 %i.lw, 11
  br i1 %18, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit485, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit485.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit485: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit483.thread
  %i.mb = load ptr, ptr %14, align 8, !tbaa !83   ; 3 uses
  %i.mc = load i64, ptr %i.mb, align 1
  %i.md = xor i64 %i.mc, 7021785138768996706
  %i.me = getelementptr i8, ptr %i.mb, i64 3
  %i.mf = load i64, ptr %i.me, align 1
  %i.mg = xor i64 %i.mf, 7163384644189315445
  %i.mh = or i64 %i.md, %i.mg
  %i.mi = icmp ne i64 %i.mh, 0
  %i.mj = zext i1 %i.mi to i32
  %.not600 = icmp eq i32 %i.mj, 0
  br i1 %.not600, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit483.thread595, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit485.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit485.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit483, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit483.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit485
  invoke void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.42)
          to label %bb.bn unwind label %bb.aj

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit483.thread595: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit485, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit483
  %19 = phi ptr [ %i.mb, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit485 ], [ %i.lx, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit483 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.mk = getelementptr inbounds nuw i8, ptr %16, i64 13
  %i.ml = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ml, i8 0, i64 25, i1 false)
  %i.mn = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #22
          to label %bb.ak unwind label %20        ; 9 uses

bb.ak:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit483.thread595
  %i.mo = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.mp = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.mq = getelementptr inbounds nuw i8, ptr %16, i64 4
  store ptr %i.mn, ptr %i.mm, align 8, !tbaa !142
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mn, i64 12 ; 4 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %16, i64 64 ; 2 uses
  store ptr %i.mr, ptr %i.ms, align 8, !tbaa !145
  store i32 -1, ptr %i.mn, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mn, i64 4 ; 2 uses
  store i32 -1, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mn, i64 8 ; 2 uses
  store i32 -1, ptr %.sroa.6.0..sroa_idx.i, align 4
  %i.mt = getelementptr inbounds nuw i8, ptr %16, i64 56
  store ptr %i.mr, ptr %i.mt, align 8, !tbaa !165
  %i.mu = getelementptr inbounds nuw i8, ptr %16, i64 72 ; 2 uses
  store i32 -1, ptr %i.mu, align 8, !tbaa !166
  %i.mv = getelementptr inbounds nuw i8, ptr %16, i64 76
  store i32 -1, ptr %i.mv, align 4, !tbaa !168
  store i32 %.4321822, ptr %16, align 8, !tbaa !169
  store i32 %.4284831, ptr %i.mq, align 4, !tbaa !177
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 38
  %i.mx = load i8, ptr %i.mw, align 2, !tbaa !112, !range !80, !noundef !81
  %i.my = trunc nuw i8 %i.mx to i1
  %i.mz = select i1 %i.my, i32 -1, i32 %.0313.lcssa803819
  store i32 %i.mz, ptr %i.mp, align 8, !tbaa !178
  store i8 %.4838, ptr %i.mo, align 4, !tbaa !179
  br i1 %17, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit488, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit488.thread597

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit488: ; preds = %bb.ak
  %i.na = load i64, ptr %19, align 1
  %i.nb = icmp ne i64 %i.na, 8241980317954238818
  %i.nc = zext i1 %i.nb to i32
  %i.nd = icmp eq i32 %i.nc, 0
  br i1 %i.nd, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit488.thread597

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit488.thread597: ; preds = %bb.ak, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit488
  %i.ne = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.nf = load i32, ptr %i.ne, align 8, !tbaa !180
  %i.ng = icmp slt i32 %i.nf, 3
  br i1 %i.ng, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit488.thread597
  %i.nh = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !182
  %i.nj = icmp slt i32 %i.ni, 3
  %i.nk = zext i1 %i.nj to i8
  br label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.al, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit488.thread597, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit488
  %i.nl = phi i8 [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit488.thread597 ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit488 ], [ %i.nk, %bb.al ]
  store i8 %i.nl, ptr %i.mk, align 1, !tbaa !183
  %i.nm = invoke noalias noundef nonnull dereferenceable(108) ptr @_Znwm(i64 noundef 108) #22
          to label %_ZNSt6vectorIfSaIfEE6resizeEm.exit unwind label %bb.an ; 4 uses

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  %i.nn = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.no = getelementptr inbounds nuw i8, ptr %16, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(108) %i.nm, i8 0, i64 108, i1 false)
  store ptr %i.nm, ptr %i.ml, align 8, !tbaa !146
  %i.np = getelementptr inbounds nuw i8, ptr %i.nm, i64 108 ; 4 uses
  store ptr %i.np, ptr %i.no, align 8, !tbaa !184
  store ptr %i.np, ptr %i.nn, align 8, !tbaa !149
  %i.nq = icmp eq i32 %.4321822, 1
  %i.nr = icmp eq i32 %.4284831, 0
  %or.cond16 = select i1 %i.nq, i1 %i.nr, i1 false
  br i1 %or.cond16, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.ns = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i8 1, ptr %i.ns, align 8, !tbaa !185
  br label %bb.ao

20:                                               ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit483.thread595
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.an:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  %i.nt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.ao:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit, %bb.am
  %i.nu = phi i8 [ 1, %bb.am ], [ 0, %_ZNSt6vectorIfSaIfEE6resizeEm.exit ]
  %storemerge601 = phi i32 [ 0, %bb.am ], [ %.4321822, %_ZNSt6vectorIfSaIfEE6resizeEm.exit ]
  %storemerge = phi i32 [ 1, %bb.am ], [ %.4284831, %_ZNSt6vectorIfSaIfEE6resizeEm.exit ]
  store i32 %storemerge601, ptr %i.mn, align 4, !tbaa !186
  store i32 %storemerge, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !186
  store i32 %.0313.lcssa803819, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !186
  %.val.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !8 ; 5 uses
  %.not2.i.i.i.i = icmp eq ptr %.val.i.i.i, null  ; 4 uses
  br i1 %.not2.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ao, %.lr.ph.i.i.i.i
  %.04.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.val.i.i.i, %bb.ao ] ; 3 uses
  %.083.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.j, %bb.ao ]
  %i.nv = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 32
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !122
  %i.nx = icmp ult ptr %i.nw, %6                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.nx, ptr %.083.i.i.i.i, ptr %.04.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.nx, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr i8, ptr %.04.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE11lower_boundERSA_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !163

_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE11lower_boundERSA_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.ny = icmp eq ptr %.19.i.i.i.i, %i.j
  br i1 %i.ny, label %.critedge.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE11lower_boundERSA_.exit.i
  %i.nz = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !187
  %i.ob = icmp ult ptr %6, %i.oa
  br i1 %i.ob, label %.critedge.i, label %.critedge370.thread854

.critedge.i:                                      ; preds = %bb.ap, %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE11lower_boundERSA_.exit.i, %bb.ao
  %i.oc = phi i1 [ false, %bb.ap ], [ true, %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE11lower_boundERSA_.exit.i ], [ true, %bb.ao ]
  %.08.lcssa.i.i.i29.i = phi ptr [ %.19.i.i.i.i, %bb.ap ], [ %.19.i.i.i.i, %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE11lower_boundERSA_.exit.i ], [ %i.j, %bb.ao ] ; 10 uses
  %i.od = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #22
          to label %.noexc491 unwind label %bb.bo ; 14 uses

.noexc491:                                        ; preds = %.critedge.i
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 32
  store ptr %6, ptr %i.oe, align 8, !tbaa !187
  %i.of = getelementptr inbounds nuw i8, ptr %i.od, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.of, ptr noundef nonnull align 8 dereferenceable(80) %16, i64 14, i1 false)
  %i.og = getelementptr inbounds nuw i8, ptr %i.od, i64 56 ; 2 uses
  store ptr %i.nm, ptr %i.og, align 8, !tbaa !146
  %i.oh = getelementptr inbounds nuw i8, ptr %i.od, i64 64
  store ptr %i.np, ptr %i.oh, align 8, !tbaa !184
  %i.oi = getelementptr inbounds nuw i8, ptr %i.od, i64 72 ; 2 uses
  store ptr %i.np, ptr %i.oi, align 8, !tbaa !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ml, i8 0, i64 24, i1 false)
  %i.oj = getelementptr inbounds nuw i8, ptr %i.od, i64 80
  store i8 %i.nu, ptr %i.oj, align 8, !tbaa !185
  %i.ok = getelementptr inbounds nuw i8, ptr %i.od, i64 88
  store ptr %i.mn, ptr %i.ok, align 8, !tbaa !142
  %i.ol = getelementptr inbounds nuw i8, ptr %i.od, i64 96
  store ptr %i.mr, ptr %i.ol, align 8, !tbaa !165
  %i.om = getelementptr inbounds nuw i8, ptr %i.od, i64 104
  store ptr %i.mr, ptr %i.om, align 8, !tbaa !145
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mm, i8 0, i64 24, i1 false)
  %i.on = getelementptr inbounds nuw i8, ptr %i.od, i64 112
  %i.oo = load i64, ptr %i.mu, align 8
  store i64 %i.oo, ptr %i.on, align 8
  br i1 %i.oc, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %.noexc491
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val12.i.i.i.i = load i64, ptr %i.op, align 8, !tbaa !138
  %.not.i.i.i21.i = icmp eq i64 %.val12.i.i.i.i, 0
  br i1 %.not.i.i.i21.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !84 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 32
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !122
  %i.ou = icmp ult ptr %i.ot, %6
  br i1 %i.ou, label %.thread.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  br i1 %.not2.i.i.i.i, label %._crit_edge.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.as, %.lr.ph.i.i.i.i.i
  %.01115.i.i.i.i.i = phi ptr [ %.011.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.val.i.i.i, %bb.as ] ; 5 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.01115.i.i.i.i.i, i64 32
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !122 ; 2 uses
  %i.ox = icmp ult ptr %6, %i.ow                  ; 2 uses
  %.in.v.i.i.i.i.i = select i1 %i.ox, i64 16, i64 24
  %.in.i.i.i.i.i = getelementptr i8, ptr %.01115.i.i.i.i.i, i64 %.in.v.i.i.i.i.i
  %.011.i.i.i.i.i = load ptr, ptr %.in.i.i.i.i.i, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.011.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !189

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.ox, label %._crit_edge.thread.i.i.i.i.i, label %bb.au

._crit_edge.thread.i.i.i.i.i:                     ; preds = %._crit_edge.i.i.i.i.i, %bb.as
  %.010.lcssa20.i.i.i.i.i = phi ptr [ %.01115.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.j, %bb.as ] ; 4 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val9.i.i.i.i.i = load ptr, ptr %i.oy, align 8, !tbaa !50
  %i.oz = icmp eq ptr %.010.lcssa20.i.i.i.i.i, %.val9.i.i.i.i.i
  br i1 %i.oz, label %.thread.i.i.i, label %bb.at

bb.at:                                            ; preds = %._crit_edge.thread.i.i.i.i.i
  %i.pa = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.010.lcssa20.i.i.i.i.i) #26 ; 2 uses
  %.phi.trans.insert31.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pa, i64 32
  %.pre32.i.i.i.i = load ptr, ptr %.phi.trans.insert31.i.i.i.i, align 8, !tbaa !122
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %._crit_edge.i.i.i.i.i
  %i.pb = phi ptr [ %.pre32.i.i.i.i, %bb.at ], [ %i.ow, %._crit_edge.i.i.i.i.i ]
  %.010.lcssa19.i.i.i.i.i = phi ptr [ %.010.lcssa20.i.i.i.i.i, %bb.at ], [ %.01115.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %.sroa.01.0.i.i.i.i.i = phi ptr [ %i.pa, %bb.at ], [ %.01115.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %i.pc = icmp ult ptr %i.pb, %6
  br i1 %i.pc, label %.thread.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i.i.i

bb.av:                                            ; preds = %.noexc491
  %i.pd = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i29.i, i64 32
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !122 ; 2 uses
  %i.pf = icmp ult ptr %6, %i.pe
  br i1 %i.pf, label %bb.aw, label %bb.bc

bb.aw:                                            ; preds = %bb.av
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !84 ; 4 uses
  %i.pi = icmp eq ptr %i.ph, %.08.lcssa.i.i.i29.i
  br i1 %i.pi, label %bb.bj, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.pj = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.08.lcssa.i.i.i29.i) #26 ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 32
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !122
  %i.pm = icmp ult ptr %i.pl, %6
  br i1 %i.pm, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.pn = getelementptr i8, ptr %i.pj, i64 24
  %.val10.i.i.i.i = load ptr, ptr %i.pn, align 8, !tbaa !139
  %i.po = icmp eq ptr %.val10.i.i.i.i, null       ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.po, ptr null, ptr %.08.lcssa.i.i.i29.i
  %spec.select22.i.i.i.i = select i1 %i.po, ptr %i.pj, ptr %.08.lcssa.i.i.i29.i
  br label %.thread.i.i.i

bb.az:                                            ; preds = %bb.ax
  br i1 %.not2.i.i.i.i, label %._crit_edge.thread.i33.i.i.i.i, label %.lr.ph.i18.i.i.i.i

.lr.ph.i18.i.i.i.i:                               ; preds = %bb.az, %.lr.ph.i18.i.i.i.i
  %.01115.i19.i.i.i.i = phi ptr [ %.011.i22.i.i.i.i, %.lr.ph.i18.i.i.i.i ], [ %.val.i.i.i, %bb.az ] ; 5 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.01115.i19.i.i.i.i, i64 32
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !122 ; 2 uses
  %i.pr = icmp ult ptr %6, %i.pq                  ; 2 uses
  %.in.v.i20.i.i.i.i = select i1 %i.pr, i64 16, i64 24
  %.in.i21.i.i.i.i = getelementptr i8, ptr %.01115.i19.i.i.i.i, i64 %.in.v.i20.i.i.i.i
  %.011.i22.i.i.i.i = load ptr, ptr %.in.i21.i.i.i.i, align 8, !tbaa !84 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %.011.i22.i.i.i.i, null
  br i1 %.not.i23.i.i.i.i, label %._crit_edge.i24.i.i.i.i, label %.lr.ph.i18.i.i.i.i, !llvm.loop !189

._crit_edge.i24.i.i.i.i:                          ; preds = %.lr.ph.i18.i.i.i.i
  br i1 %i.pr, label %._crit_edge.thread.i33.i.i.i.i, label %bb.bb

._crit_edge.thread.i33.i.i.i.i:                   ; preds = %._crit_edge.i24.i.i.i.i, %bb.az
  %.010.lcssa20.i34.i.i.i.i = phi ptr [ %.01115.i19.i.i.i.i, %._crit_edge.i24.i.i.i.i ], [ %i.j, %bb.az ] ; 4 uses
  %i.ps = icmp eq ptr %.010.lcssa20.i34.i.i.i.i, %i.ph
  br i1 %i.ps, label %.thread.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge.thread.i33.i.i.i.i
  %i.pt = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.010.lcssa20.i34.i.i.i.i) #26 ; 2 uses
  %.phi.trans.insert29.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pt, i64 32
  %.pre30.i.i.i.i = load ptr, ptr %.phi.trans.insert29.i.i.i.i, align 8, !tbaa !122
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %._crit_edge.i24.i.i.i.i
  %i.pu = phi ptr [ %.pre30.i.i.i.i, %bb.ba ], [ %i.pq, %._crit_edge.i24.i.i.i.i ]
  %.010.lcssa19.i25.i.i.i.i = phi ptr [ %.010.lcssa20.i34.i.i.i.i, %bb.ba ], [ %.01115.i19.i.i.i.i, %._crit_edge.i24.i.i.i.i ]
  %.sroa.01.0.i26.i.i.i.i = phi ptr [ %i.pt, %bb.ba ], [ %.01115.i19.i.i.i.i, %._crit_edge.i24.i.i.i.i ]
  %i.pv = icmp ult ptr %i.pu, %6
  br i1 %i.pv, label %.thread.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i.i.i

bb.bc:                                            ; preds = %bb.av
  %i.pw = icmp ult ptr %i.pe, %6
  br i1 %i.pw, label %bb.bd, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !84 ; 2 uses
  %i.pz = icmp eq ptr %i.py, %.08.lcssa.i.i.i29.i
  br i1 %i.pz, label %bb.bj, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.qa = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.08.lcssa.i.i.i29.i) #26 ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 32
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !122
  %i.qd = icmp ult ptr %6, %i.qc
  br i1 %i.qd, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.qe = getelementptr i8, ptr %.08.lcssa.i.i.i29.i, i64 24
  %.val.i10.i.i.i = load ptr, ptr %i.qe, align 8, !tbaa !139
  %i.qf = icmp eq ptr %.val.i10.i.i.i, null       ; 2 uses
  %spec.select23.i.i.i.i = select i1 %i.qf, ptr null, ptr %i.qa
  %spec.select24.i.i.i.i = select i1 %i.qf, ptr %.08.lcssa.i.i.i29.i, ptr %i.qa
  br label %.thread.i.i.i

bb.bg:                                            ; preds = %bb.be
  br i1 %.not2.i.i.i.i, label %._crit_edge.thread.i54.i.i.i.i, label %.lr.ph.i39.i.i.i.i

.lr.ph.i39.i.i.i.i:                               ; preds = %bb.bg, %.lr.ph.i39.i.i.i.i
  %.01115.i40.i.i.i.i = phi ptr [ %.011.i43.i.i.i.i, %.lr.ph.i39.i.i.i.i ], [ %.val.i.i.i, %bb.bg ] ; 5 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.01115.i40.i.i.i.i, i64 32
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !122 ; 2 uses
  %i.qi = icmp ult ptr %6, %i.qh                  ; 2 uses
  %.in.v.i41.i.i.i.i = select i1 %i.qi, i64 16, i64 24
  %.in.i42.i.i.i.i = getelementptr i8, ptr %.01115.i40.i.i.i.i, i64 %.in.v.i41.i.i.i.i
  %.011.i43.i.i.i.i = load ptr, ptr %.in.i42.i.i.i.i, align 8, !tbaa !84 ; 2 uses
  %.not.i44.i.i.i.i = icmp eq ptr %.011.i43.i.i.i.i, null
  br i1 %.not.i44.i.i.i.i, label %._crit_edge.i45.i.i.i.i, label %.lr.ph.i39.i.i.i.i, !llvm.loop !189

._crit_edge.i45.i.i.i.i:                          ; preds = %.lr.ph.i39.i.i.i.i
  br i1 %i.qi, label %._crit_edge.thread.i54.i.i.i.i, label %bb.bi

._crit_edge.thread.i54.i.i.i.i:                   ; preds = %._crit_edge.i45.i.i.i.i, %bb.bg
  %.010.lcssa20.i55.i.i.i.i = phi ptr [ %.01115.i40.i.i.i.i, %._crit_edge.i45.i.i.i.i ], [ %i.j, %bb.bg ] ; 4 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val9.i56.i.i.i.i = load ptr, ptr %i.qj, align 8, !tbaa !50
  %i.qk = icmp eq ptr %.010.lcssa20.i55.i.i.i.i, %.val9.i56.i.i.i.i
  br i1 %i.qk, label %.thread.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %._crit_edge.thread.i54.i.i.i.i
  %i.ql = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.010.lcssa20.i55.i.i.i.i) #26 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ql, i64 32
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !122
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %._crit_edge.i45.i.i.i.i
  %i.qm = phi ptr [ %.pre.i.i.i.i, %bb.bh ], [ %i.qh, %._crit_edge.i45.i.i.i.i ]
  %.010.lcssa19.i46.i.i.i.i = phi ptr [ %.010.lcssa20.i55.i.i.i.i, %bb.bh ], [ %.01115.i40.i.i.i.i, %._crit_edge.i45.i.i.i.i ]
  %.sroa.01.0.i47.i.i.i.i = phi ptr [ %i.ql, %bb.bh ], [ %.01115.i40.i.i.i.i, %._crit_edge.i45.i.i.i.i ]
  %i.qn = icmp ult ptr %i.qm, %6
  br i1 %i.qn, label %.thread.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i.i.i

bb.bj:                                            ; preds = %bb.bd, %bb.aw
  %.sroa.021.2.i.i.i.i = phi ptr [ null, %bb.bd ], [ %i.ph, %bb.aw ] ; 2 uses
  %.sroa.12.2.i.i.i.i = phi ptr [ %i.py, %bb.bd ], [ %i.ph, %bb.aw ] ; 2 uses
  %.not.i.i.i490 = icmp eq ptr %.sroa.12.2.i.i.i.i, null
  br i1 %.not.i.i.i490, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i.i.i, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.bj, %bb.bi, %._crit_edge.thread.i54.i.i.i.i, %bb.bf, %bb.bb, %._crit_edge.thread.i33.i.i.i.i, %bb.ay, %bb.au, %._crit_edge.thread.i.i.i.i.i, %bb.ar
  %.sroa.12.2.i10.i.i.i = phi ptr [ %.sroa.12.2.i.i.i.i, %bb.bj ], [ %.010.lcssa19.i25.i.i.i.i, %bb.bb ], [ %.010.lcssa19.i.i.i.i.i, %bb.au ], [ %spec.select22.i.i.i.i, %bb.ay ], [ %.010.lcssa20.i55.i.i.i.i, %._crit_edge.thread.i54.i.i.i.i ], [ %.010.lcssa20.i34.i.i.i.i, %._crit_edge.thread.i33.i.i.i.i ], [ %.010.lcssa20.i.i.i.i.i, %._crit_edge.thread.i.i.i.i.i ], [ %spec.select24.i.i.i.i, %bb.bf ], [ %i.or, %bb.ar ], [ %.010.lcssa19.i46.i.i.i.i, %bb.bi ] ; 3 uses
  %.sroa.021.2.i9.i.i.i = phi ptr [ %.sroa.021.2.i.i.i.i, %bb.bj ], [ null, %bb.bb ], [ null, %bb.au ], [ %spec.select.i.i.i.i, %bb.ay ], [ null, %._crit_edge.thread.i54.i.i.i.i ], [ null, %._crit_edge.thread.i33.i.i.i.i ], [ null, %._crit_edge.thread.i.i.i.i.i ], [ %spec.select23.i.i.i.i, %bb.bf ], [ null, %bb.ar ], [ null, %bb.bi ]
  %.not.i.i11.i.i.i = icmp ne ptr %.sroa.021.2.i9.i.i.i, null
  %i.qo = icmp eq ptr %.sroa.12.2.i10.i.i.i, %i.j
  %or.cond.i.i.i.i.i = select i1 %.not.i.i11.i.i.i, i1 true, i1 %i.qo
  br i1 %or.cond.i.i.i.i.i, label %.critedge370, label %bb.bk

bb.bk:                                            ; preds = %.thread.i.i.i
  %i.qp = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i10.i.i.i, i64 32
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !122
  %i.qr = icmp ult ptr %6, %i.qq
  br label %.critedge370

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i.i.i:    ; preds = %bb.bj, %bb.bi, %bb.bc, %bb.bb, %bb.au
  %.sroa.01.0.ph.i.i.i = phi ptr [ %.sroa.021.2.i.i.i.i, %bb.bj ], [ %.sroa.01.0.i26.i.i.i.i, %bb.bb ], [ %.sroa.01.0.i.i.i.i.i, %bb.au ], [ %.sroa.01.0.i47.i.i.i.i, %bb.bi ], [ %.08.lcssa.i.i.i29.i, %bb.bc ]
  call void @_ZdlPvm(ptr noundef nonnull %i.mn, i64 noundef 12) #25
  %.pre.i.i.i = load ptr, ptr %i.og, align 8, !tbaa !146 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i.i, label %.critedge370.thread, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i.i.i
  %i.qs = load ptr, ptr %i.oi, align 8, !tbaa !149
  %i.qt = ptrtoint ptr %i.qs to i64
  %i.qu = ptrtoint ptr %.pre.i.i.i to i64
  %i.qv = sub i64 %i.qt, %i.qu
  call void @_ZdlPvm(ptr noundef nonnull %.pre.i.i.i, i64 noundef %i.qv) #25
  br label %.critedge370.thread

.critedge370.thread:                              ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i.i.i, %bb.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.od, i64 noundef 120) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

.critedge370:                                     ; preds = %.thread.i.i.i, %bb.bk
  %i.qw = phi i1 [ %i.qr, %bb.bk ], [ true, %.thread.i.i.i ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.qw, ptr noundef nonnull %i.od, ptr noundef nonnull %.sroa.12.2.i10.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #23
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.qy = load i64, ptr %i.qx, align 8, !tbaa !138
  %i.qz = add i64 %i.qy, 1
  store i64 %i.qz, ptr %i.qx, align 8, !tbaa !138
  %.pre720 = load ptr, ptr %i.mm, align 8, !tbaa !142 ; 2 uses
  %.not.i.i.i.i492 = icmp eq ptr %.pre720, null
  br i1 %.not.i.i.i.i492, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %.critedge370.thread854

.critedge370.thread854:                           ; preds = %bb.ap, %.critedge370
  %.sroa.027.0.i857 = phi ptr [ %i.od, %.critedge370 ], [ %.19.i.i.i.i, %bb.ap ]
  %i.ra = phi ptr [ %.pre720, %.critedge370 ], [ %i.mn, %bb.ap ] ; 2 uses
  %i.rb = load ptr, ptr %i.ms, align 8, !tbaa !145
  %i.rc = ptrtoint ptr %i.rb to i64
  %i.rd = ptrtoint ptr %i.ra to i64
  %i.re = sub i64 %i.rc, %i.rd
  call void @_ZdlPvm(ptr noundef nonnull %i.ra, i64 noundef %i.re) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %.critedge370.thread, %.critedge370.thread854, %.critedge370
  %.sroa.027.0.i853 = phi ptr [ %.sroa.01.0.ph.i.i.i, %.critedge370.thread ], [ %.sroa.027.0.i857, %.critedge370.thread854 ], [ %i.od, %.critedge370 ]
  %i.rf = load ptr, ptr %i.ml, align 8, !tbaa !146 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.rf, null
  br i1 %.not.i.i.i1.i, label %_ZN12_GLOBAL__N_18GridInfoD2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.rg = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !149
  %i.ri = ptrtoint ptr %i.rh to i64
  %i.rj = ptrtoint ptr %i.rf to i64
  %i.rk = sub i64 %i.ri, %i.rj
  call void @_ZdlPvm(ptr noundef nonnull %i.rf, i64 noundef %i.rk) #25
  br label %_ZN12_GLOBAL__N_18GridInfoD2Ev.exit

_ZN12_GLOBAL__N_18GridInfoD2Ev.exit:              ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.rl = load ptr, ptr %14, align 8, !tbaa !83   ; 2 uses
  %i.rm = icmp eq ptr %i.rl, %i.kk
  br i1 %i.rm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i493

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i493: ; preds = %_ZN12_GLOBAL__N_18GridInfoD2Ev.exit
  %i.rn = load i64, ptr %i.kk, align 8, !tbaa !49
  %i.ro = add i64 %i.rn, 1
  call void @_ZdlPvm(ptr noundef %i.rl, i64 noundef %i.ro) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495: ; preds = %_ZN12_GLOBAL__N_18GridInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i493
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.bt

bb.bn:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit485.thread
  %i.rp = load ptr, ptr %14, align 8, !tbaa !83   ; 2 uses
  %i.rq = icmp eq ptr %i.rp, %i.kk
  br i1 %i.rq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit498, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i496

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i496: ; preds = %bb.bn
  %i.rr = load i64, ptr %i.kk, align 8, !tbaa !49
  %i.rs = add i64 %i.rr, 1
  call void @_ZdlPvm(ptr noundef %i.rp, i64 noundef %i.rs) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit498

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit498: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i496
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %.critedge364

bb.bo:                                            ; preds = %.critedge.i
  %i.rt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.an
  %.pn341 = phi { ptr, i32 } [ %i.rt, %bb.bo ], [ %i.nt, %bb.an ]
  call fastcc void @_ZN12_GLOBAL__N_18GridInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %16) #23
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %20
  %.pn341.pn = phi { ptr, i32 } [ %.pn341, %bb.bp ], [ %21, %20 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480
  %.pn344 = phi { ptr, i32 } [ %i.lv, %bb.aj ], [ %.pn341.pn, %bb.bq ], [ %.pn339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480 ]
  %i.ru = load ptr, ptr %14, align 8, !tbaa !83   ; 2 uses
  %i.rv = icmp eq ptr %i.ru, %i.kk
  br i1 %i.rv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i499

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i499: ; preds = %bb.br
  %i.rw = load i64, ptr %i.kk, align 8, !tbaa !49
  %i.rx = add i64 %i.rw, 1
  call void @_ZdlPvm(ptr noundef %i.ru, i64 noundef %i.rx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i499
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.bs

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459
  %.pn344.pn = phi { ptr, i32 } [ %.pn344, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501 ], [ %.pn335.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459 ]
  resume { ptr, i32 } %.pn344.pn

bb.bt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495, %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit
  %.sroa.0553.0 = phi ptr [ %.sroa.027.0.i853, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495 ], [ %.19.i.i.i, %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit ] ; 24 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.sroa.0553.0, i64 40
  %i.rz = load i32, ptr %i.ry, align 8, !tbaa !169 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.0553.0, i64 44
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !177 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.sc = getelementptr inbounds nuw i8, ptr %.sroa.0553.0, i64 48
  %i.sd = load i32, ptr %i.sc, align 8, !tbaa !178
  store i32 %i.sd, ptr %i.c, align 4, !tbaa !186
  %i.se = getelementptr inbounds nuw i8, ptr %.sroa.0553.0, i64 53
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !183, !range !80, !noundef !81 ; 2 uses
  %i.sg = trunc nuw i8 %i.sf to i1
  %i.sh = xor i8 %i.sf, 1
  store i8 %i.sh, ptr %7, align 1, !tbaa !59
  %i.si = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.sj = load double, ptr %i.si, align 8, !tbaa !158
  %i.sk = fsub double %4, %i.sj
  %i.sl = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.sm = load double, ptr %i.sl, align 8, !tbaa !156
  %i.sn = fdiv double %i.sk, %i.sm                ; 3 uses
  %i.so = fcmp uno double %i.sn, 0.000000e+00
  br i1 %i.so, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.sp = call double @llvm.floor.f64(double %i.sn)
  %i.sq = call i64 @lround(double noundef %i.sp) #23
  %i.sr = trunc i64 %i.sq to i32
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  %i.ss = phi i32 [ %i.sr, %bb.bu ], [ 0, %bb.bt ] ; 6 uses
  %i.st = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.su = load double, ptr %i.st, align 8, !tbaa !190
  %i.sv = fsub double %5, %i.su
  %i.sw = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.sx = load double, ptr %i.sw, align 8, !tbaa !157
  %i.sy = fdiv double %i.sv, %i.sx                ; 3 uses
  %i.sz = fcmp uno double %i.sy, 0.000000e+00
  br i1 %i.sz, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ta = call double @llvm.floor.f64(double %i.sy)
  %i.tb = call i64 @lround(double noundef %i.ta) #23
  %i.tc = trunc i64 %i.tb to i32
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw
  %i.td = phi i32 [ %i.tc, %bb.bw ], [ 0, %bb.bv ] ; 6 uses
  %i.te = sitofp i32 %i.ss to double
  %i.tf = fsub double %i.sn, %i.te                ; 3 uses
  %i.tg = sitofp i32 %i.td to double
  %i.th = fsub double %i.sy, %i.tg                ; 3 uses
  %i.ti = icmp slt i32 %i.ss, 0
  br i1 %i.ti, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.tj = icmp eq i32 %i.ss, -1
  %i.tk = fcmp ogt double %i.tf, 9.999000e-01
  %or.cond19 = and i1 %i.tj, %i.tk
  br i1 %or.cond19, label %bb.cc, label %bb.dq

bb.bz:                                            ; preds = %bb.bx
  %i.tl = add nuw nsw i32 %i.ss, 1                ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.tn = load i32, ptr %i.tm, align 8, !tbaa !180 ; 2 uses
  %.not347 = icmp slt i32 %i.tl, %i.tn
  br i1 %.not347, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.to = icmp eq i32 %i.tl, %i.tn
  %i.tp = fcmp olt double %i.tf, 1.000000e-04
  %or.cond22 = and i1 %i.tp, %i.to
  br i1 %or.cond22, label %bb.cb, label %bb.dq

bb.cb:                                            ; preds = %bb.ca
  %i.tq = add nsw i32 %i.ss, -1
  br label %bb.cc

bb.cc:                                            ; preds = %bb.by, %bb.bz, %bb.cb
  %.sroa.0508.0 = phi i32 [ %i.tq, %bb.cb ], [ %i.ss, %bb.bz ], [ 0, %bb.by ] ; 10 uses
  %.sroa.0.0 = phi double [ 1.000000e+00, %bb.cb ], [ %i.tf, %bb.bz ], [ 0.000000e+00, %bb.by ] ; 6 uses
  %i.tr = icmp slt i32 %i.td, 0
  br i1 %i.tr, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.ts = icmp eq i32 %i.td, -1
  %i.tt = fcmp ogt double %i.th, 9.999000e-01
  %or.cond25 = select i1 %i.ts, i1 %i.tt, i1 false
  br i1 %or.cond25, label %bb.ch, label %bb.dq

bb.ce:                                            ; preds = %bb.cc
  %i.tu = add nuw nsw i32 %i.td, 1                ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !182 ; 2 uses
  %.not348 = icmp slt i32 %i.tu, %i.tw
  br i1 %.not348, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.tx = icmp eq i32 %i.tu, %i.tw
  %i.ty = fcmp olt double %i.th, 1.000000e-04
  %or.cond28 = select i1 %i.tx, i1 %i.ty, i1 false
  br i1 %or.cond28, label %bb.cg, label %bb.dq

bb.cg:                                            ; preds = %bb.cf
  %i.tz = add nsw i32 %i.td, -1
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cd, %bb.ce, %bb.cg
  %.sroa.22.0 = phi i32 [ %i.tz, %bb.cg ], [ %i.td, %bb.ce ], [ 0, %bb.cd ] ; 10 uses
  %.sroa.18.0 = phi double [ 1.000000e+00, %bb.cg ], [ %i.th, %bb.ce ], [ 0.000000e+00, %bb.cd ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i8 0, ptr %i.d, align 1, !tbaa !59
  br i1 %i.sg, label %bb.ci, label %bb.cu

bb.ci:                                            ; preds = %bb.ch
  %i.ua = fsub double 1.000000e+00, %.sroa.0.0    ; 2 uses
  %i.ub = fmul double %.sroa.0.0, %.sroa.18.0     ; 4 uses
  %i.uc = fmul double %i.ua, %.sroa.18.0          ; 4 uses
  %i.ud = fsub double 1.000000e+00, %.sroa.18.0   ; 2 uses
  %i.ue = fmul double %i.ua, %i.ud                ; 4 uses
  %i.uf = fmul double %.sroa.0.0, %i.ud           ; 4 uses
  %i.ug = icmp sgt i32 %i.rz, -1
  %i.uh = icmp sgt i32 %i.sb, -1
  %or.cond30 = select i1 %i.ug, i1 %i.uh, i1 false
  br i1 %or.cond30, label %bb.cj, label %bb.cp

bb.cj:                                            ; preds = %bb.ci
  %i.ui = getelementptr inbounds nuw i8, ptr %.sroa.0553.0, i64 112 ; 2 uses
  %.val386 = load i32, ptr %i.ui, align 8, !tbaa !166
  %i.uj = getelementptr i8, ptr %.sroa.0553.0, i64 116
  %.val387 = load i32, ptr %i.uj, align 4
  %.not.i = icmp ne i32 %.val386, %.sroa.0508.0
  %i.uk = icmp ne i32 %.val387, %.sroa.22.0
  %i.ul = select i1 %.not.i, i1 true, i1 %i.uk
  %.pre724.a = load i32, ptr %i.c, align 4, !tbaa !186 ; 2 uses
  br i1 %i.ul, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  %i.um = icmp sgt i32 %.pre724.a, -1
  %i.un = select i1 %i.um, i32 3, i32 2
  %i.uo = getelementptr inbounds nuw i8, ptr %.sroa.0553.0, i64 88
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !142
  %i.uq = getelementptr inbounds nuw i8, ptr %.sroa.0553.0, i64 56
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !146
  %i.us = load ptr, ptr %6, align 8, !tbaa !107
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 80
  %i.uu = load ptr, ptr %i.ut, align 8
  %i.uv = call noundef zeroext i1 %i.uu(ptr noundef nonnull align 8 dereferenceable(144) %6, i32 noundef %.sroa.0508.0, i32 noundef %.sroa.22.0, i32 noundef 2, i32 noundef 2, i32 noundef %i.un, ptr noundef %i.up, ptr noundef %i.ur, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  %.not = xor i1 %i.uv, true
  %i.uw = load i8, ptr %i.d, align 1, !range !80
  %i.ux = trunc nuw i8 %i.uw to i1
  %or.cond32 = select i1 %.not, i1 true, i1 %i.ux
  br i1 %or.cond32, label %.critedge366, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %.sroa.22.0.insert.ext540 = zext i32 %.sroa.22.0 to i64
  %.sroa.22.0.insert.shift541 = shl nuw i64 %.sroa.22.0.insert.ext540, 32
  %.sroa.0508.0.insert.ext526 = zext i32 %.sroa.0508.0 to i64
  %.sroa.0508.0.insert.insert528 = or disjoint i64 %.sroa.22.0.insert.shift541, %.sroa.0508.0.insert.ext526
  store i64 %.sroa.0508.0.insert.insert528, ptr %i.ui, align 8
  %.pre723.a = load i32, ptr %i.c, align 4, !tbaa !186
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.cj
  %i.uy = phi i32 [ %.pre723.a, %bb.cl ], [ %.pre724.a, %bb.cj ]
  %i.uz = icmp sgt i32 %i.uy, -1
  %i.va = getelementptr inbounds nuw i8, ptr %.sroa.0553.0, i64 56
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !146 ; 12 uses
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !191
  %i.vd = fpext float %i.vc to double             ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vb, i64 4 ; 2 uses
  br i1 %i.uz, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vb, i64 12
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vb, i64 24
end_hunk_1
