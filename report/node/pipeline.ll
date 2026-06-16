inline.NumInlined: 31355
inline.NumDeleted: 12783
begin_hunk_0_@_ZN2v88internal8compiler9PrintCodeEPNS0_7IsolateENS0_12DirectHandleINS0_4CodeEEEPNS0_24OptimizedCompilationInfoE:bb.a
  %i.em = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1904), align 16, !range !6, !noundef !8
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.aa, label %_ZN2v88internal8compiler12_GLOBAL__N_124PrintInlinedFunctionInfoEPNS0_24OptimizedCompilationInfoEPNS0_7IsolateEiiRKNS3_21InlinedFunctionHolderE.exit.i

bb.aa:                                            ; preds = %_ZNSt14_Optional_baseIN2v88internal12StdoutStreamELb0ELb0EED2Ev.exit.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 152 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 8
  %i.eq = add nsw i32 %i.ep, -1                   ; 2 uses
  store i32 %i.eq, ptr %i.eo, align 8
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.ab, label %_ZN2v88internal8compiler12_GLOBAL__N_124PrintInlinedFunctionInfoEPNS0_24OptimizedCompilationInfoEPNS0_7IsolateEiiRKNS3_21InlinedFunctionHolderE.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 144 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = call noundef i32 @fclose(ptr noundef %i.et) ; 0 uses
  store ptr null, ptr %i.es, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_124PrintInlinedFunctionInfoEPNS0_24OptimizedCompilationInfoEPNS0_7IsolateEiiRKNS3_21InlinedFunctionHolderE.exit.i

_ZN2v88internal8compiler12_GLOBAL__N_124PrintInlinedFunctionInfoEPNS0_24OptimizedCompilationInfoEPNS0_7IsolateEiiRKNS3_21InlinedFunctionHolderE.exit.i: ; preds = %bb.ab, %bb.aa, %_ZNSt14_Optional_baseIN2v88internal12StdoutStreamELb0ELb0EED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.ev = add i32 %.026.i, 1                      ; 2 uses
  %i.ew = zext i32 %i.ev to i64                   ; 2 uses
  %i.ex = load ptr, ptr %i.j, align 8
  %i.ey = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = ashr exact i64 %i.fb, 5
  %i.fd = icmp ugt i64 %i.fc, %i.ew
  br i1 %i.fd, label %bb.h, label %._crit_edge.loopexit.i, !llvm.loop !21

_ZN2v88internal8compiler12_GLOBAL__N_124PrintParticipatingSourceEPNS0_24OptimizedCompilationInfoEPNS0_7IsolateE.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_124PrintParticipatingSourceEPNS0_24OptimizedCompilationInfoEPNS0_7IsolateE.exit, %bb.b, %bb.a
  %i.fe = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1927), align 1, !range !6, !noundef !8
  %i.ff = trunc nuw i8 %i.fe to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  br i1 %i.ff, label %.critedge39, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fh = load i8, ptr %i.fg, align 8
  %i.fi = add i8 %i.fh, -11
  %i.fj = icmp ult i8 %i.fi, 2
  %i.fk = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1928), align 8, !range !6
  %i.fl = trunc nuw i8 %i.fk to i1
  %or.cond = select i1 %i.fj, i1 %i.fl, i1 false
  br i1 %or.cond, label %bb.ae, label %.critedge41

bb.ae:                                            ; preds = %bb.ad
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.0.0.copyload.i50 = load ptr, ptr %i.fm, align 8
  %i.fn = load i64, ptr %.sroa.0.0.copyload.i50, align 8
  store i64 %i.fn, ptr %7, align 8
  %i.fo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1936), align 16
  %i.fp = call noundef zeroext i1 @_ZN2v88internal18SharedFunctionInfo12PassesFilterEPKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %i.fo) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br i1 %i.fp, label %bb.af, label %bb.bk

.critedge39:                                      ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.af

bb.af:                                            ; preds = %.critedge39, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @_ZNK2v88internal24OptimizedCompilationInfo12GetDebugNameEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(192) %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.fq = call noundef ptr @_ZN2v88internal7Isolate13GetCodeTracerEv(ptr noundef nonnull align 8 dereferenceable(64320) %0) #29 ; 6 uses
  store ptr %i.fq, ptr %9, align 8
  %i.fr = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1904), align 16, !range !6, !noundef !8
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %bb.ag, label %_ZN2v88internal10CodeTracer5ScopeC2EPS1_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 144 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.fw = load ptr, ptr %i.fq, align 8
  %i.fx = call noundef ptr @_ZN2v84base2OS5FOpenEPKcS3_(ptr noundef %i.fw, ptr noundef nonnull @.str.91) #29 ; 2 uses
  store ptr %i.fx, ptr %i.ft, align 8
  %.not.i.i.i52 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i52, label %bb.ai, label %._crit_edge142, !prof !5

._crit_edge142:                                   ; preds = %bb.ah
  %.pre.i51.pre = load ptr, ptr %9, align 8
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.92) #32
  unreachable

bb.aj:                                            ; preds = %._crit_edge142, %bb.ag
  %.pre.i51 = phi ptr [ %.pre.i51.pre, %._crit_edge142 ], [ %i.fq, %bb.ag ]
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fq, i64 152 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 8
  %i.ga = add nsw i32 %i.fz, 1
  store i32 %i.ga, ptr %i.fy, align 8
  br label %_ZN2v88internal10CodeTracer5ScopeC2EPS1_.exit.i

_ZN2v88internal10CodeTracer5ScopeC2EPS1_.exit.i:  ; preds = %bb.aj, %bb.af
  %i.gb = phi ptr [ %i.fq, %bb.af ], [ %.pre.i51, %bb.aj ]
  %i.gc = getelementptr inbounds nuw i8, ptr %9, i64 360 ; 4 uses
  store i8 0, ptr %i.gc, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %9, i64 712 ; 5 uses
  store i8 0, ptr %i.gd, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 144
  %i.gf = load ptr, ptr %i.ge, align 8            ; 2 uses
  %i.gg = load ptr, ptr @stdout, align 8
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %bb.ak, label %_ZNSt8optionalIN2v88internal8OFStreamEE7emplaceIJRP8_IO_FILEEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS9_.exit.i

bb.ak:                                            ; preds = %_ZN2v88internal10CodeTracer5ScopeC2EPS1_.exit.i
  %i.gi = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gj = call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt8optionalIN2v88internal12StdoutStreamEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_(ptr noundef nonnull align 8 dereferenceable(360) %i.gi) ; 0 uses
  br label %_ZN2v88internal10CodeTracer11StreamScopeC2EPS1_.exit

_ZNSt8optionalIN2v88internal8OFStreamEE7emplaceIJRP8_IO_FILEEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS9_.exit.i: ; preds = %_ZN2v88internal10CodeTracer5ScopeC2EPS1_.exit.i
  %i.gk = getelementptr inbounds nuw i8, ptr %9, i64 368
  call void @_ZN2v88internal8OFStreamC1EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(352) %i.gk, ptr noundef %i.gf) #29
  store i8 1, ptr %i.gd, align 8
  br label %_ZN2v88internal10CodeTracer11StreamScopeC2EPS1_.exit

_ZN2v88internal10CodeTracer11StreamScopeC2EPS1_.exit: ; preds = %bb.ak, %_ZNSt8optionalIN2v88internal8OFStreamEE7emplaceIJRP8_IO_FILEEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS9_.exit.i
  %i.gl = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.gm = load i8, ptr %i.gc, align 8, !range !6, !noundef !8
  %i.gn = trunc nuw i8 %i.gm to i1
  br i1 %i.gn, label %_ZN2v88internal10CodeTracer11StreamScope6streamEv.exit, label %bb.al

bb.al:                                            ; preds = %_ZN2v88internal10CodeTracer11StreamScopeC2EPS1_.exit
  %i.go = getelementptr inbounds nuw i8, ptr %9, i64 368
  %i.gp = load i8, ptr %i.gd, align 8, !range !6, !noundef !8
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %_ZN2v88internal10CodeTracer11StreamScope6streamEv.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZSt27__throw_bad_optional_accessv() #33
  unreachable

_ZN2v88internal10CodeTracer11StreamScope6streamEv.exit: ; preds = %_ZN2v88internal10CodeTracer11StreamScopeC2EPS1_.exit, %bb.al
  %.0.i = phi ptr [ %i.gl, %_ZN2v88internal10CodeTracer11StreamScopeC2EPS1_.exit ], [ %i.go, %bb.al ] ; 11 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.gs = load i8, ptr %i.gr, align 8
  %i.gt = add i8 %i.gs, -11
  %i.gu = icmp ult i8 %i.gt, 2                    ; 2 uses
  br i1 %i.gu, label %bb.an, label %.critedge

bb.an:                                            ; preds = %_ZN2v88internal10CodeTracer11StreamScope6streamEv.exit
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.0.0.copyload.i53 = load ptr, ptr %i.gv, align 8 ; 6 uses
  %i.gw = load i64, ptr %.sroa.0.0.copyload.i53, align 8
  %i.gx = add i64 %i.gw, 39
  %i.gy = inttoptr i64 %i.gx to ptr
  %i.gz = load atomic volatile i64, ptr %i.gy acquire, align 8
  %i.ha = add i64 %i.gz, -1
  %i.hb = inttoptr i64 %i.ha to ptr
  %i.hc = load atomic volatile i64, ptr %i.hb monotonic, align 8
  %i.hd = add i64 %i.hc, 11
  %i.he = inttoptr i64 %i.hd to ptr
  %i.hf = load atomic volatile i16, ptr %i.he monotonic, align 2
  %i.hg = icmp eq i16 %i.hf, 165
  br i1 %i.hg, label %bb.ao, label %.critedge

bb.ao:                                            ; preds = %bb.an
  %i.hh = load i64, ptr %.sroa.0.0.copyload.i53, align 8
  %i.hi = add i64 %i.hh, 39
  %i.hj = inttoptr i64 %i.hi to ptr
  %i.hk = load atomic volatile i64, ptr %i.hj acquire, align 8
  %i.hl = add i64 %i.hk, 7
  %i.hm = inttoptr i64 %i.hl to ptr
  %i.hn = load i64, ptr %i.hm, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.hp = load i64, ptr %i.ho, align 8
  %i.hq = icmp eq i64 %i.hn, %i.hp
  br i1 %i.hq, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef nonnull @.str.6, i64 noundef 19) #29 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.hs = load i64, ptr %.sroa.0.0.copyload.i53, align 8
  %i.ht = add i64 %i.hs, 39
  %i.hu = inttoptr i64 %i.ht to ptr
  %i.hv = load atomic volatile i64, ptr %i.hu acquire, align 8
  %i.hw = add i64 %i.hv, 7
  %i.hx = inttoptr i64 %i.hw to ptr
  %i.hy = load i64, ptr %i.hx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.hz = load i64, ptr %.sroa.0.0.copyload.i53, align 8
  store i64 %i.hz, ptr %11, align 8
  %i.ia = call noundef i32 @_ZNK2v88internal18SharedFunctionInfo13StartPositionEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #29
  call void @_ZN2v88internal21StringCharacterStreamC2ENS0_6TaggedINS0_6StringEEEi(ptr noundef nonnull align 8 dereferenceable(320) %10, i64 %i.hy, i32 noundef %i.ia)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %i.ib = load i64, ptr %.sroa.0.0.copyload.i53, align 8
  store i64 %i.ib, ptr %12, align 8
  %i.ic = call noundef i32 @_ZNK2v88internal18SharedFunctionInfo11EndPositionEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.id = load i64, ptr %.sroa.0.0.copyload.i53, align 8
  store i64 %i.id, ptr %13, align 8
  %i.ie = call noundef i32 @_ZNK2v88internal18SharedFunctionInfo13StartPositionEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #29
  %17 = sub nsw i32 %i.ic, %i.ie                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %.not140 = icmp slt i32 %17, 0
  br i1 %.not140, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ap
  %i.if = getelementptr inbounds nuw i8, ptr %10, i64 288 ; 5 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %10, i64 296 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %10, i64 264 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %10, i64 304 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %10, i64 280
  br label %bb.as

._crit_edge:                                      ; preds = %bb.az, %bb.ap
  %i.ik = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef nonnull @.str.7, i64 noundef 2) #29 ; 0 uses
  %i.il = getelementptr inbounds nuw i8, ptr %10, i64 312 ; 2 uses
  %i.im = load i8, ptr %i.il, align 8, !range !6, !noundef !8
  %i.in = trunc nuw i8 %i.im to i1
  store i8 0, ptr %i.il, align 8
  br i1 %i.in, label %bb.aq, label %_ZN2v88internal21StringCharacterStreamD2Ev.exit

bb.aq:                                            ; preds = %._crit_edge
  %i.io = getelementptr inbounds nuw i8, ptr %10, i64 304
  %i.ip = load ptr, ptr %i.io, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ip, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN2v88internal21StringCharacterStreamD2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ip) #29
  br label %_ZN2v88internal21StringCharacterStreamD2Ev.exit

_ZN2v88internal21StringCharacterStreamD2Ev.exit:  ; preds = %._crit_edge, %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %.critedge

bb.as:                                            ; preds = %.lr.ph, %bb.az
  %.0141 = phi i32 [ 0, %.lr.ph ], [ %i.jn, %bb.az ]
  %i.iq = load ptr, ptr %i.if, align 8            ; 2 uses
  %i.ir = load ptr, ptr %i.ig, align 8
  %.not.i59 = icmp eq ptr %i.iq, %i.ir
  br i1 %.not.i59, label %bb.at, label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.thread.thread

_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.thread.thread: ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  br label %bb.aw

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i32 0, ptr %i.b, align 4
  %i.is = load i32, ptr %i.ih, align 8
  %i.it = icmp eq i32 %i.is, 0
  br i1 %i.it, label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.thread137, label %_ZN2v88internal18ConsStringIterator4NextEPi.exit.i

_ZN2v88internal18ConsStringIterator4NextEPi.exit.i: ; preds = %bb.at
  %i.iu = call i64 @_ZN2v88internal18ConsStringIterator8ContinueEPi(ptr noundef nonnull align 8 dereferenceable(320) %10, ptr noundef nonnull %i.b) #29 ; 2 uses
  %i.iv = icmp eq i64 %i.iu, 0
  br i1 %i.iv, label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.thread137, label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.thread

_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.thread137: ; preds = %_ZN2v88internal18ConsStringIterator4NextEPi.exit.i, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %bb.az

_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.thread: ; preds = %_ZN2v88internal18ConsStringIterator4NextEPi.exit.i
  %i.iw = call i64 @_ZN2v88internal6String9VisitFlatINS0_21StringCharacterStreamEEENS0_6TaggedINS0_10ConsStringEEEPT_NS4_IS1_EEiRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 8 dereferenceable(320) %10, i64 %i.iu, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %i.ii) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %.pre = load ptr, ptr %i.if, align 8            ; 2 uses
  %.pre144 = load ptr, ptr %i.ig, align 8
  %i.ix = icmp eq ptr %.pre, %.pre144
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  br i1 %i.ix, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 0, ptr %i.a, align 4
  %i.iy = load i32, ptr %i.ih, align 8
  %i.iz = icmp eq i32 %i.iy, 0
  br i1 %i.iz, label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.i, label %_ZN2v88internal18ConsStringIterator4NextEPi.exit.i.i

_ZN2v88internal18ConsStringIterator4NextEPi.exit.i.i: ; preds = %bb.au
  %i.ja = call i64 @_ZN2v88internal18ConsStringIterator8ContinueEPi(ptr noundef nonnull align 8 dereferenceable(320) %10, ptr noundef nonnull %i.a) #29 ; 2 uses
  %i.jb = icmp eq i64 %i.ja, 0
  br i1 %i.jb, label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.i, label %bb.av

bb.av:                                            ; preds = %_ZN2v88internal18ConsStringIterator4NextEPi.exit.i.i
  %i.jc = call i64 @_ZN2v88internal6String9VisitFlatINS0_21StringCharacterStreamEEENS0_6TaggedINS0_10ConsStringEEEPT_NS4_IS1_EEiRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 8 dereferenceable(320) %10, i64 %i.ja, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %i.ii) ; 0 uses
  br label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.i

_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.i: ; preds = %bb.av, %_ZN2v88internal18ConsStringIterator4NextEPi.exit.i.i, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %.pre145 = load ptr, ptr %i.if, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.thread.thread, %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.i, %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.thread
  %i.jd = phi ptr [ %.pre145, %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.i ], [ %.pre, %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.thread ], [ %i.iq, %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.thread.thread ] ; 4 uses
  %i.je = load i8, ptr %i.ij, align 8, !range !6, !noundef !8
  %i.jf = trunc nuw i8 %i.je to i1
  br i1 %i.jf, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 1
  store ptr %i.jg, ptr %i.if, align 8
  %i.jh = load i8, ptr %i.jd, align 1
  %i.ji = zext i8 %i.jh to i16
  br label %_ZN2v88internal21StringCharacterStream7GetNextEv.exit

bb.ay:                                            ; preds = %bb.aw
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jd, i64 2
  store ptr %i.jj, ptr %i.if, align 8
  %i.jk = load i16, ptr %i.jd, align 2
  br label %_ZN2v88internal21StringCharacterStream7GetNextEv.exit

_ZN2v88internal21StringCharacterStream7GetNextEv.exit: ; preds = %bb.ax, %bb.ay
  %i.jl = phi i16 [ %i.ji, %bb.ax ], [ %i.jk, %bb.ay ]
  store i16 %i.jl, ptr %14, align 2
  %i.jm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_23AsReversiblyEscapedUC16E(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef nonnull align 2 dereferenceable(2) %14) #29 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %bb.az

bb.az:                                            ; preds = %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.thread137, %_ZN2v88internal21StringCharacterStream7GetNextEv.exit
  %i.jn = add nuw nsw i32 %.0141, 1               ; 2 uses
  %.not = icmp sgt i32 %i.jn, %17
  br i1 %.not, label %._crit_edge, label %bb.as, !llvm.loop !23

.critedge:                                        ; preds = %bb.ao, %_ZN2v88internal21StringCharacterStreamD2Ev.exit, %bb.an, %_ZN2v88internal10CodeTracer11StreamScope6streamEv.exit
  %i.jo = load i8, ptr %i.gr, align 8
  %i.jp = add i8 %i.jo, -11
  %i.jq = icmp ult i8 %i.jp, 2
  br i1 %i.jq, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.critedge
  %i.jr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef nonnull @.str.8, i64 noundef 23) #29 ; 0 uses
  %i.js = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef nonnull @.str.9, i64 noundef 18) #29 ; 0 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ju = load i32, ptr %i.jt, align 8
  %i.jv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, i32 noundef %i.ju) #29
  %i.jw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jv, ptr noundef nonnull @.str.10, i64 noundef 1) #29 ; 0 uses
  br label %bb.bc

bb.bb:                                            ; preds = %.critedge
  %i.jx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef nonnull @.str.11, i64 noundef 13) #29 ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  br i1 %i.gu, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.jy = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.0.0.copyload.i61 = load ptr, ptr %i.jy, align 8
  %i.jz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef nonnull @.str.12, i64 noundef 18) #29 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  %i.ka = load i64, ptr %.sroa.0.0.copyload.i61, align 8
  store i64 %i.ka, ptr %15, align 8
  %i.kb = call noundef i32 @_ZNK2v88internal18SharedFunctionInfo13StartPositionEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #29
  %i.kc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, i32 noundef %i.kb) #29
  %i.kd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kc, ptr noundef nonnull @.str.10, i64 noundef 1) #29 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  %i.ke = load i64, ptr %1, align 8
  store i64 %i.ke, ptr %16, align 8
  %i.kf = load ptr, ptr %8, align 8
  call void @_ZN2v88internal4Code11DisassembleEPKcRSoPNS0_7IsolateEm(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %i.kf, ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef nonnull %0, i64 noundef 0) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  %i.kg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef nonnull @.str.13, i64 noundef 17) #29 ; 0 uses
  %i.kh = load i8, ptr %i.gd, align 8, !range !6, !noundef !8
  %i.ki = trunc nuw i8 %i.kh to i1
  store i8 0, ptr %i.gd, align 8
  br i1 %i.ki, label %bb.bf, label %_ZNSt14_Optional_baseIN2v88internal8OFStreamELb0ELb0EED2Ev.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.kj = getelementptr inbounds nuw i8, ptr %9, i64 368
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 24), ptr %i.kj, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %9, i64 448 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 64), ptr %i.kk, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %9, i64 376
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.kl, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %9, i64 432
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.km) #29, !inline_history !18
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.kk) #29, !inline_history !18
  br label %_ZNSt14_Optional_baseIN2v88internal8OFStreamELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseIN2v88internal8OFStreamELb0ELb0EED2Ev.exit.i: ; preds = %bb.bf, %bb.be
  %i.kn = load i8, ptr %i.gc, align 8, !range !6, !noundef !8
  %i.ko = trunc nuw i8 %i.kn to i1
  store i8 0, ptr %i.gc, align 8
  br i1 %i.ko, label %bb.bg, label %_ZNSt14_Optional_baseIN2v88internal12StdoutStreamELb0ELb0EED2Ev.exit.i

bb.bg:                                            ; preds = %_ZNSt14_Optional_baseIN2v88internal8OFStreamELb0ELb0EED2Ev.exit.i
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %i.gl, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.kp, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.kr = load ptr, ptr %i.kq, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.kr, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN2v88internal12StdoutStreamEE10_M_destroyEv.exit.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kr) #29, !inline_history !19
  br label %_ZNSt22_Optional_payload_baseIN2v88internal12StdoutStreamEE10_M_destroyEv.exit.i.i.i.i

_ZNSt22_Optional_payload_baseIN2v88internal12StdoutStreamEE10_M_destroyEv.exit.i.i.i.i: ; preds = %bb.bh, %bb.bg
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %i.gl, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.kp, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ks, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %9, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.kt) #29, !inline_history !19
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.kp) #29, !inline_history !19
  br label %_ZNSt14_Optional_baseIN2v88internal12StdoutStreamELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseIN2v88internal12StdoutStreamELb0ELb0EED2Ev.exit.i: ; preds = %_ZNSt22_Optional_payload_baseIN2v88internal12StdoutStreamEE10_M_destroyEv.exit.i.i.i.i, %_ZNSt14_Optional_baseIN2v88internal8OFStreamELb0ELb0EED2Ev.exit.i
  %i.ku = load ptr, ptr %9, align 8               ; 2 uses
  %i.kv = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1904), align 16, !range !6, !noundef !8
  %i.kw = trunc nuw i8 %i.kv to i1
  br i1 %i.kw, label %bb.bi, label %_ZN2v88internal10CodeTracer11StreamScopeD2Ev.exit

bb.bi:                                            ; preds = %_ZNSt14_Optional_baseIN2v88internal12StdoutStreamELb0ELb0EED2Ev.exit.i
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 152 ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 8
  %i.kz = add nsw i32 %i.ky, -1                   ; 2 uses
  store i32 %i.kz, ptr %i.kx, align 8
  %i.la = icmp eq i32 %i.kz, 0
  br i1 %i.la, label %bb.bj, label %_ZN2v88internal10CodeTracer11StreamScopeD2Ev.exit

bb.bj:                                            ; preds = %bb.bi
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ku, i64 144 ; 2 uses
  %i.lc = load ptr, ptr %i.lb, align 8
  %i.ld = call noundef i32 @fclose(ptr noundef %i.lc) ; 0 uses
  store ptr null, ptr %i.lb, align 8
  br label %_ZN2v88internal10CodeTracer11StreamScopeD2Ev.exit

_ZN2v88internal10CodeTracer11StreamScopeD2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN2v88internal12StdoutStreamELb0ELb0EED2Ev.exit.i, %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.le = load ptr, ptr %8, align 8               ; 2 uses
  %.not.i62 = icmp eq ptr %i.le, null
  br i1 %.not.i62, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZN2v88internal10CodeTracer11StreamScopeD2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.le) #30
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZN2v88internal10CodeTracer11StreamScopeD2Ev.exit, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.bk

.critedge41:                                      ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.bk

bb.bk:                                            ; preds = %.critedge41, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %bb.ae
  ret void
}

declare noundef zeroext i1 @_ZN2v88internal18SharedFunctionInfo12PassesFilterEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare void @_ZNK2v88internal24OptimizedCompilationInfo12GetDebugNameEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(192)) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal7Isolate13GetCodeTracerEv(ptr noundef nonnull align 8 dereferenceable(64320)) local_unnamed_addr #1

declare noundef i32 @_ZNK2v88internal18SharedFunctionInfo13StartPositionEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal21StringCharacterStreamC2ENS0_6TaggedINS0_6StringEEEi(ptr noundef nonnull align 8 dereferenceable(320) %0, i64 %1, i32 noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(276) %0, i8 0, i64 264, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i8 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  store i8 0, ptr %i.d, align 8
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal21g_current_local_heap_E)
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i8, ptr %i.g, align 8, !range !6, !noundef !8
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededC2ENS0_6TaggedINS0_6StringEEE.exit, label %_ZN2v88internal31SharedStringAccessGuardIfNeeded8IsNeededENS0_6TaggedINS0_6StringEEEb.exit.i.i

_ZN2v88internal31SharedStringAccessGuardIfNeeded8IsNeededENS0_6TaggedINS0_6StringEEEb.exit.i.i: ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN2v88internal12ReadOnlyHeap8ContainsENS0_6TaggedINS0_10HeapObjectEEE(i64 %1) #29
  br i1 %i.j, label %_ZN2v88internal31SharedStringAccessGuardIfNeededC2ENS0_6TaggedINS0_6StringEEE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeeded8IsNeededENS0_6TaggedINS0_6StringEEEb.exit.i.i
  %i.k = and i64 %1, -262144
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = load i64, ptr %i.l, align 262144
  %i.n = and i64 %i.m, 64
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeeded18GetIsolateIfNeededENS0_6TaggedINS0_6StringEEE.exit.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededC2ENS0_6TaggedINS0_6StringEEE.exit

_ZN2v88internal31SharedStringAccessGuardIfNeeded18GetIsolateIfNeededENS0_6TaggedINS0_6StringEEE.exit.i: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = add i64 %i.s, -55464                     ; 2 uses
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededC2ENS0_6TaggedINS0_6StringEEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeeded18GetIsolateIfNeededENS0_6TaggedINS0_6StringEEE.exit.i
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 58696 ; 2 uses
  %i.w = load i8, ptr %i.d, align 8, !range !6, !noundef !8
  %i.x = trunc nuw i8 %i.w to i1
  store i8 0, ptr %i.d, align 8
  br i1 %i.x, label %bb.d, label %_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOS9_.exit.i

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOS9_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y) #29
  br label %_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOS9_.exit.i

_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOS9_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  store ptr %i.v, ptr %i.c, align 8
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #29
end_hunk_0
