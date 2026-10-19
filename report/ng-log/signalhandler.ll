Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ng-log/original/signalhandler?download=true
inline.NumInlined: 201
inline.NumDeleted: 113
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN5nglog12_GLOBAL__N_120FailureSignalHandlerEiP9siginfo_tPv:bb.a
  %exitcond283.4.not.i.i = icmp eq i64 %i.gh, 4
  br i1 %exitcond283.4.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.ptr209.4.i.i = getelementptr inbounds nuw i8, ptr %.ptr209.i.i, i64 4
  store i8 101, ptr %.ptr209.4.i.i, align 1, !tbaa !33
  %exitcond283.5.not.i.i = icmp eq i64 %i.gh, 5
  br i1 %exitcond283.5.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %.ptr209.5.i.i = getelementptr inbounds nuw i8, ptr %.ptr209.i.i, i64 5
  store i8 105, ptr %.ptr209.5.i.i, align 1, !tbaa !33
  %exitcond283.6.not.i.i = icmp eq i64 %i.gh, 6
  br i1 %exitcond283.6.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %.ptr209.6.i.i = getelementptr inbounds nuw i8, ptr %.ptr209.i.i, i64 6
  store i8 118, ptr %.ptr209.6.i.i, align 1, !tbaa !33
  %exitcond283.7.not.i.i = icmp eq i64 %i.gh, 7
  br i1 %exitcond283.7.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %.ptr209.7.i.i = getelementptr inbounds nuw i8, ptr %.ptr209.i.i, i64 7
  store i8 101, ptr %.ptr209.7.i.i, align 1, !tbaa !33
  %exitcond283.8.not.i.i = icmp eq i64 %i.gh, 8
  br i1 %exitcond283.8.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %.ptr209.8.i.i = getelementptr inbounds nuw i8, ptr %.ptr209.i.i, i64 8
  store i8 100, ptr %.ptr209.8.i.i, align 1, !tbaa !33
  %exitcond283.9.not.i.i = icmp eq i64 %i.gh, 9
  br i1 %exitcond283.9.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %.ptr209.9.i.i = getelementptr inbounds nuw i8, ptr %.ptr209.i.i, i64 9
  store i8 32, ptr %.ptr209.9.i.i, align 1, !tbaa !33
  %exitcond283.10.not.i.i = icmp eq i64 %i.gh, 10
  br i1 %exitcond283.10.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.ptr209.10.i.i = getelementptr inbounds nuw i8, ptr %.ptr209.i.i, i64 10
  store i8 98, ptr %.ptr209.10.i.i, align 1, !tbaa !33
  %exitcond283.11.not.i.i = icmp eq i64 %i.gh, 11
  br i1 %exitcond283.11.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %.ptr209.11.i.i = getelementptr inbounds nuw i8, ptr %.ptr209.i.i, i64 11
  store i8 121, ptr %.ptr209.11.i.i, align 1, !tbaa !33
  %exitcond283.12.not.i.i = icmp eq i64 %i.gh, 12
  br i1 %exitcond283.12.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %.ptr209.12.i.i = getelementptr inbounds nuw i8, ptr %.ptr209.i.i, i64 12
  store i8 32, ptr %.ptr209.12.i.i, align 1, !tbaa !33
  %exitcond283.13.not.i.i = icmp eq i64 %i.gh, 13
  br i1 %exitcond283.13.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %.ptr209.13.i.i = getelementptr inbounds nuw i8, ptr %.ptr209.i.i, i64 13
  store i8 80, ptr %.ptr209.13.i.i, align 1, !tbaa !33
  %exitcond283.14.not.i.i = icmp eq i64 %i.gh, 14
  br i1 %exitcond283.14.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %.ptr209.14.i.i = getelementptr inbounds nuw i8, ptr %.ptr209.i.i, i64 14
  store i8 73, ptr %.ptr209.14.i.i, align 1, !tbaa !33
  %exitcond283.15.not.i.i = icmp eq i64 %i.gh, 15
  br i1 %exitcond283.15.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %.ptr209.15.i.i = getelementptr inbounds nuw i8, ptr %.ptr209.i.i, i64 15
  store i8 68, ptr %.ptr209.15.i.i, align 1, !tbaa !33
  %exitcond283.16.not.i.i = icmp eq i64 %i.gh, 16
  br i1 %exitcond283.16.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.ptr209.16.i.i = getelementptr inbounds nuw i8, ptr %.ptr209.i.i, i64 16
  store i8 32, ptr %.ptr209.16.i.i, align 1, !tbaa !33
  br label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i

_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i: ; preds = %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit55.i.i
  %.0.lcssa.i58.i.i = phi i64 [ 0, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit55.i.i ], [ 17, %bb.cn ], [ 1, %bb.bx ], [ 16, %bb.cm ], [ 2, %bb.by ], [ 9, %bb.cf ], [ 3, %bb.bz ], [ 15, %bb.cl ], [ 4, %bb.ca ], [ 12, %bb.ci ], [ 5, %bb.cb ], [ 14, %bb.ck ], [ 6, %bb.cc ], [ 10, %bb.cg ], [ 7, %bb.cd ], [ 13, %bb.cj ], [ 8, %bb.ce ], [ 11, %bb.ch ]
  %i.gi = add i64 %.0.lcssa.i58.i.i, %.add204.i.i ; 4 uses
  %.ptr213.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gi ; 3 uses
  %i.gj = call i32 @getpid() #20
  %i.gk = call i64 @llvm.usub.sat.i64(i64 256, i64 %i.gi) ; 3 uses
  %exitcond288.not.i.i56 = icmp ugt i64 %i.gi, 255
  br i1 %exitcond288.not.i.i56, label %split.i63.i.i, label %.lr.ph59

.lr.ph59:                                         ; preds = %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i
  %i.gl = sext i32 %i.gj to i64
  br label %bb.cp

bb.co:                                            ; preds = %bb.cp
  %exitcond288.not.i.i = icmp eq i64 %indvars.iv.next285.i.i, %i.gk
  br i1 %exitcond288.not.i.i, label %split.i63.i.i, label %bb.cp

bb.cp:                                            ; preds = %.lr.ph59, %bb.co
  %.015.i61.i.i58 = phi i64 [ %i.gl, %.lr.ph59 ], [ %i.go, %bb.co ] ; 3 uses
  %indvars.iv284.i.i57 = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next285.i.i, %bb.co ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.ptr213.i.i, i64 %indvars.iv284.i.i57
  %i.gn = urem i64 %.015.i61.i.i58, 10
  %i.go = udiv i64 %.015.i61.i.i58, 10
  %i.gp = trunc nuw nsw i64 %i.gn to i8
  %i.gq = or disjoint i8 %i.gp, 48
  store i8 %i.gq, ptr %i.gm, align 1, !tbaa !33
  %indvars.iv.next285.i.i = add nuw nsw i64 %indvars.iv284.i.i57, 1 ; 3 uses
  %i.gr = icmp ult i64 %.015.i61.i.i58, 10
  br i1 %i.gr, label %split.i63.i.i, label %bb.co

split.i63.i.i:                                    ; preds = %bb.co, %bb.cp, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i
  %.pre-phi.i64.i.i = phi i64 [ %i.gk, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit60.i.i ], [ %i.gk, %bb.co ], [ %indvars.iv.next285.i.i, %bb.cp ] ; 3 uses
  %i.gs = and i64 %.pre-phi.i64.i.i, 4294967294
  %.not336.i.i = icmp eq i64 %i.gs, 0
  br i1 %.not336.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit77.i.i, label %.lr.ph.i.i.preheader.i66.i.i

.lr.ph.i.i.preheader.i66.i.i:                     ; preds = %split.i63.i.i
  %i.gt = getelementptr i8, ptr %.ptr213.i.i, i64 %.pre-phi.i64.i.i
  %.012.i.i.i67.i.i = getelementptr i8, ptr %i.gt, i64 -1
  br label %.lr.ph.i.i.i68.i.i

.lr.ph.i.i.i68.i.i:                               ; preds = %.lr.ph.i.i.i68.i.i, %.lr.ph.i.i.preheader.i66.i.i
  %.014.i.i.i69.i.i = phi ptr [ %.0.i.i.i71.i.i, %.lr.ph.i.i.i68.i.i ], [ %.012.i.i.i67.i.i, %.lr.ph.i.i.preheader.i66.i.i ] ; 3 uses
  %.0913.i.i.i70.i.i = phi ptr [ %i.gw, %.lr.ph.i.i.i68.i.i ], [ %.ptr213.i.i, %.lr.ph.i.i.preheader.i66.i.i ] ; 3 uses
  %i.gu = load i8, ptr %.0913.i.i.i70.i.i, align 1, !tbaa !33
  %i.gv = load i8, ptr %.014.i.i.i69.i.i, align 1, !tbaa !33
  store i8 %i.gv, ptr %.0913.i.i.i70.i.i, align 1, !tbaa !33
  store i8 %i.gu, ptr %.014.i.i.i69.i.i, align 1, !tbaa !33
  %i.gw = getelementptr inbounds nuw i8, ptr %.0913.i.i.i70.i.i, i64 1 ; 2 uses
  %.0.i.i.i71.i.i = getelementptr inbounds i8, ptr %.014.i.i.i69.i.i, i64 -1 ; 2 uses
  %i.gx = icmp ult ptr %i.gw, %.0.i.i.i71.i.i
  br i1 %i.gx, label %.lr.ph.i.i.i68.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit77.i.i, !llvm.loop !0

_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit77.i.i: ; preds = %.lr.ph.i.i.i68.i.i, %split.i63.i.i
  %.add210.i.i = add i64 %.pre-phi.i64.i.i, %i.gi ; 4 uses
  %.ptr214.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.add210.i.i ; 6 uses
  %i.gy = call i64 @llvm.usub.sat.i64(i64 256, i64 %.add210.i.i) ; 5 uses
  %exitcond290.not.i.i = icmp ugt i64 %.add210.i.i, 255
  br i1 %exitcond290.not.i.i, label %bb.cw, label %bb.cq

bb.cq:                                            ; preds = %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit77.i.i
  store i8 32, ptr %.ptr214.i.i, align 1, !tbaa !33
  %exitcond290.1.not.i.i = icmp eq i64 %i.gy, 1
  br i1 %exitcond290.1.not.i.i, label %bb.cw, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.gz = getelementptr inbounds nuw i8, ptr %.ptr214.i.i, i64 1
  store i8 40, ptr %i.gz, align 1, !tbaa !33
  %exitcond290.2.not.i.i = icmp eq i64 %i.gy, 2
  br i1 %exitcond290.2.not.i.i, label %bb.cw, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ha = getelementptr inbounds nuw i8, ptr %.ptr214.i.i, i64 2
  store i8 84, ptr %i.ha, align 1, !tbaa !33
  %exitcond290.3.not.i.i = icmp eq i64 %i.gy, 3
  br i1 %exitcond290.3.not.i.i, label %bb.cw, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.hb = getelementptr inbounds nuw i8, ptr %.ptr214.i.i, i64 3
  store i8 73, ptr %i.hb, align 1, !tbaa !33
  %exitcond290.4.not.i.i = icmp eq i64 %i.gy, 4
  br i1 %exitcond290.4.not.i.i, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.hc = getelementptr inbounds nuw i8, ptr %.ptr214.i.i, i64 4
  store i8 68, ptr %i.hc, align 1, !tbaa !33
  %exitcond290.5.not.i.i = icmp eq i64 %i.gy, 5
  br i1 %exitcond290.5.not.i.i, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.hd = getelementptr inbounds nuw i8, ptr %.ptr214.i.i, i64 5
  store i8 32, ptr %i.hd, align 1, !tbaa !33
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit77.i.i
  %.0.lcssa.i80.i.i = phi i64 [ 0, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit77.i.i ], [ 6, %bb.cv ], [ 1, %bb.cq ], [ 5, %bb.cu ], [ 2, %bb.cr ], [ 4, %bb.ct ], [ 3, %bb.cs ]
  %.add211.i.i = add i64 %.0.lcssa.i80.i.i, %.add210.i.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %i.he = load ptr, ptr %4, align 8, !tbaa !11
  %i.hf = getelementptr i8, ptr %i.he, i64 -24    ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 8
  %i.hh = getelementptr inbounds i8, ptr %4, i64 %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 24 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !58
  %i.hk = or i32 %i.hj, 512
  store i32 %i.hk, ptr %i.hi, align 8, !tbaa !59
  %i.hl = load i64, ptr %i.hf, align 8
  %i.hm = getelementptr inbounds i8, ptr %4, i64 %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 24 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !58
  %i.hp = and i32 %i.ho, -75
  %i.hq = or disjoint i32 %i.hp, 8
  store i32 %i.hq, ptr %i.hn, align 8, !tbaa !59
  %i.hr = tail call i64 @pthread_self() #21       ; 2 uses
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.ht = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.19, i64 noundef 36)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE.exit.i.i unwind label %7 ; 0 uses

bb.cy:                                            ; preds = %bb.cw
  %i.hu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %i.hr)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE.exit.i.i unwind label %7 ; 0 uses

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE.exit.i.i: ; preds = %bb.cy, %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.hv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.hv, ptr %5, align 8, !tbaa !63, !alias.scope !64
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.hw, align 8, !tbaa !66, !alias.scope !64
  store i8 0, ptr %i.hv, align 8, !tbaa !33, !alias.scope !64
  %i.hx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !17, !noalias !64 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.hy, null
  %i.hz = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ia = load ptr, ptr %i.hz, align 8, !noalias !64 ; 2 uses
  %i.ib = icmp ugt ptr %i.hy, %i.ia
  %.08.i.i.i.i.i = select i1 %i.ib, ptr %i.hy, ptr %i.ia ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE.exit.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !18, !noalias !64 ; 2 uses
  %i.ie = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = sub i64 %i.ie, %i.if
  %i.ih = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.id, i64 noundef %i.ig)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i unwind label %bb.da ; 0 uses

bb.da:                                            ; preds = %bb.db, %bb.cz
  %i.ii = landingpad { ptr, i32 }
          cleanup
  %i.ij = load ptr, ptr %5, align 8, !tbaa !67, !alias.scope !64 ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.hv
  br i1 %i.ik, label %.body.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.da
  %i.il = load i64, ptr %i.hv, align 8, !tbaa !33, !alias.scope !64
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.im) #22
  br label %.body.i.i

bb.db:                                            ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE.exit.i.i
  %i.in = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.in)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i unwind label %bb.da

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i: ; preds = %bb.db, %bb.cz
  %i.io = load ptr, ptr %5, align 8, !tbaa !67    ; 4 uses
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !33  ; 2 uses
  %.not9.i85.i.i = icmp eq i8 %i.ip, 0
  br i1 %.not9.i85.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit90.i.i, label %.lr.ph.i86.preheader.i.i

.lr.ph.i86.preheader.i.i:                         ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i
  %smax291.i.i = call i64 @llvm.smax.i64(i64 %.add211.i.i, i64 256)
  %i.iq = sub i64 %smax291.i.i, %.add211.i.i      ; 4 uses
  %invariant.gep.i.i = getelementptr i8, ptr %i.a, i64 %.add211.i.i
  %exitcond292.not.i.i63 = icmp eq i64 %i.iq, 0
  br i1 %exitcond292.not.i.i63, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit90.i.i, label %.lr.ph65

.lr.ph.i86.i.i:                                   ; preds = %.lr.ph65
  %exitcond292.not.i.i = icmp eq i64 %i.is, %i.iq
  br i1 %exitcond292.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit90.i.i, label %.lr.ph65, !llvm.loop !1

.lr.ph65:                                         ; preds = %.lr.ph.i86.preheader.i.i, %.lr.ph.i86.i.i
  %.010.i87.i.i64 = phi i64 [ %i.is, %.lr.ph.i86.i.i ], [ 0, %.lr.ph.i86.preheader.i.i ] ; 2 uses
  %i.ir = phi i8 [ %i.iu, %.lr.ph.i86.i.i ], [ %i.ip, %.lr.ph.i86.preheader.i.i ]
  %gep.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %.010.i87.i.i64
  store i8 %i.ir, ptr %gep.i.i, align 1, !tbaa !33
  %i.is = add nuw nsw i64 %.010.i87.i.i64, 1      ; 4 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.is
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !33  ; 2 uses
  %.not.i89.i.i = icmp eq i8 %i.iu, 0
  br i1 %.not.i89.i.i, label %._ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit90.i.i.loopexit_crit_edge, label %.lr.ph.i86.i.i, !llvm.loop !1

._ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit90.i.i.loopexit_crit_edge: ; preds = %.lr.ph65
  br label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit90.i.i, !llvm.loop !1

_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit90.i.i: ; preds = %.lr.ph.i86.i.i, %.lr.ph.i86.preheader.i.i, %._ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit90.i.i.loopexit_crit_edge, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i
  %.0.lcssa.i88.i.i = phi i64 [ 0, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i ], [ %i.is, %._ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit90.i.i.loopexit_crit_edge ], [ %i.iq, %.lr.ph.i86.preheader.i.i ], [ %i.iq, %.lr.ph.i86.i.i ]
  %i.iv = add i64 %.0.lcssa.i88.i.i, %.add211.i.i ; 4 uses
  %.ptr220.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.iv ; 5 uses
  %i.iw = icmp eq ptr %i.io, %i.hv
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit90.i.i
  %i.ix = load i64, ptr %i.hv, align 8, !tbaa !33
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef %i.iy) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit90.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.iz = call i64 (i64, ...) @syscall(i64 noundef 186) #20
  %i.ja = call i64 @llvm.usub.sat.i64(i64 256, i64 %i.iv) ; 4 uses
  %exitcond294.not.i.i = icmp ugt i64 %i.iv, 255
  br i1 %exitcond294.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit95.i.i, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  store i8 32, ptr %.ptr220.i.i, align 1, !tbaa !33
  %exitcond294.1.not.i.i = icmp eq i64 %i.ja, 1
  br i1 %exitcond294.1.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit95.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.jb = getelementptr inbounds nuw i8, ptr %.ptr220.i.i, i64 1
  store i8 76, ptr %i.jb, align 1, !tbaa !33
  %exitcond294.2.not.i.i = icmp eq i64 %i.ja, 2
  br i1 %exitcond294.2.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit95.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.jc = getelementptr inbounds nuw i8, ptr %.ptr220.i.i, i64 2
  store i8 87, ptr %i.jc, align 1, !tbaa !33
  %exitcond294.3.not.i.i = icmp eq i64 %i.ja, 3
  br i1 %exitcond294.3.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit95.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.jd = getelementptr inbounds nuw i8, ptr %.ptr220.i.i, i64 3
  store i8 80, ptr %i.jd, align 1, !tbaa !33
  %exitcond294.4.not.i.i = icmp eq i64 %i.ja, 4
  br i1 %exitcond294.4.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit95.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.je = getelementptr inbounds nuw i8, ptr %.ptr220.i.i, i64 4
  store i8 32, ptr %i.je, align 1, !tbaa !33
  br label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit95.i.i

_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit95.i.i: ; preds = %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.0.lcssa.i93.i.i = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ 5, %bb.dg ], [ 1, %bb.dc ], [ 4, %bb.df ], [ 2, %bb.dd ], [ 3, %bb.de ]
  %.add217.i.i = add nuw nsw i64 %.0.lcssa.i93.i.i, %i.iv ; 4 uses
  %.ptr221.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.add217.i.i ; 3 uses
  %i.jf = call i64 @llvm.usub.sat.i64(i64 256, i64 %.add217.i.i) ; 3 uses
  %exitcond299.not.i.i68 = icmp ugt i64 %.add217.i.i, 255
  br i1 %exitcond299.not.i.i68, label %split.i98.i.i, label %.lr.ph71

bb.dh:                                            ; preds = %.lr.ph71
  %exitcond299.not.i.i = icmp eq i64 %indvars.iv.next296.i.i, %i.jf
  br i1 %exitcond299.not.i.i, label %split.i98.i.i, label %.lr.ph71

.lr.ph71:                                         ; preds = %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit95.i.i, %bb.dh
  %.015.i96.i.i70 = phi i64 [ %i.ji, %bb.dh ], [ %i.iz, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit95.i.i ] ; 3 uses
  %indvars.iv295.i.i69 = phi i64 [ %indvars.iv.next296.i.i, %bb.dh ], [ 0, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit95.i.i ] ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.ptr221.i.i, i64 %indvars.iv295.i.i69
  %i.jh = urem i64 %.015.i96.i.i70, 10
  %i.ji = udiv i64 %.015.i96.i.i70, 10
  %i.jj = trunc nuw nsw i64 %i.jh to i8
  %i.jk = or disjoint i8 %i.jj, 48
  store i8 %i.jk, ptr %i.jg, align 1, !tbaa !33
  %indvars.iv.next296.i.i = add nuw nsw i64 %indvars.iv295.i.i69, 1 ; 3 uses
  %i.jl = icmp ult i64 %.015.i96.i.i70, 10
  br i1 %i.jl, label %split.i98.i.i, label %bb.dh

split.i98.i.i:                                    ; preds = %bb.dh, %.lr.ph71, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit95.i.i
  %.pre-phi.i99.i.i = phi i64 [ %i.jf, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit95.i.i ], [ %i.jf, %bb.dh ], [ %indvars.iv.next296.i.i, %.lr.ph71 ] ; 3 uses
  %i.jm = and i64 %.pre-phi.i99.i.i, 4294967294
  %.not337.i.i = icmp eq i64 %i.jm, 0
  br i1 %.not337.i.i, label %.loopexit231.i.i, label %.lr.ph.i.i.preheader.i101.i.i

.lr.ph.i.i.preheader.i101.i.i:                    ; preds = %split.i98.i.i
  %i.jn = getelementptr i8, ptr %.ptr221.i.i, i64 %.pre-phi.i99.i.i
  %.012.i.i.i102.i.i = getelementptr i8, ptr %i.jn, i64 -1
  br label %.lr.ph.i.i.i103.i.i

.lr.ph.i.i.i103.i.i:                              ; preds = %.lr.ph.i.i.i103.i.i, %.lr.ph.i.i.preheader.i101.i.i
  %.014.i.i.i104.i.i = phi ptr [ %.0.i.i.i106.i.i, %.lr.ph.i.i.i103.i.i ], [ %.012.i.i.i102.i.i, %.lr.ph.i.i.preheader.i101.i.i ] ; 3 uses
  %.0913.i.i.i105.i.i = phi ptr [ %i.jq, %.lr.ph.i.i.i103.i.i ], [ %.ptr221.i.i, %.lr.ph.i.i.preheader.i101.i.i ] ; 3 uses
  %i.jo = load i8, ptr %.0913.i.i.i105.i.i, align 1, !tbaa !33
  %i.jp = load i8, ptr %.014.i.i.i104.i.i, align 1, !tbaa !33
  store i8 %i.jp, ptr %.0913.i.i.i105.i.i, align 1, !tbaa !33
  store i8 %i.jo, ptr %.014.i.i.i104.i.i, align 1, !tbaa !33
  %i.jq = getelementptr inbounds nuw i8, ptr %.0913.i.i.i105.i.i, i64 1 ; 2 uses
  %.0.i.i.i106.i.i = getelementptr inbounds i8, ptr %.014.i.i.i104.i.i, i64 -1 ; 2 uses
  %i.jr = icmp ult ptr %i.jq, %.0.i.i.i106.i.i
  br i1 %i.jr, label %.lr.ph.i.i.i103.i.i, label %.loopexit231.i.i, !llvm.loop !0

.loopexit231.i.i:                                 ; preds = %.lr.ph.i.i.i103.i.i, %split.i98.i.i
  %.add218.i.i = add nuw nsw i64 %.pre-phi.i99.i.i, %.add217.i.i ; 4 uses
  %exitcond301.not.i.i = icmp sgt i64 %.add218.i.i, 255
  br i1 %exitcond301.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit117.i.i, label %bb.di

bb.di:                                            ; preds = %.loopexit231.i.i
  %.ptr223.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.add218.i.i ; 2 uses
  store i8 41, ptr %.ptr223.i.i, align 1, !tbaa !33
  %exitcond301.1.not.i.i = icmp eq i64 %.add218.i.i, 255
  br i1 %exitcond301.1.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit117.i.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %.ptr223.1.i.i = getelementptr inbounds nuw i8, ptr %.ptr223.i.i, i64 1
  store i8 32, ptr %.ptr223.1.i.i, align 1, !tbaa !33
  br label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit117.i.i

_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit117.i.i: ; preds = %bb.dj, %bb.di, %.loopexit231.i.i
  %.0.lcssa.i115.i.i = phi i64 [ 0, %.loopexit231.i.i ], [ 2, %bb.dj ], [ 1, %bb.di ]
  %i.js = add nuw nsw i64 %.0.lcssa.i115.i.i, %.add218.i.i ; 4 uses
  %.ptr227.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.js ; 9 uses
  %i.jt = call i64 @llvm.usub.sat.i64(i64 256, i64 %i.js) ; 8 uses
  %exitcond303.not.i.i = icmp ugt i64 %i.js, 255
  br i1 %exitcond303.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit122.i.i, label %bb.dk

bb.dk:                                            ; preds = %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit117.i.i
end_hunk_0
begin_hunk_1_@_ZN5nglog12_GLOBAL__N_120FailureSignalHandlerEiP9siginfo_tPv:bb.a
  br i1 %exitcond308.not.i.i75, label %split.i125.i.i, label %.lr.ph78

.lr.ph78:                                         ; preds = %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit122.i.i
  %i.kd = load i32, ptr %i.fn, align 8, !tbaa !33
  %i.ke = sext i32 %i.kd to i64
  br label %bb.du

bb.dt:                                            ; preds = %bb.du
  %exitcond308.not.i.i = icmp eq i64 %indvars.iv.next305.i.i, %i.kc
  br i1 %exitcond308.not.i.i, label %split.i125.i.i, label %bb.du

bb.du:                                            ; preds = %.lr.ph78, %bb.dt
  %.015.i123.i.i77 = phi i64 [ %i.ke, %.lr.ph78 ], [ %i.kh, %bb.dt ] ; 3 uses
  %indvars.iv304.i.i76 = phi i64 [ 0, %.lr.ph78 ], [ %indvars.iv.next305.i.i, %bb.dt ] ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.ptr228.i.i, i64 %indvars.iv304.i.i76
  %i.kg = urem i64 %.015.i123.i.i77, 10
  %i.kh = udiv i64 %.015.i123.i.i77, 10
  %i.ki = trunc nuw nsw i64 %i.kg to i8
  %i.kj = or disjoint i8 %i.ki, 48
  store i8 %i.kj, ptr %i.kf, align 1, !tbaa !33
  %indvars.iv.next305.i.i = add nuw nsw i64 %indvars.iv304.i.i76, 1 ; 3 uses
  %i.kk = icmp ult i64 %.015.i123.i.i77, 10
  br i1 %i.kk, label %split.i125.i.i, label %bb.dt

split.i125.i.i:                                   ; preds = %bb.dt, %bb.du, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit122.i.i
  %.pre-phi.i126.i.i = phi i64 [ %i.kc, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit122.i.i ], [ %i.kc, %bb.dt ], [ %indvars.iv.next305.i.i, %bb.du ] ; 3 uses
  %i.kl = and i64 %.pre-phi.i126.i.i, 4294967294
  %.not338.i.i = icmp eq i64 %i.kl, 0
  br i1 %.not338.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.preheader.i128.i.i

.lr.ph.i.i.preheader.i128.i.i:                    ; preds = %split.i125.i.i
  %i.km = getelementptr i8, ptr %.ptr228.i.i, i64 %.pre-phi.i126.i.i
  %.012.i.i.i129.i.i = getelementptr i8, ptr %i.km, i64 -1
  br label %.lr.ph.i.i.i130.i.i

.lr.ph.i.i.i130.i.i:                              ; preds = %.lr.ph.i.i.i130.i.i, %.lr.ph.i.i.preheader.i128.i.i
  %.014.i.i.i131.i.i = phi ptr [ %.0.i.i.i133.i.i, %.lr.ph.i.i.i130.i.i ], [ %.012.i.i.i129.i.i, %.lr.ph.i.i.preheader.i128.i.i ] ; 3 uses
  %.0913.i.i.i132.i.i = phi ptr [ %i.kp, %.lr.ph.i.i.i130.i.i ], [ %.ptr228.i.i, %.lr.ph.i.i.preheader.i128.i.i ] ; 3 uses
  %i.kn = load i8, ptr %.0913.i.i.i132.i.i, align 1, !tbaa !33
  %i.ko = load i8, ptr %.014.i.i.i131.i.i, align 1, !tbaa !33
  store i8 %i.ko, ptr %.0913.i.i.i132.i.i, align 1, !tbaa !33
  store i8 %i.kn, ptr %.014.i.i.i131.i.i, align 1, !tbaa !33
  %i.kp = getelementptr inbounds nuw i8, ptr %.0913.i.i.i132.i.i, i64 1 ; 2 uses
  %.0.i.i.i133.i.i = getelementptr inbounds i8, ptr %.014.i.i.i131.i.i, i64 -1 ; 2 uses
  %i.kq = icmp ult ptr %i.kp, %.0.i.i.i133.i.i
  br i1 %i.kq, label %.lr.ph.i.i.i130.i.i, label %.loopexit.i.i, !llvm.loop !0

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i130.i.i, %split.i125.i.i
  %.add225.i.i = add nuw nsw i64 %.pre-phi.i126.i.i, %.add224.i.i ; 4 uses
  %exitcond310.not.i.i = icmp sgt i64 %.add225.i.i, 255
  br i1 %exitcond310.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit144.i.i, label %bb.dv

bb.dv:                                            ; preds = %.loopexit.i.i
  %.ptr230.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.add225.i.i ; 2 uses
  store i8 59, ptr %.ptr230.i.i, align 1, !tbaa !33
  %exitcond310.1.not.i.i = icmp eq i64 %.add225.i.i, 255
  br i1 %exitcond310.1.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit144.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %.ptr230.1.i.i = getelementptr inbounds nuw i8, ptr %.ptr230.i.i, i64 1
  store i8 32, ptr %.ptr230.1.i.i, align 1, !tbaa !33
  br label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit144.i.i

_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit144.i.i: ; preds = %bb.dw, %bb.dv, %.loopexit.i.i
  %.0.lcssa.i142.i.i = phi i64 [ 0, %.loopexit.i.i ], [ 2, %bb.dw ], [ 1, %bb.dv ]
  %i.kr = add nuw nsw i64 %.0.lcssa.i142.i.i, %.add225.i.i ; 4 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.kr ; 17 uses
  %i.kt = call i64 @llvm.usub.sat.i64(i64 256, i64 %i.kr) ; 16 uses
  %exitcond312.not.i.i = icmp ugt i64 %i.kr, 255
  br i1 %exitcond312.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit149.i.i, label %bb.dx

bb.dx:                                            ; preds = %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit144.i.i
  store i8 115, ptr %i.ks, align 1, !tbaa !33
  %exitcond312.1.not.i.i = icmp eq i64 %i.kt, 1
  br i1 %exitcond312.1.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit149.i.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 1
  store i8 116, ptr %i.ku, align 1, !tbaa !33
  %exitcond312.2.not.i.i = icmp eq i64 %i.kt, 2
  br i1 %exitcond312.2.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit149.i.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 2
  store i8 97, ptr %i.kv, align 1, !tbaa !33
  %exitcond312.3.not.i.i = icmp eq i64 %i.kt, 3
  br i1 %exitcond312.3.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit149.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 3
  store i8 99, ptr %i.kw, align 1, !tbaa !33
  %exitcond312.4.not.i.i = icmp eq i64 %i.kt, 4
  br i1 %exitcond312.4.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit149.i.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ks, i64 4
  store i8 107, ptr %i.kx, align 1, !tbaa !33
  %exitcond312.5.not.i.i = icmp eq i64 %i.kt, 5
  br i1 %exitcond312.5.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit149.i.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ks, i64 5
  store i8 32, ptr %i.ky, align 1, !tbaa !33
  %exitcond312.6.not.i.i = icmp eq i64 %i.kt, 6
  br i1 %exitcond312.6.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit149.i.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ks, i64 6
  store i8 116, ptr %i.kz, align 1, !tbaa !33
  %exitcond312.7.not.i.i = icmp eq i64 %i.kt, 7
  br i1 %exitcond312.7.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit149.i.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.la = getelementptr inbounds nuw i8, ptr %i.ks, i64 7
  store i8 114, ptr %i.la, align 1, !tbaa !33
  %exitcond312.8.not.i.i = icmp eq i64 %i.kt, 8
  br i1 %exitcond312.8.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit149.i.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  store i8 97, ptr %i.lb, align 1, !tbaa !33
  %exitcond312.9.not.i.i = icmp eq i64 %i.kt, 9
  br i1 %exitcond312.9.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit149.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ks, i64 9
  store i8 99, ptr %i.lc, align 1, !tbaa !33
  %exitcond312.10.not.i.i = icmp eq i64 %i.kt, 10
  br i1 %exitcond312.10.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit149.i.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ks, i64 10
  store i8 101, ptr %i.ld, align 1, !tbaa !33
  %exitcond312.11.not.i.i = icmp eq i64 %i.kt, 11
  br i1 %exitcond312.11.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit149.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.le = getelementptr inbounds nuw i8, ptr %i.ks, i64 11
  store i8 58, ptr %i.le, align 1, !tbaa !33
  %exitcond312.12.not.i.i = icmp eq i64 %i.kt, 12
  br i1 %exitcond312.12.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit149.i.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ks, i64 12
  store i8 32, ptr %i.lf, align 1, !tbaa !33
  %exitcond312.13.not.i.i = icmp eq i64 %i.kt, 13
  br i1 %exitcond312.13.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit149.i.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ks, i64 13
  store i8 42, ptr %i.lg, align 1, !tbaa !33
  %exitcond312.14.not.i.i = icmp eq i64 %i.kt, 14
  br i1 %exitcond312.14.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit149.i.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ks, i64 14
  store i8 42, ptr %i.lh, align 1, !tbaa !33
  %exitcond312.15.not.i.i = icmp eq i64 %i.kt, 15
  br i1 %exitcond312.15.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit149.i.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.li = getelementptr inbounds nuw i8, ptr %i.ks, i64 15
  store i8 42, ptr %i.li, align 1, !tbaa !33
  %exitcond312.16.not.i.i = icmp eq i64 %i.kt, 16
  br i1 %exitcond312.16.not.i.i, label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit149.i.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  store i8 10, ptr %i.lj, align 1, !tbaa !33
  br label %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit149.i.i

_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit149.i.i: ; preds = %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit144.i.i
  %.0.lcssa.i147.i.i = phi i64 [ 0, %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit144.i.i ], [ 17, %bb.en ], [ 1, %bb.dx ], [ 16, %bb.em ], [ 2, %bb.dy ], [ 9, %bb.ef ], [ 3, %bb.dz ], [ 15, %bb.el ], [ 4, %bb.ea ], [ 12, %bb.ei ], [ 5, %bb.eb ], [ 14, %bb.ek ], [ 6, %bb.ec ], [ 10, %bb.eg ], [ 7, %bb.ed ], [ 13, %bb.ej ], [ 8, %bb.ee ], [ 11, %bb.eh ]
  %i.lk = load ptr, ptr @_ZN5nglog12_GLOBAL__N_116g_failure_writerE, align 8, !tbaa !35
  %i.ll = add nuw nsw i64 %.0.lcssa.i147.i.i, %i.kr
  invoke void %i.lk(ptr noundef nonnull %i.a, i64 noundef %i.ll)
          to label %bb.eo unwind label %bb.ep

bb.eo:                                            ; preds = %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit149.i.i
  %i.lm = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.lm, ptr %4, align 8, !tbaa !11
  %i.ln = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.lo = getelementptr i8, ptr %i.lm, i64 -24
  %i.lp = load i64, ptr %i.lo, align 8
  %i.lq = getelementptr inbounds i8, ptr %4, i64 %i.lp
  store ptr %i.ln, ptr %i.lq, align 8, !tbaa !11
  %i.lr = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.lr, align 8, !tbaa !11
  %i.ls = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !67 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.lv = icmp eq ptr %i.lt, %i.lu
  br i1 %i.lv, label %_ZN5nglog12_GLOBAL__N_114DumpSignalInfoEiP9siginfo_t.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.eo
  %i.lw = load i64, ptr %i.lu, align 8, !tbaa !33
  %i.lx = add i64 %i.lw, 1
  call void @_ZdlPvm(ptr noundef %i.lt, i64 noundef %i.lx) #22
  br label %_ZN5nglog12_GLOBAL__N_114DumpSignalInfoEiP9siginfo_t.exit.i

7:                                                ; preds = %bb.cy, %bb.cx
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

.body.i.i:                                        ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.eq

bb.ep:                                            ; preds = %_ZN5nglog12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit149.i.i
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %.body.i.i, %7
  %.pn.i.i = phi { ptr, i32 } [ %i.ly, %bb.ep ], [ %i.ii, %.body.i.i ], [ %8, %7 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  resume { ptr, i32 } %.pn.i.i

_ZN5nglog12_GLOBAL__N_114DumpSignalInfoEiP9siginfo_t.exit.i: ; preds = %bb.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.lr, align 8, !tbaa !11
  %i.lz = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.lz) #20
  %i.ma = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ma) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.not.i22.i = icmp eq ptr %2, null
  br i1 %.not.i22.i, label %_ZN5nglog12_GLOBAL__N_15GetPCEPv.exit.i, label %bb.er

bb.er:                                            ; preds = %_ZN5nglog12_GLOBAL__N_114DumpSignalInfoEiP9siginfo_t.exit.i
  %i.mb = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !69
  %i.md = inttoptr i64 %i.mc to ptr
  br label %_ZN5nglog12_GLOBAL__N_15GetPCEPv.exit.i

_ZN5nglog12_GLOBAL__N_15GetPCEPv.exit.i:          ; preds = %bb.er, %_ZN5nglog12_GLOBAL__N_114DumpSignalInfoEiP9siginfo_t.exit.i
  %.0.i.i = phi ptr [ %i.md, %bb.er ], [ null, %_ZN5nglog12_GLOBAL__N_114DumpSignalInfoEiP9siginfo_t.exit.i ]
  call fastcc void @_ZN5nglog12_GLOBAL__N_118DumpStackFrameInfoEPKcPv(ptr noundef nonnull @.str.2, ptr noundef %.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.me = call noundef i32 @_ZN5nglog5tools13GetStackTraceEPPvii(ptr noundef nonnull %i.c, i32 noundef 32, i32 noundef 1) ; 2 uses
  %i.mf = icmp sgt i32 %i.me, 0
  br i1 %i.mf, label %.lr.ph.preheader.i, label %_ZN5nglog12_GLOBAL__N_112HandleSignalEiP9siginfo_tPv.exit

.lr.ph.preheader.i:                               ; preds = %_ZN5nglog12_GLOBAL__N_15GetPCEPv.exit.i
  %wide.trip.count.i = zext nneg i32 %i.me to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !35
  call fastcc void @_ZN5nglog12_GLOBAL__N_118DumpStackFrameInfoEPKcPv(ptr noundef nonnull @.str.3, ptr noundef %i.mh)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond29.not.i, label %_ZN5nglog12_GLOBAL__N_112HandleSignalEiP9siginfo_tPv.exit, label %.lr.ph.i, !llvm.loop !54

_ZN5nglog12_GLOBAL__N_112HandleSignalEiP9siginfo_tPv.exit: ; preds = %.lr.ph.i, %_ZN5nglog12_GLOBAL__N_15GetPCEPv.exit.i
  call void @_ZN5nglog19FlushLogFilesUnsafeENS_11LogSeverityE(i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, i8 0, i64 152, i1 false)
  %i.mi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.mj = call i32 @sigemptyset(ptr noundef nonnull %i.mi) #20 ; 0 uses
  store ptr null, ptr %3, align 8, !tbaa !33
  %i.mk = call i32 @sigaction(i32 noundef %0, ptr noundef nonnull %3, ptr noundef null) #20 ; 0 uses
  %i.ml = call i32 @getpid() #20
  %i.mm = call i32 @kill(i32 noundef %i.ml, i32 noundef %0) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  store atomic i8 0, ptr @_ZN5nglog12_GLOBAL__N_132g_failure_signal_handler_enteredE release, align 1
  store volatile i32 0, ptr %i.d, align 4, !tbaa !55
  br label %bb.es

bb.es:                                            ; preds = %_ZN5nglog12_GLOBAL__N_112HandleSignalEiP9siginfo_tPv.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define void @_ZN5nglog27InstallFailureSignalHandlerEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %struct.sigaction, align 8          ; 13 uses
  %1 = alloca %"class.nglog::ErrnoLogMessage", align 8 ; 32 uses
  %i.a = alloca { i64, i64 }, align 8             ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 152, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = call i32 @sigemptyset(ptr noundef nonnull %i.b) #20 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !72
  %i.f = or i32 %i.e, 4
  store i32 %i.f, ptr %i.d, align 8, !tbaa !72
  store ptr @_ZN5nglog12_GLOBAL__N_120FailureSignalHandlerEiP9siginfo_tPv, ptr %0, align 8, !tbaa !33
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  %i.g = call i32 @sigaction(i32 noundef 11, ptr noundef nonnull %0, ptr noundef null) #20
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.b, label %.critedge11, !prof !73

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 ptrtoint (ptr @_ZN5nglog10LogMessage9SendToLogEv to i64), ptr %i.a, align 8, !tbaa !33
  store i64 0, ptr %.fca.1.gep, align 8, !tbaa !33
  call void @_ZN5nglog15ErrnoLogMessageC1EPKciNS_11LogSeverityElMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str, i32 noundef 472, i32 noundef 3, i64 noundef 0, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5nglog10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.1, i64 noundef 54)
          to label %.critedge unwind label %bb.n  ; 0 uses

.critedge:                                        ; preds = %bb.c
  call void @_ZN5nglog15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %.critedge11

.critedge11:                                      ; preds = %bb.a, %.critedge
  %i.k = call i32 @sigaction(i32 noundef 4, ptr noundef nonnull %0, ptr noundef null) #20
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.d, label %.critedge11.1, !prof !73

bb.d:                                             ; preds = %.critedge11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 ptrtoint (ptr @_ZN5nglog10LogMessage9SendToLogEv to i64), ptr %i.a, align 8, !tbaa !33
  store i64 0, ptr %.fca.1.gep, align 8, !tbaa !33
  call void @_ZN5nglog15ErrnoLogMessageC1EPKciNS_11LogSeverityElMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str, i32 noundef 472, i32 noundef 3, i64 noundef 0, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5nglog10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.1, i64 noundef 54)
          to label %.critedge.1 unwind label %bb.n ; 0 uses

.critedge.1:                                      ; preds = %bb.e
  call void @_ZN5nglog15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %.critedge11.1

.critedge11.1:                                    ; preds = %.critedge.1, %.critedge11
  %i.o = call i32 @sigaction(i32 noundef 8, ptr noundef nonnull %0, ptr noundef null) #20
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %bb.f, label %.critedge11.2, !prof !73

bb.f:                                             ; preds = %.critedge11.1
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 ptrtoint (ptr @_ZN5nglog10LogMessage9SendToLogEv to i64), ptr %i.a, align 8, !tbaa !33
  store i64 0, ptr %.fca.1.gep, align 8, !tbaa !33
  call void @_ZN5nglog15ErrnoLogMessageC1EPKciNS_11LogSeverityElMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str, i32 noundef 472, i32 noundef 3, i64 noundef 0, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5nglog10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.1, i64 noundef 54)
          to label %.critedge.2 unwind label %bb.n ; 0 uses

.critedge.2:                                      ; preds = %bb.g
  call void @_ZN5nglog15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %.critedge11.2

.critedge11.2:                                    ; preds = %.critedge.2, %.critedge11.1
  %i.s = call i32 @sigaction(i32 noundef 6, ptr noundef nonnull %0, ptr noundef null) #20
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.h, label %.critedge11.3, !prof !73

bb.h:                                             ; preds = %.critedge11.2
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 ptrtoint (ptr @_ZN5nglog10LogMessage9SendToLogEv to i64), ptr %i.a, align 8, !tbaa !33
  store i64 0, ptr %.fca.1.gep, align 8, !tbaa !33
  call void @_ZN5nglog15ErrnoLogMessageC1EPKciNS_11LogSeverityElMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str, i32 noundef 472, i32 noundef 3, i64 noundef 0, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5nglog10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.1, i64 noundef 54)
          to label %.critedge.3 unwind label %bb.n ; 0 uses

.critedge.3:                                      ; preds = %bb.i
  call void @_ZN5nglog15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %.critedge11.3

.critedge11.3:                                    ; preds = %.critedge.3, %.critedge11.2
  %i.w = call i32 @sigaction(i32 noundef 7, ptr noundef nonnull %0, ptr noundef null) #20
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %bb.j, label %.critedge11.4, !prof !73

bb.j:                                             ; preds = %.critedge11.3
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 ptrtoint (ptr @_ZN5nglog10LogMessage9SendToLogEv to i64), ptr %i.a, align 8, !tbaa !33
  store i64 0, ptr %.fca.1.gep, align 8, !tbaa !33
  call void @_ZN5nglog15ErrnoLogMessageC1EPKciNS_11LogSeverityElMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str, i32 noundef 472, i32 noundef 3, i64 noundef 0, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5nglog10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.1, i64 noundef 54)
          to label %.critedge.4 unwind label %bb.n ; 0 uses

.critedge.4:                                      ; preds = %bb.k
  call void @_ZN5nglog15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %.critedge11.4
end_hunk_1
