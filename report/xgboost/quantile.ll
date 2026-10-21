Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/quantile?download=true
inline.NumInlined: 5688
inline.NumDeleted: 1647
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZN7xgboost6common9WQSummaryIffE10SetCombineERKS2_PSt6vectorINS2_5EntryESaIS6_EE:bb.a
bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.n ], [ %i.ap, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.be

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
          to label %._ZNSt6vectorIN7xgboost6common9WQSummaryIffE5EntryESaIS4_EE6resizeEm.exit_crit_edge unwind label %bb.am

._ZNSt6vectorIN7xgboost6common9WQSummaryIffE5EntryESaIS4_EE6resizeEm.exit_crit_edge: ; preds = %bb.s
  %.pre = load ptr, ptr %spec.store.select, align 8, !tbaa !284
  %.pre269 = load i64, ptr %i.c, align 8, !tbaa !78
  br label %_ZNSt6vectorIN7xgboost6common9WQSummaryIffE5EntryESaIS4_EE6resizeEm.exit

_ZNSt6vectorIN7xgboost6common9WQSummaryIffE5EntryESaIS4_EE6resizeEm.exit: ; preds = %._ZNSt6vectorIN7xgboost6common9WQSummaryIffE5EntryESaIS4_EE6resizeEm.exit_crit_edge, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit160
  %i.bf = phi i64 [ %.pre269, %._ZNSt6vectorIN7xgboost6common9WQSummaryIffE5EntryESaIS4_EE6resizeEm.exit_crit_edge ], [ %i.bc, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit160 ]
  %i.bg = phi ptr [ %.pre, %._ZNSt6vectorIN7xgboost6common9WQSummaryIffE5EntryESaIS4_EE6resizeEm.exit_crit_edge ], [ %i.ax, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit160 ] ; 8 uses
  %i.bh = icmp ne ptr %i.bg, null
  %i.bi = icmp eq i64 %i.bf, 0
  %i.bj = or i1 %i.bh, %i.bi
  br i1 %i.bj, label %_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit, label %bb.t, !prof !75

bb.t:                                             ; preds = %_ZNSt6vectorIN7xgboost6common9WQSummaryIffE5EntryESaIS4_EE6resizeEm.exit
  call void @_ZSt9terminatev() #32
  unreachable

_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit: ; preds = %_ZNSt6vectorIN7xgboost6common9WQSummaryIffE5EntryESaIS4_EE6resizeEm.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !287 ; 3 uses
  %i.bm = load i64, ptr %i.j, align 8, !tbaa !286 ; 2 uses
  %.idx = shl nuw nsw i64 %i.bm, 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !287 ; 3 uses
  %i.bq = load i64, ptr %i.e, align 8, !tbaa !286 ; 2 uses
  %.idx264 = shl nuw nsw i64 %i.bq, 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx264 ; 3 uses
  %i.bs = icmp ne i64 %i.bm, 0                    ; 2 uses
  %i.bt = icmp ne i64 %i.bq, 0                    ; 2 uses
  %i.bu = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %i.bu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit, %bb.y
  %.0257 = phi ptr [ %.1, %bb.y ], [ %i.bg, %_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit ] ; 8 uses
  %.087256 = phi float [ %.188, %bb.y ], [ 0.000000e+00, %_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit ] ; 2 uses
  %.089255 = phi float [ %.190, %bb.y ], [ 0.000000e+00, %_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit ] ; 2 uses
  %.091254 = phi ptr [ %.192, %bb.y ], [ %i.bp, %_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit ] ; 12 uses
  %.094253 = phi ptr [ %.195, %bb.y ], [ %i.bl, %_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit ] ; 12 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.094253, i64 12
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !293 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.091254, i64 12
  %i.by = load float, ptr %i.bx, align 4, !tbaa !293 ; 3 uses
  %i.bz = fcmp oeq float %i.bw, %i.by
  br i1 %i.bz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph
  %i.ca = getelementptr inbounds nuw i8, ptr %.094253, i64 8 ; 2 uses
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !296
  %i.cc = getelementptr inbounds nuw i8, ptr %.091254, i64 8 ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !296
  %i.ce = fadd float %i.cb, %i.cd
  %i.cf = load <2 x float>, ptr %.094253, align 4, !tbaa !77
  %i.cg = load <2 x float>, ptr %.091254, align 4, !tbaa !77
  %i.ch = fadd <2 x float> %i.cf, %i.cg
  store <2 x float> %i.ch, ptr %.0257, align 4, !tbaa !77
  %.sroa.5215.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0257, i64 8
  store float %i.ce, ptr %.sroa.5215.0..0.sroa_idx, align 4, !tbaa !77
  %.sroa.6216.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0257, i64 12
  store float %i.bw, ptr %.sroa.6216.0..0.sroa_idx, align 4, !tbaa !77
  %i.ci = load float, ptr %.094253, align 4, !tbaa !295
  %i.cj = load float, ptr %i.ca, align 4, !tbaa !296
  %i.ck = fadd float %i.ci, %i.cj
  %i.cl = load float, ptr %.091254, align 4, !tbaa !295
  %i.cm = load float, ptr %i.cc, align 4, !tbaa !296
  %i.cn = fadd float %i.cl, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %.094253, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %.091254, i64 16
  br label %bb.y

bb.v:                                             ; preds = %.lr.ph
  %i.cq = fcmp olt float %i.bw, %i.by
  %.sroa.5211.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0257, i64 8 ; 2 uses
  %.sroa.6212.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0257, i64 12 ; 2 uses
  br i1 %i.cq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cr = getelementptr inbounds nuw i8, ptr %.091254, i64 4
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !294
  %i.ct = getelementptr inbounds nuw i8, ptr %.091254, i64 8
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !296
  %i.cv = fsub float %i.cs, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %.094253, i64 8 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !296
  %i.cy = load <2 x float>, ptr %.094253, align 4, !tbaa !77
  %i.cz = insertelement <2 x float> poison, float %.087256, i64 0
  %i.da = insertelement <2 x float> %i.cz, float %i.cv, i64 1
  %i.db = fadd <2 x float> %i.da, %i.cy
  store <2 x float> %i.db, ptr %.0257, align 4, !tbaa !77
  store float %i.cx, ptr %.sroa.5211.0..0.sroa_idx, align 4, !tbaa !77
  store float %i.bw, ptr %.sroa.6212.0..0.sroa_idx, align 4, !tbaa !77
  %i.dc = load float, ptr %.094253, align 4, !tbaa !295
  %i.dd = load float, ptr %i.cw, align 4, !tbaa !296
  %i.de = fadd float %i.dc, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %.094253, i64 16
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.dg = getelementptr inbounds nuw i8, ptr %.094253, i64 4
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !294
  %i.di = getelementptr inbounds nuw i8, ptr %.094253, i64 8
  %i.dj = load float, ptr %i.di, align 4, !tbaa !296
  %i.dk = fsub float %i.dh, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %.091254, i64 8 ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !296
  %i.dn = load <2 x float>, ptr %.091254, align 4, !tbaa !77
  %i.do = insertelement <2 x float> poison, float %.089255, i64 0
  %i.dp = insertelement <2 x float> %i.do, float %i.dk, i64 1
  %i.dq = fadd <2 x float> %i.dp, %i.dn
  store <2 x float> %i.dq, ptr %.0257, align 4, !tbaa !77
  store float %i.dm, ptr %.sroa.5211.0..0.sroa_idx, align 4, !tbaa !77
  store float %i.by, ptr %.sroa.6212.0..0.sroa_idx, align 4, !tbaa !77
  %i.dr = load float, ptr %.091254, align 4, !tbaa !295
  %i.ds = load float, ptr %i.dl, align 4, !tbaa !296
  %i.dt = fadd float %i.dr, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %.091254, i64 16
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.u
  %.195 = phi ptr [ %i.co, %bb.u ], [ %i.df, %bb.w ], [ %.094253, %bb.x ] ; 3 uses
  %.192 = phi ptr [ %i.cp, %bb.u ], [ %.091254, %bb.w ], [ %i.du, %bb.x ] ; 3 uses
  %.190 = phi float [ %i.ck, %bb.u ], [ %i.de, %bb.w ], [ %.089255, %bb.x ] ; 2 uses
  %.188 = phi float [ %i.cn, %bb.u ], [ %.087256, %bb.w ], [ %i.dt, %bb.x ] ; 2 uses
  %.1 = getelementptr inbounds nuw i8, ptr %.0257, i64 16 ; 2 uses
  %i.dv = icmp ne ptr %.195, %i.bn                ; 2 uses
  %i.dw = icmp ne ptr %.192, %i.br                ; 2 uses
  %i.dx = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %i.dx, label %.lr.ph, label %._crit_edge, !llvm.loop !1051

._crit_edge:                                      ; preds = %bb.y, %_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit
  %.094.lcssa = phi ptr [ %i.bl, %_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit ], [ %.195, %bb.y ]
  %.091.lcssa = phi ptr [ %i.bp, %_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit ], [ %.192, %bb.y ]
  %.089.lcssa = phi float [ 0.000000e+00, %_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit ], [ %.190, %bb.y ]
  %.087.lcssa = phi float [ 0.000000e+00, %_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit ], [ %.188, %bb.y ]
  %.0.lcssa = phi ptr [ %i.bg, %_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit ], [ %.1, %bb.y ] ; 2 uses
  %.lcssa252 = phi i1 [ %i.bs, %_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit ], [ %i.dv, %bb.y ]
  %.lcssa251 = phi i1 [ %i.bt, %_ZN7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEC2EPS4_m.exit ], [ %i.dw, %bb.y ]
  br i1 %.lcssa252, label %bb.z, label %.loopexit249

bb.z:                                             ; preds = %._crit_edge
  %i.dy = getelementptr inbounds i8, ptr %i.br, i64 -12
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !294
  %i.ea = insertelement <2 x float> poison, float %.087.lcssa, i64 0
  %i.eb = insertelement <2 x float> %i.ea, float %i.dz, i64 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %bb.z
  %.296 = phi ptr [ %.094.lcssa, %bb.z ], [ %i.eh, %bb.aa ] ; 3 uses
  %.2 = phi ptr [ %.0.lcssa, %bb.z ], [ %i.eg, %bb.aa ] ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.296, i64 8
  %i.ed = load <2 x float>, ptr %.296, align 4, !tbaa !77
  %i.ee = fadd <2 x float> %i.eb, %i.ed
  %.sroa.5203.0..2.sroa_idx = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.ef = load <2 x float>, ptr %i.ec, align 4, !tbaa !77
  store <2 x float> %i.ee, ptr %.2, align 4, !tbaa !77
  store <2 x float> %i.ef, ptr %.sroa.5203.0..2.sroa_idx, align 4, !tbaa !77
  %i.eg = getelementptr inbounds nuw i8, ptr %.2, i64 16 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.296, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.eh, %i.bn
  br i1 %.not, label %.loopexit249, label %bb.aa, !llvm.loop !1052

.loopexit249:                                     ; preds = %bb.aa, %._crit_edge
  %.3 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.eg, %bb.aa ] ; 2 uses
  br i1 %.lcssa251, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %.loopexit249
  %i.ei = getelementptr inbounds i8, ptr %i.bn, i64 -12
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !294
  %i.ek = insertelement <2 x float> poison, float %.089.lcssa, i64 0
  %i.el = insertelement <2 x float> %i.ek, float %i.ej, i64 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %.293 = phi ptr [ %.091.lcssa, %bb.ab ], [ %i.er, %bb.ac ] ; 3 uses
  %.4 = phi ptr [ %.3, %bb.ab ], [ %i.eq, %bb.ac ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.293, i64 8
  %i.en = load <2 x float>, ptr %.293, align 4, !tbaa !77
  %i.eo = fadd <2 x float> %i.el, %i.en
  %.sroa.5.0..4.sroa_idx = getelementptr inbounds nuw i8, ptr %.4, i64 8
  %i.ep = load <2 x float>, ptr %i.em, align 4, !tbaa !77
  store <2 x float> %i.eo, ptr %.4, align 4, !tbaa !77
  store <2 x float> %i.ep, ptr %.sroa.5.0..4.sroa_idx, align 4, !tbaa !77
  %i.eq = getelementptr inbounds nuw i8, ptr %.4, i64 16 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.293, i64 16 ; 2 uses
  %.not118 = icmp eq ptr %i.er, %i.br
  br i1 %.not118, label %.loopexit, label %bb.ac, !llvm.loop !1053

.loopexit:                                        ; preds = %bb.ac, %.loopexit249
  %.5 = phi ptr [ %.3, %.loopexit249 ], [ %i.eq, %bb.ac ] ; 2 uses
  %i.es = ptrtoint ptr %.5 to i64
  %i.et = ptrtoint ptr %i.bg to i64
  %i.eu = sub i64 %i.es, %i.et                    ; 3 uses
  %i.ev = ashr exact i64 %i.eu, 4                 ; 3 uses
  %.not.i162 = icmp eq ptr %.5, %i.bg             ; 2 uses
  br i1 %.not.i162, label %_ZNK7xgboost6common9WQSummaryIffE8FixErrorEPfS3_S3_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit, %bb.ai
  %.0236 = phi float [ %.1237, %bb.ai ], [ 0.000000e+00, %.loopexit ] ; 3 uses
  %.0233 = phi float [ %.1234, %bb.ai ], [ 0.000000e+00, %.loopexit ] ; 3 uses
  %.0230 = phi float [ %.1231, %bb.ai ], [ 0.000000e+00, %.loopexit ] ; 3 uses
  %.060.i = phi i64 [ %i.fp, %bb.ai ], [ 0, %.loopexit ] ; 2 uses
  %.04459.i = phi float [ %i.fo, %bb.ai ], [ 0.000000e+00, %.loopexit ] ; 5 uses
  %.04558.i = phi float [ %i.fb, %bb.ai ], [ 0.000000e+00, %.loopexit ] ; 5 uses
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %.060.i ; 4 uses
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !295 ; 2 uses
  %i.ey = fcmp olt float %i.ex, %.04558.i
  br i1 %i.ey, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i
  store float %.04558.i, ptr %i.ew, align 4, !tbaa !295
  %i.ez = fsub float %.04558.i, %.04558.i         ; 2 uses
  %i.fa = fcmp olt float %.0236, %i.ez
  %.sroa.speculated55.i = select i1 %i.fa, float %i.ez, float %.0236
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.i
  %.1237 = phi float [ %.sroa.speculated55.i, %bb.ad ], [ %.0236, %.lr.ph.i ] ; 2 uses
  %i.fb = phi float [ %.04558.i, %bb.ad ], [ %i.ex, %.lr.ph.i ] ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 4 ; 3 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !294 ; 2 uses
  %i.fe = fcmp olt float %i.fd, %.04459.i
  br i1 %i.fe, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store float %.04459.i, ptr %i.fc, align 4, !tbaa !294
  %i.ff = fsub float %.04459.i, %.04459.i         ; 2 uses
  %i.fg = fcmp olt float %.0233, %i.ff
  %.sroa.speculated51.i = select i1 %i.fg, float %i.ff, float %.0233
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.1234 = phi float [ %.sroa.speculated51.i, %bb.af ], [ %.0233, %bb.ae ] ; 2 uses
  %i.fh = phi float [ %.04459.i, %bb.af ], [ %i.fd, %bb.ae ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !296
  %i.fk = fadd float %i.fb, %i.fj                 ; 5 uses
  %i.fl = fcmp olt float %i.fh, %i.fk
  br i1 %i.fl, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store float %i.fk, ptr %i.fc, align 4, !tbaa !294
  %i.fm = fsub float %i.fk, %i.fk                 ; 2 uses
  %i.fn = fcmp olt float %.0230, %i.fm
  %.sroa.speculated.i = select i1 %i.fn, float %i.fm, float %.0230
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.1231 = phi float [ %.sroa.speculated.i, %bb.ah ], [ %.0230, %bb.ag ] ; 2 uses
  %i.fo = phi float [ %i.fk, %bb.ah ], [ %i.fh, %bb.ag ]
  %i.fp = add nuw i64 %.060.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fp, %i.ev
  br i1 %exitcond.not.i, label %_ZNK7xgboost6common9WQSummaryIffE8FixErrorEPfS3_S3_.exit, label %.lr.ph.i, !llvm.loop !1054

_ZNK7xgboost6common9WQSummaryIffE8FixErrorEPfS3_S3_.exit: ; preds = %bb.ai, %.loopexit
  %.2238 = phi float [ 0.000000e+00, %.loopexit ], [ %.1237, %bb.ai ] ; 2 uses
  %.2235 = phi float [ 0.000000e+00, %.loopexit ], [ %.1234, %bb.ai ] ; 2 uses
  %.2232 = phi float [ 0.000000e+00, %.loopexit ], [ %.1231, %bb.ai ] ; 2 uses
  %i.fq = fcmp ogt float %.2238, 1.000000e+01
  %i.fr = fcmp ogt float %.2235, 1.000000e+01
  %or.cond = select i1 %i.fq, i1 true, i1 %i.fr
  %i.fs = fcmp ogt float %.2232, 1.000000e+01
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.fs
  br i1 %or.cond3, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %_ZNK7xgboost6common9WQSummaryIffE8FixErrorEPfS3_S3_.exit
  %i.ft = invoke noundef zeroext i1 @_ZN7xgboost13ConsoleLogger9ShouldLogENS0_12LogVerbosityE(i32 noundef 2)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.ft, label %.noexc.i, label %bb.ar

.noexc.i:                                         ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.fu = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.fu, ptr %9, align 8, !tbaa !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 53, ptr %i.a, align 8, !tbaa !78
  %i.fv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc163 unwind label %bb.an ; 3 uses

.noexc163:                                        ; preds = %.noexc.i
  store ptr %i.fv, ptr %9, align 8, !tbaa !81
  %i.fw = load i64, ptr %i.a, align 8, !tbaa !78  ; 3 uses
  store i64 %i.fw, ptr %i.fu, align 8, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(53) %i.fv, ptr noundef nonnull align 1 dereferenceable(53) @.str.17, i64 53, i1 false)
  %i.fx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.fw, ptr %i.fx, align 8, !tbaa !82
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fw
  store i8 0, ptr %i.fy, align 1, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  invoke void @_ZN7xgboost13ConsoleLoggerC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS0_12LogVerbosityE(ptr noundef nonnull align 8 dereferenceable(380) %8, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 427, i32 noundef 2)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %.noexc163
  %i.fz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.86, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit165 unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit165: ; preds = %bb.al
  %i.ga = fpext float %.2238 to double
  %i.gb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %8, double noundef %i.ga)
          to label %_ZNSolsEf.exit unwind label %bb.ap ; 2 uses

_ZNSolsEf.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit165
  %i.gc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gb, ptr noundef nonnull @.str.87, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168 unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168: ; preds = %_ZNSolsEf.exit
  %i.gd = fpext float %.2235 to double
  %i.ge = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gb, double noundef %i.gd)
          to label %_ZNSolsEf.exit170 unwind label %bb.ap ; 2 uses

_ZNSolsEf.exit170:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168
  %i.gf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ge, ptr noundef nonnull @.str.88, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit172 unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit172: ; preds = %_ZNSolsEf.exit170
  %i.gg = fpext float %.2232 to double
  %i.gh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ge, double noundef %i.gg)
          to label %_ZNSolsEf.exit174 unwind label %bb.ap ; 0 uses

_ZNSolsEf.exit174:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit172
  call void @_ZN7xgboost13ConsoleLoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %8) #15
  %i.gi = load ptr, ptr %9, align 8, !tbaa !81    ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.fu
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEf.exit174
  %i.gk = load i64, ptr %i.fu, align 8, !tbaa !83
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEf.exit174, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.ar

bb.am:                                            ; preds = %bb.s, %bb.aj
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.an:                                            ; preds = %.noexc.i
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

bb.ao:                                            ; preds = %.noexc163
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit172, %_ZNSolsEf.exit170, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168, %_ZNSolsEf.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit165, %bb.al
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost13ConsoleLoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %8) #15
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn119 = phi { ptr, i32 } [ %i.gp, %bb.ap ], [ %i.go, %bb.ao ] ; 2 uses
  %i.gq = load ptr, ptr %9, align 8, !tbaa !81    ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.fu
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %bb.aq
  %i.gs = load i64, ptr %i.fu, align 8, !tbaa !83
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175, %bb.an
  %.pn119.pn = phi { ptr, i32 } [ %i.gn, %bb.an ], [ %.pn119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175 ], [ %.pn119, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.bc

bb.ar:                                            ; preds = %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK7xgboost6common9WQSummaryIffE8FixErrorEPfS3_S3_.exit
  %i.gu = load i64, ptr %i.j, align 8, !tbaa !286
  %i.gv = load i64, ptr %i.e, align 8, !tbaa !286
  %i.gw = add i64 %i.gv, %i.gu
  %.not122 = icmp ugt i64 %i.ev, %i.gw
end_hunk_0
