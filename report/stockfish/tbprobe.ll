Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/tbprobe?download=true
inline.NumInlined: 1887
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE0ENS_10Tablebases8WDLScoreEEET0_RKNS_8PositionEPNS3_10ProbeStateES4_:bb.a
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
  %12 = getelementptr i8, ptr %.0.val.i, i64 %i.ju
  %i.jv = getelementptr i8, ptr %12, i64 %wide.trip.count.i.i
  %i.jw = getelementptr i8, ptr %i.jv, i64 1144
  %i.jx = getelementptr i8, ptr %.087150.i.i, i64 %i.ji
  %i.jy = getelementptr i8, ptr %i.jx, i64 %wide.trip.count.i.i
  %bound0 = icmp ult ptr %i.jr, %i.jy
  %bound1 = icmp ult ptr %i.jk, %i.jw
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.loopexit.i.i.preheader, label %vector.main.loop.iter.check44

vector.main.loop.iter.check44:                    ; preds = %vector.memcheck43
  %min.iters.check45 = icmp ult i32 %i.jl, 64
  br i1 %min.iters.check45, label %vec.epilog.ph60, label %vector.ph46

vector.ph46:                                      ; preds = %vector.main.loop.iter.check44
  %i.jz = and i64 %wide.trip.count.i.i, 56
  %n.vec47 = and i64 %wide.trip.count.i.i, 2147483584 ; 5 uses
  %i.ka = getelementptr i8, ptr %i.jk, i64 %n.vec47 ; 2 uses
  br label %vector.body48

vector.body48:                                    ; preds = %vector.ph46, %vector.body48
  %index49 = phi i64 [ 0, %vector.ph46 ], [ %index.next53, %vector.body48 ] ; 4 uses
  %next.gep50 = getelementptr i8, ptr %i.jk, i64 %index49
  %wide.load51 = load <64 x i8>, ptr %next.gep50, align 1, !tbaa !176, !alias.scope !577 ; 2 uses
  %i.kb = and <64 x i8> %wide.load51, splat (i8 15)
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jr, i64 %index49
  store <64 x i8> %i.kb, ptr %i.kc, align 1, !tbaa !217, !alias.scope !578, !noalias !577
  %i.kd = lshr <64 x i8> %wide.load51, splat (i8 4)
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jt, i64 %index49
  store <64 x i8> %i.kd, ptr %i.ke, align 1, !tbaa !217, !alias.scope !578, !noalias !577
  %index.next53 = add nuw i64 %index49, 64        ; 2 uses
  %i.kf = icmp eq i64 %index.next53, %n.vec47
  br i1 %i.kf, label %middle.block54, label %vector.body48, !llvm.loop !523

middle.block54:                                   ; preds = %vector.body48
  %cmp.n55 = icmp eq i64 %n.vec47, %wide.trip.count.i.i
  br i1 %cmp.n55, label %.preheader140.i.i, label %vec.epilog.iter.check57

vec.epilog.iter.check57:                          ; preds = %middle.block54
  %min.epilog.iters.check59 = icmp eq i64 %i.jz, 0
  br i1 %min.epilog.iters.check59, label %.loopexit.i.i.preheader, label %vec.epilog.ph60, !prof !579

vec.epilog.ph60:                                  ; preds = %vector.main.loop.iter.check44, %vec.epilog.iter.check57
  %vec.epilog.resume.val61 = phi i64 [ %n.vec47, %vec.epilog.iter.check57 ], [ 0, %vector.main.loop.iter.check44 ]
  %n.vec62 = and i64 %wide.trip.count.i.i, 2147483640 ; 4 uses
  %i.kg = getelementptr i8, ptr %i.jk, i64 %n.vec62 ; 2 uses
  br label %vec.epilog.vector.body63

vec.epilog.vector.body63:                         ; preds = %vec.epilog.vector.body63, %vec.epilog.ph60
  %index64 = phi i64 [ %vec.epilog.resume.val61, %vec.epilog.ph60 ], [ %index.next68, %vec.epilog.vector.body63 ] ; 4 uses
  %next.gep65 = getelementptr i8, ptr %i.jk, i64 %index64
  %wide.load66 = load <8 x i8>, ptr %next.gep65, align 1, !tbaa !176, !alias.scope !577 ; 2 uses
  %i.kh = and <8 x i8> %wide.load66, splat (i8 15)
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jr, i64 %index64
  store <8 x i8> %i.kh, ptr %i.ki, align 1, !tbaa !217, !alias.scope !578, !noalias !577
  %i.kj = lshr <8 x i8> %wide.load66, splat (i8 4)
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jt, i64 %index64
  store <8 x i8> %i.kj, ptr %i.kk, align 1, !tbaa !217, !alias.scope !578, !noalias !577
  %index.next68 = add nuw i64 %index64, 8         ; 2 uses
  %i.kl = icmp eq i64 %index.next68, %n.vec62
  br i1 %i.kl, label %vec.epilog.middle.block69, label %vec.epilog.vector.body63, !llvm.loop !524

vec.epilog.middle.block69:                        ; preds = %vec.epilog.vector.body63
  %cmp.n70 = icmp eq i64 %n.vec62, %wide.trip.count.i.i
  br i1 %cmp.n70, label %.preheader140.i.i, label %.loopexit.i.i.preheader

.loopexit.i.i.preheader:                          ; preds = %iter.check56, %vector.memcheck43, %vec.epilog.iter.check57, %vec.epilog.middle.block69
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check56 ], [ 0, %vector.memcheck43 ], [ %n.vec47, %vec.epilog.iter.check57 ], [ %n.vec62, %vec.epilog.middle.block69 ] ; 3 uses
  %.1144.i.i.ph = phi ptr [ %i.jk, %iter.check56 ], [ %i.jk, %vector.memcheck43 ], [ %i.ka, %vec.epilog.iter.check57 ], [ %i.kg, %vec.epilog.middle.block69 ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 7     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.prol.loopexit, label %.loopexit.i.i.prol

.loopexit.i.i.prol:                               ; preds = %.loopexit.i.i.preheader, %.loopexit.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.loopexit.i.i.prol ], [ %indvars.iv.i.i.ph, %.loopexit.i.i.preheader ] ; 3 uses
  %.1144.i.i.prol = phi ptr [ %i.ks, %.loopexit.i.i.prol ], [ %.1144.i.i.ph, %.loopexit.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.loopexit.i.i.prol ], [ 0, %.loopexit.i.i.preheader ]
  %i.km = load i8, ptr %.1144.i.i.prol, align 1, !tbaa !176
  %i.kn = and i8 %i.km, 15
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.i.prol
  store i8 %i.kn, ptr %i.ko, align 1, !tbaa !217
  %i.kp = load i8, ptr %.1144.i.i.prol, align 1, !tbaa !176
  %i.kq = lshr i8 %i.kp, 4
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv.i.i.prol
  store i8 %i.kq, ptr %i.kr, align 1, !tbaa !217
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.1144.i.i.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.loopexit.i.i.prol.loopexit, label %.loopexit.i.i.prol, !llvm.loop !525

.loopexit.i.i.prol.loopexit:                      ; preds = %.loopexit.i.i.prol, %.loopexit.i.i.preheader
  %.lcssa284.unr = phi ptr [ poison, %.loopexit.i.i.preheader ], [ %i.ks, %.loopexit.i.i.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.loopexit.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.loopexit.i.i.prol ]
  %.1144.i.i.unr = phi ptr [ %.1144.i.i.ph, %.loopexit.i.i.preheader ], [ %i.ks, %.loopexit.i.i.prol ]
  %i.kt = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.ku = icmp ugt i64 %i.kt, -8
  br i1 %i.ku, label %.preheader140.i.i, label %.loopexit.i.i

iter.check:                                       ; preds = %.preheader139.preheader.i.i
  %min.iters.check = icmp ult i32 %i.jl, 16
  br i1 %min.iters.check, label %.preheader139.preheader.i.split.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.kv = mul nuw nsw i64 %i.jp, 240
  %i.kw = add i64 %i.ji, %.087150.i.i26
  %i.kx = sub i64 %i.kv, %i.kw
  %op.rdx246.reass = add i64 %i.kx, %invariant.op
  %diff.check = icmp ult i64 %op.rdx246.reass, 255
  br i1 %diff.check, label %.preheader139.preheader.i.split.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check28 = icmp ult i32 %i.jl, 256
  br i1 %min.iters.check28, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ky = and i64 %wide.trip.count.i.i, 240
  %n.vec = and i64 %wide.trip.count.i.i, 2147483392 ; 5 uses
  %i.kz = getelementptr i8, ptr %i.jk, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.jk, i64 %index ; 4 uses
  %i.la = getelementptr i8, ptr %next.gep, i64 64
  %i.lb = getelementptr i8, ptr %next.gep, i64 128
  %i.lc = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <64 x i8>, ptr %next.gep, align 1, !tbaa !176
  %wide.load29 = load <64 x i8>, ptr %i.la, align 1, !tbaa !176
  %wide.load30 = load <64 x i8>, ptr %i.lb, align 1, !tbaa !176
  %wide.load31 = load <64 x i8>, ptr %i.lc, align 1, !tbaa !176
  %i.ld = and <64 x i8> %wide.load, splat (i8 15)
  %i.le = and <64 x i8> %wide.load29, splat (i8 15)
  %i.lf = and <64 x i8> %wide.load30, splat (i8 15)
  %i.lg = and <64 x i8> %wide.load31, splat (i8 15)
  %i.lh = getelementptr inbounds nuw i8, ptr %i.jr, i64 %index ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 64
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 128
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 192
  store <64 x i8> %i.ld, ptr %i.lh, align 1, !tbaa !217
  store <64 x i8> %i.le, ptr %i.li, align 1, !tbaa !217
  store <64 x i8> %i.lf, ptr %i.lj, align 1, !tbaa !217
  store <64 x i8> %i.lg, ptr %i.lk, align 1, !tbaa !217
  %index.next = add nuw i64 %index, 256           ; 2 uses
  %i.ll = icmp eq i64 %index.next, %n.vec
  br i1 %i.ll, label %middle.block, label %vector.body, !llvm.loop !526

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %.preheader140.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ky, 0
  br i1 %min.epilog.iters.check, label %.preheader139.preheader.i.split.us.i.preheader, label %vec.epilog.ph, !prof !238

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec32 = and i64 %wide.trip.count.i.i, 2147483632 ; 4 uses
  %i.lm = getelementptr i8, ptr %i.jk, i64 %n.vec32 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 3 uses
  %next.gep34 = getelementptr i8, ptr %i.jk, i64 %index33
  %wide.load35 = load <16 x i8>, ptr %next.gep34, align 1, !tbaa !176
  %i.ln = and <16 x i8> %wide.load35, splat (i8 15)
  %i.lo = getelementptr inbounds nuw i8, ptr %i.jr, i64 %index33
  store <16 x i8> %i.ln, ptr %i.lo, align 1, !tbaa !217
  %index.next36 = add nuw i64 %index33, 16        ; 2 uses
  %i.lp = icmp eq i64 %index.next36, %n.vec32
  br i1 %i.lp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !527

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n37 = icmp eq i64 %n.vec32, %wide.trip.count.i.i
  br i1 %cmp.n37, label %.preheader140.i.i, label %.preheader139.preheader.i.split.us.i.preheader

.preheader139.preheader.i.split.us.i.preheader:   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.us.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec32, %vec.epilog.middle.block ] ; 3 uses
  %.1144.i.us.i.ph = phi ptr [ %i.jk, %iter.check ], [ %i.jk, %vector.memcheck ], [ %i.kz, %vec.epilog.iter.check ], [ %i.lm, %vec.epilog.middle.block ] ; 2 uses
  %xtraiter286 = and i64 %wide.trip.count.i.i, 7  ; 2 uses
  %lcmp.mod287.not = icmp eq i64 %xtraiter286, 0
  br i1 %lcmp.mod287.not, label %.preheader139.preheader.i.split.us.i.prol.loopexit, label %.preheader139.preheader.i.split.us.i.prol

.preheader139.preheader.i.split.us.i.prol:        ; preds = %.preheader139.preheader.i.split.us.i.preheader, %.preheader139.preheader.i.split.us.i.prol
  %indvars.iv.i.us.i.prol = phi i64 [ %indvars.iv.next.i.us.i.prol, %.preheader139.preheader.i.split.us.i.prol ], [ %indvars.iv.i.us.i.ph, %.preheader139.preheader.i.split.us.i.preheader ] ; 2 uses
  %.1144.i.us.i.prol = phi ptr [ %i.lt, %.preheader139.preheader.i.split.us.i.prol ], [ %.1144.i.us.i.ph, %.preheader139.preheader.i.split.us.i.preheader ] ; 2 uses
  %prol.iter288 = phi i64 [ %prol.iter288.next, %.preheader139.preheader.i.split.us.i.prol ], [ 0, %.preheader139.preheader.i.split.us.i.preheader ]
  %i.lq = load i8, ptr %.1144.i.us.i.prol, align 1, !tbaa !176
  %i.lr = and i8 %i.lq, 15
  %i.ls = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i.prol
  store i8 %i.lr, ptr %i.ls, align 1, !tbaa !217
  %indvars.iv.next.i.us.i.prol = add nuw nsw i64 %indvars.iv.i.us.i.prol, 1 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.1144.i.us.i.prol, i64 1 ; 3 uses
  %prol.iter288.next = add i64 %prol.iter288, 1   ; 2 uses
  %prol.iter288.cmp.not = icmp eq i64 %prol.iter288.next, %xtraiter286
  br i1 %prol.iter288.cmp.not, label %.preheader139.preheader.i.split.us.i.prol.loopexit, label %.preheader139.preheader.i.split.us.i.prol, !llvm.loop !528

.preheader139.preheader.i.split.us.i.prol.loopexit: ; preds = %.preheader139.preheader.i.split.us.i.prol, %.preheader139.preheader.i.split.us.i.preheader
  %.lcssa285.unr = phi ptr [ poison, %.preheader139.preheader.i.split.us.i.preheader ], [ %i.lt, %.preheader139.preheader.i.split.us.i.prol ]
  %indvars.iv.i.us.i.unr = phi i64 [ %indvars.iv.i.us.i.ph, %.preheader139.preheader.i.split.us.i.preheader ], [ %indvars.iv.next.i.us.i.prol, %.preheader139.preheader.i.split.us.i.prol ]
  %.1144.i.us.i.unr = phi ptr [ %.1144.i.us.i.ph, %.preheader139.preheader.i.split.us.i.preheader ], [ %i.lt, %.preheader139.preheader.i.split.us.i.prol ]
  %i.lu = sub nsw i64 %indvars.iv.i.us.i.ph, %wide.trip.count.i.i
  %i.lv = icmp ugt i64 %i.lu, -8
end_hunk_0
