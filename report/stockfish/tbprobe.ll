Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/tbprobe?download=true
inline.NumInlined: 1887
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN9Stockfish10Tablebases9probe_dtzERNS_8PositionEPNS0_10ProbeStateE:bb.a
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 5 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %bb.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i.i

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !90 ; 3 uses
  %i.gn = icmp ult i64 %i.gm, 16
  call void @llvm.assume(i1 %i.gn)
  %i.go = add nuw nsw i64 %i.gm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gh, ptr noundef nonnull align 8 dereferenceable(1) %i.gj, i64 %i.go, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i
  store ptr %i.gi, ptr %7, align 8, !tbaa !175, !alias.scope !278
  %i.gp = load i64, ptr %i.gj, align 8, !tbaa !156
  store i64 %i.gp, ptr %i.gh, align 8, !tbaa !156, !alias.scope !278
  %.phi.trans.insert.i44.i.i = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %.pre.i45.i.i = load i64, ptr %.phi.trans.insert.i44.i.i, align 8, !tbaa !90
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i.i, %bb.aj
  %i.gq = phi i64 [ %i.gm, %bb.aj ], [ %.pre.i45.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i.i ]
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i64 %i.gq, ptr %i.gs, align 8, !tbaa !90, !alias.scope !278
  store ptr %i.gj, ptr %i.gg, align 8, !tbaa !175
  store i64 0, ptr %i.gr, align 8, !tbaa !90
  store i8 0, ptr %i.gj, align 8, !tbaa !156
  %i.gt = load ptr, ptr %2, align 8, !tbaa !175   ; 6 uses
  %i.gu = icmp eq ptr %i.gt, %i.by
  %i.gv = load ptr, ptr %7, align 8, !tbaa !175   ; 5 uses
  %i.gw = icmp eq ptr %i.gv, %i.gh                ; 2 uses
  br i1 %i.gu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i
  br i1 %i.gw, label %bb.ak, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i
  br i1 %i.gw, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.gx = load i64, ptr %i.gs, align 8, !tbaa !90 ; 3 uses
  %i.gy = icmp ult i64 %i.gx, 16
  call void @llvm.assume(i1 %i.gy)
  switch i64 %i.gx, label %bb.am [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak
  %i.gz = load i8, ptr %i.gv, align 1, !tbaa !156
  store i8 %i.gz, ptr %i.gt, align 1, !tbaa !156
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.am:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gt, ptr align 1 %i.gv, i64 %i.gx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.am, %bb.al, %bb.ak
  %i.ha = load i64, ptr %i.gs, align 8, !tbaa !90 ; 2 uses
  store i64 %i.ha, ptr %i.bz, align 8, !tbaa !90
  %i.hb = load ptr, ptr %2, align 8, !tbaa !175
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.ha
  store i8 0, ptr %i.hc, align 1, !tbaa !156
  %.pre.i46.i.i = load ptr, ptr %7, align 8, !tbaa !175
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  store ptr %i.gv, ptr %2, align 8, !tbaa !175
  %i.hd = load <2 x i64>, ptr %i.gs, align 8, !tbaa !156
  store <2 x i64> %i.hd, ptr %i.bz, align 8, !tbaa !156
  br label %bb.ao

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.he = load i64, ptr %i.by, align 8, !tbaa !156
  store ptr %i.gv, ptr %2, align 8, !tbaa !175
  %i.hf = load <2 x i64>, ptr %i.gs, align 8, !tbaa !156
  store <2 x i64> %i.hf, ptr %i.bz, align 8, !tbaa !156
  %.not.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.gt, ptr %7, align 8, !tbaa !175
  store i64 %i.he, ptr %i.gh, align 8, !tbaa !156
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.gh, ptr %7, align 8, !tbaa !175
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i: ; preds = %bb.ao, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
  %i.hg = phi ptr [ %i.gt, %bb.an ], [ %i.gh, %bb.ao ], [ %.pre.i46.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ]
  store i64 0, ptr %i.gs, align 8, !tbaa !90
  store i8 0, ptr %i.hg, align 1, !tbaa !156
  %i.hh = load ptr, ptr %7, align 8, !tbaa !175   ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.gh
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i
  %i.hj = load i64, ptr %i.gh, align 8, !tbaa !156
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i.i
  %i.hl = load ptr, ptr %8, align 8, !tbaa !175   ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.hn = icmp eq ptr %i.hl, %i.hm
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.i
  %i.ho = load i64, ptr %i.hm, align 8, !tbaa !156
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.hp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i.i
  br i1 %.not25.i.i, label %.critedge30.i.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i.i
  %i.hq = load ptr, ptr %10, align 8, !tbaa !175  ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i.i: ; preds = %.critedge.i.i
  %i.ht = load i64, ptr %i.hr, align 8, !tbaa !156
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.hu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i.i: ; preds = %.critedge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.critedge29.i.i

.critedge30.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i.i
  %i.hv = load ptr, ptr %9, align 8, !tbaa !175   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i: ; preds = %.critedge30.i.i
  %i.hy = load i64, ptr %i.hw, align 8, !tbaa !156
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
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN9Stockfish12_GLOBAL__N_16TBFileE, i64 24), ptr %11, align 8, !tbaa !132
  %i.id = getelementptr inbounds nuw i8, ptr %11, i64 288 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN9Stockfish12_GLOBAL__N_16TBFileE, i64 64), ptr %i.id, align 8, !tbaa !132
  %i.ie = getelementptr inbounds nuw i8, ptr %11, i64 256
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !175 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %11, i64 272 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.critedge29.i.i
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !156
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ij) #30, !inline_history !230
  br label %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i.i

_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i.i:  ; preds = %.critedge29.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_St14basic_ifstreamIcSt11char_traitsIcEE, i64 24), ptr %11, align 8, !tbaa !132
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_St14basic_ifstreamIcSt11char_traitsIcEE, i64 64), ptr %i.id, align 8, !tbaa !132
  %i.ik = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt13basic_filebufIcSt11char_traitsIcEE, i64 16), ptr %i.ik, align 8, !tbaa !132
  %i.il = call noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.ik) #26, !inline_history !230 ; 0 uses
  %i.im = getelementptr inbounds nuw i8, ptr %11, i64 120
  call void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.im) #26, !inline_history !230
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ik, align 8, !tbaa !132
  %i.in = getelementptr inbounds nuw i8, ptr %11, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.in) #26, !inline_history !230
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_Si, i64 24), ptr %11, align 8, !tbaa !132
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_Si, i64 64), ptr %i.id, align 8, !tbaa !132
  %i.io = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.io, align 8, !tbaa !231
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.id) #26, !inline_history !233
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %.not26.i.i = icmp eq ptr %i.ic, null
  br i1 %.not26.i.i, label %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ic, i64 1
  %i.iq = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 52 ; 4 uses
  %i.ir = load i8, ptr %i.iq, align 4, !tbaa !208, !range !206, !noundef !207 ; 2 uses
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
  %wide.trip.count181.i.i.i = zext nneg i8 %i.jb to i64
  %i.jc = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 256
  %i.jd = add i64 %.0.val.i.i280, 184
  br label %.preheader131.i.i.i

.preheader131.i.i.i:                              ; preds = %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i, %bb.ap
  %i.je = phi i8 [ %i.ir, %bb.ap ], [ %.pre.i59.i.i, %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i ]
  %indvars.iv178.i.i.i = phi i64 [ 0, %bb.ap ], [ %indvars.iv.next179.i.i.i, %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i ] ; 4 uses
  %.078153.i.i.i = phi ptr [ %i.ip, %bb.ap ], [ %.1.lcssa214223.i.i.i, %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i ] ; 4 uses
  %.078153.i.i.i281 = ptrtoaddr ptr %.078153.i.i.i to i64
  %i.jf = trunc nuw i8 %i.je to i1
  %i.jg = select i1 %i.jf, i64 %indvars.iv178.i.i.i, i64 0
  %i.jh = getelementptr inbounds nuw [240 x i8], ptr %i.iy, i64 %i.jg ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.jh, i8 0, i64 80, i1 false)
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 80 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !281 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 96
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !284
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jj, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ji, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i, label %bb.ar

bb.aq:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i
  %i.jm = ptrtoint ptr %.1.lcssa214223.i.i.i to i64
  %i.jn = and i64 %i.jm, 1
  %i.jo = getelementptr inbounds nuw i8, ptr %.1.lcssa214223.i.i.i, i64 %i.jn
  br label %.preheader127.i.i.i

bb.ar:                                            ; preds = %.preheader131.i.i.i
  %i.jp = ptrtoint ptr %i.jl to i64
  %i.jq = ptrtoint ptr %i.jj to i64
  %i.jr = sub i64 %i.jp, %i.jq
  call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef %i.jr) #30
  br label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i

_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i:         ; preds = %bb.ar, %.preheader131.i.i.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.jh, i64 104 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !285 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jh, i64 120
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !287
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
  %i.ka = load i8, ptr %.078153.i.i.i, align 1, !tbaa !156
  %i.kb = and i8 %i.ka, 15                        ; 3 uses
  %i.kc = zext nneg i8 %i.kb to i32               ; 2 uses
  br i1 %i.ix, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i
  %i.kd = getelementptr inbounds nuw i8, ptr %.078153.i.i.i, i64 1
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !156
  %i.kf = and i8 %i.ke, 15
  %i.kg = zext nneg i8 %i.kf to i32
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i
  %i.kh = phi i32 [ %i.kg, %bb.at ], [ 15, %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i ] ; 6 uses
  %i.ki = phi i64 [ 2, %bb.at ], [ 1, %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i ] ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.078153.i.i.i, i64 %i.ki ; 8 uses
  %i.kk = load i32, ptr %i.iz, align 8, !tbaa !204 ; 5 uses
  %i.kl = icmp sgt i32 %i.kk, 0
  %.pre.i59.i.i = load i8, ptr %i.iq, align 4, !tbaa !208, !range !206 ; 2 uses
  %i.km = trunc nuw i8 %.pre.i59.i.i to i1        ; 4 uses
  %i.kn = select i1 %i.km, i64 %indvars.iv178.i.i.i, i64 0 ; 4 uses
  br i1 %i.kl, label %iter.check, label %.preheader130.thread.i.i.i

.preheader130.thread.i.i.i:                       ; preds = %bb.au
  %i.ko = getelementptr inbounds nuw [240 x i8], ptr %i.iy, i64 %i.kn ; 4 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 200 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 136 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 144 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 204 ; 3 uses
  %i.kt = icmp eq i8 %i.kb, 0                     ; 2 uses
  %i.ku = icmp eq i32 %i.kh, 0                    ; 2 uses
  %i.kv = load i8, ptr %i.ja, align 1, !range !206
  %i.kw = trunc nuw i8 %i.kv to i1
  store i32 1, ptr %i.kp, align 4, !tbaa !89
  store i32 0, ptr %i.ks, align 4, !tbaa !89
  br i1 %i.km, label %bb.az, label %.thread68.split.preheader.i.i.i.i

iter.check:                                       ; preds = %bb.au
  %i.kx = getelementptr inbounds nuw [240 x i8], ptr %.0.val.i.i, i64 %i.kn
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 184 ; 11 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.kk to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %i.kk, 16
  br i1 %min.iters.check, label %.preheader129.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.kz = mul i64 %i.kn, 240
  %i.la = add i64 %i.jd, %i.kz
  %i.lb = add i64 %i.ki, %.078153.i.i.i281
  %i.lc = sub i64 %i.lb, %i.la
  %diff.check = icmp ugt i64 %i.lc, -256
  br i1 %diff.check, label %.preheader129.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check282 = icmp ult i32 %i.kk, 256
  br i1 %min.iters.check282, label %vec.epilog.ph, label %vector.ph

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
  %wide.load = load <64 x i8>, ptr %next.gep, align 1, !tbaa !156
  %wide.load283 = load <64 x i8>, ptr %i.lg, align 1, !tbaa !156
  %wide.load284 = load <64 x i8>, ptr %i.lh, align 1, !tbaa !156
  %wide.load285 = load <64 x i8>, ptr %i.li, align 1, !tbaa !156
  %i.lj = and <64 x i8> %wide.load, splat (i8 15)
  %i.lk = and <64 x i8> %wide.load283, splat (i8 15)
  %i.ll = and <64 x i8> %wide.load284, splat (i8 15)
  %i.lm = and <64 x i8> %wide.load285, splat (i8 15)
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lf, i64 64
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lf, i64 128
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lf, i64 192
  store <64 x i8> %i.lj, ptr %i.lf, align 1, !tbaa !241
  store <64 x i8> %i.lk, ptr %i.ln, align 1, !tbaa !241
  store <64 x i8> %i.ll, ptr %i.lo, align 1, !tbaa !241
  store <64 x i8> %i.lm, ptr %i.lp, align 1, !tbaa !241
  %index.next = add nuw i64 %index, 256           ; 2 uses
  %i.lq = icmp eq i64 %index.next, %n.vec
  br i1 %i.lq, label %middle.block, label %vector.body, !llvm.loop !288

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %.preheader130.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ld, 0
  br i1 %min.epilog.iters.check, label %.preheader129.i.i.i.preheader, label %vec.epilog.ph, !prof !289

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec286 = and i64 %wide.trip.count.i.i.i, 2147483632 ; 4 uses
  %i.lr = getelementptr i8, ptr %i.kj, i64 %n.vec286 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index287 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next290, %vec.epilog.vector.body ] ; 3 uses
  %next.gep288 = getelementptr i8, ptr %i.kj, i64 %index287
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ky, i64 %index287
  %wide.load289 = load <16 x i8>, ptr %next.gep288, align 1, !tbaa !156
  %i.lt = and <16 x i8> %wide.load289, splat (i8 15)
  store <16 x i8> %i.lt, ptr %i.ls, align 1, !tbaa !241
  %index.next290 = add nuw i64 %index287, 16      ; 2 uses
  %i.lu = icmp eq i64 %index.next290, %n.vec286
  br i1 %i.lu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !290

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n291 = icmp eq i64 %n.vec286, %wide.trip.count.i.i.i
  br i1 %cmp.n291, label %.preheader130.i.i.i, label %.preheader129.i.i.i.preheader

.preheader129.i.i.i.preheader:                    ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec286, %vec.epilog.middle.block ] ; 3 uses
  %.1134.i.i.i.ph = phi ptr [ %i.kj, %iter.check ], [ %i.kj, %vector.memcheck ], [ %i.le, %vec.epilog.iter.check ], [ %i.lr, %vec.epilog.middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 7   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader129.i.i.i.prol.loopexit, label %.preheader129.i.i.i.prol

.preheader129.i.i.i.prol:                         ; preds = %.preheader129.i.i.i.preheader, %.preheader129.i.i.i.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %.preheader129.i.i.i.prol ], [ %indvars.iv.i.i.i.ph, %.preheader129.i.i.i.preheader ] ; 2 uses
  %.1134.i.i.i.prol = phi ptr [ %i.ly, %.preheader129.i.i.i.prol ], [ %.1134.i.i.i.ph, %.preheader129.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader129.i.i.i.prol ], [ 0, %.preheader129.i.i.i.preheader ]
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ky, i64 %indvars.iv.i.i.i.prol
  %i.lw = load i8, ptr %.1134.i.i.i.prol, align 1, !tbaa !156
  %i.lx = and i8 %i.lw, 15
  store i8 %i.lx, ptr %i.lv, align 1, !tbaa !241
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.1134.i.i.i.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader129.i.i.i.prol.loopexit, label %.preheader129.i.i.i.prol, !llvm.loop !291

.preheader129.i.i.i.prol.loopexit:                ; preds = %.preheader129.i.i.i.prol, %.preheader129.i.i.i.preheader
  %.lcssa502.unr = phi ptr [ poison, %.preheader129.i.i.i.preheader ], [ %i.ly, %.preheader129.i.i.i.prol ]
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.preheader129.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.preheader129.i.i.i.prol ]
  %.1134.i.i.i.unr = phi ptr [ %.1134.i.i.i.ph, %.preheader129.i.i.i.preheader ], [ %i.ly, %.preheader129.i.i.i.prol ]
  %i.lz = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ma = icmp ugt i64 %i.lz, -8
  br i1 %i.ma, label %.preheader130.i.i.i, label %.preheader129.i.i.i

.preheader130.i.i.i:                              ; preds = %.preheader129.i.i.i.prol.loopexit, %.preheader129.i.i.i, %vec.epilog.middle.block, %middle.block
end_hunk_0
begin_hunk_1_@_ZN9Stockfish10Tablebases9probe_dtzERNS_8PositionEPNS0_10ProbeStateE:bb.a
  %i.ok = getelementptr inbounds [4 x i8], ptr %i.mc, i64 %i.oj ; 2 uses
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !89
  %i.om = add nsw i32 %i.ol, 1
  store i32 %i.om, ptr %i.ok, align 4, !tbaa !89
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.on = add nsw i32 %.06672.i.i.i.i, 1          ; 2 uses
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds [4 x i8], ptr %i.mc, i64 %i.oo
  store i32 1, ptr %i.op, align 4, !tbaa !89
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.167.i.i.i.i = phi i32 [ %.06672.i.i.i.i, %bb.aw ], [ %i.on, %bb.ax ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.oq = load i32, ptr %i.iz, align 8, !tbaa !204
  %i.or = sext i32 %i.oq to i64
  %i.os = icmp slt i64 %indvars.iv.next.i.i.i.i, %i.or
  br i1 %i.os, label %select.unfold.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !294

bb.az:                                            ; preds = %._crit_edge.i.i.i.i, %.preheader130.thread.i.i.i
  %i.ot = phi i64 [ 1, %.preheader130.thread.i.i.i ], [ %i.oa, %._crit_edge.i.i.i.i ] ; 2 uses
  %.066.lcssa.i227.i.i.i = phi i32 [ 0, %.preheader130.thread.i.i.i ], [ %.066.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %.1.lcssa214225.i.i.i = phi ptr [ %i.kj, %.preheader130.thread.i.i.i ], [ %.lcssa279, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ou = phi ptr [ %i.kp, %.preheader130.thread.i.i.i ], [ %i.mc, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ov = phi ptr [ %i.kq, %.preheader130.thread.i.i.i ], [ %i.me, %._crit_edge.i.i.i.i ] ; 4 uses
  %i.ow = phi ptr [ %i.kr, %.preheader130.thread.i.i.i ], [ %i.mf, %._crit_edge.i.i.i.i ]
  %i.ox = phi ptr [ %i.ks, %.preheader130.thread.i.i.i ], [ %i.mg, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.oy = phi i1 [ %i.kt, %.preheader130.thread.i.i.i ], [ %i.mh, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.oz = phi i1 [ %i.ku, %.preheader130.thread.i.i.i ], [ %i.mi, %._crit_edge.i.i.i.i ]
  %invariant.gep215222.i.i.i = getelementptr [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_113LeadPawnsSizeE, i64 %indvars.iv178.i.i.i
  %i.pa = load i8, ptr %i.iu, align 1, !tbaa !156
  %.not69.i.i.i.i = icmp eq i8 %i.pa, 0
  br i1 %.not69.i.i.i.i, label %.thread68.split.us.preheader.i.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.pb = load i32, ptr %i.ox, align 4, !tbaa !89
  %i.pc = sub i32 64, %i.pb
  br label %.thread68.split.us.preheader.i.i.i.i

.thread68.split.preheader.i.i.i.i:                ; preds = %._crit_edge.i.i..thread68.split.preheader.i.i_crit_edge.i.i, %.preheader130.thread.i.i.i
  %i.pd = phi i32 [ 1, %.preheader130.thread.i.i.i ], [ %.pre.i.i, %._crit_edge.i.i..thread68.split.preheader.i.i_crit_edge.i.i ] ; 2 uses
  %i.pe = phi i64 [ 1, %.preheader130.thread.i.i.i ], [ %i.oa, %._crit_edge.i.i..thread68.split.preheader.i.i_crit_edge.i.i ] ; 2 uses
  %.066.lcssa.i226.i.i.i = phi i32 [ 0, %.preheader130.thread.i.i.i ], [ %.066.lcssa.i.i.i.i, %._crit_edge.i.i..thread68.split.preheader.i.i_crit_edge.i.i ] ; 2 uses
  %.1.lcssa214224.i.i.i = phi ptr [ %i.kj, %.preheader130.thread.i.i.i ], [ %.lcssa279, %._crit_edge.i.i..thread68.split.preheader.i.i_crit_edge.i.i ] ; 2 uses
  %i.pf = phi ptr [ %i.kq, %.preheader130.thread.i.i.i ], [ %i.me, %._crit_edge.i.i..thread68.split.preheader.i.i_crit_edge.i.i ] ; 4 uses
  %i.pg = phi ptr [ %i.kr, %.preheader130.thread.i.i.i ], [ %i.mf, %._crit_edge.i.i..thread68.split.preheader.i.i_crit_edge.i.i ]
  %i.ph = phi ptr [ %i.ks, %.preheader130.thread.i.i.i ], [ %i.mg, %._crit_edge.i.i..thread68.split.preheader.i.i_crit_edge.i.i ]
  %i.pi = phi i1 [ %i.kt, %.preheader130.thread.i.i.i ], [ %i.mh, %._crit_edge.i.i..thread68.split.preheader.i.i_crit_edge.i.i ] ; 2 uses
  %i.pj = phi i1 [ %i.ku, %.preheader130.thread.i.i.i ], [ %i.mi, %._crit_edge.i.i..thread68.split.preheader.i.i_crit_edge.i.i ]
  %i.pk = phi i1 [ %i.kw, %.preheader130.thread.i.i.i ], [ %i.mk, %._crit_edge.i.i..thread68.split.preheader.i.i_crit_edge.i.i ]
  %i.pl = sub nsw i32 48, %i.pd
  %i.pm = sext i32 %i.pl to i64
  %invariant.gep.i.i.i.i = getelementptr [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 %i.pm
  %i.pn = select i1 %i.pk, i32 31332, i32 462
  %.not.i136.i.i.i = icmp sgt i32 %.066.lcssa.i226.i.i.i, 0
  %or.cond83.i137.i.i.i = select i1 %.not.i136.i.i.i, i1 true, i1 %i.pi
  %or.cond119138.i.i.i = select i1 %or.cond83.i137.i.i.i, i1 true, i1 %i.pj
  br i1 %or.cond119138.i.i.i, label %.critedge.i.preheader.i.i.i, label %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i

.critedge.i.preheader.i.i.i:                      ; preds = %.thread68.split.preheader.i.i.i.i
  %i.po = sub i32 64, %i.pd
  br label %.critedge.i.i.i.i

.thread68.split.us.preheader.i.i.i.i:             ; preds = %bb.ba, %bb.az
  %.ph.i.i.i.i = phi i32 [ 1, %bb.az ], [ 2, %bb.ba ] ; 2 uses
  %.neg71.ph.i.i.i.i = phi i32 [ 64, %bb.az ], [ %i.pc, %bb.ba ]
  %i.pp = load i32, ptr %i.ou, align 8, !tbaa !89 ; 3 uses
  %i.pq = sub nsw i32 48, %i.pp
  %i.pr = sext i32 %i.pq to i64
  %invariant.gep80.i.i.i.i = getelementptr [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 %i.pr
  %i.ps = sext i32 %i.pp to i64
  %gep.i.i.i = getelementptr [16 x i8], ptr %invariant.gep215222.i.i.i, i64 %i.ps
  %.not.us.i144.i.i.i = icmp sle i32 %.ph.i.i.i.i, %.066.lcssa.i227.i.i.i
  %or.cond.i145.i.i.i = select i1 %.not.us.i144.i.i.i, i1 true, i1 %i.oy
  %or.cond146.i.i.i = select i1 %or.cond.i145.i.i.i, i1 true, i1 %i.oz
  br i1 %or.cond146.i.i.i, label %.critedge.us.i.preheader.i.i.i, label %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i

.critedge.us.i.preheader.i.i.i:                   ; preds = %.thread68.split.us.preheader.i.i.i.i
  %i.pt = sub i32 %.neg71.ph.i.i.i.i, %i.pp
  br label %.critedge.us.i.i.i.i

.critedge.us.i.i.i.i:                             ; preds = %.thread68.split.us.i.i.i.i, %.critedge.us.i.preheader.i.i.i
  %i.pu = phi i1 [ %i.qj, %.thread68.split.us.i.i.i.i ], [ %i.oy, %.critedge.us.i.preheader.i.i.i ]
  %.0.us.i150.i.i.i = phi i32 [ %i.qi, %.thread68.split.us.i.i.i.i ], [ 0, %.critedge.us.i.preheader.i.i.i ] ; 2 uses
  %.059.us.i149.i.i.i = phi i64 [ %.1.us.i.i.i.i, %.thread68.split.us.i.i.i.i ], [ 1, %.critedge.us.i.preheader.i.i.i ] ; 4 uses
  %.060.us.i148.i.i.i = phi i32 [ %.161.us.i.i.i.i, %.thread68.split.us.i.i.i.i ], [ %i.pt, %.critedge.us.i.preheader.i.i.i ] ; 4 uses
  %.062.us.i147.i.i.i = phi i32 [ %.163.us.i.i.i.i, %.thread68.split.us.i.i.i.i ], [ %.ph.i.i.i.i, %.critedge.us.i.preheader.i.i.i ] ; 4 uses
  br i1 %i.pu, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %.critedge.us.i.i.i.i
  %i.pv = icmp eq i32 %.0.us.i150.i.i.i, %i.kh
  br i1 %i.pv, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.pw = sext i32 %.062.us.i147.i.i.i to i64     ; 2 uses
  %i.px = getelementptr inbounds [8 x i8], ptr %i.ov, i64 %i.pw
  store i64 %.059.us.i149.i.i.i, ptr %i.px, align 8, !tbaa !17
  %i.py = getelementptr inbounds [4 x i8], ptr %i.ou, i64 %i.pw
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !89 ; 2 uses
  %i.qa = sext i32 %i.pz to i64
  %i.qb = getelementptr inbounds [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 %i.qa
  %i.qc = sext i32 %.060.us.i148.i.i.i to i64
  %i.qd = getelementptr inbounds [4 x i8], ptr %i.qb, i64 %i.qc
  %i.qe = add nsw i32 %.062.us.i147.i.i.i, 1
  %i.qf = sub nsw i32 %.060.us.i148.i.i.i, %i.pz
  br label %.thread68.split.us.i.i.i.i

bb.bd:                                            ; preds = %bb.bb
  store i64 %.059.us.i149.i.i.i, ptr %i.ow, align 8, !tbaa !17
  %i.qg = load i32, ptr %i.ox, align 4, !tbaa !89
  %i.qh = sext i32 %i.qg to i64
  %gep.us.i.i.i.i = getelementptr [256 x i8], ptr %invariant.gep80.i.i.i.i, i64 %i.qh
  br label %.thread68.split.us.i.i.i.i

bb.be:                                            ; preds = %.critedge.us.i.i.i.i
  store i64 %.059.us.i149.i.i.i, ptr %i.ov, align 8, !tbaa !17
  br label %.thread68.split.us.i.i.i.i

.thread68.split.us.i.i.i.i:                       ; preds = %bb.be, %bb.bd, %bb.bc
  %.163.us.i.i.i.i = phi i32 [ %i.qe, %bb.bc ], [ %.062.us.i147.i.i.i, %bb.bd ], [ %.062.us.i147.i.i.i, %bb.be ] ; 2 uses
  %.161.us.i.i.i.i = phi i32 [ %i.qf, %bb.bc ], [ %.060.us.i148.i.i.i, %bb.bd ], [ %.060.us.i148.i.i.i, %bb.be ]
  %.pn.in.us.in.i.i.i.i = phi ptr [ %i.qd, %bb.bc ], [ %gep.us.i.i.i.i, %bb.bd ], [ %gep.i.i.i, %bb.be ]
  %.pn.in.us.i.i.i.i = load i32, ptr %.pn.in.us.in.i.i.i.i, align 4, !tbaa !89
  %.pn.us.i.i.i.i = sext i32 %.pn.in.us.i.i.i.i to i64
  %.1.us.i.i.i.i = mul i64 %.059.us.i149.i.i.i, %.pn.us.i.i.i.i ; 2 uses
  %i.qi = add nuw nsw i32 %.0.us.i150.i.i.i, 1    ; 3 uses
  %.not.us.i.i.i.i = icmp sle i32 %.163.us.i.i.i.i, %.066.lcssa.i227.i.i.i
  %i.qj = icmp eq i32 %i.qi, %i.kc                ; 2 uses
  %or.cond.i.i.i.i = select i1 %.not.us.i.i.i.i, i1 true, i1 %i.qj
  %i.qk = icmp eq i32 %i.qi, %i.kh
  %or.cond.i.i.i = select i1 %or.cond.i.i.i.i, i1 true, i1 %i.qk
  br i1 %or.cond.i.i.i, label %.critedge.us.i.i.i.i, label %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i, !llvm.loop !295

.critedge.i.i.i.i:                                ; preds = %.thread68.split.i.i.i.i, %.critedge.i.preheader.i.i.i
  %i.ql = phi i1 [ %i.rc, %.thread68.split.i.i.i.i ], [ %i.pi, %.critedge.i.preheader.i.i.i ]
  %.0.i142.i.i.i = phi i32 [ %i.rb, %.thread68.split.i.i.i.i ], [ 0, %.critedge.i.preheader.i.i.i ] ; 2 uses
  %.059.i141.i.i.i = phi i64 [ %.1.i.i.i.i, %.thread68.split.i.i.i.i ], [ 1, %.critedge.i.preheader.i.i.i ] ; 4 uses
  %.060.i140.i.i.i = phi i32 [ %.161.i.i.i.i, %.thread68.split.i.i.i.i ], [ %i.po, %.critedge.i.preheader.i.i.i ] ; 4 uses
  %.062.i139.i.i.i = phi i32 [ %.163.i.i.i.i, %.thread68.split.i.i.i.i ], [ 1, %.critedge.i.preheader.i.i.i ] ; 4 uses
  br i1 %i.ql, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.critedge.i.i.i.i
  store i64 %.059.i141.i.i.i, ptr %i.pf, align 8, !tbaa !17
  br label %.thread68.split.i.i.i.i

bb.bg:                                            ; preds = %.critedge.i.i.i.i
  %i.qm = icmp eq i32 %.0.i142.i.i.i, %i.kh
  br i1 %i.qm, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i64 %.059.i141.i.i.i, ptr %i.pg, align 8, !tbaa !17
  %i.qn = load i32, ptr %i.ph, align 4, !tbaa !89
  %i.qo = sext i32 %i.qn to i64
  %gep.i.i.i.i = getelementptr [256 x i8], ptr %invariant.gep.i.i.i.i, i64 %i.qo
  %i.qp = load i32, ptr %gep.i.i.i.i, align 4, !tbaa !89
  br label %.thread68.split.i.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.qq = sext i32 %.062.i139.i.i.i to i64        ; 2 uses
  %i.qr = getelementptr inbounds [8 x i8], ptr %i.pf, i64 %i.qq
  store i64 %.059.i141.i.i.i, ptr %i.qr, align 8, !tbaa !17
  %i.qs = getelementptr inbounds [4 x i8], ptr %i.jc, i64 %i.qq
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !89 ; 2 uses
  %i.qu = sext i32 %i.qt to i64
  %i.qv = getelementptr inbounds [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 %i.qu
  %i.qw = sext i32 %.060.i140.i.i.i to i64
  %i.qx = getelementptr inbounds [4 x i8], ptr %i.qv, i64 %i.qw
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !89
  %i.qz = add nsw i32 %.062.i139.i.i.i, 1
  %i.ra = sub nsw i32 %.060.i140.i.i.i, %i.qt
  br label %.thread68.split.i.i.i.i

.thread68.split.i.i.i.i:                          ; preds = %bb.bi, %bb.bh, %bb.bf
  %.163.i.i.i.i = phi i32 [ %i.qz, %bb.bi ], [ %.062.i139.i.i.i, %bb.bh ], [ %.062.i139.i.i.i, %bb.bf ] ; 2 uses
  %.161.i.i.i.i = phi i32 [ %i.ra, %bb.bi ], [ %.060.i140.i.i.i, %bb.bh ], [ %.060.i140.i.i.i, %bb.bf ]
  %.pn.in.i.i.i.i = phi i32 [ %i.qy, %bb.bi ], [ %i.qp, %bb.bh ], [ %i.pn, %bb.bf ]
  %.pn.i.i.i.i = sext i32 %.pn.in.i.i.i.i to i64
  %.1.i.i.i.i = mul i64 %.059.i141.i.i.i, %.pn.i.i.i.i ; 2 uses
  %i.rb = add nuw nsw i32 %.0.i142.i.i.i, 1       ; 3 uses
  %.not.i.i60.i.i = icmp sle i32 %.163.i.i.i.i, %.066.lcssa.i226.i.i.i
  %i.rc = icmp eq i32 %i.rb, %i.kc                ; 2 uses
  %or.cond83.i.i.i.i = select i1 %.not.i.i60.i.i, i1 true, i1 %i.rc
  %i.rd = icmp eq i32 %i.rb, %i.kh
  %or.cond119.i.i.i = select i1 %or.cond83.i.i.i.i, i1 true, i1 %i.rd
  br i1 %or.cond119.i.i.i, label %.critedge.i.i.i.i, label %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i, !llvm.loop !295

_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i: ; preds = %.thread68.split.i.i.i.i, %.thread68.split.us.i.i.i.i, %.thread68.split.us.preheader.i.i.i.i, %.thread68.split.preheader.i.i.i.i
  %i.re = phi i64 [ %i.ot, %.thread68.split.us.i.i.i.i ], [ %i.ot, %.thread68.split.us.preheader.i.i.i.i ], [ %i.pe, %.thread68.split.preheader.i.i.i.i ], [ %i.pe, %.thread68.split.i.i.i.i ]
  %.1.lcssa214223.i.i.i = phi ptr [ %.1.lcssa214225.i.i.i, %.thread68.split.us.i.i.i.i ], [ %.1.lcssa214225.i.i.i, %.thread68.split.us.preheader.i.i.i.i ], [ %.1.lcssa214224.i.i.i, %.thread68.split.preheader.i.i.i.i ], [ %.1.lcssa214224.i.i.i, %.thread68.split.i.i.i.i ] ; 3 uses
  %i.rf = phi ptr [ %i.ov, %.thread68.split.us.i.i.i.i ], [ %i.ov, %.thread68.split.us.preheader.i.i.i.i ], [ %i.pf, %.thread68.split.preheader.i.i.i.i ], [ %i.pf, %.thread68.split.i.i.i.i ]
  %.us-phi.i.i.i.i = phi i64 [ %.1.us.i.i.i.i, %.thread68.split.us.i.i.i.i ], [ 1, %.thread68.split.us.preheader.i.i.i.i ], [ 1, %.thread68.split.preheader.i.i.i.i ], [ %.1.i.i.i.i, %.thread68.split.i.i.i.i ]
  %i.rg = getelementptr inbounds [8 x i8], ptr %i.rf, i64 %i.re
  store i64 %.us-phi.i.i.i.i, ptr %i.rg, align 8, !tbaa !17
  %indvars.iv.next179.i.i.i = add nuw nsw i64 %indvars.iv178.i.i.i, 1 ; 2 uses
  %exitcond182.i.i.i = icmp eq i64 %indvars.iv.next179.i.i.i, %wide.trip.count181.i.i.i
  br i1 %exitcond182.i.i.i, label %bb.aq, label %.preheader131.i.i.i, !llvm.loop !296

.preheader127.i.i.i:                              ; preds = %.preheader127.i.i.i, %bb.aq
  %.2162.i.i.i = phi ptr [ %i.jo, %bb.aq ], [ %i.rk, %.preheader127.i.i.i ]
  %.0117161.i.i.i = phi i8 [ 0, %bb.aq ], [ %18, %.preheader127.i.i.i ] ; 3 uses
  %i.rh = load i8, ptr %i.iq, align 4, !tbaa !208, !range !206, !noundef !207
  %i.ri = trunc nuw i8 %i.rh to i1
  %narrow122.i.i.i = select i1 %i.ri, i8 %.0117161.i.i.i, i8 0
  %17 = zext nneg i8 %narrow122.i.i.i to i64
  %i.rj = getelementptr inbounds nuw [240 x i8], ptr %i.iy, i64 %17
  %i.rk = call fastcc noundef ptr @_ZN9Stockfish12_GLOBAL__N_19set_sizesEPNS0_9PairsDataEPh(ptr noundef %i.rj, ptr noundef %.2162.i.i.i) ; 18 uses
  %18 = add nuw nsw i8 %.0117161.i.i.i, 1
  %exitcond187.i.i.i = icmp eq i8 %.0117161.i.i.i, %i.it
  br i1 %exitcond187.i.i.i, label %bb.bj, label %.preheader127.i.i.i, !llvm.loop !297

bb.bj:                                            ; preds = %.preheader127.i.i.i
  %i.rl = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 16
  store ptr %i.rk, ptr %i.rl, align 8, !tbaa !298
  %i.rm = load i8, ptr %i.iq, align 4, !tbaa !208, !range !206, !noundef !207 ; 5 uses
  %i.rn = trunc nuw i8 %i.rm to i1                ; 4 uses
  %i.ro = ptrtoint ptr %i.rk to i64               ; 75 uses
  %i.rp = load i8, ptr @_ZN9StockfishL14IsLittleEndianE, align 1, !range !206
  %.fr74.i.i.i.i = freeze i8 %i.rp
  %.not3.not.i.i.i.i.i = icmp eq i8 %.fr74.i.i.i.i, 0
  br i1 %.not3.not.i.i.i.i.i, label %.split41.us.i.i.i.i, label %.split41.i.i.i.i

.split41.us.i.i.i.i:                              ; preds = %bb.bj
  %i.rq = load i8, ptr %i.iy, align 8, !tbaa !299
  %i.rr = zext i8 %i.rq to i32                    ; 2 uses
  %i.rs = and i32 %i.rr, 2
  %.not28.us.i.i.i.i = icmp eq i32 %i.rs, 0
  br i1 %.not28.us.i.i.i.i, label %.loopexit.us.i.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %.split41.us.i.i.i.i
  %i.rt = and i32 %i.rr, 16
  %.not29.us.i.i.i.i = icmp eq i32 %i.rt, 0
  br i1 %.not29.us.i.i.i.i, label %.preheader.us.i.i.i.i, label %.split.us.us.i.i.i.i

.split.us.us.i.i.i.i:                             ; preds = %bb.bk
  %i.ru = ptrtoint ptr %i.rk to i64
  %i.rv = and i64 %i.ru, 1
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rk, i64 %i.rv ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 288
  store i16 1, ptr %i.rx, align 8, !tbaa !239
  %.1.val.us.us.i.i.i.i = load i16, ptr %i.rw, align 1
  %.sroa.0.0.insert.insert.i.us.us.i.i.i.i = call i16 @llvm.bswap.i16(i16 %.1.val.us.us.i.i.i.i) ; 2 uses
  %i.ry = zext i16 %.sroa.0.0.insert.insert.i.us.us.i.i.i.i to i64
  %i.rz = shl nuw nsw i64 %i.ry, 1                ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rw, i64 %i.rz
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 2 ; 2 uses
  %i.sc = add i16 %.sroa.0.0.insert.insert.i.us.us.i.i.i.i, 2
  %i.sd = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 290
  store i16 %i.sc, ptr %i.sd, align 2, !tbaa !239
  %.1.val.us.us.1.i.i.i.i = load i16, ptr %i.sb, align 1
  %.sroa.0.0.insert.insert.i.us.us.1.i.i.i.i = call i16 @llvm.bswap.i16(i16 %.1.val.us.us.1.i.i.i.i)
  %i.se = zext i16 %.sroa.0.0.insert.insert.i.us.us.1.i.i.i.i to i64
  %i.sf = shl nuw nsw i64 %i.se, 1                ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sb, i64 %i.sf
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 2 ; 2 uses
  %i.si = add nuw nsw i64 %i.rz, %i.sf
  %i.sj = add nuw nsw i64 %i.si, 4
  %i.sk = lshr exact i64 %i.sj, 1
  %i.sl = trunc i64 %i.sk to i16
  %i.sm = add i16 %i.sl, 1
  %i.sn = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 292
  store i16 %i.sm, ptr %i.sn, align 4, !tbaa !239
  %.1.val.us.us.2.i.i.i.i = load i16, ptr %i.sh, align 1
  %.sroa.0.0.insert.insert.i.us.us.2.i.i.i.i = call i16 @llvm.bswap.i16(i16 %.1.val.us.us.2.i.i.i.i)
  %i.so = zext i16 %.sroa.0.0.insert.insert.i.us.us.2.i.i.i.i to i64
  %i.sp = shl nuw nsw i64 %i.so, 1
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.sp
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 2 ; 3 uses
  %i.ss = ptrtoint ptr %i.sr to i64
  %i.st = sub i64 %i.ss, %i.ro
  %i.su = lshr exact i64 %i.st, 1
  %i.sv = trunc i64 %i.su to i16
  %i.sw = add i16 %i.sv, 1
  %i.sx = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 294
  store i16 %i.sw, ptr %i.sx, align 2, !tbaa !239
  %.1.val.us.us.3.i.i.i.i = load i16, ptr %i.sr, align 1
  %.sroa.0.0.insert.insert.i.us.us.3.i.i.i.i = call i16 @llvm.bswap.i16(i16 %.1.val.us.us.3.i.i.i.i)
  %i.sy = zext i16 %.sroa.0.0.insert.insert.i.us.us.3.i.i.i.i to i64
  %i.sz = shl nuw nsw i64 %i.sy, 1
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sr, i64 %i.sz
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 2
  br label %.loopexit.us.i.i.i.i

.loopexit.us.i.i.i.i:                             ; preds = %.preheader.us.i.i.i.i, %.split.us.us.i.i.i.i, %.split41.us.i.i.i.i
  %.3.us.i.i.i.i = phi ptr [ %i.rk, %.split41.us.i.i.i.i ], [ %i.ady, %.preheader.us.i.i.i.i ], [ %i.tb, %.split.us.us.i.i.i.i ] ; 7 uses
  br i1 %i.is, label %.split41.us.i.i.i.i.1, label %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.i.i.i

.split41.us.i.i.i.i.1:                            ; preds = %.loopexit.us.i.i.i.i
  %i.tc = zext nneg i8 %i.rm to i64
  %i.td = getelementptr inbounds nuw [240 x i8], ptr %i.iy, i64 %i.tc ; 9 uses
  %i.te = load i8, ptr %i.td, align 8, !tbaa !299
  %i.tf = zext i8 %i.te to i32                    ; 2 uses
  %i.tg = and i32 %i.tf, 2
  %.not28.us.i.i.i.i.1 = icmp eq i32 %i.tg, 0
  br i1 %.not28.us.i.i.i.i.1, label %.split41.us.i.i.i.i.2, label %bb.bl

bb.bl:                                            ; preds = %.split41.us.i.i.i.i.1
  %i.th = and i32 %i.tf, 16
  %.not29.us.i.i.i.i.1 = icmp eq i32 %i.th, 0
  br i1 %.not29.us.i.i.i.i.1, label %.preheader.us.i.i.i.i.1, label %.split.us.us.i.i.i.i.1

.split.us.us.i.i.i.i.1:                           ; preds = %bb.bl
  %i.ti = ptrtoint ptr %.3.us.i.i.i.i to i64
  %i.tj = and i64 %i.ti, 1
  %i.tk = getelementptr inbounds nuw i8, ptr %.3.us.i.i.i.i, i64 %i.tj ; 3 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.td, i64 232
  %i.tm = ptrtoint ptr %i.tk to i64
  %i.tn = sub i64 %i.tm, %i.ro
  %i.to = lshr exact i64 %i.tn, 1
  %i.tp = trunc i64 %i.to to i16
  %i.tq = add i16 %i.tp, 1
  store i16 %i.tq, ptr %i.tl, align 8, !tbaa !239
  %.1.val.us.us.i.i.i.i.1 = load i16, ptr %i.tk, align 1
  %.sroa.0.0.insert.insert.i.us.us.i.i.i.i.1 = call i16 @llvm.bswap.i16(i16 %.1.val.us.us.i.i.i.i.1)
  %i.tr = zext i16 %.sroa.0.0.insert.insert.i.us.us.i.i.i.i.1 to i64
  %i.ts = shl nuw nsw i64 %i.tr, 1
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tk, i64 %i.ts
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 2 ; 3 uses
  %i.tv = ptrtoint ptr %i.tu to i64
  %i.tw = sub i64 %i.tv, %i.ro
  %i.tx = lshr exact i64 %i.tw, 1
  %i.ty = trunc i64 %i.tx to i16
  %i.tz = add i16 %i.ty, 1
  %i.ua = getelementptr inbounds nuw i8, ptr %i.td, i64 234
  store i16 %i.tz, ptr %i.ua, align 2, !tbaa !239
  %.1.val.us.us.1.i.i.i.i.1 = load i16, ptr %i.tu, align 1
  %.sroa.0.0.insert.insert.i.us.us.1.i.i.i.i.1 = call i16 @llvm.bswap.i16(i16 %.1.val.us.us.1.i.i.i.i.1)
  %i.ub = zext i16 %.sroa.0.0.insert.insert.i.us.us.1.i.i.i.i.1 to i64
  %i.uc = shl nuw nsw i64 %i.ub, 1
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tu, i64 %i.uc
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 2 ; 3 uses
  %i.uf = ptrtoint ptr %i.ue to i64
  %i.ug = sub i64 %i.uf, %i.ro
  %i.uh = lshr exact i64 %i.ug, 1
  %i.ui = trunc i64 %i.uh to i16
  %i.uj = add i16 %i.ui, 1
  %i.uk = getelementptr inbounds nuw i8, ptr %i.td, i64 236
  store i16 %i.uj, ptr %i.uk, align 4, !tbaa !239
  %.1.val.us.us.2.i.i.i.i.1 = load i16, ptr %i.ue, align 1
  %.sroa.0.0.insert.insert.i.us.us.2.i.i.i.i.1 = call i16 @llvm.bswap.i16(i16 %.1.val.us.us.2.i.i.i.i.1)
  %i.ul = zext i16 %.sroa.0.0.insert.insert.i.us.us.2.i.i.i.i.1 to i64
  %i.um = shl nuw nsw i64 %i.ul, 1
  %i.un = getelementptr inbounds nuw i8, ptr %i.ue, i64 %i.um
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 2 ; 3 uses
  %i.up = ptrtoint ptr %i.uo to i64
  %i.uq = sub i64 %i.up, %i.ro
  %i.ur = lshr exact i64 %i.uq, 1
  %i.us = trunc i64 %i.ur to i16
  %i.ut = add i16 %i.us, 1
  %i.uu = getelementptr inbounds nuw i8, ptr %i.td, i64 238
  store i16 %i.ut, ptr %i.uu, align 2, !tbaa !239
  %.1.val.us.us.3.i.i.i.i.1 = load i16, ptr %i.uo, align 1
  %.sroa.0.0.insert.insert.i.us.us.3.i.i.i.i.1 = call i16 @llvm.bswap.i16(i16 %.1.val.us.us.3.i.i.i.i.1)
  %i.uv = zext i16 %.sroa.0.0.insert.insert.i.us.us.3.i.i.i.i.1 to i64
  %i.uw = shl nuw nsw i64 %i.uv, 1
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uo, i64 %i.uw
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 2
  br label %.split41.us.i.i.i.i.2

.preheader.us.i.i.i.i.1:                          ; preds = %bb.bl
  %i.uz = getelementptr inbounds nuw i8, ptr %i.td, i64 232
  %i.va = ptrtoint ptr %.3.us.i.i.i.i to i64
  %i.vb = sub i64 %i.va, %i.ro
  %i.vc = trunc i64 %i.vb to i16
  %i.vd = add i16 %i.vc, 1
  store i16 %i.vd, ptr %i.uz, align 8, !tbaa !239
  %i.ve = load i8, ptr %.3.us.i.i.i.i, align 1, !tbaa !156
  %i.vf = zext i8 %i.ve to i64
  %i.vg = getelementptr inbounds nuw i8, ptr %.3.us.i.i.i.i, i64 %i.vf
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 1 ; 3 uses
  %i.vi = ptrtoint ptr %i.vh to i64
  %i.vj = sub i64 %i.vi, %i.ro
  %i.vk = trunc i64 %i.vj to i16
  %i.vl = add i16 %i.vk, 1
  %i.vm = getelementptr inbounds nuw i8, ptr %i.td, i64 234
  store i16 %i.vl, ptr %i.vm, align 2, !tbaa !239
  %i.vn = load i8, ptr %i.vh, align 1, !tbaa !156
  %i.vo = zext i8 %i.vn to i64
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vh, i64 %i.vo
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 1 ; 3 uses
  %i.vr = ptrtoint ptr %i.vq to i64
  %i.vs = sub i64 %i.vr, %i.ro
  %i.vt = trunc i64 %i.vs to i16
  %i.vu = add i16 %i.vt, 1
  %i.vv = getelementptr inbounds nuw i8, ptr %i.td, i64 236
  store i16 %i.vu, ptr %i.vv, align 4, !tbaa !239
  %i.vw = load i8, ptr %i.vq, align 1, !tbaa !156
  %i.vx = zext i8 %i.vw to i64
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vq, i64 %i.vx
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 1 ; 3 uses
  %i.wa = ptrtoint ptr %i.vz to i64
  %i.wb = sub i64 %i.wa, %i.ro
  %i.wc = trunc i64 %i.wb to i16
  %i.wd = add i16 %i.wc, 1
  %i.we = getelementptr inbounds nuw i8, ptr %i.td, i64 238
  store i16 %i.wd, ptr %i.we, align 2, !tbaa !239
  %i.wf = load i8, ptr %i.vz, align 1, !tbaa !156
  %i.wg = zext i8 %i.wf to i64
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vz, i64 %i.wg
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 1
  br label %.split41.us.i.i.i.i.2

.split41.us.i.i.i.i.2:                            ; preds = %.split41.us.i.i.i.i.1, %.split.us.us.i.i.i.i.1, %.preheader.us.i.i.i.i.1
  %.3.us.i.i.i.i.1 = phi ptr [ %.3.us.i.i.i.i, %.split41.us.i.i.i.i.1 ], [ %i.wi, %.preheader.us.i.i.i.i.1 ], [ %i.uy, %.split.us.us.i.i.i.i.1 ] ; 6 uses
  %narrow.us.i.i.i.i.2 = shl nuw nsw i8 %i.rm, 1
  %19 = zext nneg i8 %narrow.us.i.i.i.i.2 to i64
  %i.wj = getelementptr inbounds nuw [240 x i8], ptr %i.iy, i64 %19 ; 9 uses
  %i.wk = load i8, ptr %i.wj, align 8, !tbaa !299
  %i.wl = zext i8 %i.wk to i32                    ; 2 uses
  %i.wm = and i32 %i.wl, 2
  %.not28.us.i.i.i.i.2 = icmp eq i32 %i.wm, 0
  br i1 %.not28.us.i.i.i.i.2, label %.split41.us.i.i.i.i.3, label %bb.bm

bb.bm:                                            ; preds = %.split41.us.i.i.i.i.2
  %i.wn = and i32 %i.wl, 16
  %.not29.us.i.i.i.i.2 = icmp eq i32 %i.wn, 0
  br i1 %.not29.us.i.i.i.i.2, label %.preheader.us.i.i.i.i.2, label %.split.us.us.i.i.i.i.2

.split.us.us.i.i.i.i.2:                           ; preds = %bb.bm
  %i.wo = ptrtoint ptr %.3.us.i.i.i.i.1 to i64
  %i.wp = and i64 %i.wo, 1
  %i.wq = getelementptr inbounds nuw i8, ptr %.3.us.i.i.i.i.1, i64 %i.wp ; 3 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wj, i64 232
  %i.ws = ptrtoint ptr %i.wq to i64
  %i.wt = sub i64 %i.ws, %i.ro
  %i.wu = lshr exact i64 %i.wt, 1
  %i.wv = trunc i64 %i.wu to i16
  %i.ww = add i16 %i.wv, 1
  store i16 %i.ww, ptr %i.wr, align 8, !tbaa !239
  %.1.val.us.us.i.i.i.i.2 = load i16, ptr %i.wq, align 1
  %.sroa.0.0.insert.insert.i.us.us.i.i.i.i.2 = call i16 @llvm.bswap.i16(i16 %.1.val.us.us.i.i.i.i.2)
  %i.wx = zext i16 %.sroa.0.0.insert.insert.i.us.us.i.i.i.i.2 to i64
  %i.wy = shl nuw nsw i64 %i.wx, 1
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wq, i64 %i.wy
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 2 ; 3 uses
  %i.xb = ptrtoint ptr %i.xa to i64
  %i.xc = sub i64 %i.xb, %i.ro
  %i.xd = lshr exact i64 %i.xc, 1
  %i.xe = trunc i64 %i.xd to i16
  %i.xf = add i16 %i.xe, 1
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wj, i64 234
  store i16 %i.xf, ptr %i.xg, align 2, !tbaa !239
  %.1.val.us.us.1.i.i.i.i.2 = load i16, ptr %i.xa, align 1
  %.sroa.0.0.insert.insert.i.us.us.1.i.i.i.i.2 = call i16 @llvm.bswap.i16(i16 %.1.val.us.us.1.i.i.i.i.2)
  %i.xh = zext i16 %.sroa.0.0.insert.insert.i.us.us.1.i.i.i.i.2 to i64
  %i.xi = shl nuw nsw i64 %i.xh, 1
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.xi
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 2 ; 3 uses
  %i.xl = ptrtoint ptr %i.xk to i64
  %i.xm = sub i64 %i.xl, %i.ro
  %i.xn = lshr exact i64 %i.xm, 1
  %i.xo = trunc i64 %i.xn to i16
  %i.xp = add i16 %i.xo, 1
  %i.xq = getelementptr inbounds nuw i8, ptr %i.wj, i64 236
  store i16 %i.xp, ptr %i.xq, align 4, !tbaa !239
  %.1.val.us.us.2.i.i.i.i.2 = load i16, ptr %i.xk, align 1
  %.sroa.0.0.insert.insert.i.us.us.2.i.i.i.i.2 = call i16 @llvm.bswap.i16(i16 %.1.val.us.us.2.i.i.i.i.2)
  %i.xr = zext i16 %.sroa.0.0.insert.insert.i.us.us.2.i.i.i.i.2 to i64
  %i.xs = shl nuw nsw i64 %i.xr, 1
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xk, i64 %i.xs
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 2 ; 3 uses
  %i.xv = ptrtoint ptr %i.xu to i64
  %i.xw = sub i64 %i.xv, %i.ro
  %i.xx = lshr exact i64 %i.xw, 1
  %i.xy = trunc i64 %i.xx to i16
  %i.xz = add i16 %i.xy, 1
  %i.ya = getelementptr inbounds nuw i8, ptr %i.wj, i64 238
  store i16 %i.xz, ptr %i.ya, align 2, !tbaa !239
  %.1.val.us.us.3.i.i.i.i.2 = load i16, ptr %i.xu, align 1
  %.sroa.0.0.insert.insert.i.us.us.3.i.i.i.i.2 = call i16 @llvm.bswap.i16(i16 %.1.val.us.us.3.i.i.i.i.2)
  %i.yb = zext i16 %.sroa.0.0.insert.insert.i.us.us.3.i.i.i.i.2 to i64
  %i.yc = shl nuw nsw i64 %i.yb, 1
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xu, i64 %i.yc
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 2
  br label %.split41.us.i.i.i.i.3

.preheader.us.i.i.i.i.2:                          ; preds = %bb.bm
  %i.yf = getelementptr inbounds nuw i8, ptr %i.wj, i64 232
  %i.yg = ptrtoint ptr %.3.us.i.i.i.i.1 to i64
  %i.yh = sub i64 %i.yg, %i.ro
  %i.yi = trunc i64 %i.yh to i16
  %i.yj = add i16 %i.yi, 1
  store i16 %i.yj, ptr %i.yf, align 8, !tbaa !239
  %i.yk = load i8, ptr %.3.us.i.i.i.i.1, align 1, !tbaa !156
  %i.yl = zext i8 %i.yk to i64
  %i.ym = getelementptr inbounds nuw i8, ptr %.3.us.i.i.i.i.1, i64 %i.yl
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 1 ; 3 uses
  %i.yo = ptrtoint ptr %i.yn to i64
  %i.yp = sub i64 %i.yo, %i.ro
  %i.yq = trunc i64 %i.yp to i16
  %i.yr = add i16 %i.yq, 1
  %i.ys = getelementptr inbounds nuw i8, ptr %i.wj, i64 234
  store i16 %i.yr, ptr %i.ys, align 2, !tbaa !239
  %i.yt = load i8, ptr %i.yn, align 1, !tbaa !156
  %i.yu = zext i8 %i.yt to i64
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yn, i64 %i.yu
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 1 ; 3 uses
  %i.yx = ptrtoint ptr %i.yw to i64
  %i.yy = sub i64 %i.yx, %i.ro
  %i.yz = trunc i64 %i.yy to i16
  %i.za = add i16 %i.yz, 1
  %i.zb = getelementptr inbounds nuw i8, ptr %i.wj, i64 236
  store i16 %i.za, ptr %i.zb, align 4, !tbaa !239
  %i.zc = load i8, ptr %i.yw, align 1, !tbaa !156
  %i.zd = zext i8 %i.zc to i64
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.zd
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 1 ; 3 uses
  %i.zg = ptrtoint ptr %i.zf to i64
  %i.zh = sub i64 %i.zg, %i.ro
  %i.zi = trunc i64 %i.zh to i16
  %i.zj = add i16 %i.zi, 1
  %i.zk = getelementptr inbounds nuw i8, ptr %i.wj, i64 238
  store i16 %i.zj, ptr %i.zk, align 2, !tbaa !239
  %i.zl = load i8, ptr %i.zf, align 1, !tbaa !156
  %i.zm = zext i8 %i.zl to i64
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zf, i64 %i.zm
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 1
  br label %.split41.us.i.i.i.i.3

.split41.us.i.i.i.i.3:                            ; preds = %.split41.us.i.i.i.i.2, %.split.us.us.i.i.i.i.2, %.preheader.us.i.i.i.i.2
  %.3.us.i.i.i.i.2 = phi ptr [ %.3.us.i.i.i.i.1, %.split41.us.i.i.i.i.2 ], [ %i.zo, %.preheader.us.i.i.i.i.2 ], [ %i.ye, %.split.us.us.i.i.i.i.2 ] ; 6 uses
  %i.zp = select i1 %i.rn, i64 3, i64 0
  %i.zq = getelementptr inbounds nuw [240 x i8], ptr %i.iy, i64 %i.zp ; 9 uses
  %i.zr = load i8, ptr %i.zq, align 8, !tbaa !299
  %i.zs = zext i8 %i.zr to i32                    ; 2 uses
  %i.zt = and i32 %i.zs, 2
  %.not28.us.i.i.i.i.3 = icmp eq i32 %i.zt, 0
  br i1 %.not28.us.i.i.i.i.3, label %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %.split41.us.i.i.i.i.3
  %i.zu = and i32 %i.zs, 16
  %.not29.us.i.i.i.i.3 = icmp eq i32 %i.zu, 0
  br i1 %.not29.us.i.i.i.i.3, label %.preheader.us.i.i.i.i.3, label %.split.us.us.i.i.i.i.3

.split.us.us.i.i.i.i.3:                           ; preds = %bb.bn
  %i.zv = ptrtoint ptr %.3.us.i.i.i.i.2 to i64
  %i.zw = and i64 %i.zv, 1
  %i.zx = getelementptr inbounds nuw i8, ptr %.3.us.i.i.i.i.2, i64 %i.zw ; 3 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zq, i64 232
  %i.zz = ptrtoint ptr %i.zx to i64
  %i.aaa = sub i64 %i.zz, %i.ro
  %i.aab = lshr exact i64 %i.aaa, 1
  %i.aac = trunc i64 %i.aab to i16
  %i.aad = add i16 %i.aac, 1
  store i16 %i.aad, ptr %i.zy, align 8, !tbaa !239
  %.1.val.us.us.i.i.i.i.3 = load i16, ptr %i.zx, align 1
  %.sroa.0.0.insert.insert.i.us.us.i.i.i.i.3 = call i16 @llvm.bswap.i16(i16 %.1.val.us.us.i.i.i.i.3)
  %i.aae = zext i16 %.sroa.0.0.insert.insert.i.us.us.i.i.i.i.3 to i64
  %i.aaf = shl nuw nsw i64 %i.aae, 1
  %i.aag = getelementptr inbounds nuw i8, ptr %i.zx, i64 %i.aaf
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 2 ; 3 uses
  %i.aai = ptrtoint ptr %i.aah to i64
  %i.aaj = sub i64 %i.aai, %i.ro
  %i.aak = lshr exact i64 %i.aaj, 1
  %i.aal = trunc i64 %i.aak to i16
  %i.aam = add i16 %i.aal, 1
  %i.aan = getelementptr inbounds nuw i8, ptr %i.zq, i64 234
  store i16 %i.aam, ptr %i.aan, align 2, !tbaa !239
  %.1.val.us.us.1.i.i.i.i.3 = load i16, ptr %i.aah, align 1
  %.sroa.0.0.insert.insert.i.us.us.1.i.i.i.i.3 = call i16 @llvm.bswap.i16(i16 %.1.val.us.us.1.i.i.i.i.3)
  %i.aao = zext i16 %.sroa.0.0.insert.insert.i.us.us.1.i.i.i.i.3 to i64
  %i.aap = shl nuw nsw i64 %i.aao, 1
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aah, i64 %i.aap
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 2 ; 3 uses
  %i.aas = ptrtoint ptr %i.aar to i64
  %i.aat = sub i64 %i.aas, %i.ro
  %i.aau = lshr exact i64 %i.aat, 1
  %i.aav = trunc i64 %i.aau to i16
  %i.aaw = add i16 %i.aav, 1
  %i.aax = getelementptr inbounds nuw i8, ptr %i.zq, i64 236
  store i16 %i.aaw, ptr %i.aax, align 4, !tbaa !239
  %.1.val.us.us.2.i.i.i.i.3 = load i16, ptr %i.aar, align 1
  %.sroa.0.0.insert.insert.i.us.us.2.i.i.i.i.3 = call i16 @llvm.bswap.i16(i16 %.1.val.us.us.2.i.i.i.i.3)
  %i.aay = zext i16 %.sroa.0.0.insert.insert.i.us.us.2.i.i.i.i.3 to i64
  %i.aaz = shl nuw nsw i64 %i.aay, 1
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aar, i64 %i.aaz
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 2 ; 3 uses
  %i.abc = ptrtoint ptr %i.abb to i64
  %i.abd = sub i64 %i.abc, %i.ro
  %i.abe = lshr exact i64 %i.abd, 1
  %i.abf = trunc i64 %i.abe to i16
  %i.abg = add i16 %i.abf, 1
  %i.abh = getelementptr inbounds nuw i8, ptr %i.zq, i64 238
  store i16 %i.abg, ptr %i.abh, align 2, !tbaa !239
  %.1.val.us.us.3.i.i.i.i.3 = load i16, ptr %i.abb, align 1
  %.sroa.0.0.insert.insert.i.us.us.3.i.i.i.i.3 = call i16 @llvm.bswap.i16(i16 %.1.val.us.us.3.i.i.i.i.3)
  %i.abi = zext i16 %.sroa.0.0.insert.insert.i.us.us.3.i.i.i.i.3 to i64
  %i.abj = shl nuw nsw i64 %i.abi, 1
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abb, i64 %i.abj
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 2
  br label %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.i.i.i

.preheader.us.i.i.i.i.3:                          ; preds = %bb.bn
  %i.abm = getelementptr inbounds nuw i8, ptr %i.zq, i64 232
  %i.abn = ptrtoint ptr %.3.us.i.i.i.i.2 to i64
  %i.abo = sub i64 %i.abn, %i.ro
  %i.abp = trunc i64 %i.abo to i16
  %i.abq = add i16 %i.abp, 1
  store i16 %i.abq, ptr %i.abm, align 8, !tbaa !239
  %i.abr = load i8, ptr %.3.us.i.i.i.i.2, align 1, !tbaa !156
  %i.abs = zext i8 %i.abr to i64
  %i.abt = getelementptr inbounds nuw i8, ptr %.3.us.i.i.i.i.2, i64 %i.abs
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 1 ; 3 uses
  %i.abv = ptrtoint ptr %i.abu to i64
  %i.abw = sub i64 %i.abv, %i.ro
  %i.abx = trunc i64 %i.abw to i16
  %i.aby = add i16 %i.abx, 1
  %i.abz = getelementptr inbounds nuw i8, ptr %i.zq, i64 234
  store i16 %i.aby, ptr %i.abz, align 2, !tbaa !239
  %i.aca = load i8, ptr %i.abu, align 1, !tbaa !156
  %i.acb = zext i8 %i.aca to i64
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abu, i64 %i.acb
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 1 ; 3 uses
  %i.ace = ptrtoint ptr %i.acd to i64
  %i.acf = sub i64 %i.ace, %i.ro
  %i.acg = trunc i64 %i.acf to i16
  %i.ach = add i16 %i.acg, 1
  %i.aci = getelementptr inbounds nuw i8, ptr %i.zq, i64 236
  store i16 %i.ach, ptr %i.aci, align 4, !tbaa !239
  %i.acj = load i8, ptr %i.acd, align 1, !tbaa !156
  %i.ack = zext i8 %i.acj to i64
  %i.acl = getelementptr inbounds nuw i8, ptr %i.acd, i64 %i.ack
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 1 ; 3 uses
  %i.acn = ptrtoint ptr %i.acm to i64
  %i.aco = sub i64 %i.acn, %i.ro
  %i.acp = trunc i64 %i.aco to i16
  %i.acq = add i16 %i.acp, 1
  %i.acr = getelementptr inbounds nuw i8, ptr %i.zq, i64 238
  store i16 %i.acq, ptr %i.acr, align 2, !tbaa !239
  %i.acs = load i8, ptr %i.acm, align 1, !tbaa !156
  %i.act = zext i8 %i.acs to i64
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acm, i64 %i.act
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 1
  br label %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.i.i.i

.preheader.us.i.i.i.i:                            ; preds = %bb.bk
  %i.acw = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 288
  store i16 1, ptr %i.acw, align 8, !tbaa !239
  %i.acx = load i8, ptr %i.rk, align 1, !tbaa !156 ; 2 uses
  %i.acy = zext i8 %i.acx to i64                  ; 3 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.rk, i64 %i.acy
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 1 ; 2 uses
  %i.adb = zext i8 %i.acx to i16
  %i.adc = add nuw nsw i16 %i.adb, 2
  %i.add = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 290
  store i16 %i.adc, ptr %i.add, align 2, !tbaa !239
  %i.ade = load i8, ptr %i.ada, align 1, !tbaa !156
  %i.adf = zext i8 %i.ade to i64                  ; 3 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.ada, i64 %i.adf
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 1 ; 2 uses
  %i.adi = add nuw nsw i64 %i.acy, %i.adf
  %i.adj = trunc nuw nsw i64 %i.adi to i16
  %i.adk = add nuw nsw i16 %i.adj, 3
  %i.adl = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 292
  store i16 %i.adk, ptr %i.adl, align 4, !tbaa !239
  %i.adm = load i8, ptr %i.adh, align 1, !tbaa !156
  %i.adn = zext i8 %i.adm to i64                  ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adh, i64 %i.adn
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 1 ; 2 uses
  %i.adq = add nuw nsw i64 %i.acy, %i.adf
  %i.adr = add nuw nsw i64 %i.adq, %i.adn
  %i.ads = trunc nuw nsw i64 %i.adr to i16
  %i.adt = add nuw nsw i16 %i.ads, 4
  %i.adu = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 294
  store i16 %i.adt, ptr %i.adu, align 2, !tbaa !239
  %i.adv = load i8, ptr %i.adp, align 1, !tbaa !156
  %i.adw = zext i8 %i.adv to i64
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.adw
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 1
  br label %.loopexit.us.i.i.i.i

.split41.i.i.i.i:                                 ; preds = %bb.bj
  br i1 %i.rn, label %.split41.split.us.i.i.i.i, label %.split41.split.i.i.i.i

.split41.split.us.i.i.i.i:                        ; preds = %.split41.i.i.i.i
  %i.adz = load i8, ptr %i.iy, align 8, !tbaa !299
  %i.aea = zext i8 %i.adz to i32                  ; 2 uses
  %i.aeb = and i32 %i.aea, 2
  %.not28.us55.i.i.i.i = icmp eq i32 %i.aeb, 0
  br i1 %.not28.us55.i.i.i.i, label %.loopexit.us53.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %.split41.split.us.i.i.i.i
  %i.aec = and i32 %i.aea, 16
  %.not29.us47.i.i.i.i = icmp eq i32 %i.aec, 0
  br i1 %.not29.us47.i.i.i.i, label %.preheader.us52.i.i.i.i, label %.split.us.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %bb.bo
  %i.aed = ptrtoint ptr %i.rk to i64
  %i.aee = and i64 %i.aed, 1
  %i.aef = getelementptr inbounds nuw i8, ptr %i.rk, i64 %i.aee ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 288
  store i16 1, ptr %i.aeg, align 8, !tbaa !239
  %.1.val.us.i.i.i.i = load i16, ptr %i.aef, align 1 ; 2 uses
  %i.aeh = zext i16 %.1.val.us.i.i.i.i to i64
  %i.aei = shl nuw nsw i64 %i.aeh, 1              ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aef, i64 %i.aei
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 2 ; 2 uses
  %i.ael = add i16 %.1.val.us.i.i.i.i, 2
  %i.aem = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 290
  store i16 %i.ael, ptr %i.aem, align 2, !tbaa !239
  %.1.val.us.1.i.i.i.i = load i16, ptr %i.aek, align 1
  %i.aen = zext i16 %.1.val.us.1.i.i.i.i to i64
  %i.aeo = shl nuw nsw i64 %i.aen, 1              ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aek, i64 %i.aeo
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 2 ; 2 uses
  %i.aer = add nuw nsw i64 %i.aei, %i.aeo
  %i.aes = add nuw nsw i64 %i.aer, 4
  %i.aet = lshr exact i64 %i.aes, 1
  %i.aeu = trunc i64 %i.aet to i16
  %i.aev = add i16 %i.aeu, 1
  %i.aew = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 292
  store i16 %i.aev, ptr %i.aew, align 4, !tbaa !239
  %.1.val.us.2.i.i.i.i = load i16, ptr %i.aeq, align 1
  %i.aex = zext i16 %.1.val.us.2.i.i.i.i to i64
  %i.aey = shl nuw nsw i64 %i.aex, 1
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aeq, i64 %i.aey
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 2 ; 3 uses
  %i.afb = ptrtoint ptr %i.afa to i64
  %i.afc = sub i64 %i.afb, %i.ro
  %i.afd = lshr exact i64 %i.afc, 1
  %i.afe = trunc i64 %i.afd to i16
end_hunk_1
begin_hunk_2_@_ZN9Stockfish10Tablebases9probe_dtzERNS_8PositionEPNS0_10ProbeStateE:bb.a
  %i.auz = trunc i64 %i.auy to i16
  %i.ava = add i16 %i.auz, 1
  store i16 %i.ava, ptr %i.aqn, align 2, !tbaa !239
  %i.avb = load i8, ptr %i.auw, align 1, !tbaa !156
  %i.avc = zext i8 %i.avb to i64
  %i.avd = getelementptr inbounds nuw i8, ptr %i.auw, i64 %i.avc
  %i.ave = getelementptr inbounds nuw i8, ptr %i.avd, i64 1
  br label %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.thread.i.i.i

.split.i.i.i.i:                                   ; preds = %.split41.split.split.i.i.i.i
  %i.avf = ptrtoint ptr %i.rk to i64
  %i.avg = and i64 %i.avf, 1
  %i.avh = getelementptr inbounds nuw i8, ptr %i.rk, i64 %i.avg ; 2 uses
  store i16 1, ptr %i.aqj, align 8, !tbaa !239
  %.1.val.i.i.i.i = load i16, ptr %i.avh, align 1 ; 2 uses
  %i.avi = zext i16 %.1.val.i.i.i.i to i64
  %i.avj = shl nuw nsw i64 %i.avi, 1              ; 2 uses
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avh, i64 %i.avj
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avk, i64 2 ; 2 uses
  %i.avm = add i16 %.1.val.i.i.i.i, 2
  store i16 %i.avm, ptr %i.aql, align 2, !tbaa !239
  %.1.val.1.i.i.i.i = load i16, ptr %i.avl, align 1
  %i.avn = zext i16 %.1.val.1.i.i.i.i to i64
  %i.avo = shl nuw nsw i64 %i.avn, 1              ; 2 uses
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avl, i64 %i.avo
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avp, i64 2 ; 2 uses
  %i.avr = add nuw nsw i64 %i.avj, %i.avo
  %i.avs = add nuw nsw i64 %i.avr, 4
  %i.avt = lshr exact i64 %i.avs, 1
  %i.avu = trunc i64 %i.avt to i16
  %i.avv = add i16 %i.avu, 1
  store i16 %i.avv, ptr %i.aqm, align 4, !tbaa !239
  %.1.val.2.i.i.i.i = load i16, ptr %i.avq, align 1
  %i.avw = zext i16 %.1.val.2.i.i.i.i to i64
  %i.avx = shl nuw nsw i64 %i.avw, 1
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avq, i64 %i.avx
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avy, i64 2 ; 3 uses
  %i.awa = ptrtoint ptr %i.avz to i64
  %i.awb = sub i64 %i.awa, %i.ro
  %i.awc = lshr exact i64 %i.awb, 1
  %i.awd = trunc i64 %i.awc to i16
  %i.awe = add i16 %i.awd, 1
  store i16 %i.awe, ptr %i.aqn, align 2, !tbaa !239
  %.1.val.3.i.i.i.i = load i16, ptr %i.avz, align 1
  %i.awf = zext i16 %.1.val.3.i.i.i.i to i64
  %i.awg = shl nuw nsw i64 %i.awf, 1
  %i.awh = getelementptr inbounds nuw i8, ptr %i.avz, i64 %i.awg
  %i.awi = getelementptr inbounds nuw i8, ptr %i.awh, i64 2 ; 3 uses
  br i1 %i.is, label %.split.i.i.i.i.1, label %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.thread.i.i.i

.split.i.i.i.i.1:                                 ; preds = %.split.i.i.i.i
  %i.awj = ptrtoint ptr %i.awi to i64
  %i.awk = and i64 %i.awj, 1
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awi, i64 %i.awk ; 3 uses
  %i.awm = ptrtoint ptr %i.awl to i64
  %i.awn = sub i64 %i.awm, %i.ro
  %i.awo = lshr exact i64 %i.awn, 1
  %i.awp = trunc i64 %i.awo to i16
  %i.awq = add i16 %i.awp, 1
  store i16 %i.awq, ptr %i.aqj, align 8, !tbaa !239
  %.1.val.i.i.i.i.1 = load i16, ptr %i.awl, align 1
  %i.awr = zext i16 %.1.val.i.i.i.i.1 to i64
  %i.aws = shl nuw nsw i64 %i.awr, 1
  %i.awt = getelementptr inbounds nuw i8, ptr %i.awl, i64 %i.aws
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awt, i64 2 ; 3 uses
  %i.awv = ptrtoint ptr %i.awu to i64
  %i.aww = sub i64 %i.awv, %i.ro
  %i.awx = lshr exact i64 %i.aww, 1
  %i.awy = trunc i64 %i.awx to i16
  %i.awz = add i16 %i.awy, 1
  store i16 %i.awz, ptr %i.aql, align 2, !tbaa !239
  %.1.val.1.i.i.i.i.1 = load i16, ptr %i.awu, align 1
  %i.axa = zext i16 %.1.val.1.i.i.i.i.1 to i64
  %i.axb = shl nuw nsw i64 %i.axa, 1
  %i.axc = getelementptr inbounds nuw i8, ptr %i.awu, i64 %i.axb
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 2 ; 3 uses
  %i.axe = ptrtoint ptr %i.axd to i64
  %i.axf = sub i64 %i.axe, %i.ro
  %i.axg = lshr exact i64 %i.axf, 1
  %i.axh = trunc i64 %i.axg to i16
  %i.axi = add i16 %i.axh, 1
  store i16 %i.axi, ptr %i.aqm, align 4, !tbaa !239
  %.1.val.2.i.i.i.i.1 = load i16, ptr %i.axd, align 1
  %i.axj = zext i16 %.1.val.2.i.i.i.i.1 to i64
  %i.axk = shl nuw nsw i64 %i.axj, 1
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axd, i64 %i.axk
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axl, i64 2 ; 3 uses
  %i.axn = ptrtoint ptr %i.axm to i64
  %i.axo = sub i64 %i.axn, %i.ro
  %i.axp = lshr exact i64 %i.axo, 1
  %i.axq = trunc i64 %i.axp to i16
  %i.axr = add i16 %i.axq, 1
  store i16 %i.axr, ptr %i.aqn, align 2, !tbaa !239
  %.1.val.3.i.i.i.i.1 = load i16, ptr %i.axm, align 1
  %i.axs = zext i16 %.1.val.3.i.i.i.i.1 to i64
  %i.axt = shl nuw nsw i64 %i.axs, 1
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axm, i64 %i.axt
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 2 ; 2 uses
  %i.axw = ptrtoint ptr %i.axv to i64
  %i.axx = and i64 %i.axw, 1
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axv, i64 %i.axx ; 3 uses
  %i.axz = ptrtoint ptr %i.axy to i64
  %i.aya = sub i64 %i.axz, %i.ro
  %i.ayb = lshr exact i64 %i.aya, 1
  %i.ayc = trunc i64 %i.ayb to i16
  %i.ayd = add i16 %i.ayc, 1
  store i16 %i.ayd, ptr %i.aqj, align 8, !tbaa !239
  %.1.val.i.i.i.i.2 = load i16, ptr %i.axy, align 1
  %i.aye = zext i16 %.1.val.i.i.i.i.2 to i64
  %i.ayf = shl nuw nsw i64 %i.aye, 1
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.axy, i64 %i.ayf
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.ayg, i64 2 ; 3 uses
  %i.ayi = ptrtoint ptr %i.ayh to i64
  %i.ayj = sub i64 %i.ayi, %i.ro
  %i.ayk = lshr exact i64 %i.ayj, 1
  %i.ayl = trunc i64 %i.ayk to i16
  %i.aym = add i16 %i.ayl, 1
  store i16 %i.aym, ptr %i.aql, align 2, !tbaa !239
  %.1.val.1.i.i.i.i.2 = load i16, ptr %i.ayh, align 1
  %i.ayn = zext i16 %.1.val.1.i.i.i.i.2 to i64
  %i.ayo = shl nuw nsw i64 %i.ayn, 1
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.ayh, i64 %i.ayo
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayp, i64 2 ; 3 uses
  %i.ayr = ptrtoint ptr %i.ayq to i64
  %i.ays = sub i64 %i.ayr, %i.ro
  %i.ayt = lshr exact i64 %i.ays, 1
  %i.ayu = trunc i64 %i.ayt to i16
  %i.ayv = add i16 %i.ayu, 1
  store i16 %i.ayv, ptr %i.aqm, align 4, !tbaa !239
  %.1.val.2.i.i.i.i.2 = load i16, ptr %i.ayq, align 1
  %i.ayw = zext i16 %.1.val.2.i.i.i.i.2 to i64
  %i.ayx = shl nuw nsw i64 %i.ayw, 1
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayq, i64 %i.ayx
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayy, i64 2 ; 3 uses
  %i.aza = ptrtoint ptr %i.ayz to i64
  %i.azb = sub i64 %i.aza, %i.ro
  %i.azc = lshr exact i64 %i.azb, 1
  %i.azd = trunc i64 %i.azc to i16
  %i.aze = add i16 %i.azd, 1
  store i16 %i.aze, ptr %i.aqn, align 2, !tbaa !239
  %.1.val.3.i.i.i.i.2 = load i16, ptr %i.ayz, align 1
  %i.azf = zext i16 %.1.val.3.i.i.i.i.2 to i64
  %i.azg = shl nuw nsw i64 %i.azf, 1
  %i.azh = getelementptr inbounds nuw i8, ptr %i.ayz, i64 %i.azg
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azh, i64 2 ; 2 uses
  %i.azj = ptrtoint ptr %i.azi to i64
  %i.azk = and i64 %i.azj, 1
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azi, i64 %i.azk ; 3 uses
  %i.azm = ptrtoint ptr %i.azl to i64
  %i.azn = sub i64 %i.azm, %i.ro
  %i.azo = lshr exact i64 %i.azn, 1
  %i.azp = trunc i64 %i.azo to i16
  %i.azq = add i16 %i.azp, 1
  store i16 %i.azq, ptr %i.aqj, align 8, !tbaa !239
  %.1.val.i.i.i.i.3 = load i16, ptr %i.azl, align 1
  %i.azr = zext i16 %.1.val.i.i.i.i.3 to i64
  %i.azs = shl nuw nsw i64 %i.azr, 1
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azl, i64 %i.azs
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azt, i64 2 ; 3 uses
  %i.azv = ptrtoint ptr %i.azu to i64
  %i.azw = sub i64 %i.azv, %i.ro
  %i.azx = lshr exact i64 %i.azw, 1
  %i.azy = trunc i64 %i.azx to i16
  %i.azz = add i16 %i.azy, 1
  store i16 %i.azz, ptr %i.aql, align 2, !tbaa !239
  %.1.val.1.i.i.i.i.3 = load i16, ptr %i.azu, align 1
  %i.baa = zext i16 %.1.val.1.i.i.i.i.3 to i64
  %i.bab = shl nuw nsw i64 %i.baa, 1
  %i.bac = getelementptr inbounds nuw i8, ptr %i.azu, i64 %i.bab
  %i.bad = getelementptr inbounds nuw i8, ptr %i.bac, i64 2 ; 3 uses
  %i.bae = ptrtoint ptr %i.bad to i64
  %i.baf = sub i64 %i.bae, %i.ro
  %i.bag = lshr exact i64 %i.baf, 1
  %i.bah = trunc i64 %i.bag to i16
  %i.bai = add i16 %i.bah, 1
  store i16 %i.bai, ptr %i.aqm, align 4, !tbaa !239
  %.1.val.2.i.i.i.i.3 = load i16, ptr %i.bad, align 1
  %i.baj = zext i16 %.1.val.2.i.i.i.i.3 to i64
  %i.bak = shl nuw nsw i64 %i.baj, 1
  %i.bal = getelementptr inbounds nuw i8, ptr %i.bad, i64 %i.bak
  %i.bam = getelementptr inbounds nuw i8, ptr %i.bal, i64 2 ; 3 uses
  %i.ban = ptrtoint ptr %i.bam to i64
  %i.bao = sub i64 %i.ban, %i.ro
  %i.bap = lshr exact i64 %i.bao, 1
  %i.baq = trunc i64 %i.bap to i16
  %i.bar = add i16 %i.baq, 1
  store i16 %i.bar, ptr %i.aqn, align 2, !tbaa !239
  %.1.val.3.i.i.i.i.3 = load i16, ptr %i.bam, align 1
  %i.bas = zext i16 %.1.val.3.i.i.i.i.3 to i64
  %i.bat = shl nuw nsw i64 %i.bas, 1
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bam, i64 %i.bat
  %i.bav = getelementptr inbounds nuw i8, ptr %i.bau, i64 2
  br label %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.thread.i.i.i

_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.thread.i.i.i: ; preds = %.split.i.i.i.i, %.split.i.i.i.i.1, %.preheader.us69.i.i.i.i, %.preheader.us69.i.i.i.i.1, %.split41.split.i.i.i.i
  %.us-phi44.i.ph.i.i.i = phi ptr [ %i.ave, %.preheader.us69.i.i.i.i.1 ], [ %i.rk, %.split41.split.i.i.i.i ], [ %i.arm, %.preheader.us69.i.i.i.i ], [ %i.awi, %.split.i.i.i.i ], [ %i.bav, %.split.i.i.i.i.1 ] ; 2 uses
  %i.baw = ptrtoint ptr %.us-phi44.i.ph.i.i.i to i64
  %i.bax = and i64 %i.baw, 1
  br label %.preheader122.i.split.i.i

_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.i.i.i: ; preds = %.loopexit.us53.i.i.i.i, %.loopexit.us53.i.i.i.i.1, %.loopexit.us53.i.i.i.i.2, %.preheader.us52.i.i.i.i.3, %.split.us.i.i.i.i.3, %.split41.split.us.i.i.i.i.3, %.loopexit.us.i.i.i.i, %.preheader.us.i.i.i.i.3, %.split.us.us.i.i.i.i.3, %.split41.us.i.i.i.i.3
  %.us-phi44.i.i.i.i = phi ptr [ %i.abl, %.split.us.us.i.i.i.i.3 ], [ %.3.us.i.i.i.i, %.loopexit.us.i.i.i.i ], [ %.3.us.i.i.i.i.2, %.split41.us.i.i.i.i.3 ], [ %i.acv, %.preheader.us.i.i.i.i.3 ], [ %.3.us50.i.i.i.i, %.loopexit.us53.i.i.i.i ], [ %.3.us50.i.i.i.i.1, %.loopexit.us53.i.i.i.i.1 ], [ %.3.us50.i.i.i.i.2, %.loopexit.us53.i.i.i.i.2 ], [ %.3.us50.i.i.i.i.2, %.split41.split.us.i.i.i.i.3 ], [ %i.apc, %.preheader.us52.i.i.i.i.3 ], [ %i.ans, %.split.us.i.i.i.i.3 ] ; 3 uses
  %i.bay = ptrtoint ptr %.us-phi44.i.i.i.i to i64
  %i.baz = and i64 %i.bay, 1                      ; 2 uses
  br i1 %i.rn, label %.preheader123.us.i.i.i, label %.preheader122.i.split.i.i

.preheader123.us.i.i.i:                           ; preds = %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.i.i.i
  %i.bba = getelementptr inbounds nuw i8, ptr %.us-phi44.i.i.i.i, i64 %i.baz ; 2 uses
  %i.bbb = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 112
  %i.bbc = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 120
  %i.bbd = load i64, ptr %i.bbc, align 8, !tbaa !309
  %i.bbe = mul i64 %i.bbd, 6
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.bba, i64 %i.bbe ; 3 uses
  store ptr %i.bba, ptr %i.bbb, align 8, !tbaa !310
  br i1 %i.is, label %.preheader123.us.i.i.i.1, label %.preheader121.i.us.i.i

.preheader123.us.i.i.i.1:                         ; preds = %.preheader123.us.i.i.i
  %i.bbg = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 352
  %i.bbh = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 360
  %i.bbi = load i64, ptr %i.bbh, align 8, !tbaa !309
  %i.bbj = mul i64 %i.bbi, 6
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bbf, i64 %i.bbj ; 3 uses
  store ptr %i.bbf, ptr %i.bbg, align 8, !tbaa !310
  %exitcond193.i.i.i.1 = icmp eq i8 %i.jb, 2
  br i1 %exitcond193.i.i.i.1, label %.preheader121.i.us.i.i, label %.preheader123.us.i.i.i.2

.preheader123.us.i.i.i.2:                         ; preds = %.preheader123.us.i.i.i.1
  %i.bbl = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 592
  %i.bbm = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 600
  %i.bbn = load i64, ptr %i.bbm, align 8, !tbaa !309
  %i.bbo = mul i64 %i.bbn, 6
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbk, i64 %i.bbo ; 3 uses
  store ptr %i.bbk, ptr %i.bbl, align 8, !tbaa !310
  %exitcond193.i.i.i.2 = icmp eq i8 %i.jb, 3
  br i1 %exitcond193.i.i.i.2, label %.preheader121.i.us.i.i, label %.preheader123.us.i.i.i.3

.preheader123.us.i.i.i.3:                         ; preds = %.preheader123.us.i.i.i.2
  %i.bbq = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 832
  %i.bbr = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 840
  %i.bbs = load i64, ptr %i.bbr, align 8, !tbaa !309
  %i.bbt = mul i64 %i.bbs, 6
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbp, i64 %i.bbt
  store ptr %i.bbp, ptr %i.bbq, align 8, !tbaa !310
  br label %.preheader121.i.us.i.i

.preheader121.i.us.i.i:                           ; preds = %.preheader123.us.i.i.i, %.preheader123.us.i.i.i.1, %.preheader123.us.i.i.i.2, %.preheader123.us.i.i.i.3
  %.lcssa495 = phi ptr [ %i.bbf, %.preheader123.us.i.i.i ], [ %i.bbk, %.preheader123.us.i.i.i.1 ], [ %i.bbp, %.preheader123.us.i.i.i.2 ], [ %i.bbu, %.preheader123.us.i.i.i.3 ] ; 2 uses
  %i.bbv = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 96
  %i.bbw = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 104
  %i.bbx = load i32, ptr %i.bbw, align 8, !tbaa !311
  %i.bby = zext i32 %i.bbx to i64
  %i.bbz = shl nuw nsw i64 %i.bby, 1
  %i.bca = getelementptr inbounds nuw i8, ptr %.lcssa495, i64 %i.bbz ; 3 uses
  store ptr %.lcssa495, ptr %i.bbv, align 8, !tbaa !312
  br i1 %i.is, label %.preheader121.i.us.i.i.2, label %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i.loopexit.critedge

.preheader121.i.us.i.i.2:                         ; preds = %.preheader121.i.us.i.i
  %20 = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 336
  %21 = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 344
  %22 = load i32, ptr %21, align 8, !tbaa !311
  store ptr %i.bca, ptr %20, align 8, !tbaa !312
  %23 = zext i32 %22 to i64
  %24 = shl nuw nsw i64 %23, 1
  %25 = getelementptr inbounds nuw i8, ptr %i.bca, i64 %24 ; 2 uses
  %i.bcb = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 576
  %i.bcc = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 584
  %i.bcd = load i32, ptr %i.bcc, align 8, !tbaa !311
  store ptr %25, ptr %i.bcb, align 8, !tbaa !312
  %i.bce = zext i32 %i.bcd to i64
  %i.bcf = shl nuw nsw i64 %i.bce, 1
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 %i.bcf ; 2 uses
  %27 = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 816
  %i.bcg = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 824
  %28 = load i32, ptr %i.bcg, align 8, !tbaa !311
  %29 = zext i32 %28 to i64
  %30 = shl nuw nsw i64 %29, 1
  %31 = getelementptr inbounds nuw i8, ptr %26, i64 %30
  store ptr %26, ptr %27, align 8, !tbaa !312
  br label %.preheader.i.i.i

.preheader122.i.split.i.i:                        ; preds = %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.i.i.i, %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.thread.i.i.i
  %i.bch = phi i64 [ %i.bax, %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.thread.i.i.i ], [ %i.baz, %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.i.i.i ] ; 2 uses
  %.us-phi44.i230.i.i.i = phi ptr [ %.us-phi44.i.ph.i.i.i, %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.thread.i.i.i ], [ %.us-phi44.i.i.i.i, %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.i.i.i ] ; 2 uses
  %i.bci = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 120
  %i.bcj = load i64, ptr %i.bci, align 8, !tbaa !309 ; 2 uses
  %i.bck = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 112
  %narrow.i.i = mul nuw nsw i8 %i.it, 6
  %i.bcl = zext nneg i8 %narrow.i.i to i64        ; 2 uses
  %i.bcm = mul i64 %i.bcj, %i.bcl
  %i.bcn = getelementptr i8, ptr %.us-phi44.i230.i.i.i, i64 %i.bcm
  %scevgep.i.i.i = getelementptr i8, ptr %i.bcn, i64 %i.bch
  %i.bco = add nuw nsw i64 %i.bcl, 6
  %i.bcp = mul i64 %i.bcj, %i.bco
  %i.bcq = getelementptr i8, ptr %.us-phi44.i230.i.i.i, i64 %i.bcp
  %scevgep188.i.i.i = getelementptr i8, ptr %i.bcq, i64 %i.bch ; 2 uses
  store ptr %scevgep.i.i.i, ptr %i.bck, align 8, !tbaa !310
  %i.bcr = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 104
  %i.bcs = load i32, ptr %i.bcr, align 8, !tbaa !311
  %i.bct = zext i32 %i.bcs to i64                 ; 2 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 96
  %i.bcv = shl nuw nsw i8 %i.it, 1
  %i.bcw = zext nneg i8 %i.bcv to i64             ; 2 uses
  %i.bcx = mul nuw nsw i64 %i.bct, %i.bcw
  %scevgep.i.i = getelementptr i8, ptr %scevgep188.i.i.i, i64 %i.bcx
  %i.bcy = add nuw nsw i64 %i.bcw, 2
  %i.bcz = mul nuw nsw i64 %i.bcy, %i.bct
  %scevgep97.i.i = getelementptr i8, ptr %scevgep188.i.i.i, i64 %i.bcz
  store ptr %scevgep.i.i, ptr %i.bcu, align 8, !tbaa !312
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader122.i.split.i.i, %.preheader121.i.us.i.i.2
  %.8172.i.i.i.ph = phi ptr [ %scevgep97.i.i, %.preheader122.i.split.i.i ], [ %31, %.preheader121.i.us.i.i.2 ]
  %i.bda = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 128
  %i.bdb = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 60
  %i.bdc = load i32, ptr %i.bdb, align 4, !tbaa !313
  %i.bdd = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 64
  %i.bde = load i64, ptr %i.bdd, align 8, !tbaa !314
  %i.bdf = ptrtoint ptr %.8172.i.i.i.ph to i64
  %i.bdg = add i64 %i.bdf, 63
  %i.bdh = and i64 %i.bdg, -64
  %i.bdi = inttoptr i64 %i.bdh to ptr             ; 2 uses
  store ptr %i.bdi, ptr %i.bda, align 8, !tbaa !315
  br i1 %i.is, label %.preheader.i.i.i.1, label %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i

.preheader.i.i.i.1:                               ; preds = %.preheader.i.i.i
  %i.bdj = zext i32 %i.bdc to i64
  %i.bdk = mul i64 %i.bde, %i.bdj
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bdi, i64 %i.bdk
  %i.bdm = zext nneg i8 %i.rm to i64
  %32 = getelementptr inbounds nuw [240 x i8], ptr %i.iy, i64 %i.bdm ; 3 uses
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 72
  %34 = getelementptr inbounds nuw i8, ptr %32, i64 4
  %35 = load i32, ptr %34, align 4, !tbaa !313
  %36 = getelementptr inbounds nuw i8, ptr %32, i64 8
  %37 = load i64, ptr %36, align 8, !tbaa !314
  %38 = ptrtoint ptr %i.bdl to i64
  %39 = add i64 %38, 63
  %40 = and i64 %39, -64
  %41 = inttoptr i64 %40 to ptr                   ; 2 uses
  store ptr %41, ptr %33, align 8, !tbaa !315
  %42 = zext i32 %35 to i64
  %43 = mul i64 %37, %42
  %44 = getelementptr inbounds nuw i8, ptr %41, i64 %43
  %narrow125.i.i.i.2 = shl nuw nsw i8 %i.rm, 1
  %45 = zext nneg i8 %narrow125.i.i.i.2 to i64
  %i.bdn = getelementptr inbounds nuw [240 x i8], ptr %i.iy, i64 %45 ; 3 uses
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bdn, i64 72
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bdn, i64 4
  %i.bdq = load i32, ptr %i.bdp, align 4, !tbaa !313
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdn, i64 8
  %i.bds = load i64, ptr %i.bdr, align 8, !tbaa !314
  %i.bdt = ptrtoint ptr %44 to i64
  %i.bdu = add i64 %i.bdt, 63
  %i.bdv = and i64 %i.bdu, -64
  %i.bdw = inttoptr i64 %i.bdv to ptr             ; 2 uses
  store ptr %i.bdw, ptr %i.bdo, align 8, !tbaa !315
  %46 = zext i32 %i.bdq to i64
  %47 = mul i64 %i.bds, %46
  %48 = getelementptr inbounds nuw i8, ptr %i.bdw, i64 %47
  %narrow125.i.i.i.3 = select i1 %i.rn, i64 3, i64 0
  %49 = getelementptr inbounds nuw [240 x i8], ptr %i.iy, i64 %narrow125.i.i.i.3
  %50 = getelementptr inbounds nuw i8, ptr %49, i64 72
  %51 = ptrtoint ptr %48 to i64
  %52 = add i64 %51, 63
  %53 = and i64 %52, -64
  %54 = inttoptr i64 %53 to ptr
  store ptr %54, ptr %50, align 8, !tbaa !315
  br label %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i

_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i.loopexit.critedge: ; preds = %.preheader121.i.us.i.i
  %i.bdx = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 128
  %i.bdy = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 60
  %i.bdz = load i32, ptr %i.bdy, align 4, !tbaa !313 ; 0 uses
  %i.bea = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 64
  %i.beb = load i64, ptr %i.bea, align 8, !tbaa !314 ; 0 uses
  %i.bec = ptrtoint ptr %i.bca to i64
  %i.bed = add i64 %i.bec, 63
  %i.bee = and i64 %i.bed, -64
  %i.bef = inttoptr i64 %i.bee to ptr
  store ptr %i.bef, ptr %i.bdx, align 8, !tbaa !315
  br label %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i

_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i: ; preds = %.preheader.i.i.i, %.preheader.i.i.i.1, %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i.loopexit.critedge, %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i.i
  store atomic i8 1, ptr %.0.val.i.i release, align 8
  %i.beg = load ptr, ptr %i.ia, align 8, !tbaa !199
  %i.beh = load ptr, ptr %4, align 8, !tbaa !175  ; 2 uses
  %i.bei = icmp eq ptr %i.beh, %i.cc
  br i1 %i.bei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i
  %i.bej = load i64, ptr %i.cc, align 8, !tbaa !156
  %i.bek = add i64 %i.bej, 1
  call void @_ZdlPvm(ptr noundef %i.beh, i64 noundef %i.bek) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.bel = load ptr, ptr %3, align 8, !tbaa !175  ; 2 uses
  %i.bem = icmp eq ptr %i.bel, %i.ca
  br i1 %i.bem, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i
  %i.ben = load i64, ptr %i.ca, align 8, !tbaa !156
  %i.beo = add i64 %i.ben, 1
  call void @_ZdlPvm(ptr noundef %i.bel, i64 noundef %i.beo) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.bep = load ptr, ptr %2, align 8, !tbaa !175  ; 2 uses
  %i.beq = icmp eq ptr %i.bep, %i.by
  br i1 %i.beq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i
  %i.ber = load i64, ptr %i.by, align 8, !tbaa !156
  %i.bes = add i64 %i.ber, 1
  call void @_ZdlPvm(ptr noundef %i.bep, i64 noundef %i.bes) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.bs

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i, %bb.r
  %.023.i.i = phi ptr [ %i.bx, %bb.r ], [ %i.beg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i ]
  %i.bet = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE1EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionEE5mutex) #26 ; 0 uses
  br label %_ZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE1EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionE.exit.i

_ZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE1EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionE.exit.i: ; preds = %bb.bs, %bb.o
  %.1.i.i = phi ptr [ %i.bs, %bb.o ], [ %.023.i.i, %bb.bs ]
  %.not11.i = icmp eq ptr %.1.i.i, null
  br i1 %.not11.i, label %_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE1EiEET0_RKNS_8PositionEPNS_10Tablebases10ProbeStateENS7_8WDLScoreE.exit.thread, label %bb.bt

_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE1EiEET0_RKNS_8PositionEPNS_10Tablebases10ProbeStateENS7_8WDLScoreE.exit.thread: ; preds = %_ZN9Stockfish12_GLOBAL__N_18TBTables3getILNS0_6TBTypeE1EEEPNS0_7TBTableIXT_EEEm.exit.i, %_ZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE1EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionE.exit.i
  store i32 0, ptr %1, align 4, !tbaa !234
  br label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit

bb.bt:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE1EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.beu = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 32
  %i.bev = load i64, ptr %i.beu, align 8, !tbaa !258 ; 2 uses
  %i.bew = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 40
  %i.bex = load i64, ptr %i.bew, align 8, !tbaa !316
  %i.bey = icmp eq i64 %i.bev, %i.bex             ; 2 uses
  %i.bez = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.bfa = load i8, ptr %i.bez, align 4           ; 2 uses
  %i.bfb = icmp ne i8 %i.bfa, 0
  %i.bfc = select i1 %i.bey, i1 %i.bfb, i1 false
  %i.bfd = load ptr, ptr %i.bd, align 8, !tbaa !245
  %i.bfe = load i64, ptr %i.bfd, align 8, !tbaa !254
  %i.bff = icmp ne i64 %i.bfe, %i.bev
  %i.bfg = select i1 %i.bfc, i1 true, i1 %i.bff   ; 3 uses
  %i.bfh = select i1 %i.bfg, i32 8, i32 0         ; 2 uses
  %i.bfi = select i1 %i.bfg, i32 56, i32 0        ; 2 uses
  %i.bfj = zext i1 %i.bfg to i8
  %i.bfk = xor i8 %i.bfa, %i.bfj
  %i.bfl = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 52 ; 3 uses
  %i.bfm = load i8, ptr %i.bfl, align 4, !tbaa !208, !range !206, !noundef !207
  %i.bfn = trunc nuw i8 %i.bfm to i1              ; 3 uses
  br i1 %i.bfn, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.bfo = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 184
  %i.bfp = load i8, ptr %i.bfo, align 8, !tbaa !241
  %i.bfq = trunc nuw nsw i32 %i.bfh to i8
  %i.bfr = xor i8 %i.bfp, %i.bfq
  %i.bfs = lshr i8 %i.bfr, 3
  %i.bft = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bfu = zext nneg i8 %i.bfs to i64
  %i.bfv = getelementptr inbounds nuw [8 x i8], ptr %i.bft, i64 %i.bfu
  %i.bfw = load i64, ptr %i.bfv, align 8, !tbaa !17
  %i.bfx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bfy = load i64, ptr %i.bfx, align 8, !tbaa !17
  %i.bfz = and i64 %i.bfy, %i.bfw                 ; 2 uses
  %i.bga = trunc nuw nsw i32 %i.bfi to i8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %bb.bu
  %indvars.iv.i17.i = phi i64 [ %indvars.iv.next.i18.i, %bb.bv ], [ 0, %bb.bu ] ; 5 uses
  %.0158.i.i = phi i64 [ %i.bge, %bb.bv ], [ %i.bfz, %bb.bu ] ; 3 uses
  %i.bgb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0158.i.i, i1 true)
  %i.bgc = trunc nuw nsw i64 %i.bgb to i8
  %i.bgd = add i64 %.0158.i.i, -1
  %i.bge = and i64 %i.bgd, %.0158.i.i             ; 2 uses
  %i.bgf = xor i8 %i.bgc, %i.bga
  %indvars.iv.next.i18.i = add nuw nsw i64 %indvars.iv.i17.i, 1 ; 3 uses
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i17.i
  store i8 %i.bgf, ptr %i.bgg, align 1, !tbaa !95
  %.not.i19.i = icmp eq i64 %i.bge, 0
  br i1 %.not.i19.i, label %bb.bw, label %bb.bv, !llvm.loop !317

bb.bw:                                            ; preds = %bb.bv
  %i.bgh = trunc nuw i64 %indvars.iv.next.i18.i to i32
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i18.i
  %.not17.i.i.i.i = icmp eq i64 %indvars.iv.i17.i, 0
  %.pre297.i.i.a = load i8, ptr %i.a, align 1, !tbaa !95 ; 3 uses
  br i1 %.not17.i.i.i.i, label %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.bw
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %.phi.trans.insert.i.i = zext i8 %.pre297.i.i.a to i64
  %.phi.trans.insert295.i.i = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %.phi.trans.insert.i.i
  %.pre296.i.i = load i32, ptr %.phi.trans.insert295.i.i, align 4, !tbaa !89 ; 2 uses
  %xtraiter503 = and i64 %indvars.iv.i17.i, 7     ; 2 uses
  %lcmp.mod504.not = icmp eq i64 %xtraiter503, 0
  br i1 %lcmp.mod504.not, label %.lr.ph.i.i.i20.i.prol.loopexit, label %.lr.ph.i.i.i20.i.prol

.lr.ph.i.i.i20.i.prol:                            ; preds = %.lr.ph.i.i.preheader.i.i, %.lr.ph.i.i.i20.i.prol
  %i.bgk = phi i32 [ %i.bgs, %.lr.ph.i.i.i20.i.prol ], [ %.pre296.i.i, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %i.bgl = phi ptr [ %i.bgr, %.lr.ph.i.i.i20.i.prol ], [ %i.bgj, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %.018.i.i.i.i.prol = phi ptr [ %spec.select.i.i.i.i.prol, %.lr.ph.i.i.i20.i.prol ], [ %i.a, %.lr.ph.i.i.preheader.i.i ]
  %prol.iter505 = phi i64 [ %prol.iter505.next, %.lr.ph.i.i.i20.i.prol ], [ 0, %.lr.ph.i.i.preheader.i.i ]
  %i.bgm = load i8, ptr %i.bgl, align 1, !tbaa !95
  %i.bgn = zext i8 %i.bgm to i64
  %i.bgo = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.bgn
  %i.bgp = load i32, ptr %i.bgo, align 4, !tbaa !89 ; 2 uses
  %i.bgq = icmp slt i32 %i.bgk, %i.bgp
  %spec.select.i.i.i.i.prol = select i1 %i.bgq, ptr %i.bgl, ptr %.018.i.i.i.i.prol ; 3 uses
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.bgl, i64 1 ; 2 uses
  %i.bgs = call i32 @llvm.smax.i32(i32 %i.bgk, i32 %i.bgp) ; 2 uses
  %prol.iter505.next = add i64 %prol.iter505, 1   ; 2 uses
  %prol.iter505.cmp.not = icmp eq i64 %prol.iter505.next, %xtraiter503
  br i1 %prol.iter505.cmp.not, label %.lr.ph.i.i.i20.i.prol.loopexit, label %.lr.ph.i.i.i20.i.prol, !llvm.loop !318

.lr.ph.i.i.i20.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i20.i.prol, %.lr.ph.i.i.preheader.i.i
  %spec.select.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i.i ], [ %spec.select.i.i.i.i.prol, %.lr.ph.i.i.i20.i.prol ]
  %.unr = phi i32 [ %.pre296.i.i, %.lr.ph.i.i.preheader.i.i ], [ %i.bgs, %.lr.ph.i.i.i20.i.prol ]
  %.unr506 = phi ptr [ %i.bgj, %.lr.ph.i.i.preheader.i.i ], [ %i.bgr, %.lr.ph.i.i.i20.i.prol ]
  %.018.i.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.preheader.i.i ], [ %spec.select.i.i.i.i.prol, %.lr.ph.i.i.i20.i.prol ]
  %i.bgt = icmp samesign ult i64 %indvars.iv.i17.i, 8
  br i1 %i.bgt, label %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i20.i

.lr.ph.i.i.i20.i:                                 ; preds = %.lr.ph.i.i.i20.i.prol.loopexit, %.lr.ph.i.i.i20.i
  %i.bgu = phi i32 [ %i.biz, %.lr.ph.i.i.i20.i ], [ %.unr, %.lr.ph.i.i.i20.i.prol.loopexit ] ; 2 uses
  %i.bgv = phi ptr [ %i.biy, %.lr.ph.i.i.i20.i ], [ %.unr506, %.lr.ph.i.i.i20.i.prol.loopexit ] ; 10 uses
  %.018.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.7, %.lr.ph.i.i.i20.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i20.i.prol.loopexit ]
  %i.bgw = load i8, ptr %i.bgv, align 1, !tbaa !95
  %i.bgx = zext i8 %i.bgw to i64
  %i.bgy = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.bgx
  %i.bgz = load i32, ptr %i.bgy, align 4, !tbaa !89 ; 2 uses
  %i.bha = icmp slt i32 %i.bgu, %i.bgz
  %spec.select.i.i.i.i = select i1 %i.bha, ptr %i.bgv, ptr %.018.i.i.i.i
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bgv, i64 1 ; 2 uses
  %i.bhc = call i32 @llvm.smax.i32(i32 %i.bgu, i32 %i.bgz) ; 2 uses
  %i.bhd = load i8, ptr %i.bhb, align 1, !tbaa !95
  %i.bhe = zext i8 %i.bhd to i64
  %i.bhf = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.bhe
  %i.bhg = load i32, ptr %i.bhf, align 4, !tbaa !89 ; 2 uses
  %i.bhh = icmp slt i32 %i.bhc, %i.bhg
  %spec.select.i.i.i.i.1 = select i1 %i.bhh, ptr %i.bhb, ptr %spec.select.i.i.i.i
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bgv, i64 2 ; 2 uses
  %i.bhj = call i32 @llvm.smax.i32(i32 %i.bhc, i32 %i.bhg) ; 2 uses
  %i.bhk = load i8, ptr %i.bhi, align 1, !tbaa !95
  %i.bhl = zext i8 %i.bhk to i64
  %i.bhm = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.bhl
  %i.bhn = load i32, ptr %i.bhm, align 4, !tbaa !89 ; 2 uses
  %i.bho = icmp slt i32 %i.bhj, %i.bhn
  %spec.select.i.i.i.i.2 = select i1 %i.bho, ptr %i.bhi, ptr %spec.select.i.i.i.i.1
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bgv, i64 3 ; 2 uses
  %i.bhq = call i32 @llvm.smax.i32(i32 %i.bhj, i32 %i.bhn) ; 2 uses
  %i.bhr = load i8, ptr %i.bhp, align 1, !tbaa !95
  %i.bhs = zext i8 %i.bhr to i64
  %i.bht = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.bhs
  %i.bhu = load i32, ptr %i.bht, align 4, !tbaa !89 ; 2 uses
  %i.bhv = icmp slt i32 %i.bhq, %i.bhu
  %spec.select.i.i.i.i.3 = select i1 %i.bhv, ptr %i.bhp, ptr %spec.select.i.i.i.i.2
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bgv, i64 4 ; 2 uses
  %i.bhx = call i32 @llvm.smax.i32(i32 %i.bhq, i32 %i.bhu) ; 2 uses
  %i.bhy = load i8, ptr %i.bhw, align 1, !tbaa !95
  %i.bhz = zext i8 %i.bhy to i64
  %i.bia = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.bhz
  %i.bib = load i32, ptr %i.bia, align 4, !tbaa !89 ; 2 uses
  %i.bic = icmp slt i32 %i.bhx, %i.bib
  %spec.select.i.i.i.i.4 = select i1 %i.bic, ptr %i.bhw, ptr %spec.select.i.i.i.i.3
  %i.bid = getelementptr inbounds nuw i8, ptr %i.bgv, i64 5 ; 2 uses
  %i.bie = call i32 @llvm.smax.i32(i32 %i.bhx, i32 %i.bib) ; 2 uses
  %i.bif = load i8, ptr %i.bid, align 1, !tbaa !95
  %i.big = zext i8 %i.bif to i64
  %i.bih = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.big
  %i.bii = load i32, ptr %i.bih, align 4, !tbaa !89 ; 2 uses
  %i.bij = icmp slt i32 %i.bie, %i.bii
  %spec.select.i.i.i.i.5 = select i1 %i.bij, ptr %i.bid, ptr %spec.select.i.i.i.i.4
end_hunk_2
begin_hunk_3_@_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE0ENS_10Tablebases8WDLScoreEEET0_RKNS_8PositionEPNS3_10ProbeStateES4_:bb.a
  %i.ey = load i64, ptr %i.es, align 8, !tbaa !156
  store i64 %i.ey, ptr %i.eq, align 8, !tbaa !156, !alias.scope !424
  %.phi.trans.insert.i44.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %.pre.i45.i = load i64, ptr %.phi.trans.insert.i44.i, align 8, !tbaa !90
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i, %bb.z
  %i.ez = phi i64 [ %i.ev, %bb.z ], [ %.pre.i45.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i64 %i.ez, ptr %i.fb, align 8, !tbaa !90, !alias.scope !424
  store ptr %i.es, ptr %i.ep, align 8, !tbaa !175
  store i64 0, ptr %i.fa, align 8, !tbaa !90
  store i8 0, ptr %i.es, align 8, !tbaa !156
  %i.fc = load ptr, ptr %2, align 8, !tbaa !175   ; 6 uses
  %i.fd = icmp eq ptr %i.fc, %i.ah
  %i.fe = load ptr, ptr %7, align 8, !tbaa !175   ; 5 uses
  %i.ff = icmp eq ptr %i.fe, %i.eq                ; 2 uses
  br i1 %i.fd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i
  br i1 %i.ff, label %bb.aa, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i
  br i1 %i.ff, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.fg = load i64, ptr %i.fb, align 8, !tbaa !90 ; 3 uses
  %i.fh = icmp ult i64 %i.fg, 16
  call void @llvm.assume(i1 %i.fh)
  switch i64 %i.fg, label %bb.ac [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.fi = load i8, ptr %i.fe, align 1, !tbaa !156
  store i8 %i.fi, ptr %i.fc, align 1, !tbaa !156
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fc, ptr align 1 %i.fe, i64 %i.fg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.fj = load i64, ptr %i.fb, align 8, !tbaa !90 ; 2 uses
  store i64 %i.fj, ptr %i.ai, align 8, !tbaa !90
  %i.fk = load ptr, ptr %2, align 8, !tbaa !175
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fj
  store i8 0, ptr %i.fl, align 1, !tbaa !156
  %.pre.i46.i = load ptr, ptr %7, align 8, !tbaa !175
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.fe, ptr %2, align 8, !tbaa !175
  %i.fm = load <2 x i64>, ptr %i.fb, align 8, !tbaa !156
  store <2 x i64> %i.fm, ptr %i.ai, align 8, !tbaa !156
  br label %bb.ae

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.fn = load i64, ptr %i.ah, align 8, !tbaa !156
  store ptr %i.fe, ptr %2, align 8, !tbaa !175
  %i.fo = load <2 x i64>, ptr %i.fb, align 8, !tbaa !156
  store <2 x i64> %i.fo, ptr %i.ai, align 8, !tbaa !156
  %.not.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.fc, ptr %7, align 8, !tbaa !175
  store i64 %i.fn, ptr %i.eq, align 8, !tbaa !156
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.eq, ptr %7, align 8, !tbaa !175
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.ae, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.fp = phi ptr [ %i.fc, %bb.ad ], [ %i.eq, %bb.ae ], [ %.pre.i46.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.fb, align 8, !tbaa !90
  store i8 0, ptr %i.fp, align 1, !tbaa !156
  %i.fq = load ptr, ptr %7, align 8, !tbaa !175   ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.eq
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.fs = load i64, ptr %i.eq, align 8, !tbaa !156
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i
  %i.fu = load ptr, ptr %8, align 8, !tbaa !175   ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i
  %i.fx = load i64, ptr %i.fv, align 8, !tbaa !156
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fy) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i
  br i1 %.not25.i, label %.critedge30.i, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i
  %i.fz = load ptr, ptr %10, align 8, !tbaa !175  ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i: ; preds = %.critedge.i
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !156
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i: ; preds = %.critedge.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.critedge29.i

.critedge30.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i
  %i.ge = load ptr, ptr %9, align 8, !tbaa !175   ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i: ; preds = %.critedge30.i
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !156
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
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN9Stockfish12_GLOBAL__N_16TBFileE, i64 24), ptr %11, align 8, !tbaa !132
  %i.gm = getelementptr inbounds nuw i8, ptr %11, i64 288 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN9Stockfish12_GLOBAL__N_16TBFileE, i64 64), ptr %i.gm, align 8, !tbaa !132
  %i.gn = getelementptr inbounds nuw i8, ptr %11, i64 256
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !175 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %11, i64 272 ; 2 uses
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.critedge29.i
  %i.gr = load i64, ptr %i.gp, align 8, !tbaa !156
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gs) #30, !inline_history !230
  br label %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i

_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i:    ; preds = %.critedge29.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_St14basic_ifstreamIcSt11char_traitsIcEE, i64 24), ptr %11, align 8, !tbaa !132
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_St14basic_ifstreamIcSt11char_traitsIcEE, i64 64), ptr %i.gm, align 8, !tbaa !132
  %i.gt = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt13basic_filebufIcSt11char_traitsIcEE, i64 16), ptr %i.gt, align 8, !tbaa !132
  %i.gu = call noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.gt) #26, !inline_history !230 ; 0 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %11, i64 120
  call void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.gv) #26, !inline_history !230
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.gt, align 8, !tbaa !132
  %i.gw = getelementptr inbounds nuw i8, ptr %11, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gw) #26, !inline_history !230
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_Si, i64 24), ptr %11, align 8, !tbaa !132
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_Si, i64 64), ptr %i.gm, align 8, !tbaa !132
  %i.gx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.gx, align 8, !tbaa !231
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.gm) #26, !inline_history !233
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %.not26.i = icmp eq ptr %i.gl, null
  br i1 %.not26.i, label %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_Ph.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  %i.gz = load i64, ptr %i.au, align 8, !tbaa !214
  %i.ha = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 40
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !226
  %.not.i59.i = icmp eq i64 %i.gz, %i.hb          ; 2 uses
  %i.hc = select i1 %.not.i59.i, i32 1, i32 2     ; 16 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 52 ; 6 uses
  %i.he = load i8, ptr %i.hd, align 4, !tbaa !205, !range !206, !noundef !207
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
  %wide.trip.count190.i.i = zext nneg i8 %i.hq to i64 ; 5 uses
  %wide.trip.count185.i.i = zext nneg i32 %i.hc to i64
  %i.hr = add i64 %.0.val.i24, 184
  %scevgep = getelementptr i8, ptr %.0.val.i, i64 1144
  br label %.preheader134.i.i.a

.preheader134.i.i.a:                              ; preds = %bb.ao, %bb.af
  %indvars.iv187.i.i = phi i64 [ 0, %bb.af ], [ %indvars.iv.next188.i.i, %bb.ao ] ; 3 uses
  %.087143.i.i = phi ptr [ %i.gy, %bb.af ], [ %.1.lcssa.i.i, %bb.ao ] ; 7 uses
  %.087143.i.i25 = ptrtoaddr ptr %.087143.i.i to i64
  %12 = and i64 %indvars.iv187.i.i, 255           ; 3 uses
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ao
  %i.hs = ptrtoint ptr %.1.lcssa.i.i to i64
  %i.ht = and i64 %i.hs, 1
  %i.hu = getelementptr inbounds nuw i8, ptr %.1.lcssa.i.i, i64 %i.ht
  br label %.preheader130.i.i

bb.ah:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.hv = load i8, ptr %.087143.i.i, align 1, !tbaa !156
  %i.hw = and i8 %i.hv, 15
  %i.hx = zext nneg i8 %i.hw to i32
  store i32 %i.hx, ptr %i.d, align 16, !tbaa !89
  br i1 %i.hj, label %bb.am, label %bb.al

bb.ai:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i, %.preheader134.i.i.a
  %.086135.i.i = phi i32 [ 0, %.preheader134.i.i.a ], [ %i.iu, %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i ] ; 2 uses
  %i.hy = and i32 %.086135.i.i, 1
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [960 x i8], ptr %i.hk, i64 %i.hz
  %i.ib = load i8, ptr %i.hd, align 4, !tbaa !205, !range !206, !noundef !207
  %i.ic = trunc nuw i8 %i.ib to i1
  %i.id = select i1 %i.ic, i64 %12, i64 0
  %i.ie = getelementptr inbounds nuw [240 x i8], ptr %i.ia, i64 %i.id ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ie, i8 0, i64 80, i1 false)
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 80 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !281 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 96
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !284
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
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !285 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ie, i64 120
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !287
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
  %i.iu = add nuw nsw i32 %.086135.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.iu, %i.hc
  br i1 %exitcond.not.i.i, label %bb.ah, label %bb.ai, !llvm.loop !427

bb.al:                                            ; preds = %bb.ah
  store i32 15, ptr %i.hl, align 4, !tbaa !89
  %i.iv = load i8, ptr %.087143.i.i, align 1, !tbaa !156
  %i.iw = lshr i8 %i.iv, 4
  %i.ix = zext nneg i8 %i.iw to i32
  store i32 %i.ix, ptr %i.hm, align 8, !tbaa !89
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  %i.iy = getelementptr inbounds nuw i8, ptr %.087143.i.i, i64 1 ; 2 uses
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !156
  %i.ja = and i8 %i.iz, 15
  %i.jb = zext nneg i8 %i.ja to i32
  store i32 %i.jb, ptr %i.hl, align 4, !tbaa !89
  %i.jc = load i8, ptr %.087143.i.i, align 1, !tbaa !156
  %i.jd = lshr i8 %i.jc, 4
  %i.je = zext nneg i8 %i.jd to i32
  store i32 %i.je, ptr %i.hm, align 8, !tbaa !89
  %i.jf = load i8, ptr %i.iy, align 1, !tbaa !156
  %i.jg = lshr i8 %i.jf, 4
  %i.jh = zext nneg i8 %i.jg to i32
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ji = phi i64 [ 2, %bb.am ], [ 1, %bb.al ]    ; 3 uses
  %i.jj = phi i32 [ %i.jh, %bb.am ], [ 15, %bb.al ]
  store i32 %i.jj, ptr %i.hn, align 4, !tbaa !89
  %i.jk = getelementptr i8, ptr %.087143.i.i, i64 %i.ji ; 14 uses
  %i.jl = load i32, ptr %i.ho, align 8, !tbaa !202 ; 6 uses
  %i.jm = icmp sgt i32 %i.jl, 0
  br i1 %i.jm, label %.preheader132.lr.ph.i.i, label %..preheader133_crit_edge.i.i

..preheader133_crit_edge.i.i:                     ; preds = %bb.an
  %.pre.i60.i = load i8, ptr %i.hd, align 4, !tbaa !205, !range !206
  br label %.preheader133.i.i.a

.preheader132.lr.ph.i.i:                          ; preds = %bb.an
  %wide.trip.count.i.i = zext nneg i32 %i.jl to i64 ; 18 uses
  %i.jn = load i8, ptr %i.hd, align 4, !tbaa !205, !range !206, !noundef !207 ; 9 uses
  %i.jo = trunc nuw i8 %i.jn to i1
  %i.jp = select i1 %i.jo, i64 %12, i64 0         ; 4 uses
  %i.jq = getelementptr [240 x i8], ptr %i.hk, i64 %i.jp
  %i.jr = getelementptr i8, ptr %i.jq, i64 128    ; 23 uses
  %i.js = getelementptr inbounds nuw [240 x i8], ptr %.0.val.i, i64 %i.jp
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 1144 ; 11 uses
  br i1 %.not.i59.i, label %iter.check, label %iter.check55

iter.check55:                                     ; preds = %.preheader132.lr.ph.i.i
  %min.iters.check41 = icmp ult i32 %i.jl, 8
  br i1 %min.iters.check41, label %.loopexit.i.i.preheader, label %vector.memcheck38

vector.memcheck38:                                ; preds = %iter.check55
  %i.ju = mul nuw nsw i64 %i.jp, 240
  %i.jv = getelementptr i8, ptr %scevgep, i64 %i.ju
  %scevgep39 = getelementptr i8, ptr %i.jv, i64 %wide.trip.count.i.i
  %i.jw = getelementptr i8, ptr %.087143.i.i, i64 %i.ji
  %scevgep40 = getelementptr i8, ptr %i.jw, i64 %wide.trip.count.i.i
  %bound0 = icmp ult ptr %i.jr, %scevgep40
  %bound1 = icmp ult ptr %i.jk, %scevgep39
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.loopexit.i.i.preheader, label %vector.main.loop.iter.check42

vector.main.loop.iter.check42:                    ; preds = %vector.memcheck38
  %min.iters.check43 = icmp ult i32 %i.jl, 64
  br i1 %min.iters.check43, label %vec.epilog.ph59, label %vector.ph44

vector.ph44:                                      ; preds = %vector.main.loop.iter.check42
  %i.jx = and i64 %wide.trip.count.i.i, 56
  %n.vec45 = and i64 %wide.trip.count.i.i, 2147483584 ; 5 uses
  %i.jy = getelementptr i8, ptr %i.jk, i64 %n.vec45 ; 2 uses
  br label %vector.body46

vector.body46:                                    ; preds = %vector.body46, %vector.ph44
  %index47 = phi i64 [ 0, %vector.ph44 ], [ %index.next51, %vector.body46 ] ; 4 uses
  %next.gep48 = getelementptr i8, ptr %i.jk, i64 %index47
  %wide.load49 = load <64 x i8>, ptr %next.gep48, align 1, !tbaa !156, !alias.scope !428 ; 2 uses
  %i.jz = and <64 x i8> %wide.load49, splat (i8 15)
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jr, i64 %index47
  store <64 x i8> %i.jz, ptr %i.ka, align 1, !tbaa !241, !alias.scope !431, !noalias !428
  %i.kb = lshr <64 x i8> %wide.load49, splat (i8 4)
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jt, i64 %index47
  store <64 x i8> %i.kb, ptr %i.kc, align 1, !tbaa !241, !alias.scope !431, !noalias !428
  %index.next51 = add nuw i64 %index47, 64        ; 2 uses
  %i.kd = icmp eq i64 %index.next51, %n.vec45
  br i1 %i.kd, label %middle.block52, label %vector.body46, !llvm.loop !433

middle.block52:                                   ; preds = %vector.body46
  %cmp.n53 = icmp eq i64 %n.vec45, %wide.trip.count.i.i
  br i1 %cmp.n53, label %.preheader133.i.i.a, label %vec.epilog.iter.check57

vec.epilog.iter.check57:                          ; preds = %middle.block52
  %min.epilog.iters.check58 = icmp eq i64 %i.jx, 0
  br i1 %min.epilog.iters.check58, label %.loopexit.i.i.preheader, label %vec.epilog.ph59, !prof !434

vec.epilog.ph59:                                  ; preds = %vector.main.loop.iter.check42, %vec.epilog.iter.check57
  %vec.epilog.resume.val54 = phi i64 [ %n.vec45, %vec.epilog.iter.check57 ], [ 0, %vector.main.loop.iter.check42 ]
  %n.vec60 = and i64 %wide.trip.count.i.i, 2147483640 ; 4 uses
  %i.ke = getelementptr i8, ptr %i.jk, i64 %n.vec60 ; 2 uses
  br label %vec.epilog.vector.body61

vec.epilog.vector.body61:                         ; preds = %vec.epilog.vector.body61, %vec.epilog.ph59
  %index62 = phi i64 [ %vec.epilog.resume.val54, %vec.epilog.ph59 ], [ %index.next66, %vec.epilog.vector.body61 ] ; 4 uses
  %next.gep63 = getelementptr i8, ptr %i.jk, i64 %index62
  %wide.load64 = load <8 x i8>, ptr %next.gep63, align 1, !tbaa !156, !alias.scope !428 ; 2 uses
  %i.kf = and <8 x i8> %wide.load64, splat (i8 15)
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jr, i64 %index62
  store <8 x i8> %i.kf, ptr %i.kg, align 1, !tbaa !241, !alias.scope !431, !noalias !428
  %i.kh = lshr <8 x i8> %wide.load64, splat (i8 4)
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jt, i64 %index62
  store <8 x i8> %i.kh, ptr %i.ki, align 1, !tbaa !241, !alias.scope !431, !noalias !428
  %index.next66 = add nuw i64 %index62, 8         ; 2 uses
  %i.kj = icmp eq i64 %index.next66, %n.vec60
  br i1 %i.kj, label %vec.epilog.middle.block67, label %vec.epilog.vector.body61, !llvm.loop !435

vec.epilog.middle.block67:                        ; preds = %vec.epilog.vector.body61
  %cmp.n68 = icmp eq i64 %n.vec60, %wide.trip.count.i.i
  br i1 %cmp.n68, label %.preheader133.i.i.a, label %.loopexit.i.i.preheader

.loopexit.i.i.preheader:                          ; preds = %vector.memcheck38, %iter.check55, %vec.epilog.iter.check57, %vec.epilog.middle.block67
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check55 ], [ 0, %vector.memcheck38 ], [ %n.vec45, %vec.epilog.iter.check57 ], [ %n.vec60, %vec.epilog.middle.block67 ] ; 3 uses
  %.1137.i.i.ph = phi ptr [ %i.jk, %iter.check55 ], [ %i.jk, %vector.memcheck38 ], [ %i.jy, %vec.epilog.iter.check57 ], [ %i.ke, %vec.epilog.middle.block67 ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 7     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.prol.loopexit, label %.loopexit.i.i.prol

.loopexit.i.i.prol:                               ; preds = %.loopexit.i.i.preheader, %.loopexit.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.loopexit.i.i.prol ], [ %indvars.iv.i.i.ph, %.loopexit.i.i.preheader ] ; 3 uses
  %.1137.i.i.prol = phi ptr [ %i.kq, %.loopexit.i.i.prol ], [ %.1137.i.i.ph, %.loopexit.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.loopexit.i.i.prol ], [ 0, %.loopexit.i.i.preheader ]
  %i.kk = load i8, ptr %.1137.i.i.prol, align 1, !tbaa !156
  %i.kl = and i8 %i.kk, 15
  %i.km = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.i.prol
  store i8 %i.kl, ptr %i.km, align 1, !tbaa !241
  %i.kn = load i8, ptr %.1137.i.i.prol, align 1, !tbaa !156
  %i.ko = lshr i8 %i.kn, 4
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv.i.i.prol
  store i8 %i.ko, ptr %i.kp, align 1, !tbaa !241
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.1137.i.i.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.loopexit.i.i.prol.loopexit, label %.loopexit.i.i.prol, !llvm.loop !436

.loopexit.i.i.prol.loopexit:                      ; preds = %.loopexit.i.i.prol, %.loopexit.i.i.preheader
  %.lcssa281.unr = phi ptr [ poison, %.loopexit.i.i.preheader ], [ %i.kq, %.loopexit.i.i.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.loopexit.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.loopexit.i.i.prol ]
  %.1137.i.i.unr = phi ptr [ %.1137.i.i.ph, %.loopexit.i.i.preheader ], [ %i.kq, %.loopexit.i.i.prol ]
  %i.kr = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.ks = icmp ugt i64 %i.kr, -8
  br i1 %i.ks, label %.preheader133.i.i.a, label %.loopexit.i.i

iter.check:                                       ; preds = %.preheader132.lr.ph.i.i
  %min.iters.check = icmp ult i32 %i.jl, 16
  br i1 %min.iters.check, label %.preheader132.lr.ph.i.split.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.kt = mul nuw nsw i64 %i.jp, 240
  %i.ku = add i64 %i.hr, %i.kt
  %i.kv = add i64 %i.ji, %.087143.i.i25
  %i.kw = sub i64 %i.kv, %i.ku
  %diff.check = icmp ugt i64 %i.kw, -256
  br i1 %diff.check, label %.preheader132.lr.ph.i.split.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check26 = icmp ult i32 %i.jl, 256
  br i1 %min.iters.check26, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kx = and i64 %wide.trip.count.i.i, 240
  %n.vec = and i64 %wide.trip.count.i.i, 2147483392 ; 5 uses
  %i.ky = getelementptr i8, ptr %i.jk, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.jk, i64 %index ; 4 uses
  %i.kz = getelementptr i8, ptr %next.gep, i64 64
  %i.la = getelementptr i8, ptr %next.gep, i64 128
  %i.lb = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <64 x i8>, ptr %next.gep, align 1, !tbaa !156
  %wide.load27 = load <64 x i8>, ptr %i.kz, align 1, !tbaa !156
  %wide.load28 = load <64 x i8>, ptr %i.la, align 1, !tbaa !156
  %wide.load29 = load <64 x i8>, ptr %i.lb, align 1, !tbaa !156
  %i.lc = and <64 x i8> %wide.load, splat (i8 15)
  %i.ld = and <64 x i8> %wide.load27, splat (i8 15)
  %i.le = and <64 x i8> %wide.load28, splat (i8 15)
  %i.lf = and <64 x i8> %wide.load29, splat (i8 15)
  %i.lg = getelementptr inbounds nuw i8, ptr %i.jr, i64 %index ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 64
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 128
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 192
  store <64 x i8> %i.lc, ptr %i.lg, align 1, !tbaa !241
  store <64 x i8> %i.ld, ptr %i.lh, align 1, !tbaa !241
  store <64 x i8> %i.le, ptr %i.li, align 1, !tbaa !241
  store <64 x i8> %i.lf, ptr %i.lj, align 1, !tbaa !241
  %index.next = add nuw i64 %index, 256           ; 2 uses
  %i.lk = icmp eq i64 %index.next, %n.vec
  br i1 %i.lk, label %middle.block, label %vector.body, !llvm.loop !437

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %.preheader133.i.i.a, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.kx, 0
  br i1 %min.epilog.iters.check, label %.preheader132.lr.ph.i.split.us.i.preheader, label %vec.epilog.ph, !prof !289

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec30 = and i64 %wide.trip.count.i.i, 2147483632 ; 4 uses
  %i.ll = getelementptr i8, ptr %i.jk, i64 %n.vec30 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index31 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next34, %vec.epilog.vector.body ] ; 3 uses
  %next.gep32 = getelementptr i8, ptr %i.jk, i64 %index31
  %wide.load33 = load <16 x i8>, ptr %next.gep32, align 1, !tbaa !156
  %i.lm = and <16 x i8> %wide.load33, splat (i8 15)
  %i.ln = getelementptr inbounds nuw i8, ptr %i.jr, i64 %index31
  store <16 x i8> %i.lm, ptr %i.ln, align 1, !tbaa !241
  %index.next34 = add nuw i64 %index31, 16        ; 2 uses
  %i.lo = icmp eq i64 %index.next34, %n.vec30
  br i1 %i.lo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !438

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n35 = icmp eq i64 %n.vec30, %wide.trip.count.i.i
  br i1 %cmp.n35, label %.preheader133.i.i.a, label %.preheader132.lr.ph.i.split.us.i.preheader

.preheader132.lr.ph.i.split.us.i.preheader:       ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.us.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec30, %vec.epilog.middle.block ] ; 3 uses
  %.1137.i.us.i.ph = phi ptr [ %i.jk, %iter.check ], [ %i.jk, %vector.memcheck ], [ %i.ky, %vec.epilog.iter.check ], [ %i.ll, %vec.epilog.middle.block ] ; 2 uses
  %xtraiter283 = and i64 %wide.trip.count.i.i, 7  ; 2 uses
  %lcmp.mod284.not = icmp eq i64 %xtraiter283, 0
  br i1 %lcmp.mod284.not, label %.preheader132.lr.ph.i.split.us.i.prol.loopexit, label %.preheader132.lr.ph.i.split.us.i.prol

.preheader132.lr.ph.i.split.us.i.prol:            ; preds = %.preheader132.lr.ph.i.split.us.i.preheader, %.preheader132.lr.ph.i.split.us.i.prol
  %indvars.iv.i.us.i.prol = phi i64 [ %indvars.iv.next.i.us.i.prol, %.preheader132.lr.ph.i.split.us.i.prol ], [ %indvars.iv.i.us.i.ph, %.preheader132.lr.ph.i.split.us.i.preheader ] ; 2 uses
  %.1137.i.us.i.prol = phi ptr [ %i.ls, %.preheader132.lr.ph.i.split.us.i.prol ], [ %.1137.i.us.i.ph, %.preheader132.lr.ph.i.split.us.i.preheader ] ; 2 uses
  %prol.iter285 = phi i64 [ %prol.iter285.next, %.preheader132.lr.ph.i.split.us.i.prol ], [ 0, %.preheader132.lr.ph.i.split.us.i.preheader ]
  %i.lp = load i8, ptr %.1137.i.us.i.prol, align 1, !tbaa !156
  %i.lq = and i8 %i.lp, 15
  %i.lr = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i.prol
  store i8 %i.lq, ptr %i.lr, align 1, !tbaa !241
  %indvars.iv.next.i.us.i.prol = add nuw nsw i64 %indvars.iv.i.us.i.prol, 1 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.1137.i.us.i.prol, i64 1 ; 3 uses
  %prol.iter285.next = add i64 %prol.iter285, 1   ; 2 uses
  %prol.iter285.cmp.not = icmp eq i64 %prol.iter285.next, %xtraiter283
  br i1 %prol.iter285.cmp.not, label %.preheader132.lr.ph.i.split.us.i.prol.loopexit, label %.preheader132.lr.ph.i.split.us.i.prol, !llvm.loop !439

.preheader132.lr.ph.i.split.us.i.prol.loopexit:   ; preds = %.preheader132.lr.ph.i.split.us.i.prol, %.preheader132.lr.ph.i.split.us.i.preheader
  %.lcssa282.unr = phi ptr [ poison, %.preheader132.lr.ph.i.split.us.i.preheader ], [ %i.ls, %.preheader132.lr.ph.i.split.us.i.prol ]
  %indvars.iv.i.us.i.unr = phi i64 [ %indvars.iv.i.us.i.ph, %.preheader132.lr.ph.i.split.us.i.preheader ], [ %indvars.iv.next.i.us.i.prol, %.preheader132.lr.ph.i.split.us.i.prol ]
  %.1137.i.us.i.unr = phi ptr [ %.1137.i.us.i.ph, %.preheader132.lr.ph.i.split.us.i.preheader ], [ %i.ls, %.preheader132.lr.ph.i.split.us.i.prol ]
  %i.lt = sub nsw i64 %indvars.iv.i.us.i.ph, %wide.trip.count.i.i
  %i.lu = icmp ugt i64 %i.lt, -8
  br i1 %i.lu, label %.preheader133.i.i.a, label %.preheader132.lr.ph.i.split.us.i

.preheader132.lr.ph.i.split.us.i:                 ; preds = %.preheader132.lr.ph.i.split.us.i.prol.loopexit, %.preheader132.lr.ph.i.split.us.i
  %indvars.iv.i.us.i = phi i64 [ %indvars.iv.next.i.us.i.7, %.preheader132.lr.ph.i.split.us.i ], [ %indvars.iv.i.us.i.unr, %.preheader132.lr.ph.i.split.us.i.prol.loopexit ] ; 9 uses
  %.1137.i.us.i = phi ptr [ %i.nh, %.preheader132.lr.ph.i.split.us.i ], [ %.1137.i.us.i.unr, %.preheader132.lr.ph.i.split.us.i.prol.loopexit ] ; 9 uses
  %i.lv = load i8, ptr %.1137.i.us.i, align 1, !tbaa !156
  %i.lw = and i8 %i.lv, 15
  %i.lx = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  store i8 %i.lw, ptr %i.lx, align 1, !tbaa !241
  %i.ly = getelementptr inbounds nuw i8, ptr %.1137.i.us.i, i64 1
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !156
  %i.ma = and i8 %i.lz, 15
  %i.mb = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 1
  store i8 %i.ma, ptr %i.mc, align 1, !tbaa !241
  %i.md = getelementptr inbounds nuw i8, ptr %.1137.i.us.i, i64 2
  %i.me = load i8, ptr %i.md, align 1, !tbaa !156
  %i.mf = and i8 %i.me, 15
  %i.mg = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 2
  store i8 %i.mf, ptr %i.mh, align 1, !tbaa !241
  %i.mi = getelementptr inbounds nuw i8, ptr %.1137.i.us.i, i64 3
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !156
  %i.mk = and i8 %i.mj, 15
  %i.ml = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 3
  store i8 %i.mk, ptr %i.mm, align 1, !tbaa !241
  %i.mn = getelementptr inbounds nuw i8, ptr %.1137.i.us.i, i64 4
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !156
  %i.mp = and i8 %i.mo, 15
  %i.mq = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  store i8 %i.mp, ptr %i.mr, align 1, !tbaa !241
  %i.ms = getelementptr inbounds nuw i8, ptr %.1137.i.us.i, i64 5
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !156
  %i.mu = and i8 %i.mt, 15
  %i.mv = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 5
  store i8 %i.mu, ptr %i.mw, align 1, !tbaa !241
  %i.mx = getelementptr inbounds nuw i8, ptr %.1137.i.us.i, i64 6
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !156
  %i.mz = and i8 %i.my, 15
  %i.na = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 6
  store i8 %i.mz, ptr %i.nb, align 1, !tbaa !241
  %i.nc = getelementptr inbounds nuw i8, ptr %.1137.i.us.i, i64 7
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !156
  %i.ne = and i8 %i.nd, 15
  %i.nf = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 7
  store i8 %i.ne, ptr %i.ng, align 1, !tbaa !241
  %indvars.iv.next.i.us.i.7 = add nuw nsw i64 %indvars.iv.i.us.i, 8 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.1137.i.us.i, i64 8 ; 2 uses
  %exitcond181.not.i.us.i.7 = icmp eq i64 %indvars.iv.next.i.us.i.7, %wide.trip.count.i.i
  br i1 %exitcond181.not.i.us.i.7, label %.preheader133.i.i.a, label %.preheader132.lr.ph.i.split.us.i, !llvm.loop !440

.preheader133.i.i.a:                              ; preds = %.loopexit.i.i.prol.loopexit, %.loopexit.i.i, %.preheader132.lr.ph.i.split.us.i.prol.loopexit, %.preheader132.lr.ph.i.split.us.i, %middle.block52, %vec.epilog.middle.block67, %middle.block, %vec.epilog.middle.block, %..preheader133_crit_edge.i.i
  %i.ni = phi i8 [ %.pre.i60.i, %..preheader133_crit_edge.i.i ], [ %i.jn, %middle.block ], [ %i.jn, %middle.block52 ], [ %i.jn, %vec.epilog.middle.block ], [ %i.jn, %.preheader132.lr.ph.i.split.us.i.prol.loopexit ], [ %i.jn, %vec.epilog.middle.block67 ], [ %i.jn, %.preheader132.lr.ph.i.split.us.i ], [ %i.jn, %.loopexit.i.i ], [ %i.jn, %.loopexit.i.i.prol.loopexit ]
  %.1.lcssa.i.i = phi ptr [ %i.jk, %..preheader133_crit_edge.i.i ], [ %i.ky, %middle.block ], [ %i.jy, %middle.block52 ], [ %i.ll, %vec.epilog.middle.block ], [ %i.nh, %.preheader132.lr.ph.i.split.us.i ], [ %i.ke, %vec.epilog.middle.block67 ], [ %.lcssa282.unr, %.preheader132.lr.ph.i.split.us.i.prol.loopexit ], [ %.lcssa281.unr, %.loopexit.i.i.prol.loopexit ], [ %i.po, %.loopexit.i.i ] ; 3 uses
  %i.nj = trunc nuw i8 %i.ni to i1                ; 3 uses
  %i.nk = select i1 %i.nj, i64 %12, i64 0
  %invariant.gep.i.i = getelementptr inbounds nuw [240 x i8], ptr %i.hk, i64 %i.nk
  %invariant.gep140.i.i = getelementptr [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_113LeadPawnsSizeE, i64 %indvars.iv187.i.i
  br label %bb.ap

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.prol.loopexit, %.loopexit.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.7, %.loopexit.i.i ], [ %indvars.iv.i.i.unr, %.loopexit.i.i.prol.loopexit ] ; 10 uses
  %.1137.i.i = phi ptr [ %i.po, %.loopexit.i.i ], [ %.1137.i.i.unr, %.loopexit.i.i.prol.loopexit ] ; 10 uses
  %i.nl = load i8, ptr %.1137.i.i, align 1, !tbaa !156
  %i.nm = and i8 %i.nl, 15
  %i.nn = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.i
  store i8 %i.nm, ptr %i.nn, align 1, !tbaa !241
  %i.no = load i8, ptr %.1137.i.i, align 1, !tbaa !156
  %i.np = lshr i8 %i.no, 4
  %i.nq = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv.i.i
  store i8 %i.np, ptr %i.nq, align 1, !tbaa !241
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.1137.i.i, i64 1 ; 2 uses
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !156
  %i.nt = and i8 %i.ns, 15
  %i.nu = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.next.i.i
  store i8 %i.nt, ptr %i.nu, align 1, !tbaa !241
  %i.nv = load i8, ptr %i.nr, align 1, !tbaa !156
  %i.nw = lshr i8 %i.nv, 4
  %i.nx = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv.next.i.i
  store i8 %i.nw, ptr %i.nx, align 1, !tbaa !241
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.1137.i.i, i64 2 ; 2 uses
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !156
  %i.oa = and i8 %i.nz, 15
  %i.ob = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.next.i.i.1
  store i8 %i.oa, ptr %i.ob, align 1, !tbaa !241
  %i.oc = load i8, ptr %i.ny, align 1, !tbaa !156
  %i.od = lshr i8 %i.oc, 4
  %i.oe = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv.next.i.i.1
  store i8 %i.od, ptr %i.oe, align 1, !tbaa !241
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.1137.i.i, i64 3 ; 2 uses
  %i.og = load i8, ptr %i.of, align 1, !tbaa !156
  %i.oh = and i8 %i.og, 15
  %i.oi = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.next.i.i.2
  store i8 %i.oh, ptr %i.oi, align 1, !tbaa !241
  %i.oj = load i8, ptr %i.of, align 1, !tbaa !156
  %i.ok = lshr i8 %i.oj, 4
  %i.ol = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv.next.i.i.2
  store i8 %i.ok, ptr %i.ol, align 1, !tbaa !241
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.1137.i.i, i64 4 ; 2 uses
  %i.on = load i8, ptr %i.om, align 1, !tbaa !156
  %i.oo = and i8 %i.on, 15
  %i.op = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.next.i.i.3
  store i8 %i.oo, ptr %i.op, align 1, !tbaa !241
  %i.oq = load i8, ptr %i.om, align 1, !tbaa !156
  %i.or = lshr i8 %i.oq, 4
  %i.os = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv.next.i.i.3
  store i8 %i.or, ptr %i.os, align 1, !tbaa !241
  %indvars.iv.next.i.i.4 = add nuw nsw i64 %indvars.iv.i.i, 5 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.1137.i.i, i64 5 ; 2 uses
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !156
  %i.ov = and i8 %i.ou, 15
  %i.ow = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.next.i.i.4
  store i8 %i.ov, ptr %i.ow, align 1, !tbaa !241
  %i.ox = load i8, ptr %i.ot, align 1, !tbaa !156
  %i.oy = lshr i8 %i.ox, 4
  %i.oz = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv.next.i.i.4
  store i8 %i.oy, ptr %i.oz, align 1, !tbaa !241
  %indvars.iv.next.i.i.5 = add nuw nsw i64 %indvars.iv.i.i, 6 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.1137.i.i, i64 6 ; 2 uses
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !156
  %i.pc = and i8 %i.pb, 15
  %i.pd = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.next.i.i.5
  store i8 %i.pc, ptr %i.pd, align 1, !tbaa !241
  %i.pe = load i8, ptr %i.pa, align 1, !tbaa !156
  %i.pf = lshr i8 %i.pe, 4
  %i.pg = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv.next.i.i.5
  store i8 %i.pf, ptr %i.pg, align 1, !tbaa !241
  %indvars.iv.next.i.i.6 = add nuw nsw i64 %indvars.iv.i.i, 7 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %.1137.i.i, i64 7 ; 2 uses
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !156
  %i.pj = and i8 %i.pi, 15
  %i.pk = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.next.i.i.6
  store i8 %i.pj, ptr %i.pk, align 1, !tbaa !241
  %i.pl = load i8, ptr %i.ph, align 1, !tbaa !156
  %i.pm = lshr i8 %i.pl, 4
  %i.pn = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv.next.i.i.6
  store i8 %i.pm, ptr %i.pn, align 1, !tbaa !241
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.1137.i.i, i64 8 ; 2 uses
  %exitcond181.not.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.7, %wide.trip.count.i.i
  br i1 %exitcond181.not.i.i.7, label %.preheader133.i.i.a, label %.loopexit.i.i, !llvm.loop !441

bb.ao:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %indvars.iv.next188.i.i = add nuw nsw i64 %indvars.iv187.i.i, 1 ; 2 uses
  %exitcond191.i.i = icmp eq i64 %indvars.iv.next188.i.i, %wide.trip.count190.i.i
  br i1 %exitcond191.i.i, label %bb.ag, label %.preheader134.i.i.a, !llvm.loop !442

bb.ap:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i, %.preheader133.i.i.a
  %indvars.iv182.i.i = phi i64 [ 0, %.preheader133.i.i.a ], [ %indvars.iv.next183.i.i, %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i ] ; 3 uses
  %i.pp = and i64 %indvars.iv182.i.i, 1
  %gep.i.i = getelementptr inbounds nuw [960 x i8], ptr %invariant.gep.i.i, i64 %i.pp ; 10 uses
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv182.i.i ; 4 uses
  %i.pr = load i8, ptr %i.hp, align 1, !range !206
  %i.ps = trunc nuw i8 %i.pr to i1                ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 200 ; 8 uses
  store i32 1, ptr %i.pt, align 4, !tbaa !89
  %i.pu = load i32, ptr %i.ho, align 8, !tbaa !202
  %i.pv = icmp sgt i32 %i.pu, 1
  br i1 %i.pv, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ap
  %i.pw = select i1 %i.ps, i32 3, i32 2
  %i.px = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 128
  %spec.select = select i1 %i.nj, i32 0, i32 %i.pw
  br label %select.unfold.i.i

._crit_edge.i.i.i:                                ; preds = %bb.at, %bb.ap
  %.066.lcssa.i.i.i = phi i32 [ 0, %bb.ap ], [ %.167.i.i.i, %bb.at ] ; 3 uses
  %i.py = add nsw i32 %.066.lcssa.i.i.i, 1
  %i.pz = sext i32 %i.py to i64                   ; 2 uses
  %i.qa = getelementptr inbounds [4 x i8], ptr %i.pt, i64 %i.pz
  store i32 0, ptr %i.qa, align 4, !tbaa !89
  br i1 %i.nj, label %bb.au, label %.thread68.split.preheader.i.i.i

select.unfold.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.at
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.at ], [ 1, %.lr.ph.i.i.i ] ; 2 uses
  %.06573.i.i.i = phi i32 [ %i.qb, %bb.at ], [ %spec.select, %.lr.ph.i.i.i ] ; 2 uses
  %.06672.i.i.i = phi i32 [ %.167.i.i.i, %bb.at ], [ 0, %.lr.ph.i.i.i ] ; 3 uses
  %i.qb = add nsw i32 %.06573.i.i.i, -1
  %i.qc = icmp sgt i32 %.06573.i.i.i, 1
  br i1 %i.qc, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %select.unfold.i.i
  %i.qd = getelementptr inbounds nuw i8, ptr %i.px, i64 %indvars.iv.i.i.i ; 2 uses
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !241
  %i.qf = getelementptr i8, ptr %i.qd, i64 -1
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !241
  %i.qh = icmp eq i8 %i.qe, %i.qg
  br i1 %i.qh, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq, %select.unfold.i.i
  %i.qi = sext i32 %.06672.i.i.i to i64
  %i.qj = getelementptr inbounds [4 x i8], ptr %i.pt, i64 %i.qi ; 2 uses
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !89
  %i.ql = add nsw i32 %i.qk, 1
  store i32 %i.ql, ptr %i.qj, align 4, !tbaa !89
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.qm = add nsw i32 %.06672.i.i.i, 1            ; 2 uses
  %i.qn = sext i32 %i.qm to i64
  %i.qo = getelementptr inbounds [4 x i8], ptr %i.pt, i64 %i.qn
  store i32 1, ptr %i.qo, align 4, !tbaa !89
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.167.i.i.i = phi i32 [ %.06672.i.i.i, %bb.ar ], [ %i.qm, %bb.as ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.qp = load i32, ptr %i.ho, align 8, !tbaa !202
  %i.qq = sext i32 %i.qp to i64
  %i.qr = icmp slt i64 %indvars.iv.next.i.i.i, %i.qq
  br i1 %i.qr, label %select.unfold.i.i, label %._crit_edge.i.i.i, !llvm.loop !443

bb.au:                                            ; preds = %._crit_edge.i.i.i
  %i.qs = load i8, ptr %i.hg, align 1, !tbaa !156
  %.not69.i.i.i = icmp eq i8 %i.qs, 0
  br i1 %.not69.i.i.i, label %.thread68.split.us.preheader.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.qt = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 204
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !89
  %i.qv = sub i32 64, %i.qu
  br label %.thread68.split.us.preheader.i.i.i

.thread68.split.preheader.i.i.i:                  ; preds = %._crit_edge.i.i.i
  %i.qw = load i32, ptr %i.pt, align 8, !tbaa !89 ; 2 uses
  %i.qx = sub i32 64, %i.qw
  %i.qy = getelementptr inbounds nuw i8, ptr %i.pq, i64 4 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 136 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 144
  %i.rb = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 204
  %i.rc = sub nsw i32 48, %i.qw
  %i.rd = sext i32 %i.rc to i64
  %invariant.gep.i.i.i = getelementptr [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 %i.rd
  %i.re = select i1 %i.ps, i32 31332, i32 462
  %.pre.pre.i.i.i = load i32, ptr %i.pq, align 8, !tbaa !89
  br label %.thread68.split.i.i.i

.thread68.split.us.preheader.i.i.i:               ; preds = %bb.av, %bb.au
  %.ph.i.i.i = phi i32 [ 1, %bb.au ], [ 2, %bb.av ]
  %.neg71.ph.i.i.i = phi i32 [ 64, %bb.au ], [ %i.qv, %bb.av ]
  %i.rf = load i32, ptr %i.pt, align 8, !tbaa !89 ; 3 uses
  %i.rg = sub i32 %.neg71.ph.i.i.i, %i.rf
  %i.rh = getelementptr inbounds nuw i8, ptr %i.pq, i64 4 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 136 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 144
  %i.rk = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 204
  %i.rl = sub nsw i32 48, %i.rf
  %i.rm = sext i32 %i.rl to i64
  %invariant.gep80.i.i.i = getelementptr [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 %i.rm
  %i.rn = sext i32 %i.rf to i64
  %gep141.i.i = getelementptr [16 x i8], ptr %invariant.gep140.i.i, i64 %i.rn
  %.pre78.pre.i.i.i = load i32, ptr %i.pq, align 8, !tbaa !89
  br label %.thread68.split.us.i.i.i

.thread68.split.us.i.i.i:                         ; preds = %bb.bb, %.thread68.split.us.preheader.i.i.i
  %.062.us.i.i.i = phi i32 [ %.163.us.i.i.i, %bb.bb ], [ %.ph.i.i.i, %.thread68.split.us.preheader.i.i.i ] ; 5 uses
  %.060.us.i.i.i = phi i32 [ %.161.us.i.i.i, %bb.bb ], [ %i.rg, %.thread68.split.us.preheader.i.i.i ] ; 4 uses
  %.059.us.i.i.i = phi i64 [ %.1.us.i.i.i, %bb.bb ], [ 1, %.thread68.split.us.preheader.i.i.i ] ; 5 uses
  %.0.us.i.i.i = phi i32 [ %i.sf, %bb.bb ], [ 0, %.thread68.split.us.preheader.i.i.i ] ; 4 uses
  %.not.us.i.i.i = icmp sle i32 %.062.us.i.i.i, %.066.lcssa.i.i.i
  %i.ro = icmp eq i32 %.0.us.i.i.i, %.pre78.pre.i.i.i ; 2 uses
  %or.cond.i.i.i = select i1 %.not.us.i.i.i, i1 true, i1 %i.ro
  br i1 %or.cond.i.i.i, label %.critedge.us.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %.thread68.split.us.i.i.i
  %i.rp = load i32, ptr %i.rh, align 4, !tbaa !89
  %i.rq = icmp eq i32 %.0.us.i.i.i, %i.rp
  br i1 %i.rq, label %.critedge.us.i.i.i, label %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i

.critedge.us.i.i.i:                               ; preds = %bb.aw, %.thread68.split.us.i.i.i
  br i1 %i.ro, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %.critedge.us.i.i.i
  %i.rr = load i32, ptr %i.rh, align 4, !tbaa !89
  %i.rs = icmp eq i32 %.0.us.i.i.i, %i.rr
  br i1 %i.rs, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.rt = sext i32 %.062.us.i.i.i to i64          ; 2 uses
  %i.ru = getelementptr inbounds [8 x i8], ptr %i.ri, i64 %i.rt
  store i64 %.059.us.i.i.i, ptr %i.ru, align 8, !tbaa !17
  %i.rv = getelementptr inbounds [4 x i8], ptr %i.pt, i64 %i.rt
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !89 ; 2 uses
  %i.rx = sext i32 %i.rw to i64
  %i.ry = getelementptr inbounds [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 %i.rx
  %i.rz = sext i32 %.060.us.i.i.i to i64
  %i.sa = getelementptr inbounds [4 x i8], ptr %i.ry, i64 %i.rz
  %i.sb = add nsw i32 %.062.us.i.i.i, 1
  %i.sc = sub nsw i32 %.060.us.i.i.i, %i.rw
  br label %bb.bb

bb.az:                                            ; preds = %bb.ax
  store i64 %.059.us.i.i.i, ptr %i.rj, align 8, !tbaa !17
  %i.sd = load i32, ptr %i.rk, align 4, !tbaa !89
  %i.se = sext i32 %i.sd to i64
  %gep.us.i.i.i = getelementptr [256 x i8], ptr %invariant.gep80.i.i.i, i64 %i.se
  br label %bb.bb

bb.ba:                                            ; preds = %.critedge.us.i.i.i
  store i64 %.059.us.i.i.i, ptr %i.ri, align 8, !tbaa !17
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %.163.us.i.i.i = phi i32 [ %i.sb, %bb.ay ], [ %.062.us.i.i.i, %bb.az ], [ %.062.us.i.i.i, %bb.ba ]
  %.161.us.i.i.i = phi i32 [ %i.sc, %bb.ay ], [ %.060.us.i.i.i, %bb.az ], [ %.060.us.i.i.i, %bb.ba ]
  %.pn.in.us.in.i.i.i = phi ptr [ %i.sa, %bb.ay ], [ %gep.us.i.i.i, %bb.az ], [ %gep141.i.i, %bb.ba ]
  %.pn.in.us.i.i.i = load i32, ptr %.pn.in.us.in.i.i.i, align 4, !tbaa !89
  %.pn.us.i.i.i = sext i32 %.pn.in.us.i.i.i to i64
  %.1.us.i.i.i = mul i64 %.059.us.i.i.i, %.pn.us.i.i.i
  %i.sf = add nuw nsw i32 %.0.us.i.i.i, 1
  br label %.thread68.split.us.i.i.i, !llvm.loop !444

.thread68.split.i.i.i:                            ; preds = %bb.bh, %.thread68.split.preheader.i.i.i
  %.062.i.i.i = phi i32 [ %.163.i.i.i, %bb.bh ], [ 1, %.thread68.split.preheader.i.i.i ] ; 5 uses
  %.060.i.i.i = phi i32 [ %.161.i.i.i, %bb.bh ], [ %i.qx, %.thread68.split.preheader.i.i.i ] ; 4 uses
  %.059.i.i.i = phi i64 [ %.1.i.i.i, %bb.bh ], [ 1, %.thread68.split.preheader.i.i.i ] ; 5 uses
  %.0.i.i.i = phi i32 [ %i.sz, %bb.bh ], [ 0, %.thread68.split.preheader.i.i.i ] ; 4 uses
  %.not.i.i61.i = icmp sle i32 %.062.i.i.i, %.066.lcssa.i.i.i
  %i.sg = icmp eq i32 %.0.i.i.i, %.pre.pre.i.i.i  ; 2 uses
  %or.cond83.i.i.i = select i1 %.not.i.i61.i, i1 true, i1 %i.sg
  br i1 %or.cond83.i.i.i, label %.critedge.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %.thread68.split.i.i.i
  %i.sh = load i32, ptr %i.qy, align 4, !tbaa !89
  %i.si = icmp eq i32 %.0.i.i.i, %i.sh
  br i1 %i.si, label %.critedge.i.i.i, label %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i

.critedge.i.i.i:                                  ; preds = %bb.bc, %.thread68.split.i.i.i
  br i1 %i.sg, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.critedge.i.i.i
  store i64 %.059.i.i.i, ptr %i.qz, align 8, !tbaa !17
  br label %bb.bh

bb.be:                                            ; preds = %.critedge.i.i.i
  %i.sj = load i32, ptr %i.qy, align 4, !tbaa !89
  %i.sk = icmp eq i32 %.0.i.i.i, %i.sj
  br i1 %i.sk, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i64 %.059.i.i.i, ptr %i.ra, align 8, !tbaa !17
  %i.sl = load i32, ptr %i.rb, align 4, !tbaa !89
  %i.sm = sext i32 %i.sl to i64
  %gep.i.i.i = getelementptr [256 x i8], ptr %invariant.gep.i.i.i, i64 %i.sm
  %i.sn = load i32, ptr %gep.i.i.i, align 4, !tbaa !89
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.so = sext i32 %.062.i.i.i to i64             ; 2 uses
  %i.sp = getelementptr inbounds [8 x i8], ptr %i.qz, i64 %i.so
  store i64 %.059.i.i.i, ptr %i.sp, align 8, !tbaa !17
  %i.sq = getelementptr inbounds [4 x i8], ptr %i.pt, i64 %i.so
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !89 ; 2 uses
  %i.ss = sext i32 %i.sr to i64
  %i.st = getelementptr inbounds [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 %i.ss
  %i.su = sext i32 %.060.i.i.i to i64
  %i.sv = getelementptr inbounds [4 x i8], ptr %i.st, i64 %i.su
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !89
  %i.sx = add nsw i32 %.062.i.i.i, 1
  %i.sy = sub nsw i32 %.060.i.i.i, %i.sr
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.bd
  %.163.i.i.i = phi i32 [ %i.sx, %bb.bg ], [ %.062.i.i.i, %bb.bf ], [ %.062.i.i.i, %bb.bd ]
  %.161.i.i.i = phi i32 [ %i.sy, %bb.bg ], [ %.060.i.i.i, %bb.bf ], [ %.060.i.i.i, %bb.bd ]
  %.pn.in.i.i.i = phi i32 [ %i.sw, %bb.bg ], [ %i.sn, %bb.bf ], [ %i.re, %bb.bd ]
  %.pn.i.i.i = sext i32 %.pn.in.i.i.i to i64
  %.1.i.i.i = mul i64 %.059.i.i.i, %.pn.i.i.i
  %i.sz = add nuw nsw i32 %.0.i.i.i, 1
  br label %.thread68.split.i.i.i, !llvm.loop !444

_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i: ; preds = %bb.bc, %bb.aw
  %.us-phi.i.i.i = phi i64 [ %.059.us.i.i.i, %bb.aw ], [ %.059.i.i.i, %bb.bc ]
  %i.ta = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 136
  %i.tb = getelementptr inbounds [8 x i8], ptr %i.ta, i64 %i.pz
  store i64 %.us-phi.i.i.i, ptr %i.tb, align 8, !tbaa !17
  %indvars.iv.next183.i.i = add nuw nsw i64 %indvars.iv182.i.i, 1 ; 2 uses
  %exitcond186.not.i.i = icmp eq i64 %indvars.iv.next183.i.i, %wide.trip.count185.i.i
  br i1 %exitcond186.not.i.i, label %bb.ao, label %bb.ap, !llvm.loop !445

.preheader130.i.i:                                ; preds = %bb.bk, %bb.ag
  %.2154.i.i = phi ptr [ %i.hu, %bb.ag ], [ %i.ub, %bb.bk ]
  %.0123153.i.i = phi i8 [ 0, %bb.ag ], [ %13, %bb.bk ] ; 2 uses
  br label %bb.bl

.preheader129.i.i:                                ; preds = %bb.bk
  %i.tc = load i8, ptr %i.hd, align 4, !tbaa !205, !range !206, !noundef !207
  %i.td = trunc nuw i8 %i.tc to i1                ; 3 uses
  br i1 %i.td, label %.preheader128.us.i.i.preheader, label %.preheader128.i.i.preheader

.preheader128.i.i.preheader:                      ; preds = %.preheader129.i.i
  %xtraiter290 = and i8 %i.hq, 1
  br i1 %i.hf, label %.preheader128.i.i.preheader.new, label %.preheader128.i.i.epil.preheader

.preheader128.i.i.preheader.new:                  ; preds = %.preheader128.i.i.preheader
  %unroll_iter297 = and i8 %i.hq, 4
  br label %.preheader128.i.i

.preheader128.us.i.i.preheader:                   ; preds = %.preheader129.i.i
  %xtraiter308 = and i64 %wide.trip.count190.i.i, 1
  br i1 %i.hf, label %.preheader128.us.i.i.preheader.new, label %.preheader128.us.i.i.epil.preheader

.preheader128.us.i.i.preheader.new:               ; preds = %.preheader128.us.i.i.preheader
  %unroll_iter315 = and i64 %wide.trip.count190.i.i, 4
  br label %.preheader128.us.i.i

.preheader128.us.i.i:                             ; preds = %.epilog-lcssa304.1, %.preheader128.us.i.i.preheader.new
  %indvars.iv201.i.i = phi i64 [ 0, %.preheader128.us.i.i.preheader.new ], [ %indvars.iv.next202.i.i.1, %.epilog-lcssa304.1 ] ; 3 uses
  %.4153.us.i.i = phi ptr [ %i.ub, %.preheader128.us.i.i.preheader.new ], [ %i.tt, %.epilog-lcssa304.1 ]
  %niter316 = phi i64 [ 0, %.preheader128.us.i.i.preheader.new ], [ %niter316.next.1, %.epilog-lcssa304.1 ]
  %invariant.gep148.us.i.i = getelementptr inbounds nuw [240 x i8], ptr %i.hk, i64 %indvars.iv201.i.i
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.preheader128.us.i.i
  %.081151.us.i.i.epil = phi i32 [ 0, %.preheader128.us.i.i ], [ %i.tl, %bb.bi ] ; 2 uses
  %.5150.us.i.i.epil = phi ptr [ %.4153.us.i.i, %.preheader128.us.i.i ], [ %i.tk, %bb.bi ] ; 2 uses
  %epil.iter302 = phi i32 [ 0, %.preheader128.us.i.i ], [ %epil.iter302.next, %bb.bi ]
  %i.te = and i32 %.081151.us.i.i.epil, 1
  %i.tf = zext nneg i32 %i.te to i64
  %gep149.us.i.i.epil = getelementptr inbounds nuw [960 x i8], ptr %invariant.gep148.us.i.i, i64 %i.tf ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %gep149.us.i.i.epil, i64 56
  store ptr %.5150.us.i.i.epil, ptr %i.tg, align 8, !tbaa !310
  %i.th = getelementptr inbounds nuw i8, ptr %gep149.us.i.i.epil, i64 64
  %i.ti = load i64, ptr %i.th, align 8, !tbaa !309
  %i.tj = mul i64 %i.ti, 6
  %i.tk = getelementptr inbounds nuw i8, ptr %.5150.us.i.i.epil, i64 %i.tj ; 2 uses
  %i.tl = add nuw nsw i32 %.081151.us.i.i.epil, 1
  %epil.iter302.next = add i32 %epil.iter302, 1   ; 2 uses
  %epil.iter302.cmp.not = icmp eq i32 %epil.iter302.next, %i.hc
  br i1 %epil.iter302.cmp.not, label %.preheader128.us.i.i.1, label %bb.bi, !llvm.loop !446

.preheader128.us.i.i.1:                           ; preds = %bb.bi
  %i.tm = getelementptr inbounds nuw [240 x i8], ptr %i.hk, i64 %indvars.iv201.i.i
  %invariant.gep148.us.i.i.1 = getelementptr inbounds nuw i8, ptr %i.tm, i64 240
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.preheader128.us.i.i.1
  %.081151.us.i.i.epil.1 = phi i32 [ 0, %.preheader128.us.i.i.1 ], [ %i.tu, %bb.bj ] ; 2 uses
  %.5150.us.i.i.epil.1 = phi ptr [ %i.tk, %.preheader128.us.i.i.1 ], [ %i.tt, %bb.bj ] ; 2 uses
  %epil.iter302.1 = phi i32 [ 0, %.preheader128.us.i.i.1 ], [ %epil.iter302.next.1, %bb.bj ]
  %i.tn = and i32 %.081151.us.i.i.epil.1, 1
  %i.to = zext nneg i32 %i.tn to i64
  %gep149.us.i.i.epil.1 = getelementptr inbounds nuw [960 x i8], ptr %invariant.gep148.us.i.i.1, i64 %i.to ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %gep149.us.i.i.epil.1, i64 56
  store ptr %.5150.us.i.i.epil.1, ptr %i.tp, align 8, !tbaa !310
  %i.tq = getelementptr inbounds nuw i8, ptr %gep149.us.i.i.epil.1, i64 64
  %i.tr = load i64, ptr %i.tq, align 8, !tbaa !309
  %i.ts = mul i64 %i.tr, 6
  %i.tt = getelementptr inbounds nuw i8, ptr %.5150.us.i.i.epil.1, i64 %i.ts ; 4 uses
  %i.tu = add nuw nsw i32 %.081151.us.i.i.epil.1, 1
  %epil.iter302.next.1 = add i32 %epil.iter302.1, 1 ; 2 uses
  %epil.iter302.cmp.1.not = icmp eq i32 %epil.iter302.next.1, %i.hc
  br i1 %epil.iter302.cmp.1.not, label %.epilog-lcssa304.1, label %bb.bj, !llvm.loop !446

.epilog-lcssa304.1:                               ; preds = %bb.bj
  %indvars.iv.next202.i.i.1 = add nuw nsw i64 %indvars.iv201.i.i, 2 ; 2 uses
  %niter316.next.1 = add i64 %niter316, 2         ; 2 uses
  %niter316.ncmp.1 = icmp eq i64 %niter316.next.1, %unroll_iter315
  br i1 %niter316.ncmp.1, label %.preheader127.i.i.loopexit.unr-lcssa, label %.preheader128.us.i.i, !llvm.loop !447

bb.bk:                                            ; preds = %bb.bl
  %13 = add nuw nsw i8 %.0123153.i.i, 1           ; 2 uses
  %exitcond197.i.i = icmp eq i8 %13, %i.hq
  br i1 %exitcond197.i.i, label %.preheader129.i.i, label %.preheader130.i.i, !llvm.loop !448

bb.bl:                                            ; preds = %bb.bl, %.preheader130.i.i
  %.082145.i.i = phi i32 [ 0, %.preheader130.i.i ], [ %i.uc, %bb.bl ] ; 2 uses
  %.3144.i.i = phi ptr [ %.2154.i.i, %.preheader130.i.i ], [ %i.ub, %bb.bl ]
  %i.tv = and i32 %.082145.i.i, 1
  %i.tw = zext nneg i32 %i.tv to i64
  %i.tx = getelementptr inbounds nuw [960 x i8], ptr %i.hk, i64 %i.tw
  %i.ty = load i8, ptr %i.hd, align 4, !tbaa !205, !range !206, !noundef !207
  %i.tz = trunc nuw i8 %i.ty to i1
  %narrow128.i.i = select i1 %i.tz, i8 %.0123153.i.i, i8 0
  %14 = zext nneg i8 %narrow128.i.i to i64
  %i.ua = getelementptr inbounds nuw [240 x i8], ptr %i.tx, i64 %14
  %i.ub = call fastcc noundef ptr @_ZN9Stockfish12_GLOBAL__N_19set_sizesEPNS0_9PairsDataEPh(ptr noundef %i.ua, ptr noundef %.3144.i.i) ; 6 uses
  %i.uc = add nuw nsw i32 %.082145.i.i, 1         ; 2 uses
  %exitcond192.not.i.i = icmp eq i32 %i.uc, %i.hc
  br i1 %exitcond192.not.i.i, label %bb.bk, label %bb.bl, !llvm.loop !449

.preheader128.i.i:                                ; preds = %.epilog-lcssa.1, %.preheader128.i.i.preheader.new
  %.4153.i.i = phi ptr [ %i.ub, %.preheader128.i.i.preheader.new ], [ %i.ws, %.epilog-lcssa.1 ]
  %niter298 = phi i8 [ 0, %.preheader128.i.i.preheader.new ], [ %niter298.next.1, %.epilog-lcssa.1 ]
  br label %bb.bs

.preheader127.i.i.loopexit.unr-lcssa:             ; preds = %.epilog-lcssa304.1
  %lcmp.mod312.not = icmp eq i64 %xtraiter308, 0
  br i1 %lcmp.mod312.not, label %.preheader127.i.i, label %.preheader128.us.i.i.epil.preheader

.preheader128.us.i.i.epil.preheader:              ; preds = %.preheader127.i.i.loopexit.unr-lcssa, %.preheader128.us.i.i.preheader
  %indvars.iv201.i.i.epil.init = phi i64 [ 0, %.preheader128.us.i.i.preheader ], [ %indvars.iv.next202.i.i.1, %.preheader127.i.i.loopexit.unr-lcssa ]
  %.4153.us.i.i.epil.init = phi ptr [ %i.ub, %.preheader128.us.i.i.preheader ], [ %i.tt, %.preheader127.i.i.loopexit.unr-lcssa ]
  %lcmp.mod314 = trunc i8 %i.hq to i1
  call void @llvm.assume(i1 %lcmp.mod314)
  %invariant.gep148.us.i.i.epil = getelementptr inbounds nuw [240 x i8], ptr %i.hk, i64 %indvars.iv201.i.i.epil.init
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.preheader128.us.i.i.epil.preheader
  %.081151.us.i.i.epil.epil = phi i32 [ 0, %.preheader128.us.i.i.epil.preheader ], [ %i.uk, %bb.bm ] ; 2 uses
  %.5150.us.i.i.epil.epil = phi ptr [ %.4153.us.i.i.epil.init, %.preheader128.us.i.i.epil.preheader ], [ %i.uj, %bb.bm ] ; 2 uses
  %epil.iter302.epil = phi i32 [ 0, %.preheader128.us.i.i.epil.preheader ], [ %epil.iter302.next.epil, %bb.bm ]
  %i.ud = and i32 %.081151.us.i.i.epil.epil, 1
  %i.ue = zext nneg i32 %i.ud to i64
  %gep149.us.i.i.epil.epil = getelementptr inbounds nuw [960 x i8], ptr %invariant.gep148.us.i.i.epil, i64 %i.ue ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %gep149.us.i.i.epil.epil, i64 56
  store ptr %.5150.us.i.i.epil.epil, ptr %i.uf, align 8, !tbaa !310
  %i.ug = getelementptr inbounds nuw i8, ptr %gep149.us.i.i.epil.epil, i64 64
  %i.uh = load i64, ptr %i.ug, align 8, !tbaa !309
  %i.ui = mul i64 %i.uh, 6
  %i.uj = getelementptr inbounds nuw i8, ptr %.5150.us.i.i.epil.epil, i64 %i.ui ; 2 uses
  %i.uk = add nuw nsw i32 %.081151.us.i.i.epil.epil, 1
  %epil.iter302.next.epil = add i32 %epil.iter302.epil, 1 ; 2 uses
  %epil.iter302.cmp.epil.not = icmp eq i32 %epil.iter302.next.epil, %i.hc
  br i1 %epil.iter302.cmp.epil.not, label %.preheader127.i.i, label %bb.bm, !llvm.loop !446

.preheader127.i.i.loopexit276.unr-lcssa:          ; preds = %.epilog-lcssa.1
  %lcmp.mod294.not = icmp eq i8 %xtraiter290, 0
  br i1 %lcmp.mod294.not, label %.preheader127.i.i, label %.preheader128.i.i.epil.preheader

.preheader128.i.i.epil.preheader:                 ; preds = %.preheader127.i.i.loopexit276.unr-lcssa, %.preheader128.i.i.preheader
  %.4153.i.i.epil.init = phi ptr [ %i.ub, %.preheader128.i.i.preheader ], [ %i.ws, %.preheader127.i.i.loopexit276.unr-lcssa ]
  %lcmp.mod296 = trunc i8 %i.hq to i1
  call void @llvm.assume(i1 %lcmp.mod296)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %.preheader128.i.i.epil.preheader
  %.081151.i.i.epil.epil = phi i32 [ 0, %.preheader128.i.i.epil.preheader ], [ %i.us, %bb.bn ] ; 2 uses
  %.5150.i.i.epil.epil = phi ptr [ %.4153.i.i.epil.init, %.preheader128.i.i.epil.preheader ], [ %i.ur, %bb.bn ] ; 2 uses
  %epil.iter.epil = phi i32 [ 0, %.preheader128.i.i.epil.preheader ], [ %epil.iter.next.epil, %bb.bn ]
  %i.ul = and i32 %.081151.i.i.epil.epil, 1
  %i.um = zext nneg i32 %i.ul to i64
  %gep149.i.i.epil.epil = getelementptr inbounds nuw [960 x i8], ptr %i.hk, i64 %i.um ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %gep149.i.i.epil.epil, i64 56
  store ptr %.5150.i.i.epil.epil, ptr %i.un, align 8, !tbaa !310
  %i.uo = getelementptr inbounds nuw i8, ptr %gep149.i.i.epil.epil, i64 64
  %i.up = load i64, ptr %i.uo, align 8, !tbaa !309
  %i.uq = mul i64 %i.up, 6
  %i.ur = getelementptr inbounds nuw i8, ptr %.5150.i.i.epil.epil, i64 %i.uq ; 2 uses
  %i.us = add nuw nsw i32 %.081151.i.i.epil.epil, 1
  %epil.iter.next.epil = add i32 %epil.iter.epil, 1 ; 2 uses
  %epil.iter.cmp.epil.not = icmp eq i32 %epil.iter.next.epil, %i.hc
  br i1 %epil.iter.cmp.epil.not, label %.preheader127.i.i, label %bb.bn, !llvm.loop !450

.preheader127.i.i:                                ; preds = %.preheader127.i.i.loopexit276.unr-lcssa, %bb.bn, %.preheader127.i.i.loopexit.unr-lcssa, %bb.bm
  %.us-phi.i.i = phi ptr [ %i.uj, %bb.bm ], [ %i.tt, %.preheader127.i.i.loopexit.unr-lcssa ], [ %i.ws, %.preheader127.i.i.loopexit276.unr-lcssa ], [ %i.ur, %bb.bn ] ; 4 uses
  br i1 %i.td, label %.preheader126.us.i.i.preheader, label %.preheader126.i.i.preheader

.preheader126.i.i.preheader:                      ; preds = %.preheader127.i.i
  %xtraiter326 = and i8 %i.hq, 1
  br i1 %i.hf, label %.preheader126.i.i.preheader.new, label %.preheader126.i.i.epil.preheader

.preheader126.i.i.preheader.new:                  ; preds = %.preheader126.i.i.preheader
  %unroll_iter333 = and i8 %i.hq, 4
  br label %.preheader126.i.i

.preheader126.us.i.i.preheader:                   ; preds = %.preheader127.i.i
  %xtraiter344 = and i64 %wide.trip.count190.i.i, 1
  br i1 %i.hf, label %.preheader126.us.i.i.preheader.new, label %.preheader126.us.i.i.epil.preheader

.preheader126.us.i.i.preheader.new:               ; preds = %.preheader126.us.i.i.preheader
  %unroll_iter351 = and i64 %wide.trip.count190.i.i, 4
  br label %.preheader126.us.i.i

.preheader126.us.i.i:                             ; preds = %.epilog-lcssa340.1, %.preheader126.us.i.i.preheader.new
  %indvars.iv209.i.i = phi i64 [ 0, %.preheader126.us.i.i.preheader.new ], [ %indvars.iv.next210.i.i.1, %.epilog-lcssa340.1 ] ; 3 uses
  %.6159.us.i.i = phi ptr [ %.us-phi.i.i, %.preheader126.us.i.i.preheader.new ], [ %i.vk, %.epilog-lcssa340.1 ]
  %niter352 = phi i64 [ 0, %.preheader126.us.i.i.preheader.new ], [ %niter352.next.1, %.epilog-lcssa340.1 ]
  %invariant.gep154.us.i.i = getelementptr inbounds nuw [240 x i8], ptr %i.hk, i64 %indvars.iv209.i.i
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %.preheader126.us.i.i
  %.080157.us.i.i.epil = phi i32 [ 0, %.preheader126.us.i.i ], [ %i.vb, %bb.bo ] ; 2 uses
  %.7156.us.i.i.epil = phi ptr [ %.6159.us.i.i, %.preheader126.us.i.i ], [ %i.va, %bb.bo ] ; 2 uses
  %epil.iter338 = phi i32 [ 0, %.preheader126.us.i.i ], [ %epil.iter338.next, %bb.bo ]
  %i.ut = and i32 %.080157.us.i.i.epil, 1
  %i.uu = zext nneg i32 %i.ut to i64
  %gep155.us.i.i.epil = getelementptr inbounds nuw [960 x i8], ptr %invariant.gep154.us.i.i, i64 %i.uu ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %gep155.us.i.i.epil, i64 40
  store ptr %.7156.us.i.i.epil, ptr %i.uv, align 8, !tbaa !312
  %i.uw = getelementptr inbounds nuw i8, ptr %gep155.us.i.i.epil, i64 48
  %i.ux = load i32, ptr %i.uw, align 8, !tbaa !311
  %i.uy = zext i32 %i.ux to i64
  %i.uz = shl nuw nsw i64 %i.uy, 1
  %i.va = getelementptr inbounds nuw i8, ptr %.7156.us.i.i.epil, i64 %i.uz ; 2 uses
  %i.vb = add nuw nsw i32 %.080157.us.i.i.epil, 1
  %epil.iter338.next = add i32 %epil.iter338, 1   ; 2 uses
  %epil.iter338.cmp.not = icmp eq i32 %epil.iter338.next, %i.hc
  br i1 %epil.iter338.cmp.not, label %.preheader126.us.i.i.1, label %bb.bo, !llvm.loop !451

.preheader126.us.i.i.1:                           ; preds = %bb.bo
  %i.vc = getelementptr inbounds nuw [240 x i8], ptr %i.hk, i64 %indvars.iv209.i.i
  %invariant.gep154.us.i.i.1 = getelementptr inbounds nuw i8, ptr %i.vc, i64 240
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %.preheader126.us.i.i.1
  %.080157.us.i.i.epil.1 = phi i32 [ 0, %.preheader126.us.i.i.1 ], [ %i.vl, %bb.bp ] ; 2 uses
  %.7156.us.i.i.epil.1 = phi ptr [ %i.va, %.preheader126.us.i.i.1 ], [ %i.vk, %bb.bp ] ; 2 uses
  %epil.iter338.1 = phi i32 [ 0, %.preheader126.us.i.i.1 ], [ %epil.iter338.next.1, %bb.bp ]
  %i.vd = and i32 %.080157.us.i.i.epil.1, 1
  %i.ve = zext nneg i32 %i.vd to i64
  %gep155.us.i.i.epil.1 = getelementptr inbounds nuw [960 x i8], ptr %invariant.gep154.us.i.i.1, i64 %i.ve ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %gep155.us.i.i.epil.1, i64 40
  store ptr %.7156.us.i.i.epil.1, ptr %i.vf, align 8, !tbaa !312
  %i.vg = getelementptr inbounds nuw i8, ptr %gep155.us.i.i.epil.1, i64 48
  %i.vh = load i32, ptr %i.vg, align 8, !tbaa !311
  %i.vi = zext i32 %i.vh to i64
  %i.vj = shl nuw nsw i64 %i.vi, 1
  %i.vk = getelementptr inbounds nuw i8, ptr %.7156.us.i.i.epil.1, i64 %i.vj ; 4 uses
  %i.vl = add nuw nsw i32 %.080157.us.i.i.epil.1, 1
  %epil.iter338.next.1 = add i32 %epil.iter338.1, 1 ; 2 uses
  %epil.iter338.cmp.1.not = icmp eq i32 %epil.iter338.next.1, %i.hc
  br i1 %epil.iter338.cmp.1.not, label %.epilog-lcssa340.1, label %bb.bp, !llvm.loop !451

.epilog-lcssa340.1:                               ; preds = %bb.bp
  %indvars.iv.next210.i.i.1 = add nuw nsw i64 %indvars.iv209.i.i, 2 ; 2 uses
  %niter352.next.1 = add i64 %niter352, 2         ; 2 uses
  %niter352.ncmp.1 = icmp eq i64 %niter352.next.1, %unroll_iter351
  br i1 %niter352.ncmp.1, label %.preheader.i.i.preheader.loopexit.unr-lcssa, label %.preheader126.us.i.i, !llvm.loop !452

.preheader.i.i.preheader.loopexit.unr-lcssa:      ; preds = %.epilog-lcssa340.1
  %lcmp.mod348.not = icmp eq i64 %xtraiter344, 0
  br i1 %lcmp.mod348.not, label %.preheader.i.i.preheader, label %.preheader126.us.i.i.epil.preheader

.preheader126.us.i.i.epil.preheader:              ; preds = %.preheader.i.i.preheader.loopexit.unr-lcssa, %.preheader126.us.i.i.preheader
  %indvars.iv209.i.i.epil.init = phi i64 [ 0, %.preheader126.us.i.i.preheader ], [ %indvars.iv.next210.i.i.1, %.preheader.i.i.preheader.loopexit.unr-lcssa ]
  %.6159.us.i.i.epil.init = phi ptr [ %.us-phi.i.i, %.preheader126.us.i.i.preheader ], [ %i.vk, %.preheader.i.i.preheader.loopexit.unr-lcssa ]
  %lcmp.mod350 = trunc i8 %i.hq to i1
  call void @llvm.assume(i1 %lcmp.mod350)
  %invariant.gep154.us.i.i.epil = getelementptr inbounds nuw [240 x i8], ptr %i.hk, i64 %indvars.iv209.i.i.epil.init
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %.preheader126.us.i.i.epil.preheader
  %.080157.us.i.i.epil.epil = phi i32 [ 0, %.preheader126.us.i.i.epil.preheader ], [ %i.vu, %bb.bq ] ; 2 uses
  %.7156.us.i.i.epil.epil = phi ptr [ %.6159.us.i.i.epil.init, %.preheader126.us.i.i.epil.preheader ], [ %i.vt, %bb.bq ] ; 2 uses
  %epil.iter338.epil = phi i32 [ 0, %.preheader126.us.i.i.epil.preheader ], [ %epil.iter338.next.epil, %bb.bq ]
  %i.vm = and i32 %.080157.us.i.i.epil.epil, 1
  %i.vn = zext nneg i32 %i.vm to i64
  %gep155.us.i.i.epil.epil = getelementptr inbounds nuw [960 x i8], ptr %invariant.gep154.us.i.i.epil, i64 %i.vn ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %gep155.us.i.i.epil.epil, i64 40
  store ptr %.7156.us.i.i.epil.epil, ptr %i.vo, align 8, !tbaa !312
  %i.vp = getelementptr inbounds nuw i8, ptr %gep155.us.i.i.epil.epil, i64 48
  %i.vq = load i32, ptr %i.vp, align 8, !tbaa !311
  %i.vr = zext i32 %i.vq to i64
  %i.vs = shl nuw nsw i64 %i.vr, 1
  %i.vt = getelementptr inbounds nuw i8, ptr %.7156.us.i.i.epil.epil, i64 %i.vs ; 2 uses
  %i.vu = add nuw nsw i32 %.080157.us.i.i.epil.epil, 1
  %epil.iter338.next.epil = add i32 %epil.iter338.epil, 1 ; 2 uses
  %epil.iter338.cmp.epil.not = icmp eq i32 %epil.iter338.next.epil, %i.hc
  br i1 %epil.iter338.cmp.epil.not, label %.preheader.i.i.preheader, label %bb.bq, !llvm.loop !451

.preheader.i.i.preheader.loopexit273.unr-lcssa:   ; preds = %.epilog-lcssa322.1
  %lcmp.mod330.not = icmp eq i8 %xtraiter326, 0
  br i1 %lcmp.mod330.not, label %.preheader.i.i.preheader, label %.preheader126.i.i.epil.preheader

.preheader126.i.i.epil.preheader:                 ; preds = %.preheader.i.i.preheader.loopexit273.unr-lcssa, %.preheader126.i.i.preheader
  %.6159.i.i.epil.init = phi ptr [ %.us-phi.i.i, %.preheader126.i.i.preheader ], [ %i.xk, %.preheader.i.i.preheader.loopexit273.unr-lcssa ]
  %lcmp.mod332 = trunc i8 %i.hq to i1
  call void @llvm.assume(i1 %lcmp.mod332)
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %.preheader126.i.i.epil.preheader
  %.080157.i.i.epil.epil = phi i32 [ 0, %.preheader126.i.i.epil.preheader ], [ %i.wd, %bb.br ] ; 2 uses
  %.7156.i.i.epil.epil = phi ptr [ %.6159.i.i.epil.init, %.preheader126.i.i.epil.preheader ], [ %i.wc, %bb.br ] ; 2 uses
  %epil.iter320.epil = phi i32 [ 0, %.preheader126.i.i.epil.preheader ], [ %epil.iter320.next.epil, %bb.br ]
  %i.vv = and i32 %.080157.i.i.epil.epil, 1
  %i.vw = zext nneg i32 %i.vv to i64
  %gep155.i.i.epil.epil = getelementptr inbounds nuw [960 x i8], ptr %i.hk, i64 %i.vw ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %gep155.i.i.epil.epil, i64 40
  store ptr %.7156.i.i.epil.epil, ptr %i.vx, align 8, !tbaa !312
  %i.vy = getelementptr inbounds nuw i8, ptr %gep155.i.i.epil.epil, i64 48
  %i.vz = load i32, ptr %i.vy, align 8, !tbaa !311
  %i.wa = zext i32 %i.vz to i64
  %i.wb = shl nuw nsw i64 %i.wa, 1
  %i.wc = getelementptr inbounds nuw i8, ptr %.7156.i.i.epil.epil, i64 %i.wb ; 2 uses
  %i.wd = add nuw nsw i32 %.080157.i.i.epil.epil, 1
  %epil.iter320.next.epil = add i32 %epil.iter320.epil, 1 ; 2 uses
  %epil.iter320.cmp.epil.not = icmp eq i32 %epil.iter320.next.epil, %i.hc
  br i1 %epil.iter320.cmp.epil.not, label %.preheader.i.i.preheader, label %bb.br, !llvm.loop !453

.preheader.i.i.preheader:                         ; preds = %.preheader.i.i.preheader.loopexit273.unr-lcssa, %bb.br, %.preheader.i.i.preheader.loopexit.unr-lcssa, %bb.bq
  %.8168.i.i.ph = phi ptr [ %i.vt, %bb.bq ], [ %i.vk, %.preheader.i.i.preheader.loopexit.unr-lcssa ], [ %i.xk, %.preheader.i.i.preheader.loopexit273.unr-lcssa ], [ %i.wc, %bb.br ]
  br label %.preheader.i.i

bb.bs:                                            ; preds = %bb.bs, %.preheader128.i.i
  %.081151.i.i.epil = phi i32 [ 0, %.preheader128.i.i ], [ %i.wl, %bb.bs ] ; 2 uses
  %.5150.i.i.epil = phi ptr [ %.4153.i.i, %.preheader128.i.i ], [ %i.wk, %bb.bs ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.preheader128.i.i ], [ %epil.iter.next, %bb.bs ]
  %i.we = and i32 %.081151.i.i.epil, 1
  %i.wf = zext nneg i32 %i.we to i64
  %gep149.i.i.epil = getelementptr inbounds nuw [960 x i8], ptr %i.hk, i64 %i.wf ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %gep149.i.i.epil, i64 56
  store ptr %.5150.i.i.epil, ptr %i.wg, align 8, !tbaa !310
  %i.wh = getelementptr inbounds nuw i8, ptr %gep149.i.i.epil, i64 64
  %i.wi = load i64, ptr %i.wh, align 8, !tbaa !309
  %i.wj = mul i64 %i.wi, 6
  %i.wk = getelementptr inbounds nuw i8, ptr %.5150.i.i.epil, i64 %i.wj ; 2 uses
  %i.wl = add nuw nsw i32 %.081151.i.i.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %i.hc
  br i1 %epil.iter.cmp.not, label %.epil.preheader.1, label %bb.bs, !llvm.loop !450

.epil.preheader.1:                                ; preds = %bb.bs, %.epil.preheader.1
  %.081151.i.i.epil.1 = phi i32 [ %i.wt, %.epil.preheader.1 ], [ 0, %bb.bs ] ; 2 uses
  %.5150.i.i.epil.1 = phi ptr [ %i.ws, %.epil.preheader.1 ], [ %i.wk, %bb.bs ] ; 2 uses
  %epil.iter.1 = phi i32 [ %epil.iter.next.1, %.epil.preheader.1 ], [ 0, %bb.bs ]
  %i.wm = and i32 %.081151.i.i.epil.1, 1
  %i.wn = zext nneg i32 %i.wm to i64
  %gep149.i.i.epil.1 = getelementptr inbounds nuw [960 x i8], ptr %i.hk, i64 %i.wn ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %gep149.i.i.epil.1, i64 56
  store ptr %.5150.i.i.epil.1, ptr %i.wo, align 8, !tbaa !310
  %i.wp = getelementptr inbounds nuw i8, ptr %gep149.i.i.epil.1, i64 64
  %i.wq = load i64, ptr %i.wp, align 8, !tbaa !309
  %i.wr = mul i64 %i.wq, 6
  %i.ws = getelementptr inbounds nuw i8, ptr %.5150.i.i.epil.1, i64 %i.wr ; 4 uses
  %i.wt = add nuw nsw i32 %.081151.i.i.epil.1, 1
  %epil.iter.next.1 = add i32 %epil.iter.1, 1     ; 2 uses
  %epil.iter.cmp.1.not = icmp eq i32 %epil.iter.next.1, %i.hc
  br i1 %epil.iter.cmp.1.not, label %.epilog-lcssa.1, label %.epil.preheader.1, !llvm.loop !450

.epilog-lcssa.1:                                  ; preds = %.epil.preheader.1
  %niter298.next.1 = add i8 %niter298, 2          ; 2 uses
  %niter298.ncmp.1 = icmp eq i8 %niter298.next.1, %unroll_iter297
  br i1 %niter298.ncmp.1, label %.preheader127.i.i.loopexit276.unr-lcssa, label %.preheader128.i.i, !llvm.loop !447

.preheader126.i.i:                                ; preds = %.epilog-lcssa322.1, %.preheader126.i.i.preheader.new
  %.6159.i.i = phi ptr [ %.us-phi.i.i, %.preheader126.i.i.preheader.new ], [ %i.xk, %.epilog-lcssa322.1 ]
  %niter334 = phi i8 [ 0, %.preheader126.i.i.preheader.new ], [ %niter334.next.1, %.epilog-lcssa322.1 ]
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %.preheader126.i.i
  %.080157.i.i.epil = phi i32 [ 0, %.preheader126.i.i ], [ %i.xc, %bb.bt ] ; 2 uses
  %.7156.i.i.epil = phi ptr [ %.6159.i.i, %.preheader126.i.i ], [ %i.xb, %bb.bt ] ; 2 uses
  %epil.iter320 = phi i32 [ 0, %.preheader126.i.i ], [ %epil.iter320.next, %bb.bt ]
  %i.wu = and i32 %.080157.i.i.epil, 1
  %i.wv = zext nneg i32 %i.wu to i64
  %gep155.i.i.epil = getelementptr inbounds nuw [960 x i8], ptr %i.hk, i64 %i.wv ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %gep155.i.i.epil, i64 40
  store ptr %.7156.i.i.epil, ptr %i.ww, align 8, !tbaa !312
  %i.wx = getelementptr inbounds nuw i8, ptr %gep155.i.i.epil, i64 48
  %i.wy = load i32, ptr %i.wx, align 8, !tbaa !311
  %i.wz = zext i32 %i.wy to i64
  %i.xa = shl nuw nsw i64 %i.wz, 1
  %i.xb = getelementptr inbounds nuw i8, ptr %.7156.i.i.epil, i64 %i.xa ; 2 uses
  %i.xc = add nuw nsw i32 %.080157.i.i.epil, 1
  %epil.iter320.next = add i32 %epil.iter320, 1   ; 2 uses
  %epil.iter320.cmp.not = icmp eq i32 %epil.iter320.next, %i.hc
  br i1 %epil.iter320.cmp.not, label %.epil.preheader318.1, label %bb.bt, !llvm.loop !453

.epil.preheader318.1:                             ; preds = %bb.bt, %.epil.preheader318.1
  %.080157.i.i.epil.1 = phi i32 [ %i.xl, %.epil.preheader318.1 ], [ 0, %bb.bt ] ; 2 uses
  %.7156.i.i.epil.1 = phi ptr [ %i.xk, %.epil.preheader318.1 ], [ %i.xb, %bb.bt ] ; 2 uses
  %epil.iter320.1 = phi i32 [ %epil.iter320.next.1, %.epil.preheader318.1 ], [ 0, %bb.bt ]
  %i.xd = and i32 %.080157.i.i.epil.1, 1
  %i.xe = zext nneg i32 %i.xd to i64
  %gep155.i.i.epil.1 = getelementptr inbounds nuw [960 x i8], ptr %i.hk, i64 %i.xe ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %gep155.i.i.epil.1, i64 40
  store ptr %.7156.i.i.epil.1, ptr %i.xf, align 8, !tbaa !312
  %i.xg = getelementptr inbounds nuw i8, ptr %gep155.i.i.epil.1, i64 48
  %i.xh = load i32, ptr %i.xg, align 8, !tbaa !311
  %i.xi = zext i32 %i.xh to i64
  %i.xj = shl nuw nsw i64 %i.xi, 1
  %i.xk = getelementptr inbounds nuw i8, ptr %.7156.i.i.epil.1, i64 %i.xj ; 4 uses
  %i.xl = add nuw nsw i32 %.080157.i.i.epil.1, 1
  %epil.iter320.next.1 = add i32 %epil.iter320.1, 1 ; 2 uses
  %epil.iter320.cmp.1.not = icmp eq i32 %epil.iter320.next.1, %i.hc
  br i1 %epil.iter320.cmp.1.not, label %.epilog-lcssa322.1, label %.epil.preheader318.1, !llvm.loop !453

.epilog-lcssa322.1:                               ; preds = %.epil.preheader318.1
  %niter334.next.1 = add i8 %niter334, 2          ; 2 uses
  %niter334.ncmp.1 = icmp eq i8 %niter334.next.1, %unroll_iter333
  br i1 %niter334.ncmp.1, label %.preheader.i.i.preheader.loopexit273.unr-lcssa, label %.preheader126.i.i, !llvm.loop !452

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.epilog-lcssa358
  %.8175.i.i = phi ptr [ %i.xz, %.epilog-lcssa358 ], [ %.8168.i.i.ph, %.preheader.i.i.preheader ]
  %.0120174.i.i = phi i8 [ %16, %.epilog-lcssa358 ], [ 0, %.preheader.i.i.preheader ] ; 2 uses
  %narrow131.i.i = select i1 %i.td, i8 %.0120174.i.i, i8 0
  %15 = zext nneg i8 %narrow131.i.i to i64
  %invariant.gep163.i.i = getelementptr inbounds nuw [240 x i8], ptr %i.hk, i64 %15
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bu, %.preheader.i.i
  %.0166.i.i.epil = phi i32 [ 0, %.preheader.i.i ], [ %i.ya, %bb.bu ] ; 2 uses
  %.9165.i.i.epil = phi ptr [ %.8175.i.i, %.preheader.i.i ], [ %i.xz, %bb.bu ]
  %epil.iter356 = phi i32 [ 0, %.preheader.i.i ], [ %epil.iter356.next, %bb.bu ]
  %i.xm = ptrtoint ptr %.9165.i.i.epil to i64
  %i.xn = add i64 %i.xm, 63
  %i.xo = and i64 %i.xn, -64
  %i.xp = inttoptr i64 %i.xo to ptr               ; 2 uses
  %i.xq = and i32 %.0166.i.i.epil, 1
  %i.xr = zext nneg i32 %i.xq to i64
  %gep164.i.i.epil = getelementptr inbounds nuw [960 x i8], ptr %invariant.gep163.i.i, i64 %i.xr ; 3 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %gep164.i.i.epil, i64 72
  store ptr %i.xp, ptr %i.xs, align 8, !tbaa !315
  %i.xt = getelementptr inbounds nuw i8, ptr %gep164.i.i.epil, i64 4
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !313
  %i.xv = zext i32 %i.xu to i64
  %i.xw = getelementptr inbounds nuw i8, ptr %gep164.i.i.epil, i64 8
  %i.xx = load i64, ptr %i.xw, align 8, !tbaa !314
  %i.xy = mul i64 %i.xx, %i.xv
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xp, i64 %i.xy ; 2 uses
  %i.ya = add nuw nsw i32 %.0166.i.i.epil, 1
  %epil.iter356.next = add i32 %epil.iter356, 1   ; 2 uses
  %epil.iter356.cmp.not = icmp eq i32 %epil.iter356.next, %i.hc
  br i1 %epil.iter356.cmp.not, label %.epilog-lcssa358, label %bb.bu, !llvm.loop !454

.epilog-lcssa358:                                 ; preds = %bb.bu
  %16 = add nuw nsw i8 %.0120174.i.i, 1           ; 2 uses
  %exitcond219.i.i = icmp eq i8 %16, %i.hq
  br i1 %exitcond219.i.i, label %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_Ph.exit.i, label %.preheader.i.i, !llvm.loop !455

_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_Ph.exit.i: ; preds = %.epilog-lcssa358, %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i
  store atomic i8 1, ptr %.0.val.i release, align 8
  %i.yb = load ptr, ptr %i.gj, align 8, !tbaa !384
  %i.yc = load ptr, ptr %4, align 8, !tbaa !175   ; 2 uses
  %i.yd = icmp eq ptr %i.yc, %i.al
  br i1 %i.yd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_Ph.exit.i
  %i.ye = load i64, ptr %i.al, align 8, !tbaa !156
  %i.yf = add i64 %i.ye, 1
  call void @_ZdlPvm(ptr noundef %i.yc, i64 noundef %i.yf) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_Ph.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.yg = load ptr, ptr %3, align 8, !tbaa !175   ; 2 uses
  %i.yh = icmp eq ptr %i.yg, %i.aj
  br i1 %i.yh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i
  %i.yi = load i64, ptr %i.aj, align 8, !tbaa !156
  %i.yj = add i64 %i.yi, 1
  call void @_ZdlPvm(ptr noundef %i.yg, i64 noundef %i.yj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.yk = load ptr, ptr %2, align 8, !tbaa !175   ; 2 uses
  %i.yl = icmp eq ptr %i.yk, %i.ah
  br i1 %i.yl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i
  %i.ym = load i64, ptr %i.ah, align 8, !tbaa !156
  %i.yn = add i64 %i.ym, 1
  call void @_ZdlPvm(ptr noundef %i.yk, i64 noundef %i.yn) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.bv

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i, %bb.h
  %.023.i = phi ptr [ %i.ag, %bb.h ], [ %i.yb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i ]
  %i.yo = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE0EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionEE5mutex) #26 ; 0 uses
  br label %_ZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE0EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionE.exit

_ZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE0EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionE.exit: ; preds = %bb.e, %bb.bv
  %.1.i = phi ptr [ %i.ab, %bb.e ], [ %.023.i, %bb.bv ]
  %.not11 = icmp eq ptr %.1.i, null
  br i1 %.not11, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE0EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionE.exit, %_ZN9Stockfish12_GLOBAL__N_18TBTables3getILNS0_6TBTypeE0EEEPNS0_7TBTableIXT_EEEm.exit
  store i32 0, ptr %1, align 4, !tbaa !234
  br label %bb.dn

bb.bx:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE0EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.yp = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 32
  %i.yq = load i64, ptr %i.yp, align 8, !tbaa !214 ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 40
  %i.ys = load i64, ptr %i.yr, align 8, !tbaa !226
  %i.yt = icmp eq i64 %i.yq, %i.ys
  %i.yu = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.yv = load i8, ptr %i.yu, align 4             ; 2 uses
  %i.yw = icmp ne i8 %i.yv, 0
  %i.yx = select i1 %i.yt, i1 %i.yw, i1 false
  %i.yy = load ptr, ptr %i.m, align 8, !tbaa !245
  %i.yz = load i64, ptr %i.yy, align 8, !tbaa !254
  %i.za = icmp ne i64 %i.yz, %i.yq
  %i.zb = select i1 %i.yx, i1 true, i1 %i.za      ; 3 uses
  %i.zc = select i1 %i.zb, i32 8, i32 0           ; 2 uses
  %i.zd = select i1 %i.zb, i32 56, i32 0          ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 52 ; 2 uses
  %i.zf = load i8, ptr %i.ze, align 4, !tbaa !205, !range !206, !noundef !207
  %i.zg = trunc nuw i8 %i.zf to i1                ; 2 uses
  br i1 %i.zg, label %bb.by, label %._crit_edge148.i

._crit_edge148.i:                                 ; preds = %bb.bx
  %.pre149.i = trunc nuw nsw i32 %i.zd to i8
  %.pre150.i = trunc nuw nsw i32 %i.zc to i8
  br label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.zh = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 184
  %i.zi = load i8, ptr %i.zh, align 8, !tbaa !241
  %i.zj = trunc nuw nsw i32 %i.zc to i8           ; 2 uses
  %i.zk = xor i8 %i.zi, %i.zj
  %i.zl = lshr i8 %i.zk, 3
  %i.zm = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.zn = zext nneg i8 %i.zl to i64
  %i.zo = getelementptr inbounds nuw [8 x i8], ptr %i.zm, i64 %i.zn
  %i.zp = load i64, ptr %i.zo, align 8, !tbaa !17
  %i.zq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.zr = load i64, ptr %i.zq, align 8, !tbaa !17
  %i.zs = and i64 %i.zr, %i.zp                    ; 2 uses
  %i.zt = trunc nuw nsw i32 %i.zd to i8           ; 2 uses
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bz, %bb.by
  %indvars.iv.i15 = phi i64 [ %indvars.iv.next.i16, %bb.bz ], [ 0, %bb.by ] ; 5 uses
  %.09.i = phi i64 [ %i.zx, %bb.bz ], [ %i.zs, %bb.by ] ; 3 uses
  %i.zu = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.09.i, i1 true)
  %i.zv = trunc nuw nsw i64 %i.zu to i8
  %i.zw = add i64 %.09.i, -1
  %i.zx = and i64 %i.zw, %.09.i                   ; 2 uses
  %i.zy = xor i8 %i.zv, %i.zt
  %indvars.iv.next.i16 = add nuw nsw i64 %indvars.iv.i15, 1 ; 3 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i15
  store i8 %i.zy, ptr %i.zz, align 1, !tbaa !95
  %.not.i17 = icmp eq i64 %i.zx, 0
  br i1 %.not.i17, label %bb.ca, label %bb.bz, !llvm.loop !456

bb.ca:                                            ; preds = %bb.bz
  %i.aaa = trunc nuw i64 %indvars.iv.next.i16 to i32
  %i.aab = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i16
  %.not17.i.i.i = icmp eq i64 %indvars.iv.i15, 0
  %.pre147.i = load i8, ptr %i.a, align 1, !tbaa !95 ; 3 uses
  br i1 %.not17.i.i.i, label %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.ca
  %i.aac = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %.phi.trans.insert.i = zext i8 %.pre147.i to i64
  %.phi.trans.insert145.i = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %.phi.trans.insert.i
  %.pre146.i = load i32, ptr %.phi.trans.insert145.i, align 4, !tbaa !89 ; 2 uses
  %xtraiter362 = and i64 %indvars.iv.i15, 7       ; 2 uses
  %lcmp.mod363.not = icmp eq i64 %xtraiter362, 0
  br i1 %lcmp.mod363.not, label %.lr.ph.i.i.i18.prol.loopexit, label %.lr.ph.i.i.i18.prol

.lr.ph.i.i.i18.prol:                              ; preds = %.lr.ph.i.i.preheader.i, %.lr.ph.i.i.i18.prol
  %i.aad = phi i32 [ %i.aal, %.lr.ph.i.i.i18.prol ], [ %.pre146.i, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %i.aae = phi ptr [ %i.aak, %.lr.ph.i.i.i18.prol ], [ %i.aac, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %.018.i.i.i.prol = phi ptr [ %spec.select.i.i.i.prol, %.lr.ph.i.i.i18.prol ], [ %i.a, %.lr.ph.i.i.preheader.i ]
  %prol.iter364 = phi i64 [ %prol.iter364.next, %.lr.ph.i.i.i18.prol ], [ 0, %.lr.ph.i.i.preheader.i ]
  %i.aaf = load i8, ptr %i.aae, align 1, !tbaa !95
  %i.aag = zext i8 %i.aaf to i64
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.aag
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !89 ; 2 uses
  %i.aaj = icmp slt i32 %i.aad, %i.aai
  %spec.select.i.i.i.prol = select i1 %i.aaj, ptr %i.aae, ptr %.018.i.i.i.prol ; 3 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aae, i64 1 ; 2 uses
  %i.aal = call i32 @llvm.smax.i32(i32 %i.aad, i32 %i.aai) ; 2 uses
  %prol.iter364.next = add i64 %prol.iter364, 1   ; 2 uses
  %prol.iter364.cmp.not = icmp eq i64 %prol.iter364.next, %xtraiter362
  br i1 %prol.iter364.cmp.not, label %.lr.ph.i.i.i18.prol.loopexit, label %.lr.ph.i.i.i18.prol, !llvm.loop !457

.lr.ph.i.i.i18.prol.loopexit:                     ; preds = %.lr.ph.i.i.i18.prol, %.lr.ph.i.i.preheader.i
  %spec.select.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i ], [ %spec.select.i.i.i.prol, %.lr.ph.i.i.i18.prol ]
  %.unr = phi i32 [ %.pre146.i, %.lr.ph.i.i.preheader.i ], [ %i.aal, %.lr.ph.i.i.i18.prol ]
  %.unr365 = phi ptr [ %i.aac, %.lr.ph.i.i.preheader.i ], [ %i.aak, %.lr.ph.i.i.i18.prol ]
  %.018.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.preheader.i ], [ %spec.select.i.i.i.prol, %.lr.ph.i.i.i18.prol ]
  %i.aam = icmp samesign ult i64 %indvars.iv.i15, 8
  br i1 %i.aam, label %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.loopexit.i, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %.lr.ph.i.i.i18.prol.loopexit, %.lr.ph.i.i.i18
  %i.aan = phi i32 [ %i.acs, %.lr.ph.i.i.i18 ], [ %.unr, %.lr.ph.i.i.i18.prol.loopexit ] ; 2 uses
  %i.aao = phi ptr [ %i.acr, %.lr.ph.i.i.i18 ], [ %.unr365, %.lr.ph.i.i.i18.prol.loopexit ] ; 10 uses
  %.018.i.i.i = phi ptr [ %spec.select.i.i.i.7, %.lr.ph.i.i.i18 ], [ %.018.i.i.i.unr, %.lr.ph.i.i.i18.prol.loopexit ]
  %i.aap = load i8, ptr %i.aao, align 1, !tbaa !95
  %i.aaq = zext i8 %i.aap to i64
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.aaq
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !89 ; 2 uses
  %i.aat = icmp slt i32 %i.aan, %i.aas
  %spec.select.i.i.i = select i1 %i.aat, ptr %i.aao, ptr %.018.i.i.i
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aao, i64 1 ; 2 uses
  %i.aav = call i32 @llvm.smax.i32(i32 %i.aan, i32 %i.aas) ; 2 uses
  %i.aaw = load i8, ptr %i.aau, align 1, !tbaa !95
  %i.aax = zext i8 %i.aaw to i64
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.aax
  %i.aaz = load i32, ptr %i.aay, align 4, !tbaa !89 ; 2 uses
  %i.aba = icmp slt i32 %i.aav, %i.aaz
  %spec.select.i.i.i.1 = select i1 %i.aba, ptr %i.aau, ptr %spec.select.i.i.i
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aao, i64 2 ; 2 uses
  %i.abc = call i32 @llvm.smax.i32(i32 %i.aav, i32 %i.aaz) ; 2 uses
  %i.abd = load i8, ptr %i.abb, align 1, !tbaa !95
  %i.abe = zext i8 %i.abd to i64
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.abe
  %i.abg = load i32, ptr %i.abf, align 4, !tbaa !89 ; 2 uses
  %i.abh = icmp slt i32 %i.abc, %i.abg
  %spec.select.i.i.i.2 = select i1 %i.abh, ptr %i.abb, ptr %spec.select.i.i.i.1
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aao, i64 3 ; 2 uses
  %i.abj = call i32 @llvm.smax.i32(i32 %i.abc, i32 %i.abg) ; 2 uses
  %i.abk = load i8, ptr %i.abi, align 1, !tbaa !95
  %i.abl = zext i8 %i.abk to i64
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.abl
  %i.abn = load i32, ptr %i.abm, align 4, !tbaa !89 ; 2 uses
  %i.abo = icmp slt i32 %i.abj, %i.abn
  %spec.select.i.i.i.3 = select i1 %i.abo, ptr %i.abi, ptr %spec.select.i.i.i.2
  %i.abp = getelementptr inbounds nuw i8, ptr %i.aao, i64 4 ; 2 uses
  %i.abq = call i32 @llvm.smax.i32(i32 %i.abj, i32 %i.abn) ; 2 uses
  %i.abr = load i8, ptr %i.abp, align 1, !tbaa !95
  %i.abs = zext i8 %i.abr to i64
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.abs
  %i.abu = load i32, ptr %i.abt, align 4, !tbaa !89 ; 2 uses
  %i.abv = icmp slt i32 %i.abq, %i.abu
  %spec.select.i.i.i.4 = select i1 %i.abv, ptr %i.abp, ptr %spec.select.i.i.i.3
  %i.abw = getelementptr inbounds nuw i8, ptr %i.aao, i64 5 ; 2 uses
  %i.abx = call i32 @llvm.smax.i32(i32 %i.abq, i32 %i.abu) ; 2 uses
end_hunk_3
