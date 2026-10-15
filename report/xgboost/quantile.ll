Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/quantile?download=true
inline.NumInlined: 5688
inline.NumDeleted: 1647
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZN7xgboost6common9WQSummaryIffE10SetCombineERKS2_PSt6vectorINS2_5EntryESaIS6_EE:bb.a
  br label %bb.bf

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit155
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %.pr242 = load ptr, ptr %5, align 8, !tbaa !80  ; 4 uses
  %.not.i156 = icmp eq ptr %.pr242, null
  br i1 %.not.i156, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit160, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = load ptr, ptr %.pr242, align 8, !tbaa !81 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.pr242, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i157: ; preds = %bb.r
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !83
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i158

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i158: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i157
  call void @_ZdlPvm(ptr noundef nonnull %.pr242, i64 noundef 32) #31
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit160

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit160: ; preds = %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.q, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.av = icmp eq ptr %2, null                    ; 2 uses
  %spec.store.select = select i1 %i.av, ptr %7, ptr %2 ; 3 uses
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.av, ptr %7, ptr %2
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %i.aw = load ptr, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !290
  %i.ax = load ptr, ptr %spec.store.select, align 8, !tbaa !284 ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 4                 ; 2 uses
  %i.bc = load i64, ptr %i.c, align 8, !tbaa !78  ; 3 uses
  %i.bd = icmp ult i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.s, label %_ZNSt6vectorIN7xgboost6common9WQSummaryIffE5EntryESaIS4_EE6resizeEm.exit

bb.s:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit160
  %i.be = sub nuw i64 %i.bc, %i.bb
  invoke void @_ZNSt6vectorIN7xgboost6common9WQSummaryIffE5EntryESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %spec.store.select, i64 noundef %i.be)
          to label %._ZNSt6vectorIN7xgboost6common9WQSummaryIffE5EntryESaIS4_EE6resizeEm.exit_crit_edge unwind label %bb.t

._ZNSt6vectorIN7xgboost6common9WQSummaryIffE5EntryESaIS4_EE6resizeEm.exit_crit_edge: ; preds = %bb.s
  %.pre = load ptr, ptr %spec.store.select, align 8, !tbaa !284
  %.pre269 = load i64, ptr %i.c, align 8, !tbaa !78
  br label %_ZNSt6vectorIN7xgboost6common9WQSummaryIffE5EntryESaIS4_EE6resizeEm.exit

bb.t:                                             ; preds = %bb.s
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

_ZNSt6vectorIN7xgboost6common9WQSummaryIffE5EntryESaIS4_EE6resizeEm.exit: ; preds = %._ZNSt6vectorIN7xgboost6common9WQSummaryIffE5EntryESaIS4_EE6resizeEm.exit_crit_edge, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit160
  %i.bg = phi i64 [ %.pre269, %._ZNSt6vectorIN7xgboost6common9WQSummaryIffE5EntryESaIS4_EE6resizeEm.exit_crit_edge ], [ %i.bc, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit160 ]
  %i.bh = phi ptr [ %.pre, %._ZNSt6vectorIN7xgboost6common9WQSummaryIffE5EntryESaIS4_EE6resizeEm.exit_crit_edge ], [ %i.ax, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit160 ] ; 8 uses
  %i.bi = icmp ne ptr %i.bh, null
  %i.bj = icmp eq i64 %i.bg, 0
  %i.bk = or i1 %i.bi, %i.bj
  br i1 %i.bk, label %_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit, label %bb.u, !prof !75

bb.u:                                             ; preds = %_ZNSt6vectorIN7xgboost6common9WQSummaryIffE5EntryESaIS4_EE6resizeEm.exit
  call void @_ZSt9terminatev() #32
  unreachable

_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit: ; preds = %_ZNSt6vectorIN7xgboost6common9WQSummaryIffE5EntryESaIS4_EE6resizeEm.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !287 ; 3 uses
  %i.bn = load i64, ptr %i.j, align 8, !tbaa !286 ; 2 uses
  %.idx = shl nuw nsw i64 %i.bn, 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !287 ; 3 uses
  %i.br = load i64, ptr %i.e, align 8, !tbaa !286 ; 2 uses
  %.idx264 = shl nuw nsw i64 %i.br, 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx264 ; 3 uses
  %i.bt = icmp ne i64 %i.bn, 0                    ; 2 uses
  %i.bu = icmp ne i64 %i.br, 0                    ; 2 uses
  %i.bv = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %i.bv, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit, %bb.z
  %.0257 = phi ptr [ %.1, %bb.z ], [ %i.bh, %_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit ] ; 8 uses
  %.087256 = phi float [ %.188, %bb.z ], [ 0.000000e+00, %_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit ] ; 2 uses
  %.089255 = phi float [ %.190, %bb.z ], [ 0.000000e+00, %_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit ] ; 2 uses
  %.091254 = phi ptr [ %.192, %bb.z ], [ %i.bq, %_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit ] ; 12 uses
  %.094253 = phi ptr [ %.195, %bb.z ], [ %i.bm, %_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit ] ; 12 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.094253, i64 12
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !293 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.091254, i64 12
  %i.bz = load float, ptr %i.by, align 4, !tbaa !293 ; 3 uses
  %i.ca = fcmp oeq float %i.bx, %i.bz
  br i1 %i.ca, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph
  %i.cb = getelementptr inbounds nuw i8, ptr %.094253, i64 8 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !296
  %i.cd = getelementptr inbounds nuw i8, ptr %.091254, i64 8 ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !296
  %i.cf = fadd float %i.cc, %i.ce
  %i.cg = load <2 x float>, ptr %.094253, align 4, !tbaa !77
  %i.ch = load <2 x float>, ptr %.091254, align 4, !tbaa !77
  %i.ci = fadd <2 x float> %i.cg, %i.ch
  store <2 x float> %i.ci, ptr %.0257, align 4, !tbaa !77
  %.sroa.5215.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0257, i64 8
  store float %i.cf, ptr %.sroa.5215.0..0.sroa_idx, align 4, !tbaa !77
  %.sroa.6216.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0257, i64 12
  store float %i.bx, ptr %.sroa.6216.0..0.sroa_idx, align 4, !tbaa !77
  %i.cj = load float, ptr %.094253, align 4, !tbaa !295
  %i.ck = load float, ptr %i.cb, align 4, !tbaa !296
  %i.cl = fadd float %i.cj, %i.ck
  %i.cm = load float, ptr %.091254, align 4, !tbaa !295
  %i.cn = load float, ptr %i.cd, align 4, !tbaa !296
  %i.co = fadd float %i.cm, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %.094253, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %.091254, i64 16
  br label %bb.z

bb.w:                                             ; preds = %.lr.ph
  %i.cr = fcmp olt float %i.bx, %i.bz
  %.sroa.5211.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0257, i64 8 ; 2 uses
  %.sroa.6212.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0257, i64 12 ; 2 uses
  br i1 %i.cr, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cs = getelementptr inbounds nuw i8, ptr %.091254, i64 4
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !294
  %i.cu = getelementptr inbounds nuw i8, ptr %.091254, i64 8
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !296
  %i.cw = fsub float %i.ct, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %.094253, i64 8 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !296
  %i.cz = load <2 x float>, ptr %.094253, align 4, !tbaa !77
  %i.da = insertelement <2 x float> poison, float %.087256, i64 0
  %i.db = insertelement <2 x float> %i.da, float %i.cw, i64 1
  %i.dc = fadd <2 x float> %i.db, %i.cz
  store <2 x float> %i.dc, ptr %.0257, align 4, !tbaa !77
  store float %i.cy, ptr %.sroa.5211.0..0.sroa_idx, align 4, !tbaa !77
  store float %i.bx, ptr %.sroa.6212.0..0.sroa_idx, align 4, !tbaa !77
  %i.dd = load float, ptr %.094253, align 4, !tbaa !295
  %i.de = load float, ptr %i.cx, align 4, !tbaa !296
  %i.df = fadd float %i.dd, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %.094253, i64 16
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.dh = getelementptr inbounds nuw i8, ptr %.094253, i64 4
  %i.di = load float, ptr %i.dh, align 4, !tbaa !294
  %i.dj = getelementptr inbounds nuw i8, ptr %.094253, i64 8
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !296
  %i.dl = fsub float %i.di, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %.091254, i64 8 ; 2 uses
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !296
  %i.do = load <2 x float>, ptr %.091254, align 4, !tbaa !77
  %i.dp = insertelement <2 x float> poison, float %.089255, i64 0
  %i.dq = insertelement <2 x float> %i.dp, float %i.dl, i64 1
  %i.dr = fadd <2 x float> %i.dq, %i.do
  store <2 x float> %i.dr, ptr %.0257, align 4, !tbaa !77
  store float %i.dn, ptr %.sroa.5211.0..0.sroa_idx, align 4, !tbaa !77
  store float %i.bz, ptr %.sroa.6212.0..0.sroa_idx, align 4, !tbaa !77
  %i.ds = load float, ptr %.091254, align 4, !tbaa !295
  %i.dt = load float, ptr %i.dm, align 4, !tbaa !296
  %i.du = fadd float %i.ds, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %.091254, i64 16
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.v
  %.195 = phi ptr [ %i.cp, %bb.v ], [ %i.dg, %bb.x ], [ %.094253, %bb.y ] ; 3 uses
  %.192 = phi ptr [ %i.cq, %bb.v ], [ %.091254, %bb.x ], [ %i.dv, %bb.y ] ; 3 uses
  %.190 = phi float [ %i.cl, %bb.v ], [ %i.df, %bb.x ], [ %.089255, %bb.y ] ; 2 uses
  %.188 = phi float [ %i.co, %bb.v ], [ %.087256, %bb.x ], [ %i.du, %bb.y ] ; 2 uses
  %.1 = getelementptr inbounds nuw i8, ptr %.0257, i64 16 ; 2 uses
  %i.dw = icmp ne ptr %.195, %i.bo                ; 2 uses
  %i.dx = icmp ne ptr %.192, %i.bs                ; 2 uses
  %i.dy = select i1 %i.dw, i1 %i.dx, i1 false
  br i1 %i.dy, label %.lr.ph, label %._crit_edge, !llvm.loop !1053

._crit_edge:                                      ; preds = %bb.z, %_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit
  %.094.lcssa = phi ptr [ %i.bm, %_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit ], [ %.195, %bb.z ]
  %.091.lcssa = phi ptr [ %i.bq, %_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit ], [ %.192, %bb.z ]
  %.089.lcssa = phi float [ 0.000000e+00, %_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit ], [ %.190, %bb.z ]
  %.087.lcssa = phi float [ 0.000000e+00, %_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit ], [ %.188, %bb.z ]
  %.0.lcssa = phi ptr [ %i.bh, %_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit ], [ %.1, %bb.z ] ; 2 uses
  %.lcssa252 = phi i1 [ %i.bt, %_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit ], [ %i.dw, %bb.z ]
  %.lcssa251 = phi i1 [ %i.bu, %_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit ], [ %i.dx, %bb.z ]
  br i1 %.lcssa252, label %bb.aa, label %.loopexit249

bb.aa:                                            ; preds = %._crit_edge
  %i.dz = getelementptr inbounds i8, ptr %i.bs, i64 -12
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !294
  %i.eb = insertelement <2 x float> poison, float %.087.lcssa, i64 0
  %i.ec = insertelement <2 x float> %i.eb, float %i.ea, i64 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %.296 = phi ptr [ %.094.lcssa, %bb.aa ], [ %i.ei, %bb.ab ] ; 3 uses
  %.2 = phi ptr [ %.0.lcssa, %bb.aa ], [ %i.eh, %bb.ab ] ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.296, i64 8
  %i.ee = load <2 x float>, ptr %.296, align 4, !tbaa !77
  %i.ef = fadd <2 x float> %i.ec, %i.ee
  %.sroa.5203.0..2.sroa_idx = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.eg = load <2 x float>, ptr %i.ed, align 4, !tbaa !77
  store <2 x float> %i.ef, ptr %.2, align 4, !tbaa !77
  store <2 x float> %i.eg, ptr %.sroa.5203.0..2.sroa_idx, align 4, !tbaa !77
  %i.eh = getelementptr inbounds nuw i8, ptr %.2, i64 16 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.296, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ei, %i.bo
  br i1 %.not, label %.loopexit249, label %bb.ab, !llvm.loop !1054

.loopexit249:                                     ; preds = %bb.ab, %._crit_edge
  %.3 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.eh, %bb.ab ] ; 2 uses
  br i1 %.lcssa251, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %.loopexit249
  %i.ej = getelementptr inbounds i8, ptr %i.bo, i64 -12
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !294
  %i.el = insertelement <2 x float> poison, float %.089.lcssa, i64 0
  %i.em = insertelement <2 x float> %i.el, float %i.ek, i64 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %bb.ac
  %.293 = phi ptr [ %.091.lcssa, %bb.ac ], [ %i.es, %bb.ad ] ; 3 uses
  %.4 = phi ptr [ %.3, %bb.ac ], [ %i.er, %bb.ad ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.293, i64 8
  %i.eo = load <2 x float>, ptr %.293, align 4, !tbaa !77
  %i.ep = fadd <2 x float> %i.em, %i.eo
  %.sroa.5.0..4.sroa_idx = getelementptr inbounds nuw i8, ptr %.4, i64 8
  %i.eq = load <2 x float>, ptr %i.en, align 4, !tbaa !77
  store <2 x float> %i.ep, ptr %.4, align 4, !tbaa !77
  store <2 x float> %i.eq, ptr %.sroa.5.0..4.sroa_idx, align 4, !tbaa !77
  %i.er = getelementptr inbounds nuw i8, ptr %.4, i64 16 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.293, i64 16 ; 2 uses
  %.not118 = icmp eq ptr %i.es, %i.bs
  br i1 %.not118, label %.loopexit, label %bb.ad, !llvm.loop !1055

.loopexit:                                        ; preds = %bb.ad, %.loopexit249
  %.5 = phi ptr [ %.3, %.loopexit249 ], [ %i.er, %bb.ad ] ; 2 uses
  %i.et = ptrtoint ptr %.5 to i64
  %i.eu = ptrtoint ptr %i.bh to i64
  %i.ev = sub i64 %i.et, %i.eu                    ; 3 uses
  %i.ew = ashr exact i64 %i.ev, 4                 ; 3 uses
  %.not.i162 = icmp eq ptr %.5, %i.bh             ; 2 uses
  br i1 %.not.i162, label %_ZNK7xgboost6common9WQSummaryIffE8FixErrorEPfS3_S3_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit, %bb.aj
  %.0236 = phi float [ %.1237, %bb.aj ], [ 0.000000e+00, %.loopexit ] ; 3 uses
  %.0233 = phi float [ %.1234, %bb.aj ], [ 0.000000e+00, %.loopexit ] ; 3 uses
  %.0230 = phi float [ %.1231, %bb.aj ], [ 0.000000e+00, %.loopexit ] ; 3 uses
  %.060.i = phi i64 [ %i.fq, %bb.aj ], [ 0, %.loopexit ] ; 2 uses
  %.04459.i = phi float [ %i.fp, %bb.aj ], [ 0.000000e+00, %.loopexit ] ; 5 uses
  %.04558.i = phi float [ %i.fc, %bb.aj ], [ 0.000000e+00, %.loopexit ] ; 5 uses
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %.060.i ; 4 uses
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !295 ; 2 uses
  %i.ez = fcmp olt float %i.ey, %.04558.i
  br i1 %i.ez, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i
  store float %.04558.i, ptr %i.ex, align 4, !tbaa !295
  %i.fa = fsub float %.04558.i, %.04558.i         ; 2 uses
  %i.fb = fcmp olt float %.0236, %i.fa
  %.sroa.speculated55.i = select i1 %i.fb, float %i.fa, float %.0236
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph.i
  %.1237 = phi float [ %.sroa.speculated55.i, %bb.ae ], [ %.0236, %.lr.ph.i ] ; 2 uses
  %i.fc = phi float [ %.04558.i, %bb.ae ], [ %i.ey, %.lr.ph.i ] ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 4 ; 3 uses
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !294 ; 2 uses
  %i.ff = fcmp olt float %i.fe, %.04459.i
  br i1 %i.ff, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store float %.04459.i, ptr %i.fd, align 4, !tbaa !294
  %i.fg = fsub float %.04459.i, %.04459.i         ; 2 uses
  %i.fh = fcmp olt float %.0233, %i.fg
  %.sroa.speculated51.i = select i1 %i.fh, float %i.fg, float %.0233
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.1234 = phi float [ %.sroa.speculated51.i, %bb.ag ], [ %.0233, %bb.af ] ; 2 uses
  %i.fi = phi float [ %.04459.i, %bb.ag ], [ %i.fe, %bb.af ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !296
  %i.fl = fadd float %i.fc, %i.fk                 ; 5 uses
  %i.fm = fcmp olt float %i.fi, %i.fl
  br i1 %i.fm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store float %i.fl, ptr %i.fd, align 4, !tbaa !294
  %i.fn = fsub float %i.fl, %i.fl                 ; 2 uses
  %i.fo = fcmp olt float %.0230, %i.fn
  %.sroa.speculated.i = select i1 %i.fo, float %i.fn, float %.0230
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.1231 = phi float [ %.sroa.speculated.i, %bb.ai ], [ %.0230, %bb.ah ] ; 2 uses
  %i.fp = phi float [ %i.fl, %bb.ai ], [ %i.fi, %bb.ah ]
  %i.fq = add nuw i64 %.060.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fq, %i.ew
  br i1 %exitcond.not.i, label %_ZNK7xgboost6common9WQSummaryIffE8FixErrorEPfS3_S3_.exit, label %.lr.ph.i, !llvm.loop !1056

_ZNK7xgboost6common9WQSummaryIffE8FixErrorEPfS3_S3_.exit: ; preds = %bb.aj, %.loopexit
  %.2238 = phi float [ 0.000000e+00, %.loopexit ], [ %.1237, %bb.aj ] ; 2 uses
  %.2235 = phi float [ 0.000000e+00, %.loopexit ], [ %.1234, %bb.aj ] ; 2 uses
  %.2232 = phi float [ 0.000000e+00, %.loopexit ], [ %.1231, %bb.aj ] ; 2 uses
  %i.fr = fcmp ogt float %.2238, 1.000000e+01
  %i.fs = fcmp ogt float %.2235, 1.000000e+01
  %or.cond = select i1 %i.fr, i1 true, i1 %i.fs
  %i.ft = fcmp ogt float %.2232, 1.000000e+01
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.ft
  br i1 %or.cond3, label %bb.ak, label %bb.as

bb.ak:                                            ; preds = %_ZNK7xgboost6common9WQSummaryIffE8FixErrorEPfS3_S3_.exit
  %i.fu = invoke noundef zeroext i1 @_ZN7xgboost13ConsoleLogger9ShouldLogENS0_12LogVerbosityE(i32 noundef 2)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  br i1 %i.fu, label %.noexc.i, label %bb.as

.noexc.i:                                         ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.fv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.fv, ptr %9, align 8, !tbaa !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 53, ptr %i.a, align 8, !tbaa !78
  %i.fw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc163 unwind label %bb.ao ; 3 uses

.noexc163:                                        ; preds = %.noexc.i
  store ptr %i.fw, ptr %9, align 8, !tbaa !81
  %i.fx = load i64, ptr %i.a, align 8, !tbaa !78  ; 3 uses
  store i64 %i.fx, ptr %i.fv, align 8, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(53) %i.fw, ptr noundef nonnull align 1 dereferenceable(53) @.str.17, i64 53, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.fx, ptr %i.fy, align 8, !tbaa !82
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fx
  store i8 0, ptr %i.fz, align 1, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  invoke void @_ZN7xgboost13ConsoleLoggerC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS0_12LogVerbosityE(ptr noundef nonnull align 8 dereferenceable(380) %8, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 427, i32 noundef 2)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %.noexc163
  %i.ga = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.86, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit165 unwind label %bb.aq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit165: ; preds = %bb.am
  %i.gb = fpext float %.2238 to double
  %i.gc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %8, double noundef %i.gb)
          to label %_ZNSolsEf.exit unwind label %bb.aq ; 2 uses

_ZNSolsEf.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit165
  %i.gd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, ptr noundef nonnull @.str.87, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168 unwind label %bb.aq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168: ; preds = %_ZNSolsEf.exit
  %i.ge = fpext float %.2235 to double
  %i.gf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, double noundef %i.ge)
          to label %_ZNSolsEf.exit170 unwind label %bb.aq ; 2 uses

_ZNSolsEf.exit170:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168
  %i.gg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gf, ptr noundef nonnull @.str.88, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit172 unwind label %bb.aq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit172: ; preds = %_ZNSolsEf.exit170
  %i.gh = fpext float %.2232 to double
  %i.gi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gf, double noundef %i.gh)
          to label %_ZNSolsEf.exit174 unwind label %bb.aq ; 0 uses

_ZNSolsEf.exit174:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit172
  call void @_ZN7xgboost13ConsoleLoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %8) #15
  %i.gj = load ptr, ptr %9, align 8, !tbaa !81    ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.fv
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEf.exit174
  %i.gl = load i64, ptr %i.fv, align 8, !tbaa !83
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEf.exit174, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.as

bb.an:                                            ; preds = %bb.ak
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.ao:                                            ; preds = %.noexc.i
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

bb.ap:                                            ; preds = %.noexc163
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit172, %_ZNSolsEf.exit170, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168, %_ZNSolsEf.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit165, %bb.am
  %i.gq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost13ConsoleLoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %8) #15
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn119 = phi { ptr, i32 } [ %i.gq, %bb.aq ], [ %i.gp, %bb.ap ] ; 2 uses
  %i.gr = load ptr, ptr %9, align 8, !tbaa !81    ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.fv
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %bb.ar
  %i.gt = load i64, ptr %i.fv, align 8, !tbaa !83
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175, %bb.ao
  %.pn119.pn = phi { ptr, i32 } [ %i.go, %bb.ao ], [ %.pn119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175 ], [ %.pn119, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.bd

bb.as:                                            ; preds = %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK7xgboost6common9WQSummaryIffE8FixErrorEPfS3_S3_.exit
  %i.gv = load i64, ptr %i.j, align 8, !tbaa !286
  %i.gw = load i64, ptr %i.e, align 8, !tbaa !286
  %i.gx = add i64 %i.gw, %i.gv
  %.not122 = icmp ugt i64 %i.ew, %i.gx
end_hunk_0
