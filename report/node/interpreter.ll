inline.NumInlined: 829
inline.NumDeleted: 540
begin_hunk_0_@_ZN2v88internal11interpreter25InterpreterCompilationJob17DoFinalizeJobImplINS0_7IsolateEEENS0_14CompilationJob6StatusENS0_12DirectHandleINS0_18SharedFunctionInfoEEEPT_:bb.a

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.m, %bb.c ], [ %i.i, %bb.b ] ; 3 uses
  %i.n = ptrtoint ptr %.0.i to i64
  %i.o = add i64 %i.n, 8
  %i.p = inttoptr i64 %i.o to ptr
  store ptr %i.p, ptr %i.h, align 8
  store i64 %i.g, ptr %.0.i, align 8
  %i.q = tail call ptr @_ZN2v88internal11interpreter17BytecodeGenerator16FinalizeBytecodeINS0_7IsolateEEENS0_6HandleINS0_13BytecodeArrayEEEPT_NS5_INS0_6ScriptEEE(ptr noundef nonnull align 8 dereferenceable(976) %i.c, ptr noundef nonnull %2, ptr nonnull %.0.i) #21 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.s = load i8, ptr %i.r, align 8, !range !7, !noundef !8
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store ptr %i.q, ptr %i.w, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.sroa.033.0 = phi ptr [ %i.q, %bb.d ], [ %.sroa.0.0.copyload.i12, %bb.a ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i32 @_ZNK2v88internal26UnoptimizedCompilationInfo27SourcePositionRecordingModeEv(ptr noundef nonnull align 8 dereferenceable(136) %i.y) #21
  %i.aa = icmp eq i32 %i.z, 2
  br i1 %i.aa, label %bb.f, label %_ZN2v88internal13BytecodeArray25set_source_position_tableENS0_6TaggedINS0_16TrustedByteArrayEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ac = tail call ptr @_ZN2v88internal11interpreter17BytecodeGenerator27FinalizeSourcePositionTableINS0_7IsolateEEENS0_12DirectHandleINS0_16TrustedByteArrayEEEPT_(ptr noundef nonnull align 8 dereferenceable(976) %i.ab, ptr noundef %2) #21
  %i.ad = load i64, ptr %.sroa.033.0, align 8     ; 4 uses
  %i.ae = load i64, ptr %i.ac, align 8            ; 4 uses
  %i.af = add i64 %i.ad, 23                       ; 3 uses
  %i.ag = inttoptr i64 %i.af to ptr
  store atomic volatile i64 %i.ae, ptr %i.ag release, align 8
  %i.ah = and i64 %i.ae, -262144
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load i64, ptr %i.ai, align 262144
  %i.ak = and i64 %i.aj, 1
  %.not.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal12WriteBarrier10SharedSlowENS0_6TaggedINS0_13TrustedObjectEEENS0_14FullObjectSlotES4_(i64 %i.ad, i64 %i.af, i64 %i.ae) #21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = and i64 %i.ad, -262144
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load i64, ptr %i.am, align 262144
  %i.ao = and i64 %i.an, 32
  %.not.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i, label %_ZN2v88internal13BytecodeArray25set_source_position_tableENS0_6TaggedINS0_16TrustedByteArrayEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit, label %bb.i, !prof !13

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_13TrustedObjectEEENS0_14FullObjectSlotES4_(i64 %i.ad, i64 %i.af, i64 %i.ae) #21
  br label %_ZN2v88internal13BytecodeArray25set_source_position_tableENS0_6TaggedINS0_16TrustedByteArrayEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit

_ZN2v88internal13BytecodeArray25set_source_position_tableENS0_6TaggedINS0_16TrustedByteArrayEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit: ; preds = %bb.i, %bb.h, %bb.e
  %i.ap = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 322), align 2, !range !7, !noundef !8
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.j, label %_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit.thread

bb.j:                                             ; preds = %_ZN2v88internal13BytecodeArray25set_source_position_tableENS0_6TaggedINS0_16TrustedByteArrayEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit
  %i.ar = load i64, ptr %1, align 8               ; 2 uses
  %i.as = add i64 %i.ar, 55
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load atomic volatile i32, ptr %i.at monotonic, align 4
  %i.av = and i32 %i.au, 134217728
  %.not.i = icmp eq i32 %i.av, 0
  br i1 %.not.i, label %_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 328), align 8 ; 2 uses
  %i.ax = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #22 ; 3 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit.thread54, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = icmp ult i64 %i.ax, 2147483648
  br i1 %i.az, label %_ZNK2v84base6VectorIKcE6lengthEv.exit.i, label %bb.m, !prof !13

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11) #23
  unreachable

_ZNK2v84base6VectorIKcE6lengthEv.exit.i:          ; preds = %bb.l
  %i.ba = icmp eq i64 %i.ax, 1
  br i1 %i.ba, label %bb.n, label %_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit.thread

bb.n:                                             ; preds = %_ZNK2v84base6VectorIKcE6lengthEv.exit.i
  %i.bb = load i8, ptr %i.aw, align 1
  %i.bc = icmp eq i8 %i.bb, 42
  br i1 %i.bc, label %_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit.thread54, label %_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit.thread

_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store i64 %i.ar, ptr %4, align 8
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 328), align 8
  %i.be = call noundef zeroext i1 @_ZN2v88internal18SharedFunctionInfo12PassesFilterEPKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.bd) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %i.be, label %_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit.thread54, label %_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit.thread

_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit.thread54: ; preds = %bb.k, %bb.n, %_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 6 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bf) #21
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 304
  store ptr null, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 312
  store i8 0, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 313
  store i8 0, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i8 0, i64 32, i1 false)
  %i.bk = load ptr, ptr @stdout, align 8
  call void @_ZN2v88internal8OFStreamC2EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN2v88internal12StdoutStreamE, i64 8), ptr noundef %i.bk) #21
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %5, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.bf, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.bm = call noundef ptr @_ZN2v88internal12StdoutStream14GetStdoutMutexEv() #21 ; 2 uses
  store ptr %i.bm, ptr %i.bl, align 8
  call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.bn = load ptr, ptr %i.x, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8
  call void @_ZNK2v88internal15FunctionLiteral12GetDebugNameEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.675") align 8 %6, ptr noundef nonnull align 8 dereferenceable(88) %i.bp) #21
  %i.bq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.7, i64 noundef 34) #21 ; 0 uses
  %i.br = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i14 = icmp eq ptr %i.br, null
  br i1 %.not.i14, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit.thread54
  %i.bs = load ptr, ptr %5, align 8
  %i.bt = getelementptr i8, ptr %i.bs, i64 -24
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds i8, ptr %5, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = or i32 %i.bx, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bv, i32 noundef %i.by) #21
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.p:                                             ; preds = %_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit.thread54
  %i.bz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.br) #21
  %i.ca = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.br, i64 noundef %i.bz) #21 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.o, %bb.p
  %i.cb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.8, i64 noundef 2) #21 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.cc = load i64, ptr %1, align 8
  store i64 %i.cc, ptr %3, align 8
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_5BriefE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %3) #21 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull @.str.9, i64 noundef 2) #21 ; 0 uses
  %i.cf = load ptr, ptr %i.cd, align 8
  %i.cg = getelementptr i8, ptr %i.cf, i64 -24
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds i8, ptr %i.cd, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 240
  %i.ck = load ptr, ptr %i.cj, align 8            ; 6 uses
  %.not.i.i.i18 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i18, label %bb.q, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZSt16__throw_bad_castv() #23
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  %i.cm = load i8, ptr %i.cl, align 8
  %.not.i1.i.i = icmp eq i8 %i.cm, 0
  br i1 %.not.i1.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 67
  %i.co = load i8, ptr %i.cn, align 1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ck) #21
  %i.cp = load ptr, ptr %i.ck, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = call noundef signext i8 %i.cr(ptr noundef nonnull align 8 dereferenceable(570) %i.ck, i8 noundef signext 10) #21, !inline_history !14
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.r, %bb.s
  %.0.i.i.i = phi i8 [ %i.co, %bb.r ], [ %i.cs, %bb.s ]
  %i.ct = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i8 noundef signext %.0.i.i.i) #21
  %i.cu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ct) #21 ; 0 uses
  %i.cv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.10, i64 noundef 17) #21 ; 0 uses
  %i.cw = load i64, ptr %.sroa.033.0, align 8
  %i.cx = add i64 %i.cw, 7
  %i.cy = inttoptr i64 %i.cx to ptr
  %.shift.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %8 = load i32, ptr %.shift.i, align 4
  %i.cz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %8) #21 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr i8, ptr %i.da, i64 -24
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = getelementptr inbounds i8, ptr %i.cz, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 240
  %i.df = load ptr, ptr %i.de, align 8            ; 6 uses
  %.not.i.i.i19 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i19, label %bb.t, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i20

bb.t:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @_ZSt16__throw_bad_castv() #23
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i20: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 56
  %i.dh = load i8, ptr %i.dg, align 8
  %.not.i1.i.i21 = icmp eq i8 %i.dh, 0
  br i1 %.not.i1.i.i21, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i20
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 67
  %i.dj = load i8, ptr %i.di, align 1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit23

bb.v:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i20
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.df) #21
  %i.dk = load ptr, ptr %i.df, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = call noundef signext i8 %i.dm(ptr noundef nonnull align 8 dereferenceable(570) %i.df, i8 noundef signext 10) #21, !inline_history !14
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit23

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit23: ; preds = %bb.u, %bb.v
  %.0.i.i.i22 = phi i8 [ %i.dj, %bb.u ], [ %i.dn, %bb.v ]
  %i.do = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, i8 noundef signext %.0.i.i.i22) #21
  %i.dp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.do) #21 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.dq = load i64, ptr %.sroa.033.0, align 8
  store i64 %i.dq, ptr %7, align 8
  call void @_ZN2v88internal13BytecodeArray11DisassembleERSo(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.dr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21 ; 0 uses
  %i.ds = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i16 = icmp eq ptr %i.ds, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit23
  call void @_ZdaPv(ptr noundef nonnull %i.ds) #20
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit23, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %5, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.bf, align 8
  %i.dt = load ptr, ptr %i.bl, align 8            ; 2 uses
  %.not.i.i.i17 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i17, label %_ZN2v88internal12StdoutStreamD1Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dt) #21, !inline_history !15
  br label %_ZN2v88internal12StdoutStreamD1Ev.exit

_ZN2v88internal12StdoutStreamD1Ev.exit:           ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %bb.w
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %5, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.bf, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dv) #21, !inline_history !15
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bf) #21, !inline_history !15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit.thread

_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit.thread: ; preds = %_ZNK2v84base6VectorIKcE6lengthEv.exit.i, %_ZN2v88internal13BytecodeArray25set_source_position_tableENS0_6TaggedINS0_16TrustedByteArrayEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit, %bb.n, %_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit, %_ZN2v88internal12StdoutStreamD1Ev.exit, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %.0 = phi i32 [ 1, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ 0, %_ZN2v88internal12StdoutStreamD1Ev.exit ], [ 0, %_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit ], [ 0, %bb.n ], [ 0, %_ZN2v88internal13BytecodeArray25set_source_position_tableENS0_6TaggedINS0_16TrustedByteArrayEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit ], [ 0, %_ZNK2v84base6VectorIKcE6lengthEv.exit.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal11interpreter25InterpreterCompilationJob15FinalizeJobImplENS0_12DirectHandleINS0_18SharedFunctionInfoEEEPNS0_12LocalIsolateE(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr %1, ptr noundef %2) unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca [2 x %"class.std::unique_ptr.665"], align 16 ; 6 uses
  %4 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %i.a = load atomic volatile i64, ptr @_ZZN2v88internal11interpreter25InterpreterCompilationJob15FinalizeJobImplENS0_12DirectHandleINS0_18SharedFunctionInfoEEEPNS0_12LocalIsolateEE28trace_event_unique_atomic277 acquire, align 8 ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #21 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str) #21 ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  store atomic volatile i64 %i.h, ptr @_ZZN2v88internal11interpreter25InterpreterCompilationJob15FinalizeJobImplENS0_12DirectHandleINS0_18SharedFunctionInfoEEEPNS0_12LocalIsolateEE28trace_event_unique_atomic277 release, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.b ]  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr null, ptr %4, align 8
  %i.i = load atomic volatile i8, ptr %.0 monotonic, align 1
  %i.j = and i8 %i.i, 5
  %.not9 = icmp eq i8 %i.j, 0
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.k = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #21 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 88, ptr noundef nonnull %.0, ptr noundef nonnull @.str.2, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %3, i32 noundef 0) #21, !inline_history !5
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %bb.d
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #21, !inline_history !6
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.u = load ptr, ptr %3, align 16               ; 3 uses
  %.not.i.1 = icmp eq ptr %i.u, null
  br i1 %.not.i.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.u) #21, !inline_history !6
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %.0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.2, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.o, ptr %i.aa, align 8
  store ptr %i.y, ptr %4, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, %bb.c
  %i.ab = call noundef i32 @_ZN2v88internal11interpreter25InterpreterCompilationJob17DoFinalizeJobImplINS0_12LocalIsolateEEENS0_14CompilationJob6StatusENS0_12DirectHandleINS0_18SharedFunctionInfoEEEPT_(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr %1, ptr noundef %2)
  %i.ac = load ptr, ptr %4, align 8
  %.not.i10 = icmp eq ptr %i.ac, null
  br i1 %.not.i10, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load atomic volatile i8, ptr %i.ae monotonic, align 1
  %.not1.i = icmp eq i8 %i.af, 0
  br i1 %.not1.i, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #21 ; 2 uses
  %i.ah = load ptr, ptr %i.ad, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = load ptr, ptr %i.ag, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef %i.ah, ptr noundef %i.aj, i64 noundef %i.al) #21, !inline_history !11
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit:   ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret i32 %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal11interpreter25InterpreterCompilationJob17DoFinalizeJobImplINS0_12LocalIsolateEEENS0_14CompilationJob6StatusENS0_12DirectHandleINS0_18SharedFunctionInfoEEEPT_(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"struct.v8::internal::Brief", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.729", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::StdoutStream", align 8 ; 24 uses
  %6 = alloca %"class.std::unique_ptr.675", align 8 ; 5 uses
  %7 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.733", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.0.0.copyload.i12 = load ptr, ptr %i.a, align 8 ; 2 uses
  %i.b = icmp eq ptr %.sroa.0.0.copyload.i12, null
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.d = load i64, ptr %1, align 8
  %i.e = add i64 %i.d, 39
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i64, ptr %i.f acquire, align 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal11interpreter25InterpreterCompilationJob17DoFinalizeJobImplINS0_12LocalIsolateEEENS0_14CompilationJob6StatusENS0_12DirectHandleINS0_18SharedFunctionInfoEEEPT_:bb.a
  %.0.i = phi ptr [ %i.s, %bb.e ], [ %i.o, %bb.d ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.u, ptr %i.n, align 8
  store i64 %i.g, ptr %.0.i, align 8
  br label %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit

_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit: ; preds = %bb.c, %bb.f
  %.012.i = phi ptr [ %i.l, %bb.c ], [ %.0.i, %bb.f ]
  %i.v = tail call ptr @_ZN2v88internal11interpreter17BytecodeGenerator16FinalizeBytecodeINS0_12LocalIsolateEEENS0_6HandleINS0_13BytecodeArrayEEEPT_NS5_INS0_6ScriptEEE(ptr noundef nonnull align 8 dereferenceable(976) %i.c, ptr noundef nonnull %2, ptr %.012.i) #21 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.x = load i8, ptr %i.w, align 8, !range !7, !noundef !8
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store ptr %i.v, ptr %i.ab, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  %.sroa.033.0 = phi ptr [ %i.v, %bb.g ], [ %.sroa.0.0.copyload.i12, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef i32 @_ZNK2v88internal26UnoptimizedCompilationInfo27SourcePositionRecordingModeEv(ptr noundef nonnull align 8 dereferenceable(136) %i.ad) #21
  %i.af = icmp eq i32 %i.ae, 2
  br i1 %i.af, label %bb.i, label %_ZN2v88internal13BytecodeArray25set_source_position_tableENS0_6TaggedINS0_16TrustedByteArrayEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ah = tail call ptr @_ZN2v88internal11interpreter17BytecodeGenerator27FinalizeSourcePositionTableINS0_12LocalIsolateEEENS0_12DirectHandleINS0_16TrustedByteArrayEEEPT_(ptr noundef nonnull align 8 dereferenceable(976) %i.ag, ptr noundef %2) #21
  %i.ai = load i64, ptr %.sroa.033.0, align 8     ; 4 uses
  %i.aj = load i64, ptr %i.ah, align 8            ; 4 uses
  %i.ak = add i64 %i.ai, 23                       ; 3 uses
  %i.al = inttoptr i64 %i.ak to ptr
  store atomic volatile i64 %i.aj, ptr %i.al release, align 8
  %i.am = and i64 %i.aj, -262144
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load i64, ptr %i.an, align 262144
  %i.ap = and i64 %i.ao, 1
  %.not.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier10SharedSlowENS0_6TaggedINS0_13TrustedObjectEEENS0_14FullObjectSlotES4_(i64 %i.ai, i64 %i.ak, i64 %i.aj) #21
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aq = and i64 %i.ai, -262144
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load i64, ptr %i.ar, align 262144
  %i.at = and i64 %i.as, 32
  %.not.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i, label %_ZN2v88internal13BytecodeArray25set_source_position_tableENS0_6TaggedINS0_16TrustedByteArrayEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_13TrustedObjectEEENS0_14FullObjectSlotES4_(i64 %i.ai, i64 %i.ak, i64 %i.aj) #21
  br label %_ZN2v88internal13BytecodeArray25set_source_position_tableENS0_6TaggedINS0_16TrustedByteArrayEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit

_ZN2v88internal13BytecodeArray25set_source_position_tableENS0_6TaggedINS0_16TrustedByteArrayEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit: ; preds = %bb.l, %bb.k, %bb.h
  %i.au = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 322), align 2, !range !7, !noundef !8
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.m, label %_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit.thread

bb.m:                                             ; preds = %_ZN2v88internal13BytecodeArray25set_source_position_tableENS0_6TaggedINS0_16TrustedByteArrayEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit
  %i.aw = load i64, ptr %1, align 8               ; 2 uses
  %i.ax = add i64 %i.aw, 55
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load atomic volatile i32, ptr %i.ay monotonic, align 4
  %i.ba = and i32 %i.az, 134217728
  %.not.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i, label %_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 328), align 8 ; 2 uses
  %i.bc = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bb) #22 ; 3 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit.thread54, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = icmp ult i64 %i.bc, 2147483648
  br i1 %i.be, label %_ZNK2v84base6VectorIKcE6lengthEv.exit.i, label %bb.p, !prof !13

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11) #23
  unreachable

_ZNK2v84base6VectorIKcE6lengthEv.exit.i:          ; preds = %bb.o
  %i.bf = icmp eq i64 %i.bc, 1
  br i1 %i.bf, label %bb.q, label %_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit.thread

bb.q:                                             ; preds = %_ZNK2v84base6VectorIKcE6lengthEv.exit.i
  %i.bg = load i8, ptr %i.bb, align 1
  %i.bh = icmp eq i8 %i.bg, 42
  br i1 %i.bh, label %_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit.thread54, label %_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit.thread

_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store i64 %i.aw, ptr %4, align 8
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 328), align 8
  %i.bj = call noundef zeroext i1 @_ZN2v88internal18SharedFunctionInfo12PassesFilterEPKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.bi) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %i.bj, label %_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit.thread54, label %_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit.thread

_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit.thread54: ; preds = %bb.n, %bb.q, %_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 6 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bk) #21
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 304
  store ptr null, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 312
  store i8 0, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 313
  store i8 0, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i8 0, i64 32, i1 false)
  %i.bp = load ptr, ptr @stdout, align 8
  call void @_ZN2v88internal8OFStreamC2EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN2v88internal12StdoutStreamE, i64 8), ptr noundef %i.bp) #21
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %5, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.bk, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.br = call noundef ptr @_ZN2v88internal12StdoutStream14GetStdoutMutexEv() #21 ; 2 uses
  store ptr %i.br, ptr %i.bq, align 8
  call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.bs = load ptr, ptr %i.ac, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8
  call void @_ZNK2v88internal15FunctionLiteral12GetDebugNameEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.675") align 8 %6, ptr noundef nonnull align 8 dereferenceable(88) %i.bu) #21
  %i.bv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.7, i64 noundef 34) #21 ; 0 uses
  %i.bw = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i14 = icmp eq ptr %i.bw, null
  br i1 %.not.i14, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit.thread54
  %i.bx = load ptr, ptr %5, align 8
  %i.by = getelementptr i8, ptr %i.bx, i64 -24
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = getelementptr inbounds i8, ptr %5, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load i32, ptr %i.cb, align 8
  %i.cd = or i32 %i.cc, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ca, i32 noundef %i.cd) #21
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.s:                                             ; preds = %_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit.thread54
  %i.ce = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bw) #21
  %i.cf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.bw, i64 noundef %i.ce) #21 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.r, %bb.s
  %i.cg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.8, i64 noundef 2) #21 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.ch = load i64, ptr %1, align 8
  store i64 %i.ch, ptr %3, align 8
  %i.ci = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_5BriefE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %3) #21 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.cj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull @.str.9, i64 noundef 2) #21 ; 0 uses
  %i.ck = load ptr, ptr %i.ci, align 8
  %i.cl = getelementptr i8, ptr %i.ck, i64 -24
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds i8, ptr %i.ci, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 240
  %i.cp = load ptr, ptr %i.co, align 8            ; 6 uses
  %.not.i.i.i18 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i18, label %bb.t, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZSt16__throw_bad_castv() #23
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cr = load i8, ptr %i.cq, align 8
  %.not.i1.i.i = icmp eq i8 %i.cr, 0
  br i1 %.not.i1.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 67
  %i.ct = load i8, ptr %i.cs, align 1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.v:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cp) #21
  %i.cu = load ptr, ptr %i.cp, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = call noundef signext i8 %i.cw(ptr noundef nonnull align 8 dereferenceable(570) %i.cp, i8 noundef signext 10) #21, !inline_history !14
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.u, %bb.v
  %.0.i.i.i = phi i8 [ %i.ct, %bb.u ], [ %i.cx, %bb.v ]
  %i.cy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, i8 noundef signext %.0.i.i.i) #21
  %i.cz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cy) #21 ; 0 uses
  %i.da = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.10, i64 noundef 17) #21 ; 0 uses
  %i.db = load i64, ptr %.sroa.033.0, align 8
  %i.dc = add i64 %i.db, 7
  %i.dd = inttoptr i64 %i.dc to ptr
  %.shift.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %8 = load i32, ptr %.shift.i, align 4
  %i.de = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %8) #21 ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = getelementptr i8, ptr %i.df, i64 -24
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = getelementptr inbounds i8, ptr %i.de, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 240
  %i.dk = load ptr, ptr %i.dj, align 8            ; 6 uses
  %.not.i.i.i19 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i19, label %bb.w, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i20

bb.w:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @_ZSt16__throw_bad_castv() #23
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i20: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  %i.dm = load i8, ptr %i.dl, align 8
  %.not.i1.i.i21 = icmp eq i8 %i.dm, 0
  br i1 %.not.i1.i.i21, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i20
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 67
  %i.do = load i8, ptr %i.dn, align 1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit23

bb.y:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i20
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dk) #21
  %i.dp = load ptr, ptr %i.dk, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = call noundef signext i8 %i.dr(ptr noundef nonnull align 8 dereferenceable(570) %i.dk, i8 noundef signext 10) #21, !inline_history !14
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit23

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit23: ; preds = %bb.x, %bb.y
  %.0.i.i.i22 = phi i8 [ %i.do, %bb.x ], [ %i.ds, %bb.y ]
  %i.dt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.de, i8 noundef signext %.0.i.i.i22) #21
  %i.du = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dt) #21 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.dv = load i64, ptr %.sroa.033.0, align 8
  store i64 %i.dv, ptr %7, align 8
  call void @_ZN2v88internal13BytecodeArray11DisassembleERSo(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.dw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21 ; 0 uses
  %i.dx = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i16 = icmp eq ptr %i.dx, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit23
  call void @_ZdaPv(ptr noundef nonnull %i.dx) #20
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit23, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %5, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.bk, align 8
  %i.dy = load ptr, ptr %i.bq, align 8            ; 2 uses
  %.not.i.i.i17 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i17, label %_ZN2v88internal12StdoutStreamD1Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dy) #21, !inline_history !15
  br label %_ZN2v88internal12StdoutStreamD1Ev.exit

_ZN2v88internal12StdoutStreamD1Ev.exit:           ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %bb.z
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %5, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.bk, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ea) #21, !inline_history !15
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bk) #21, !inline_history !15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit.thread

_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit.thread: ; preds = %_ZNK2v84base6VectorIKcE6lengthEv.exit.i, %_ZN2v88internal13BytecodeArray25set_source_position_tableENS0_6TaggedINS0_16TrustedByteArrayEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit, %bb.q, %_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit, %_ZN2v88internal12StdoutStreamD1Ev.exit, %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit
  %.0 = phi i32 [ 1, %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit ], [ 0, %_ZN2v88internal12StdoutStreamD1Ev.exit ], [ 0, %_ZN2v88internal11interpreter12_GLOBAL__N_119ShouldPrintBytecodeENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit ], [ 0, %bb.q ], [ 0, %_ZN2v88internal13BytecodeArray25set_source_position_tableENS0_6TaggedINS0_16TrustedByteArrayEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit ], [ 0, %_ZNK2v84base6VectorIKcE6lengthEv.exit.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter11Interpreter17NewCompilationJobEPNS0_9ParseInfoEPNS0_15FunctionLiteralENS0_6HandleINS0_6ScriptEEEPNS0_19AccountingAllocatorEPSt6vectorIS6_SaIS6_EEPNS0_12LocalIsolateE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.629") align 8 captures(none) initializes((0, 8)) %0, ptr noundef %1, ptr noundef %2, ptr %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #2 align 2 {
_ZNSt10unique_ptrIN2v88internal11interpreter25InterpreterCompilationJobESt14default_deleteIS3_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(1240) ptr @_Znwm(i64 noundef 1240) #19, !noalias !16 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load i64, ptr %i.b, align 8, !noalias !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.e, align 8, !noalias !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.f, align 8, !noalias !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.g, align 8, !noalias !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.d, ptr %i.h, align 8, !noalias !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false), !noalias !16
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2v88internal11interpreter25InterpreterCompilationJobE, i64 16), ptr %i.a, align 8, !noalias !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  tail call void @_ZN2v88internal4ZoneC1EPNS0_19AccountingAllocatorEPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef %4, ptr noundef nonnull @__func__._ZN2v88internal11interpreter25InterpreterCompilationJobC2EPNS0_9ParseInfoEPNS0_15FunctionLiteralENS0_6HandleINS0_6ScriptEEEPNS0_19AccountingAllocatorEPSt6vectorIS6_SaIS6_EEPNS0_12LocalIsolateE) #21, !noalias !16
  tail call void @_ZN2v88internal26UnoptimizedCompilationInfoC1EPNS0_4ZoneEPNS0_9ParseInfoEPNS0_15FunctionLiteralE(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull %i.j, ptr noundef nonnull %1, ptr noundef %2) #21, !noalias !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store ptr %6, ptr %i.k, align 8, !noalias !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !noalias !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !16
  %i.q = ptrtoint ptr %3 to i64
  tail call void @_ZN2v88internal11interpreter17BytecodeGeneratorC1EPNS0_12LocalIsolateEPNS0_4ZoneEPNS0_26UnoptimizedCompilationInfoEPKNS0_18AstStringConstantsEPSt6vectorIPNS0_15FunctionLiteralESaISE_EENS0_6HandleINS0_6ScriptEEE(ptr noundef nonnull align 8 dereferenceable(976) %i.l, ptr noundef %6, ptr noundef nonnull %i.j, ptr noundef nonnull %i.d, ptr noundef %i.p, ptr noundef %5, i64 %i.q) #21, !noalias !16
  store ptr %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter11Interpreter30NewSourcePositionCollectionJobEPNS0_9ParseInfoEPNS0_15FunctionLiteralENS0_6HandleINS0_13BytecodeArrayEEEPNS0_19AccountingAllocatorEPNS0_12LocalIsolateE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.629") align 8 captures(none) initializes((0, 8)) %0, ptr noundef %1, ptr noundef %2, ptr %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 align 2 {
_ZNSt10unique_ptrIN2v88internal11interpreter25InterpreterCompilationJobESt14default_deleteIS3_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(1240) ptr @_Znwm(i64 noundef 1240) #19, !noalias !19 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load i64, ptr %i.b, align 8, !noalias !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.e, align 8, !noalias !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.f, align 8, !noalias !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.g, align 8, !noalias !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.d, ptr %i.h, align 8, !noalias !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false), !noalias !19
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2v88internal11interpreter25InterpreterCompilationJobE, i64 16), ptr %i.a, align 8, !noalias !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  tail call void @_ZN2v88internal4ZoneC1EPNS0_19AccountingAllocatorEPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef %4, ptr noundef nonnull @__func__._ZN2v88internal11interpreter25InterpreterCompilationJobC2EPNS0_9ParseInfoEPNS0_15FunctionLiteralENS0_6HandleINS0_6ScriptEEEPNS0_19AccountingAllocatorEPSt6vectorIS6_SaIS6_EEPNS0_12LocalIsolateE) #21, !noalias !19
  tail call void @_ZN2v88internal26UnoptimizedCompilationInfoC1EPNS0_4ZoneEPNS0_9ParseInfoEPNS0_15FunctionLiteralE(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull %i.j, ptr noundef nonnull %1, ptr noundef %2) #21, !noalias !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store ptr %5, ptr %i.k, align 8, !noalias !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !noalias !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !19
  tail call void @_ZN2v88internal11interpreter17BytecodeGeneratorC1EPNS0_12LocalIsolateEPNS0_4ZoneEPNS0_26UnoptimizedCompilationInfoEPKNS0_18AstStringConstantsEPSt6vectorIPNS0_15FunctionLiteralESaISE_EENS0_6HandleINS0_6ScriptEEE(ptr noundef nonnull align 8 dereferenceable(976) %i.l, ptr noundef %5, ptr noundef nonnull %i.j, ptr noundef nonnull %i.d, ptr noundef %i.p, ptr noundef null, i64 0) #21, !noalias !19
  %i.q = load ptr, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store ptr %3, ptr %i.r, align 8
  store ptr %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter11Interpreter15ForEachBytecodeERKSt8functionIFvNS1_8BytecodeENS1_12OperandScaleEEE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(6176) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 12 uses
  %i.b = alloca i8, align 1                       ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  br label %bb.c

.preheader19:                                     ; preds = %_ZNKSt8functionIFvN2v88internal11interpreter8BytecodeENS2_12OperandScaleEEEclES3_S4_.exit, %_ZNKSt8functionIFvN2v88internal11interpreter8BytecodeENS2_12OperandScaleEEEclES3_S4_.exit.1
  %.011.1 = phi i32 [ %i.h, %_ZNKSt8functionIFvN2v88internal11interpreter8BytecodeENS2_12OperandScaleEEEclES3_S4_.exit.1 ], [ 0, %_ZNKSt8functionIFvN2v88internal11interpreter8BytecodeENS2_12OperandScaleEEEclES3_S4_.exit ] ; 2 uses
  %i.e = trunc nuw i32 %.011.1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.e, ptr %i.a, align 1
  store i8 2, ptr %i.b, align 1
  %i.f = load ptr, ptr %i.c, align 8
  %.not.i.i.1 = icmp eq ptr %i.f, null
  br i1 %.not.i.i.1, label %.loopexit, label %_ZNKSt8functionIFvN2v88internal11interpreter8BytecodeENS2_12OperandScaleEEEclES3_S4_.exit.1

_ZNKSt8functionIFvN2v88internal11interpreter8BytecodeENS2_12OperandScaleEEEclES3_S4_.exit.1: ; preds = %.preheader19
  %i.g = load ptr, ptr %i.d, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b) #21, !inline_history !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = add nuw nsw i32 %.011.1, 1               ; 2 uses
  %exitcond.1.not = icmp eq i32 %i.h, 212
  br i1 %exitcond.1.not, label %.preheader, label %.preheader19, !llvm.loop !23

.preheader:                                       ; preds = %_ZNKSt8functionIFvN2v88internal11interpreter8BytecodeENS2_12OperandScaleEEEclES3_S4_.exit.1, %_ZNKSt8functionIFvN2v88internal11interpreter8BytecodeENS2_12OperandScaleEEEclES3_S4_.exit.2
  %.011.2 = phi i32 [ %i.l, %_ZNKSt8functionIFvN2v88internal11interpreter8BytecodeENS2_12OperandScaleEEEclES3_S4_.exit.2 ], [ 0, %_ZNKSt8functionIFvN2v88internal11interpreter8BytecodeENS2_12OperandScaleEEEclES3_S4_.exit.1 ] ; 2 uses
  %i.i = trunc nuw i32 %.011.2 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.i, ptr %i.a, align 1
  store i8 4, ptr %i.b, align 1
  %i.j = load ptr, ptr %i.c, align 8
  %.not.i.i.2 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.2, label %.loopexit, label %_ZNKSt8functionIFvN2v88internal11interpreter8BytecodeENS2_12OperandScaleEEEclES3_S4_.exit.2

_ZNKSt8functionIFvN2v88internal11interpreter8BytecodeENS2_12OperandScaleEEEclES3_S4_.exit.2: ; preds = %.preheader
  %i.k = load ptr, ptr %i.d, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b) #21, !inline_history !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = add nuw nsw i32 %.011.2, 1               ; 2 uses
  %exitcond.2.not = icmp eq i32 %i.l, 212
  br i1 %exitcond.2.not, label %bb.b, label %.preheader, !llvm.loop !23

bb.b:                                             ; preds = %_ZNKSt8functionIFvN2v88internal11interpreter8BytecodeENS2_12OperandScaleEEEclES3_S4_.exit.2
  ret void

end_hunk_1
