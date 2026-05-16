inline.NumInlined: 603
inline.NumDeleted: 219
begin_hunk_0_@_ZN8facebook5velox12BingTileType15bingTilesAroundB5cxx11Eddhd:bb.a
bb.ae:                                            ; preds = %bb.x
  %i.dm = load i64, ptr %16, align 8, !tbaa !41   ; 2 uses
  %i.dn = call double @sin(double noundef %i.ci) #18, !tbaa !3
  %i.do = call double @cos(double noundef %i.cj) #18, !tbaa !3
  %i.dp = fmul double %i.dn, %i.do
  %i.dq = call double @cos(double noundef %i.ci) #18, !tbaa !3
  %i.dr = call double @sin(double noundef %i.cj) #18, !tbaa !3
  %i.ds = fmul double %i.dq, %i.dr
  %i.dt = fsub double %i.dp, %i.ds
  %i.du = call double @asin(double noundef %i.dt) #18, !tbaa !3
  %i.dv = fmul double %i.du, 1.800000e+02
  %i.dw = fdiv double %i.dv, f0x400921FB54442D18  ; 3 uses
  %i.dx = fcmp ogt double %i.dw, f0x40554345B1A57F00
  %i.dy = fcmp olt double %i.dw, f0xC0554345B1A57F00
  %..i280 = select i1 %i.dy, double f0xC0554345B1A57F00, double %i.dw
  %.0.i281 = select i1 %i.dx, double f0x40554345B1A57F00, double %..i280
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  invoke void @_ZN8facebook5velox12BingTileType23latitudeLongitudeToTileB5cxx11Eddh(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected") align 8 %18, double noundef %.0.i281, double noundef %2, i8 noundef zeroext %3)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.dz = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 3 uses
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !32
  switch i8 %i.ea, label %bb.am [
    i8 2, label %bb.ag
    i8 1, label %_ZNR5folly8ExpectedImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit292
  ], !prof !149

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  invoke void @_ZN5folly14makeUnexpectedIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_10UnexpectedINSt5decayIT_E4typeEEEOSA_(ptr dead_on_unwind nonnull writable sret(%"class.folly::Unexpected") align 8 %19, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.eb, ptr %0, align 8, !tbaa !11
  %i.ec = load ptr, ptr %19, align 8, !tbaa !15   ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i284

bb.ai:                                            ; preds = %bb.ah
  %i.ef = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !18 ; 3 uses
  %i.eh = icmp ult i64 %i.eg, 16
  call void @llvm.assume(i1 %i.eh)
  %i.ei = add nuw nsw i64 %i.eg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eb, ptr noundef nonnull align 8 dereferenceable(1) %i.ed, i64 %i.ei, i1 false)
  br label %_ZN5folly10UnexpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit289

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i284: ; preds = %bb.ah
  store ptr %i.ec, ptr %0, align 8, !tbaa !15
  %i.ej = load i64, ptr %i.ed, align 8, !tbaa !10
  store i64 %i.ej, ptr %i.eb, align 8, !tbaa !10
  %.phi.trans.insert1100 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.pre1101 = load i64, ptr %.phi.trans.insert1100, align 8, !tbaa !18
  br label %_ZN5folly10UnexpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit289

_ZN5folly10UnexpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit289: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i284
  %i.ek = phi i64 [ %i.eg, %bb.ai ], [ %.pre1101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i284 ]
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !18
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %i.em, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.fw

bb.aj:                                            ; preds = %bb.ad
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.ak:                                            ; preds = %bb.ae
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly15expected_detail15ExpectedStorageImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS0_11StorageTypeE2EED2Ev.exit478

bb.al:                                            ; preds = %bb.ag
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.fy

bb.am:                                            ; preds = %bb.af
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #12
          to label %.noexc291 unwind label %bb.au

.noexc291:                                        ; preds = %bb.am
  unreachable

_ZNR5folly8ExpectedImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit292: ; preds = %bb.af
  %i.eq = load i64, ptr %18, align 8, !tbaa !41   ; 2 uses
  %i.er = fmul double %2, f0x400921FB54442D18
  %i.es = fdiv double %i.er, 1.800000e+02         ; 4 uses
  %i.et = call double @sin(double noundef %i.cj) #18, !tbaa !3
  %i.eu = fneg double %i.et
  %i.ev = call double @cos(double noundef %i.ci) #18, !tbaa !3
  %i.ew = fmul double %i.ev, %i.eu
  %i.ex = call double @cos(double noundef %i.cj) #18, !tbaa !3
  %i.ey = call double @sin(double noundef %i.ci) #18, !tbaa !3 ; 2 uses
  %i.ez = fmul double %i.ey, %i.ey
  %i.fa = fsub double %i.ex, %i.ez
  %i.fb = call double @atan2(double noundef %i.ew, double noundef %i.fa) #18, !tbaa !3
  %i.fc = fadd double %i.es, %i.fb
  %i.fd = fmul double %i.fc, 1.800000e+02
  %i.fe = fdiv double %i.fd, f0x400921FB54442D18  ; 5 uses
  %i.ff = fcmp ogt double %i.fe, 1.800000e+02
  br i1 %i.ff, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZNR5folly8ExpectedImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit292
  %i.fg = fadd double %i.fe, -1.800000e+02
  %i.fh = fadd double %i.fg, -1.800000e+02
  br label %_ZN8facebook5velox12_GLOBAL__N_122addDistanceToLongitudeEdddd.exit

bb.ao:                                            ; preds = %_ZNR5folly8ExpectedImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit292
  %i.fi = fcmp olt double %i.fe, -1.800000e+02
  br i1 %i.fi, label %bb.ap, label %_ZN8facebook5velox12_GLOBAL__N_122addDistanceToLongitudeEdddd.exit

bb.ap:                                            ; preds = %bb.ao
  %i.fj = fadd double %i.fe, 1.800000e+02
  %i.fk = fadd double %i.fj, 1.800000e+02
  br label %_ZN8facebook5velox12_GLOBAL__N_122addDistanceToLongitudeEdddd.exit

_ZN8facebook5velox12_GLOBAL__N_122addDistanceToLongitudeEdddd.exit: ; preds = %bb.an, %bb.ao, %bb.ap
  %.0.i293 = phi double [ %i.fh, %bb.an ], [ %i.fk, %bb.ap ], [ %i.fe, %bb.ao ]
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  invoke void @_ZN8facebook5velox12BingTileType23latitudeLongitudeToTileB5cxx11Eddh(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected") align 8 %20, double noundef %1, double noundef %.0.i293, i8 noundef zeroext %3)
          to label %bb.aq unwind label %bb.av

bb.aq:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_122addDistanceToLongitudeEdddd.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 3 uses
  %i.fm = load i8, ptr %i.fl, align 8, !tbaa !32
  switch i8 %i.fm, label %bb.ax [
    i8 2, label %bb.ar
    i8 1, label %_ZNR5folly8ExpectedImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit304
  ], !prof !149

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  invoke void @_ZN5folly14makeUnexpectedIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_10UnexpectedINSt5decayIT_E4typeEEEOSA_(ptr dead_on_unwind nonnull writable sret(%"class.folly::Unexpected") align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.as unwind label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.fn, ptr %0, align 8, !tbaa !11
  %i.fo = load ptr, ptr %21, align 8, !tbaa !15   ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %bb.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i296

bb.at:                                            ; preds = %bb.as
  %i.fr = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !18 ; 3 uses
  %i.ft = icmp ult i64 %i.fs, 16
  call void @llvm.assume(i1 %i.ft)
  %i.fu = add nuw nsw i64 %i.fs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fn, ptr noundef nonnull align 8 dereferenceable(1) %i.fp, i64 %i.fu, i1 false)
  br label %_ZN5folly10UnexpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i296: ; preds = %bb.as
  store ptr %i.fo, ptr %0, align 8, !tbaa !15
  %i.fv = load i64, ptr %i.fp, align 8, !tbaa !10
  store i64 %i.fv, ptr %i.fn, align 8, !tbaa !10
  %.phi.trans.insert1098 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %.pre1099 = load i64, ptr %.phi.trans.insert1098, align 8, !tbaa !18
  br label %_ZN5folly10UnexpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit301

_ZN5folly10UnexpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit301: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i296
  %i.fw = phi i64 [ %i.fs, %bb.at ], [ %.pre1099, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i296 ]
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fw, ptr %i.fx, align 8, !tbaa !18
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %i.fy, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %bb.fs

bb.au:                                            ; preds = %bb.am
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

bb.av:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_122addDistanceToLongitudeEdddd.exit
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly15expected_detail15ExpectedStorageImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS0_11StorageTypeE2EED2Ev.exit470

bb.aw:                                            ; preds = %bb.ar
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %bb.fu

bb.ax:                                            ; preds = %bb.aq
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #12
          to label %.noexc303 unwind label %bb.bf

.noexc303:                                        ; preds = %bb.ax
  unreachable

_ZNR5folly8ExpectedImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit304: ; preds = %bb.aq
  %i.gc = call double @sin(double noundef %i.cj) #18, !tbaa !3
  %i.gd = call double @cos(double noundef %i.ci) #18, !tbaa !3
  %i.ge = fmul double %i.gc, %i.gd
  %i.gf = call double @cos(double noundef %i.cj) #18, !tbaa !3
  %i.gg = call double @sin(double noundef %i.ci) #18, !tbaa !3 ; 2 uses
  %i.gh = fmul double %i.gg, %i.gg
  %i.gi = fsub double %i.gf, %i.gh
  %i.gj = call double @atan2(double noundef %i.ge, double noundef %i.gi) #18, !tbaa !3
  %i.gk = fadd double %i.es, %i.gj
  %i.gl = fmul double %i.gk, 1.800000e+02
  %i.gm = fdiv double %i.gl, f0x400921FB54442D18  ; 5 uses
  %i.gn = fcmp ogt double %i.gm, 1.800000e+02
  br i1 %i.gn, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZNR5folly8ExpectedImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit304
  %i.go = fadd double %i.gm, -1.800000e+02
  %i.gp = fadd double %i.go, -1.800000e+02
  br label %_ZN8facebook5velox12_GLOBAL__N_122addDistanceToLongitudeEdddd.exit306

bb.az:                                            ; preds = %_ZNR5folly8ExpectedImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit304
  %i.gq = fcmp olt double %i.gm, -1.800000e+02
  br i1 %i.gq, label %bb.ba, label %_ZN8facebook5velox12_GLOBAL__N_122addDistanceToLongitudeEdddd.exit306

bb.ba:                                            ; preds = %bb.az
  %i.gr = fadd double %i.gm, 1.800000e+02
  %i.gs = fadd double %i.gr, 1.800000e+02
  br label %_ZN8facebook5velox12_GLOBAL__N_122addDistanceToLongitudeEdddd.exit306

_ZN8facebook5velox12_GLOBAL__N_122addDistanceToLongitudeEdddd.exit306: ; preds = %bb.ay, %bb.az, %bb.ba
  %.0.i305 = phi double [ %i.gp, %bb.ay ], [ %i.gs, %bb.ba ], [ %i.gm, %bb.az ]
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  invoke void @_ZN8facebook5velox12BingTileType23latitudeLongitudeToTileB5cxx11Eddh(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected") align 8 %22, double noundef %1, double noundef %.0.i305, i8 noundef zeroext %3)
          to label %bb.bb unwind label %bb.bg

bb.bb:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_122addDistanceToLongitudeEdddd.exit306
  %i.gt = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 3 uses
  %i.gu = load i8, ptr %i.gt, align 8, !tbaa !32
  switch i8 %i.gu, label %bb.bi [
    i8 2, label %bb.bc
    i8 1, label %_ZNR5folly8ExpectedImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit317
  ], !prof !149

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  invoke void @_ZN5folly14makeUnexpectedIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_10UnexpectedINSt5decayIT_E4typeEEEOSA_(ptr dead_on_unwind nonnull writable sret(%"class.folly::Unexpected") align 8 %23, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.bd unwind label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.gv, ptr %0, align 8, !tbaa !11
  %i.gw = load ptr, ptr %23, align 8, !tbaa !15   ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 3 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %bb.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i309

bb.be:                                            ; preds = %bb.bd
  %i.gz = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !18 ; 3 uses
  %i.hb = icmp ult i64 %i.ha, 16
  call void @llvm.assume(i1 %i.hb)
  %i.hc = add nuw nsw i64 %i.ha, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gv, ptr noundef nonnull align 8 dereferenceable(1) %i.gx, i64 %i.hc, i1 false)
  br label %_ZN5folly10UnexpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit314

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i309: ; preds = %bb.bd
  store ptr %i.gw, ptr %0, align 8, !tbaa !15
  %i.hd = load i64, ptr %i.gx, align 8, !tbaa !10
  store i64 %i.hd, ptr %i.gv, align 8, !tbaa !10
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %23, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !18
  br label %_ZN5folly10UnexpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit314

_ZN5folly10UnexpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit314: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i309
  %i.he = phi i64 [ %i.ha, %bb.be ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i309 ]
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.he, ptr %i.hf, align 8, !tbaa !18
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %i.hg, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  br label %bb.fp

bb.bf:                                            ; preds = %bb.ax
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.bg:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_122addDistanceToLongitudeEdddd.exit306
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly15expected_detail15ExpectedStorageImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS0_11StorageTypeE2EED2Ev.exit462

bb.bh:                                            ; preds = %bb.bc
  %i.hj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  br label %_ZNSt6vectorImSaImEED2Ev.exit457

bb.bi:                                            ; preds = %bb.bb
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #12
          to label %.noexc316 unwind label %bb.bn

.noexc316:                                        ; preds = %bb.bi
  unreachable

_ZNR5folly8ExpectedImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit317: ; preds = %bb.bb
  %.shift = getelementptr inbounds nuw i8, ptr %22, i64 4
  %26 = load i32, ptr %.shift, align 4, !tbaa !41
  %i.hk = and i32 %26, 16777215                   ; 3 uses
  %.shift601 = getelementptr inbounds nuw i8, ptr %20, i64 4
  %27 = load i32, ptr %.shift601, align 4, !tbaa !41
  %i.hl = and i32 %27, 16777215                   ; 5 uses
  %i.hm = icmp samesign ult i32 %i.hk, %i.hl
  %i.hn = trunc i64 %i.eq to i32
  %i.ho = and i32 %i.hn, 16777215                 ; 3 uses
  %i.hp = trunc i64 %i.dm to i32
  %i.hq = and i32 %i.hp, 16777215                 ; 2 uses
  %i.hr = add nuw nsw i32 %i.cg, 1
  %.sink1416 = select i1 %i.hm, i32 %i.hr, i32 1
  %.pn893 = add nuw nsw i32 %.sink1416, %i.hk     ; 2 uses
  %reass.sub.a = sub nsw i32 %.pn893, %i.hl       ; 2 uses
  %reass.sub892 = sub nsw i32 %i.ho, %i.hq
  %i.hs = add nsw i32 %reass.sub892, 1
  %i.ht = mul i32 %reass.sub.a, %i.hs             ; 4 uses
  %i.hu = icmp ugt i32 %i.ht, 1000000
  br i1 %i.hu, label %bb.bj, label %bb.bp

bb.bj:                                            ; preds = %_ZNR5folly8ExpectedImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit317
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18, !noalias !150
  store i32 %i.ht, ptr %7, align 16, !tbaa !10, !noalias !150
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr nonnull @.str.11, i64 90, i64 2, ptr nonnull %7)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !150
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.hv = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.hv, ptr %24, align 8, !tbaa !11, !alias.scope !153
  %i.hw = load ptr, ptr %25, align 8, !tbaa !15, !noalias !153 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  %i.hy = icmp eq ptr %i.hw, %i.hx
  br i1 %i.hy, label %.thread1206, label %bb.bl

.thread1206:                                      ; preds = %bb.bk
  %i.hz = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !18, !noalias !153 ; 3 uses
  %i.ib = icmp ult i64 %i.ia, 16
  call void @llvm.assume(i1 %i.ib)
  %i.ic = add nuw nsw i64 %i.ia, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hv, ptr noundef nonnull align 8 dereferenceable(1) %i.hx, i64 %i.ic, i1 false)
  %i.id = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ie, ptr %0, align 8, !tbaa !11
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.if = load i64, ptr %i.hx, align 8, !tbaa !10, !noalias !153
  store i64 %i.if, ptr %i.hv, align 8, !tbaa !10, !alias.scope !153
  %.phi.trans.insert.i319 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.pre.i320 = load i64, ptr %.phi.trans.insert.i319, align 8, !tbaa !18, !noalias !153 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ih, ptr %0, align 8, !tbaa !11
  %i.ii = icmp eq ptr %i.hw, %i.hv
  br i1 %i.ii, label %bb.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i322

bb.bm:                                            ; preds = %.thread1206, %bb.bl
  %i.ij = phi ptr [ %i.ie, %.thread1206 ], [ %i.ih, %bb.bl ]
  %i.ik = phi ptr [ %i.id, %.thread1206 ], [ %i.ig, %bb.bl ]
  %i.il = phi i64 [ %i.ia, %.thread1206 ], [ %.pre.i320, %bb.bl ] ; 3 uses
  %i.im = icmp ult i64 %i.il, 16
  call void @llvm.assume(i1 %i.im)
  %i.in = add nuw nsw i64 %i.il, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ij, ptr noundef nonnull align 8 dereferenceable(1) %i.hv, i64 %i.in, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i322: ; preds = %bb.bl
  store ptr %i.hw, ptr %0, align 8, !tbaa !15
  %i.io = load i64, ptr %i.hv, align 8, !tbaa !10
  store i64 %i.io, ptr %i.ih, align 8, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i322
  %i.ip = phi ptr [ %i.ik, %bb.bm ], [ %i.ig, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i322 ]
  %i.iq = phi i64 [ %i.il, %bb.bm ], [ %.pre.i320, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i322 ]
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.iq, ptr %i.ir, align 8, !tbaa !18
  store i64 0, ptr %i.ip, align 8, !tbaa !18
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %i.is, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  br label %bb.fp

bb.bn:                                            ; preds = %bb.bi
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit457

bb.bo:                                            ; preds = %bb.bj
  %i.iu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  br label %_ZNSt6vectorImSaImEED2Ev.exit457

bb.bp:                                            ; preds = %_ZNR5folly8ExpectedImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit317
  %i.iv = zext nneg i32 %i.ht to i64              ; 2 uses
  %.not601 = icmp eq i32 %i.ht, 0
  br i1 %.not601, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.bp
  %i.iw = shl nuw nsw i64 %i.iv, 3
  %i.ix = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iw) #19
          to label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i unwind label %.thread ; 2 uses

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %i.iv
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %bb.bp, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i
  %.sroa.63.15 = phi ptr [ %i.iy, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.bp ] ; 2 uses
  %.sroa.30.13 = phi ptr [ %i.ix, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.bp ] ; 4 uses
  %.not893 = icmp eq i32 %.pn893, %i.hl
  br i1 %.not893, label %.preheader642, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.iz = zext nneg i8 %3 to i64
  %i.ja = shl nuw nsw i64 %i.iz, 26
  %i.jb = add nsw i32 %i.cg, -1
  br label %bb.bq

.preheader642:                                    ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %_ZNSt6vectorImSaImEE7reserveEm.exit
  %.sroa.63.0.lcssa = phi ptr [ %.sroa.63.15, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.sroa.63.16, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 2 uses
  %.sroa.30.0.lcssa = phi ptr [ %.sroa.30.13, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.sroa.30.14, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 2 uses
  %.sroa.0537.0.lcssa = phi ptr [ %.sroa.30.13, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.sroa.0537.16, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 2 uses
  %.not883 = icmp samesign ugt i32 %i.hq, %i.ho
  %.pre1110 = zext nneg i8 %3 to i64
  %.pre1111 = shl nuw nsw i64 %.pre1110, 26       ; 5 uses
  %.pre1115 = and i64 %i.dm, 16777215             ; 3 uses
  br i1 %.not883, label %._crit_edge, label %.lr.ph888

.lr.ph888:                                        ; preds = %.preheader642
  %i.jc = add nuw nsw i32 %i.ho, 1
  %wide.trip.count = zext nneg i32 %i.jc to i64
  br label %bb.by

.thread:                                          ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit457

bb.bq:                                            ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %.0163880 = phi i32 [ 0, %.lr.ph ], [ %i.kb, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 2 uses
  %.sroa.0537.0879 = phi ptr [ %.sroa.30.13, %.lr.ph ], [ %.sroa.0537.16, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 7 uses
  %.sroa.30.0878 = phi ptr [ %.sroa.30.13, %.lr.ph ], [ %.sroa.30.14, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 6 uses
  %.sroa.63.0877 = phi ptr [ %.sroa.63.15, %.lr.ph ], [ %.sroa.63.16, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 4 uses
  %i.je = load i8, ptr %i.ah, align 8, !tbaa !86
  switch i8 %i.je, label %bb.bs [
    i8 1, label %_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit
    i8 2, label %bb.br
  ], !prof !88

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJRKS8_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(40) %12) #12
          to label %.noexc335 unwind label %.loopexit.split-lp649

.noexc335:                                        ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %bb.bq
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #12
          to label %.noexc336 unwind label %.loopexit.split-lp649

.noexc336:                                        ; preds = %bb.bs
  unreachable

_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit: ; preds = %bb.bq
  %i.jf = add nuw i32 %.0163880, %i.hl
  %i.jg = and i32 %i.jf, %i.jb
  %i.jh = load i32, ptr %12, align 8, !tbaa !3
  %i.ji = zext i32 %i.jg to i64
  %i.jj = shl nuw i64 %i.ji, 32
  %i.jk = zext i32 %i.jh to i64
  %i.jl = or disjoint i64 %i.jj, %i.jk
  %i.jm = or i64 %i.jl, %i.ja                     ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.30.0878, %.sroa.63.0877
  br i1 %.not.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit
  store i64 %i.jm, ptr %.sroa.30.0878, align 8, !tbaa !41
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.bu:                                            ; preds = %_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit
  %i.jn = ptrtoint ptr %.sroa.30.0878 to i64
  %i.jo = ptrtoint ptr %.sroa.0537.0879 to i64
  %i.jp = sub i64 %i.jn, %i.jo                    ; 6 uses
  %i.jq = icmp eq i64 %i.jp, 9223372036854775800
  br i1 %i.jq, label %bb.bv, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc337 unwind label %.loopexit.split-lp649

.noexc337:                                        ; preds = %bb.bv
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bu
  %i.jr = ashr exact i64 %i.jp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.jr, i64 1)
  %i.js = add nsw i64 %.sroa.speculated.i.i.i.i, %i.jr ; 2 uses
  %i.jt = icmp ult i64 %i.js, %i.jr
  %i.ju = call i64 @llvm.umin.i64(i64 %i.js, i64 1152921504606846975)
  %i.jv = select i1 %i.jt, i64 1152921504606846975, i64 %i.ju ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.jv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.jw = shl nuw nsw i64 %i.jv, 3
  %i.jx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jw) #19
          to label %.noexc338 unwind label %.loopexit648 ; 4 uses

.noexc338:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.jy = getelementptr inbounds i8, ptr %i.jx, i64 %i.jp ; 2 uses
  store i64 %i.jm, ptr %i.jy, align 8, !tbaa !41
  %i.jz = icmp sgt i64 %i.jp, 0
  br i1 %i.jz, label %bb.bw, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.bw:                                            ; preds = %.noexc338
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jx, ptr align 8 %.sroa.0537.0879, i64 %i.jp, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.bw, %.noexc338
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0537.0879, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0537.0879, i64 noundef %i.jp) #21
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.bx, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.jv
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.bt
  %.sroa.63.16 = phi ptr [ %i.ka, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.63.0877, %bb.bt ] ; 2 uses
  %.pn = phi ptr [ %i.jy, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.30.0878, %bb.bt ]
  %.sroa.0537.16 = phi ptr [ %i.jx, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.0537.0879, %bb.bt ] ; 2 uses
  %.sroa.30.14 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.kb = add nuw i32 %.0163880, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.kb, %reass.sub.a
  br i1 %exitcond.not, label %.preheader642, label %bb.bq, !llvm.loop !156

.loopexit648:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit650 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

.loopexit.split-lp649:                            ; preds = %bb.br, %bb.bs, %bb.bv
  %.sroa.63.08771082 = phi ptr [ %.sroa.63.0877, %bb.br ], [ %.sroa.63.0877, %bb.bs ], [ %.sroa.30.0878, %bb.bv ]
  %lpad.loopexit.split-lp651 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit354, %.preheader642
  %.sroa.63.1.lcssa = phi ptr [ %.sroa.63.0.lcssa, %.preheader642 ], [ %.sroa.63.2, %_ZNSt6vectorImSaImEE9push_backEOm.exit354 ]
  %.sroa.30.1.lcssa = phi ptr [ %.sroa.30.0.lcssa, %.preheader642 ], [ %.sroa.30.2, %_ZNSt6vectorImSaImEE9push_backEOm.exit354 ]
  %.sroa.0537.1.lcssa = phi ptr [ %.sroa.0537.0.lcssa, %.preheader642 ], [ %.sroa.0537.2, %_ZNSt6vectorImSaImEE9push_backEOm.exit354 ]
  %i.kc = call double @sin(double noundef %i.ci) #18, !tbaa !3 ; 8 uses
  %i.kd = call double @cos(double noundef %i.ci) #18, !tbaa !3 ; 8 uses
  %i.ke = zext nneg i8 %3 to i32
  %i.kf = shl nuw i32 1, %i.ke
  %i.kg = sitofp i32 %i.kf to double              ; 18 uses
  %i.kh = and i64 %i.eq, 16777215                 ; 2 uses
  br label %bb.ck

bb.by:                                            ; preds = %.lr.ph888, %_ZNSt6vectorImSaImEE9push_backEOm.exit354
  %indvars.iv = phi i64 [ %.pre1115, %.lr.ph888 ], [ %indvars.iv.next, %_ZNSt6vectorImSaImEE9push_backEOm.exit354 ] ; 3 uses
  %.sroa.0537.1886 = phi ptr [ %.sroa.0537.0.lcssa, %.lr.ph888 ], [ %.sroa.0537.2, %_ZNSt6vectorImSaImEE9push_backEOm.exit354 ] ; 9 uses
  %.sroa.30.1885 = phi ptr [ %.sroa.30.0.lcssa, %.lr.ph888 ], [ %.sroa.30.2, %_ZNSt6vectorImSaImEE9push_backEOm.exit354 ] ; 7 uses
  %.sroa.63.1884 = phi ptr [ %.sroa.63.0.lcssa, %.lr.ph888 ], [ %.sroa.63.2, %_ZNSt6vectorImSaImEE9push_backEOm.exit354 ] ; 6 uses
  %i.ki = load i8, ptr %i.ah, align 8, !tbaa !86
  switch i8 %i.ki, label %bb.ca [
    i8 1, label %_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit341
    i8 2, label %bb.bz
  ], !prof !88

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJRKS8_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(40) %12) #12
          to label %.noexc339 unwind label %bb.cj

.noexc339:                                        ; preds = %bb.bz
  unreachable

bb.ca:                                            ; preds = %bb.by
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #12
          to label %.noexc340 unwind label %bb.cj

.noexc340:                                        ; preds = %bb.ca
  unreachable

_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit341: ; preds = %bb.by
  %i.kj = load i32, ptr %12, align 8, !tbaa !3
  %i.kk = zext i32 %i.kj to i64
  %.not208 = icmp eq i64 %indvars.iv, %i.kk
  br i1 %.not208, label %_ZNSt6vectorImSaImEE9push_backEOm.exit354, label %bb.cb

bb.cb:                                            ; preds = %_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit341
  %i.kl = load i8, ptr %i.r, align 8, !tbaa !86
  switch i8 %i.kl, label %bb.cd [
    i8 1, label %_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit344
    i8 2, label %bb.cc
  ], !prof !88

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJRKS8_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(40) %10) #12
          to label %.noexc342 unwind label %.loopexit.split-lp644

.noexc342:                                        ; preds = %bb.cc
  unreachable

bb.cd:                                            ; preds = %bb.cb
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #12
          to label %.noexc343 unwind label %.loopexit.split-lp644

.noexc343:                                        ; preds = %bb.cd
  unreachable

_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit344: ; preds = %bb.cb
  %i.km = load i32, ptr %10, align 8, !tbaa !3
  %i.kn = zext i32 %i.km to i64
  %i.ko = shl nuw i64 %i.kn, 32
  %i.kp = or disjoint i64 %i.ko, %indvars.iv
  %i.kq = or i64 %i.kp, %.pre1111                 ; 2 uses
  %.not.i.i345 = icmp eq ptr %.sroa.30.1885, %.sroa.63.1884
  br i1 %.not.i.i345, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit344
  store i64 %i.kq, ptr %.sroa.30.1885, align 8, !tbaa !41
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.30.1885, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit354

bb.cf:                                            ; preds = %_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit344
  %i.ks = ptrtoint ptr %.sroa.30.1885 to i64
  %i.kt = ptrtoint ptr %.sroa.0537.1886 to i64
  %i.ku = sub i64 %i.ks, %i.kt                    ; 6 uses
  %i.kv = icmp eq i64 %i.ku, 9223372036854775800
  br i1 %i.kv, label %bb.cg, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i346

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc352 unwind label %.loopexit.split-lp644

.noexc352:                                        ; preds = %bb.cg
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i346: ; preds = %bb.cf
  %i.kw = ashr exact i64 %i.ku, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i347 = call i64 @llvm.umax.i64(i64 %i.kw, i64 1)
  %i.kx = add nsw i64 %.sroa.speculated.i.i.i.i347, %i.kw ; 2 uses
  %i.ky = icmp ult i64 %i.kx, %i.kw
  %i.kz = call i64 @llvm.umin.i64(i64 %i.kx, i64 1152921504606846975)
  %i.la = select i1 %i.ky, i64 1152921504606846975, i64 %i.kz ; 3 uses
  %.not.i.i.i.i348 = icmp ne i64 %i.la, 0
  call void @llvm.assume(i1 %.not.i.i.i.i348)
  %i.lb = shl nuw nsw i64 %i.la, 3
  %i.lc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #19
          to label %.noexc353 unwind label %.loopexit643 ; 4 uses

.noexc353:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i346
  %i.ld = getelementptr inbounds i8, ptr %i.lc, i64 %i.ku ; 2 uses
  store i64 %i.kq, ptr %i.ld, align 8, !tbaa !41
  %i.le = icmp sgt i64 %i.ku, 0
  br i1 %i.le, label %bb.ch, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i349

bb.ch:                                            ; preds = %.noexc353
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lc, ptr align 8 %.sroa.0537.1886, i64 %i.ku, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i349

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i349: ; preds = %bb.ch, %.noexc353
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %.not.i17.i.i.i350 = icmp eq ptr %.sroa.0537.1886, null
  br i1 %.not.i17.i.i.i350, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i351, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i349
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0537.1886, i64 noundef %i.ku) #21
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i351

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i351: ; preds = %bb.ci, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i349
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.la
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit354

bb.cj:                                            ; preds = %bb.ca, %bb.bz
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

.loopexit643:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i346
  %lpad.loopexit645 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

.loopexit.split-lp644:                            ; preds = %bb.cc, %bb.cd, %bb.cg
  %.sroa.63.18841069 = phi ptr [ %.sroa.63.1884, %bb.cc ], [ %.sroa.63.1884, %bb.cd ], [ %.sroa.30.1885, %bb.cg ]
  %lpad.loopexit.split-lp646 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

_ZNSt6vectorImSaImEE9push_backEOm.exit354:        ; preds = %bb.ce, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i351, %_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit341
  %.sroa.63.2 = phi ptr [ %.sroa.63.1884, %_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit341 ], [ %i.lg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i351 ], [ %.sroa.63.1884, %bb.ce ] ; 2 uses
  %.sroa.30.2 = phi ptr [ %.sroa.30.1885, %_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit341 ], [ %i.lf, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i351 ], [ %i.kr, %bb.ce ] ; 2 uses
  %.sroa.0537.2 = phi ptr [ %.sroa.0537.1886, %_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit341 ], [ %i.lc, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i351 ], [ %.sroa.0537.1886, %bb.ce ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond1089 = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond1089, label %._crit_edge, label %bb.by, !llvm.loop !157

bb.ck:                                            ; preds = %bb.dj, %._crit_edge
  %.sroa.63.3 = phi ptr [ %.sroa.63.1.lcssa, %._crit_edge ], [ %.sroa.63.6, %bb.dj ] ; 3 uses
  %.sroa.30.3 = phi ptr [ %.sroa.30.1.lcssa, %._crit_edge ], [ %.sroa.30.6, %bb.dj ] ; 2 uses
  %.sroa.0537.3 = phi ptr [ %.sroa.0537.1.lcssa, %._crit_edge ], [ %.sroa.0537.6, %bb.dj ] ; 3 uses
  %.0173 = phi i32 [ %i.hk, %._crit_edge ], [ %i.ou, %bb.dj ] ; 5 uses
  %i.li = load i8, ptr %i.r, align 8, !tbaa !86
  switch i8 %i.li, label %bb.cm [
    i8 1, label %_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit357
    i8 2, label %bb.cl
  ], !prof !88

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJRKS8_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(40) %10) #12
          to label %.noexc355 unwind label %bb.cn

.noexc355:                                        ; preds = %bb.cl
  unreachable

bb.cm:                                            ; preds = %bb.ck
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #12
          to label %.noexc356 unwind label %bb.cn

.noexc356:                                        ; preds = %bb.cm
  unreachable

_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit357: ; preds = %bb.ck
  %i.lj = load i32, ptr %10, align 8, !tbaa !3
  %.not182 = icmp eq i32 %.0173, %i.lj
  br i1 %.not182, label %.preheader619.preheader, label %.preheader631

.preheader619.preheader:                          ; preds = %_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit357
  %i.lk = add nsw i32 %i.cg, -1
  br label %.preheader619

.preheader631:                                    ; preds = %_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit357
end_hunk_0
