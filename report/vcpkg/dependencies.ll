Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/dependencies?download=true
inline.NumInlined: 13345
inline.NumDeleted: 2355
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_ZL19C_A_T_C_H_T_E_S_T_3v:bb.a
  br i1 %i.fp, label %_ZN5Catch16AssertionHandlerD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fq = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !126, !nonnull !113, !align !127 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !33
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 112
  %i.fu = load ptr, ptr %i.ft, align 8
  invoke void %i.fu(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, ptr noundef nonnull align 8 dereferenceable(72) %15)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fv = landingpad { ptr, i32 }
          catch ptr null
  %i.fw = extractvalue { ptr, i32 } %i.fv, 0
  call void @__clang_call_terminate(ptr %i.fw) #21
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit:             ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.fx = load i8, ptr %i.eg, align 8, !tbaa !111, !range !112, !noundef !113
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  store ptr @.str.126, ptr %20, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 7, ptr %i.fy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  store ptr @.str, ptr %21, align 8, !tbaa !108
  %i.fz = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 300, ptr %i.fz, align 8, !tbaa !109
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull @.str.128) #22
  %i.ga = load ptr, ptr %22, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.gc = load i64, ptr %i.gb, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %19, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr %i.ga, i64 %i.gc, i32 noundef 1)
          to label %bb.ah unwind label %bb.an

bb.ah:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit
  %i.gd = trunc nuw i8 %i.fx to i1                ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %.sroa.gep103 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %spec.select.i.sroa.sel104 = select i1 %i.gd, ptr inttoptr (i64 8 to ptr), ptr %.sroa.gep103
  %i.ge = load ptr, ptr %spec.select.i.sroa.sel104, align 8, !tbaa !130
  %i.gf = load ptr, ptr %11, align 8, !tbaa !131
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = sub i64 %i.gg, %i.gh
  %i.gj = sdiv exact i64 %i.gi, 48
  %.sroa.gep105 = getelementptr inbounds nuw i8, ptr %11, i64 24
  %spec.select.i.sroa.sel106 = select i1 %i.gd, ptr inttoptr (i64 24 to ptr), ptr %.sroa.gep105
  %.sroa.gep107 = getelementptr inbounds nuw i8, ptr %11, i64 32
  %spec.select.i.sroa.sel108 = select i1 %i.gd, ptr inttoptr (i64 32 to ptr), ptr %.sroa.gep107
  %i.gk = load ptr, ptr %spec.select.i.sroa.sel108, align 8, !tbaa !134
  %i.gl = load ptr, ptr %spec.select.i.sroa.sel106, align 8, !tbaa !135
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = sdiv exact i64 %i.go, 152
  %i.gq = add nsw i64 %i.gp, %i.gj
  %.sroa.gep109 = getelementptr inbounds nuw i8, ptr %11, i64 48
  %spec.select.i.sroa.sel110 = select i1 %i.gd, ptr inttoptr (i64 48 to ptr), ptr %.sroa.gep109 ; 2 uses
  %.sroa.gep111 = getelementptr inbounds nuw i8, ptr %11, i64 56
  %spec.select.i.sroa.sel112 = select i1 %i.gd, ptr inttoptr (i64 56 to ptr), ptr %.sroa.gep111 ; 2 uses
  %i.gr = load ptr, ptr %spec.select.i.sroa.sel112, align 8, !tbaa !138
  %i.gs = load ptr, ptr %spec.select.i.sroa.sel110, align 8, !tbaa !139
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = sub i64 %i.gt, %i.gu
  %i.gw = sdiv exact i64 %i.gv, 440
  %i.gx = add nsw i64 %i.gq, %i.gw                ; 2 uses
  store i64 %i.gx, ptr %i.a, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 1, ptr %i.b, align 4, !tbaa !140
  call void @llvm.experimental.noalias.scope.decl(metadata !400)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.gy = icmp eq i64 %i.gx, 1
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.142) #22, !noalias !400
  %i.gz = load ptr, ptr %1, align 8, !noalias !400
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hb = load i64, ptr %i.ha, align 8, !noalias !400
  %i.hc = zext i1 %i.gy to i8
  %i.hd = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i8 1, ptr %i.hd, align 8, !tbaa !115, !alias.scope !400
  %i.he = getelementptr inbounds nuw i8, ptr %23, i64 9
  store i8 %i.hc, ptr %i.he, align 1, !tbaa !116, !alias.scope !400
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKmRKiEE, i64 16), ptr %23, align 8, !tbaa !33, !alias.scope !400
  %i.hf = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr %i.a, ptr %i.hf, align 8, !tbaa !142, !alias.scope !400
  %i.hg = getelementptr inbounds nuw i8, ptr %23, i64 24
  store ptr %i.gz, ptr %i.hg, align 8, !tbaa !55, !alias.scope !400
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %23, i64 32
  store i64 %i.hb, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !56, !alias.scope !400
  %i.hh = getelementptr inbounds nuw i8, ptr %23, i64 40
  store ptr %i.b, ptr %i.hh, align 8, !tbaa !144, !alias.scope !400
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %19, ptr noundef nonnull align 8 dereferenceable(10) %23)
          to label %bb.ai unwind label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.aq

bb.aj:                                            ; preds = %.body73
  %i.hi = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.al unwind label %bb.bz

bb.ak:                                            ; preds = %bb.ad, %bb.ac
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %.pn35 = phi { ptr, i32 } [ %i.hj, %bb.ak ], [ %i.hi, %bb.aj ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %15) #22
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ab
  %.pn35.pn = phi { ptr, i32 } [ %.pn35, %bb.al ], [ %i.fm, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.bv

bb.an:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.bd

bb.ao:                                            ; preds = %bb.ah
  %i.hl = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %.9 = extractvalue { ptr, i32 } %i.hl, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.hm = call ptr @__cxa_begin_catch(ptr %.9) #22 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %19)
          to label %bb.ap unwind label %bb.ba

bb.ap:                                            ; preds = %bb.ao
  invoke void @__cxa_end_catch()
          to label %bb.aq unwind label %bb.bb

bb.aq:                                            ; preds = %bb.ap, %bb.ai
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %19)
          to label %bb.ar unwind label %bb.bb

bb.ar:                                            ; preds = %bb.aq
  %i.hn = getelementptr inbounds nuw i8, ptr %19, i64 58
  %i.ho = load i8, ptr %i.hn, align 2, !tbaa !125, !range !112, !noundef !113
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %_ZN5Catch16AssertionHandlerD2Ev.exit87, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hq = getelementptr inbounds nuw i8, ptr %19, i64 64
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !126, !nonnull !113, !align !127 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !33
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 112
  %i.hu = load ptr, ptr %i.ht, align 8
  invoke void %i.hu(ptr noundef nonnull align 8 dereferenceable(8) %i.hr, ptr noundef nonnull align 8 dereferenceable(72) %19)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit87 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hv = landingpad { ptr, i32 }
          catch ptr null
  %i.hw = extractvalue { ptr, i32 } %i.hv, 0
  call void @__clang_call_terminate(ptr %i.hw) #21
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit87:           ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  store ptr @.str.126, ptr %25, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 7, ptr %i.hx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  store ptr @.str, ptr %26, align 8, !tbaa !108
  %i.hy = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 301, ptr %i.hy, align 8, !tbaa !109
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull @.str.129) #22
  %i.hz = load ptr, ptr %27, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ib = load i64, ptr %i.ia, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %24, ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(16) %26, ptr %i.hz, i64 %i.ib, i32 noundef 1)
          to label %bb.au unwind label %bb.be

bb.au:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit87
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  %i.ic = load ptr, ptr %spec.select.i.sroa.sel112, align 8, !tbaa !138 ; 2 uses
  %i.id = load ptr, ptr %spec.select.i.sroa.sel110, align 8, !tbaa !139 ; 3 uses
  %.not.i.i88.not = icmp eq ptr %i.ic, %i.id
  br i1 %.not.i.i88.not, label %bb.av, label %_ZNSt6vectorIN5vcpkg17InstallPlanActionESaIS1_EE2atEm.exit

bb.av:                                            ; preds = %bb.au
  %29 = ptrtoint ptr %i.ic to i64
  %30 = ptrtoint ptr %i.id to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 440
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.143, i64 noundef 0, i64 noundef %32) #25
          to label %.noexc89 unwind label %bb.bf

.noexc89:                                         ; preds = %bb.av
  unreachable

_ZNSt6vectorIN5vcpkg17InstallPlanActionESaIS1_EE2atEm.exit: ; preds = %bb.au
  %i.ie = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg11PackageSpec4nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.id)
          to label %bb.aw unwind label %bb.bf     ; 3 uses

bb.aw:                                            ; preds = %_ZNSt6vectorIN5vcpkg17InstallPlanActionESaIS1_EE2atEm.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !401)
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !50, !noalias !401
  %i.ih = icmp eq i64 %i.ig, 1
  br i1 %i.ih, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ii = load ptr, ptr %i.ie, align 8, !tbaa !51, !noalias !401
  %lhsc = load i8, ptr %i.ii, align 1
  %i.ij = icmp eq i8 %lhsc, 97
  %i.ik = zext i1 %i.ij to i8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.il = phi i8 [ 0, %bb.aw ], [ %i.ik, %bb.ax ]
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.142) #22, !noalias !401
  %i.im = load ptr, ptr %0, align 8, !noalias !401
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.io = load i64, ptr %i.in, align 8, !noalias !401
  %i.ip = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i8 1, ptr %i.ip, align 8, !tbaa !115, !alias.scope !401
  %i.iq = getelementptr inbounds nuw i8, ptr %28, i64 9
  store i8 %i.il, ptr %i.iq, align 1, !tbaa !116, !alias.scope !401
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_KcEE, i64 16), ptr %28, align 8, !tbaa !33, !alias.scope !401
  %i.ir = getelementptr inbounds nuw i8, ptr %28, i64 16
  store ptr %i.ie, ptr %i.ir, align 8, !tbaa !146, !alias.scope !401
  %i.is = getelementptr inbounds nuw i8, ptr %28, i64 24
  store ptr %i.im, ptr %i.is, align 8, !tbaa !55, !alias.scope !401
  %.sroa.2.0..sroa_idx.i.i90 = getelementptr inbounds nuw i8, ptr %28, i64 32
  store i64 %i.io, ptr %.sroa.2.0..sroa_idx.i.i90, align 8, !tbaa !56, !alias.scope !401
  %i.it = getelementptr inbounds nuw i8, ptr %28, i64 40
  store ptr @.str.125, ptr %i.it, align 8, !tbaa !55, !alias.scope !401
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %24, ptr noundef nonnull align 8 dereferenceable(10) %28)
          to label %bb.az unwind label %bb.bg

bb.az:                                            ; preds = %bb.ay
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %28) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br label %bb.bj

bb.ba:                                            ; preds = %bb.ao
  %i.iu = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bc unwind label %bb.bz

bb.bb:                                            ; preds = %bb.aq, %bb.ap
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %.pn39 = phi { ptr, i32 } [ %i.iv, %bb.bb ], [ %i.iu, %bb.ba ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %19) #22
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.an
  %.pn39.pn = phi { ptr, i32 } [ %.pn39, %bb.bc ], [ %i.hk, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.bv

bb.be:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit87
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br label %bb.bu

bb.bf:                                            ; preds = %bb.av, %_ZNSt6vectorIN5vcpkg17InstallPlanActionESaIS1_EE2atEm.exit
  %i.ix = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bh

bb.bg:                                            ; preds = %bb.ay
  %i.iy = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %28) #22
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pn42 = phi { ptr, i32 } [ %i.iy, %bb.bg ], [ %i.ix, %bb.bf ]
  %.12 = extractvalue { ptr, i32 } %.pn42, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  %i.iz = call ptr @__cxa_begin_catch(ptr %.12) #22 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %24)
          to label %bb.bi unwind label %bb.br

bb.bi:                                            ; preds = %bb.bh
  invoke void @__cxa_end_catch()
          to label %bb.bj unwind label %bb.bs

bb.bj:                                            ; preds = %bb.bi, %bb.az
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %24)
          to label %bb.bk unwind label %bb.bs

bb.bk:                                            ; preds = %bb.bj
  %i.ja = getelementptr inbounds nuw i8, ptr %24, i64 58
  %i.jb = load i8, ptr %i.ja, align 2, !tbaa !125, !range !112, !noundef !113
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %_ZN5Catch16AssertionHandlerD2Ev.exit91, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jd = getelementptr inbounds nuw i8, ptr %24, i64 64
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !126, !nonnull !113, !align !127 ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !33
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 112
  %i.jh = load ptr, ptr %i.jg, align 8
  invoke void %i.jh(ptr noundef nonnull align 8 dereferenceable(8) %i.je, ptr noundef nonnull align 8 dereferenceable(72) %24)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit91 unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ji = landingpad { ptr, i32 }
          catch ptr null
  %i.jj = extractvalue { ptr, i32 } %i.ji, 0
  call void @__clang_call_terminate(ptr %i.jj) #21
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit91:           ; preds = %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  %i.jk = load i8, ptr %i.eg, align 8, !tbaa !111, !range !112, !noundef !113
  %i.jl = trunc nuw i8 %i.jk to i1
  br i1 %i.jl, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit91
  %i.jm = load ptr, ptr %11, align 8, !tbaa !51   ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.jo = icmp eq ptr %i.jm, %i.jn
  br i1 %i.jo, label %_ZN5vcpkg9ExpectedTINS_10ActionPlanENS_15LocalizedStringEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bn
  %i.jp = load i64, ptr %i.jn, align 8, !tbaa !48
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jq) #23
  br label %_ZN5vcpkg9ExpectedTINS_10ActionPlanENS_15LocalizedStringEED2Ev.exit

bb.bo:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit91
  call void @_ZN5vcpkg10ActionPlanD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(121) %11) #22
  br label %_ZN5vcpkg9ExpectedTINS_10ActionPlanENS_15LocalizedStringEED2Ev.exit

_ZN5vcpkg9ExpectedTINS_10ActionPlanENS_15LocalizedStringEED2Ev.exit: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @_ZN5vcpkg4Test20MockCMakeVarProviderD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV29MockVersionedPortfileProvider, i64 16), ptr %7, align 8, !tbaa !33
  %i.jr = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.js = load ptr, ptr %i.ay, align 8, !tbaa !40
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIN5vcpkg7VersionENS9_28SourceControlFileAndLocationENS9_14VersionMapLessESaIS6_IKSA_SB_EEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef nonnull align 8 dereferenceable(48) %i.jr, ptr noundef %i.js)
          to label %_ZN29MockVersionedPortfileProviderD2Ev.exit unwind label %bb.bp, !inline_history !147

bb.bp:                                            ; preds = %_ZN5vcpkg9ExpectedTINS_10ActionPlanENS_15LocalizedStringEED2Ev.exit
  %i.jt = landingpad { ptr, i32 }
          catch ptr null
  %i.ju = extractvalue { ptr, i32 } %i.jt, 0
  call void @__clang_call_terminate(ptr %i.ju) #21, !inline_history !147
  unreachable

_ZN29MockVersionedPortfileProviderD2Ev.exit:      ; preds = %_ZN5vcpkg9ExpectedTINS_10ActionPlanENS_15LocalizedStringEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV20MockBaselineProvider, i64 16), ptr %4, align 8, !tbaa !33
  %i.jv = load ptr, ptr %i.d, align 8, !tbaa !40
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5vcpkg7VersionEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef %i.jv)
          to label %_ZN20MockBaselineProviderD2Ev.exit unwind label %bb.bq, !inline_history !148

bb.bq:                                            ; preds = %_ZN29MockVersionedPortfileProviderD2Ev.exit
  %i.jw = landingpad { ptr, i32 }
          catch ptr null
  %i.jx = extractvalue { ptr, i32 } %i.jw, 0
  call void @__clang_call_terminate(ptr %i.jx) #21, !inline_history !148
  unreachable

_ZN20MockBaselineProviderD2Ev.exit:               ; preds = %_ZN29MockVersionedPortfileProviderD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.br:                                            ; preds = %bb.bh
  %i.jy = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bt unwind label %bb.bz

bb.bs:                                            ; preds = %bb.bj, %bb.bi
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %.pn43 = phi { ptr, i32 } [ %i.jz, %bb.bs ], [ %i.jy, %bb.br ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %24) #22
end_hunk_0
begin_hunk_1_@_ZL21C_A_T_C_H_T_E_S_T_101v:.noexc.i
  %i.ja = load i64, ptr %i.iu, align 8, !tbaa !48
  store i64 %i.ja, ptr %i.is, align 8, !tbaa !48
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %17, i64 80
  %.pre693 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !50
  br label %_ZN5vcpkg10DependencyC2EOS0_.exit

_ZN5vcpkg10DependencyC2EOS0_.exit:                ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.jb = phi i64 [ %i.ix, %bb.x ], [ %.pre693, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  %i.jc = getelementptr inbounds nuw i8, ptr %17, i64 80
  %i.jd = getelementptr inbounds nuw i8, ptr %16, i64 80
  store i64 %i.jb, ptr %i.jd, align 8, !tbaa !50
  store ptr %i.iu, ptr %i.hx, align 8, !tbaa !51
  store i64 0, ptr %i.jc, align 8, !tbaa !50
  store i8 0, ptr %i.iu, align 8, !tbaa !48
  %i.je = getelementptr inbounds nuw i8, ptr %16, i64 104
  %i.jf = getelementptr inbounds nuw i8, ptr %17, i64 104
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !54
  store i32 %i.jg, ptr %i.je, align 8, !tbaa !54
  %i.jh = getelementptr inbounds nuw i8, ptr %16, i64 112
  %i.ji = load i16, ptr %i.hy, align 8
  store i16 %i.ji, ptr %i.jh, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %16, i64 120
  %i.jk = load <2 x ptr>, ptr %i.ia, align 8, !tbaa !228
  store <2 x ptr> %i.jk, ptr %i.jj, align 8, !tbaa !228
  %i.jl = getelementptr inbounds nuw i8, ptr %16, i64 136
  %i.jm = getelementptr inbounds nuw i8, ptr %17, i64 136
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !226
  store ptr %i.jn, ptr %i.jl, align 8, !tbaa !226
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ia, i8 0, i64 24, i1 false)
  %i.jo = load ptr, ptr %i.ev, align 8, !tbaa !152
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 216
  %i.jq = getelementptr inbounds nuw i8, ptr %16, i64 144
  invoke void @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE13_M_assign_auxIPKS1_EEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.jp, ptr noundef nonnull %16, ptr noundef nonnull %i.jq)
          to label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit unwind label %bb.cd

_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit: ; preds = %_ZN5vcpkg10DependencyC2EOS0_.exit
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %16) #22
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %17) #22
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #22
  %i.jr = getelementptr inbounds nuw i8, ptr %20, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.jr) #22
  %i.js = load ptr, ptr %20, align 8, !tbaa !51   ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ju = icmp eq ptr %i.js, %i.jt
  br i1 %i.ju, label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit363, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i361

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i361: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit
  %i.jv = load i64, ptr %i.jt, align 8, !tbaa !48
  %i.jw = add i64 %i.jv, 1
  call void @_ZdlPvm(ptr noundef %i.js, i64 noundef %i.jw) #23
  br label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit363

_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit363: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i361
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %i.jx = load ptr, ptr %18, align 8, !tbaa !51   ; 2 uses
  %i.jy = icmp eq ptr %i.jx, %i.gm
  br i1 %i.jy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364: ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit363
  %i.jz = load i64, ptr %i.gm, align 8, !tbaa !48
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.ka) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366: ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit363, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 6 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 7 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !213 ; 6 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ev, i64 24 ; 7 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !214 ; 2 uses
  %.not.i.i = icmp eq ptr %i.kd, %i.kf
  br i1 %.not.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366
  %i.kg = load i64, ptr %4, align 8, !tbaa !210
  store i64 %i.kg, ptr %i.kd, align 8, !tbaa !210
  store ptr null, ptr %4, align 8, !tbaa !210
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kd, i64 8 ; 2 uses
  store ptr %i.kh, ptr %i.kc, align 8, !tbaa !213
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366
  %i.ki = load ptr, ptr %i.kb, align 8, !tbaa !215 ; 10 uses
  %i.kj = ptrtoint ptr %i.kd to i64               ; 2 uses
  %i.kk = ptrtoint ptr %i.ki to i64               ; 3 uses
  %i.kl = sub i64 %i.kj, %i.kk                    ; 3 uses
  %i.km = icmp eq i64 %i.kl, 9223372036854775800
  br i1 %i.km, label %.invoke, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.z
  %i.kn = ashr exact i64 %i.kl, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.kn, i64 1)
  %i.ko = add nsw i64 %.sroa.speculated.i.i, %i.kn ; 2 uses
  %i.kp = icmp ult i64 %i.ko, %i.kn
  %i.kq = call i64 @llvm.umin.i64(i64 %i.ko, i64 1152921504606846975)
  %i.kr = select i1 %i.kp, i64 1152921504606846975, i64 %i.kq ; 3 uses
  %.not.i.i570 = icmp ne i64 %i.kr, 0
  call void @llvm.assume(i1 %.not.i.i570)
  %i.ks = shl nuw nsw i64 %i.kr, 3
  %i.kt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ks) #24
          to label %.noexc572 unwind label %bb.ce ; 10 uses

.noexc572:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.kl
  %i.kv = load i64, ptr %4, align 8, !tbaa !210
  store i64 %i.kv, ptr %i.ku, align 8, !tbaa !210
  store ptr null, ptr %4, align 8, !tbaa !210
  %.not10.i.i.i.i = icmp eq ptr %i.ki, %i.kd
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc572
  %i.kw = add i64 %i.kj, -8
  %i.kx = sub i64 %i.kw, %i.kk                    ; 3 uses
  %i.ky = lshr i64 %i.kx, 3
  %i.kz = add nuw nsw i64 %i.ky, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.kx, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader911, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.la = and i64 %i.kx, -8
  %i.lb = add i64 %i.la, 8                        ; 2 uses
  %i.lc = getelementptr i8, ptr %i.kt, i64 %i.lb
  %i.ld = getelementptr i8, ptr %i.ki, i64 %i.lb
  %bound0 = icmp ult ptr %i.kt, %i.ld
  %bound1 = icmp ult ptr %i.ki, %i.lc
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader911, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.kz, 4611686018427387900     ; 3 uses
  %i.le = shl i64 %n.vec, 3                       ; 2 uses
  %i.lf = getelementptr i8, ptr %i.kt, i64 %i.le  ; 2 uses
  %i.lg = getelementptr i8, ptr %i.ki, i64 %i.le
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lh = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.kt, i64 %i.lh ; 2 uses
  %next.gep857 = getelementptr i8, ptr %i.ki, i64 %i.lh ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  %i.li = getelementptr i8, ptr %next.gep857, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep857, align 8, !tbaa !210, !alias.scope !1081
  %wide.load858 = load <2 x i64>, ptr %i.li, align 8, !tbaa !210, !alias.scope !1081
  %i.lj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !210, !alias.scope !1082, !noalias !1083
  store <2 x i64> %wide.load858, ptr %i.lj, align 8, !tbaa !210, !alias.scope !1082, !noalias !1083
  store <2 x ptr> splat (ptr null), ptr %next.gep857, align 8, !tbaa !210, !alias.scope !1081
  store <2 x ptr> splat (ptr null), ptr %i.li, align 8, !tbaa !210, !alias.scope !1081
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lk = icmp eq i64 %index.next, %n.vec
  br i1 %i.lk, label %middle.block, label %vector.body, !llvm.loop !1057

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kz, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader911

.lr.ph.i.i.i.i.preheader911:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.kt, %vector.memcheck ], [ %i.kt, %.lr.ph.i.i.i.i.preheader ], [ %i.lf, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ki, %vector.memcheck ], [ %i.ki, %.lr.ph.i.i.i.i.preheader ], [ %i.lg, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader911, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ln, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader911 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.lm, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader911 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  %i.ll = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !1080
  store i64 %i.ll, ptr %.012.i.i.i.i, align 8, !tbaa !210, !alias.scope !1079
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !1080
  %i.lm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.lm, %i.kd
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1058

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc572
  %.0.lcssa.i.i.i.i = phi ptr [ %i.kt, %.noexc572 ], [ %i.lf, %middle.block ], [ %i.ln, %.lr.ph.i.i.i.i ]
  %i.lo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.ki, null
  br i1 %.not.i23.i, label %.noexc367, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.lp = load ptr, ptr %i.ke, align 8, !tbaa !214
  %i.lq = ptrtoint ptr %i.lp to i64
  %i.lr = sub i64 %i.lq, %i.kk
  call void @_ZdlPvm(ptr noundef nonnull %i.ki, i64 noundef %i.lr) #23
  br label %.noexc367

.noexc367:                                        ; preds = %bb.aa, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.kt, ptr %i.kb, align 8, !tbaa !215
  store ptr %i.lo, ptr %i.kc, align 8, !tbaa !213
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %i.kr ; 2 uses
  store ptr %i.ls, ptr %i.ke, align 8, !tbaa !214
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %.noexc367, %bb.y
  %i.lt = phi ptr [ %i.ls, %.noexc367 ], [ %i.kf, %bb.y ] ; 5 uses
  %i.lu = phi ptr [ %i.lo, %.noexc367 ], [ %i.kh, %bb.y ] ; 4 uses
  %63 = ptrtoaddr ptr %i.lt to i64
  %.not.i.i368 = icmp eq ptr %i.lu, %i.lt
  br i1 %.not.i.i368, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  store i64 %i.ca, ptr %i.lu, align 8, !tbaa !210
  store ptr null, ptr %6, align 8, !tbaa !210
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8 ; 2 uses
  store ptr %i.lv, ptr %i.kc, align 8, !tbaa !213
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit370

bb.ac:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.lw = load ptr, ptr %i.kb, align 8, !tbaa !215 ; 10 uses
  %i.lx = ptrtoint ptr %i.lu to i64
  %i.ly = ptrtoint ptr %i.lw to i64               ; 3 uses
  %i.lz = sub i64 %i.lx, %i.ly                    ; 3 uses
  %i.ma = icmp eq i64 %i.lz, 9223372036854775800
  br i1 %i.ma, label %.invoke, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i573

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i573: ; preds = %bb.ac
  %i.mb = ashr exact i64 %i.lz, 3                 ; 3 uses
  %.sroa.speculated.i.i574 = call i64 @llvm.umax.i64(i64 %i.mb, i64 1)
  %i.mc = add nsw i64 %.sroa.speculated.i.i574, %i.mb ; 2 uses
  %i.md = icmp ult i64 %i.mc, %i.mb
  %i.me = call i64 @llvm.umin.i64(i64 %i.mc, i64 1152921504606846975)
  %i.mf = select i1 %i.md, i64 1152921504606846975, i64 %i.me ; 3 uses
  %.not.i.i575 = icmp ne i64 %i.mf, 0
  call void @llvm.assume(i1 %.not.i.i575)
  %i.mg = shl nuw nsw i64 %i.mf, 3
  %i.mh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mg) #24
          to label %.noexc592 unwind label %bb.ce ; 10 uses

.noexc592:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i573
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.lz
  store i64 %i.ca, ptr %i.mi, align 8, !tbaa !210
  store ptr null, ptr %6, align 8, !tbaa !210
  %.not10.i.i.i.i576 = icmp eq ptr %i.lw, %i.lt
  br i1 %.not10.i.i.i.i576, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i588, label %.lr.ph.i.i.i.i577.preheader

.lr.ph.i.i.i.i577.preheader:                      ; preds = %.noexc592
  %i.mj = add i64 %63, -8
  %i.mk = sub i64 %i.mj, %i.ly                    ; 3 uses
  %i.ml = lshr i64 %i.mk, 3
  %i.mm = add nuw nsw i64 %i.ml, 1                ; 2 uses
  %min.iters.check866 = icmp ult i64 %i.mk, 136
  br i1 %min.iters.check866, label %.lr.ph.i.i.i.i577.preheader909, label %vector.memcheck867

vector.memcheck867:                               ; preds = %.lr.ph.i.i.i.i577.preheader
  %i.mn = and i64 %i.mk, -8
  %i.mo = add i64 %i.mn, 8                        ; 2 uses
  %i.mp = getelementptr i8, ptr %i.mh, i64 %i.mo
  %i.mq = getelementptr i8, ptr %i.lw, i64 %i.mo
  %bound0868 = icmp ult ptr %i.mh, %i.mq
  %bound1869 = icmp ult ptr %i.lw, %i.mp
  %found.conflict870 = and i1 %bound0868, %bound1869
  br i1 %found.conflict870, label %.lr.ph.i.i.i.i577.preheader909, label %vector.ph871

vector.ph871:                                     ; preds = %vector.memcheck867
  %n.vec872 = and i64 %i.mm, 4611686018427387900  ; 3 uses
  %i.mr = shl i64 %n.vec872, 3                    ; 2 uses
  %i.ms = getelementptr i8, ptr %i.mh, i64 %i.mr  ; 2 uses
  %i.mt = getelementptr i8, ptr %i.lw, i64 %i.mr
  br label %vector.body873

vector.body873:                                   ; preds = %vector.body873, %vector.ph871
  %index874 = phi i64 [ 0, %vector.ph871 ], [ %index.next879, %vector.body873 ] ; 2 uses
  %i.mu = shl i64 %index874, 3                    ; 2 uses
  %next.gep875 = getelementptr i8, ptr %i.mh, i64 %i.mu ; 2 uses
  %next.gep876 = getelementptr i8, ptr %i.lw, i64 %i.mu ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  %i.mv = getelementptr i8, ptr %next.gep876, i64 16 ; 2 uses
  %wide.load877 = load <2 x i64>, ptr %next.gep876, align 8, !tbaa !210, !alias.scope !1086
  %wide.load878 = load <2 x i64>, ptr %i.mv, align 8, !tbaa !210, !alias.scope !1086
  %i.mw = getelementptr i8, ptr %next.gep875, i64 16
  store <2 x i64> %wide.load877, ptr %next.gep875, align 8, !tbaa !210, !alias.scope !1087, !noalias !1088
  store <2 x i64> %wide.load878, ptr %i.mw, align 8, !tbaa !210, !alias.scope !1087, !noalias !1088
  store <2 x ptr> splat (ptr null), ptr %next.gep876, align 8, !tbaa !210, !alias.scope !1086
  store <2 x ptr> splat (ptr null), ptr %i.mv, align 8, !tbaa !210, !alias.scope !1086
  %index.next879 = add nuw i64 %index874, 4       ; 2 uses
  %i.mx = icmp eq i64 %index.next879, %n.vec872
  br i1 %i.mx, label %middle.block880, label %vector.body873, !llvm.loop !1065

middle.block880:                                  ; preds = %vector.body873
  %cmp.n881 = icmp eq i64 %i.mm, %n.vec872
  br i1 %cmp.n881, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i588, label %.lr.ph.i.i.i.i577.preheader909

.lr.ph.i.i.i.i577.preheader909:                   ; preds = %vector.memcheck867, %.lr.ph.i.i.i.i577.preheader, %middle.block880
  %.012.i.i.i.i578.ph = phi ptr [ %i.mh, %vector.memcheck867 ], [ %i.mh, %.lr.ph.i.i.i.i577.preheader ], [ %i.ms, %middle.block880 ]
  %.0911.i.i.i.i579.ph = phi ptr [ %i.lw, %vector.memcheck867 ], [ %i.lw, %.lr.ph.i.i.i.i577.preheader ], [ %i.mt, %middle.block880 ]
  br label %.lr.ph.i.i.i.i577

.lr.ph.i.i.i.i577:                                ; preds = %.lr.ph.i.i.i.i577.preheader909, %.lr.ph.i.i.i.i577
  %.012.i.i.i.i578 = phi ptr [ %i.na, %.lr.ph.i.i.i.i577 ], [ %.012.i.i.i.i578.ph, %.lr.ph.i.i.i.i577.preheader909 ] ; 2 uses
  %.0911.i.i.i.i579 = phi ptr [ %i.mz, %.lr.ph.i.i.i.i577 ], [ %.0911.i.i.i.i579.ph, %.lr.ph.i.i.i.i577.preheader909 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  %i.my = load i64, ptr %.0911.i.i.i.i579, align 8, !tbaa !210, !alias.scope !1085
  store i64 %i.my, ptr %.012.i.i.i.i578, align 8, !tbaa !210, !alias.scope !1084
  store ptr null, ptr %.0911.i.i.i.i579, align 8, !tbaa !210, !alias.scope !1085
  %i.mz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i579, i64 8 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i578, i64 8 ; 2 uses
  %.not.i.i.i.i580 = icmp eq ptr %i.mz, %i.lt
  br i1 %.not.i.i.i.i580, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i588, label %.lr.ph.i.i.i.i577, !llvm.loop !1066

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i588: ; preds = %.lr.ph.i.i.i.i577, %middle.block880, %.noexc592
  %.0.lcssa.i.i.i.i582 = phi ptr [ %i.mh, %.noexc592 ], [ %i.ms, %middle.block880 ], [ %i.na, %.lr.ph.i.i.i.i577 ]
  %i.nb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i582, i64 8 ; 2 uses
  %.not.i23.i590 = icmp eq ptr %i.lw, null
  br i1 %.not.i23.i590, label %.noexc369, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i588
  %i.nc = load ptr, ptr %i.ke, align 8, !tbaa !214
  %i.nd = ptrtoint ptr %i.nc to i64
  %i.ne = sub i64 %i.nd, %i.ly
  call void @_ZdlPvm(ptr noundef nonnull %i.lw, i64 noundef %i.ne) #23
  br label %.noexc369

.noexc369:                                        ; preds = %bb.ad, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i588
  store ptr %i.mh, ptr %i.kb, align 8, !tbaa !215
  store ptr %i.nb, ptr %i.kc, align 8, !tbaa !213
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %i.mf ; 2 uses
  store ptr %i.nf, ptr %i.ke, align 8, !tbaa !214
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit370

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit370: ; preds = %.noexc369, %bb.ab
  %i.ng = phi ptr [ %i.nf, %.noexc369 ], [ %i.lt, %bb.ab ] ; 4 uses
  %i.nh = phi ptr [ %i.nb, %.noexc369 ], [ %i.lv, %bb.ab ] ; 4 uses
  %64 = ptrtoaddr ptr %i.ng to i64
  %.not.i.i371 = icmp eq ptr %i.nh, %i.ng
  br i1 %.not.i.i371, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit370
  store i64 %i.eg, ptr %i.nh, align 8, !tbaa !210
  store ptr null, ptr %10, align 8, !tbaa !210
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  store ptr %i.ni, ptr %i.kc, align 8, !tbaa !213
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit373

bb.af:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit370
  %i.nj = load ptr, ptr %i.kb, align 8, !tbaa !215 ; 10 uses
  %i.nk = ptrtoint ptr %i.nh to i64
  %i.nl = ptrtoint ptr %i.nj to i64               ; 3 uses
  %i.nm = sub i64 %i.nk, %i.nl                    ; 3 uses
  %i.nn = icmp eq i64 %i.nm, 9223372036854775800
  br i1 %i.nn, label %.invoke, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i594

.invoke:                                          ; preds = %bb.af, %bb.ac, %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.cont unwind label %bb.ce

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i594: ; preds = %bb.af
  %i.no = ashr exact i64 %i.nm, 3                 ; 3 uses
  %.sroa.speculated.i.i595 = call i64 @llvm.umax.i64(i64 %i.no, i64 1)
  %i.np = add nsw i64 %.sroa.speculated.i.i595, %i.no ; 2 uses
  %i.nq = icmp ult i64 %i.np, %i.no
  %i.nr = call i64 @llvm.umin.i64(i64 %i.np, i64 1152921504606846975)
  %i.ns = select i1 %i.nq, i64 1152921504606846975, i64 %i.nr ; 3 uses
  %.not.i.i596 = icmp ne i64 %i.ns, 0
  call void @llvm.assume(i1 %.not.i.i596)
  %i.nt = shl nuw nsw i64 %i.ns, 3
  %i.nu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nt) #24
          to label %.noexc613 unwind label %bb.ce ; 10 uses

.noexc613:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i594
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 %i.nm
  store i64 %i.eg, ptr %i.nv, align 8, !tbaa !210
  store ptr null, ptr %10, align 8, !tbaa !210
  %.not10.i.i.i.i597 = icmp eq ptr %i.nj, %i.ng
  br i1 %.not10.i.i.i.i597, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i609, label %.lr.ph.i.i.i.i598.preheader

.lr.ph.i.i.i.i598.preheader:                      ; preds = %.noexc613
  %i.nw = add i64 %64, -8
  %i.nx = sub i64 %i.nw, %i.nl                    ; 3 uses
  %i.ny = lshr i64 %i.nx, 3
  %i.nz = add nuw nsw i64 %i.ny, 1                ; 2 uses
  %min.iters.check890 = icmp ult i64 %i.nx, 136
  br i1 %min.iters.check890, label %.lr.ph.i.i.i.i598.preheader908, label %vector.memcheck891

vector.memcheck891:                               ; preds = %.lr.ph.i.i.i.i598.preheader
  %i.oa = and i64 %i.nx, -8
  %i.ob = add i64 %i.oa, 8                        ; 2 uses
  %i.oc = getelementptr i8, ptr %i.nu, i64 %i.ob
  %i.od = getelementptr i8, ptr %i.nj, i64 %i.ob
  %bound0892 = icmp ult ptr %i.nu, %i.od
  %bound1893 = icmp ult ptr %i.nj, %i.oc
  %found.conflict894 = and i1 %bound0892, %bound1893
  br i1 %found.conflict894, label %.lr.ph.i.i.i.i598.preheader908, label %vector.ph895

vector.ph895:                                     ; preds = %vector.memcheck891
  %n.vec896 = and i64 %i.nz, 4611686018427387900  ; 3 uses
  %i.oe = shl i64 %n.vec896, 3                    ; 2 uses
  %i.of = getelementptr i8, ptr %i.nu, i64 %i.oe  ; 2 uses
  %i.og = getelementptr i8, ptr %i.nj, i64 %i.oe
  br label %vector.body897

vector.body897:                                   ; preds = %vector.body897, %vector.ph895
  %index898 = phi i64 [ 0, %vector.ph895 ], [ %index.next903, %vector.body897 ] ; 2 uses
  %i.oh = shl i64 %index898, 3                    ; 2 uses
  %next.gep899 = getelementptr i8, ptr %i.nu, i64 %i.oh ; 2 uses
  %next.gep900 = getelementptr i8, ptr %i.nj, i64 %i.oh ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  %i.oi = getelementptr i8, ptr %next.gep900, i64 16 ; 2 uses
  %wide.load901 = load <2 x i64>, ptr %next.gep900, align 8, !tbaa !210, !alias.scope !1091
  %wide.load902 = load <2 x i64>, ptr %i.oi, align 8, !tbaa !210, !alias.scope !1091
  %i.oj = getelementptr i8, ptr %next.gep899, i64 16
  store <2 x i64> %wide.load901, ptr %next.gep899, align 8, !tbaa !210, !alias.scope !1092, !noalias !1093
  store <2 x i64> %wide.load902, ptr %i.oj, align 8, !tbaa !210, !alias.scope !1092, !noalias !1093
  store <2 x ptr> splat (ptr null), ptr %next.gep900, align 8, !tbaa !210, !alias.scope !1091
  store <2 x ptr> splat (ptr null), ptr %i.oi, align 8, !tbaa !210, !alias.scope !1091
  %index.next903 = add nuw i64 %index898, 4       ; 2 uses
  %i.ok = icmp eq i64 %index.next903, %n.vec896
  br i1 %i.ok, label %middle.block904, label %vector.body897, !llvm.loop !1073

middle.block904:                                  ; preds = %vector.body897
  %cmp.n905 = icmp eq i64 %i.nz, %n.vec896
  br i1 %cmp.n905, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i609, label %.lr.ph.i.i.i.i598.preheader908

.lr.ph.i.i.i.i598.preheader908:                   ; preds = %vector.memcheck891, %.lr.ph.i.i.i.i598.preheader, %middle.block904
  %.012.i.i.i.i599.ph = phi ptr [ %i.nu, %vector.memcheck891 ], [ %i.nu, %.lr.ph.i.i.i.i598.preheader ], [ %i.of, %middle.block904 ]
  %.0911.i.i.i.i600.ph = phi ptr [ %i.nj, %vector.memcheck891 ], [ %i.nj, %.lr.ph.i.i.i.i598.preheader ], [ %i.og, %middle.block904 ]
  br label %.lr.ph.i.i.i.i598

.lr.ph.i.i.i.i598:                                ; preds = %.lr.ph.i.i.i.i598.preheader908, %.lr.ph.i.i.i.i598
  %.012.i.i.i.i599 = phi ptr [ %i.on, %.lr.ph.i.i.i.i598 ], [ %.012.i.i.i.i599.ph, %.lr.ph.i.i.i.i598.preheader908 ] ; 2 uses
  %.0911.i.i.i.i600 = phi ptr [ %i.om, %.lr.ph.i.i.i.i598 ], [ %.0911.i.i.i.i600.ph, %.lr.ph.i.i.i.i598.preheader908 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  %i.ol = load i64, ptr %.0911.i.i.i.i600, align 8, !tbaa !210, !alias.scope !1090
  store i64 %i.ol, ptr %.012.i.i.i.i599, align 8, !tbaa !210, !alias.scope !1089
  store ptr null, ptr %.0911.i.i.i.i600, align 8, !tbaa !210, !alias.scope !1090
  %i.om = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i600, i64 8 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i599, i64 8 ; 2 uses
  %.not.i.i.i.i601 = icmp eq ptr %i.om, %i.ng
  br i1 %.not.i.i.i.i601, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i609, label %.lr.ph.i.i.i.i598, !llvm.loop !1074

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i609: ; preds = %.lr.ph.i.i.i.i598, %middle.block904, %.noexc613
  %.0.lcssa.i.i.i.i603 = phi ptr [ %i.nu, %.noexc613 ], [ %i.of, %middle.block904 ], [ %i.on, %.lr.ph.i.i.i.i598 ]
  %i.oo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i603, i64 8
  %.not.i23.i611 = icmp eq ptr %i.nj, null
  br i1 %.not.i23.i611, label %.noexc372, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i609
  %i.op = load ptr, ptr %i.ke, align 8, !tbaa !214
  %i.oq = ptrtoint ptr %i.op to i64
  %i.or = sub i64 %i.oq, %i.nl
  call void @_ZdlPvm(ptr noundef nonnull %i.nj, i64 noundef %i.or) #23
  br label %.noexc372

.noexc372:                                        ; preds = %bb.ag, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i609
  store ptr %i.nu, ptr %i.kb, align 8, !tbaa !215
  store ptr %i.oo, ptr %i.kc, align 8, !tbaa !213
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %i.ns
  store ptr %i.os, ptr %i.ke, align 8, !tbaa !214
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit373

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit373: ; preds = %.noexc372, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV29MockVersionedPortfileProvider, i64 16), ptr %22, align 8, !tbaa !33
  %i.ot = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  store i32 0, ptr %i.ot, align 8, !tbaa !41
  %i.ou = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 2 uses
  store ptr null, ptr %i.ou, align 8, !tbaa !40
  %i.ov = getelementptr inbounds nuw i8, ptr %22, i64 32
  store ptr %i.ot, ptr %i.ov, align 8, !tbaa !42
  %i.ow = getelementptr inbounds nuw i8, ptr %22, i64 40
  store ptr %i.ot, ptr %i.ow, align 8, !tbaa !43
  %i.ox = getelementptr inbounds nuw i8, ptr %22, i64 48
  store i64 0, ptr %i.ox, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5vcpkg4Test20MockCMakeVarProviderE, i64 16), ptr %23, align 8, !tbaa !33
  %i.oy = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.oz = getelementptr inbounds nuw i8, ptr %23, i64 56
  store ptr %i.oz, ptr %i.oy, align 8, !tbaa !64
  %i.pa = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i64 1, ptr %i.pa, align 8, !tbaa !65
  %i.pb = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.pc = getelementptr inbounds nuw i8, ptr %23, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pb, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.pc, align 8, !tbaa !66
  %i.pd = getelementptr inbounds nuw i8, ptr %23, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pd, i8 0, i64 16, i1 false)
  %i.pe = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.pf = getelementptr inbounds nuw i8, ptr %23, i64 112
  store ptr %i.pf, ptr %i.pe, align 8, !tbaa !64
  %i.pg = getelementptr inbounds nuw i8, ptr %23, i64 72
  store i64 1, ptr %i.pg, align 8, !tbaa !65
  %i.ph = getelementptr inbounds nuw i8, ptr %23, i64 80
  %i.pi = getelementptr inbounds nuw i8, ptr %23, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ph, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.pi, align 8, !tbaa !66
  %i.pj = getelementptr inbounds nuw i8, ptr %23, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pj, i8 0, i64 16, i1 false)
  %i.pk = getelementptr inbounds nuw i8, ptr %23, i64 120
  %i.pl = getelementptr inbounds nuw i8, ptr %23, i64 168
  store ptr %i.pl, ptr %i.pk, align 8, !tbaa !68
  %i.pm = getelementptr inbounds nuw i8, ptr %23, i64 128
  store i64 1, ptr %i.pm, align 8, !tbaa !69
  %i.pn = getelementptr inbounds nuw i8, ptr %23, i64 136
  %i.po = getelementptr inbounds nuw i8, ptr %23, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pn, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.po, align 8, !tbaa !66
  %i.pp = getelementptr inbounds nuw i8, ptr %23, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pp, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV20MockBaselineProvider, i64 16), ptr %24, align 8, !tbaa !33
  %i.pq = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 3 uses
  store i32 0, ptr %i.pq, align 8, !tbaa !41
  %i.pr = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 2 uses
  store ptr null, ptr %i.pr, align 8, !tbaa !40
  %i.ps = getelementptr inbounds nuw i8, ptr %24, i64 32
  store ptr %i.pq, ptr %i.ps, align 8, !tbaa !42
  %i.pt = getelementptr inbounds nuw i8, ptr %24, i64 40
  store ptr %i.pq, ptr %i.pt, align 8, !tbaa !43
  %i.pu = getelementptr inbounds nuw i8, ptr %24, i64 48
  store i64 0, ptr %i.pu, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  invoke fastcc void @_ZL13toplevel_specv()
          to label %bb.ah unwind label %bb.cf

bb.ah:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit373
  %i.pv = invoke ptr @_ZNK5vcpkg11PackageSpec7tripletEv(ptr noundef nonnull align 8 dereferenceable(40) @_ZZL13toplevel_specvE3ret)
          to label %bb.ai unwind label %bb.cf

bb.ai:                                            ; preds = %bb.ah
  %i.pw = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 7 uses
  store ptr %i.pw, ptr %25, align 8, !tbaa !47
  %i.px = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.py = load i64, ptr %i.r, align 8, !tbaa !50  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store i64 %i.py, ptr %i.f, align 8, !tbaa !56
  %i.pz = icmp ugt i64 %i.py, 15
  br i1 %i.pz, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.ai
  %i.qa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc374 unwind label %bb.cf ; 2 uses

.noexc374:                                        ; preds = %.noexc.i.i
  store ptr %i.qa, ptr %25, align 8, !tbaa !51
  %i.qb = load i64, ptr %i.f, align 8, !tbaa !56
  store i64 %i.qb, ptr %i.pw, align 8, !tbaa !48
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc374, %bb.ai
  %i.qc = phi ptr [ %i.qa, %.noexc374 ], [ %i.pw, %bb.ai ] ; 2 uses
  switch i64 %i.py, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %.noexc.i376
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i.i
  %i.qd = load i8, ptr %i.px, align 1, !tbaa !48
  store i8 %i.qd, ptr %i.qc, align 1, !tbaa !48
  br label %.noexc.i376

bb.ak:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qc, ptr align 1 %i.px, i64 %i.py, i1 false)
  br label %.noexc.i376

.noexc.i376:                                      ; preds = %._crit_edge.i.i.i, %bb.aj, %bb.ak
  %i.qe = load i64, ptr %i.f, align 8, !tbaa !56  ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %i.qe, ptr %i.qf, align 8, !tbaa !50
  %i.qg = load ptr, ptr %25, align 8, !tbaa !51
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 %i.qe
  store i8 0, ptr %i.qh, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  %i.qi = getelementptr inbounds nuw i8, ptr %25, i64 32
  store ptr %i.pv, ptr %i.qi, align 8, !tbaa !230
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
end_hunk_1
