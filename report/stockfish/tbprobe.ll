Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/tbprobe?download=true
inline.NumInlined: 1887
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE0ENS_10Tablebases8WDLScoreEEET0_RKNS_8PositionEPNS3_10ProbeStateES4_:bb.a
  %i.ex = load i64, ptr %i.er, align 8, !tbaa !176
  store i64 %i.ex, ptr %i.ep, align 8, !tbaa !176, !alias.scope !560
  %.phi.trans.insert.i44.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %.pre.i45.i = load i64, ptr %.phi.trans.insert.i44.i, align 8, !tbaa !136
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i, %bb.z
  %i.ey = phi i64 [ %i.eu, %bb.z ], [ %.pre.i45.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i64 %i.ey, ptr %i.fa, align 8, !tbaa !136, !alias.scope !560
  store ptr %i.er, ptr %i.eo, align 8, !tbaa !181
  store i64 0, ptr %i.ez, align 8, !tbaa !136
  store i8 0, ptr %i.er, align 8, !tbaa !176
  %i.fb = load ptr, ptr %2, align 8, !tbaa !181   ; 6 uses
  %i.fc = icmp eq ptr %i.fb, %i.ag
  %i.fd = load ptr, ptr %7, align 8, !tbaa !181   ; 5 uses
  %i.fe = icmp eq ptr %i.fd, %i.ep                ; 2 uses
  br i1 %i.fc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i
  br i1 %i.fe, label %bb.aa, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i
  br i1 %i.fe, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ff = load i64, ptr %i.fa, align 8, !tbaa !136 ; 3 uses
  %i.fg = icmp ult i64 %i.ff, 16
  call void @llvm.assume(i1 %i.fg)
  switch i64 %i.ff, label %bb.ac [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.fh = load i8, ptr %i.fd, align 1, !tbaa !176
  store i8 %i.fh, ptr %i.fb, align 1, !tbaa !176
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fb, ptr align 1 %i.fd, i64 %i.ff, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.fi = load i64, ptr %i.fa, align 8, !tbaa !136 ; 2 uses
  store i64 %i.fi, ptr %i.ah, align 8, !tbaa !136
  %i.fj = load ptr, ptr %2, align 8, !tbaa !181
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fi
  store i8 0, ptr %i.fk, align 1, !tbaa !176
  %.pre.i46.i = load ptr, ptr %7, align 8, !tbaa !181
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.fd, ptr %2, align 8, !tbaa !181
  %i.fl = load <2 x i64>, ptr %i.fa, align 8, !tbaa !176
  store <2 x i64> %i.fl, ptr %i.ah, align 8, !tbaa !176
  br label %bb.ae

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.fm = load i64, ptr %i.ag, align 8, !tbaa !176
  store ptr %i.fd, ptr %2, align 8, !tbaa !181
  %i.fn = load <2 x i64>, ptr %i.fa, align 8, !tbaa !176
  store <2 x i64> %i.fn, ptr %i.ah, align 8, !tbaa !176
  %.not.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.fb, ptr %7, align 8, !tbaa !181
  store i64 %i.fm, ptr %i.ep, align 8, !tbaa !176
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.ep, ptr %7, align 8, !tbaa !181
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.ae, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.fo = phi ptr [ %i.fb, %bb.ad ], [ %i.ep, %bb.ae ], [ %.pre.i46.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.fa, align 8, !tbaa !136
  store i8 0, ptr %i.fo, align 1, !tbaa !176
  %i.fp = load ptr, ptr %7, align 8, !tbaa !181   ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.ep
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.fr = load i64, ptr %i.ep, align 8, !tbaa !176
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i
  %i.ft = load ptr, ptr %8, align 8, !tbaa !181   ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !176
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i
  br i1 %.not25.i, label %.critedge30.i, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i
  %i.fy = load ptr, ptr %10, align 8, !tbaa !181  ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ga = icmp eq ptr %i.fy, %i.fz
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i: ; preds = %.critedge.i
  %i.gb = load i64, ptr %i.fz, align 8, !tbaa !176
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gc) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i: ; preds = %.critedge.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.critedge29.i

.critedge30.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i
  %i.gd = load ptr, ptr %9, align 8, !tbaa !181   ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.gf = icmp eq ptr %i.gd, %i.ge
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i: ; preds = %.critedge30.i
  %i.gg = load i64, ptr %i.ge, align 8, !tbaa !176
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gh) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i: ; preds = %.critedge30.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %.critedge29.i

.critedge29.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_16TBFileC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %11, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.gi = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 8 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 24
  %i.gk = call fastcc noundef ptr @_ZN9Stockfish12_GLOBAL__N_16TBFile3mapEPPvPmNS0_6TBTypeE(ptr noundef nonnull align 8 dereferenceable(288) %11, ptr noundef %i.gi, ptr noundef %i.gj, i32 noundef 0) ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN9Stockfish12_GLOBAL__N_16TBFileE, i64 24), ptr %11, align 8, !tbaa !153
  %i.gl = getelementptr inbounds nuw i8, ptr %11, i64 288 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN9Stockfish12_GLOBAL__N_16TBFileE, i64 64), ptr %i.gl, align 8, !tbaa !153
  %i.gm = getelementptr inbounds nuw i8, ptr %11, i64 256
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !181 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %11, i64 272 ; 2 uses
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.critedge29.i
  %i.gq = load i64, ptr %i.go, align 8, !tbaa !176
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gr) #30, !inline_history !6
  br label %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i

_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i:    ; preds = %.critedge29.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_St14basic_ifstreamIcSt11char_traitsIcEE, i64 24), ptr %11, align 8, !tbaa !153
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_St14basic_ifstreamIcSt11char_traitsIcEE, i64 64), ptr %i.gl, align 8, !tbaa !153
  %i.gs = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt13basic_filebufIcSt11char_traitsIcEE, i64 16), ptr %i.gs, align 8, !tbaa !153
  %i.gt = call noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.gs) #26, !inline_history !6 ; 0 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %11, i64 120
  call void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.gu) #26, !inline_history !6
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.gs, align 8, !tbaa !153
  %i.gv = getelementptr inbounds nuw i8, ptr %11, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gv) #26, !inline_history !6
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_Si, i64 24), ptr %11, align 8, !tbaa !153
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_Si, i64 64), ptr %i.gl, align 8, !tbaa !153
  %i.gw = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.gw, align 8, !tbaa !207
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.gl) #26, !inline_history !208
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %.not26.i = icmp eq ptr %i.gk, null
  br i1 %.not26.i, label %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_Ph.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  %i.gy = load i64, ptr %i.at, align 8, !tbaa !201
  %i.gz = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 40
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !205
  %.not.i59.i = icmp eq i64 %i.gy, %i.ha          ; 24 uses
  %i.hb = select i1 %.not.i59.i, i32 1, i32 2     ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 52 ; 6 uses
  %i.hd = load i8, ptr %i.hc, align 4, !tbaa !195, !range !196, !noundef !197
  %i.he = trunc nuw i8 %i.hd to i1                ; 7 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 55 ; 3 uses
  %i.hg = load i8, ptr %i.hf, align 1
  %i.hh = icmp ne i8 %i.hg, 0
  %i.hi = select i1 %i.he, i1 %i.hh, i1 false
  %i.hj = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 56 ; 7 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 48 ; 5 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 53 ; 2 uses
  %i.hm = select i1 %i.he, i8 4, i8 1             ; 2 uses
  %wide.trip.count200.i.i = zext nneg i8 %i.hm to i64
  %wide.trip.count.i.i = zext nneg i32 %i.hb to i64 ; 2 uses
  %scevgep26 = getelementptr i8, ptr %.0.val.i, i64 1145
  %scevgep28 = getelementptr i8, ptr %.0.val.i, i64 184
  %trip.count.minus.1 = add nsw i32 %i.hb, -1
  %broadcast.splatinsert30 = insertelement <2 x i32> poison, i32 %trip.count.minus.1, i64 0
  %broadcast.splat31 = shufflevector <2 x i32> %broadcast.splatinsert30, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.hn = icmp uge <2 x i32> %broadcast.splat31, <i32 0, i32 1> ; 2 uses
  %i.ho = extractelement <2 x i1> %i.hn, i64 0
  %i.hp = extractelement <2 x i1> %i.hn, i64 1
  %trip.count.minus.1.1 = add nsw i32 %i.hb, -1
  %broadcast.splatinsert30.1 = insertelement <2 x i32> poison, i32 %trip.count.minus.1.1, i64 0
  %broadcast.splat31.1 = shufflevector <2 x i32> %broadcast.splatinsert30.1, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.hq = icmp uge <2 x i32> %broadcast.splat31.1, <i32 0, i32 1> ; 2 uses
  %i.hr = extractelement <2 x i1> %i.hq, i64 0
  %i.hs = extractelement <2 x i1> %i.hq, i64 1
  %trip.count.minus.1.epil = add nsw i32 %i.hb, -1
  %broadcast.splatinsert30.epil = insertelement <2 x i32> poison, i32 %trip.count.minus.1.epil, i64 0
  %broadcast.splat31.epil = shufflevector <2 x i32> %broadcast.splatinsert30.epil, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ht = icmp uge <2 x i32> %broadcast.splat31.epil, <i32 0, i32 1> ; 2 uses
  %i.hu = extractelement <2 x i1> %i.ht, i64 0
  %i.hv = extractelement <2 x i1> %i.ht, i64 1
  br label %.preheader141.i.i

.preheader141.i.i:                                ; preds = %bb.an, %bb.af
  %indvars.iv197.i.i = phi i64 [ 0, %bb.af ], [ %indvars.iv.next198.i.i, %bb.an ] ; 5 uses
  %.087150.i.i = phi ptr [ %i.gx, %bb.af ], [ %.1.lcssa.i.i, %bb.an ] ; 5 uses
  br label %bb.ai

bb.ag:                                            ; preds = %bb.an
  %i.hw = ptrtoint ptr %.1.lcssa.i.i to i64
  %i.hx = and i64 %i.hw, 1
  %i.hy = getelementptr inbounds nuw i8, ptr %.1.lcssa.i.i, i64 %i.hx
  br label %.preheader137.i.i

bb.ah:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i
  %i.hz = load i8, ptr %.087150.i.i, align 1, !tbaa !176
  %i.ia = and i8 %i.hz, 15
  %i.ib = zext nneg i8 %i.ia to i32               ; 2 uses
  br i1 %i.hi, label %bb.al, label %bb.am

bb.ai:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i, %.preheader141.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader141.i.i ], [ %indvars.iv.next.i.i, %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i ] ; 2 uses
  %i.ic = getelementptr inbounds nuw [960 x i8], ptr %i.hj, i64 %indvars.iv.i.i
  %i.id = load i8, ptr %i.hc, align 4, !tbaa !195, !range !196, !noundef !197
  %i.ie = trunc nuw i8 %i.id to i1
  %i.if = select i1 %i.ie, i64 %indvars.iv197.i.i, i64 0
  %i.ig = getelementptr inbounds nuw [240 x i8], ptr %i.ic, i64 %i.if ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ig, i8 0, i64 80, i1 false)
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 80 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !233 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 96
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !234
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ii, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ih, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = ptrtoint ptr %i.ii to i64
  %i.in = sub i64 %i.il, %i.im
  call void @_ZdlPvm(ptr noundef nonnull %i.ii, i64 noundef %i.in) #30
  br label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i

_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i:           ; preds = %bb.aj, %bb.ai
  %i.io = getelementptr inbounds nuw i8, ptr %i.ig, i64 104 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !236 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ig, i64 120
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !237
  %.not.i.i.i.i.i5.i.i.i = icmp eq ptr %i.ip, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.io, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i5.i.i.i, label %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i
  %i.is = ptrtoint ptr %i.ir to i64
  %i.it = ptrtoint ptr %i.ip to i64
  %i.iu = sub i64 %i.is, %i.it
  call void @_ZdlPvm(ptr noundef nonnull %i.ip, i64 noundef %i.iu) #30
  br label %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i

_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i: ; preds = %bb.ak, %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ig, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.iv, i8 0, i64 112, i1 false)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %bb.ah, label %bb.ai, !llvm.loop !519

bb.al:                                            ; preds = %bb.ah
  %i.iw = getelementptr inbounds nuw i8, ptr %.087150.i.i, i64 1
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !176 ; 2 uses
  %i.iy = and i8 %i.ix, 15
  %i.iz = zext nneg i8 %i.iy to i32
  %i.ja = lshr i8 %i.ix, 4
  %i.jb = zext nneg i8 %i.ja to i32
  br label %bb.am

bb.am:                                            ; preds = %bb.ah, %bb.al
  %.sroa.5.0 = phi i32 [ %i.iz, %bb.al ], [ 15, %bb.ah ] ; 4 uses
  %i.jc = phi i64 [ 2, %bb.al ], [ 1, %bb.ah ]    ; 2 uses
  %i.jd = phi i32 [ %i.jb, %bb.al ], [ 15, %bb.ah ] ; 4 uses
  %.sroa.11.0.in.in = load i8, ptr %.087150.i.i, align 1, !tbaa !176
  %.sroa.11.0.in = lshr i8 %.sroa.11.0.in.in, 4
  %.sroa.11.0 = zext nneg i8 %.sroa.11.0.in to i32 ; 2 uses
  %i.je = getelementptr i8, ptr %.087150.i.i, i64 %i.jc ; 6 uses
  %i.jf = load i32, ptr %i.hk, align 8, !tbaa !193 ; 4 uses
  %i.jg = icmp sgt i32 %i.jf, 0
  br i1 %i.jg, label %.preheader139.preheader.i.i, label %..preheader140_crit_edge.i.i

..preheader140_crit_edge.i.i:                     ; preds = %bb.am
  %.pre.i60.i = load i8, ptr %i.hc, align 4, !tbaa !195, !range !196
  br label %.preheader140.i.i

.preheader139.preheader.i.i:                      ; preds = %bb.am
  %wide.trip.count190.i.i = zext nneg i32 %i.jf to i64 ; 2 uses
  %i.jh = load i8, ptr %i.hc, align 4, !tbaa !195, !range !196, !noundef !197 ; 3 uses
  %i.ji = trunc nuw i8 %i.jh to i1
  %i.jj = select i1 %i.ji, i64 %indvars.iv197.i.i, i64 0 ; 2 uses
  %invariant.gep.i = getelementptr inbounds nuw [240 x i8], ptr %.0.val.i, i64 %i.jj ; 3 uses
  %i.jk = getelementptr i8, ptr %.087150.i.i, i64 1
  %scevgep = getelementptr i8, ptr %i.jk, i64 %i.jc ; 3 uses
  %i.jl = mul nuw nsw i64 %i.jj, 240              ; 2 uses
  %scevgep27 = getelementptr i8, ptr %scevgep26, i64 %i.jl
  %i.jm = freeze ptr %scevgep27                   ; 3 uses
  %scevgep29 = getelementptr i8, ptr %scevgep28, i64 %i.jl
  %i.jn = freeze ptr %scevgep29                   ; 3 uses
  %xtraiter = and i64 %wide.trip.count190.i.i, 1
  %i.jo = icmp eq i32 %i.jf, 1
  br i1 %i.jo, label %.preheader139.i.i.epil.preheader, label %.preheader139.preheader.i.i.new

.preheader139.preheader.i.i.new:                  ; preds = %.preheader139.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count190.i.i, 2147483646
  %bound0 = icmp ult ptr %i.jn, %scevgep
  %bound1 = icmp ult ptr %i.je, %i.jm
  %found.conflict = and i1 %bound0, %bound1
  %bound0.1 = icmp ult ptr %i.jn, %scevgep
  %bound1.1 = icmp ult ptr %i.je, %i.jm
  %found.conflict.1 = and i1 %bound0.1, %bound1.1
  br label %.preheader139.i.i

.preheader140.i.i.loopexit.unr-lcssa:             ; preds = %middle.block.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader140.i.i, label %.preheader139.i.i.epil.preheader

.preheader139.i.i.epil.preheader:                 ; preds = %.preheader140.i.i.loopexit.unr-lcssa, %.preheader139.preheader.i.i
  %indvars.iv187.i.i.epil.init = phi i64 [ 0, %.preheader139.preheader.i.i ], [ %indvars.iv.next188.i.i.1, %.preheader140.i.i.loopexit.unr-lcssa ]
  %.1144.i.i.epil.init = phi ptr [ %i.je, %.preheader139.preheader.i.i ], [ %i.kx, %.preheader140.i.i.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod233 = trunc i32 %i.jf to i1
  call void @llvm.assume(i1 %lcmp.mod233)
  %invariant.gep160.i.epil = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv187.i.i.epil.init ; 4 uses
  %bound0.epil = icmp ult ptr %i.jn, %scevgep
  %bound1.epil = icmp ult ptr %i.je, %i.jm
  %found.conflict.epil = and i1 %bound0.epil, %bound1.epil
  br i1 %found.conflict.epil, label %scalar.ph.epil, label %vector.body.epil

vector.body.epil:                                 ; preds = %.preheader139.i.i.epil.preheader
  %i.jp = load i8, ptr %.1144.i.i.epil.init, align 1, !tbaa !176, !alias.scope !561 ; 2 uses
  br i1 %i.hu, label %pred.store.if.epil, label %pred.store.continue.epil

pred.store.if.epil:                               ; preds = %vector.body.epil
  %i.jq = getelementptr inbounds nuw i8, ptr %invariant.gep160.i.epil, i64 184
  %i.jr = and i8 %i.jp, 15
  store i8 %i.jr, ptr %i.jq, align 1, !tbaa !217, !alias.scope !562, !noalias !561
  br label %pred.store.continue.epil

pred.store.continue.epil:                         ; preds = %pred.store.if.epil, %vector.body.epil
  br i1 %i.hv, label %pred.store.if32.epil, label %middle.block.epil

pred.store.if32.epil:                             ; preds = %pred.store.continue.epil
  %i.js = getelementptr inbounds nuw i8, ptr %invariant.gep160.i.epil, i64 1144
  %i.jt = lshr i8 %i.jp, 4
  store i8 %i.jt, ptr %i.js, align 1, !tbaa !217, !alias.scope !562, !noalias !561
  br label %middle.block.epil

scalar.ph.epil:                                   ; preds = %.preheader139.i.i.epil.preheader
  %i.ju = load i8, ptr %.1144.i.i.epil.init, align 1, !tbaa !176
  %i.jv = and i8 %i.ju, 15
  %gep.i.epil = getelementptr inbounds nuw i8, ptr %invariant.gep160.i.epil, i64 184
  store i8 %i.jv, ptr %gep.i.epil, align 1, !tbaa !217
  br i1 %.not.i59.i, label %middle.block.epil, label %scalar.ph.1.epil

scalar.ph.1.epil:                                 ; preds = %scalar.ph.epil
  %i.jw = load i8, ptr %.1144.i.i.epil.init, align 1, !tbaa !176
  %i.jx = lshr i8 %i.jw, 4
  %gep.i.1.epil = getelementptr inbounds nuw i8, ptr %invariant.gep160.i.epil, i64 1144
  store i8 %i.jx, ptr %gep.i.1.epil, align 1, !tbaa !217
  br label %middle.block.epil

middle.block.epil:                                ; preds = %scalar.ph.epil, %scalar.ph.1.epil, %pred.store.if32.epil, %pred.store.continue.epil
  %i.jy = getelementptr inbounds nuw i8, ptr %.1144.i.i.epil.init, i64 1
  br label %.preheader140.i.i

.preheader140.i.i:                                ; preds = %middle.block.epil, %.preheader140.i.i.loopexit.unr-lcssa, %..preheader140_crit_edge.i.i
  %i.jz = phi i8 [ %.pre.i60.i, %..preheader140_crit_edge.i.i ], [ %i.jh, %.preheader140.i.i.loopexit.unr-lcssa ], [ %i.jh, %middle.block.epil ]
  %.1.lcssa.i.i = phi ptr [ %i.je, %..preheader140_crit_edge.i.i ], [ %i.kx, %.preheader140.i.i.loopexit.unr-lcssa ], [ %i.jy, %middle.block.epil ] ; 3 uses
  %i.ka = trunc nuw i8 %i.jz to i1                ; 5 uses
  %i.kb = select i1 %i.ka, i64 %indvars.iv197.i.i, i64 0
  %invariant.gep.i.i = getelementptr inbounds nuw [240 x i8], ptr %i.hj, i64 %i.kb ; 20 uses
  %invariant.gep147.i.i = getelementptr [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_113LeadPawnsSizeE, i64 %indvars.iv197.i.i ; 2 uses
  %i.kc = load i8, ptr %i.hl, align 1, !range !196
  %i.kd = trunc nuw i8 %i.kc to i1                ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 200 ; 8 uses
  store i32 1, ptr %i.ke, align 4, !tbaa !132
  %i.kf = load i32, ptr %i.hk, align 8, !tbaa !193
  %i.kg = icmp sgt i32 %i.kf, 1
  br i1 %i.kg, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.preheader139.i.i:                                ; preds = %middle.block.1, %.preheader139.preheader.i.i.new
  %indvars.iv187.i.i = phi i64 [ 0, %.preheader139.preheader.i.i.new ], [ %indvars.iv.next188.i.i.1, %middle.block.1 ] ; 3 uses
  %.1144.i.i = phi ptr [ %i.je, %.preheader139.preheader.i.i.new ], [ %i.kx, %middle.block.1 ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader139.preheader.i.i.new ], [ %niter.next.1, %middle.block.1 ]
  %invariant.gep160.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv187.i.i ; 4 uses
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.preheader139.i.i
  %i.kh = load i8, ptr %.1144.i.i, align 1, !tbaa !176, !alias.scope !561 ; 2 uses
  br i1 %i.ho, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.ki = getelementptr inbounds nuw i8, ptr %invariant.gep160.i, i64 184
  %i.kj = and i8 %i.kh, 15
  store i8 %i.kj, ptr %i.ki, align 1, !tbaa !217, !alias.scope !562, !noalias !561
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  br i1 %i.hp, label %pred.store.if32, label %middle.block

pred.store.if32:                                  ; preds = %pred.store.continue
  %i.kk = getelementptr inbounds nuw i8, ptr %invariant.gep160.i, i64 1144
  %i.kl = lshr i8 %i.kh, 4
  store i8 %i.kl, ptr %i.kk, align 1, !tbaa !217, !alias.scope !562, !noalias !561
  br label %middle.block

middle.block:                                     ; preds = %scalar.ph, %scalar.ph.1, %pred.store.if32, %pred.store.continue
  %i.km = getelementptr inbounds nuw i8, ptr %.1144.i.i, i64 1 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv187.i.i ; 4 uses
  br i1 %found.conflict.1, label %scalar.ph.1235, label %vector.body.1

vector.body.1:                                    ; preds = %middle.block
  %i.ko = load i8, ptr %i.km, align 1, !tbaa !176, !alias.scope !561 ; 2 uses
  br i1 %i.hr, label %pred.store.if.1, label %pred.store.continue.1

pred.store.if.1:                                  ; preds = %vector.body.1
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 185
  %i.kq = and i8 %i.ko, 15
  store i8 %i.kq, ptr %i.kp, align 1, !tbaa !217, !alias.scope !562, !noalias !561
  br label %pred.store.continue.1

pred.store.continue.1:                            ; preds = %pred.store.if.1, %vector.body.1
  br i1 %i.hs, label %pred.store.if32.1, label %middle.block.1

pred.store.if32.1:                                ; preds = %pred.store.continue.1
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kn, i64 1145
  %i.ks = lshr i8 %i.ko, 4
  store i8 %i.ks, ptr %i.kr, align 1, !tbaa !217, !alias.scope !562, !noalias !561
  br label %middle.block.1

scalar.ph.1235:                                   ; preds = %middle.block
  %i.kt = load i8, ptr %i.km, align 1, !tbaa !176
  %i.ku = and i8 %i.kt, 15
  %gep.i.1234 = getelementptr inbounds nuw i8, ptr %i.kn, i64 185
  store i8 %i.ku, ptr %gep.i.1234, align 1, !tbaa !217
  br i1 %.not.i59.i, label %middle.block.1, label %scalar.ph.1.1

scalar.ph.1.1:                                    ; preds = %scalar.ph.1235
  %i.kv = load i8, ptr %i.km, align 1, !tbaa !176
  %i.kw = lshr i8 %i.kv, 4
  %gep.i.1.1 = getelementptr inbounds nuw i8, ptr %i.kn, i64 1145
  store i8 %i.kw, ptr %gep.i.1.1, align 1, !tbaa !217
  br label %middle.block.1

middle.block.1:                                   ; preds = %scalar.ph.1235, %scalar.ph.1.1, %pred.store.if32.1, %pred.store.continue.1
  %indvars.iv.next188.i.i.1 = add nuw nsw i64 %indvars.iv187.i.i, 2 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.1144.i.i, i64 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader140.i.i.loopexit.unr-lcssa, label %.preheader139.i.i, !llvm.loop !523

scalar.ph:                                        ; preds = %.preheader139.i.i
  %i.ky = load i8, ptr %.1144.i.i, align 1, !tbaa !176
  %i.kz = and i8 %i.ky, 15
  %gep.i = getelementptr inbounds nuw i8, ptr %invariant.gep160.i, i64 184
  store i8 %i.kz, ptr %gep.i, align 1, !tbaa !217
  br i1 %.not.i59.i, label %middle.block, label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph
  %i.la = load i8, ptr %.1144.i.i, align 1, !tbaa !176
  %i.lb = lshr i8 %i.la, 4
  %gep.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep160.i, i64 1144
  store i8 %i.lb, ptr %gep.i.1, align 1, !tbaa !217
  br label %middle.block

bb.an:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.1, %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i
  %indvars.iv.next198.i.i = add nuw nsw i64 %indvars.iv197.i.i, 1 ; 2 uses
  %exitcond201.not.i.i = icmp eq i64 %indvars.iv.next198.i.i, %wide.trip.count200.i.i
  br i1 %exitcond201.not.i.i, label %bb.ag, label %.preheader141.i.i, !llvm.loop !524

.lr.ph.i.i.i:                                     ; preds = %.preheader140.i.i
  %i.lc = select i1 %i.kd, i32 3, i32 2
  %i.ld = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 128
  %spec.select = select i1 %i.ka, i32 0, i32 %i.lc
  br label %select.unfold.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ar, %.preheader140.i.i
  %.066.lcssa.i.i.i = phi i32 [ 0, %.preheader140.i.i ], [ %.167.i.i.i, %bb.ar ] ; 3 uses
  %i.le = add nsw i32 %.066.lcssa.i.i.i, 1
  %i.lf = sext i32 %i.le to i64                   ; 2 uses
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.ke, i64 %i.lf
  store i32 0, ptr %i.lg, align 4, !tbaa !132
  br i1 %i.ka, label %bb.as, label %.thread68.split.preheader.i.i.i

select.unfold.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.ar
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.ar ], [ 1, %.lr.ph.i.i.i ] ; 2 uses
  %.06573.i.i.i = phi i32 [ %i.lh, %bb.ar ], [ %spec.select, %.lr.ph.i.i.i ] ; 2 uses
  %.06672.i.i.i = phi i32 [ %.167.i.i.i, %bb.ar ], [ 0, %.lr.ph.i.i.i ] ; 3 uses
  %i.lh = add nsw i32 %.06573.i.i.i, -1
  %i.li = icmp sgt i32 %.06573.i.i.i, 1
  br i1 %i.li, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %select.unfold.i.i
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ld, i64 %indvars.iv.i.i.i ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !217
  %i.ll = getelementptr i8, ptr %i.lj, i64 -1
end_hunk_0
