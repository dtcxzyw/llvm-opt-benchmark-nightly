Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/tbprobe?download=true
inline.NumInlined: 1887
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN9Stockfish10Tablebases9probe_dtzERNS_8PositionEPNS0_10ProbeStateE:bb.a
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
  %i.jb = add nuw nsw i8 %i.it, 1                 ; 5 uses
  %wide.trip.count187.i.i.i = zext nneg i8 %i.jb to i64
  %i.jc = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 256
  br label %.preheader137.i.i.i

.preheader137.i.i.i:                              ; preds = %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i, %bb.ap
  %i.jd = phi i8 [ %i.ir, %bb.ap ], [ %.pre.i59.i.i, %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i ]
  %indvars.iv184.i.i.i = phi i64 [ 0, %bb.ap ], [ %indvars.iv.next185.i.i.i, %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i ] ; 4 uses
  %.078159.i.i.i = phi ptr [ %i.ip, %bb.ap ], [ %.1.lcssa210219.i.i.i, %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i ] ; 4 uses
  %.078159.i.i.i282 = ptrtoaddr ptr %.078159.i.i.i to i64
  %i.je = trunc nuw i8 %i.jd to i1
  %i.jf = select i1 %i.je, i64 %indvars.iv184.i.i.i, i64 0
  %i.jg = getelementptr inbounds nuw [240 x i8], ptr %i.iy, i64 %i.jf ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.jg, i8 0, i64 80, i1 false)
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 80 ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !182 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 96
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !183
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ji, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jh, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i, label %bb.ar

bb.aq:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i
  %i.jl = ptrtoint ptr %.1.lcssa210219.i.i.i to i64
  %i.jm = and i64 %i.jl, 1
  %i.jn = getelementptr inbounds nuw i8, ptr %.1.lcssa210219.i.i.i, i64 %i.jm
  br label %.preheader133.i.i.i

bb.ar:                                            ; preds = %.preheader137.i.i.i
  %i.jo = ptrtoint ptr %i.jk to i64
  %i.jp = ptrtoint ptr %i.ji to i64
  %i.jq = sub i64 %i.jo, %i.jp
  call void @_ZdlPvm(ptr noundef nonnull %i.ji, i64 noundef %i.jq) #30
  br label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i

_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i:         ; preds = %bb.ar, %.preheader137.i.i.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jg, i64 104 ; 2 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !185 ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jg, i64 120
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !186
  %.not.i.i.i.i.i5.i.i.i.i = icmp eq ptr %i.js, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jr, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i5.i.i.i.i, label %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i
  %i.jv = ptrtoint ptr %i.ju to i64
  %i.jw = ptrtoint ptr %i.js to i64
  %i.jx = sub i64 %i.jv, %i.jw
  call void @_ZdlPvm(ptr noundef nonnull %i.js, i64 noundef %i.jx) #30
  br label %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i

_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i: ; preds = %bb.as, %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jg, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.jy, i8 0, i64 112, i1 false)
  %i.jz = load i8, ptr %.078159.i.i.i, align 1, !tbaa !125
  %i.ka = and i8 %i.jz, 15                        ; 3 uses
  %i.kb = zext nneg i8 %i.ka to i32               ; 2 uses
  br i1 %i.ix, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i
  %i.kc = getelementptr inbounds nuw i8, ptr %.078159.i.i.i, i64 1
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !125
  %i.ke = and i8 %i.kd, 15
  %i.kf = zext nneg i8 %i.ke to i32
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i
  %i.kg = phi i32 [ %i.kf, %bb.at ], [ 15, %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i ] ; 6 uses
  %i.kh = phi i64 [ 2, %bb.at ], [ 1, %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i ] ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.078159.i.i.i, i64 %i.kh ; 8 uses
  %i.kj = load i32, ptr %i.iz, align 8, !tbaa !143 ; 5 uses
  %i.kk = icmp sgt i32 %i.kj, 0
  %.pre.i59.i.i = load i8, ptr %i.iq, align 4, !tbaa !147, !range !145 ; 2 uses
  %i.kl = trunc nuw i8 %.pre.i59.i.i to i1        ; 4 uses
  %i.km = select i1 %i.kl, i64 %indvars.iv184.i.i.i, i64 0 ; 4 uses
  br i1 %i.kk, label %iter.check, label %.preheader136.thread.i.i.i

.preheader136.thread.i.i.i:                       ; preds = %bb.au
  %i.kn = getelementptr inbounds nuw [240 x i8], ptr %i.iy, i64 %i.km ; 4 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 200 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 136 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 144 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kn, i64 204 ; 3 uses
  %i.ks = icmp eq i8 %i.ka, 0                     ; 2 uses
  %i.kt = icmp eq i32 %i.kg, 0                    ; 2 uses
  %i.ku = load i8, ptr %i.ja, align 1, !range !145
  %i.kv = trunc nuw i8 %i.ku to i1
  store i32 1, ptr %i.ko, align 4, !tbaa !81
  store i32 0, ptr %i.kr, align 4, !tbaa !81
  br i1 %i.kl, label %bb.az, label %.thread68.split.preheader.i.i.i.i

iter.check:                                       ; preds = %bb.au
  %i.kw = getelementptr inbounds nuw [240 x i8], ptr %.0.val.i.i, i64 %i.km
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 184 ; 11 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.kj to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %i.kj, 16
  br i1 %min.iters.check, label %.preheader135.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ky = mul i64 %i.km, 240
  %i.kz = add i64 %i.kh, %.078159.i.i.i282
  %i.la = add i64 %i.ky, %.0.val.i.i281
  %i.lb = sub i64 %i.la, %i.kz
  %17 = add i64 %i.lb, 183
  %diff.check = icmp ult i64 %17, 255
  br i1 %diff.check, label %.preheader135.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check283 = icmp ult i32 %i.kj, 256
  br i1 %min.iters.check283, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.lc = and i64 %wide.trip.count.i.i.i, 240
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483392 ; 5 uses
  %i.ld = getelementptr i8, ptr %i.ki, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ki, i64 %index ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.kx, i64 %index ; 4 uses
  %i.lf = getelementptr i8, ptr %next.gep, i64 64
  %i.lg = getelementptr i8, ptr %next.gep, i64 128
  %i.lh = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <64 x i8>, ptr %next.gep, align 1, !tbaa !125
  %wide.load284 = load <64 x i8>, ptr %i.lf, align 1, !tbaa !125
  %wide.load285 = load <64 x i8>, ptr %i.lg, align 1, !tbaa !125
  %wide.load286 = load <64 x i8>, ptr %i.lh, align 1, !tbaa !125
  %i.li = and <64 x i8> %wide.load, splat (i8 15)
  %i.lj = and <64 x i8> %wide.load284, splat (i8 15)
  %i.lk = and <64 x i8> %wide.load285, splat (i8 15)
  %i.ll = and <64 x i8> %wide.load286, splat (i8 15)
  %i.lm = getelementptr inbounds nuw i8, ptr %i.le, i64 64
  %i.ln = getelementptr inbounds nuw i8, ptr %i.le, i64 128
  %i.lo = getelementptr inbounds nuw i8, ptr %i.le, i64 192
  store <64 x i8> %i.li, ptr %i.le, align 1, !tbaa !166
  store <64 x i8> %i.lj, ptr %i.lm, align 1, !tbaa !166
  store <64 x i8> %i.lk, ptr %i.ln, align 1, !tbaa !166
  store <64 x i8> %i.ll, ptr %i.lo, align 1, !tbaa !166
  %index.next = add nuw i64 %index, 256           ; 2 uses
  %i.lp = icmp eq i64 %index.next, %n.vec
  br i1 %i.lp, label %middle.block, label %vector.body, !llvm.loop !347

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %.preheader136.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.lc, 0
  br i1 %min.epilog.iters.check, label %.preheader135.i.i.i.preheader, label %vec.epilog.ph, !prof !187

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec287 = and i64 %wide.trip.count.i.i.i, 2147483632 ; 4 uses
  %i.lq = getelementptr i8, ptr %i.ki, i64 %n.vec287 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index288 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next291, %vec.epilog.vector.body ] ; 3 uses
  %next.gep289 = getelementptr i8, ptr %i.ki, i64 %index288
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kx, i64 %index288
  %wide.load290 = load <16 x i8>, ptr %next.gep289, align 1, !tbaa !125
  %i.ls = and <16 x i8> %wide.load290, splat (i8 15)
  store <16 x i8> %i.ls, ptr %i.lr, align 1, !tbaa !166
  %index.next291 = add nuw i64 %index288, 16      ; 2 uses
  %i.lt = icmp eq i64 %index.next291, %n.vec287
  br i1 %i.lt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !348

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n292 = icmp eq i64 %n.vec287, %wide.trip.count.i.i.i
  br i1 %cmp.n292, label %.preheader136.i.i.i, label %.preheader135.i.i.i.preheader

.preheader135.i.i.i.preheader:                    ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec287, %vec.epilog.middle.block ] ; 3 uses
  %.1140.i.i.i.ph = phi ptr [ %i.ki, %iter.check ], [ %i.ki, %vector.memcheck ], [ %i.ld, %vec.epilog.iter.check ], [ %i.lq, %vec.epilog.middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 7   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader135.i.i.i.prol.loopexit, label %.preheader135.i.i.i.prol

.preheader135.i.i.i.prol:                         ; preds = %.preheader135.i.i.i.preheader, %.preheader135.i.i.i.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %.preheader135.i.i.i.prol ], [ %indvars.iv.i.i.i.ph, %.preheader135.i.i.i.preheader ] ; 2 uses
  %.1140.i.i.i.prol = phi ptr [ %i.lx, %.preheader135.i.i.i.prol ], [ %.1140.i.i.i.ph, %.preheader135.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader135.i.i.i.prol ], [ 0, %.preheader135.i.i.i.preheader ]
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kx, i64 %indvars.iv.i.i.i.prol
  %i.lv = load i8, ptr %.1140.i.i.i.prol, align 1, !tbaa !125
  %i.lw = and i8 %i.lv, 15
  store i8 %i.lw, ptr %i.lu, align 1, !tbaa !166
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.1140.i.i.i.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader135.i.i.i.prol.loopexit, label %.preheader135.i.i.i.prol, !llvm.loop !349

.preheader135.i.i.i.prol.loopexit:                ; preds = %.preheader135.i.i.i.prol, %.preheader135.i.i.i.preheader
  %.lcssa502.unr = phi ptr [ poison, %.preheader135.i.i.i.preheader ], [ %i.lx, %.preheader135.i.i.i.prol ]
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.preheader135.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.preheader135.i.i.i.prol ]
  %.1140.i.i.i.unr = phi ptr [ %.1140.i.i.i.ph, %.preheader135.i.i.i.preheader ], [ %i.lx, %.preheader135.i.i.i.prol ]
  %i.ly = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.lz = icmp ugt i64 %i.ly, -8
  br i1 %i.lz, label %.preheader136.i.i.i, label %.preheader135.i.i.i

.preheader136.i.i.i:                              ; preds = %.preheader135.i.i.i.prol.loopexit, %.preheader135.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa280 = phi ptr [ %i.lq, %vec.epilog.middle.block ], [ %i.ld, %middle.block ], [ %.lcssa502.unr, %.preheader135.i.i.i.prol.loopexit ], [ %i.nw, %.preheader135.i.i.i ] ; 2 uses
  %i.ma = getelementptr inbounds nuw [240 x i8], ptr %i.iy, i64 %i.km ; 5 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 200 ; 6 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 128
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 136 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 144 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ma, i64 204 ; 2 uses
  %i.mg = icmp eq i8 %i.ka, 0                     ; 2 uses
  %i.mh = icmp eq i32 %i.kg, 0                    ; 2 uses
  %i.mi = load i8, ptr %i.ja, align 1, !range !145
  %i.mj = trunc nuw i8 %i.mi to i1                ; 2 uses
  store i32 1, ptr %i.mb, align 4, !tbaa !81
  %.not.i61.i.i = icmp eq i32 %i.kj, 1
  br i1 %.not.i61.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.preheader135.i.i.i:                              ; preds = %.preheader135.i.i.i.prol.loopexit, %.preheader135.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.7, %.preheader135.i.i.i ], [ %indvars.iv.i.i.i.unr, %.preheader135.i.i.i.prol.loopexit ] ; 9 uses
  %.1140.i.i.i = phi ptr [ %i.nw, %.preheader135.i.i.i ], [ %.1140.i.i.i.unr, %.preheader135.i.i.i.prol.loopexit ] ; 9 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.kx, i64 %indvars.iv.i.i.i
  %i.ml = load i8, ptr %.1140.i.i.i, align 1, !tbaa !125
  %i.mm = and i8 %i.ml, 15
  store i8 %i.mm, ptr %i.mk, align 1, !tbaa !166
  %i.mn = getelementptr inbounds nuw i8, ptr %.1140.i.i.i, i64 1
  %i.mo = getelementptr inbounds nuw i8, ptr %i.kx, i64 %indvars.iv.i.i.i
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 1
  %i.mq = load i8, ptr %i.mn, align 1, !tbaa !125
  %i.mr = and i8 %i.mq, 15
  store i8 %i.mr, ptr %i.mp, align 1, !tbaa !166
  %i.ms = getelementptr inbounds nuw i8, ptr %.1140.i.i.i, i64 2
  %i.mt = getelementptr inbounds nuw i8, ptr %i.kx, i64 %indvars.iv.i.i.i
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 2
  %i.mv = load i8, ptr %i.ms, align 1, !tbaa !125
  %i.mw = and i8 %i.mv, 15
  store i8 %i.mw, ptr %i.mu, align 1, !tbaa !166
  %i.mx = getelementptr inbounds nuw i8, ptr %.1140.i.i.i, i64 3
  %i.my = getelementptr inbounds nuw i8, ptr %i.kx, i64 %indvars.iv.i.i.i
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 3
  %i.na = load i8, ptr %i.mx, align 1, !tbaa !125
  %i.nb = and i8 %i.na, 15
  store i8 %i.nb, ptr %i.mz, align 1, !tbaa !166
  %i.nc = getelementptr inbounds nuw i8, ptr %.1140.i.i.i, i64 4
  %i.nd = getelementptr inbounds nuw i8, ptr %i.kx, i64 %indvars.iv.i.i.i
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 4
  %i.nf = load i8, ptr %i.nc, align 1, !tbaa !125
  %i.ng = and i8 %i.nf, 15
  store i8 %i.ng, ptr %i.ne, align 1, !tbaa !166
  %i.nh = getelementptr inbounds nuw i8, ptr %.1140.i.i.i, i64 5
  %i.ni = getelementptr inbounds nuw i8, ptr %i.kx, i64 %indvars.iv.i.i.i
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 5
  %i.nk = load i8, ptr %i.nh, align 1, !tbaa !125
  %i.nl = and i8 %i.nk, 15
  store i8 %i.nl, ptr %i.nj, align 1, !tbaa !166
  %i.nm = getelementptr inbounds nuw i8, ptr %.1140.i.i.i, i64 6
  %i.nn = getelementptr inbounds nuw i8, ptr %i.kx, i64 %indvars.iv.i.i.i
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 6
  %i.np = load i8, ptr %i.nm, align 1, !tbaa !125
  %i.nq = and i8 %i.np, 15
  store i8 %i.nq, ptr %i.no, align 1, !tbaa !166
  %i.nr = getelementptr inbounds nuw i8, ptr %.1140.i.i.i, i64 7
  %i.ns = getelementptr inbounds nuw i8, ptr %i.kx, i64 %indvars.iv.i.i.i
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 7
  %i.nu = load i8, ptr %i.nr, align 1, !tbaa !125
  %i.nv = and i8 %i.nu, 15
  store i8 %i.nv, ptr %i.nt, align 1, !tbaa !166
  %indvars.iv.next.i.i.i.7 = add nuw nsw i64 %indvars.iv.i.i.i, 8 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.1140.i.i.i, i64 8 ; 2 uses
  %exitcond.not.i.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.i.7, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.7, label %.preheader136.i.i.i, label %.preheader135.i.i.i, !llvm.loop !350

.lr.ph.i.i.i.i:                                   ; preds = %.preheader136.i.i.i
  %i.nx = select i1 %i.mj, i32 3, i32 2
  %spec.select259 = select i1 %i.kl, i32 0, i32 %i.nx
  br label %select.unfold.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.ay, %.preheader136.i.i.i
  %.066.lcssa.i.i.i.i = phi i32 [ 0, %.preheader136.i.i.i ], [ %.167.i.i.i.i, %bb.ay ] ; 3 uses
  %i.ny = add nsw i32 %.066.lcssa.i.i.i.i, 1
  %i.nz = sext i32 %i.ny to i64                   ; 3 uses
  %i.oa = getelementptr inbounds [4 x i8], ptr %i.mb, i64 %i.nz
  store i32 0, ptr %i.oa, align 4, !tbaa !81
  br i1 %i.kl, label %bb.az, label %._crit_edge.i.i..thread68.split.preheader.i.i_crit_edge.i.i

._crit_edge.i.i..thread68.split.preheader.i.i_crit_edge.i.i: ; preds = %._crit_edge.i.i.i.i
  %.pre.i.i = load i32, ptr %i.mb, align 8, !tbaa !81
  br label %.thread68.split.preheader.i.i.i.i

select.unfold.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.ay
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.ay ], [ 1, %.lr.ph.i.i.i.i ] ; 2 uses
  %.06573.i.i.i.i = phi i32 [ %i.ob, %bb.ay ], [ %spec.select259, %.lr.ph.i.i.i.i ] ; 2 uses
  %.06672.i.i.i.i = phi i32 [ %.167.i.i.i.i, %bb.ay ], [ 0, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ob = add nsw i32 %.06573.i.i.i.i, -1
  %i.oc = icmp sgt i32 %.06573.i.i.i.i, 1
  br i1 %i.oc, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %select.unfold.i.i.i
  %i.od = getelementptr inbounds nuw i8, ptr %i.mc, i64 %indvars.iv.i.i.i.i ; 2 uses
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !166
  %i.of = getelementptr i8, ptr %i.od, i64 -1
  %i.og = load i8, ptr %i.of, align 1, !tbaa !166
  %i.oh = icmp eq i8 %i.oe, %i.og
  br i1 %i.oh, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av, %select.unfold.i.i.i
end_hunk_0
begin_hunk_1_@_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE0ENS_10Tablebases8WDLScoreEEET0_RKNS_8PositionEPNS3_10ProbeStateES4_:bb.a
  %.pre.i45.i = load i64, ptr %.phi.trans.insert.i44.i, align 8, !tbaa !85
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i, %bb.z
  %i.ez = phi i64 [ %i.ev, %bb.z ], [ %.pre.i45.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i64 %i.ez, ptr %i.fb, align 8, !tbaa !85, !alias.scope !501
  store ptr %i.es, ptr %i.ep, align 8, !tbaa !130
  store i64 0, ptr %i.fa, align 8, !tbaa !85
  store i8 0, ptr %i.es, align 8, !tbaa !125
  %i.fc = load ptr, ptr %2, align 8, !tbaa !130   ; 6 uses
  %i.fd = icmp eq ptr %i.fc, %i.ah
  %i.fe = load ptr, ptr %7, align 8, !tbaa !130   ; 5 uses
  %i.ff = icmp eq ptr %i.fe, %i.eq                ; 2 uses
  br i1 %i.fd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i
  br i1 %i.ff, label %bb.aa, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i
  br i1 %i.ff, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.fg = load i64, ptr %i.fb, align 8, !tbaa !85 ; 3 uses
  %i.fh = icmp ult i64 %i.fg, 16
  call void @llvm.assume(i1 %i.fh)
  switch i64 %i.fg, label %bb.ac [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.fi = load i8, ptr %i.fe, align 1, !tbaa !125
  store i8 %i.fi, ptr %i.fc, align 1, !tbaa !125
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fc, ptr align 1 %i.fe, i64 %i.fg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.fj = load i64, ptr %i.fb, align 8, !tbaa !85 ; 2 uses
  store i64 %i.fj, ptr %i.ai, align 8, !tbaa !85
  %i.fk = load ptr, ptr %2, align 8, !tbaa !130
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fj
  store i8 0, ptr %i.fl, align 1, !tbaa !125
  %.pre.i46.i = load ptr, ptr %7, align 8, !tbaa !130
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.fe, ptr %2, align 8, !tbaa !130
  %i.fm = load <2 x i64>, ptr %i.fb, align 8, !tbaa !125
  store <2 x i64> %i.fm, ptr %i.ai, align 8, !tbaa !125
  br label %bb.ae

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.fn = load i64, ptr %i.ah, align 8, !tbaa !125
  store ptr %i.fe, ptr %2, align 8, !tbaa !130
  %i.fo = load <2 x i64>, ptr %i.fb, align 8, !tbaa !125
  store <2 x i64> %i.fo, ptr %i.ai, align 8, !tbaa !125
  %.not.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.fc, ptr %7, align 8, !tbaa !130
  store i64 %i.fn, ptr %i.eq, align 8, !tbaa !125
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.eq, ptr %7, align 8, !tbaa !130
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.ae, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.fp = phi ptr [ %i.fc, %bb.ad ], [ %i.eq, %bb.ae ], [ %.pre.i46.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.fb, align 8, !tbaa !85
  store i8 0, ptr %i.fp, align 1, !tbaa !125
  %i.fq = load ptr, ptr %7, align 8, !tbaa !130   ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.eq
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.fs = load i64, ptr %i.eq, align 8, !tbaa !125
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i
  %i.fu = load ptr, ptr %8, align 8, !tbaa !130   ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i
  %i.fx = load i64, ptr %i.fv, align 8, !tbaa !125
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fy) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i
  br i1 %.not25.i, label %.critedge30.i, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i
  %i.fz = load ptr, ptr %10, align 8, !tbaa !130  ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i: ; preds = %.critedge.i
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !125
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i: ; preds = %.critedge.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.critedge29.i

.critedge30.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i
  %i.ge = load ptr, ptr %9, align 8, !tbaa !130   ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i: ; preds = %.critedge30.i
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !125
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
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN9Stockfish12_GLOBAL__N_16TBFileE, i64 24), ptr %11, align 8, !tbaa !102
  %i.gm = getelementptr inbounds nuw i8, ptr %11, i64 288 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN9Stockfish12_GLOBAL__N_16TBFileE, i64 64), ptr %i.gm, align 8, !tbaa !102
  %i.gn = getelementptr inbounds nuw i8, ptr %11, i64 256
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !130 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %11, i64 272 ; 2 uses
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.critedge29.i
  %i.gr = load i64, ptr %i.gp, align 8, !tbaa !125
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gs) #30, !inline_history !6
  br label %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i

_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i:    ; preds = %.critedge29.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_St14basic_ifstreamIcSt11char_traitsIcEE, i64 24), ptr %11, align 8, !tbaa !102
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_St14basic_ifstreamIcSt11char_traitsIcEE, i64 64), ptr %i.gm, align 8, !tbaa !102
  %i.gt = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt13basic_filebufIcSt11char_traitsIcEE, i64 16), ptr %i.gt, align 8, !tbaa !102
  %i.gu = call noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.gt) #26, !inline_history !6 ; 0 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %11, i64 120
  call void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.gv) #26, !inline_history !6
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.gt, align 8, !tbaa !102
  %i.gw = getelementptr inbounds nuw i8, ptr %11, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gw) #26, !inline_history !6
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_Si, i64 24), ptr %11, align 8, !tbaa !102
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_Si, i64 64), ptr %i.gm, align 8, !tbaa !102
  %i.gx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.gx, align 8, !tbaa !156
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.gm) #26, !inline_history !157
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %.not26.i = icmp eq ptr %i.gl, null
  br i1 %.not26.i, label %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_Ph.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  %i.gz = load i64, ptr %i.au, align 8, !tbaa !150
  %i.ha = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 40
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !154
  %.not.i59.i = icmp eq i64 %i.gz, %i.hb          ; 2 uses
  %i.hc = select i1 %.not.i59.i, i32 1, i32 2     ; 16 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 52 ; 6 uses
  %i.he = load i8, ptr %i.hd, align 4, !tbaa !144, !range !145, !noundef !146
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
  br label %.preheader141.i.i

.preheader141.i.i:                                ; preds = %bb.ao, %bb.af
  %indvars.iv194.i.i = phi i64 [ 0, %bb.af ], [ %indvars.iv.next195.i.i, %bb.ao ] ; 3 uses
  %.087150.i.i = phi ptr [ %i.gy, %bb.af ], [ %.1.lcssa.i.i, %bb.ao ] ; 7 uses
  %.087150.i.i25 = ptrtoaddr ptr %.087150.i.i to i64
  %i.hr = and i64 %indvars.iv194.i.i, 255         ; 3 uses
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ao
  %i.hs = ptrtoint ptr %.1.lcssa.i.i to i64
  %i.ht = and i64 %i.hs, 1
  %i.hu = getelementptr inbounds nuw i8, ptr %.1.lcssa.i.i, i64 %i.ht
  br label %.preheader137.i.i

bb.ah:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.hv = load i8, ptr %.087150.i.i, align 1, !tbaa !125
  %i.hw = and i8 %i.hv, 15
  %i.hx = zext nneg i8 %i.hw to i32
  store i32 %i.hx, ptr %i.d, align 16, !tbaa !81
  br i1 %i.hj, label %bb.am, label %bb.al

bb.ai:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i, %.preheader141.i.i
  %.086142.i.i = phi i32 [ 0, %.preheader141.i.i ], [ %i.iu, %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i ] ; 2 uses
  %i.hy = and i32 %.086142.i.i, 1
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [960 x i8], ptr %i.hk, i64 %i.hz
  %i.ib = load i8, ptr %i.hd, align 4, !tbaa !144, !range !145, !noundef !146
  %i.ic = trunc nuw i8 %i.ib to i1
  %i.id = select i1 %i.ic, i64 %i.hr, i64 0
  %i.ie = getelementptr inbounds nuw [240 x i8], ptr %i.ia, i64 %i.id ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ie, i8 0, i64 80, i1 false)
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 80 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !182 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 96
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !183
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
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !185 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ie, i64 120
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !186
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
  br i1 %exitcond.not.i.i, label %bb.ah, label %bb.ai, !llvm.loop !445

bb.al:                                            ; preds = %bb.ah
  store i32 15, ptr %i.hl, align 4, !tbaa !81
  %i.iv = load i8, ptr %.087150.i.i, align 1, !tbaa !125
  %i.iw = lshr i8 %i.iv, 4
  %i.ix = zext nneg i8 %i.iw to i32
  store i32 %i.ix, ptr %i.hm, align 8, !tbaa !81
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  %i.iy = getelementptr inbounds nuw i8, ptr %.087150.i.i, i64 1 ; 2 uses
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !125
  %i.ja = and i8 %i.iz, 15
  %i.jb = zext nneg i8 %i.ja to i32
  store i32 %i.jb, ptr %i.hl, align 4, !tbaa !81
  %i.jc = load i8, ptr %.087150.i.i, align 1, !tbaa !125
  %i.jd = lshr i8 %i.jc, 4
  %i.je = zext nneg i8 %i.jd to i32
  store i32 %i.je, ptr %i.hm, align 8, !tbaa !81
  %i.jf = load i8, ptr %i.iy, align 1, !tbaa !125
  %i.jg = lshr i8 %i.jf, 4
  %i.jh = zext nneg i8 %i.jg to i32
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ji = phi i64 [ 2, %bb.am ], [ 1, %bb.al ]    ; 3 uses
  %i.jj = phi i32 [ %i.jh, %bb.am ], [ 15, %bb.al ]
  store i32 %i.jj, ptr %i.hn, align 4, !tbaa !81
  %i.jk = getelementptr i8, ptr %.087150.i.i, i64 %i.ji ; 14 uses
  %i.jl = load i32, ptr %i.ho, align 8, !tbaa !142 ; 6 uses
  %i.jm = icmp sgt i32 %i.jl, 0
  br i1 %i.jm, label %.preheader139.preheader.i.i, label %..preheader140_crit_edge.i.i

..preheader140_crit_edge.i.i:                     ; preds = %bb.an
  %.pre.i60.i = load i8, ptr %i.hd, align 4, !tbaa !144, !range !145
  br label %.preheader140.i.i

.preheader139.preheader.i.i:                      ; preds = %bb.an
  %wide.trip.count.i.i = zext nneg i32 %i.jl to i64 ; 18 uses
  %i.jn = load i8, ptr %i.hd, align 4, !tbaa !144, !range !145, !noundef !146 ; 9 uses
  %i.jo = trunc nuw i8 %i.jn to i1
  %i.jp = select i1 %i.jo, i64 %i.hr, i64 0       ; 4 uses
  %i.jq = getelementptr [240 x i8], ptr %i.hk, i64 %i.jp
  %i.jr = getelementptr i8, ptr %i.jq, i64 128    ; 23 uses
  %i.js = getelementptr inbounds nuw [240 x i8], ptr %.0.val.i, i64 %i.jp
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 1144 ; 11 uses
  br i1 %.not.i59.i, label %iter.check, label %iter.check53

iter.check53:                                     ; preds = %.preheader139.preheader.i.i
  %min.iters.check40 = icmp ult i32 %i.jl, 8
  br i1 %min.iters.check40, label %.loopexit.i.i.preheader, label %vector.memcheck37

vector.memcheck37:                                ; preds = %iter.check53
  %i.ju = mul nuw nsw i64 %i.jp, 240
  %12 = getelementptr i8, ptr %.0.val.i, i64 %i.ju
  %i.jv = getelementptr i8, ptr %12, i64 %wide.trip.count.i.i
  %scevgep38 = getelementptr i8, ptr %i.jv, i64 1144
  %i.jw = getelementptr i8, ptr %.087150.i.i, i64 %i.ji
  %scevgep39 = getelementptr i8, ptr %i.jw, i64 %wide.trip.count.i.i
  %bound0 = icmp ult ptr %i.jr, %scevgep39
  %bound1 = icmp ult ptr %i.jk, %scevgep38
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.loopexit.i.i.preheader, label %vector.main.loop.iter.check41

vector.main.loop.iter.check41:                    ; preds = %vector.memcheck37
  %min.iters.check42 = icmp ult i32 %i.jl, 64
  br i1 %min.iters.check42, label %vec.epilog.ph57, label %vector.ph43

vector.ph43:                                      ; preds = %vector.main.loop.iter.check41
  %i.jx = and i64 %wide.trip.count.i.i, 56
  %n.vec44 = and i64 %wide.trip.count.i.i, 2147483584 ; 5 uses
  %i.jy = getelementptr i8, ptr %i.jk, i64 %n.vec44 ; 2 uses
  br label %vector.body45

vector.body45:                                    ; preds = %vector.ph43, %vector.body45
  %index46 = phi i64 [ 0, %vector.ph43 ], [ %index.next50, %vector.body45 ] ; 4 uses
  %next.gep47 = getelementptr i8, ptr %i.jk, i64 %index46
  %wide.load48 = load <64 x i8>, ptr %next.gep47, align 1, !tbaa !125, !alias.scope !502 ; 2 uses
  %i.jz = and <64 x i8> %wide.load48, splat (i8 15)
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jr, i64 %index46
  store <64 x i8> %i.jz, ptr %i.ka, align 1, !tbaa !166, !alias.scope !503, !noalias !502
  %i.kb = lshr <64 x i8> %wide.load48, splat (i8 4)
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jt, i64 %index46
  store <64 x i8> %i.kb, ptr %i.kc, align 1, !tbaa !166, !alias.scope !503, !noalias !502
  %index.next50 = add nuw i64 %index46, 64        ; 2 uses
  %i.kd = icmp eq i64 %index.next50, %n.vec44
  br i1 %i.kd, label %middle.block51, label %vector.body45, !llvm.loop !449

middle.block51:                                   ; preds = %vector.body45
  %cmp.n52 = icmp eq i64 %n.vec44, %wide.trip.count.i.i
  br i1 %cmp.n52, label %.preheader140.i.i, label %vec.epilog.iter.check54

vec.epilog.iter.check54:                          ; preds = %middle.block51
  %min.epilog.iters.check56 = icmp eq i64 %i.jx, 0
  br i1 %min.epilog.iters.check56, label %.loopexit.i.i.preheader, label %vec.epilog.ph57, !prof !504

vec.epilog.ph57:                                  ; preds = %vector.main.loop.iter.check41, %vec.epilog.iter.check54
  %vec.epilog.resume.val58 = phi i64 [ %n.vec44, %vec.epilog.iter.check54 ], [ 0, %vector.main.loop.iter.check41 ]
  %n.vec59 = and i64 %wide.trip.count.i.i, 2147483640 ; 4 uses
  %i.ke = getelementptr i8, ptr %i.jk, i64 %n.vec59 ; 2 uses
  br label %vec.epilog.vector.body60

vec.epilog.vector.body60:                         ; preds = %vec.epilog.vector.body60, %vec.epilog.ph57
  %index61 = phi i64 [ %vec.epilog.resume.val58, %vec.epilog.ph57 ], [ %index.next65, %vec.epilog.vector.body60 ] ; 4 uses
  %next.gep62 = getelementptr i8, ptr %i.jk, i64 %index61
  %wide.load63 = load <8 x i8>, ptr %next.gep62, align 1, !tbaa !125, !alias.scope !502 ; 2 uses
  %i.kf = and <8 x i8> %wide.load63, splat (i8 15)
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jr, i64 %index61
  store <8 x i8> %i.kf, ptr %i.kg, align 1, !tbaa !166, !alias.scope !503, !noalias !502
  %i.kh = lshr <8 x i8> %wide.load63, splat (i8 4)
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jt, i64 %index61
  store <8 x i8> %i.kh, ptr %i.ki, align 1, !tbaa !166, !alias.scope !503, !noalias !502
  %index.next65 = add nuw i64 %index61, 8         ; 2 uses
  %i.kj = icmp eq i64 %index.next65, %n.vec59
  br i1 %i.kj, label %vec.epilog.middle.block66, label %vec.epilog.vector.body60, !llvm.loop !450

vec.epilog.middle.block66:                        ; preds = %vec.epilog.vector.body60
  %cmp.n67 = icmp eq i64 %n.vec59, %wide.trip.count.i.i
  br i1 %cmp.n67, label %.preheader140.i.i, label %.loopexit.i.i.preheader

.loopexit.i.i.preheader:                          ; preds = %iter.check53, %vector.memcheck37, %vec.epilog.iter.check54, %vec.epilog.middle.block66
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check53 ], [ 0, %vector.memcheck37 ], [ %n.vec44, %vec.epilog.iter.check54 ], [ %n.vec59, %vec.epilog.middle.block66 ] ; 3 uses
  %.1144.i.i.ph = phi ptr [ %i.jk, %iter.check53 ], [ %i.jk, %vector.memcheck37 ], [ %i.jy, %vec.epilog.iter.check54 ], [ %i.ke, %vec.epilog.middle.block66 ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 7     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.prol.loopexit, label %.loopexit.i.i.prol

.loopexit.i.i.prol:                               ; preds = %.loopexit.i.i.preheader, %.loopexit.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.loopexit.i.i.prol ], [ %indvars.iv.i.i.ph, %.loopexit.i.i.preheader ] ; 3 uses
  %.1144.i.i.prol = phi ptr [ %i.kq, %.loopexit.i.i.prol ], [ %.1144.i.i.ph, %.loopexit.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.loopexit.i.i.prol ], [ 0, %.loopexit.i.i.preheader ]
  %i.kk = load i8, ptr %.1144.i.i.prol, align 1, !tbaa !125
  %i.kl = and i8 %i.kk, 15
  %i.km = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.i.prol
  store i8 %i.kl, ptr %i.km, align 1, !tbaa !166
  %i.kn = load i8, ptr %.1144.i.i.prol, align 1, !tbaa !125
  %i.ko = lshr i8 %i.kn, 4
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv.i.i.prol
  store i8 %i.ko, ptr %i.kp, align 1, !tbaa !166
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.1144.i.i.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.loopexit.i.i.prol.loopexit, label %.loopexit.i.i.prol, !llvm.loop !451

.loopexit.i.i.prol.loopexit:                      ; preds = %.loopexit.i.i.prol, %.loopexit.i.i.preheader
  %.lcssa280.unr = phi ptr [ poison, %.loopexit.i.i.preheader ], [ %i.kq, %.loopexit.i.i.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.loopexit.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.loopexit.i.i.prol ]
  %.1144.i.i.unr = phi ptr [ %.1144.i.i.ph, %.loopexit.i.i.preheader ], [ %i.kq, %.loopexit.i.i.prol ]
  %i.kr = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.ks = icmp ugt i64 %i.kr, -8
  br i1 %i.ks, label %.preheader140.i.i, label %.loopexit.i.i

iter.check:                                       ; preds = %.preheader139.preheader.i.i
  %min.iters.check = icmp ult i32 %i.jl, 16
  br i1 %min.iters.check, label %.preheader139.preheader.i.split.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.kt = mul nuw nsw i64 %i.jp, 240
  %i.ku = add i64 %i.ji, %.087150.i.i25
  %i.kv = add i64 %i.kt, %.0.val.i24
  %i.kw = sub i64 %i.kv, %i.ku
  %13 = add i64 %i.kw, 183
  %diff.check = icmp ult i64 %13, 255
  br i1 %diff.check, label %.preheader139.preheader.i.split.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check26 = icmp ult i32 %i.jl, 256
  br i1 %min.iters.check26, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kx = and i64 %wide.trip.count.i.i, 240
  %n.vec = and i64 %wide.trip.count.i.i, 2147483392 ; 5 uses
  %i.ky = getelementptr i8, ptr %i.jk, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.jk, i64 %index ; 4 uses
  %i.kz = getelementptr i8, ptr %next.gep, i64 64
  %i.la = getelementptr i8, ptr %next.gep, i64 128
  %i.lb = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <64 x i8>, ptr %next.gep, align 1, !tbaa !125
  %wide.load27 = load <64 x i8>, ptr %i.kz, align 1, !tbaa !125
  %wide.load28 = load <64 x i8>, ptr %i.la, align 1, !tbaa !125
  %wide.load29 = load <64 x i8>, ptr %i.lb, align 1, !tbaa !125
  %i.lc = and <64 x i8> %wide.load, splat (i8 15)
  %i.ld = and <64 x i8> %wide.load27, splat (i8 15)
  %i.le = and <64 x i8> %wide.load28, splat (i8 15)
  %i.lf = and <64 x i8> %wide.load29, splat (i8 15)
  %i.lg = getelementptr inbounds nuw i8, ptr %i.jr, i64 %index ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 64
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 128
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 192
  store <64 x i8> %i.lc, ptr %i.lg, align 1, !tbaa !166
  store <64 x i8> %i.ld, ptr %i.lh, align 1, !tbaa !166
  store <64 x i8> %i.le, ptr %i.li, align 1, !tbaa !166
  store <64 x i8> %i.lf, ptr %i.lj, align 1, !tbaa !166
  %index.next = add nuw i64 %index, 256           ; 2 uses
  %i.lk = icmp eq i64 %index.next, %n.vec
  br i1 %i.lk, label %middle.block, label %vector.body, !llvm.loop !452

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %.preheader140.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.kx, 0
  br i1 %min.epilog.iters.check, label %.preheader139.preheader.i.split.us.i.preheader, label %vec.epilog.ph, !prof !187

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec30 = and i64 %wide.trip.count.i.i, 2147483632 ; 4 uses
  %i.ll = getelementptr i8, ptr %i.jk, i64 %n.vec30 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index31 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next34, %vec.epilog.vector.body ] ; 3 uses
  %next.gep32 = getelementptr i8, ptr %i.jk, i64 %index31
  %wide.load33 = load <16 x i8>, ptr %next.gep32, align 1, !tbaa !125
  %i.lm = and <16 x i8> %wide.load33, splat (i8 15)
  %i.ln = getelementptr inbounds nuw i8, ptr %i.jr, i64 %index31
  store <16 x i8> %i.lm, ptr %i.ln, align 1, !tbaa !166
  %index.next34 = add nuw i64 %index31, 16        ; 2 uses
  %i.lo = icmp eq i64 %index.next34, %n.vec30
  br i1 %i.lo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !453

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n35 = icmp eq i64 %n.vec30, %wide.trip.count.i.i
  br i1 %cmp.n35, label %.preheader140.i.i, label %.preheader139.preheader.i.split.us.i.preheader

.preheader139.preheader.i.split.us.i.preheader:   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.us.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec30, %vec.epilog.middle.block ] ; 3 uses
  %.1144.i.us.i.ph = phi ptr [ %i.jk, %iter.check ], [ %i.jk, %vector.memcheck ], [ %i.ky, %vec.epilog.iter.check ], [ %i.ll, %vec.epilog.middle.block ] ; 2 uses
  %xtraiter282 = and i64 %wide.trip.count.i.i, 7  ; 2 uses
  %lcmp.mod283.not = icmp eq i64 %xtraiter282, 0
  br i1 %lcmp.mod283.not, label %.preheader139.preheader.i.split.us.i.prol.loopexit, label %.preheader139.preheader.i.split.us.i.prol

.preheader139.preheader.i.split.us.i.prol:        ; preds = %.preheader139.preheader.i.split.us.i.preheader, %.preheader139.preheader.i.split.us.i.prol
  %indvars.iv.i.us.i.prol = phi i64 [ %indvars.iv.next.i.us.i.prol, %.preheader139.preheader.i.split.us.i.prol ], [ %indvars.iv.i.us.i.ph, %.preheader139.preheader.i.split.us.i.preheader ] ; 2 uses
  %.1144.i.us.i.prol = phi ptr [ %i.ls, %.preheader139.preheader.i.split.us.i.prol ], [ %.1144.i.us.i.ph, %.preheader139.preheader.i.split.us.i.preheader ] ; 2 uses
  %prol.iter284 = phi i64 [ %prol.iter284.next, %.preheader139.preheader.i.split.us.i.prol ], [ 0, %.preheader139.preheader.i.split.us.i.preheader ]
  %i.lp = load i8, ptr %.1144.i.us.i.prol, align 1, !tbaa !125
  %i.lq = and i8 %i.lp, 15
  %i.lr = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i.prol
  store i8 %i.lq, ptr %i.lr, align 1, !tbaa !166
  %indvars.iv.next.i.us.i.prol = add nuw nsw i64 %indvars.iv.i.us.i.prol, 1 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.1144.i.us.i.prol, i64 1 ; 3 uses
  %prol.iter284.next = add i64 %prol.iter284, 1   ; 2 uses
  %prol.iter284.cmp.not = icmp eq i64 %prol.iter284.next, %xtraiter282
  br i1 %prol.iter284.cmp.not, label %.preheader139.preheader.i.split.us.i.prol.loopexit, label %.preheader139.preheader.i.split.us.i.prol, !llvm.loop !454

.preheader139.preheader.i.split.us.i.prol.loopexit: ; preds = %.preheader139.preheader.i.split.us.i.prol, %.preheader139.preheader.i.split.us.i.preheader
  %.lcssa281.unr = phi ptr [ poison, %.preheader139.preheader.i.split.us.i.preheader ], [ %i.ls, %.preheader139.preheader.i.split.us.i.prol ]
  %indvars.iv.i.us.i.unr = phi i64 [ %indvars.iv.i.us.i.ph, %.preheader139.preheader.i.split.us.i.preheader ], [ %indvars.iv.next.i.us.i.prol, %.preheader139.preheader.i.split.us.i.prol ]
  %.1144.i.us.i.unr = phi ptr [ %.1144.i.us.i.ph, %.preheader139.preheader.i.split.us.i.preheader ], [ %i.ls, %.preheader139.preheader.i.split.us.i.prol ]
  %i.lt = sub nsw i64 %indvars.iv.i.us.i.ph, %wide.trip.count.i.i
  %i.lu = icmp ugt i64 %i.lt, -8
  br i1 %i.lu, label %.preheader140.i.i, label %.preheader139.preheader.i.split.us.i

.preheader139.preheader.i.split.us.i:             ; preds = %.preheader139.preheader.i.split.us.i.prol.loopexit, %.preheader139.preheader.i.split.us.i
  %indvars.iv.i.us.i = phi i64 [ %indvars.iv.next.i.us.i.7, %.preheader139.preheader.i.split.us.i ], [ %indvars.iv.i.us.i.unr, %.preheader139.preheader.i.split.us.i.prol.loopexit ] ; 9 uses
  %.1144.i.us.i = phi ptr [ %i.nh, %.preheader139.preheader.i.split.us.i ], [ %.1144.i.us.i.unr, %.preheader139.preheader.i.split.us.i.prol.loopexit ] ; 9 uses
  %i.lv = load i8, ptr %.1144.i.us.i, align 1, !tbaa !125
  %i.lw = and i8 %i.lv, 15
  %i.lx = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  store i8 %i.lw, ptr %i.lx, align 1, !tbaa !166
  %i.ly = getelementptr inbounds nuw i8, ptr %.1144.i.us.i, i64 1
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !125
  %i.ma = and i8 %i.lz, 15
  %i.mb = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 1
  store i8 %i.ma, ptr %i.mc, align 1, !tbaa !166
  %i.md = getelementptr inbounds nuw i8, ptr %.1144.i.us.i, i64 2
  %i.me = load i8, ptr %i.md, align 1, !tbaa !125
  %i.mf = and i8 %i.me, 15
  %i.mg = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 2
  store i8 %i.mf, ptr %i.mh, align 1, !tbaa !166
  %i.mi = getelementptr inbounds nuw i8, ptr %.1144.i.us.i, i64 3
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !125
  %i.mk = and i8 %i.mj, 15
  %i.ml = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 3
  store i8 %i.mk, ptr %i.mm, align 1, !tbaa !166
  %i.mn = getelementptr inbounds nuw i8, ptr %.1144.i.us.i, i64 4
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !125
  %i.mp = and i8 %i.mo, 15
  %i.mq = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  store i8 %i.mp, ptr %i.mr, align 1, !tbaa !166
  %i.ms = getelementptr inbounds nuw i8, ptr %.1144.i.us.i, i64 5
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !125
  %i.mu = and i8 %i.mt, 15
  %i.mv = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 5
  store i8 %i.mu, ptr %i.mw, align 1, !tbaa !166
  %i.mx = getelementptr inbounds nuw i8, ptr %.1144.i.us.i, i64 6
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !125
  %i.mz = and i8 %i.my, 15
  %i.na = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 6
  store i8 %i.mz, ptr %i.nb, align 1, !tbaa !166
  %i.nc = getelementptr inbounds nuw i8, ptr %.1144.i.us.i, i64 7
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !125
  %i.ne = and i8 %i.nd, 15
  %i.nf = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 7
  store i8 %i.ne, ptr %i.ng, align 1, !tbaa !166
  %indvars.iv.next.i.us.i.7 = add nuw nsw i64 %indvars.iv.i.us.i, 8 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.1144.i.us.i, i64 8 ; 2 uses
  %exitcond188.not.i.us.i.7 = icmp eq i64 %indvars.iv.next.i.us.i.7, %wide.trip.count.i.i
  br i1 %exitcond188.not.i.us.i.7, label %.preheader140.i.i, label %.preheader139.preheader.i.split.us.i, !llvm.loop !455

.preheader140.i.i:                                ; preds = %.loopexit.i.i.prol.loopexit, %.loopexit.i.i, %.preheader139.preheader.i.split.us.i.prol.loopexit, %.preheader139.preheader.i.split.us.i, %middle.block51, %vec.epilog.middle.block66, %middle.block, %vec.epilog.middle.block, %..preheader140_crit_edge.i.i
  %i.ni = phi i8 [ %.pre.i60.i, %..preheader140_crit_edge.i.i ], [ %i.jn, %middle.block ], [ %i.jn, %middle.block51 ], [ %i.jn, %vec.epilog.middle.block ], [ %i.jn, %.preheader139.preheader.i.split.us.i.prol.loopexit ], [ %i.jn, %vec.epilog.middle.block66 ], [ %i.jn, %.preheader139.preheader.i.split.us.i ], [ %i.jn, %.loopexit.i.i ], [ %i.jn, %.loopexit.i.i.prol.loopexit ]
  %.1.lcssa.i.i = phi ptr [ %i.jk, %..preheader140_crit_edge.i.i ], [ %i.ky, %middle.block ], [ %i.jy, %middle.block51 ], [ %i.ll, %vec.epilog.middle.block ], [ %i.nh, %.preheader139.preheader.i.split.us.i ], [ %i.ke, %vec.epilog.middle.block66 ], [ %.lcssa281.unr, %.preheader139.preheader.i.split.us.i.prol.loopexit ], [ %.lcssa280.unr, %.loopexit.i.i.prol.loopexit ], [ %i.po, %.loopexit.i.i ] ; 3 uses
  %i.nj = trunc nuw i8 %i.ni to i1                ; 3 uses
  %i.nk = select i1 %i.nj, i64 %i.hr, i64 0
  %invariant.gep.i.i = getelementptr inbounds nuw [240 x i8], ptr %i.hk, i64 %i.nk
  %invariant.gep147.i.i = getelementptr [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_113LeadPawnsSizeE, i64 %indvars.iv194.i.i
  br label %bb.ap

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.prol.loopexit, %.loopexit.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.7, %.loopexit.i.i ], [ %indvars.iv.i.i.unr, %.loopexit.i.i.prol.loopexit ] ; 10 uses
  %.1144.i.i = phi ptr [ %i.po, %.loopexit.i.i ], [ %.1144.i.i.unr, %.loopexit.i.i.prol.loopexit ] ; 10 uses
  %i.nl = load i8, ptr %.1144.i.i, align 1, !tbaa !125
  %i.nm = and i8 %i.nl, 15
  %i.nn = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.i
  store i8 %i.nm, ptr %i.nn, align 1, !tbaa !166
  %i.no = load i8, ptr %.1144.i.i, align 1, !tbaa !125
  %i.np = lshr i8 %i.no, 4
  %i.nq = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv.i.i
  store i8 %i.np, ptr %i.nq, align 1, !tbaa !166
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.1144.i.i, i64 1 ; 2 uses
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !125
  %i.nt = and i8 %i.ns, 15
  %i.nu = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.next.i.i
  store i8 %i.nt, ptr %i.nu, align 1, !tbaa !166
  %i.nv = load i8, ptr %i.nr, align 1, !tbaa !125
  %i.nw = lshr i8 %i.nv, 4
  %i.nx = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv.next.i.i
  store i8 %i.nw, ptr %i.nx, align 1, !tbaa !166
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.1144.i.i, i64 2 ; 2 uses
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !125
  %i.oa = and i8 %i.nz, 15
  %i.ob = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.next.i.i.1
  store i8 %i.oa, ptr %i.ob, align 1, !tbaa !166
  %i.oc = load i8, ptr %i.ny, align 1, !tbaa !125
  %i.od = lshr i8 %i.oc, 4
  %i.oe = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv.next.i.i.1
  store i8 %i.od, ptr %i.oe, align 1, !tbaa !166
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.1144.i.i, i64 3 ; 2 uses
  %i.og = load i8, ptr %i.of, align 1, !tbaa !125
  %i.oh = and i8 %i.og, 15
  %i.oi = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.next.i.i.2
  store i8 %i.oh, ptr %i.oi, align 1, !tbaa !166
  %i.oj = load i8, ptr %i.of, align 1, !tbaa !125
  %i.ok = lshr i8 %i.oj, 4
  %i.ol = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv.next.i.i.2
  store i8 %i.ok, ptr %i.ol, align 1, !tbaa !166
end_hunk_1
