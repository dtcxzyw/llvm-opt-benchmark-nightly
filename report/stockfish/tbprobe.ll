Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/tbprobe?download=true
inline.NumInlined: 1887
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN9Stockfish10Tablebases9probe_dtzERNS_8PositionEPNS0_10ProbeStateE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gh, ptr noundef nonnull align 8 dereferenceable(1) %i.gj, i64 %i.go, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i
  store ptr %i.gi, ptr %7, align 8, !tbaa !181, !alias.scope !447
  %i.gp = load i64, ptr %i.gj, align 8, !tbaa !176
  store i64 %i.gp, ptr %i.gh, align 8, !tbaa !176, !alias.scope !447
  %.phi.trans.insert.i44.i.i = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %.pre.i45.i.i = load i64, ptr %.phi.trans.insert.i44.i.i, align 8, !tbaa !136
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i.i, %bb.aj
  %i.gq = phi i64 [ %i.gm, %bb.aj ], [ %.pre.i45.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i.i ]
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i64 %i.gq, ptr %i.gs, align 8, !tbaa !136, !alias.scope !447
  store ptr %i.gj, ptr %i.gg, align 8, !tbaa !181
  store i64 0, ptr %i.gr, align 8, !tbaa !136
  store i8 0, ptr %i.gj, align 8, !tbaa !176
  %i.gt = load ptr, ptr %2, align 8, !tbaa !181   ; 6 uses
  %i.gu = icmp eq ptr %i.gt, %i.by
  %i.gv = load ptr, ptr %7, align 8, !tbaa !181   ; 5 uses
  %i.gw = icmp eq ptr %i.gv, %i.gh                ; 2 uses
  br i1 %i.gu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i
  br i1 %i.gw, label %bb.ak, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i
  br i1 %i.gw, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.gx = load i64, ptr %i.gs, align 8, !tbaa !136 ; 3 uses
  %i.gy = icmp ult i64 %i.gx, 16
  call void @llvm.assume(i1 %i.gy)
  switch i64 %i.gx, label %bb.am [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak
  %i.gz = load i8, ptr %i.gv, align 1, !tbaa !176
  store i8 %i.gz, ptr %i.gt, align 1, !tbaa !176
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.am:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gt, ptr align 1 %i.gv, i64 %i.gx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.am, %bb.al, %bb.ak
  %i.ha = load i64, ptr %i.gs, align 8, !tbaa !136 ; 2 uses
  store i64 %i.ha, ptr %i.bz, align 8, !tbaa !136
  %i.hb = load ptr, ptr %2, align 8, !tbaa !181
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.ha
  store i8 0, ptr %i.hc, align 1, !tbaa !176
  %.pre.i46.i.i = load ptr, ptr %7, align 8, !tbaa !181
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  store ptr %i.gv, ptr %2, align 8, !tbaa !181
  %i.hd = load <2 x i64>, ptr %i.gs, align 8, !tbaa !176
  store <2 x i64> %i.hd, ptr %i.bz, align 8, !tbaa !176
  br label %bb.ao

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.he = load i64, ptr %i.by, align 8, !tbaa !176
  store ptr %i.gv, ptr %2, align 8, !tbaa !181
  %i.hf = load <2 x i64>, ptr %i.gs, align 8, !tbaa !176
  store <2 x i64> %i.hf, ptr %i.bz, align 8, !tbaa !176
  %.not.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.gt, ptr %7, align 8, !tbaa !181
  store i64 %i.he, ptr %i.gh, align 8, !tbaa !176
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.gh, ptr %7, align 8, !tbaa !181
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i: ; preds = %bb.ao, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
  %i.hg = phi ptr [ %i.gt, %bb.an ], [ %i.gh, %bb.ao ], [ %.pre.i46.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ]
  store i64 0, ptr %i.gs, align 8, !tbaa !136
  store i8 0, ptr %i.hg, align 1, !tbaa !176
  %i.hh = load ptr, ptr %7, align 8, !tbaa !181   ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.gh
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i
  %i.hj = load i64, ptr %i.gh, align 8, !tbaa !176
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i.i
  %i.hl = load ptr, ptr %8, align 8, !tbaa !181   ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.hn = icmp eq ptr %i.hl, %i.hm
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.i
  %i.ho = load i64, ptr %i.hm, align 8, !tbaa !176
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.hp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i.i
  br i1 %.not25.i.i, label %.critedge30.i.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i.i
  %i.hq = load ptr, ptr %10, align 8, !tbaa !181  ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i.i: ; preds = %.critedge.i.i
  %i.ht = load i64, ptr %i.hr, align 8, !tbaa !176
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.hu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i.i: ; preds = %.critedge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.critedge29.i.i

.critedge30.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i.i
  %i.hv = load ptr, ptr %9, align 8, !tbaa !181   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i: ; preds = %.critedge30.i.i
  %i.hy = load i64, ptr %i.hw, align 8, !tbaa !176
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i.i: ; preds = %.critedge30.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %.critedge29.i.i

.critedge29.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_16TBFileC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %11, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.ia = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 8 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 24
  %i.ic = call fastcc noundef ptr @_ZN9Stockfish12_GLOBAL__N_16TBFile3mapEPPvPmNS0_6TBTypeE(ptr noundef nonnull align 8 dereferenceable(288) %11, ptr noundef %i.ia, ptr noundef %i.ib, i32 noundef 1) ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN9Stockfish12_GLOBAL__N_16TBFileE, i64 24), ptr %11, align 8, !tbaa !153
  %i.id = getelementptr inbounds nuw i8, ptr %11, i64 288 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN9Stockfish12_GLOBAL__N_16TBFileE, i64 64), ptr %i.id, align 8, !tbaa !153
  %i.ie = getelementptr inbounds nuw i8, ptr %11, i64 256
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !181 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %11, i64 272 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.critedge29.i.i
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !176
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ij) #30, !inline_history !6
  br label %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i.i

_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i.i:  ; preds = %.critedge29.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_St14basic_ifstreamIcSt11char_traitsIcEE, i64 24), ptr %11, align 8, !tbaa !153
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_St14basic_ifstreamIcSt11char_traitsIcEE, i64 64), ptr %i.id, align 8, !tbaa !153
  %i.ik = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt13basic_filebufIcSt11char_traitsIcEE, i64 16), ptr %i.ik, align 8, !tbaa !153
  %i.il = call noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.ik) #26, !inline_history !6 ; 0 uses
  %i.im = getelementptr inbounds nuw i8, ptr %11, i64 120
  call void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.im) #26, !inline_history !6
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ik, align 8, !tbaa !153
  %i.in = getelementptr inbounds nuw i8, ptr %11, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.in) #26, !inline_history !6
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_Si, i64 24), ptr %11, align 8, !tbaa !153
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_Si, i64 64), ptr %i.id, align 8, !tbaa !153
  %i.io = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.io, align 8, !tbaa !207
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.id) #26, !inline_history !208
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %.not26.i.i = icmp eq ptr %i.ic, null
  br i1 %.not26.i.i, label %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ic, i64 1
  %i.iq = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 52 ; 4 uses
  %i.ir = load i8, ptr %i.iq, align 4, !tbaa !198, !range !196, !noundef !197 ; 2 uses
  %i.is = trunc nuw i8 %i.ir to i1                ; 9 uses
  %i.it = select i1 %i.is, i8 3, i8 0             ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 55 ; 2 uses
  %i.iv = load i8, ptr %i.iu, align 1
  %i.iw = icmp ne i8 %i.iv, 0
  %i.ix = select i1 %i.is, i1 %i.iw, i1 false
  %i.iy = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 56 ; 12 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 48 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 53 ; 2 uses
  %i.jb = add nuw nsw i8 %i.it, 1                 ; 5 uses
  %wide.trip.count187.i.i.i = zext nneg i8 %i.jb to i64
  %invariant.op = add i64 183, %.0.val.i.i284
  br label %.critedge.i.i.i

bb.aq:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i
  %i.jc = ptrtoint ptr %.1.lcssa208211.i.i.i to i64
  %i.jd = and i64 %i.jc, 1
  %i.je = getelementptr inbounds nuw i8, ptr %.1.lcssa208211.i.i.i, i64 %i.jd
  br label %.preheader134.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i, %bb.ap
  %i.jf = phi i8 [ %i.ir, %bb.ap ], [ %.pre.i59.i.i, %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i ]
  %indvars.iv184.i.i.i = phi i64 [ 0, %bb.ap ], [ %indvars.iv.next185.i.i.i, %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i ] ; 4 uses
  %.078159.i.i.i = phi ptr [ %i.ip, %bb.ap ], [ %.1.lcssa208211.i.i.i, %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i ] ; 4 uses
  %.078159.i.i.i283 = ptrtoaddr ptr %.078159.i.i.i to i64
  %i.jg = trunc nuw i8 %i.jf to i1
  %i.jh = select i1 %i.jg, i64 %indvars.iv184.i.i.i, i64 0
  %i.ji = getelementptr inbounds nuw [240 x i8], ptr %i.iy, i64 %i.jh ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ji, i8 0, i64 80, i1 false)
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 80 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !233 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 96
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !234
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jk, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jj, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %.critedge.i.i.i
  %i.jn = ptrtoint ptr %i.jm to i64
  %i.jo = ptrtoint ptr %i.jk to i64
  %i.jp = sub i64 %i.jn, %i.jo
  call void @_ZdlPvm(ptr noundef nonnull %i.jk, i64 noundef %i.jp) #30
  br label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i

_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i:         ; preds = %bb.ar, %.critedge.i.i.i
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ji, i64 104 ; 2 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !236 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.ji, i64 120
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !237
  %.not.i.i.i.i.i5.i.i.i.i = icmp eq ptr %i.jr, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jq, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i5.i.i.i.i, label %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i
  %i.ju = ptrtoint ptr %i.jt to i64
  %i.jv = ptrtoint ptr %i.jr to i64
  %i.jw = sub i64 %i.ju, %i.jv
  call void @_ZdlPvm(ptr noundef nonnull %i.jr, i64 noundef %i.jw) #30
  br label %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i

_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i: ; preds = %bb.as, %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ji, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.jx, i8 0, i64 112, i1 false)
  %i.jy = load i8, ptr %.078159.i.i.i, align 1, !tbaa !176
  %i.jz = and i8 %i.jy, 15                        ; 3 uses
  %i.ka = zext nneg i8 %i.jz to i32               ; 2 uses
  br i1 %i.ix, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i
  %i.kb = getelementptr inbounds nuw i8, ptr %.078159.i.i.i, i64 1
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !176
  %i.kd = and i8 %i.kc, 15
  %i.ke = zext nneg i8 %i.kd to i32
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i
  %i.kf = phi i32 [ %i.ke, %bb.at ], [ 15, %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i ] ; 6 uses
  %i.kg = phi i64 [ 2, %bb.at ], [ 1, %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i ] ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.078159.i.i.i, i64 %i.kg ; 8 uses
  %i.ki = load i32, ptr %i.iz, align 8, !tbaa !194 ; 5 uses
  %i.kj = icmp sgt i32 %i.ki, 0
  %.pre.i59.i.i = load i8, ptr %i.iq, align 4, !tbaa !198, !range !196 ; 2 uses
  %i.kk = trunc nuw i8 %.pre.i59.i.i to i1        ; 4 uses
  %i.kl = select i1 %i.kk, i64 %indvars.iv184.i.i.i, i64 0 ; 2 uses
  %i.km = getelementptr inbounds nuw [240 x i8], ptr %i.iy, i64 %i.kl ; 14 uses
  br i1 %i.kj, label %iter.check, label %.critedge89.thread.i.i.i

.critedge89.thread.i.i.i:                         ; preds = %bb.au
  %i.kn = load i8, ptr %i.ja, align 1, !range !196
  %i.ko = trunc nuw i8 %i.kn to i1
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 200 ; 2 uses
  store i32 1, ptr %i.kp, align 4, !tbaa !132
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 204
  store i32 0, ptr %i.kq, align 4, !tbaa !132
  br i1 %i.kk, label %bb.az, label %.thread68.split.preheader.i.i.i.i

iter.check:                                       ; preds = %bb.au
  %i.kr = getelementptr inbounds nuw i8, ptr %i.km, i64 128 ; 12 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.ki to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %i.ki, 16
  br i1 %min.iters.check, label %.split80.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ks = mul i64 %i.kl, 240
  %i.kt = add i64 %i.kg, %.078159.i.i.i283
  %i.ku = sub i64 %i.ks, %i.kt
  %i.kv = add i64 %i.ku, %invariant.op
  %diff.check = icmp ult i64 %i.kv, 255
  br i1 %diff.check, label %.split80.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check285 = icmp ult i32 %i.ki, 256
  br i1 %min.iters.check285, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kw = and i64 %wide.trip.count.i.i.i, 240
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483392 ; 5 uses
  %i.kx = getelementptr i8, ptr %i.kh, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.kh, i64 %index ; 4 uses
  %i.ky = getelementptr i8, ptr %next.gep, i64 64
  %i.kz = getelementptr i8, ptr %next.gep, i64 128
  %i.la = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <64 x i8>, ptr %next.gep, align 1, !tbaa !176
  %wide.load286 = load <64 x i8>, ptr %i.ky, align 1, !tbaa !176
  %wide.load287 = load <64 x i8>, ptr %i.kz, align 1, !tbaa !176
  %wide.load288 = load <64 x i8>, ptr %i.la, align 1, !tbaa !176
  %i.lb = and <64 x i8> %wide.load, splat (i8 15)
  %i.lc = and <64 x i8> %wide.load286, splat (i8 15)
  %i.ld = and <64 x i8> %wide.load287, splat (i8 15)
  %i.le = and <64 x i8> %wide.load288, splat (i8 15)
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kr, i64 %index ; 4 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 64
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 128
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 192
  store <64 x i8> %i.lb, ptr %i.lf, align 1, !tbaa !217
  store <64 x i8> %i.lc, ptr %i.lg, align 1, !tbaa !217
  store <64 x i8> %i.ld, ptr %i.lh, align 1, !tbaa !217
  store <64 x i8> %i.le, ptr %i.li, align 1, !tbaa !217
  %index.next = add nuw i64 %index, 256           ; 2 uses
  %i.lj = icmp eq i64 %index.next, %n.vec
  br i1 %i.lj, label %middle.block, label %vector.body, !llvm.loop !406

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %.critedge89.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.kw, 0
  br i1 %min.epilog.iters.check, label %.split80.i.i.i.preheader, label %vec.epilog.ph, !prof !238

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec289 = and i64 %wide.trip.count.i.i.i, 2147483632 ; 4 uses
  %i.lk = getelementptr i8, ptr %i.kh, i64 %n.vec289 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index290 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next293, %vec.epilog.vector.body ] ; 3 uses
  %next.gep291 = getelementptr i8, ptr %i.kh, i64 %index290
  %wide.load292 = load <16 x i8>, ptr %next.gep291, align 1, !tbaa !176
  %i.ll = and <16 x i8> %wide.load292, splat (i8 15)
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kr, i64 %index290
  store <16 x i8> %i.ll, ptr %i.lm, align 1, !tbaa !217
  %index.next293 = add nuw i64 %index290, 16      ; 2 uses
  %i.ln = icmp eq i64 %index.next293, %n.vec289
  br i1 %i.ln, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !407

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n294 = icmp eq i64 %n.vec289, %wide.trip.count.i.i.i
  br i1 %cmp.n294, label %.critedge89.i.i.i, label %.split80.i.i.i.preheader

.split80.i.i.i.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec289, %vec.epilog.middle.block ] ; 3 uses
  %.1139.i.i.i.ph = phi ptr [ %i.kh, %iter.check ], [ %i.kh, %vector.memcheck ], [ %i.kx, %vec.epilog.iter.check ], [ %i.lk, %vec.epilog.middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 7   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split80.i.i.i.prol.loopexit, label %.split80.i.i.i.prol

.split80.i.i.i.prol:                              ; preds = %.split80.i.i.i.preheader, %.split80.i.i.i.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %.split80.i.i.i.prol ], [ %indvars.iv.i.i.i.ph, %.split80.i.i.i.preheader ] ; 2 uses
  %.1139.i.i.i.prol = phi ptr [ %i.lr, %.split80.i.i.i.prol ], [ %.1139.i.i.i.ph, %.split80.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.split80.i.i.i.prol ], [ 0, %.split80.i.i.i.preheader ]
  %i.lo = load i8, ptr %.1139.i.i.i.prol, align 1, !tbaa !176
  %i.lp = and i8 %i.lo, 15
  %i.lq = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv.i.i.i.prol
  store i8 %i.lp, ptr %i.lq, align 1, !tbaa !217
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.1139.i.i.i.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.split80.i.i.i.prol.loopexit, label %.split80.i.i.i.prol, !llvm.loop !408

.split80.i.i.i.prol.loopexit:                     ; preds = %.split80.i.i.i.prol, %.split80.i.i.i.preheader
  %.lcssa504.unr = phi ptr [ poison, %.split80.i.i.i.preheader ], [ %i.lr, %.split80.i.i.i.prol ]
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.split80.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.split80.i.i.i.prol ]
  %.1139.i.i.i.unr = phi ptr [ %.1139.i.i.i.ph, %.split80.i.i.i.preheader ], [ %i.lr, %.split80.i.i.i.prol ]
  %i.ls = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.lt = icmp ugt i64 %i.ls, -8
  br i1 %i.lt, label %.critedge89.i.i.i, label %.split80.i.i.i

.split80.i.i.i:                                   ; preds = %.split80.i.i.i.prol.loopexit, %.split80.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.7, %.split80.i.i.i ], [ %indvars.iv.i.i.i.unr, %.split80.i.i.i.prol.loopexit ] ; 9 uses
  %.1139.i.i.i = phi ptr [ %i.ng, %.split80.i.i.i ], [ %.1139.i.i.i.unr, %.split80.i.i.i.prol.loopexit ] ; 9 uses
  %i.lu = load i8, ptr %.1139.i.i.i, align 1, !tbaa !176
  %i.lv = and i8 %i.lu, 15
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv.i.i.i
  store i8 %i.lv, ptr %i.lw, align 1, !tbaa !217
  %i.lx = getelementptr inbounds nuw i8, ptr %.1139.i.i.i, i64 1
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !176
  %i.lz = and i8 %i.ly, 15
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv.i.i.i
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 1
  store i8 %i.lz, ptr %i.mb, align 1, !tbaa !217
  %i.mc = getelementptr inbounds nuw i8, ptr %.1139.i.i.i, i64 2
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !176
  %i.me = and i8 %i.md, 15
  %i.mf = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv.i.i.i
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 2
  store i8 %i.me, ptr %i.mg, align 1, !tbaa !217
  %i.mh = getelementptr inbounds nuw i8, ptr %.1139.i.i.i, i64 3
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !176
  %i.mj = and i8 %i.mi, 15
  %i.mk = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv.i.i.i
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 3
  store i8 %i.mj, ptr %i.ml, align 1, !tbaa !217
  %i.mm = getelementptr inbounds nuw i8, ptr %.1139.i.i.i, i64 4
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !176
  %i.mo = and i8 %i.mn, 15
  %i.mp = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv.i.i.i
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 4
  store i8 %i.mo, ptr %i.mq, align 1, !tbaa !217
  %i.mr = getelementptr inbounds nuw i8, ptr %.1139.i.i.i, i64 5
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !176
  %i.mt = and i8 %i.ms, 15
  %i.mu = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv.i.i.i
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 5
  store i8 %i.mt, ptr %i.mv, align 1, !tbaa !217
  %i.mw = getelementptr inbounds nuw i8, ptr %.1139.i.i.i, i64 6
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !176
  %i.my = and i8 %i.mx, 15
  %i.mz = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv.i.i.i
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 6
  store i8 %i.my, ptr %i.na, align 1, !tbaa !217
  %i.nb = getelementptr inbounds nuw i8, ptr %.1139.i.i.i, i64 7
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !176
  %i.nd = and i8 %i.nc, 15
  %i.ne = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv.i.i.i
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 7
  store i8 %i.nd, ptr %i.nf, align 1, !tbaa !217
  %indvars.iv.next.i.i.i.7 = add nuw nsw i64 %indvars.iv.i.i.i, 8 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.1139.i.i.i, i64 8 ; 2 uses
  %exitcond.not.i.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.i.7, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.7, label %.critedge89.i.i.i, label %.split80.i.i.i, !llvm.loop !409

.critedge89.i.i.i:                                ; preds = %.split80.i.i.i.prol.loopexit, %.split80.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa280 = phi ptr [ %i.lk, %vec.epilog.middle.block ], [ %i.kx, %middle.block ], [ %.lcssa504.unr, %.split80.i.i.i.prol.loopexit ], [ %i.ng, %.split80.i.i.i ] ; 2 uses
  %i.nh = load i8, ptr %i.ja, align 1, !range !196
  %i.ni = trunc nuw i8 %i.nh to i1                ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.km, i64 200 ; 6 uses
  store i32 1, ptr %i.nj, align 4, !tbaa !132
  %.not.i61.i.i = icmp eq i32 %i.ki, 1
  br i1 %.not.i61.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.critedge89.i.i.i
  %i.nk = select i1 %i.ni, i32 3, i32 2
  %spec.select259 = select i1 %i.kk, i32 0, i32 %i.nk
  br label %select.unfold.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.ay, %.critedge89.i.i.i
  %.066.lcssa.i.i.i.i = phi i32 [ 0, %.critedge89.i.i.i ], [ %.167.i.i.i.i, %bb.ay ] ; 3 uses
  %i.nl = add nsw i32 %.066.lcssa.i.i.i.i, 1
  %i.nm = sext i32 %i.nl to i64                   ; 3 uses
  %i.nn = getelementptr inbounds [4 x i8], ptr %i.nj, i64 %i.nm
  store i32 0, ptr %i.nn, align 4, !tbaa !132
  br i1 %i.kk, label %bb.az, label %._crit_edge.i.i..thread68.split.preheader.i.i_crit_edge.i.i

._crit_edge.i.i..thread68.split.preheader.i.i_crit_edge.i.i: ; preds = %._crit_edge.i.i.i.i
  %.pre.i.i = load i32, ptr %i.nj, align 8, !tbaa !132
  br label %.thread68.split.preheader.i.i.i.i

select.unfold.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.ay
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.ay ], [ 1, %.lr.ph.i.i.i.i ] ; 2 uses
  %.06573.i.i.i.i = phi i32 [ %i.no, %bb.ay ], [ %spec.select259, %.lr.ph.i.i.i.i ] ; 2 uses
  %.06672.i.i.i.i = phi i32 [ %.167.i.i.i.i, %bb.ay ], [ 0, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.no = add nsw i32 %.06573.i.i.i.i, -1
  %i.np = icmp sgt i32 %.06573.i.i.i.i, 1
  br i1 %i.np, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %select.unfold.i.i.i
  %i.nq = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv.i.i.i.i ; 2 uses
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !217
  %i.ns = getelementptr i8, ptr %i.nq, i64 -1
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !217
  %i.nu = icmp eq i8 %i.nr, %i.nt
  br i1 %i.nu, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av, %select.unfold.i.i.i
  %i.nv = sext i32 %.06672.i.i.i.i to i64
  %i.nw = getelementptr inbounds [4 x i8], ptr %i.nj, i64 %i.nv ; 2 uses
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !132
  %i.ny = add nsw i32 %i.nx, 1
  store i32 %i.ny, ptr %i.nw, align 4, !tbaa !132
  br label %bb.ay
end_hunk_0
begin_hunk_1_@_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE0ENS_10Tablebases8WDLScoreEEET0_RKNS_8PositionEPNS3_10ProbeStateES4_:bb.a
  %.pre.i45.i = load i64, ptr %.phi.trans.insert.i44.i, align 8, !tbaa !136
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i, %bb.z
  %i.ez = phi i64 [ %i.ev, %bb.z ], [ %.pre.i45.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i64 %i.ez, ptr %i.fb, align 8, !tbaa !136, !alias.scope !576
  store ptr %i.es, ptr %i.ep, align 8, !tbaa !181
  store i64 0, ptr %i.fa, align 8, !tbaa !136
  store i8 0, ptr %i.es, align 8, !tbaa !176
  %i.fc = load ptr, ptr %2, align 8, !tbaa !181   ; 6 uses
  %i.fd = icmp eq ptr %i.fc, %i.ah
  %i.fe = load ptr, ptr %7, align 8, !tbaa !181   ; 5 uses
  %i.ff = icmp eq ptr %i.fe, %i.eq                ; 2 uses
  br i1 %i.fd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i
  br i1 %i.ff, label %bb.aa, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i
  br i1 %i.ff, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.fg = load i64, ptr %i.fb, align 8, !tbaa !136 ; 3 uses
  %i.fh = icmp ult i64 %i.fg, 16
  call void @llvm.assume(i1 %i.fh)
  switch i64 %i.fg, label %bb.ac [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.fi = load i8, ptr %i.fe, align 1, !tbaa !176
  store i8 %i.fi, ptr %i.fc, align 1, !tbaa !176
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fc, ptr align 1 %i.fe, i64 %i.fg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.fj = load i64, ptr %i.fb, align 8, !tbaa !136 ; 2 uses
  store i64 %i.fj, ptr %i.ai, align 8, !tbaa !136
  %i.fk = load ptr, ptr %2, align 8, !tbaa !181
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fj
  store i8 0, ptr %i.fl, align 1, !tbaa !176
  %.pre.i46.i = load ptr, ptr %7, align 8, !tbaa !181
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.fe, ptr %2, align 8, !tbaa !181
  %i.fm = load <2 x i64>, ptr %i.fb, align 8, !tbaa !176
  store <2 x i64> %i.fm, ptr %i.ai, align 8, !tbaa !176
  br label %bb.ae

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.fn = load i64, ptr %i.ah, align 8, !tbaa !176
  store ptr %i.fe, ptr %2, align 8, !tbaa !181
  %i.fo = load <2 x i64>, ptr %i.fb, align 8, !tbaa !176
  store <2 x i64> %i.fo, ptr %i.ai, align 8, !tbaa !176
  %.not.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.fc, ptr %7, align 8, !tbaa !181
  store i64 %i.fn, ptr %i.eq, align 8, !tbaa !176
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.eq, ptr %7, align 8, !tbaa !181
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.ae, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.fp = phi ptr [ %i.fc, %bb.ad ], [ %i.eq, %bb.ae ], [ %.pre.i46.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.fb, align 8, !tbaa !136
  store i8 0, ptr %i.fp, align 1, !tbaa !176
  %i.fq = load ptr, ptr %7, align 8, !tbaa !181   ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.eq
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.fs = load i64, ptr %i.eq, align 8, !tbaa !176
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i
  %i.fu = load ptr, ptr %8, align 8, !tbaa !181   ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i
  %i.fx = load i64, ptr %i.fv, align 8, !tbaa !176
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fy) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i
  br i1 %.not25.i, label %.critedge30.i, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i
  %i.fz = load ptr, ptr %10, align 8, !tbaa !181  ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i: ; preds = %.critedge.i
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !176
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i: ; preds = %.critedge.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.critedge29.i

.critedge30.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i
  %i.ge = load ptr, ptr %9, align 8, !tbaa !181   ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i: ; preds = %.critedge30.i
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !176
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gi) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i: ; preds = %.critedge30.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %.critedge29.i

.critedge29.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_16TBFileC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %11, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.gj = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 8 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 24
  %i.gl = call fastcc noundef ptr @_ZN9Stockfish12_GLOBAL__N_16TBFile3mapEPPvPmNS0_6TBTypeE(ptr noundef nonnull align 8 dereferenceable(288) %11, ptr noundef %i.gj, ptr noundef %i.gk, i32 noundef 0) ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN9Stockfish12_GLOBAL__N_16TBFileE, i64 24), ptr %11, align 8, !tbaa !153
  %i.gm = getelementptr inbounds nuw i8, ptr %11, i64 288 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN9Stockfish12_GLOBAL__N_16TBFileE, i64 64), ptr %i.gm, align 8, !tbaa !153
  %i.gn = getelementptr inbounds nuw i8, ptr %11, i64 256
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !181 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %11, i64 272 ; 2 uses
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.critedge29.i
  %i.gr = load i64, ptr %i.gp, align 8, !tbaa !176
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gs) #30, !inline_history !6
  br label %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i

_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i:    ; preds = %.critedge29.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_St14basic_ifstreamIcSt11char_traitsIcEE, i64 24), ptr %11, align 8, !tbaa !153
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_St14basic_ifstreamIcSt11char_traitsIcEE, i64 64), ptr %i.gm, align 8, !tbaa !153
  %i.gt = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt13basic_filebufIcSt11char_traitsIcEE, i64 16), ptr %i.gt, align 8, !tbaa !153
  %i.gu = call noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.gt) #26, !inline_history !6 ; 0 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %11, i64 120
  call void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.gv) #26, !inline_history !6
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.gt, align 8, !tbaa !153
  %i.gw = getelementptr inbounds nuw i8, ptr %11, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gw) #26, !inline_history !6
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_Si, i64 24), ptr %11, align 8, !tbaa !153
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_Si, i64 64), ptr %i.gm, align 8, !tbaa !153
  %i.gx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.gx, align 8, !tbaa !207
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.gm) #26, !inline_history !208
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %.not26.i = icmp eq ptr %i.gl, null
  br i1 %.not26.i, label %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_Ph.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  %i.gz = load i64, ptr %i.au, align 8, !tbaa !201
  %i.ha = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 40
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !205
  %.not.i59.i = icmp eq i64 %i.gz, %i.hb          ; 2 uses
  %i.hc = select i1 %.not.i59.i, i32 1, i32 2     ; 16 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 52 ; 6 uses
  %i.he = load i8, ptr %i.hd, align 4, !tbaa !195, !range !196, !noundef !197
  %i.hf = trunc nuw i8 %i.he to i1                ; 6 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 55 ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 1
  %i.hi = icmp ne i8 %i.hh, 0
  %i.hj = select i1 %i.hf, i1 %i.hi, i1 false
  %i.hk = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 56 ; 17 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 48 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 53
  %i.hq = select i1 %i.hf, i8 4, i8 1             ; 11 uses
  %wide.trip.count197.i.i = zext nneg i8 %i.hq to i64 ; 5 uses
  %wide.trip.count192.i.i = zext nneg i32 %i.hc to i64
  %invariant.op = add i64 183, %.0.val.i27
  br label %.preheader141.i.i

.preheader141.i.i:                                ; preds = %bb.ao, %bb.af
  %indvars.iv194.i.i = phi i64 [ 0, %bb.af ], [ %indvars.iv.next195.i.i, %bb.ao ] ; 3 uses
  %.087150.i.i = phi ptr [ %i.gy, %bb.af ], [ %.1.lcssa.i.i, %bb.ao ] ; 7 uses
  %.087150.i.i26 = ptrtoaddr ptr %.087150.i.i to i64
  %i.hr = and i64 %indvars.iv194.i.i, 255         ; 3 uses
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ao
  %i.hs = ptrtoint ptr %.1.lcssa.i.i to i64
  %i.ht = and i64 %i.hs, 1
  %i.hu = getelementptr inbounds nuw i8, ptr %.1.lcssa.i.i, i64 %i.ht
  br label %.preheader137.i.i

bb.ah:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.hv = load i8, ptr %.087150.i.i, align 1, !tbaa !176
  %i.hw = and i8 %i.hv, 15
  %i.hx = zext nneg i8 %i.hw to i32
  store i32 %i.hx, ptr %i.d, align 16, !tbaa !132
  br i1 %i.hj, label %bb.am, label %bb.al

bb.ai:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i, %.preheader141.i.i
  %.086142.i.i = phi i32 [ 0, %.preheader141.i.i ], [ %i.iu, %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i ] ; 2 uses
  %i.hy = and i32 %.086142.i.i, 1
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [960 x i8], ptr %i.hk, i64 %i.hz
  %i.ib = load i8, ptr %i.hd, align 4, !tbaa !195, !range !196, !noundef !197
  %i.ic = trunc nuw i8 %i.ib to i1
  %i.id = select i1 %i.ic, i64 %i.hr, i64 0
  %i.ie = getelementptr inbounds nuw [240 x i8], ptr %i.ia, i64 %i.id ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ie, i8 0, i64 80, i1 false)
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 80 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !233 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 96
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !234
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ig, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.if, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = ptrtoint ptr %i.ig to i64
  %i.il = sub i64 %i.ij, %i.ik
  call void @_ZdlPvm(ptr noundef nonnull %i.ig, i64 noundef %i.il) #30
  br label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i

_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i:           ; preds = %bb.aj, %bb.ai
  %i.im = getelementptr inbounds nuw i8, ptr %i.ie, i64 104 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !236 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ie, i64 120
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !237
  %.not.i.i.i.i.i5.i.i.i = icmp eq ptr %i.in, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.im, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i5.i.i.i, label %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = ptrtoint ptr %i.in to i64
  %i.is = sub i64 %i.iq, %i.ir
  call void @_ZdlPvm(ptr noundef nonnull %i.in, i64 noundef %i.is) #30
  br label %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i

_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i: ; preds = %bb.ak, %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i
  %i.it = getelementptr inbounds nuw i8, ptr %i.ie, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.it, i8 0, i64 112, i1 false)
  %i.iu = add nuw nsw i32 %.086142.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.iu, %i.hc
  br i1 %exitcond.not.i.i, label %bb.ah, label %bb.ai, !llvm.loop !519

bb.al:                                            ; preds = %bb.ah
  store i32 15, ptr %i.hl, align 4, !tbaa !132
  %i.iv = load i8, ptr %.087150.i.i, align 1, !tbaa !176
  %i.iw = lshr i8 %i.iv, 4
  %i.ix = zext nneg i8 %i.iw to i32
  store i32 %i.ix, ptr %i.hm, align 8, !tbaa !132
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  %i.iy = getelementptr inbounds nuw i8, ptr %.087150.i.i, i64 1 ; 2 uses
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !176
  %i.ja = and i8 %i.iz, 15
  %i.jb = zext nneg i8 %i.ja to i32
  store i32 %i.jb, ptr %i.hl, align 4, !tbaa !132
  %i.jc = load i8, ptr %.087150.i.i, align 1, !tbaa !176
  %i.jd = lshr i8 %i.jc, 4
  %i.je = zext nneg i8 %i.jd to i32
  store i32 %i.je, ptr %i.hm, align 8, !tbaa !132
  %i.jf = load i8, ptr %i.iy, align 1, !tbaa !176
  %i.jg = lshr i8 %i.jf, 4
  %i.jh = zext nneg i8 %i.jg to i32
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ji = phi i64 [ 2, %bb.am ], [ 1, %bb.al ]    ; 3 uses
  %i.jj = phi i32 [ %i.jh, %bb.am ], [ 15, %bb.al ]
  store i32 %i.jj, ptr %i.hn, align 4, !tbaa !132
  %i.jk = getelementptr i8, ptr %.087150.i.i, i64 %i.ji ; 14 uses
  %i.jl = load i32, ptr %i.ho, align 8, !tbaa !193 ; 6 uses
  %i.jm = icmp sgt i32 %i.jl, 0
  br i1 %i.jm, label %.preheader139.preheader.i.i, label %..preheader140_crit_edge.i.i

..preheader140_crit_edge.i.i:                     ; preds = %bb.an
  %.pre.i60.i = load i8, ptr %i.hd, align 4, !tbaa !195, !range !196
  br label %.preheader140.i.i

.preheader139.preheader.i.i:                      ; preds = %bb.an
  %wide.trip.count.i.i = zext nneg i32 %i.jl to i64 ; 18 uses
  %i.jn = load i8, ptr %i.hd, align 4, !tbaa !195, !range !196, !noundef !197 ; 9 uses
  %i.jo = trunc nuw i8 %i.jn to i1
  %i.jp = select i1 %i.jo, i64 %i.hr, i64 0       ; 4 uses
  %i.jq = getelementptr [240 x i8], ptr %i.hk, i64 %i.jp
  %i.jr = getelementptr i8, ptr %i.jq, i64 128    ; 23 uses
  %i.js = getelementptr inbounds nuw [240 x i8], ptr %.0.val.i, i64 %i.jp
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 1144 ; 11 uses
  br i1 %.not.i59.i, label %iter.check, label %iter.check56

iter.check56:                                     ; preds = %.preheader139.preheader.i.i
  %min.iters.check42 = icmp ult i32 %i.jl, 8
  br i1 %min.iters.check42, label %.loopexit.i.i.preheader, label %vector.memcheck43

vector.memcheck43:                                ; preds = %iter.check56
  %i.ju = mul nuw nsw i64 %i.jp, 240
  %i.jv = getelementptr i8, ptr %.0.val.i, i64 %i.ju
  %i.jw = getelementptr i8, ptr %i.jv, i64 %wide.trip.count.i.i
  %i.jx = getelementptr i8, ptr %i.jw, i64 1144
  %i.jy = getelementptr i8, ptr %.087150.i.i, i64 %i.ji
  %i.jz = getelementptr i8, ptr %i.jy, i64 %wide.trip.count.i.i
  %bound0 = icmp ult ptr %i.jr, %i.jz
  %bound1 = icmp ult ptr %i.jk, %i.jx
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.loopexit.i.i.preheader, label %vector.main.loop.iter.check44

vector.main.loop.iter.check44:                    ; preds = %vector.memcheck43
  %min.iters.check45 = icmp ult i32 %i.jl, 64
  br i1 %min.iters.check45, label %vec.epilog.ph60, label %vector.ph46

vector.ph46:                                      ; preds = %vector.main.loop.iter.check44
  %i.ka = and i64 %wide.trip.count.i.i, 56
  %n.vec47 = and i64 %wide.trip.count.i.i, 2147483584 ; 5 uses
  %i.kb = getelementptr i8, ptr %i.jk, i64 %n.vec47 ; 2 uses
  br label %vector.body48

vector.body48:                                    ; preds = %vector.ph46, %vector.body48
  %index49 = phi i64 [ 0, %vector.ph46 ], [ %index.next53, %vector.body48 ] ; 4 uses
  %next.gep50 = getelementptr i8, ptr %i.jk, i64 %index49
  %wide.load51 = load <64 x i8>, ptr %next.gep50, align 1, !tbaa !176, !alias.scope !577 ; 2 uses
  %i.kc = and <64 x i8> %wide.load51, splat (i8 15)
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jr, i64 %index49
  store <64 x i8> %i.kc, ptr %i.kd, align 1, !tbaa !217, !alias.scope !578, !noalias !577
  %i.ke = lshr <64 x i8> %wide.load51, splat (i8 4)
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jt, i64 %index49
  store <64 x i8> %i.ke, ptr %i.kf, align 1, !tbaa !217, !alias.scope !578, !noalias !577
  %index.next53 = add nuw i64 %index49, 64        ; 2 uses
  %i.kg = icmp eq i64 %index.next53, %n.vec47
  br i1 %i.kg, label %middle.block54, label %vector.body48, !llvm.loop !523

middle.block54:                                   ; preds = %vector.body48
  %cmp.n55 = icmp eq i64 %n.vec47, %wide.trip.count.i.i
  br i1 %cmp.n55, label %.preheader140.i.i, label %vec.epilog.iter.check57

vec.epilog.iter.check57:                          ; preds = %middle.block54
  %min.epilog.iters.check59 = icmp eq i64 %i.ka, 0
  br i1 %min.epilog.iters.check59, label %.loopexit.i.i.preheader, label %vec.epilog.ph60, !prof !579

vec.epilog.ph60:                                  ; preds = %vector.main.loop.iter.check44, %vec.epilog.iter.check57
  %vec.epilog.resume.val61 = phi i64 [ %n.vec47, %vec.epilog.iter.check57 ], [ 0, %vector.main.loop.iter.check44 ]
  %n.vec62 = and i64 %wide.trip.count.i.i, 2147483640 ; 4 uses
  %i.kh = getelementptr i8, ptr %i.jk, i64 %n.vec62 ; 2 uses
  br label %vec.epilog.vector.body63

vec.epilog.vector.body63:                         ; preds = %vec.epilog.vector.body63, %vec.epilog.ph60
  %index64 = phi i64 [ %vec.epilog.resume.val61, %vec.epilog.ph60 ], [ %index.next68, %vec.epilog.vector.body63 ] ; 4 uses
  %next.gep65 = getelementptr i8, ptr %i.jk, i64 %index64
  %wide.load66 = load <8 x i8>, ptr %next.gep65, align 1, !tbaa !176, !alias.scope !577 ; 2 uses
  %i.ki = and <8 x i8> %wide.load66, splat (i8 15)
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jr, i64 %index64
  store <8 x i8> %i.ki, ptr %i.kj, align 1, !tbaa !217, !alias.scope !578, !noalias !577
  %i.kk = lshr <8 x i8> %wide.load66, splat (i8 4)
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jt, i64 %index64
  store <8 x i8> %i.kk, ptr %i.kl, align 1, !tbaa !217, !alias.scope !578, !noalias !577
  %index.next68 = add nuw i64 %index64, 8         ; 2 uses
  %i.km = icmp eq i64 %index.next68, %n.vec62
  br i1 %i.km, label %vec.epilog.middle.block69, label %vec.epilog.vector.body63, !llvm.loop !524

vec.epilog.middle.block69:                        ; preds = %vec.epilog.vector.body63
  %cmp.n70 = icmp eq i64 %n.vec62, %wide.trip.count.i.i
  br i1 %cmp.n70, label %.preheader140.i.i, label %.loopexit.i.i.preheader

.loopexit.i.i.preheader:                          ; preds = %iter.check56, %vector.memcheck43, %vec.epilog.iter.check57, %vec.epilog.middle.block69
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check56 ], [ 0, %vector.memcheck43 ], [ %n.vec47, %vec.epilog.iter.check57 ], [ %n.vec62, %vec.epilog.middle.block69 ] ; 3 uses
  %.1144.i.i.ph = phi ptr [ %i.jk, %iter.check56 ], [ %i.jk, %vector.memcheck43 ], [ %i.kb, %vec.epilog.iter.check57 ], [ %i.kh, %vec.epilog.middle.block69 ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 7     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.prol.loopexit, label %.loopexit.i.i.prol

.loopexit.i.i.prol:                               ; preds = %.loopexit.i.i.preheader, %.loopexit.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.loopexit.i.i.prol ], [ %indvars.iv.i.i.ph, %.loopexit.i.i.preheader ] ; 3 uses
  %.1144.i.i.prol = phi ptr [ %i.kt, %.loopexit.i.i.prol ], [ %.1144.i.i.ph, %.loopexit.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.loopexit.i.i.prol ], [ 0, %.loopexit.i.i.preheader ]
  %i.kn = load i8, ptr %.1144.i.i.prol, align 1, !tbaa !176
  %i.ko = and i8 %i.kn, 15
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.i.prol
  store i8 %i.ko, ptr %i.kp, align 1, !tbaa !217
  %i.kq = load i8, ptr %.1144.i.i.prol, align 1, !tbaa !176
  %i.kr = lshr i8 %i.kq, 4
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv.i.i.prol
  store i8 %i.kr, ptr %i.ks, align 1, !tbaa !217
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.1144.i.i.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.loopexit.i.i.prol.loopexit, label %.loopexit.i.i.prol, !llvm.loop !525

.loopexit.i.i.prol.loopexit:                      ; preds = %.loopexit.i.i.prol, %.loopexit.i.i.preheader
  %.lcssa283.unr = phi ptr [ poison, %.loopexit.i.i.preheader ], [ %i.kt, %.loopexit.i.i.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.loopexit.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.loopexit.i.i.prol ]
  %.1144.i.i.unr = phi ptr [ %.1144.i.i.ph, %.loopexit.i.i.preheader ], [ %i.kt, %.loopexit.i.i.prol ]
  %i.ku = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.kv = icmp ugt i64 %i.ku, -8
  br i1 %i.kv, label %.preheader140.i.i, label %.loopexit.i.i

iter.check:                                       ; preds = %.preheader139.preheader.i.i
  %min.iters.check = icmp ult i32 %i.jl, 16
  br i1 %min.iters.check, label %.preheader139.preheader.i.split.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.kw = mul nuw nsw i64 %i.jp, 240
  %i.kx = add i64 %i.ji, %.087150.i.i26
  %i.ky = sub i64 %i.kw, %i.kx
  %i.kz = add i64 %i.ky, %invariant.op
  %diff.check = icmp ult i64 %i.kz, 255
  br i1 %diff.check, label %.preheader139.preheader.i.split.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check28 = icmp ult i32 %i.jl, 256
  br i1 %min.iters.check28, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.la = and i64 %wide.trip.count.i.i, 240
  %n.vec = and i64 %wide.trip.count.i.i, 2147483392 ; 5 uses
  %i.lb = getelementptr i8, ptr %i.jk, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.jk, i64 %index ; 4 uses
  %i.lc = getelementptr i8, ptr %next.gep, i64 64
  %i.ld = getelementptr i8, ptr %next.gep, i64 128
  %i.le = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <64 x i8>, ptr %next.gep, align 1, !tbaa !176
  %wide.load29 = load <64 x i8>, ptr %i.lc, align 1, !tbaa !176
  %wide.load30 = load <64 x i8>, ptr %i.ld, align 1, !tbaa !176
  %wide.load31 = load <64 x i8>, ptr %i.le, align 1, !tbaa !176
  %i.lf = and <64 x i8> %wide.load, splat (i8 15)
  %i.lg = and <64 x i8> %wide.load29, splat (i8 15)
  %i.lh = and <64 x i8> %wide.load30, splat (i8 15)
  %i.li = and <64 x i8> %wide.load31, splat (i8 15)
  %i.lj = getelementptr inbounds nuw i8, ptr %i.jr, i64 %index ; 4 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 64
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 128
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 192
  store <64 x i8> %i.lf, ptr %i.lj, align 1, !tbaa !217
  store <64 x i8> %i.lg, ptr %i.lk, align 1, !tbaa !217
  store <64 x i8> %i.lh, ptr %i.ll, align 1, !tbaa !217
  store <64 x i8> %i.li, ptr %i.lm, align 1, !tbaa !217
  %index.next = add nuw i64 %index, 256           ; 2 uses
  %i.ln = icmp eq i64 %index.next, %n.vec
  br i1 %i.ln, label %middle.block, label %vector.body, !llvm.loop !526

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %.preheader140.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.la, 0
  br i1 %min.epilog.iters.check, label %.preheader139.preheader.i.split.us.i.preheader, label %vec.epilog.ph, !prof !238

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec32 = and i64 %wide.trip.count.i.i, 2147483632 ; 4 uses
  %i.lo = getelementptr i8, ptr %i.jk, i64 %n.vec32 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 3 uses
  %next.gep34 = getelementptr i8, ptr %i.jk, i64 %index33
  %wide.load35 = load <16 x i8>, ptr %next.gep34, align 1, !tbaa !176
  %i.lp = and <16 x i8> %wide.load35, splat (i8 15)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.jr, i64 %index33
  store <16 x i8> %i.lp, ptr %i.lq, align 1, !tbaa !217
  %index.next36 = add nuw i64 %index33, 16        ; 2 uses
  %i.lr = icmp eq i64 %index.next36, %n.vec32
  br i1 %i.lr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !527

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n37 = icmp eq i64 %n.vec32, %wide.trip.count.i.i
  br i1 %cmp.n37, label %.preheader140.i.i, label %.preheader139.preheader.i.split.us.i.preheader

.preheader139.preheader.i.split.us.i.preheader:   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.us.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec32, %vec.epilog.middle.block ] ; 3 uses
  %.1144.i.us.i.ph = phi ptr [ %i.jk, %iter.check ], [ %i.jk, %vector.memcheck ], [ %i.lb, %vec.epilog.iter.check ], [ %i.lo, %vec.epilog.middle.block ] ; 2 uses
  %xtraiter285 = and i64 %wide.trip.count.i.i, 7  ; 2 uses
  %lcmp.mod286.not = icmp eq i64 %xtraiter285, 0
  br i1 %lcmp.mod286.not, label %.preheader139.preheader.i.split.us.i.prol.loopexit, label %.preheader139.preheader.i.split.us.i.prol

.preheader139.preheader.i.split.us.i.prol:        ; preds = %.preheader139.preheader.i.split.us.i.preheader, %.preheader139.preheader.i.split.us.i.prol
  %indvars.iv.i.us.i.prol = phi i64 [ %indvars.iv.next.i.us.i.prol, %.preheader139.preheader.i.split.us.i.prol ], [ %indvars.iv.i.us.i.ph, %.preheader139.preheader.i.split.us.i.preheader ] ; 2 uses
  %.1144.i.us.i.prol = phi ptr [ %i.lv, %.preheader139.preheader.i.split.us.i.prol ], [ %.1144.i.us.i.ph, %.preheader139.preheader.i.split.us.i.preheader ] ; 2 uses
  %prol.iter287 = phi i64 [ %prol.iter287.next, %.preheader139.preheader.i.split.us.i.prol ], [ 0, %.preheader139.preheader.i.split.us.i.preheader ]
  %i.ls = load i8, ptr %.1144.i.us.i.prol, align 1, !tbaa !176
  %i.lt = and i8 %i.ls, 15
  %i.lu = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i.prol
  store i8 %i.lt, ptr %i.lu, align 1, !tbaa !217
  %indvars.iv.next.i.us.i.prol = add nuw nsw i64 %indvars.iv.i.us.i.prol, 1 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.1144.i.us.i.prol, i64 1 ; 3 uses
  %prol.iter287.next = add i64 %prol.iter287, 1   ; 2 uses
  %prol.iter287.cmp.not = icmp eq i64 %prol.iter287.next, %xtraiter285
  br i1 %prol.iter287.cmp.not, label %.preheader139.preheader.i.split.us.i.prol.loopexit, label %.preheader139.preheader.i.split.us.i.prol, !llvm.loop !528

.preheader139.preheader.i.split.us.i.prol.loopexit: ; preds = %.preheader139.preheader.i.split.us.i.prol, %.preheader139.preheader.i.split.us.i.preheader
  %.lcssa284.unr = phi ptr [ poison, %.preheader139.preheader.i.split.us.i.preheader ], [ %i.lv, %.preheader139.preheader.i.split.us.i.prol ]
  %indvars.iv.i.us.i.unr = phi i64 [ %indvars.iv.i.us.i.ph, %.preheader139.preheader.i.split.us.i.preheader ], [ %indvars.iv.next.i.us.i.prol, %.preheader139.preheader.i.split.us.i.prol ]
  %.1144.i.us.i.unr = phi ptr [ %.1144.i.us.i.ph, %.preheader139.preheader.i.split.us.i.preheader ], [ %i.lv, %.preheader139.preheader.i.split.us.i.prol ]
  %i.lw = sub nsw i64 %indvars.iv.i.us.i.ph, %wide.trip.count.i.i
  %i.lx = icmp ugt i64 %i.lw, -8
  br i1 %i.lx, label %.preheader140.i.i, label %.preheader139.preheader.i.split.us.i

.preheader139.preheader.i.split.us.i:             ; preds = %.preheader139.preheader.i.split.us.i.prol.loopexit, %.preheader139.preheader.i.split.us.i
  %indvars.iv.i.us.i = phi i64 [ %indvars.iv.next.i.us.i.7, %.preheader139.preheader.i.split.us.i ], [ %indvars.iv.i.us.i.unr, %.preheader139.preheader.i.split.us.i.prol.loopexit ] ; 9 uses
  %.1144.i.us.i = phi ptr [ %i.nk, %.preheader139.preheader.i.split.us.i ], [ %.1144.i.us.i.unr, %.preheader139.preheader.i.split.us.i.prol.loopexit ] ; 9 uses
  %i.ly = load i8, ptr %.1144.i.us.i, align 1, !tbaa !176
  %i.lz = and i8 %i.ly, 15
  %i.ma = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  store i8 %i.lz, ptr %i.ma, align 1, !tbaa !217
  %i.mb = getelementptr inbounds nuw i8, ptr %.1144.i.us.i, i64 1
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !176
  %i.md = and i8 %i.mc, 15
  %i.me = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 1
  store i8 %i.md, ptr %i.mf, align 1, !tbaa !217
  %i.mg = getelementptr inbounds nuw i8, ptr %.1144.i.us.i, i64 2
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !176
  %i.mi = and i8 %i.mh, 15
  %i.mj = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 2
  store i8 %i.mi, ptr %i.mk, align 1, !tbaa !217
  %i.ml = getelementptr inbounds nuw i8, ptr %.1144.i.us.i, i64 3
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !176
  %i.mn = and i8 %i.mm, 15
  %i.mo = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 3
  store i8 %i.mn, ptr %i.mp, align 1, !tbaa !217
  %i.mq = getelementptr inbounds nuw i8, ptr %.1144.i.us.i, i64 4
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !176
  %i.ms = and i8 %i.mr, 15
  %i.mt = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 4
  store i8 %i.ms, ptr %i.mu, align 1, !tbaa !217
  %i.mv = getelementptr inbounds nuw i8, ptr %.1144.i.us.i, i64 5
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !176
  %i.mx = and i8 %i.mw, 15
  %i.my = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 5
  store i8 %i.mx, ptr %i.mz, align 1, !tbaa !217
  %i.na = getelementptr inbounds nuw i8, ptr %.1144.i.us.i, i64 6
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !176
  %i.nc = and i8 %i.nb, 15
  %i.nd = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 6
  store i8 %i.nc, ptr %i.ne, align 1, !tbaa !217
  %i.nf = getelementptr inbounds nuw i8, ptr %.1144.i.us.i, i64 7
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !176
  %i.nh = and i8 %i.ng, 15
  %i.ni = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 7
  store i8 %i.nh, ptr %i.nj, align 1, !tbaa !217
  %indvars.iv.next.i.us.i.7 = add nuw nsw i64 %indvars.iv.i.us.i, 8 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.1144.i.us.i, i64 8 ; 2 uses
  %exitcond188.not.i.us.i.7 = icmp eq i64 %indvars.iv.next.i.us.i.7, %wide.trip.count.i.i
  br i1 %exitcond188.not.i.us.i.7, label %.preheader140.i.i, label %.preheader139.preheader.i.split.us.i, !llvm.loop !529

.preheader140.i.i:                                ; preds = %.loopexit.i.i.prol.loopexit, %.loopexit.i.i, %.preheader139.preheader.i.split.us.i.prol.loopexit, %.preheader139.preheader.i.split.us.i, %middle.block54, %vec.epilog.middle.block69, %middle.block, %vec.epilog.middle.block, %..preheader140_crit_edge.i.i
  %i.nl = phi i8 [ %.pre.i60.i, %..preheader140_crit_edge.i.i ], [ %i.jn, %middle.block ], [ %i.jn, %middle.block54 ], [ %i.jn, %vec.epilog.middle.block ], [ %i.jn, %.preheader139.preheader.i.split.us.i.prol.loopexit ], [ %i.jn, %vec.epilog.middle.block69 ], [ %i.jn, %.preheader139.preheader.i.split.us.i ], [ %i.jn, %.loopexit.i.i ], [ %i.jn, %.loopexit.i.i.prol.loopexit ]
  %.1.lcssa.i.i = phi ptr [ %i.jk, %..preheader140_crit_edge.i.i ], [ %i.lb, %middle.block ], [ %i.kb, %middle.block54 ], [ %i.lo, %vec.epilog.middle.block ], [ %i.nk, %.preheader139.preheader.i.split.us.i ], [ %i.kh, %vec.epilog.middle.block69 ], [ %.lcssa284.unr, %.preheader139.preheader.i.split.us.i.prol.loopexit ], [ %.lcssa283.unr, %.loopexit.i.i.prol.loopexit ], [ %i.pr, %.loopexit.i.i ] ; 3 uses
  %i.nm = trunc nuw i8 %i.nl to i1                ; 3 uses
  %i.nn = select i1 %i.nm, i64 %i.hr, i64 0
  %invariant.gep.i.i = getelementptr inbounds nuw [240 x i8], ptr %i.hk, i64 %i.nn
  %invariant.gep147.i.i = getelementptr [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_113LeadPawnsSizeE, i64 %indvars.iv194.i.i
  br label %bb.ap

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.prol.loopexit, %.loopexit.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.7, %.loopexit.i.i ], [ %indvars.iv.i.i.unr, %.loopexit.i.i.prol.loopexit ] ; 10 uses
  %.1144.i.i = phi ptr [ %i.pr, %.loopexit.i.i ], [ %.1144.i.i.unr, %.loopexit.i.i.prol.loopexit ] ; 10 uses
  %i.no = load i8, ptr %.1144.i.i, align 1, !tbaa !176
  %i.np = and i8 %i.no, 15
  %i.nq = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.i
  store i8 %i.np, ptr %i.nq, align 1, !tbaa !217
  %i.nr = load i8, ptr %.1144.i.i, align 1, !tbaa !176
  %i.ns = lshr i8 %i.nr, 4
  %i.nt = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv.i.i
  store i8 %i.ns, ptr %i.nt, align 1, !tbaa !217
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.1144.i.i, i64 1 ; 2 uses
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !176
  %i.nw = and i8 %i.nv, 15
  %i.nx = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.next.i.i
  store i8 %i.nw, ptr %i.nx, align 1, !tbaa !217
  %i.ny = load i8, ptr %i.nu, align 1, !tbaa !176
  %i.nz = lshr i8 %i.ny, 4
  %i.oa = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv.next.i.i
  store i8 %i.nz, ptr %i.oa, align 1, !tbaa !217
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.1144.i.i, i64 2 ; 2 uses
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !176
  %i.od = and i8 %i.oc, 15
  %i.oe = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.next.i.i.1
  store i8 %i.od, ptr %i.oe, align 1, !tbaa !217
  %i.of = load i8, ptr %i.ob, align 1, !tbaa !176
  %i.og = lshr i8 %i.of, 4
  %i.oh = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv.next.i.i.1
  store i8 %i.og, ptr %i.oh, align 1, !tbaa !217
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.1144.i.i, i64 3 ; 2 uses
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !176
  %i.ok = and i8 %i.oj, 15
  %i.ol = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.next.i.i.2
  store i8 %i.ok, ptr %i.ol, align 1, !tbaa !217
  %i.om = load i8, ptr %i.oi, align 1, !tbaa !176
  %i.on = lshr i8 %i.om, 4
  %i.oo = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv.next.i.i.2
end_hunk_1
