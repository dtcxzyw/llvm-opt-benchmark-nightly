Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/updater_approx?download=true
inline.NumInlined: 9700
inline.NumDeleted: 3289
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN7xgboost4tree19GlobalApproxBuilder10UpdateTreeEPNS_7DMatrixERKSt6vectorINS_6detail20GradientPairInternalIfEESaIS7_EENS_6common4SpanIfLm18446744073709551615EEEPNS_7RegTreeEPNS_16HostDeviceVectorIiEE:bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ec = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ed = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.ee = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %26, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %29, i64 4
  %i.ej = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %29, i64 12
  %i.el = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %29, i64 24 ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %29, i64 56
  %i.eo = getelementptr inbounds nuw i8, ptr %30, i64 4
  %i.ep = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %30, i64 12
  %i.er = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %30, i64 24 ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %30, i64 56
  %i.eu = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 8 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %29, i64 32 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %29, i64 48
  %i.ey = getelementptr inbounds nuw i8, ptr %30, i64 32 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %30, i64 48
  %i.fa = getelementptr inbounds nuw i8, ptr %30, i64 40 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %29, i64 40 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.fd = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 6 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.fg = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 6 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %20, i64 30
  %i.fm = getelementptr inbounds nuw i8, ptr %26, i64 30
  %i.fn = getelementptr inbounds nuw i8, ptr %31, i64 30
  %i.fo = getelementptr inbounds nuw i8, ptr %32, i64 30
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph457, %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EED2Ev.exit268
  %i.fp = phi ptr [ %i.cm, %.lr.ph457 ], [ %i.wi, %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EED2Ev.exit268 ]
  %i.fq = phi ptr [ %i.cl, %.lr.ph457 ], [ %i.wh, %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EED2Ev.exit268 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  br label %bb.p

._crit_edge.i.i:                                  ; preds = %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit
  %i.fr = load ptr, ptr %i.cw, align 8, !tbaa !310
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  store ptr %i.cx, ptr %20, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.cx, ptr noundef nonnull align 1 dereferenceable(14) @.str.49, i64 14, i1 false)
  store i64 14, ptr %i.cy, align 8, !tbaa !59
  store i8 0, ptr %i.fl, align 2, !tbaa !66
  invoke void @_ZN7xgboost6common7Monitor5StartERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.fr, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.af unwind label %bb.bj

bb.k:                                             ; preds = %bb.e
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost4tree10TrainParamD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %15) #21
  br label %bb.el

bb.l:                                             ; preds = %_ZN7xgboost4tree10TrainParamD2Ev.exit
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7xgboost4tree14CPUExpandEntryD2Ev.exit116

bb.m:                                             ; preds = %bb.h
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !306 ; 3 uses
  %.not.i.i.i.i.i115 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i.i.i115, label %_ZN7xgboost4tree14CPUExpandEntryD2Ev.exit116, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fx = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !307
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fw to i64
  %i.gb = sub i64 %i.fz, %i.ga
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.gb) #37
  br label %_ZN7xgboost4tree14CPUExpandEntryD2Ev.exit116

_ZN7xgboost4tree14CPUExpandEntryD2Ev.exit116:     ; preds = %bb.n, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ft, %bb.l ], [ %i.fu, %bb.m ], [ %i.fu, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %bb.ek

bb.o:                                             ; preds = %_ZN7xgboost4tree14CPUExpandEntryD2Ev.exit
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

bb.p:                                             ; preds = %bb.j, %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit
  %.sroa.0300.0454 = phi ptr [ %i.fq, %bb.j ], [ %i.ix, %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit ] ; 15 uses
  invoke void @_ZN7xgboost4tree13HistEvaluator14ApplyTreeSplitERKNS0_14CPUExpandEntryEPNS_7RegTreeE(ptr noundef nonnull align 8 dereferenceable(208) %i.co, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0300.0454, ptr noundef nonnull %5)
          to label %bb.q unwind label %.loopexit318

bb.q:                                             ; preds = %bb.p
  %i.gd = load ptr, ptr %i.cp, align 8, !tbaa !312 ; 8 uses
  %i.ge = load ptr, ptr %i.cq, align 8, !tbaa !313
  %.not.i117 = icmp eq ptr %i.gd, %i.ge
  br i1 %.not.i117, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gf = load i64, ptr %.sroa.0300.0454, align 8
  store i64 %i.gf, ptr %i.gd, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0300.0454, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.gg, ptr noundef nonnull align 8 dereferenceable(80) %i.gh, i64 12, i1 false)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 24 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0300.0454, i64 24 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0300.0454, i64 32 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !314 ; 2 uses
  %i.gm = load ptr, ptr %i.gj, align 8, !tbaa !306 ; 2 uses
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gi, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gl, %i.gm
  br i1 %.not.i.i.i.i.i.i.i, label %.noexc119, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gq = icmp ugt i64 %i.gp, 9223372036854775804
  br i1 %i.gq, label %.noexc.i.i.i.i.i.invoke, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !123

.noexc.i.i.i.i.i.invoke:                          ; preds = %bb.aa, %bb.s
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc.i.i.i.i.i.cont unwind label %.loopexit.split-lp319

.noexc.i.i.i.i.i.cont:                            ; preds = %.noexc.i.i.i.i.i.invoke
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.s
  %i.gr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gp) #36
          to label %.noexc119 unwind label %.loopexit318

.noexc119:                                        ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i, %bb.r
  %i.gs = phi ptr [ null, %bb.r ], [ %i.gr, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i ] ; 6 uses
  store ptr %i.gs, ptr %i.gi, align 8, !tbaa !306
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gd, i64 32 ; 2 uses
  store ptr %i.gs, ptr %i.gt, align 8, !tbaa !314
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gp
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  store ptr %i.gu, ptr %i.gv, align 8, !tbaa !307
  %i.gw = load ptr, ptr %i.gj, align 8, !tbaa !315 ; 3 uses
  %i.gx = load ptr, ptr %i.gk, align 8, !tbaa !315
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = ptrtoint ptr %i.gw to i64
  %i.ha = sub i64 %i.gy, %i.gz                    ; 4 uses
  %i.hb = icmp sgt i64 %i.ha, 4
  br i1 %i.hb, label %bb.t, label %bb.u, !prof !140

bb.t:                                             ; preds = %.noexc119
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.gs, ptr align 4 %i.gw, i64 %i.ha, i1 false)
  br label %_ZN7xgboost4tree14CPUExpandEntryC2ERKS1_.exit.i

bb.u:                                             ; preds = %.noexc119
  %i.hc = icmp eq i64 %i.ha, 4
  br i1 %i.hc, label %bb.v, label %_ZN7xgboost4tree14CPUExpandEntryC2ERKS1_.exit.i

bb.v:                                             ; preds = %bb.u
  %i.hd = load i32, ptr %i.gw, align 4, !tbaa !122
  store i32 %i.hd, ptr %i.gs, align 4, !tbaa !122
  br label %_ZN7xgboost4tree14CPUExpandEntryC2ERKS1_.exit.i

_ZN7xgboost4tree14CPUExpandEntryC2ERKS1_.exit.i:  ; preds = %bb.v, %bb.u, %bb.t
  %i.he = getelementptr inbounds i8, ptr %i.gs, i64 %i.ha
  store ptr %i.he, ptr %i.gt, align 8, !tbaa !314
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gd, i64 48
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0300.0454, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hf, ptr noundef nonnull align 8 dereferenceable(40) %i.hg, i64 40, i1 false)
  %i.hh = load ptr, ptr %i.cp, align 8, !tbaa !312
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 88
  store ptr %i.hi, ptr %i.cp, align 8, !tbaa !312
  br label %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EE9push_backERKS2_.exit

bb.w:                                             ; preds = %bb.q
  invoke void @_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr %i.gd, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0300.0454)
          to label %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EE9push_backERKS2_.exit unwind label %.loopexit318

_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZN7xgboost4tree14CPUExpandEntryC2ERKS1_.exit.i, %bb.w
  %i.hj = load i32, ptr %i.cr, align 4, !tbaa !1019 ; 2 uses
  %i.hk = icmp sgt i32 %i.hj, 0
  br i1 %i.hk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EE9push_backERKS2_.exit
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0300.0454, i64 4
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !324
  %i.hn = add nsw i32 %i.hm, 1
  %.not.i121 = icmp slt i32 %i.hn, %i.hj
  br i1 %.not.i121, label %bb.y, label %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit

bb.y:                                             ; preds = %bb.x, %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EE9push_backERKS2_.exit
  %i.ho = load i32, ptr %i.cs, align 8, !tbaa !1020 ; 2 uses
  %i.hp = icmp slt i32 %i.ho, 1
  %i.hq = load i32, ptr %i.ct, align 8
  %.not5.i = icmp slt i32 %i.hq, %i.ho
  %or.cond = select i1 %i.hp, i1 true, i1 %.not5.i
  br i1 %or.cond, label %_ZN7xgboost4tree6DriverINS0_14CPUExpandEntryEE12IsChildValidERKS2_.exit, label %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit

_ZN7xgboost4tree6DriverINS0_14CPUExpandEntryEE12IsChildValidERKS2_.exit: ; preds = %bb.y
  %i.hr = load ptr, ptr %i.cu, align 8, !tbaa !312 ; 8 uses
  %i.hs = load ptr, ptr %i.cv, align 8, !tbaa !313
  %.not.i122 = icmp eq ptr %i.hr, %i.hs
  br i1 %.not.i122, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %_ZN7xgboost4tree6DriverINS0_14CPUExpandEntryEE12IsChildValidERKS2_.exit
  %i.ht = load i64, ptr %.sroa.0300.0454, align 8
  store i64 %i.ht, ptr %i.hr, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0300.0454, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.hu, ptr noundef nonnull align 8 dereferenceable(80) %i.hv, i64 12, i1 false)
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 24 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0300.0454, i64 24 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0300.0454, i64 32 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !314 ; 2 uses
  %i.ia = load ptr, ptr %i.hx, align 8, !tbaa !306 ; 2 uses
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = sub i64 %i.ib, %i.ic                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i123 = icmp eq ptr %i.hz, %i.ia
  br i1 %.not.i.i.i.i.i.i.i123, label %.noexc128, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ie = icmp ugt i64 %i.id, 9223372036854775804
  br i1 %i.ie, label %.noexc.i.i.i.i.i.invoke, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i124, !prof !123

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i124: ; preds = %bb.aa
  %i.if = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.id) #36
          to label %.noexc128 unwind label %.loopexit318

.noexc128:                                        ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i124, %bb.z
  %i.ig = phi ptr [ null, %bb.z ], [ %i.if, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i124 ] ; 6 uses
  store ptr %i.ig, ptr %i.hw, align 8, !tbaa !306
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hr, i64 32 ; 2 uses
  store ptr %i.ig, ptr %i.ih, align 8, !tbaa !314
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.id
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hr, i64 40
  store ptr %i.ii, ptr %i.ij, align 8, !tbaa !307
  %i.ik = load ptr, ptr %i.hx, align 8, !tbaa !315 ; 3 uses
  %i.il = load ptr, ptr %i.hy, align 8, !tbaa !315
  %i.im = ptrtoint ptr %i.il to i64
  %i.in = ptrtoint ptr %i.ik to i64
  %i.io = sub i64 %i.im, %i.in                    ; 4 uses
  %i.ip = icmp sgt i64 %i.io, 4
  br i1 %i.ip, label %bb.ab, label %bb.ac, !prof !140

bb.ab:                                            ; preds = %.noexc128
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ig, ptr align 4 %i.ik, i64 %i.io, i1 false)
  br label %_ZN7xgboost4tree14CPUExpandEntryC2ERKS1_.exit.i125

bb.ac:                                            ; preds = %.noexc128
  %i.iq = icmp eq i64 %i.io, 4
  br i1 %i.iq, label %bb.ad, label %_ZN7xgboost4tree14CPUExpandEntryC2ERKS1_.exit.i125

bb.ad:                                            ; preds = %bb.ac
  %i.ir = load i32, ptr %i.ik, align 4, !tbaa !122
  store i32 %i.ir, ptr %i.ig, align 4, !tbaa !122
  br label %_ZN7xgboost4tree14CPUExpandEntryC2ERKS1_.exit.i125

_ZN7xgboost4tree14CPUExpandEntryC2ERKS1_.exit.i125: ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.is = getelementptr inbounds i8, ptr %i.ig, i64 %i.io
  store ptr %i.is, ptr %i.ih, align 8, !tbaa !314
  %i.it = getelementptr inbounds nuw i8, ptr %i.hr, i64 48
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0300.0454, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.it, ptr noundef nonnull align 8 dereferenceable(40) %i.iu, i64 40, i1 false)
  %i.iv = load ptr, ptr %i.cu, align 8, !tbaa !312
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 88
  store ptr %i.iw, ptr %i.cu, align 8, !tbaa !312
  br label %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit

bb.ae:                                            ; preds = %_ZN7xgboost4tree6DriverINS0_14CPUExpandEntryEE12IsChildValidERKS2_.exit
  invoke void @_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr %i.hr, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0300.0454)
          to label %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit unwind label %.loopexit318

.loopexit318:                                     ; preds = %bb.p, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i, %bb.w, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i124, %bb.ae
  %lpad.loopexit320 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

.loopexit.split-lp319:                            ; preds = %.noexc.i.i.i.i.i.invoke
  %lpad.loopexit.split-lp321 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit: ; preds = %bb.ae, %bb.y, %bb.x, %_ZN7xgboost4tree14CPUExpandEntryC2ERKS1_.exit.i125
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0300.0454, i64 88 ; 2 uses
  %.not306.a = icmp eq ptr %i.ix, %i.fp
  br i1 %.not306.a, label %._crit_edge.i.i, label %bb.p

bb.af:                                            ; preds = %._crit_edge.i.i
  %i.iy = load ptr, ptr %20, align 8, !tbaa !60   ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.cx
  br i1 %i.iz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.af
  %i.ja = load i64, ptr %i.cx, align 8, !tbaa !66
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jb) #37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  %i.jc = load ptr, ptr %i.cz, align 8, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  %i.jd = load ptr, ptr %0, align 8, !tbaa !304
  %i.je = getelementptr i8, ptr %i.jd, i64 20
  %.val = load i32, ptr %i.je, align 4, !tbaa !326
  store i32 %.val, ptr %22, align 8, !tbaa !330, !alias.scope !1021
  store i64 %3, ptr %i.da, align 8, !tbaa !76, !alias.scope !1021
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !331, !alias.scope !1021
  store i8 0, ptr %i.db, align 8, !tbaa !332, !alias.scope !1021
  store i8 0, ptr %i.dc, align 1, !tbaa !333, !alias.scope !1021
  store double +qnan, ptr %i.dd, align 8, !tbaa !334, !alias.scope !1021
  store i8 1, ptr %i.de, align 8, !tbaa !335, !alias.scope !1021
  store i32 3, ptr %i.df, align 4, !tbaa !336, !alias.scope !1021
  %i.jf = load ptr, ptr %1, align 8, !tbaa !87, !noalias !1022
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 104
  %i.jh = load ptr, ptr %i.jg, align 8, !noalias !1022
  invoke void %i.jh(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::BatchSet") align 8 %21, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.jc, ptr noundef nonnull align 8 dereferenceable(48) %22)
          to label %_ZN7xgboost7DMatrix10GetBatchesINS_16GHistIndexMatrixEEENS_8BatchSetIT_EEPKNS_7ContextERKNS_10BatchParamE.exit unwind label %bb.bk, !inline_history !10

_ZN7xgboost7DMatrix10GetBatchesINS_16GHistIndexMatrixEEENS_8BatchSetIT_EEPKNS_7ContextERKNS_10BatchParamE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  %i.ji = load ptr, ptr %i.dh, align 8, !tbaa !95, !noalias !1023 ; 2 uses
  %i.jj = load <2 x ptr>, ptr %21, align 16, !tbaa !82, !noalias !1023
  store <2 x ptr> %i.jj, ptr %23, align 16, !tbaa !82, !alias.scope !1023
  %.not.i.i.i.i.i131 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i.i.i131, label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE5beginEv.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZN7xgboost7DMatrix10GetBatchesINS_16GHistIndexMatrixEEENS_8BatchSetIT_EEPKNS_7ContextERKNS_10BatchParamE.exit
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 8 ; 3 uses
  %i.jl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66, !noalias !1023
  %.not.i.i.i.i.i.i = icmp eq i8 %i.jl, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jm = load i32, ptr %i.jk, align 4, !tbaa !122, !noalias !1023
  %i.jn = add nsw i32 %i.jm, 1
  store i32 %i.jn, ptr %i.jk, align 4, !tbaa !122, !noalias !1023
  br label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE5beginEv.exit

bb.ai:                                            ; preds = %bb.ag
  %i.jo = atomicrmw volatile add ptr %i.jk, i32 1 acq_rel, align 4, !noalias !1023 ; 0 uses
  br label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE5beginEv.exit

_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE5beginEv.exit: ; preds = %_ZN7xgboost7DMatrix10GetBatchesINS_16GHistIndexMatrixEEENS_8BatchSetIT_EEPKNS_7ContextERKNS_10BatchParamE.exit, %bb.ah, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false), !alias.scope !1024
  invoke void @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_16GHistIndexMatrixEEELN9__gnu_cxx12_Lock_policyE2EE5resetIS3_EENSt9enable_ifIXsr21__sp_is_constructibleIS3_T_EE5valueEvE4typeEPS9_(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef null)
          to label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE3endEv.exit.preheader unwind label %bb.aj

_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE3endEv.exit.preheader: ; preds = %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE5beginEv.exit
  %.pre = load ptr, ptr %23, align 16, !tbaa !339
  br label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE3endEv.exit

bb.aj:                                            ; preds = %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE5beginEv.exit
  %i.jp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_16GHistIndexMatrixEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %24) #21
  br label %.body

_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE3endEv.exit: ; preds = %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE3endEv.exit.preheader, %bb.cd
  %.pre.i284 = phi ptr [ %i.mf, %bb.cd ], [ %.pre, %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE3endEv.exit.preheader ] ; 3 uses
  %.078 = phi i64 [ %i.nn, %bb.cd ], [ 0, %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE3endEv.exit.preheader ] ; 4 uses
  %.not.i280 = icmp eq ptr %.pre.i284, null
  br i1 %.not.i280, label %bb.ak, label %bb.an, !prof !123

bb.ak:                                            ; preds = %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE3endEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.jq = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc285 unwind label %bb.bl

.noexc285:                                        ; preds = %bb.ak
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.jq, ptr noundef nonnull @.str.92, i32 noundef 482)
          to label %.noexc286 unwind label %bb.bl

.noexc286:                                        ; preds = %.noexc285
  %i.jr = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i281 unwind label %bb.al ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i281: ; preds = %.noexc286
  %i.js = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jr, ptr noundef nonnull @.str.93, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i282 unwind label %bb.al ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i282: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i281
  %i.jt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jr, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2.i283 unwind label %bb.al ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2.i283: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i282
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc287 unwind label %bb.bl

.noexc287:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2.i283
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.an

bb.al:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i282, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i281, %.noexc286
  %i.ju = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %.body172

bb.an:                                            ; preds = %.noexc287, %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE3endEv.exit
  %i.jv = load ptr, ptr %.pre.i284, align 8, !tbaa !87
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 32
  %i.jx = load ptr, ptr %i.jw, align 8
  %i.jy = invoke noundef zeroext i1 %i.jx(ptr noundef nonnull align 8 dereferenceable(8) %.pre.i284)
          to label %bb.ap unwind label %bb.bl, !inline_history !1025

bb.ao:                                            ; preds = %bb.al
  %i.jz = landingpad { ptr, i32 }
          catch ptr null
  %i.ka = extractvalue { ptr, i32 } %i.jz, 0
  call void @__clang_call_terminate(ptr %i.ka) #38
  unreachable

bb.ap:                                            ; preds = %bb.an
  br i1 %i.jy, label %bb.aq, label %bb.bm

bb.aq:                                            ; preds = %bb.ap
  %i.kb = load ptr, ptr %i.ee, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.kb, null
  br i1 %.not.i.i.i, label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8 ; 4 uses
  %i.kd = load atomic i64, ptr %i.kc acquire, align 8 ; 2 uses
  %i.ke = icmp eq i64 %i.kd, 4294967297
  %i.kf = trunc i64 %i.kd to i32                  ; 2 uses
  br i1 %i.ke, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.kc, align 8, !tbaa !91
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kb, i64 12
  store i32 0, ptr %i.kg, align 4, !tbaa !92
  %i.kh = load ptr, ptr %i.kb, align 8, !tbaa !87
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kj = load ptr, ptr %i.ki, align 8
  call void %i.kj(ptr noundef nonnull align 8 dereferenceable(16) %i.kb) #21, !inline_history !11
  %i.kk = load ptr, ptr %i.kb, align 8, !tbaa !87
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.km = load ptr, ptr %i.kl, align 8
  call void %i.km(ptr noundef nonnull align 8 dereferenceable(16) %i.kb) #21, !inline_history !11
  br label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit

bb.at:                                            ; preds = %bb.ar
  %i.kn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i133 = icmp eq i8 %i.kn, 0
  br i1 %.not.i.i.i.i133, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ko = add nsw i32 %i.kf, -1
  store i32 %i.ko, ptr %i.kc, align 8, !tbaa !122
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.kp = atomicrmw volatile add ptr %i.kc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i.i = phi i32 [ %i.kf, %bb.au ], [ %i.kp, %bb.av ]
  %i.kq = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.kq, label %bb.aw, label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit, !prof !123

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kb) #21
  br label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit

_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit: ; preds = %bb.aq, %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  %i.kr = load ptr, ptr %i.dg, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i134 = icmp eq ptr %i.kr, null
  br i1 %.not.i.i.i134, label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit138, label %bb.ax

bb.ax:                                            ; preds = %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8 ; 4 uses
  %i.kt = load atomic i64, ptr %i.ks acquire, align 8 ; 2 uses
  %i.ku = icmp eq i64 %i.kt, 4294967297
end_hunk_0
