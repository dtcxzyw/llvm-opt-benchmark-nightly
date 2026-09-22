Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_ma?download=true
inline.NumInlined: 4528
inline.NumDeleted: 2209
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN3jxl11TreeSamples21PreQuantizePropertiesERKNSt3__15arrayINS2_IjLm2EEELm2EEERKNS1_6vectorINS_21ModularMultiplierInfoENS1_9allocatorIS8_EEEERKNS7_IjNS9_IjEEEESH_RNS7_IiNS9_IiEEEESK_m:bb.a
  %.ph = phi ptr [ %i.qs, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.rb, %middle.block602 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.px, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.rc, %middle.block602 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader611, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.rj = phi ptr [ %i.rm, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader611 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.rk, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader611 ]
  %i.rk = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i.i, i64 -4 ; 3 uses
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !21, !noalias !681
  %i.rm = getelementptr inbounds i8, ptr %i.rj, i64 -4 ; 3 uses
  store i32 %i.rl, ptr %i.rm, align 4, !tbaa !21, !noalias !681
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.rk, %i.pv
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !659

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block602, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i.i
  %storemerge.i.i.i = phi ptr [ %i.qs, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i.i ], [ %i.rb, %middle.block602 ], [ %i.rm, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  store ptr %storemerge.i.i.i, ptr %22, align 8, !tbaa !86, !alias.scope !680
  store ptr %i.qt, ptr %i.ed, align 8, !tbaa !86, !alias.scope !680
  call void @_ZdlPvm(ptr noundef nonnull %i.pv, i64 noundef %i.qm) #36, !noalias !680
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backB8nn180100EOi.exit.i

_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backB8nn180100EOi.exit.i: ; preds = %.loopexit, %bb.bs
  %i.rn = phi ptr [ %i.pv, %bb.bs ], [ %storemerge.i.i.i, %.loopexit ]
  %i.ro = phi ptr [ %i.pw, %bb.bs ], [ %i.qt, %.loopexit ]
  %.pn = phi ptr [ %i.px, %bb.bs ], [ %i.qs, %.loopexit ]
  %.0.i.i = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 3 uses
  store ptr %.0.i.i, ptr %i.ee, align 8, !tbaa !87, !alias.scope !680
  %i.rp = add nuw i64 %i.pz, 1                    ; 2 uses
  %i.rq = load i64, ptr %i.a, align 8, !tbaa !47, !noalias !680 ; 2 uses
  %i.rr = icmp ult i64 %i.rp, %i.rq
  br i1 %i.rr, label %.lr.ph.i, label %"_ZZN3jxl11TreeSamples21PreQuantizePropertiesERKNSt3__15arrayINS2_IjLm2EEELm2EEERKNS1_6vectorINS_21ModularMultiplierInfoENS1_9allocatorIS8_EEEERKNS7_IjNS9_IjEEEESH_RNS7_IiNS9_IiEEEESK_mENK3$_2clEv.exit", !llvm.loop !660

"_ZZN3jxl11TreeSamples21PreQuantizePropertiesERKNSt3__15arrayINS2_IjLm2EEELm2EEERKNS1_6vectorINS_21ModularMultiplierInfoENS1_9allocatorIS8_EEEERKNS7_IjNS9_IjEEEESH_RNS7_IiNS9_IiEEEESK_mENK3$_2clEv.exit": ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backB8nn180100EOi.exit.i, %bb.bp, %_ZNSt3__16vectorIiNS_9allocatorIiEEE7reserveEm.exit.i
  %i.rs = phi ptr [ %i.ps, %_ZNSt3__16vectorIiNS_9allocatorIiEEE7reserveEm.exit.i ], [ null, %bb.bp ], [ %.0.i.i, %_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backB8nn180100EOi.exit.i ]
  %i.rt = load ptr, ptr %i.br, align 8, !tbaa !115
  %i.ru = getelementptr inbounds nuw [24 x i8], ptr %i.rt, i64 %.0313 ; 7 uses
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !85 ; 4 uses
  %.not.i.i.i159 = icmp eq ptr %i.rv, null
  br i1 %.not.i.i.i159, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit162, label %bb.bw

bb.bw:                                            ; preds = %"_ZZN3jxl11TreeSamples21PreQuantizePropertiesERKNSt3__15arrayINS2_IjLm2EEELm2EEERKNS1_6vectorINS_21ModularMultiplierInfoENS1_9allocatorIS8_EEEERKNS7_IjNS9_IjEEEESH_RNS7_IiNS9_IiEEEESK_mENK3$_2clEv.exit"
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  store ptr %i.rv, ptr %i.rw, align 8, !tbaa !87
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 16
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !86
  %i.rz = ptrtoint ptr %i.ry to i64
  %i.sa = ptrtoint ptr %i.rv to i64
  %i.sb = sub i64 %i.rz, %i.sa
  call void @_ZdlPvm(ptr noundef nonnull %i.rv, i64 noundef %i.sb) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ru, i8 0, i64 24, i1 false)
  %.pre = load ptr, ptr %i.ee, align 8, !tbaa !87
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit162

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit162: ; preds = %bb.bw, %"_ZZN3jxl11TreeSamples21PreQuantizePropertiesERKNSt3__15arrayINS2_IjLm2EEELm2EEERKNS1_6vectorINS_21ModularMultiplierInfoENS1_9allocatorIS8_EEEERKNS7_IjNS9_IjEEEESH_RNS7_IiNS9_IiEEEESK_mENK3$_2clEv.exit"
  %i.sc = phi ptr [ %.pre, %bb.bw ], [ %i.rs, %"_ZZN3jxl11TreeSamples21PreQuantizePropertiesERKNSt3__15arrayINS2_IjLm2EEELm2EEERKNS1_6vectorINS_21ModularMultiplierInfoENS1_9allocatorIS8_EEEERKNS7_IjNS9_IjEEEESH_RNS7_IiNS9_IiEEEESK_mENK3$_2clEv.exit" ]
  %i.sd = load ptr, ptr %22, align 8, !tbaa !85
  store ptr %i.sd, ptr %i.ru, align 8, !tbaa !85
  %i.se = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  store ptr %i.sc, ptr %i.se, align 8, !tbaa !87
  %i.sf = load ptr, ptr %i.ed, align 8, !tbaa !86
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ru, i64 16
  store ptr %i.sf, ptr %i.sg, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #37
  br label %bb.cx

bb.bx:                                            ; preds = %bb.be
  %i.sh = icmp ugt i32 %i.nv, 15
  br i1 %i.sh, label %bb.by, label %bb.cg

bb.by:                                            ; preds = %bb.bx
  %i.si = and i32 %i.nv, 3
  switch i32 %i.si, label %.unreachabledefault [
    i32 1, label %bb.bz
    i32 0, label %bb.ch
    i32 2, label %bb.cs
    i32 3, label %.thread247
  ]

bb.bz:                                            ; preds = %bb.by, %bb.be, %bb.be, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !682)
  %i.sj = icmp eq ptr %.sroa.0.0307, %.sroa.14.0308
  br i1 %i.sj, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37, !noalias !682
  %i.sk = load i64, ptr %i.a, align 8, !tbaa !47, !noalias !682
  call fastcc void @_ZN3jxl12_GLOBAL__N_115QuantizeSamplesERKNSt3__16vectorIiNS1_9allocatorIiEEEEm(ptr dead_on_unwind noalias writable align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.sk) #33, !noalias !682
  %.not.i.i.i.i164 = icmp eq ptr %.sroa.14.0308, null
  br i1 %.not.i.i.i.i164, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.sl = ptrtoint ptr %.sroa.25.0309 to i64
  %i.sm = ptrtoint ptr %.sroa.14.0308 to i64
  %i.sn = sub i64 %i.sl, %i.sm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0307, i64 noundef %i.sn) #36, !noalias !682
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i: ; preds = %bb.cb, %bb.ca
  %i.so = load ptr, ptr %11, align 8, !tbaa !85, !noalias !682
  %i.sp = load ptr, ptr %i.eu, align 8, !tbaa !87, !noalias !682
  %i.sq = load ptr, ptr %i.ev, align 8, !tbaa !86, !noalias !682
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37, !noalias !682
  br label %bb.cc

bb.cc:                                            ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i, %bb.bz
  %.sroa.0.2 = phi ptr [ %i.so, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i ], [ %.sroa.0.0307, %bb.bz ] ; 4 uses
  %.sroa.14.2 = phi ptr [ %i.sp, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i ], [ %.sroa.14.0308, %bb.bz ] ; 3 uses
  %.sroa.25.2 = phi ptr [ %i.sq, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i ], [ %.sroa.25.0309, %bb.bz ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false), !alias.scope !682
  %i.sr = ptrtoint ptr %.sroa.14.2 to i64
  %i.ss = ptrtoint ptr %.sroa.0.2 to i64
  %i.st = sub i64 %i.sr, %i.ss                    ; 4 uses
  %.not.i.i1.i = icmp eq ptr %.sroa.14.2, %.sroa.0.2
  br i1 %.not.i.i1.i, label %"_ZZN3jxl11TreeSamples21PreQuantizePropertiesERKNSt3__15arrayINS2_IjLm2EEELm2EEERKNS1_6vectorINS_21ModularMultiplierInfoENS1_9allocatorIS8_EEEERKNS7_IjNS9_IjEEEESH_RNS7_IiNS9_IiEEEESK_mENK3$_3clEv.exit", label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.su = icmp slt i64 %i.st, 0
  br i1 %i.su, label %bb.ce, label %_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8nn180100Em.exit.i.i.i163

bb.ce:                                            ; preds = %bb.cd
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %23) #34
  unreachable

_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8nn180100Em.exit.i.i.i163: ; preds = %bb.cd
  %i.sv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.st) #35, !noalias !682 ; 3 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.st
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.sv, ptr align 4 %.sroa.0.2, i64 %i.st, i1 false), !noalias !682
  br label %"_ZZN3jxl11TreeSamples21PreQuantizePropertiesERKNSt3__15arrayINS2_IjLm2EEELm2EEERKNS1_6vectorINS_21ModularMultiplierInfoENS1_9allocatorIS8_EEEERKNS7_IjNS9_IjEEEESH_RNS7_IiNS9_IiEEEESK_mENK3$_3clEv.exit"

"_ZZN3jxl11TreeSamples21PreQuantizePropertiesERKNSt3__15arrayINS2_IjLm2EEELm2EEERKNS1_6vectorINS_21ModularMultiplierInfoENS1_9allocatorIS8_EEEERKNS7_IjNS9_IjEEEESH_RNS7_IiNS9_IiEEEESK_mENK3$_3clEv.exit": ; preds = %bb.cc, %_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8nn180100Em.exit.i.i.i163
  %i.sx = phi ptr [ null, %bb.cc ], [ %i.sw, %_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8nn180100Em.exit.i.i.i163 ] ; 2 uses
  %i.sy = phi ptr [ null, %bb.cc ], [ %i.sv, %_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8nn180100Em.exit.i.i.i163 ]
  %i.sz = load ptr, ptr %i.br, align 8, !tbaa !115
  %i.ta = getelementptr inbounds nuw [24 x i8], ptr %i.sz, i64 %.0313 ; 6 uses
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !85 ; 4 uses
  %.not.i.i.i166 = icmp eq ptr %i.tb, null
  br i1 %.not.i.i.i166, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit169, label %bb.cf

bb.cf:                                            ; preds = %"_ZZN3jxl11TreeSamples21PreQuantizePropertiesERKNSt3__15arrayINS2_IjLm2EEELm2EEERKNS1_6vectorINS_21ModularMultiplierInfoENS1_9allocatorIS8_EEEERKNS7_IjNS9_IjEEEESH_RNS7_IiNS9_IiEEEESK_mENK3$_3clEv.exit"
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  store ptr %i.tb, ptr %i.tc, align 8, !tbaa !87
  %i.td = getelementptr inbounds nuw i8, ptr %i.ta, i64 16
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !86
  %i.tf = ptrtoint ptr %i.te to i64
  %i.tg = ptrtoint ptr %i.tb to i64
  %i.th = sub i64 %i.tf, %i.tg
  call void @_ZdlPvm(ptr noundef nonnull %i.tb, i64 noundef %i.th) #36
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit169

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit169: ; preds = %bb.cf, %"_ZZN3jxl11TreeSamples21PreQuantizePropertiesERKNSt3__15arrayINS2_IjLm2EEELm2EEERKNS1_6vectorINS_21ModularMultiplierInfoENS1_9allocatorIS8_EEEERKNS7_IjNS9_IjEEEESH_RNS7_IiNS9_IiEEEESK_mENK3$_3clEv.exit"
  store ptr %i.sy, ptr %i.ta, align 8, !tbaa !85
  %i.ti = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  store ptr %i.sx, ptr %i.ti, align 8, !tbaa !87
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ta, i64 16
  store ptr %i.sx, ptr %i.tj, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #37
  br label %bb.cx

bb.cg:                                            ; preds = %bb.bx
  switch i32 %i.nv, label %.thread247 [
    i32 4, label %bb.ch
    i32 5, label %bb.ch
    i32 15, label %bb.cu
  ]

bb.ch:                                            ; preds = %bb.by, %bb.cg, %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !683)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.tk = icmp eq ptr %.sroa.0230.0310, %.sroa.9233.0311
  br i1 %i.tk, label %bb.ci, label %bb.co

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.experimental.noalias.scope.decl(metadata !684)
  %i.tl = icmp eq ptr %.sroa.0.0307, %.sroa.14.0308
  br i1 %i.tl, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37, !noalias !685
  %i.tm = load i64, ptr %i.a, align 8, !tbaa !47, !noalias !685
  call fastcc void @_ZN3jxl12_GLOBAL__N_115QuantizeSamplesERKNSt3__16vectorIiNS1_9allocatorIiEEEEm(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.tm) #33, !noalias !685
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.14.0308, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.tn = ptrtoint ptr %.sroa.25.0309 to i64
  %i.to = ptrtoint ptr %.sroa.14.0308 to i64
  %i.tp = sub i64 %i.tn, %i.to
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0307, i64 noundef %i.tp) #36, !noalias !685
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i.i

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i.i: ; preds = %bb.ck, %bb.cj
  %i.tq = load ptr, ptr %8, align 8, !tbaa !85, !noalias !685
  %i.tr = load ptr, ptr %i.ep, align 8, !tbaa !87, !noalias !685
  %i.ts = load ptr, ptr %i.eq, align 8, !tbaa !86, !noalias !685
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37, !noalias !685
  br label %bb.cl

bb.cl:                                            ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i.i, %bb.ci
  %.sroa.0.4 = phi ptr [ %i.tq, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i.i ], [ %.sroa.0.0307, %bb.ci ] ; 3 uses
  %.sroa.14.4 = phi ptr [ %i.tr, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i.i ], [ %.sroa.14.0308, %bb.ci ] ; 3 uses
  %.sroa.25.4 = phi ptr [ %i.ts, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i.i ], [ %.sroa.25.0309, %bb.ci ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !alias.scope !684, !noalias !683
  %.not.i.i1.i.i = icmp ne ptr %.sroa.14.4, %.sroa.0.4
  %i.tt = ptrtoint ptr %.sroa.14.4 to i64
  %i.tu = ptrtoint ptr %.sroa.0.4 to i64
  %i.tv = sub i64 %i.tt, %i.tu
  %i.tw = icmp slt i64 %i.tv, 0
  %or.cond = and i1 %.not.i.i1.i.i, %i.tw
  br i1 %or.cond, label %bb.cm, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i171

bb.cm:                                            ; preds = %bb.cl
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #34, !noalias !683
  unreachable

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i171: ; preds = %bb.cl
  %i.tx = load ptr, ptr %5, align 8, !tbaa !85, !noalias !683 ; 5 uses
  %i.ty = load ptr, ptr %i.er, align 8, !tbaa !87, !noalias !683 ; 3 uses
  %.not12.i = icmp eq ptr %i.tx, %i.ty
  br i1 %.not12.i, label %._crit_edge.i, label %.lr.ph.i172.preheader

.lr.ph.i172.preheader:                            ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i171
  %i.tz = ptrtoaddr ptr %i.ty to i64
  %i.ua = ptrtoaddr ptr %i.tx to i64
  %i.ub = add i64 %i.tz, -4
  %i.uc = sub i64 %i.ub, %i.ua                    ; 2 uses
  %i.ud = lshr i64 %i.uc, 2
  %i.ue = add nuw nsw i64 %i.ud, 1                ; 2 uses
  %min.iters.check577 = icmp ult i64 %i.uc, 28
  br i1 %min.iters.check577, label %.lr.ph.i172.preheader613, label %vector.ph578

vector.ph578:                                     ; preds = %.lr.ph.i172.preheader
  %n.vec579 = and i64 %i.ue, 9223372036854775800  ; 3 uses
  %i.uf = shl i64 %n.vec579, 2
  %i.ug = getelementptr i8, ptr %i.tx, i64 %i.uf
  br label %vector.body580

vector.body580:                                   ; preds = %vector.body580, %vector.ph578
  %index581 = phi i64 [ 0, %vector.ph578 ], [ %index.next585, %vector.body580 ] ; 2 uses
  %i.uh = shl i64 %index581, 2
  %next.gep582 = getelementptr i8, ptr %i.tx, i64 %i.uh ; 3 uses
  %i.ui = getelementptr i8, ptr %next.gep582, i64 16 ; 2 uses
  %wide.load583 = load <4 x i32>, ptr %next.gep582, align 4, !tbaa !21, !noalias !683
  %wide.load584 = load <4 x i32>, ptr %i.ui, align 4, !tbaa !21, !noalias !683
  %i.uj = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load583, i1 true)
  %i.uk = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load584, i1 true)
  store <4 x i32> %i.uj, ptr %next.gep582, align 4, !tbaa !21, !noalias !683
  store <4 x i32> %i.uk, ptr %i.ui, align 4, !tbaa !21, !noalias !683
  %index.next585 = add nuw i64 %index581, 8       ; 2 uses
  %i.ul = icmp eq i64 %index.next585, %n.vec579
  br i1 %i.ul, label %middle.block586, label %vector.body580, !llvm.loop !667

middle.block586:                                  ; preds = %vector.body580
  %cmp.n587 = icmp eq i64 %i.ue, %n.vec579
  br i1 %cmp.n587, label %._crit_edge.i, label %.lr.ph.i172.preheader613

.lr.ph.i172.preheader613:                         ; preds = %.lr.ph.i172.preheader, %middle.block586
  %.sroa.08.013.i.ph = phi ptr [ %i.tx, %.lr.ph.i172.preheader ], [ %i.ug, %middle.block586 ]
  br label %.lr.ph.i172

._crit_edge.i:                                    ; preds = %.lr.ph.i172, %middle.block586, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i171
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37, !noalias !683
  %i.um = load i64, ptr %i.a, align 8, !tbaa !47, !noalias !683
  call fastcc void @_ZN3jxl12_GLOBAL__N_115QuantizeSamplesERKNSt3__16vectorIiNS1_9allocatorIiEEEEm(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.um) #33, !noalias !683
  %.not.i.i.i.i174 = icmp eq ptr %.sroa.9233.0311, null
  br i1 %.not.i.i.i.i174, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit6.i, label %bb.cn

bb.cn:                                            ; preds = %._crit_edge.i
  %i.un = ptrtoint ptr %.sroa.15.0312 to i64
  %i.uo = ptrtoint ptr %.sroa.9233.0311 to i64
  %i.up = sub i64 %i.un, %i.uo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0230.0310, i64 noundef %i.up) #36, !noalias !683
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit6.i

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit6.i: ; preds = %bb.cn, %._crit_edge.i
  %i.uq = load ptr, ptr %10, align 8, !tbaa !85, !noalias !683
  %i.ur = load ptr, ptr %i.es, align 8, !tbaa !87, !noalias !683
  %i.us = load ptr, ptr %i.et, align 8, !tbaa !86, !noalias !683
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37, !noalias !683
  br label %bb.co

.lr.ph.i172:                                      ; preds = %.lr.ph.i172.preheader613, %.lr.ph.i172
  %.sroa.08.013.i = phi ptr [ %i.uv, %.lr.ph.i172 ], [ %.sroa.08.013.i.ph, %.lr.ph.i172.preheader613 ] ; 3 uses
  %i.ut = load i32, ptr %.sroa.08.013.i, align 4, !tbaa !21, !noalias !683
  %i.uu = call i32 @llvm.abs.i32(i32 %i.ut, i1 true)
  store i32 %i.uu, ptr %.sroa.08.013.i, align 4, !tbaa !21, !noalias !683
  %i.uv = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i, i64 4 ; 2 uses
  %.not.i173 = icmp eq ptr %i.uv, %i.ty
  br i1 %.not.i173, label %._crit_edge.i, label %.lr.ph.i172, !llvm.loop !668

bb.co:                                            ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit6.i, %bb.ch
  %.sroa.0.3 = phi ptr [ %.sroa.0.4, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit6.i ], [ %.sroa.0.0307, %bb.ch ]
  %.sroa.14.3 = phi ptr [ %.sroa.14.4, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit6.i ], [ %.sroa.14.0308, %bb.ch ]
  %.sroa.25.3 = phi ptr [ %.sroa.25.4, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit6.i ], [ %.sroa.25.0309, %bb.ch ]
  %.sroa.0230.2 = phi ptr [ %i.uq, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit6.i ], [ %.sroa.0230.0310, %bb.ch ] ; 4 uses
  %.sroa.9233.2 = phi ptr [ %i.ur, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit6.i ], [ %.sroa.9233.0311, %bb.ch ] ; 3 uses
  %.sroa.15.2 = phi ptr [ %i.us, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit6.i ], [ %.sroa.15.0312, %bb.ch ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false), !alias.scope !683
  %i.uw = ptrtoint ptr %.sroa.9233.2 to i64
  %i.ux = ptrtoint ptr %.sroa.0230.2 to i64
  %i.uy = sub i64 %i.uw, %i.ux                    ; 4 uses
  %.not.i.i7.i = icmp eq ptr %.sroa.9233.2, %.sroa.0230.2
  br i1 %.not.i.i7.i, label %"_ZZN3jxl11TreeSamples21PreQuantizePropertiesERKNSt3__15arrayINS2_IjLm2EEELm2EEERKNS1_6vectorINS_21ModularMultiplierInfoENS1_9allocatorIS8_EEEERKNS7_IjNS9_IjEEEESH_RNS7_IiNS9_IiEEEESK_mENK3$_4clEv.exit", label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.uz = icmp slt i64 %i.uy, 0
  br i1 %i.uz, label %bb.cq, label %_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8nn180100Em.exit.i.i.i170

bb.cq:                                            ; preds = %bb.cp
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %24) #34
  unreachable

_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8nn180100Em.exit.i.i.i170: ; preds = %bb.cp
  %i.va = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uy) #35, !noalias !683 ; 3 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 %i.uy
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.va, ptr align 4 %.sroa.0230.2, i64 %i.uy, i1 false), !noalias !683
  br label %"_ZZN3jxl11TreeSamples21PreQuantizePropertiesERKNSt3__15arrayINS2_IjLm2EEELm2EEERKNS1_6vectorINS_21ModularMultiplierInfoENS1_9allocatorIS8_EEEERKNS7_IjNS9_IjEEEESH_RNS7_IiNS9_IiEEEESK_mENK3$_4clEv.exit"

"_ZZN3jxl11TreeSamples21PreQuantizePropertiesERKNSt3__15arrayINS2_IjLm2EEELm2EEERKNS1_6vectorINS_21ModularMultiplierInfoENS1_9allocatorIS8_EEEERKNS7_IjNS9_IjEEEESH_RNS7_IiNS9_IiEEEESK_mENK3$_4clEv.exit": ; preds = %bb.co, %_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8nn180100Em.exit.i.i.i170
  %i.vc = phi ptr [ null, %bb.co ], [ %i.vb, %_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8nn180100Em.exit.i.i.i170 ] ; 2 uses
  %i.vd = phi ptr [ null, %bb.co ], [ %i.va, %_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8nn180100Em.exit.i.i.i170 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.ve = load ptr, ptr %i.br, align 8, !tbaa !115
  %i.vf = getelementptr inbounds nuw [24 x i8], ptr %i.ve, i64 %.0313 ; 6 uses
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !85 ; 4 uses
  %.not.i.i.i178 = icmp eq ptr %i.vg, null
  br i1 %.not.i.i.i178, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit181, label %bb.cr

bb.cr:                                            ; preds = %"_ZZN3jxl11TreeSamples21PreQuantizePropertiesERKNSt3__15arrayINS2_IjLm2EEELm2EEERKNS1_6vectorINS_21ModularMultiplierInfoENS1_9allocatorIS8_EEEERKNS7_IjNS9_IjEEEESH_RNS7_IiNS9_IiEEEESK_mENK3$_4clEv.exit"
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  store ptr %i.vg, ptr %i.vh, align 8, !tbaa !87
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vf, i64 16
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !86
  %i.vk = ptrtoint ptr %i.vj to i64
  %i.vl = ptrtoint ptr %i.vg to i64
  %i.vm = sub i64 %i.vk, %i.vl
  call void @_ZdlPvm(ptr noundef nonnull %i.vg, i64 noundef %i.vm) #36
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit181

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit181: ; preds = %bb.cr, %"_ZZN3jxl11TreeSamples21PreQuantizePropertiesERKNSt3__15arrayINS2_IjLm2EEELm2EEERKNS1_6vectorINS_21ModularMultiplierInfoENS1_9allocatorIS8_EEEERKNS7_IjNS9_IjEEEESH_RNS7_IiNS9_IiEEEESK_mENK3$_4clEv.exit"
  store ptr %i.vd, ptr %i.vf, align 8, !tbaa !85
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  store ptr %i.vc, ptr %i.vn, align 8, !tbaa !87
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vf, i64 16
  store ptr %i.vc, ptr %i.vo, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #37
  br label %bb.cx

bb.cs:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #37
  call fastcc void @"_ZZN3jxl11TreeSamples21PreQuantizePropertiesERKNSt3__15arrayINS2_IjLm2EEELm2EEERKNS1_6vectorINS_21ModularMultiplierInfoENS1_9allocatorIS8_EEEERKNS7_IjNS9_IjEEEESH_RNS7_IiNS9_IiEEEESK_mENK3$_6clEv"(ptr dead_on_unwind noalias writable align 8 %25, ptr noundef nonnull align 8 dereferenceable(32) %19) #33
  %i.vp = load ptr, ptr %i.br, align 8, !tbaa !115
  %i.vq = getelementptr inbounds nuw [24 x i8], ptr %i.vp, i64 %.0313
  %i.vr = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEEaSB8nn180100EOS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.vq, ptr noundef nonnull align 8 dereferenceable(24) %25) #38 ; 0 uses
  %i.vs = load ptr, ptr %25, align 8, !tbaa !85   ; 4 uses
  %.not.i.i182 = icmp eq ptr %i.vs, null
  br i1 %.not.i.i182, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit183, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  store ptr %i.vs, ptr %i.en, align 8, !tbaa !87
  %i.vt = load ptr, ptr %i.eo, align 8, !tbaa !86
  %i.vu = ptrtoint ptr %i.vt to i64
  %i.vv = ptrtoint ptr %i.vs to i64
  %i.vw = sub i64 %i.vu, %i.vv
  call void @_ZdlPvm(ptr noundef nonnull %i.vs, i64 noundef %i.vw) #36
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit183

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit183: ; preds = %bb.cs, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #37
  br label %bb.cx

bb.cu:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #37
  %.val62.val = load i64, ptr %i.a, align 8, !tbaa !47
  call fastcc void @"_ZZN3jxl11TreeSamples21PreQuantizePropertiesERKNSt3__15arrayINS2_IjLm2EEELm2EEERKNS1_6vectorINS_21ModularMultiplierInfoENS1_9allocatorIS8_EEEERKNS7_IjNS9_IjEEEESH_RNS7_IiNS9_IiEEEESK_mENK3$_7clEv"(ptr dead_on_unwind noalias writable align 8 %26, i64 %.val62.val) #33
  %i.vx = load ptr, ptr %i.br, align 8, !tbaa !115
  %i.vy = getelementptr inbounds nuw [24 x i8], ptr %i.vx, i64 %.0313
  %i.vz = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEEaSB8nn180100EOS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.vy, ptr noundef nonnull align 8 dereferenceable(24) %26) #38 ; 0 uses
  %i.wa = load ptr, ptr %26, align 8, !tbaa !85   ; 4 uses
  %.not.i.i184 = icmp eq ptr %i.wa, null
  br i1 %.not.i.i184, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit185, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  store ptr %i.wa, ptr %i.ej, align 8, !tbaa !87
  %i.wb = load ptr, ptr %i.ek, align 8, !tbaa !86
  %i.wc = ptrtoint ptr %i.wb to i64
  %i.wd = ptrtoint ptr %i.wa to i64
  %i.we = sub i64 %i.wc, %i.wd
  call void @_ZdlPvm(ptr noundef nonnull %i.wa, i64 noundef %i.we) #36
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit185

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit185: ; preds = %bb.cu, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #37
  br label %bb.cx

.unreachabledefault:                              ; preds = %bb.by
  unreachable

.thread247:                                       ; preds = %bb.by, %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #37
  call fastcc void @"_ZZN3jxl11TreeSamples21PreQuantizePropertiesERKNSt3__15arrayINS2_IjLm2EEELm2EEERKNS1_6vectorINS_21ModularMultiplierInfoENS1_9allocatorIS8_EEEERKNS7_IjNS9_IjEEEESH_RNS7_IiNS9_IiEEEESK_mENK3$_5clEv"(ptr dead_on_unwind noalias writable align 8 %27, ptr noundef nonnull align 8 dereferenceable(24) %18) #33
  %i.wf = load ptr, ptr %i.br, align 8, !tbaa !115
  %i.wg = getelementptr inbounds nuw [24 x i8], ptr %i.wf, i64 %.0313
  %i.wh = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEEaSB8nn180100EOS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.wg, ptr noundef nonnull align 8 dereferenceable(24) %27) #38 ; 0 uses
  %i.wi = load ptr, ptr %27, align 8, !tbaa !85   ; 4 uses
  %.not.i.i186 = icmp eq ptr %i.wi, null
  br i1 %.not.i.i186, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit187, label %bb.cw

bb.cw:                                            ; preds = %.thread247
  store ptr %i.wi, ptr %i.el, align 8, !tbaa !87
end_hunk_0
begin_hunk_1_@_ZN3jxl11TreeSamples21PreQuantizePropertiesERKNSt3__15arrayINS2_IjLm2EEELm2EEERKNS1_6vectorINS_21ModularMultiplierInfoENS1_9allocatorIS8_EEEERKNS7_IjNS9_IjEEEESH_RNS7_IiNS9_IiEEEESK_m:bb.a
  %i.xk = trunc nuw nsw i64 %.019.i to i32
  %i.xl = add nsw i32 %i.xk, -511
  %i.xm = icmp ult i64 %.01418.i, %i.xj
  br i1 %i.xm, label %.lr.ph.i189, label %.critedge.i

.lr.ph.i189:                                      ; preds = %.preheader.i, %bb.dc
  %.115.i = phi i64 [ %i.xq, %bb.dc ], [ %.01418.i, %.preheader.i ] ; 3 uses
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %.115.i
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !21
  %i.xp = icmp sgt i32 %i.xl, %i.xo
  br i1 %i.xp, label %bb.dc, label %.critedge.i

bb.dc:                                            ; preds = %.lr.ph.i189
  %i.xq = add i64 %.115.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.xq, %i.xj
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i189, !llvm.loop !669

.critedge.i:                                      ; preds = %bb.dc, %.lr.ph.i189, %.preheader.i
  %.1.lcssa.i = phi i64 [ %.01418.i, %.preheader.i ], [ %.115.i, %.lr.ph.i189 ], [ %i.xj, %bb.dc ] ; 2 uses
  %i.xr = trunc i64 %.1.lcssa.i to i16
  %i.xs = getelementptr inbounds nuw [2 x i8], ptr %i.xc, i64 %.019.i
  store i16 %i.xr, ptr %i.xs, align 2, !tbaa !45
  %i.xt = add nuw nsw i64 %.019.i, 1              ; 2 uses
  %exitcond20.not.i = icmp eq i64 %i.xt, 1023
  br i1 %exitcond20.not.i, label %_ZN3jxl12_GLOBAL__N_18QuantMapItEEvRKNSt3__16vectorIiNS2_9allocatorIiEEEERNS3_IT_NS4_IS9_EEEEmi.exit, label %.preheader.i, !llvm.loop !670

bb.dd:                                            ; preds = %bb.cx
  %i.xu = sub nuw i64 %.0313, %i.wn
  %i.xv = load ptr, ptr %i.cy, align 8, !tbaa !107
  %i.xw = getelementptr inbounds nuw [24 x i8], ptr %i.xv, i64 %i.xu ; 4 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 8 ; 2 uses
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !131
  %i.xz = load ptr, ptr %i.xw, align 8, !tbaa !112 ; 2 uses
  %i.ya = ptrtoint ptr %i.xy to i64
  %i.yb = ptrtoint ptr %i.xz to i64
  %i.yc = sub i64 %i.ya, %i.yb                    ; 3 uses
  %i.yd = icmp ult i64 %i.yc, 1023
  br i1 %i.yd, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.ye = sub nuw nsw i64 1023, %i.yc
  call void @_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.xw, i64 noundef %i.ye) #33
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.i

bb.df:                                            ; preds = %bb.dd
  %.not.i191 = icmp eq i64 %i.yc, 1023
  br i1 %.not.i191, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xz, i64 1023
  store ptr %i.yf, ptr %i.xx, align 8, !tbaa !131
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.i

_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.i: ; preds = %bb.dg, %bb.df, %bb.de
  %i.yg = getelementptr inbounds nuw i8, ptr %i.wq, i64 8
  br label %.preheader.i192

.preheader.i192:                                  ; preds = %.critedge.i195, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.i
  %.019.i193 = phi i64 [ 0, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.i ], [ %i.yx, %.critedge.i195 ] ; 3 uses
  %.01418.i194 = phi i64 [ 0, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.i ], [ %.1.lcssa.i196, %.critedge.i195 ] ; 3 uses
  %i.yh = trunc nuw nsw i64 %.019.i193 to i32
  %i.yi = add nsw i32 %i.yh, -511
  %i.yj = load ptr, ptr %i.yg, align 8, !tbaa !87
  %i.yk = load ptr, ptr %i.wq, align 8, !tbaa !85 ; 2 uses
  %i.yl = ptrtoint ptr %i.yj to i64
  %i.ym = ptrtoint ptr %i.yk to i64
  %i.yn = sub i64 %i.yl, %i.ym
  %i.yo = ashr exact i64 %i.yn, 2                 ; 3 uses
  %i.yp = icmp ult i64 %.01418.i194, %i.yo
  br i1 %i.yp, label %.lr.ph.i198, label %.critedge.i195

.lr.ph.i198:                                      ; preds = %.preheader.i192, %bb.dh
  %.115.i199 = phi i64 [ %i.yt, %bb.dh ], [ %.01418.i194, %.preheader.i192 ] ; 3 uses
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.yk, i64 %.115.i199
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !21
  %i.ys = icmp sgt i32 %i.yi, %i.yr
  br i1 %i.ys, label %bb.dh, label %.critedge.i195

bb.dh:                                            ; preds = %.lr.ph.i198
  %i.yt = add i64 %.115.i199, 1                   ; 2 uses
  %exitcond.not.i200 = icmp eq i64 %i.yt, %i.yo
  br i1 %exitcond.not.i200, label %.critedge.i195, label %.lr.ph.i198, !llvm.loop !671

.critedge.i195:                                   ; preds = %bb.dh, %.lr.ph.i198, %.preheader.i192
  %.1.lcssa.i196 = phi i64 [ %.01418.i194, %.preheader.i192 ], [ %.115.i199, %.lr.ph.i198 ], [ %i.yo, %bb.dh ] ; 2 uses
  %i.yu = trunc i64 %.1.lcssa.i196 to i8
  %i.yv = load ptr, ptr %i.xw, align 8, !tbaa !112
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 %.019.i193
  store i8 %i.yu, ptr %i.yw, align 1, !tbaa !25
  %i.yx = add nuw nsw i64 %.019.i193, 1           ; 2 uses
  %exitcond20.not.i197 = icmp eq i64 %i.yx, 1023
  br i1 %exitcond20.not.i197, label %_ZN3jxl12_GLOBAL__N_18QuantMapItEEvRKNSt3__16vectorIiNS2_9allocatorIiEEEERNS3_IT_NS4_IS9_EEEEmi.exit, label %.preheader.i192, !llvm.loop !672

_ZN3jxl12_GLOBAL__N_18QuantMapItEEvRKNSt3__16vectorIiNS2_9allocatorIiEEEERNS3_IT_NS4_IS9_EEEEmi.exit: ; preds = %.critedge.i195, %.critedge.i
  %i.yy = add nuw i64 %.0313, 1                   ; 2 uses
  %i.yz = load ptr, ptr %i.bt, align 8, !tbaa !64
  %i.za = load ptr, ptr %i.bs, align 8, !tbaa !65 ; 2 uses
  %i.zb = ptrtoint ptr %i.yz to i64
  %i.zc = ptrtoint ptr %i.za to i64
  %i.zd = sub i64 %i.zb, %i.zc
  %i.ze = ashr exact i64 %i.zd, 2
  %i.zf = icmp ult i64 %i.yy, %i.ze
  br i1 %i.zf, label %bb.be, label %._crit_edge315.loopexit, !llvm.loop !673
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEEaSB8nn180100EOS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !85     ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIiNS_9allocatorIiEEE13__move_assignERS3_NS_17integral_constantIbLb1EEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.g) #36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEE13__move_assignERS3_NS_17integral_constantIbLb1EEE.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEE13__move_assignERS3_NS_17integral_constantIbLb1EEE.exit: ; preds = %bb.a, %bb.b
  %i.h = load <2 x ptr>, ptr %1, align 8, !tbaa !86
  store <2 x ptr> %i.h, ptr %0, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !86
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !86
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN3jxl11TreeSamples21PreQuantizePropertiesERKNSt3__15arrayINS2_IjLm2EEELm2EEERKNS1_6vectorINS_21ModularMultiplierInfoENS1_9allocatorIS8_EEEERKNS7_IjNS9_IjEEEESH_RNS7_IiNS9_IiEEEESK_mENK3$_6clEv"(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.std::__1::vector.55", align 16 ; 5 uses
  %3 = alloca %"class.std::__1::vector.55", align 8 ; 2 uses
  %4 = alloca %"class.std::__1::vector.55", align 16 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !691, !nonnull !137, !align !138 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !87   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !692, !nonnull !137, !align !138 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !140, !noalias !693, !nonnull !137, !align !138 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !85, !noalias !693 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !87, !noalias !693 ; 2 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37, !noalias !693
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !141, !noalias !693, !nonnull !137, !align !138
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !142, !noalias !693, !nonnull !137, !align !138
  %i.q = load i64, ptr %i.p, align 8, !tbaa !47, !noalias !693
  call fastcc void @_ZN3jxl12_GLOBAL__N_115QuantizeSamplesERKNSt3__16vectorIiNS1_9allocatorIiEEEEm(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %i.q) #33, !noalias !693
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !140, !noalias !693 ; 7 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !85, !noalias !693 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !87, !noalias !693
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !86, !noalias !693
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.s to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.y) #36, !noalias !693
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false), !noalias !693
  %.pre.pre.i = load ptr, ptr %i.g, align 8, !tbaa !140, !noalias !693
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i: ; preds = %bb.d, %bb.c
  %.pre.i = phi ptr [ %.pre.pre.i, %bb.d ], [ %i.r, %bb.c ] ; 2 uses
  %i.z = load <2 x ptr>, ptr %2, align 16, !tbaa !86, !noalias !693
  store <2 x ptr> %i.z, ptr %i.r, align 8, !tbaa !86, !noalias !693
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load ptr, ptr %i.aa, align 16, !tbaa !86, !noalias !693
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !86, !noalias !693
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37, !noalias !693
  %.pre2.i = load ptr, ptr %.pre.i, align 8, !tbaa !85, !noalias !693
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre3.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !87, !noalias !693
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i, %bb.b
  %i.ad = phi ptr [ %.pre3.i, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.ae = phi ptr [ %.pre2.i, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i ], [ %i.i, %bb.b ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !693
  %.not.i.i1.i = icmp ne ptr %i.ad, %i.ae
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp slt i64 %i.ah, 0
  %or.cond = and i1 %.not.i.i1.i, %i.ai
  br i1 %or.cond, label %bb.f, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit

bb.f:                                             ; preds = %bb.e
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #34
  unreachable

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit: ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !694, !nonnull !137, !align !138 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !85 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !87 ; 3 uses
  %.not12 = icmp eq ptr %i.al, %i.an
  br i1 %.not12, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit
  %i.ao = ptrtoaddr ptr %i.an to i64
  %i.ap = ptrtoaddr ptr %i.al to i64
  %i.aq = add i64 %i.ao, -4
  %i.ar = sub i64 %i.aq, %i.ap                    ; 2 uses
  %i.as = lshr i64 %i.ar, 2
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 28
  br i1 %min.iters.check, label %.lr.ph.preheader32, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.at, 9223372036854775800     ; 3 uses
  %i.au = shl i64 %n.vec, 2
  %i.av = getelementptr i8, ptr %i.al, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.aw ; 3 uses
  %i.ax = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !21
  %wide.load28 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !21
  %i.ay = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load, i1 true)
  %i.az = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load28, i1 true)
  store <4 x i32> %i.ay, ptr %next.gep, align 4, !tbaa !21
  store <4 x i32> %i.az, ptr %i.ax, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !688

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader32

.lr.ph.preheader32:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.08.013.ph = phi ptr [ %i.al, %.lr.ph.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !695, !nonnull !137, !align !138
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !47
  call fastcc void @_ZN3jxl12_GLOBAL__N_115QuantizeSamplesERKNSt3__16vectorIiNS1_9allocatorIiEEEEm(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 noundef %i.bd) #33
  %i.be = load ptr, ptr %1, align 8, !tbaa !691   ; 7 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !85 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit6, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !87
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !86
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bf to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bl) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 24, i1 false)
  %.pre.pre = load ptr, ptr %1, align 8, !tbaa !691
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit6

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit6: ; preds = %bb.g, %._crit_edge
  %.pre = phi ptr [ %.pre.pre, %bb.g ], [ %i.be, %._crit_edge ] ; 2 uses
  %i.bm = load <2 x ptr>, ptr %4, align 16, !tbaa !86
  store <2 x ptr> %i.bm, ptr %i.be, align 8, !tbaa !86
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bo = load ptr, ptr %i.bn, align 16, !tbaa !86
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %.pre14 = load ptr, ptr %.pre, align 8, !tbaa !85
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre15 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !87
  br label %bb.h

.lr.ph:                                           ; preds = %.lr.ph.preheader32, %.lr.ph
  %.sroa.08.013 = phi ptr [ %i.bs, %.lr.ph ], [ %.sroa.08.013.ph, %.lr.ph.preheader32 ] ; 3 uses
  %i.bq = load i32, ptr %.sroa.08.013, align 4, !tbaa !21
  %i.br = call i32 @llvm.abs.i32(i32 %i.bq, i1 true)
  store i32 %i.br, ptr %.sroa.08.013, align 4, !tbaa !21
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bs, %i.an
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !689

bb.h:                                             ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit6, %bb.a
  %i.bt = phi ptr [ %.pre15, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit6 ], [ %i.d, %bb.a ] ; 2 uses
  %i.bu = phi ptr [ %.pre14, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit6 ], [ %i.b, %bb.a ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 4 uses
  %.not.i.i7 = icmp eq ptr %i.bt, %i.bu
  br i1 %.not.i.i7, label %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2ERKS3_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = icmp slt i64 %i.bz, 0
  br i1 %i.ca, label %bb.j, label %_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8nn180100Em.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #34
  unreachable

_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8nn180100Em.exit.i.i: ; preds = %bb.i
  %i.cb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #35 ; 3 uses
  store ptr %i.cb, ptr %0, align 8, !tbaa !85
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bz ; 2 uses
  store ptr %i.cc, ptr %i.bw, align 8, !tbaa !86
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cb, ptr align 4 %i.bu, i64 %i.bz, i1 false)
  store ptr %i.cc, ptr %i.bv, align 8, !tbaa !87
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2ERKS3_.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEEC2ERKS3_.exit: ; preds = %bb.h, %_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8nn180100Em.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN3jxl11TreeSamples21PreQuantizePropertiesERKNSt3__15arrayINS2_IjLm2EEELm2EEERKNS1_6vectorINS_21ModularMultiplierInfoENS1_9allocatorIS8_EEEERKNS7_IjNS9_IjEEEESH_RNS7_IiNS9_IiEEEESK_mENK3$_7clEv"(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 24)) %0, i64 %.0.val.0.val) unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp ult i64 %.0.val.0.val, 32
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = tail call noalias noundef nonnull dereferenceable(60) ptr @_Znwm(i64 noundef 60) #35 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !85
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 60 ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !86
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.d, ptr noundef nonnull align 4 dereferenceable(60) @.ref.tmp.15, i64 60, i1 false)
  store ptr %i.e, ptr %i.b, align 8, !tbaa !87
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = icmp ult i64 %.0.val.0.val, 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noalias noundef nonnull dereferenceable(116) ptr @_Znwm(i64 noundef 116) #35 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 116 ; 2 uses
  store ptr %i.j, ptr %i.h, align 8, !tbaa !86
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %i.i, ptr noundef nonnull align 4 dereferenceable(116) @.ref.tmp.16, i64 116, i1 false)
  store ptr %i.j, ptr %i.g, align 8, !tbaa !87
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull dereferenceable(220) ptr @_Znwm(i64 noundef 220) #35 ; 3 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !85
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 220 ; 2 uses
  store ptr %i.l, ptr %i.h, align 8, !tbaa !86
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(220) %i.k, ptr noundef nonnull align 4 dereferenceable(220) @.ref.tmp.17, i64 220, i1 false)
  store ptr %i.l, ptr %i.g, align 8, !tbaa !87
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN3jxl11TreeSamples21PreQuantizePropertiesERKNSt3__15arrayINS2_IjLm2EEELm2EEERKNS1_6vectorINS_21ModularMultiplierInfoENS1_9allocatorIS8_EEEERKNS7_IjNS9_IjEEEESH_RNS7_IiNS9_IiEEEESK_mENK3$_5clEv"(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.std::__1::vector.55", align 16 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !140, !nonnull !137, !align !138 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !87   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !141, !nonnull !137, !align !138
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !142, !nonnull !137, !align !138
  %i.j = load i64, ptr %i.i, align 8, !tbaa !47
  call fastcc void @_ZN3jxl12_GLOBAL__N_115QuantizeSamplesERKNSt3__16vectorIiNS1_9allocatorIiEEEEm(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.j) #33
  %i.k = load ptr, ptr %1, align 8, !tbaa !140    ; 7 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !85   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
end_hunk_1
