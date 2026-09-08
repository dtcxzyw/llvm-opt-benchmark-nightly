Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/tbprobe?download=true
inline.NumInlined: 1887
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN9Stockfish10Tablebases9probe_dtzERNS_8PositionEPNS0_10ProbeStateE:bb.a
  call void @llvm.assume(i1 %i.gn)
  %i.go = add nuw nsw i64 %i.gm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gh, ptr noundef nonnull align 8 dereferenceable(1) %i.gj, i64 %i.go, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i
  store ptr %i.gi, ptr %7, align 8, !tbaa !130, !alias.scope !387
  %i.gp = load i64, ptr %i.gj, align 8, !tbaa !125
  store i64 %i.gp, ptr %i.gh, align 8, !tbaa !125, !alias.scope !387
  %.phi.trans.insert.i44.i.i = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %.pre.i45.i.i = load i64, ptr %.phi.trans.insert.i44.i.i, align 8, !tbaa !85
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i.i, %bb.aj
  %i.gq = phi i64 [ %i.gm, %bb.aj ], [ %.pre.i45.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i.i ]
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i64 %i.gq, ptr %i.gs, align 8, !tbaa !85, !alias.scope !387
  store ptr %i.gj, ptr %i.gg, align 8, !tbaa !130
  store i64 0, ptr %i.gr, align 8, !tbaa !85
  store i8 0, ptr %i.gj, align 8, !tbaa !125
  %i.gt = load ptr, ptr %2, align 8, !tbaa !130   ; 6 uses
  %i.gu = icmp eq ptr %i.gt, %i.by
  %i.gv = load ptr, ptr %7, align 8, !tbaa !130   ; 5 uses
  %i.gw = icmp eq ptr %i.gv, %i.gh                ; 2 uses
  br i1 %i.gu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i
  br i1 %i.gw, label %bb.ak, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i
  br i1 %i.gw, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.gx = load i64, ptr %i.gs, align 8, !tbaa !85 ; 3 uses
  %i.gy = icmp ult i64 %i.gx, 16
  call void @llvm.assume(i1 %i.gy)
  switch i64 %i.gx, label %bb.am [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak
  %i.gz = load i8, ptr %i.gv, align 1, !tbaa !125
  store i8 %i.gz, ptr %i.gt, align 1, !tbaa !125
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.am:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gt, ptr align 1 %i.gv, i64 %i.gx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.am, %bb.al, %bb.ak
  %i.ha = load i64, ptr %i.gs, align 8, !tbaa !85 ; 2 uses
  store i64 %i.ha, ptr %i.bz, align 8, !tbaa !85
  %i.hb = load ptr, ptr %2, align 8, !tbaa !130
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.ha
  store i8 0, ptr %i.hc, align 1, !tbaa !125
  %.pre.i46.i.i = load ptr, ptr %7, align 8, !tbaa !130
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  store ptr %i.gv, ptr %2, align 8, !tbaa !130
  %i.hd = load <2 x i64>, ptr %i.gs, align 8, !tbaa !125
  store <2 x i64> %i.hd, ptr %i.bz, align 8, !tbaa !125
  br label %bb.ao

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.he = load i64, ptr %i.by, align 8, !tbaa !125
  store ptr %i.gv, ptr %2, align 8, !tbaa !130
  %i.hf = load <2 x i64>, ptr %i.gs, align 8, !tbaa !125
  store <2 x i64> %i.hf, ptr %i.bz, align 8, !tbaa !125
  %.not.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.gt, ptr %7, align 8, !tbaa !130
  store i64 %i.he, ptr %i.gh, align 8, !tbaa !125
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.gh, ptr %7, align 8, !tbaa !130
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i: ; preds = %bb.ao, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
  %i.hg = phi ptr [ %i.gt, %bb.an ], [ %i.gh, %bb.ao ], [ %.pre.i46.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ]
  store i64 0, ptr %i.gs, align 8, !tbaa !85
  store i8 0, ptr %i.hg, align 1, !tbaa !125
  %i.hh = load ptr, ptr %7, align 8, !tbaa !130   ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.gh
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i
  %i.hj = load i64, ptr %i.gh, align 8, !tbaa !125
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i.i
  %i.hl = load ptr, ptr %8, align 8, !tbaa !130   ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.hn = icmp eq ptr %i.hl, %i.hm
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.i
  %i.ho = load i64, ptr %i.hm, align 8, !tbaa !125
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.hp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i.i
  br i1 %.not25.i.i, label %.critedge30.i.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i.i
  %i.hq = load ptr, ptr %10, align 8, !tbaa !130  ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i.i: ; preds = %.critedge.i.i
  %i.ht = load i64, ptr %i.hr, align 8, !tbaa !125
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.hu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i.i: ; preds = %.critedge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.critedge29.i.i

.critedge30.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i.i
  %i.hv = load ptr, ptr %9, align 8, !tbaa !130   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i: ; preds = %.critedge30.i.i
  %i.hy = load i64, ptr %i.hw, align 8, !tbaa !125
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
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN9Stockfish12_GLOBAL__N_16TBFileE, i64 24), ptr %11, align 8, !tbaa !102
  %i.id = getelementptr inbounds nuw i8, ptr %11, i64 288 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN9Stockfish12_GLOBAL__N_16TBFileE, i64 64), ptr %i.id, align 8, !tbaa !102
  %i.ie = getelementptr inbounds nuw i8, ptr %11, i64 256
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !130 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %11, i64 272 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.critedge29.i.i
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !125
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ij) #30, !inline_history !6
  br label %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i.i

_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i.i:  ; preds = %.critedge29.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_St14basic_ifstreamIcSt11char_traitsIcEE, i64 24), ptr %11, align 8, !tbaa !102
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_St14basic_ifstreamIcSt11char_traitsIcEE, i64 64), ptr %i.id, align 8, !tbaa !102
  %i.ik = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt13basic_filebufIcSt11char_traitsIcEE, i64 16), ptr %i.ik, align 8, !tbaa !102
  %i.il = call noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.ik) #26, !inline_history !6 ; 0 uses
  %i.im = getelementptr inbounds nuw i8, ptr %11, i64 120
  call void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.im) #26, !inline_history !6
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ik, align 8, !tbaa !102
  %i.in = getelementptr inbounds nuw i8, ptr %11, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.in) #26, !inline_history !6
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_Si, i64 24), ptr %11, align 8, !tbaa !102
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_Si, i64 64), ptr %i.id, align 8, !tbaa !102
  %i.io = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.io, align 8, !tbaa !156
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.id) #26, !inline_history !157
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %.not26.i.i = icmp eq ptr %i.ic, null
  br i1 %.not26.i.i, label %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ic, i64 1
  %i.iq = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 52 ; 4 uses
  %i.ir = load i8, ptr %i.iq, align 4, !tbaa !147, !range !145, !noundef !146 ; 2 uses
  %i.is = trunc nuw i8 %i.ir to i1                ; 9 uses
  %i.it = select i1 %i.is, i8 3, i8 0             ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 55 ; 2 uses
  %i.iv = load i8, ptr %i.iu, align 1
  %i.iw = icmp ne i8 %i.iv, 0
  %i.ix = select i1 %i.is, i1 %i.iw, i1 false
  %i.iy = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 56 ; 13 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 48 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 53 ; 2 uses
  %i.jb = add nuw nsw i8 %i.it, 1
  %wide.trip.count187.i.i.i = zext nneg i8 %i.jb to i64
  %i.jc = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 256
  %i.jd = add i64 %.0.val.i.i281, 184
  br label %.preheader137.i.i.i

.preheader137.i.i.i:                              ; preds = %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i, %bb.ap
  %i.je = phi i8 [ %i.ir, %bb.ap ], [ %.pre.i59.i.i, %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i ]
  %indvars.iv184.i.i.i = phi i64 [ 0, %bb.ap ], [ %indvars.iv.next185.i.i.i, %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i ] ; 4 uses
  %.078159.i.i.i = phi ptr [ %i.ip, %bb.ap ], [ %.1.lcssa210219.i.i.i, %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i ] ; 4 uses
  %.078159.i.i.i282 = ptrtoaddr ptr %.078159.i.i.i to i64
  %i.jf = trunc nuw i8 %i.je to i1
  %i.jg = select i1 %i.jf, i64 %indvars.iv184.i.i.i, i64 0
  %i.jh = getelementptr inbounds nuw [240 x i8], ptr %i.iy, i64 %i.jg ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.jh, i8 0, i64 80, i1 false)
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 80 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !182 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 96
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !183
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jj, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ji, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i, label %bb.ar

bb.aq:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i
  %i.jm = ptrtoint ptr %.1.lcssa210219.i.i.i to i64
  %i.jn = and i64 %i.jm, 1
  %i.jo = getelementptr inbounds nuw i8, ptr %.1.lcssa210219.i.i.i, i64 %i.jn
  br label %.preheader133.i.i.i

bb.ar:                                            ; preds = %.preheader137.i.i.i
  %i.jp = ptrtoint ptr %i.jl to i64
  %i.jq = ptrtoint ptr %i.jj to i64
  %i.jr = sub i64 %i.jp, %i.jq
  call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef %i.jr) #30
  br label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i

_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i:         ; preds = %bb.ar, %.preheader137.i.i.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.jh, i64 104 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !185 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jh, i64 120
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !186
  %.not.i.i.i.i.i5.i.i.i.i = icmp eq ptr %i.jt, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.js, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i5.i.i.i.i, label %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i
  %i.jw = ptrtoint ptr %i.jv to i64
  %i.jx = ptrtoint ptr %i.jt to i64
  %i.jy = sub i64 %i.jw, %i.jx
  call void @_ZdlPvm(ptr noundef nonnull %i.jt, i64 noundef %i.jy) #30
  br label %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i

_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i: ; preds = %bb.as, %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jh, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.jz, i8 0, i64 112, i1 false)
  %i.ka = load i8, ptr %.078159.i.i.i, align 1, !tbaa !125
  %i.kb = and i8 %i.ka, 15                        ; 3 uses
  %i.kc = zext nneg i8 %i.kb to i32               ; 2 uses
  br i1 %i.ix, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i
  %i.kd = getelementptr inbounds nuw i8, ptr %.078159.i.i.i, i64 1
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !125
  %i.kf = and i8 %i.ke, 15
  %i.kg = zext nneg i8 %i.kf to i32
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i
  %i.kh = phi i32 [ %i.kg, %bb.at ], [ 15, %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i ] ; 6 uses
  %i.ki = phi i64 [ 2, %bb.at ], [ 1, %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i ] ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.078159.i.i.i, i64 %i.ki ; 8 uses
  %i.kk = load i32, ptr %i.iz, align 8, !tbaa !143 ; 5 uses
  %i.kl = icmp sgt i32 %i.kk, 0
  %.pre.i59.i.i = load i8, ptr %i.iq, align 4, !tbaa !147, !range !145 ; 2 uses
  %i.km = trunc nuw i8 %.pre.i59.i.i to i1        ; 4 uses
  %i.kn = select i1 %i.km, i64 %indvars.iv184.i.i.i, i64 0 ; 4 uses
  br i1 %i.kl, label %iter.check, label %.preheader136.thread.i.i.i

.preheader136.thread.i.i.i:                       ; preds = %bb.au
  %i.ko = getelementptr inbounds nuw [240 x i8], ptr %i.iy, i64 %i.kn ; 4 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 200 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 136 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 144 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 204 ; 3 uses
  %i.kt = icmp eq i8 %i.kb, 0                     ; 2 uses
  %i.ku = icmp eq i32 %i.kh, 0                    ; 2 uses
  %i.kv = load i8, ptr %i.ja, align 1, !range !145
  %i.kw = trunc nuw i8 %i.kv to i1
  store i32 1, ptr %i.kp, align 4, !tbaa !81
  store i32 0, ptr %i.ks, align 4, !tbaa !81
  br i1 %i.km, label %bb.az, label %.thread68.split.preheader.i.i.i.i

iter.check:                                       ; preds = %bb.au
  %i.kx = getelementptr inbounds nuw [240 x i8], ptr %.0.val.i.i, i64 %i.kn
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 184 ; 11 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.kk to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %i.kk, 16
  br i1 %min.iters.check, label %.preheader135.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.kz = mul i64 %i.kn, 240
  %i.la = add i64 %i.jd, %i.kz
  %i.lb = add i64 %i.ki, %.078159.i.i.i282
  %i.lc = sub i64 %i.lb, %i.la
  %diff.check = icmp ugt i64 %i.lc, -256
  br i1 %diff.check, label %.preheader135.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check283 = icmp ult i32 %i.kk, 256
  br i1 %min.iters.check283, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ld = and i64 %wide.trip.count.i.i.i, 240
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483392 ; 5 uses
  %i.le = getelementptr i8, ptr %i.kj, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.kj, i64 %index ; 4 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ky, i64 %index ; 4 uses
  %i.lg = getelementptr i8, ptr %next.gep, i64 64
  %i.lh = getelementptr i8, ptr %next.gep, i64 128
  %i.li = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <64 x i8>, ptr %next.gep, align 1, !tbaa !125
  %wide.load284 = load <64 x i8>, ptr %i.lg, align 1, !tbaa !125
  %wide.load285 = load <64 x i8>, ptr %i.lh, align 1, !tbaa !125
  %wide.load286 = load <64 x i8>, ptr %i.li, align 1, !tbaa !125
  %i.lj = and <64 x i8> %wide.load, splat (i8 15)
  %i.lk = and <64 x i8> %wide.load284, splat (i8 15)
  %i.ll = and <64 x i8> %wide.load285, splat (i8 15)
  %i.lm = and <64 x i8> %wide.load286, splat (i8 15)
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lf, i64 64
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lf, i64 128
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lf, i64 192
  store <64 x i8> %i.lj, ptr %i.lf, align 1, !tbaa !166
  store <64 x i8> %i.lk, ptr %i.ln, align 1, !tbaa !166
  store <64 x i8> %i.ll, ptr %i.lo, align 1, !tbaa !166
  store <64 x i8> %i.lm, ptr %i.lp, align 1, !tbaa !166
  %index.next = add nuw i64 %index, 256           ; 2 uses
  %i.lq = icmp eq i64 %index.next, %n.vec
  br i1 %i.lq, label %middle.block, label %vector.body, !llvm.loop !347

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %.preheader136.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ld, 0
  br i1 %min.epilog.iters.check, label %.preheader135.i.i.i.preheader, label %vec.epilog.ph, !prof !187

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec287 = and i64 %wide.trip.count.i.i.i, 2147483632 ; 4 uses
  %i.lr = getelementptr i8, ptr %i.kj, i64 %n.vec287 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index288 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next291, %vec.epilog.vector.body ] ; 3 uses
  %next.gep289 = getelementptr i8, ptr %i.kj, i64 %index288
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ky, i64 %index288
  %wide.load290 = load <16 x i8>, ptr %next.gep289, align 1, !tbaa !125
  %i.lt = and <16 x i8> %wide.load290, splat (i8 15)
  store <16 x i8> %i.lt, ptr %i.ls, align 1, !tbaa !166
  %index.next291 = add nuw i64 %index288, 16      ; 2 uses
  %i.lu = icmp eq i64 %index.next291, %n.vec287
  br i1 %i.lu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !348

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n292 = icmp eq i64 %n.vec287, %wide.trip.count.i.i.i
  br i1 %cmp.n292, label %.preheader136.i.i.i, label %.preheader135.i.i.i.preheader

.preheader135.i.i.i.preheader:                    ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec287, %vec.epilog.middle.block ] ; 3 uses
  %.1140.i.i.i.ph = phi ptr [ %i.kj, %iter.check ], [ %i.kj, %vector.memcheck ], [ %i.le, %vec.epilog.iter.check ], [ %i.lr, %vec.epilog.middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 7   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader135.i.i.i.prol.loopexit, label %.preheader135.i.i.i.prol

.preheader135.i.i.i.prol:                         ; preds = %.preheader135.i.i.i.preheader, %.preheader135.i.i.i.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %.preheader135.i.i.i.prol ], [ %indvars.iv.i.i.i.ph, %.preheader135.i.i.i.preheader ] ; 2 uses
  %.1140.i.i.i.prol = phi ptr [ %i.ly, %.preheader135.i.i.i.prol ], [ %.1140.i.i.i.ph, %.preheader135.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader135.i.i.i.prol ], [ 0, %.preheader135.i.i.i.preheader ]
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ky, i64 %indvars.iv.i.i.i.prol
  %i.lw = load i8, ptr %.1140.i.i.i.prol, align 1, !tbaa !125
  %i.lx = and i8 %i.lw, 15
  store i8 %i.lx, ptr %i.lv, align 1, !tbaa !166
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.1140.i.i.i.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader135.i.i.i.prol.loopexit, label %.preheader135.i.i.i.prol, !llvm.loop !349

.preheader135.i.i.i.prol.loopexit:                ; preds = %.preheader135.i.i.i.prol, %.preheader135.i.i.i.preheader
  %.lcssa503.unr = phi ptr [ poison, %.preheader135.i.i.i.preheader ], [ %i.ly, %.preheader135.i.i.i.prol ]
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.preheader135.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.preheader135.i.i.i.prol ]
  %.1140.i.i.i.unr = phi ptr [ %.1140.i.i.i.ph, %.preheader135.i.i.i.preheader ], [ %i.ly, %.preheader135.i.i.i.prol ]
  %i.lz = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ma = icmp ugt i64 %i.lz, -8
  br i1 %i.ma, label %.preheader136.i.i.i, label %.preheader135.i.i.i

end_hunk_0
begin_hunk_1_@_ZN9Stockfish10Tablebases9probe_dtzERNS_8PositionEPNS0_10ProbeStateE:bb.a
  %i.abg = lshr exact i64 %i.abf, 1
  %i.abh = trunc i64 %i.abg to i16
  %i.abi = add i16 %i.abh, 1
  store i16 %i.abi, ptr %i.abd, align 8, !tbaa !164
  %.1.val.us.us.i.i.i.i.3 = load i16, ptr %i.abc, align 1
  %.sroa.0.0.insert.insert.i.us.us.i.i.i.i.3 = call i16 @llvm.bswap.i16(i16 %.1.val.us.us.i.i.i.i.3)
  %i.abj = zext i16 %.sroa.0.0.insert.insert.i.us.us.i.i.i.i.3 to i64
  %i.abk = shl nuw nsw i64 %i.abj, 1
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abc, i64 %i.abk
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 2 ; 3 uses
  %i.abn = ptrtoint ptr %i.abm to i64
  %i.abo = sub i64 %i.abn, %i.rq
  %i.abp = lshr exact i64 %i.abo, 1
  %i.abq = trunc i64 %i.abp to i16
  %i.abr = add i16 %i.abq, 1
  %i.abs = getelementptr inbounds nuw i8, ptr %i.aav, i64 234
  store i16 %i.abr, ptr %i.abs, align 2, !tbaa !164
  %.1.val.us.us.1.i.i.i.i.3 = load i16, ptr %i.abm, align 1
  %.sroa.0.0.insert.insert.i.us.us.1.i.i.i.i.3 = call i16 @llvm.bswap.i16(i16 %.1.val.us.us.1.i.i.i.i.3)
  %i.abt = zext i16 %.sroa.0.0.insert.insert.i.us.us.1.i.i.i.i.3 to i64
  %i.abu = shl nuw nsw i64 %i.abt, 1
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abm, i64 %i.abu
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 2 ; 3 uses
  %i.abx = ptrtoint ptr %i.abw to i64
  %i.aby = sub i64 %i.abx, %i.rq
  %i.abz = lshr exact i64 %i.aby, 1
  %i.aca = trunc i64 %i.abz to i16
  %i.acb = add i16 %i.aca, 1
  %i.acc = getelementptr inbounds nuw i8, ptr %i.aav, i64 236
  store i16 %i.acb, ptr %i.acc, align 4, !tbaa !164
  %.1.val.us.us.2.i.i.i.i.3 = load i16, ptr %i.abw, align 1
  %.sroa.0.0.insert.insert.i.us.us.2.i.i.i.i.3 = call i16 @llvm.bswap.i16(i16 %.1.val.us.us.2.i.i.i.i.3)
  %i.acd = zext i16 %.sroa.0.0.insert.insert.i.us.us.2.i.i.i.i.3 to i64
  %i.ace = shl nuw nsw i64 %i.acd, 1
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abw, i64 %i.ace
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 2 ; 3 uses
  %i.ach = ptrtoint ptr %i.acg to i64
  %i.aci = sub i64 %i.ach, %i.rq
  %i.acj = lshr exact i64 %i.aci, 1
  %i.ack = trunc i64 %i.acj to i16
  %i.acl = add i16 %i.ack, 1
  %i.acm = getelementptr inbounds nuw i8, ptr %i.aav, i64 238
  store i16 %i.acl, ptr %i.acm, align 2, !tbaa !164
  %.1.val.us.us.3.i.i.i.i.3 = load i16, ptr %i.acg, align 1
  %.sroa.0.0.insert.insert.i.us.us.3.i.i.i.i.3 = call i16 @llvm.bswap.i16(i16 %.1.val.us.us.3.i.i.i.i.3)
  %i.acn = zext i16 %.sroa.0.0.insert.insert.i.us.us.3.i.i.i.i.3 to i64
  %i.aco = shl nuw nsw i64 %i.acn, 1
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acg, i64 %i.aco
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 2
  br label %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.i.i.i

.preheader.us.i.i.i.i.3:                          ; preds = %bb.bn
  %i.acr = getelementptr inbounds nuw i8, ptr %i.aav, i64 232
  %i.acs = ptrtoint ptr %.3.us.i.i.i.i.2 to i64
  %i.act = sub i64 %i.acs, %i.rq
  %i.acu = trunc i64 %i.act to i16
  %i.acv = add i16 %i.acu, 1
  store i16 %i.acv, ptr %i.acr, align 8, !tbaa !164
  %i.acw = load i8, ptr %.3.us.i.i.i.i.2, align 1, !tbaa !125
  %i.acx = zext i8 %i.acw to i64
  %i.acy = getelementptr inbounds nuw i8, ptr %.3.us.i.i.i.i.2, i64 %i.acx
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 1 ; 3 uses
  %i.ada = ptrtoint ptr %i.acz to i64
  %i.adb = sub i64 %i.ada, %i.rq
  %i.adc = trunc i64 %i.adb to i16
  %i.add = add i16 %i.adc, 1
  %i.ade = getelementptr inbounds nuw i8, ptr %i.aav, i64 234
  store i16 %i.add, ptr %i.ade, align 2, !tbaa !164
  %i.adf = load i8, ptr %i.acz, align 1, !tbaa !125
  %i.adg = zext i8 %i.adf to i64
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acz, i64 %i.adg
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 1 ; 3 uses
  %i.adj = ptrtoint ptr %i.adi to i64
  %i.adk = sub i64 %i.adj, %i.rq
  %i.adl = trunc i64 %i.adk to i16
  %i.adm = add i16 %i.adl, 1
  %i.adn = getelementptr inbounds nuw i8, ptr %i.aav, i64 236
  store i16 %i.adm, ptr %i.adn, align 4, !tbaa !164
  %i.ado = load i8, ptr %i.adi, align 1, !tbaa !125
  %i.adp = zext i8 %i.ado to i64
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adi, i64 %i.adp
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 1 ; 3 uses
  %i.ads = ptrtoint ptr %i.adr to i64
  %i.adt = sub i64 %i.ads, %i.rq
  %i.adu = trunc i64 %i.adt to i16
  %i.adv = add i16 %i.adu, 1
  %i.adw = getelementptr inbounds nuw i8, ptr %i.aav, i64 238
  store i16 %i.adv, ptr %i.adw, align 2, !tbaa !164
  %i.adx = load i8, ptr %i.adr, align 1, !tbaa !125
  %i.ady = zext i8 %i.adx to i64
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.ady
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 1
  br label %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.i.i.i

.split41.i.i.i.i:                                 ; preds = %bb.bj
  br i1 %i.rp, label %.split41.split.us.i.i.i.i, label %.split41.split.i.i.i.i

.split41.split.us.i.i.i.i:                        ; preds = %.split41.i.i.i.i
  %i.aeb = load i8, ptr %i.iy, align 8, !tbaa !198
  %i.aec = zext i8 %i.aeb to i32                  ; 2 uses
  %i.aed = and i32 %i.aec, 2
  %.not28.us55.i.i.i.i = icmp eq i32 %i.aed, 0
  br i1 %.not28.us55.i.i.i.i, label %.loopexit34.split.us.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %.split41.split.us.i.i.i.i
  %i.aee = and i32 %i.aec, 16
  %.not29.us47.i.i.i.i = icmp eq i32 %i.aee, 0
  br i1 %.not29.us47.i.i.i.i, label %.preheader.us48.i.i.i.i, label %.split.us.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %bb.bo
  %i.aef = ptrtoint ptr %i.rl to i64
  %i.aeg = and i64 %i.aef, 1
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.aeg ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 288
  store i16 1, ptr %i.aei, align 8, !tbaa !164
  %.1.val.us.i.i.i.i = load i16, ptr %i.aeh, align 1 ; 2 uses
  %i.aej = zext i16 %.1.val.us.i.i.i.i to i64
  %i.aek = shl nuw nsw i64 %i.aej, 1              ; 2 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aeh, i64 %i.aek
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 2 ; 2 uses
  %i.aen = add i16 %.1.val.us.i.i.i.i, 2
  %i.aeo = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 290
  store i16 %i.aen, ptr %i.aeo, align 2, !tbaa !164
  %.1.val.us.1.i.i.i.i = load i16, ptr %i.aem, align 1
  %i.aep = zext i16 %.1.val.us.1.i.i.i.i to i64
  %i.aeq = shl nuw nsw i64 %i.aep, 1              ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aem, i64 %i.aeq
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 2 ; 2 uses
  %i.aet = add nuw nsw i64 %i.aek, %i.aeq
  %i.aeu = add nuw nsw i64 %i.aet, 4
  %i.aev = lshr exact i64 %i.aeu, 1
  %i.aew = trunc i64 %i.aev to i16
  %i.aex = add i16 %i.aew, 1
  %i.aey = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 292
  store i16 %i.aex, ptr %i.aey, align 4, !tbaa !164
  %.1.val.us.2.i.i.i.i = load i16, ptr %i.aes, align 1
  %i.aez = zext i16 %.1.val.us.2.i.i.i.i to i64
  %i.afa = shl nuw nsw i64 %i.aez, 1
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aes, i64 %i.afa
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 2 ; 3 uses
  %i.afd = ptrtoint ptr %i.afc to i64
  %i.afe = sub i64 %i.afd, %i.rq
  %i.aff = lshr exact i64 %i.afe, 1
  %i.afg = trunc i64 %i.aff to i16
  %i.afh = add i16 %i.afg, 1
  %i.afi = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 294
  store i16 %i.afh, ptr %i.afi, align 2, !tbaa !164
  %.1.val.us.3.i.i.i.i = load i16, ptr %i.afc, align 1
  %i.afj = zext i16 %.1.val.us.3.i.i.i.i to i64
  %i.afk = shl nuw nsw i64 %i.afj, 1
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afc, i64 %i.afk
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 2
  br label %.loopexit34.split.us.i.i.i.i

.preheader.us48.i.i.i.i:                          ; preds = %bb.bo
  %i.afn = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 288
  store i16 1, ptr %i.afn, align 8, !tbaa !164
  %i.afo = load i8, ptr %i.rl, align 1, !tbaa !125 ; 2 uses
  %i.afp = zext i8 %i.afo to i64                  ; 3 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.afp
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 1 ; 2 uses
  %i.afs = zext i8 %i.afo to i16
  %i.aft = add nuw nsw i16 %i.afs, 2
  %i.afu = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 290
  store i16 %i.aft, ptr %i.afu, align 2, !tbaa !164
  %i.afv = load i8, ptr %i.afr, align 1, !tbaa !125
  %i.afw = zext i8 %i.afv to i64                  ; 3 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afr, i64 %i.afw
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 1 ; 2 uses
  %i.afz = add nuw nsw i64 %i.afp, %i.afw
  %i.aga = trunc nuw nsw i64 %i.afz to i16
  %i.agb = add nuw nsw i16 %i.aga, 3
  %i.agc = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 292
  store i16 %i.agb, ptr %i.agc, align 4, !tbaa !164
  %i.agd = load i8, ptr %i.afy, align 1, !tbaa !125
  %i.age = zext i8 %i.agd to i64                  ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.afy, i64 %i.age
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 1 ; 2 uses
  %i.agh = add nuw nsw i64 %i.afp, %i.afw
  %i.agi = add nuw nsw i64 %i.agh, %i.age
  %i.agj = trunc nuw nsw i64 %i.agi to i16
  %i.agk = add nuw nsw i16 %i.agj, 4
  %i.agl = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 294
  store i16 %i.agk, ptr %i.agl, align 2, !tbaa !164
  %i.agm = load i8, ptr %i.agg, align 1, !tbaa !125
  %i.agn = zext i8 %i.agm to i64
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agg, i64 %i.agn
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 1
  br label %.loopexit34.split.us.i.i.i.i

.loopexit34.split.us.i.i.i.i:                     ; preds = %.preheader.us48.i.i.i.i, %.split.us.i.i.i.i, %.split41.split.us.i.i.i.i
  %.3.us53.i.i.i.i = phi ptr [ %i.rl, %.split41.split.us.i.i.i.i ], [ %i.agp, %.preheader.us48.i.i.i.i ], [ %i.afm, %.split.us.i.i.i.i ] ; 7 uses
  br i1 %i.is, label %.split41.split.us.i.i.i.i.1, label %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.i.i.i

.split41.split.us.i.i.i.i.1:                      ; preds = %.loopexit34.split.us.i.i.i.i
  %i.agq = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 296
  %i.agr = load i8, ptr %i.agq, align 8, !tbaa !198
  %i.ags = zext i8 %i.agr to i32                  ; 2 uses
  %i.agt = and i32 %i.ags, 2
  %.not28.us55.i.i.i.i.1 = icmp eq i32 %i.agt, 0
  br i1 %.not28.us55.i.i.i.i.1, label %.split41.split.us.i.i.i.i.2, label %bb.bp

bb.bp:                                            ; preds = %.split41.split.us.i.i.i.i.1
  %i.agu = and i32 %i.ags, 16
  %.not29.us47.i.i.i.i.1 = icmp eq i32 %i.agu, 0
  br i1 %.not29.us47.i.i.i.i.1, label %.preheader.us48.i.i.i.i.1, label %.split.us.i.i.i.i.1

.split.us.i.i.i.i.1:                              ; preds = %bb.bp
  %i.agv = ptrtoint ptr %.3.us53.i.i.i.i to i64
  %i.agw = and i64 %i.agv, 1
  %i.agx = getelementptr inbounds nuw i8, ptr %.3.us53.i.i.i.i, i64 %i.agw ; 3 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 528
  %i.agz = ptrtoint ptr %i.agx to i64
  %i.aha = sub i64 %i.agz, %i.rq
  %i.ahb = lshr exact i64 %i.aha, 1
  %i.ahc = trunc i64 %i.ahb to i16
  %i.ahd = add i16 %i.ahc, 1
  store i16 %i.ahd, ptr %i.agy, align 8, !tbaa !164
  %.1.val.us.i.i.i.i.1 = load i16, ptr %i.agx, align 1
  %i.ahe = zext i16 %.1.val.us.i.i.i.i.1 to i64
  %i.ahf = shl nuw nsw i64 %i.ahe, 1
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.agx, i64 %i.ahf
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 2 ; 3 uses
  %i.ahi = ptrtoint ptr %i.ahh to i64
  %i.ahj = sub i64 %i.ahi, %i.rq
  %i.ahk = lshr exact i64 %i.ahj, 1
  %i.ahl = trunc i64 %i.ahk to i16
  %i.ahm = add i16 %i.ahl, 1
  %i.ahn = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 530
  store i16 %i.ahm, ptr %i.ahn, align 2, !tbaa !164
  %.1.val.us.1.i.i.i.i.1 = load i16, ptr %i.ahh, align 1
  %i.aho = zext i16 %.1.val.us.1.i.i.i.i.1 to i64
  %i.ahp = shl nuw nsw i64 %i.aho, 1
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahh, i64 %i.ahp
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 2 ; 3 uses
  %i.ahs = ptrtoint ptr %i.ahr to i64
  %i.aht = sub i64 %i.ahs, %i.rq
  %i.ahu = lshr exact i64 %i.aht, 1
  %i.ahv = trunc i64 %i.ahu to i16
  %i.ahw = add i16 %i.ahv, 1
  %i.ahx = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 532
  store i16 %i.ahw, ptr %i.ahx, align 4, !tbaa !164
  %.1.val.us.2.i.i.i.i.1 = load i16, ptr %i.ahr, align 1
  %i.ahy = zext i16 %.1.val.us.2.i.i.i.i.1 to i64
  %i.ahz = shl nuw nsw i64 %i.ahy, 1
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahr, i64 %i.ahz
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 2 ; 3 uses
  %i.aic = ptrtoint ptr %i.aib to i64
  %i.aid = sub i64 %i.aic, %i.rq
  %i.aie = lshr exact i64 %i.aid, 1
  %i.aif = trunc i64 %i.aie to i16
  %i.aig = add i16 %i.aif, 1
  %i.aih = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 534
  store i16 %i.aig, ptr %i.aih, align 2, !tbaa !164
  %.1.val.us.3.i.i.i.i.1 = load i16, ptr %i.aib, align 1
  %i.aii = zext i16 %.1.val.us.3.i.i.i.i.1 to i64
  %i.aij = shl nuw nsw i64 %i.aii, 1
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aib, i64 %i.aij
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 2
  br label %.split41.split.us.i.i.i.i.2

.preheader.us48.i.i.i.i.1:                        ; preds = %bb.bp
  %i.aim = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 528
  %i.ain = ptrtoint ptr %.3.us53.i.i.i.i to i64
  %i.aio = sub i64 %i.ain, %i.rq
  %i.aip = trunc i64 %i.aio to i16
  %i.aiq = add i16 %i.aip, 1
  store i16 %i.aiq, ptr %i.aim, align 8, !tbaa !164
  %i.air = load i8, ptr %.3.us53.i.i.i.i, align 1, !tbaa !125
  %i.ais = zext i8 %i.air to i64
  %i.ait = getelementptr inbounds nuw i8, ptr %.3.us53.i.i.i.i, i64 %i.ais
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 1 ; 3 uses
  %i.aiv = ptrtoint ptr %i.aiu to i64
  %i.aiw = sub i64 %i.aiv, %i.rq
  %i.aix = trunc i64 %i.aiw to i16
  %i.aiy = add i16 %i.aix, 1
  %i.aiz = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 530
  store i16 %i.aiy, ptr %i.aiz, align 2, !tbaa !164
  %i.aja = load i8, ptr %i.aiu, align 1, !tbaa !125
  %i.ajb = zext i8 %i.aja to i64
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aiu, i64 %i.ajb
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 1 ; 3 uses
  %i.aje = ptrtoint ptr %i.ajd to i64
  %i.ajf = sub i64 %i.aje, %i.rq
  %i.ajg = trunc i64 %i.ajf to i16
  %i.ajh = add i16 %i.ajg, 1
  %i.aji = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 532
  store i16 %i.ajh, ptr %i.aji, align 4, !tbaa !164
  %i.ajj = load i8, ptr %i.ajd, align 1, !tbaa !125
  %i.ajk = zext i8 %i.ajj to i64
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajd, i64 %i.ajk
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 1 ; 3 uses
  %i.ajn = ptrtoint ptr %i.ajm to i64
  %i.ajo = sub i64 %i.ajn, %i.rq
  %i.ajp = trunc i64 %i.ajo to i16
  %i.ajq = add i16 %i.ajp, 1
  %i.ajr = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 534
  store i16 %i.ajq, ptr %i.ajr, align 2, !tbaa !164
  %i.ajs = load i8, ptr %i.ajm, align 1, !tbaa !125
  %i.ajt = zext i8 %i.ajs to i64
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajm, i64 %i.ajt
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 1
  br label %.split41.split.us.i.i.i.i.2

.split41.split.us.i.i.i.i.2:                      ; preds = %.split41.split.us.i.i.i.i.1, %.split.us.i.i.i.i.1, %.preheader.us48.i.i.i.i.1
  %.3.us53.i.i.i.i.1 = phi ptr [ %.3.us53.i.i.i.i, %.split41.split.us.i.i.i.i.1 ], [ %i.ajv, %.preheader.us48.i.i.i.i.1 ], [ %i.ail, %.split.us.i.i.i.i.1 ] ; 6 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 536
  %i.ajx = load i8, ptr %i.ajw, align 8, !tbaa !198
  %i.ajy = zext i8 %i.ajx to i32                  ; 2 uses
  %i.ajz = and i32 %i.ajy, 2
  %.not28.us55.i.i.i.i.2 = icmp eq i32 %i.ajz, 0
  br i1 %.not28.us55.i.i.i.i.2, label %.split41.split.us.i.i.i.i.3, label %bb.bq

bb.bq:                                            ; preds = %.split41.split.us.i.i.i.i.2
  %i.aka = and i32 %i.ajy, 16
  %.not29.us47.i.i.i.i.2 = icmp eq i32 %i.aka, 0
  br i1 %.not29.us47.i.i.i.i.2, label %.preheader.us48.i.i.i.i.2, label %.split.us.i.i.i.i.2

.split.us.i.i.i.i.2:                              ; preds = %bb.bq
  %i.akb = ptrtoint ptr %.3.us53.i.i.i.i.1 to i64
  %i.akc = and i64 %i.akb, 1
  %i.akd = getelementptr inbounds nuw i8, ptr %.3.us53.i.i.i.i.1, i64 %i.akc ; 3 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 768
  %i.akf = ptrtoint ptr %i.akd to i64
  %i.akg = sub i64 %i.akf, %i.rq
  %i.akh = lshr exact i64 %i.akg, 1
  %i.aki = trunc i64 %i.akh to i16
  %i.akj = add i16 %i.aki, 1
  store i16 %i.akj, ptr %i.ake, align 8, !tbaa !164
  %.1.val.us.i.i.i.i.2 = load i16, ptr %i.akd, align 1
  %i.akk = zext i16 %.1.val.us.i.i.i.i.2 to i64
  %i.akl = shl nuw nsw i64 %i.akk, 1
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akd, i64 %i.akl
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 2 ; 3 uses
  %i.ako = ptrtoint ptr %i.akn to i64
  %i.akp = sub i64 %i.ako, %i.rq
  %i.akq = lshr exact i64 %i.akp, 1
  %i.akr = trunc i64 %i.akq to i16
  %i.aks = add i16 %i.akr, 1
  %i.akt = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 770
  store i16 %i.aks, ptr %i.akt, align 2, !tbaa !164
  %.1.val.us.1.i.i.i.i.2 = load i16, ptr %i.akn, align 1
  %i.aku = zext i16 %.1.val.us.1.i.i.i.i.2 to i64
  %i.akv = shl nuw nsw i64 %i.aku, 1
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akn, i64 %i.akv
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 2 ; 3 uses
  %i.aky = ptrtoint ptr %i.akx to i64
  %i.akz = sub i64 %i.aky, %i.rq
  %i.ala = lshr exact i64 %i.akz, 1
  %i.alb = trunc i64 %i.ala to i16
  %i.alc = add i16 %i.alb, 1
  %i.ald = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 772
  store i16 %i.alc, ptr %i.ald, align 4, !tbaa !164
  %.1.val.us.2.i.i.i.i.2 = load i16, ptr %i.akx, align 1
  %i.ale = zext i16 %.1.val.us.2.i.i.i.i.2 to i64
  %i.alf = shl nuw nsw i64 %i.ale, 1
  %i.alg = getelementptr inbounds nuw i8, ptr %i.akx, i64 %i.alf
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 2 ; 3 uses
  %i.ali = ptrtoint ptr %i.alh to i64
  %i.alj = sub i64 %i.ali, %i.rq
  %i.alk = lshr exact i64 %i.alj, 1
  %i.all = trunc i64 %i.alk to i16
  %i.alm = add i16 %i.all, 1
  %i.aln = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 774
  store i16 %i.alm, ptr %i.aln, align 2, !tbaa !164
  %.1.val.us.3.i.i.i.i.2 = load i16, ptr %i.alh, align 1
  %i.alo = zext i16 %.1.val.us.3.i.i.i.i.2 to i64
  %i.alp = shl nuw nsw i64 %i.alo, 1
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alh, i64 %i.alp
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 2
  br label %.split41.split.us.i.i.i.i.3

.preheader.us48.i.i.i.i.2:                        ; preds = %bb.bq
  %i.als = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 768
  %i.alt = ptrtoint ptr %.3.us53.i.i.i.i.1 to i64
  %i.alu = sub i64 %i.alt, %i.rq
  %i.alv = trunc i64 %i.alu to i16
  %i.alw = add i16 %i.alv, 1
  store i16 %i.alw, ptr %i.als, align 8, !tbaa !164
  %i.alx = load i8, ptr %.3.us53.i.i.i.i.1, align 1, !tbaa !125
  %i.aly = zext i8 %i.alx to i64
  %i.alz = getelementptr inbounds nuw i8, ptr %.3.us53.i.i.i.i.1, i64 %i.aly
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alz, i64 1 ; 3 uses
  %i.amb = ptrtoint ptr %i.ama to i64
  %i.amc = sub i64 %i.amb, %i.rq
  %i.amd = trunc i64 %i.amc to i16
  %i.ame = add i16 %i.amd, 1
  %i.amf = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 770
  store i16 %i.ame, ptr %i.amf, align 2, !tbaa !164
  %i.amg = load i8, ptr %i.ama, align 1, !tbaa !125
  %i.amh = zext i8 %i.amg to i64
  %i.ami = getelementptr inbounds nuw i8, ptr %i.ama, i64 %i.amh
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 1 ; 3 uses
  %i.amk = ptrtoint ptr %i.amj to i64
  %i.aml = sub i64 %i.amk, %i.rq
  %i.amm = trunc i64 %i.aml to i16
  %i.amn = add i16 %i.amm, 1
  %i.amo = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 772
  store i16 %i.amn, ptr %i.amo, align 4, !tbaa !164
  %i.amp = load i8, ptr %i.amj, align 1, !tbaa !125
  %i.amq = zext i8 %i.amp to i64
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amj, i64 %i.amq
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 1 ; 3 uses
  %i.amt = ptrtoint ptr %i.ams to i64
  %i.amu = sub i64 %i.amt, %i.rq
  %i.amv = trunc i64 %i.amu to i16
  %i.amw = add i16 %i.amv, 1
  %i.amx = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 774
  store i16 %i.amw, ptr %i.amx, align 2, !tbaa !164
  %i.amy = load i8, ptr %i.ams, align 1, !tbaa !125
  %i.amz = zext i8 %i.amy to i64
  %i.ana = getelementptr inbounds nuw i8, ptr %i.ams, i64 %i.amz
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 1
  br label %.split41.split.us.i.i.i.i.3

.split41.split.us.i.i.i.i.3:                      ; preds = %.split41.split.us.i.i.i.i.2, %.split.us.i.i.i.i.2, %.preheader.us48.i.i.i.i.2
  %.3.us53.i.i.i.i.2 = phi ptr [ %.3.us53.i.i.i.i.1, %.split41.split.us.i.i.i.i.2 ], [ %i.anb, %.preheader.us48.i.i.i.i.2 ], [ %i.alr, %.split.us.i.i.i.i.2 ] ; 6 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 776
  %i.and = load i8, ptr %i.anc, align 8, !tbaa !198
  %i.ane = zext i8 %i.and to i32                  ; 2 uses
  %i.anf = and i32 %i.ane, 2
  %.not28.us55.i.i.i.i.3 = icmp eq i32 %i.anf, 0
  br i1 %.not28.us55.i.i.i.i.3, label %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.i.i.i, label %bb.br

bb.br:                                            ; preds = %.split41.split.us.i.i.i.i.3
  %i.ang = and i32 %i.ane, 16
  %.not29.us47.i.i.i.i.3 = icmp eq i32 %i.ang, 0
  br i1 %.not29.us47.i.i.i.i.3, label %.preheader.us48.i.i.i.i.3, label %.split.us.i.i.i.i.3

.split.us.i.i.i.i.3:                              ; preds = %bb.br
  %i.anh = ptrtoint ptr %.3.us53.i.i.i.i.2 to i64
  %i.ani = and i64 %i.anh, 1
  %i.anj = getelementptr inbounds nuw i8, ptr %.3.us53.i.i.i.i.2, i64 %i.ani ; 3 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 1008
  %i.anl = ptrtoint ptr %i.anj to i64
  %i.anm = sub i64 %i.anl, %i.rq
  %i.ann = lshr exact i64 %i.anm, 1
  %i.ano = trunc i64 %i.ann to i16
  %i.anp = add i16 %i.ano, 1
  store i16 %i.anp, ptr %i.ank, align 8, !tbaa !164
  %.1.val.us.i.i.i.i.3 = load i16, ptr %i.anj, align 1
  %i.anq = zext i16 %.1.val.us.i.i.i.i.3 to i64
  %i.anr = shl nuw nsw i64 %i.anq, 1
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anj, i64 %i.anr
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 2 ; 3 uses
  %i.anu = ptrtoint ptr %i.ant to i64
  %i.anv = sub i64 %i.anu, %i.rq
  %i.anw = lshr exact i64 %i.anv, 1
  %i.anx = trunc i64 %i.anw to i16
  %i.any = add i16 %i.anx, 1
  %i.anz = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 1010
  store i16 %i.any, ptr %i.anz, align 2, !tbaa !164
  %.1.val.us.1.i.i.i.i.3 = load i16, ptr %i.ant, align 1
  %i.aoa = zext i16 %.1.val.us.1.i.i.i.i.3 to i64
  %i.aob = shl nuw nsw i64 %i.aoa, 1
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.ant, i64 %i.aob
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoc, i64 2 ; 3 uses
  %i.aoe = ptrtoint ptr %i.aod to i64
  %i.aof = sub i64 %i.aoe, %i.rq
  %i.aog = lshr exact i64 %i.aof, 1
  %i.aoh = trunc i64 %i.aog to i16
  %i.aoi = add i16 %i.aoh, 1
  %i.aoj = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 1012
  store i16 %i.aoi, ptr %i.aoj, align 4, !tbaa !164
  %.1.val.us.2.i.i.i.i.3 = load i16, ptr %i.aod, align 1
  %i.aok = zext i16 %.1.val.us.2.i.i.i.i.3 to i64
  %i.aol = shl nuw nsw i64 %i.aok, 1
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aod, i64 %i.aol
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 2 ; 3 uses
  %i.aoo = ptrtoint ptr %i.aon to i64
  %i.aop = sub i64 %i.aoo, %i.rq
  %i.aoq = lshr exact i64 %i.aop, 1
  %i.aor = trunc i64 %i.aoq to i16
  %i.aos = add i16 %i.aor, 1
  %i.aot = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 1014
  store i16 %i.aos, ptr %i.aot, align 2, !tbaa !164
  %.1.val.us.3.i.i.i.i.3 = load i16, ptr %i.aon, align 1
  %i.aou = zext i16 %.1.val.us.3.i.i.i.i.3 to i64
  %i.aov = shl nuw nsw i64 %i.aou, 1
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aon, i64 %i.aov
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aow, i64 2
  br label %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.i.i.i

.preheader.us48.i.i.i.i.3:                        ; preds = %bb.br
  %i.aoy = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 1008
  %i.aoz = ptrtoint ptr %.3.us53.i.i.i.i.2 to i64
  %i.apa = sub i64 %i.aoz, %i.rq
  %i.apb = trunc i64 %i.apa to i16
  %i.apc = add i16 %i.apb, 1
  store i16 %i.apc, ptr %i.aoy, align 8, !tbaa !164
  %i.apd = load i8, ptr %.3.us53.i.i.i.i.2, align 1, !tbaa !125
  %i.ape = zext i8 %i.apd to i64
  %i.apf = getelementptr inbounds nuw i8, ptr %.3.us53.i.i.i.i.2, i64 %i.ape
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apf, i64 1 ; 3 uses
  %i.aph = ptrtoint ptr %i.apg to i64
  %i.api = sub i64 %i.aph, %i.rq
  %i.apj = trunc i64 %i.api to i16
  %i.apk = add i16 %i.apj, 1
  %i.apl = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 1010
  store i16 %i.apk, ptr %i.apl, align 2, !tbaa !164
  %i.apm = load i8, ptr %i.apg, align 1, !tbaa !125
  %i.apn = zext i8 %i.apm to i64
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apg, i64 %i.apn
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 1 ; 3 uses
  %i.apq = ptrtoint ptr %i.app to i64
  %i.apr = sub i64 %i.apq, %i.rq
  %i.aps = trunc i64 %i.apr to i16
  %i.apt = add i16 %i.aps, 1
  %i.apu = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 1012
  store i16 %i.apt, ptr %i.apu, align 4, !tbaa !164
  %i.apv = load i8, ptr %i.app, align 1, !tbaa !125
  %i.apw = zext i8 %i.apv to i64
  %i.apx = getelementptr inbounds nuw i8, ptr %i.app, i64 %i.apw
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apx, i64 1 ; 3 uses
  %i.apz = ptrtoint ptr %i.apy to i64
  %i.aqa = sub i64 %i.apz, %i.rq
  %i.aqb = trunc i64 %i.aqa to i16
  %i.aqc = add i16 %i.aqb, 1
  %i.aqd = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 1014
  store i16 %i.aqc, ptr %i.aqd, align 2, !tbaa !164
  %i.aqe = load i8, ptr %i.apy, align 1, !tbaa !125
  %i.aqf = zext i8 %i.aqe to i64
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.apy, i64 %i.aqf
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 1
  br label %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.i.i.i

.split41.split.i.i.i.i:                           ; preds = %.split41.i.i.i.i
  %i.aqi = load i8, ptr %i.iy, align 8, !tbaa !198
  %i.aqj = zext i8 %i.aqi to i32                  ; 2 uses
  %i.aqk = and i32 %i.aqj, 2
  %.not28.i.i.i.i = icmp eq i32 %i.aqk, 0
  %i.aql = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 288 ; 8 uses
  br i1 %.not28.i.i.i.i, label %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.thread.i.i.i, label %.split41.split.split.i.i.i.i

.split41.split.split.i.i.i.i:                     ; preds = %.split41.split.i.i.i.i
  %i.aqm = and i32 %i.aqj, 16
  %.not29.i.i.i.i = icmp eq i32 %i.aqm, 0
  %i.aqn = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 290 ; 8 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 292 ; 8 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 294 ; 8 uses
  br i1 %.not29.i.i.i.i, label %.preheader.us65.i.i.i.i, label %.split.i.i.i.i

.preheader.us65.i.i.i.i:                          ; preds = %.split41.split.split.i.i.i.i
  store i16 1, ptr %i.aql, align 8, !tbaa !164
  %i.aqq = load i8, ptr %i.rl, align 1, !tbaa !125 ; 2 uses
  %i.aqr = zext i8 %i.aqq to i64                  ; 3 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.aqr
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 1 ; 2 uses
  %i.aqu = zext i8 %i.aqq to i16
  %i.aqv = add nuw nsw i16 %i.aqu, 2
  store i16 %i.aqv, ptr %i.aqn, align 2, !tbaa !164
  %i.aqw = load i8, ptr %i.aqt, align 1, !tbaa !125
  %i.aqx = zext i8 %i.aqw to i64                  ; 3 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqt, i64 %i.aqx
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqy, i64 1 ; 2 uses
  %i.ara = add nuw nsw i64 %i.aqr, %i.aqx
  %i.arb = trunc nuw nsw i64 %i.ara to i16
  %i.arc = add nuw nsw i16 %i.arb, 3
  store i16 %i.arc, ptr %i.aqo, align 4, !tbaa !164
  %i.ard = load i8, ptr %i.aqz, align 1, !tbaa !125
  %i.are = zext i8 %i.ard to i64                  ; 2 uses
  %i.arf = getelementptr inbounds nuw i8, ptr %i.aqz, i64 %i.are
  %i.arg = getelementptr inbounds nuw i8, ptr %i.arf, i64 1 ; 2 uses
  %i.arh = add nuw nsw i64 %i.aqr, %i.aqx
  %i.ari = add nuw nsw i64 %i.arh, %i.are
  %i.arj = trunc nuw nsw i64 %i.ari to i16
  %i.ark = add nuw nsw i16 %i.arj, 4
  store i16 %i.ark, ptr %i.aqp, align 2, !tbaa !164
  %i.arl = load i8, ptr %i.arg, align 1, !tbaa !125
  %i.arm = zext i8 %i.arl to i64
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arg, i64 %i.arm
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arn, i64 1 ; 4 uses
  br i1 %i.is, label %.preheader.us65.i.i.i.i.1, label %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.thread.i.i.i

.preheader.us65.i.i.i.i.1:                        ; preds = %.preheader.us65.i.i.i.i
  %i.arp = ptrtoint ptr %i.aro to i64
  %i.arq = sub i64 %i.arp, %i.rq
  %i.arr = trunc i64 %i.arq to i16
  %i.ars = add i16 %i.arr, 1
  store i16 %i.ars, ptr %i.aql, align 8, !tbaa !164
  %i.art = load i8, ptr %i.aro, align 1, !tbaa !125
  %i.aru = zext i8 %i.art to i64
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aro, i64 %i.aru
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arv, i64 1 ; 3 uses
  %i.arx = ptrtoint ptr %i.arw to i64
  %i.ary = sub i64 %i.arx, %i.rq
  %i.arz = trunc i64 %i.ary to i16
  %i.asa = add i16 %i.arz, 1
  store i16 %i.asa, ptr %i.aqn, align 2, !tbaa !164
  %i.asb = load i8, ptr %i.arw, align 1, !tbaa !125
  %i.asc = zext i8 %i.asb to i64
  %i.asd = getelementptr inbounds nuw i8, ptr %i.arw, i64 %i.asc
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asd, i64 1 ; 3 uses
  %i.asf = ptrtoint ptr %i.ase to i64
  %i.asg = sub i64 %i.asf, %i.rq
  %i.ash = trunc i64 %i.asg to i16
  %i.asi = add i16 %i.ash, 1
  store i16 %i.asi, ptr %i.aqo, align 4, !tbaa !164
  %i.asj = load i8, ptr %i.ase, align 1, !tbaa !125
  %i.ask = zext i8 %i.asj to i64
  %i.asl = getelementptr inbounds nuw i8, ptr %i.ase, i64 %i.ask
  %i.asm = getelementptr inbounds nuw i8, ptr %i.asl, i64 1 ; 3 uses
  %i.asn = ptrtoint ptr %i.asm to i64
  %i.aso = sub i64 %i.asn, %i.rq
  %i.asp = trunc i64 %i.aso to i16
  %i.asq = add i16 %i.asp, 1
  store i16 %i.asq, ptr %i.aqp, align 2, !tbaa !164
  %i.asr = load i8, ptr %i.asm, align 1, !tbaa !125
  %i.ass = zext i8 %i.asr to i64
  %i.ast = getelementptr inbounds nuw i8, ptr %i.asm, i64 %i.ass
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ast, i64 1 ; 3 uses
  %i.asv = ptrtoint ptr %i.asu to i64
  %i.asw = sub i64 %i.asv, %i.rq
  %i.asx = trunc i64 %i.asw to i16
  %i.asy = add i16 %i.asx, 1
  store i16 %i.asy, ptr %i.aql, align 8, !tbaa !164
  %i.asz = load i8, ptr %i.asu, align 1, !tbaa !125
end_hunk_1
begin_hunk_2_@_ZN9Stockfish10Tablebases9probe_dtzERNS_8PositionEPNS0_10ProbeStateE:bb.a
  %i.avb = trunc i64 %i.ava to i16
  %i.avc = add i16 %i.avb, 1
  store i16 %i.avc, ptr %i.aqp, align 2, !tbaa !164
  %i.avd = load i8, ptr %i.auy, align 1, !tbaa !125
  %i.ave = zext i8 %i.avd to i64
  %i.avf = getelementptr inbounds nuw i8, ptr %i.auy, i64 %i.ave
  %i.avg = getelementptr inbounds nuw i8, ptr %i.avf, i64 1
  br label %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.thread.i.i.i

.split.i.i.i.i:                                   ; preds = %.split41.split.split.i.i.i.i
  %i.avh = ptrtoint ptr %i.rl to i64
  %i.avi = and i64 %i.avh, 1
  %i.avj = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.avi ; 2 uses
  store i16 1, ptr %i.aql, align 8, !tbaa !164
  %.1.val.i.i.i.i = load i16, ptr %i.avj, align 1 ; 2 uses
  %i.avk = zext i16 %.1.val.i.i.i.i to i64
  %i.avl = shl nuw nsw i64 %i.avk, 1              ; 2 uses
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avj, i64 %i.avl
  %i.avn = getelementptr inbounds nuw i8, ptr %i.avm, i64 2 ; 2 uses
  %i.avo = add i16 %.1.val.i.i.i.i, 2
  store i16 %i.avo, ptr %i.aqn, align 2, !tbaa !164
  %.1.val.1.i.i.i.i = load i16, ptr %i.avn, align 1
  %i.avp = zext i16 %.1.val.1.i.i.i.i to i64
  %i.avq = shl nuw nsw i64 %i.avp, 1              ; 2 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avn, i64 %i.avq
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avr, i64 2 ; 2 uses
  %i.avt = add nuw nsw i64 %i.avl, %i.avq
  %i.avu = add nuw nsw i64 %i.avt, 4
  %i.avv = lshr exact i64 %i.avu, 1
  %i.avw = trunc i64 %i.avv to i16
  %i.avx = add i16 %i.avw, 1
  store i16 %i.avx, ptr %i.aqo, align 4, !tbaa !164
  %.1.val.2.i.i.i.i = load i16, ptr %i.avs, align 1
  %i.avy = zext i16 %.1.val.2.i.i.i.i to i64
  %i.avz = shl nuw nsw i64 %i.avy, 1
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avs, i64 %i.avz
  %i.awb = getelementptr inbounds nuw i8, ptr %i.awa, i64 2 ; 3 uses
  %i.awc = ptrtoint ptr %i.awb to i64
  %i.awd = sub i64 %i.awc, %i.rq
  %i.awe = lshr exact i64 %i.awd, 1
  %i.awf = trunc i64 %i.awe to i16
  %i.awg = add i16 %i.awf, 1
  store i16 %i.awg, ptr %i.aqp, align 2, !tbaa !164
  %.1.val.3.i.i.i.i = load i16, ptr %i.awb, align 1
  %i.awh = zext i16 %.1.val.3.i.i.i.i to i64
  %i.awi = shl nuw nsw i64 %i.awh, 1
  %i.awj = getelementptr inbounds nuw i8, ptr %i.awb, i64 %i.awi
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awj, i64 2 ; 3 uses
  br i1 %i.is, label %.split.i.i.i.i.1, label %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.thread.i.i.i

.split.i.i.i.i.1:                                 ; preds = %.split.i.i.i.i
  %i.awl = ptrtoint ptr %i.awk to i64
  %i.awm = and i64 %i.awl, 1
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awk, i64 %i.awm ; 3 uses
  %i.awo = ptrtoint ptr %i.awn to i64
  %i.awp = sub i64 %i.awo, %i.rq
  %i.awq = lshr exact i64 %i.awp, 1
  %i.awr = trunc i64 %i.awq to i16
  %i.aws = add i16 %i.awr, 1
  store i16 %i.aws, ptr %i.aql, align 8, !tbaa !164
  %.1.val.i.i.i.i.1 = load i16, ptr %i.awn, align 1
  %i.awt = zext i16 %.1.val.i.i.i.i.1 to i64
  %i.awu = shl nuw nsw i64 %i.awt, 1
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awn, i64 %i.awu
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awv, i64 2 ; 3 uses
  %i.awx = ptrtoint ptr %i.aww to i64
  %i.awy = sub i64 %i.awx, %i.rq
  %i.awz = lshr exact i64 %i.awy, 1
  %i.axa = trunc i64 %i.awz to i16
  %i.axb = add i16 %i.axa, 1
  store i16 %i.axb, ptr %i.aqn, align 2, !tbaa !164
  %.1.val.1.i.i.i.i.1 = load i16, ptr %i.aww, align 1
  %i.axc = zext i16 %.1.val.1.i.i.i.i.1 to i64
  %i.axd = shl nuw nsw i64 %i.axc, 1
  %i.axe = getelementptr inbounds nuw i8, ptr %i.aww, i64 %i.axd
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axe, i64 2 ; 3 uses
  %i.axg = ptrtoint ptr %i.axf to i64
  %i.axh = sub i64 %i.axg, %i.rq
  %i.axi = lshr exact i64 %i.axh, 1
  %i.axj = trunc i64 %i.axi to i16
  %i.axk = add i16 %i.axj, 1
  store i16 %i.axk, ptr %i.aqo, align 4, !tbaa !164
  %.1.val.2.i.i.i.i.1 = load i16, ptr %i.axf, align 1
  %i.axl = zext i16 %.1.val.2.i.i.i.i.1 to i64
  %i.axm = shl nuw nsw i64 %i.axl, 1
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axf, i64 %i.axm
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axn, i64 2 ; 3 uses
  %i.axp = ptrtoint ptr %i.axo to i64
  %i.axq = sub i64 %i.axp, %i.rq
  %i.axr = lshr exact i64 %i.axq, 1
  %i.axs = trunc i64 %i.axr to i16
  %i.axt = add i16 %i.axs, 1
  store i16 %i.axt, ptr %i.aqp, align 2, !tbaa !164
  %.1.val.3.i.i.i.i.1 = load i16, ptr %i.axo, align 1
  %i.axu = zext i16 %.1.val.3.i.i.i.i.1 to i64
  %i.axv = shl nuw nsw i64 %i.axu, 1
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axo, i64 %i.axv
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axw, i64 2 ; 2 uses
  %i.axy = ptrtoint ptr %i.axx to i64
  %i.axz = and i64 %i.axy, 1
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axx, i64 %i.axz ; 3 uses
  %i.ayb = ptrtoint ptr %i.aya to i64
  %i.ayc = sub i64 %i.ayb, %i.rq
  %i.ayd = lshr exact i64 %i.ayc, 1
  %i.aye = trunc i64 %i.ayd to i16
  %i.ayf = add i16 %i.aye, 1
  store i16 %i.ayf, ptr %i.aql, align 8, !tbaa !164
  %.1.val.i.i.i.i.2 = load i16, ptr %i.aya, align 1
  %i.ayg = zext i16 %.1.val.i.i.i.i.2 to i64
  %i.ayh = shl nuw nsw i64 %i.ayg, 1
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.aya, i64 %i.ayh
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayi, i64 2 ; 3 uses
  %i.ayk = ptrtoint ptr %i.ayj to i64
  %i.ayl = sub i64 %i.ayk, %i.rq
  %i.aym = lshr exact i64 %i.ayl, 1
  %i.ayn = trunc i64 %i.aym to i16
  %i.ayo = add i16 %i.ayn, 1
  store i16 %i.ayo, ptr %i.aqn, align 2, !tbaa !164
  %.1.val.1.i.i.i.i.2 = load i16, ptr %i.ayj, align 1
  %i.ayp = zext i16 %.1.val.1.i.i.i.i.2 to i64
  %i.ayq = shl nuw nsw i64 %i.ayp, 1
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayj, i64 %i.ayq
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ayr, i64 2 ; 3 uses
  %i.ayt = ptrtoint ptr %i.ays to i64
  %i.ayu = sub i64 %i.ayt, %i.rq
  %i.ayv = lshr exact i64 %i.ayu, 1
  %i.ayw = trunc i64 %i.ayv to i16
  %i.ayx = add i16 %i.ayw, 1
  store i16 %i.ayx, ptr %i.aqo, align 4, !tbaa !164
  %.1.val.2.i.i.i.i.2 = load i16, ptr %i.ays, align 1
  %i.ayy = zext i16 %.1.val.2.i.i.i.i.2 to i64
  %i.ayz = shl nuw nsw i64 %i.ayy, 1
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ays, i64 %i.ayz
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aza, i64 2 ; 3 uses
  %i.azc = ptrtoint ptr %i.azb to i64
  %i.azd = sub i64 %i.azc, %i.rq
  %i.aze = lshr exact i64 %i.azd, 1
  %i.azf = trunc i64 %i.aze to i16
  %i.azg = add i16 %i.azf, 1
  store i16 %i.azg, ptr %i.aqp, align 2, !tbaa !164
  %.1.val.3.i.i.i.i.2 = load i16, ptr %i.azb, align 1
  %i.azh = zext i16 %.1.val.3.i.i.i.i.2 to i64
  %i.azi = shl nuw nsw i64 %i.azh, 1
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azb, i64 %i.azi
  %i.azk = getelementptr inbounds nuw i8, ptr %i.azj, i64 2 ; 2 uses
  %i.azl = ptrtoint ptr %i.azk to i64
  %i.azm = and i64 %i.azl, 1
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azk, i64 %i.azm ; 3 uses
  %i.azo = ptrtoint ptr %i.azn to i64
  %i.azp = sub i64 %i.azo, %i.rq
  %i.azq = lshr exact i64 %i.azp, 1
  %i.azr = trunc i64 %i.azq to i16
  %i.azs = add i16 %i.azr, 1
  store i16 %i.azs, ptr %i.aql, align 8, !tbaa !164
  %.1.val.i.i.i.i.3 = load i16, ptr %i.azn, align 1
  %i.azt = zext i16 %.1.val.i.i.i.i.3 to i64
  %i.azu = shl nuw nsw i64 %i.azt, 1
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azn, i64 %i.azu
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azv, i64 2 ; 3 uses
  %i.azx = ptrtoint ptr %i.azw to i64
  %i.azy = sub i64 %i.azx, %i.rq
  %i.azz = lshr exact i64 %i.azy, 1
  %i.baa = trunc i64 %i.azz to i16
  %i.bab = add i16 %i.baa, 1
  store i16 %i.bab, ptr %i.aqn, align 2, !tbaa !164
  %.1.val.1.i.i.i.i.3 = load i16, ptr %i.azw, align 1
  %i.bac = zext i16 %.1.val.1.i.i.i.i.3 to i64
  %i.bad = shl nuw nsw i64 %i.bac, 1
  %i.bae = getelementptr inbounds nuw i8, ptr %i.azw, i64 %i.bad
  %i.baf = getelementptr inbounds nuw i8, ptr %i.bae, i64 2 ; 3 uses
  %i.bag = ptrtoint ptr %i.baf to i64
  %i.bah = sub i64 %i.bag, %i.rq
  %i.bai = lshr exact i64 %i.bah, 1
  %i.baj = trunc i64 %i.bai to i16
  %i.bak = add i16 %i.baj, 1
  store i16 %i.bak, ptr %i.aqo, align 4, !tbaa !164
  %.1.val.2.i.i.i.i.3 = load i16, ptr %i.baf, align 1
  %i.bal = zext i16 %.1.val.2.i.i.i.i.3 to i64
  %i.bam = shl nuw nsw i64 %i.bal, 1
  %i.ban = getelementptr inbounds nuw i8, ptr %i.baf, i64 %i.bam
  %i.bao = getelementptr inbounds nuw i8, ptr %i.ban, i64 2 ; 3 uses
  %i.bap = ptrtoint ptr %i.bao to i64
  %i.baq = sub i64 %i.bap, %i.rq
  %i.bar = lshr exact i64 %i.baq, 1
  %i.bas = trunc i64 %i.bar to i16
  %i.bat = add i16 %i.bas, 1
  store i16 %i.bat, ptr %i.aqp, align 2, !tbaa !164
  %.1.val.3.i.i.i.i.3 = load i16, ptr %i.bao, align 1
  %i.bau = zext i16 %.1.val.3.i.i.i.i.3 to i64
  %i.bav = shl nuw nsw i64 %i.bau, 1
  %i.baw = getelementptr inbounds nuw i8, ptr %i.bao, i64 %i.bav
  %i.bax = getelementptr inbounds nuw i8, ptr %i.baw, i64 2
  br label %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.thread.i.i.i

_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.thread.i.i.i: ; preds = %.split.i.i.i.i, %.split.i.i.i.i.1, %.preheader.us65.i.i.i.i, %.preheader.us65.i.i.i.i.1, %.split41.split.i.i.i.i
  %.us-phi44.i.ph.i.i.i = phi ptr [ %i.avg, %.preheader.us65.i.i.i.i.1 ], [ %i.rl, %.split41.split.i.i.i.i ], [ %i.aro, %.preheader.us65.i.i.i.i ], [ %i.awk, %.split.i.i.i.i ], [ %i.bax, %.split.i.i.i.i.1 ] ; 2 uses
  %i.bay = ptrtoint ptr %.us-phi44.i.ph.i.i.i to i64
  %i.baz = and i64 %i.bay, 1
  br label %.preheader128.i.split.i.i

_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.i.i.i: ; preds = %.loopexit34.split.us.i.i.i.i, %.preheader.us48.i.i.i.i.3, %.split.us.i.i.i.i.3, %.split41.split.us.i.i.i.i.3, %.loopexit34.split.us.us.i.i.i.i, %.preheader.us.i.i.i.i.3, %.split.us.us.i.i.i.i.3, %.split41.us.i.i.i.i.3
  %.us-phi44.i.i.i.i = phi ptr [ %i.acq, %.split.us.us.i.i.i.i.3 ], [ %.3.us.i.i.i.i, %.loopexit34.split.us.us.i.i.i.i ], [ %.3.us.i.i.i.i.2, %.split41.us.i.i.i.i.3 ], [ %i.aea, %.preheader.us.i.i.i.i.3 ], [ %.3.us53.i.i.i.i, %.loopexit34.split.us.i.i.i.i ], [ %.3.us53.i.i.i.i.2, %.split41.split.us.i.i.i.i.3 ], [ %i.aqh, %.preheader.us48.i.i.i.i.3 ], [ %i.aox, %.split.us.i.i.i.i.3 ] ; 3 uses
  %i.bba = ptrtoint ptr %.us-phi44.i.i.i.i to i64
  %i.bbb = and i64 %i.bba, 1                      ; 2 uses
  br i1 %i.rp, label %.preheader129.us.i.i.i, label %.preheader128.i.split.i.i

.preheader129.us.i.i.i:                           ; preds = %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.i.i.i
  %i.bbc = getelementptr inbounds nuw i8, ptr %.us-phi44.i.i.i.i, i64 %i.bbb ; 2 uses
  %i.bbd = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 112
  %i.bbe = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 120
  %i.bbf = load i64, ptr %i.bbe, align 8, !tbaa !199
  %i.bbg = mul i64 %i.bbf, 6
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bbc, i64 %i.bbg ; 3 uses
  store ptr %i.bbc, ptr %i.bbd, align 8, !tbaa !200
  br i1 %i.is, label %.preheader129.us.i.i.i.1.a, label %.preheader127.i.us.i.i

.preheader129.us.i.i.i.1.a:                       ; preds = %.preheader129.us.i.i.i
  %17 = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 352
  %18 = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 360
  %19 = load i64, ptr %18, align 8, !tbaa !199
  store ptr %i.bbh, ptr %17, align 8, !tbaa !200
  %20 = mul i64 %19, 6
  %21 = getelementptr inbounds nuw i8, ptr %i.bbh, i64 %20 ; 2 uses
  %i.bbi = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 592
  %i.bbj = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 600
  %i.bbk = load i64, ptr %i.bbj, align 8, !tbaa !199
  store ptr %21, ptr %i.bbi, align 8, !tbaa !200
  %i.bbl = mul i64 %i.bbk, 6
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 %i.bbl ; 2 uses
  %23 = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 832
  %i.bbm = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 840
  %24 = load i64, ptr %i.bbm, align 8, !tbaa !199
  %25 = mul i64 %24, 6
  %26 = getelementptr inbounds nuw i8, ptr %22, i64 %25
  store ptr %22, ptr %23, align 8, !tbaa !200
  br label %.preheader127.i.us.i.i

.preheader127.i.us.i.i:                           ; preds = %.preheader129.us.i.i.i, %.preheader129.us.i.i.i.1.a
  %.lcssa496 = phi ptr [ %i.bbh, %.preheader129.us.i.i.i ], [ %26, %.preheader129.us.i.i.i.1.a ] ; 2 uses
  %i.bbn = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 96
  %i.bbo = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 104
  %i.bbp = load i32, ptr %i.bbo, align 8, !tbaa !201
  %i.bbq = zext i32 %i.bbp to i64
  %i.bbr = shl nuw nsw i64 %i.bbq, 1
  %i.bbs = getelementptr inbounds nuw i8, ptr %.lcssa496, i64 %i.bbr ; 3 uses
  store ptr %.lcssa496, ptr %i.bbn, align 8, !tbaa !202
  br i1 %i.is, label %.preheader127.i.us.i.i.1, label %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i.loopexit.critedge

.preheader127.i.us.i.i.1:                         ; preds = %.preheader127.i.us.i.i
  %i.bbt = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 336
  %i.bbu = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 344
  %i.bbv = load i32, ptr %i.bbu, align 8, !tbaa !201
  store ptr %i.bbs, ptr %i.bbt, align 8, !tbaa !202
  %i.bbw = zext i32 %i.bbv to i64
  %i.bbx = shl nuw nsw i64 %i.bbw, 1
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbs, i64 %i.bbx ; 2 uses
  %i.bbz = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 576
  %i.bca = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 584
  %i.bcb = load i32, ptr %i.bca, align 8, !tbaa !201
  store ptr %i.bby, ptr %i.bbz, align 8, !tbaa !202
  %i.bcc = zext i32 %i.bcb to i64
  %i.bcd = shl nuw nsw i64 %i.bcc, 1
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bby, i64 %i.bcd ; 2 uses
  %i.bcf = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 816
  %i.bcg = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 824
  %i.bch = load i32, ptr %i.bcg, align 8, !tbaa !201
  %i.bci = zext i32 %i.bch to i64
  %i.bcj = shl nuw nsw i64 %i.bci, 1
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bce, i64 %i.bcj
  store ptr %i.bce, ptr %i.bcf, align 8, !tbaa !202
  br label %.preheader.i.i.i

.preheader128.i.split.i.i:                        ; preds = %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.i.i.i, %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.thread.i.i.i
  %i.bcl = phi i64 [ %i.baz, %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.thread.i.i.i ], [ %i.bbb, %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.i.i.i ] ; 2 uses
  %.us-phi44.i226.i.i.i = phi ptr [ %.us-phi44.i.ph.i.i.i, %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.thread.i.i.i ], [ %.us-phi44.i.i.i.i, %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.i.i.i ] ; 2 uses
  %i.bcm = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 120
  %i.bcn = load i64, ptr %i.bcm, align 8, !tbaa !199 ; 2 uses
  %i.bco = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 112
  %narrow.i.i = mul nuw nsw i8 %i.it, 6
  %i.bcp = zext nneg i8 %narrow.i.i to i64        ; 2 uses
  %i.bcq = mul i64 %i.bcn, %i.bcp
  %i.bcr = getelementptr i8, ptr %.us-phi44.i226.i.i.i, i64 %i.bcq
  %scevgep.i.i.i = getelementptr i8, ptr %i.bcr, i64 %i.bcl
  %i.bcs = add nuw nsw i64 %i.bcp, 6
  %i.bct = mul i64 %i.bcn, %i.bcs
  %i.bcu = getelementptr i8, ptr %.us-phi44.i226.i.i.i, i64 %i.bct
  %scevgep190.i.i.i = getelementptr i8, ptr %i.bcu, i64 %i.bcl ; 2 uses
  store ptr %scevgep.i.i.i, ptr %i.bco, align 8, !tbaa !200
  %i.bcv = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 104
  %i.bcw = load i32, ptr %i.bcv, align 8, !tbaa !201
  %i.bcx = zext i32 %i.bcw to i64                 ; 2 uses
  %i.bcy = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 96
  %i.bcz = shl nuw nsw i8 %i.it, 1
  %i.bda = zext nneg i8 %i.bcz to i64             ; 2 uses
  %i.bdb = mul nuw nsw i64 %i.bcx, %i.bda
  %scevgep.i.i = getelementptr nuw i8, ptr %scevgep190.i.i.i, i64 %i.bdb
  %i.bdc = add nuw nsw i64 %i.bda, 2
  %i.bdd = mul nuw nsw i64 %i.bdc, %i.bcx
  %scevgep97.i.i = getelementptr i8, ptr %scevgep190.i.i.i, i64 %i.bdd
  store ptr %scevgep.i.i, ptr %i.bcy, align 8, !tbaa !202
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader128.i.split.i.i, %.preheader127.i.us.i.i.1
  %.8172.i.i.i.ph = phi ptr [ %scevgep97.i.i, %.preheader128.i.split.i.i ], [ %i.bck, %.preheader127.i.us.i.i.1 ]
  %i.bde = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 128
  %i.bdf = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 60
  %i.bdg = load i32, ptr %i.bdf, align 4, !tbaa !203
  %i.bdh = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 64
  %i.bdi = load i64, ptr %i.bdh, align 8, !tbaa !204
  %i.bdj = ptrtoint ptr %.8172.i.i.i.ph to i64
  %i.bdk = add i64 %i.bdj, 63
  %i.bdl = and i64 %i.bdk, -64
  %i.bdm = inttoptr i64 %i.bdl to ptr             ; 2 uses
  store ptr %i.bdm, ptr %i.bde, align 8, !tbaa !205
  br i1 %i.is, label %.preheader.i.i.i.1, label %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i

.preheader.i.i.i.1:                               ; preds = %.preheader.i.i.i
  %i.bdn = zext i32 %i.bdg to i64
  %i.bdo = mul i64 %i.bdi, %i.bdn
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bdm, i64 %i.bdo
  %i.bdq = zext nneg i8 %i.ro to i64
  %i.bdr = getelementptr inbounds nuw [240 x i8], ptr %i.iy, i64 %i.bdq ; 3 uses
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdr, i64 72
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bdr, i64 4
  %i.bdu = load i32, ptr %i.bdt, align 4, !tbaa !203
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdr, i64 8
  %i.bdw = load i64, ptr %i.bdv, align 8, !tbaa !204
  %i.bdx = ptrtoint ptr %i.bdp to i64
  %i.bdy = add i64 %i.bdx, 63
  %i.bdz = and i64 %i.bdy, -64
  %i.bea = inttoptr i64 %i.bdz to ptr             ; 2 uses
  store ptr %i.bea, ptr %i.bds, align 8, !tbaa !205
  %i.beb = zext i32 %i.bdu to i64
  %i.bec = mul i64 %i.bdw, %i.beb
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bea, i64 %i.bec
  %narrow125.i.i.i.2 = shl nuw nsw i8 %i.ro, 1
  %i.bee = zext nneg i8 %narrow125.i.i.i.2 to i64
  %i.bef = getelementptr inbounds nuw [240 x i8], ptr %i.iy, i64 %i.bee ; 3 uses
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bef, i64 72
  %i.beh = getelementptr inbounds nuw i8, ptr %i.bef, i64 4
  %i.bei = load i32, ptr %i.beh, align 4, !tbaa !203
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bef, i64 8
  %i.bek = load i64, ptr %i.bej, align 8, !tbaa !204
  %i.bel = ptrtoint ptr %i.bed to i64
  %i.bem = add i64 %i.bel, 63
  %i.ben = and i64 %i.bem, -64
  %i.beo = inttoptr i64 %i.ben to ptr             ; 2 uses
  store ptr %i.beo, ptr %i.beg, align 8, !tbaa !205
  %i.bep = zext i32 %i.bei to i64
  %i.beq = mul i64 %i.bek, %i.bep
  %i.ber = getelementptr inbounds nuw i8, ptr %i.beo, i64 %i.beq
  %narrow125.i.i.i.3 = select i1 %i.rp, i64 3, i64 0
  %i.bes = getelementptr inbounds nuw [240 x i8], ptr %i.iy, i64 %narrow125.i.i.i.3
  %i.bet = getelementptr inbounds nuw i8, ptr %i.bes, i64 72
  %i.beu = ptrtoint ptr %i.ber to i64
  %i.bev = add i64 %i.beu, 63
  %i.bew = and i64 %i.bev, -64
  %i.bex = inttoptr i64 %i.bew to ptr
  store ptr %i.bex, ptr %i.bet, align 8, !tbaa !205
  br label %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i

_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i.loopexit.critedge: ; preds = %.preheader127.i.us.i.i
  %i.bey = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 128
  %i.bez = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 60
  %i.bfa = load i32, ptr %i.bez, align 4, !tbaa !203 ; 0 uses
  %i.bfb = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 64
  %i.bfc = load i64, ptr %i.bfb, align 8, !tbaa !204 ; 0 uses
  %i.bfd = ptrtoint ptr %i.bbs to i64
  %i.bfe = add i64 %i.bfd, 63
  %i.bff = and i64 %i.bfe, -64
  %i.bfg = inttoptr i64 %i.bff to ptr
  store ptr %i.bfg, ptr %i.bey, align 8, !tbaa !205
  br label %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i

_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i: ; preds = %.preheader.i.i.i, %.preheader.i.i.i.1, %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i.loopexit.critedge, %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i.i
  store atomic i8 1, ptr %.0.val.i.i release, align 8
  %i.bfh = load ptr, ptr %i.ia, align 8, !tbaa !140
  %i.bfi = load ptr, ptr %4, align 8, !tbaa !130  ; 2 uses
  %i.bfj = icmp eq ptr %i.bfi, %i.cc
  br i1 %i.bfj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i
  %i.bfk = load i64, ptr %i.cc, align 8, !tbaa !125
  %i.bfl = add i64 %i.bfk, 1
  call void @_ZdlPvm(ptr noundef %i.bfi, i64 noundef %i.bfl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.bfm = load ptr, ptr %3, align 8, !tbaa !130  ; 2 uses
  %i.bfn = icmp eq ptr %i.bfm, %i.ca
  br i1 %i.bfn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i
  %i.bfo = load i64, ptr %i.ca, align 8, !tbaa !125
  %i.bfp = add i64 %i.bfo, 1
  call void @_ZdlPvm(ptr noundef %i.bfm, i64 noundef %i.bfp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.bfq = load ptr, ptr %2, align 8, !tbaa !130  ; 2 uses
  %i.bfr = icmp eq ptr %i.bfq, %i.by
  br i1 %i.bfr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i
  %i.bfs = load i64, ptr %i.by, align 8, !tbaa !125
  %i.bft = add i64 %i.bfs, 1
  call void @_ZdlPvm(ptr noundef %i.bfq, i64 noundef %i.bft) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.bs

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i, %bb.r
  %.023.i.i = phi ptr [ %i.bx, %bb.r ], [ %i.bfh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i ]
  %i.bfu = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE1EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionEE5mutex) #26 ; 0 uses
  br label %_ZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE1EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionE.exit.i

_ZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE1EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionE.exit.i: ; preds = %bb.bs, %bb.o
  %.1.i.i = phi ptr [ %i.bs, %bb.o ], [ %.023.i.i, %bb.bs ]
  %.not11.i = icmp eq ptr %.1.i.i, null
  br i1 %.not11.i, label %_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE1EiEET0_RKNS_8PositionEPNS_10Tablebases10ProbeStateENS7_8WDLScoreE.exit.thread, label %bb.bt

_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE1EiEET0_RKNS_8PositionEPNS_10Tablebases10ProbeStateENS7_8WDLScoreE.exit.thread: ; preds = %_ZN9Stockfish12_GLOBAL__N_18TBTables3getILNS0_6TBTypeE1EEEPNS0_7TBTableIXT_EEEm.exit.i, %_ZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE1EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionE.exit.i
  store i32 0, ptr %1, align 4, !tbaa !159
  br label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit

bb.bt:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE1EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.bfv = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 32
  %i.bfw = load i64, ptr %i.bfv, align 8, !tbaa !380 ; 2 uses
  %i.bfx = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 40
  %i.bfy = load i64, ptr %i.bfx, align 8, !tbaa !389
  %i.bfz = icmp eq i64 %i.bfw, %i.bfy             ; 2 uses
  %i.bga = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.bgb = load i8, ptr %i.bga, align 4           ; 2 uses
end_hunk_2
