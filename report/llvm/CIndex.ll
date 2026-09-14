Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CIndex?download=true
inline.NumInlined: 13967
inline.NumDeleted: 7767
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 15
begin_hunk_0_@clang_annotateTokens:bb.a
  %or.cond = and i1 %i.af, %i.ae
  %i.ag = icmp ne ptr %3, null
  %or.cond3 = and i1 %or.cond, %i.ag
  %i.ah = load atomic i8, ptr @_ZGVZN5clang7cxindex6Logger9getEnvVarEvE10sCachedVar acquire, align 8
  %i.ai = icmp eq i8 %i.ah, 0                     ; 2 uses
  br i1 %or.cond3, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.ai, label %bb.o, label %_ZN5clang7cxindex6Logger9getEnvVarEv.exit.i33, !prof !1107

bb.o:                                             ; preds = %bb.n
  %i.aj = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5clang7cxindex6Logger9getEnvVarEvE10sCachedVar) #38
  %.not.i.i39 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i39, label %_ZN5clang7cxindex6Logger9getEnvVarEv.exit.i33, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = tail call ptr @getenv(ptr noundef nonnull @.str.365) #38
  store ptr %i.ak, ptr @_ZZN5clang7cxindex6Logger9getEnvVarEvE10sCachedVar, align 8, !tbaa !1236
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5clang7cxindex6Logger9getEnvVarEvE10sCachedVar) #38
  br label %_ZN5clang7cxindex6Logger9getEnvVarEv.exit.i33

_ZN5clang7cxindex6Logger9getEnvVarEv.exit.i33:    ; preds = %bb.p, %bb.o, %bb.n
  %i.al = load ptr, ptr @_ZZN5clang7cxindex6Logger9getEnvVarEvE10sCachedVar, align 8, !tbaa !1236 ; 3 uses
  %.not.not.not.i34 = icmp eq ptr %i.al, null
  br i1 %.not.not.not.i34, label %_ZN5clang7cxindex6Logger21isStackTracingEnabledEv.exit40, label %_ZN4llvm9StringRefC2EPKc.exit.i35

_ZN4llvm9StringRefC2EPKc.exit.i35:                ; preds = %_ZN5clang7cxindex6Logger9getEnvVarEv.exit.i33
  %i.am = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.al) #38
  %.not.i7.i36 = icmp eq i64 %i.am, 1
  br i1 %.not.i7.i36, label %bb.q, label %_ZN5clang7cxindex6Logger21isStackTracingEnabledEv.exit40

bb.q:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i35
  %lhsc.i38 = load i8, ptr %i.al, align 1
  %i.an = icmp eq i8 %lhsc.i38, 50
  br label %_ZN5clang7cxindex6Logger21isStackTracingEnabledEv.exit40

_ZN5clang7cxindex6Logger21isStackTracingEnabledEv.exit40: ; preds = %_ZN5clang7cxindex6Logger9getEnvVarEv.exit.i33, %_ZN4llvm9StringRefC2EPKc.exit.i35, %bb.q
  %spec.select.i37 = phi i1 [ false, %_ZN5clang7cxindex6Logger9getEnvVarEv.exit.i33 ], [ %i.an, %bb.q ], [ false, %_ZN4llvm9StringRefC2EPKc.exit.i35 ]
  %i.ao = load atomic i8, ptr @_ZGVZN5clang7cxindex6Logger9getEnvVarEvE10sCachedVar acquire, align 8, !noalias !2224
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.r, label %_ZN5clang7cxindex6Logger16isLoggingEnabledEv.exit.i41, !prof !1107

bb.r:                                             ; preds = %_ZN5clang7cxindex6Logger21isStackTracingEnabledEv.exit40
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5clang7cxindex6Logger9getEnvVarEvE10sCachedVar) #38, !noalias !2224
  %.not.i.i.i44 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i44, label %_ZN5clang7cxindex6Logger16isLoggingEnabledEv.exit.i41, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = tail call ptr @getenv(ptr noundef nonnull @.str.365) #38, !noalias !2224
  store ptr %i.ar, ptr @_ZZN5clang7cxindex6Logger9getEnvVarEvE10sCachedVar, align 8, !tbaa !1236, !noalias !2224
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5clang7cxindex6Logger9getEnvVarEvE10sCachedVar) #38, !noalias !2224
  br label %_ZN5clang7cxindex6Logger16isLoggingEnabledEv.exit.i41

_ZN5clang7cxindex6Logger16isLoggingEnabledEv.exit.i41: ; preds = %bb.s, %bb.r, %_ZN5clang7cxindex6Logger21isStackTracingEnabledEv.exit40
  %i.as = load ptr, ptr @_ZZN5clang7cxindex6Logger9getEnvVarEvE10sCachedVar, align 8, !tbaa !1236, !noalias !2224
  %.not.i42 = icmp eq ptr %i.as, null
  br i1 %.not.i42, label %_ZN4llvm18IntrusiveRefCntPtrIN5clang7cxindex6LoggerEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5clang7cxindex6Logger16isLoggingEnabledEv.exit.i41
  %i.at = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #37, !noalias !2224 ; 10 uses
  tail call void @_ZN5clang7cxindex6LoggerC2EN4llvm9StringRefEb(ptr noundef nonnull align 8 dereferenceable(192) %i.at, ptr nonnull @__func__.clang_annotateTokens, i64 20, i1 noundef zeroext %spec.select.i37), !noalias !2224
  %i.au = load i32, ptr %i.at, align 4, !tbaa !1238, !noalias !2224
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.at, align 4, !tbaa !1238, !noalias !2224
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 160
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1242
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 168 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1243 ; 2 uses
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = icmp ult i64 %i.bc, 12
  br i1 %i.bd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 136
  %i.bf = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.be, ptr noundef nonnull @.str.330, i64 noundef 12) #38 ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.az, ptr noundef nonnull align 1 dereferenceable(12) @.str.330, i64 12, i1 false)
  %i.bg = load ptr, ptr %i.ay, align 8, !tbaa !1243
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store ptr %i.bh, ptr %i.ay, align 8, !tbaa !1243
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.bi = load i32, ptr %i.at, align 8, !tbaa !1238
  %i.bj = add i32 %i.bi, -1                       ; 2 uses
  store i32 %i.bj, ptr %i.at, align 8, !tbaa !1238
  %.not.i.i.i.i49 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i.i.i49, label %bb.x, label %_ZN4llvm18IntrusiveRefCntPtrIN5clang7cxindex6LoggerEED2Ev.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN5clang7cxindex6LoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.at) #38
  tail call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %i.at, i64 noundef 192) #39
  br label %_ZN4llvm18IntrusiveRefCntPtrIN5clang7cxindex6LoggerEED2Ev.exit

bb.y:                                             ; preds = %bb.m
  br i1 %i.ai, label %bb.z, label %_ZN5clang7cxindex6Logger9getEnvVarEv.exit.i51, !prof !1107

bb.z:                                             ; preds = %bb.y
  %i.bk = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5clang7cxindex6Logger9getEnvVarEvE10sCachedVar) #38
  %.not.i.i57 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i57, label %_ZN5clang7cxindex6Logger9getEnvVarEv.exit.i51, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bl = tail call ptr @getenv(ptr noundef nonnull @.str.365) #38
  store ptr %i.bl, ptr @_ZZN5clang7cxindex6Logger9getEnvVarEvE10sCachedVar, align 8, !tbaa !1236
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5clang7cxindex6Logger9getEnvVarEvE10sCachedVar) #38
  br label %_ZN5clang7cxindex6Logger9getEnvVarEv.exit.i51

_ZN5clang7cxindex6Logger9getEnvVarEv.exit.i51:    ; preds = %bb.aa, %bb.z, %bb.y
  %i.bm = load ptr, ptr @_ZZN5clang7cxindex6Logger9getEnvVarEvE10sCachedVar, align 8, !tbaa !1236 ; 3 uses
  %.not.not.not.i52 = icmp eq ptr %i.bm, null
  br i1 %.not.not.not.i52, label %_ZN5clang7cxindex6Logger21isStackTracingEnabledEv.exit58, label %_ZN4llvm9StringRefC2EPKc.exit.i53

_ZN4llvm9StringRefC2EPKc.exit.i53:                ; preds = %_ZN5clang7cxindex6Logger9getEnvVarEv.exit.i51
  %i.bn = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bm) #38
  %.not.i7.i54 = icmp eq i64 %i.bn, 1
  br i1 %.not.i7.i54, label %bb.ab, label %_ZN5clang7cxindex6Logger21isStackTracingEnabledEv.exit58

bb.ab:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i53
  %lhsc.i56 = load i8, ptr %i.bm, align 1
  %i.bo = icmp eq i8 %lhsc.i56, 50
  br label %_ZN5clang7cxindex6Logger21isStackTracingEnabledEv.exit58

_ZN5clang7cxindex6Logger21isStackTracingEnabledEv.exit58: ; preds = %_ZN5clang7cxindex6Logger9getEnvVarEv.exit.i51, %_ZN4llvm9StringRefC2EPKc.exit.i53, %bb.ab
  %spec.select.i55 = phi i1 [ false, %_ZN5clang7cxindex6Logger9getEnvVarEv.exit.i51 ], [ %i.bo, %bb.ab ], [ false, %_ZN4llvm9StringRefC2EPKc.exit.i53 ]
  %i.bp = load atomic i8, ptr @_ZGVZN5clang7cxindex6Logger9getEnvVarEvE10sCachedVar acquire, align 8, !noalias !2225
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %bb.ac, label %_ZN5clang7cxindex6Logger16isLoggingEnabledEv.exit.i59, !prof !1107

bb.ac:                                            ; preds = %_ZN5clang7cxindex6Logger21isStackTracingEnabledEv.exit58
  %i.br = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5clang7cxindex6Logger9getEnvVarEvE10sCachedVar) #38, !noalias !2225
  %.not.i.i.i62 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i.i62, label %_ZN5clang7cxindex6Logger16isLoggingEnabledEv.exit.i59, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bs = tail call ptr @getenv(ptr noundef nonnull @.str.365) #38, !noalias !2225
  store ptr %i.bs, ptr @_ZZN5clang7cxindex6Logger9getEnvVarEvE10sCachedVar, align 8, !tbaa !1236, !noalias !2225
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5clang7cxindex6Logger9getEnvVarEvE10sCachedVar) #38, !noalias !2225
  br label %_ZN5clang7cxindex6Logger16isLoggingEnabledEv.exit.i59

_ZN5clang7cxindex6Logger16isLoggingEnabledEv.exit.i59: ; preds = %bb.ad, %bb.ac, %_ZN5clang7cxindex6Logger21isStackTracingEnabledEv.exit58
  %i.bt = load ptr, ptr @_ZZN5clang7cxindex6Logger9getEnvVarEvE10sCachedVar, align 8, !tbaa !1236, !noalias !2225
  %.not.i60 = icmp eq ptr %i.bt, null
  br i1 %.not.i60, label %_ZN4llvm18IntrusiveRefCntPtrIN5clang7cxindex6LoggerEED2Ev.exit67, label %bb.ae

bb.ae:                                            ; preds = %_ZN5clang7cxindex6Logger16isLoggingEnabledEv.exit.i59
  %i.bu = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #37, !noalias !2225 ; 12 uses
  tail call void @_ZN5clang7cxindex6LoggerC2EN4llvm9StringRefEb(ptr noundef nonnull align 8 dereferenceable(192) %i.bu, ptr nonnull @__func__.clang_annotateTokens, i64 20, i1 noundef zeroext %spec.select.i55), !noalias !2225
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !1238, !noalias !2225
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !1238, !noalias !2225
  %i.bx = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZN5clang7cxindex6LoggerlsEP21CXTranslationUnitImpl(ptr noundef nonnull align 8 dereferenceable(192) %i.bu, ptr noundef nonnull %0) ; 0 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 168 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1243 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 160
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1242
  %.not.i.i64 = icmp ult ptr %i.bz, %i.cb
  br i1 %.not.i.i64, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 136
  %i.cd = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.cc, i8 noundef zeroext 32) #38 ; 0 uses
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  store ptr %i.ce, ptr %i.by, align 8, !tbaa !1243
  store i8 32, ptr %i.bz, align 1, !tbaa !82
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @clang_getTokenLocation(ptr dead_on_unwind nonnull writable sret(%struct.CXSourceLocation) align 8 %4, ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.CXToken) align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.cf = add i32 %2, -1
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.cg
  call void @clang_getTokenLocation(ptr dead_on_unwind nonnull writable sret(%struct.CXSourceLocation) align 8 %5, ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.CXToken) align 8 %i.ch)
  call void @clang_getRange(ptr dead_on_unwind nonnull writable sret(%struct.CXSourceRange) align 8 %6, ptr noundef nonnull byval(%struct.CXSourceLocation) align 8 %4, ptr noundef nonnull byval(%struct.CXSourceLocation) align 8 %5) #38
  %i.ci = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN5clang7cxindex6LoggerlsE13CXSourceRange(ptr noundef nonnull align 8 dereferenceable(192) %i.bu, ptr noundef nonnull byval(%struct.CXSourceRange) align 8 %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %i.cj = load i32, ptr %i.bu, align 8, !tbaa !1238
  %i.ck = add i32 %i.cj, -1                       ; 2 uses
  store i32 %i.ck, ptr %i.bu, align 8, !tbaa !1238
  %.not.i.i.i.i66 = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i.i.i66, label %bb.ai, label %_ZN4llvm18IntrusiveRefCntPtrIN5clang7cxindex6LoggerEED2Ev.exit67

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN5clang7cxindex6LoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.bu) #38
  call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %i.bu, i64 noundef 192) #39
  br label %_ZN4llvm18IntrusiveRefCntPtrIN5clang7cxindex6LoggerEED2Ev.exit67

_ZN4llvm18IntrusiveRefCntPtrIN5clang7cxindex6LoggerEED2Ev.exit67: ; preds = %_ZN5clang7cxindex6Logger16isLoggingEnabledEv.exit.i59, %bb.ah, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  call void @_ZN5clang8cxcursor19MakeCXCursorInvalidE12CXCursorKindP21CXTranslationUnitImpl(ptr dead_on_unwind nonnull writable sret(%struct.CXCursor) align 8 %7, i32 noundef 70, ptr noundef null) #38
  %xtraiter = and i32 %2, 3                       ; 3 uses
  %i.cl = icmp ult i32 %2, 4
  br i1 %i.cl, label %.epil.preheader, label %_ZN4llvm18IntrusiveRefCntPtrIN5clang7cxindex6LoggerEED2Ev.exit67.new

_ZN4llvm18IntrusiveRefCntPtrIN5clang7cxindex6LoggerEED2Ev.exit67.new: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIN5clang7cxindex6LoggerEED2Ev.exit67
  %unroll_iter = and i32 %2, -4
  br label %bb.ak

_ZN5clang4cxtuL10getASTUnitEP21CXTranslationUnitImpl.exit.unr-lcssa: ; preds = %bb.ak
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5clang4cxtuL10getASTUnitEP21CXTranslationUnitImpl.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5clang4cxtuL10getASTUnitEP21CXTranslationUnitImpl.exit.unr-lcssa, %_ZN4llvm18IntrusiveRefCntPtrIN5clang7cxindex6LoggerEED2Ev.exit67
  %indvars.iv.epil.init = phi i64 [ 0, %_ZN4llvm18IntrusiveRefCntPtrIN5clang7cxindex6LoggerEED2Ev.exit67 ], [ %indvars.iv.next.3, %_ZN5clang4cxtuL10getASTUnitEP21CXTranslationUnitImpl.exit.unr-lcssa ]
  %lcmp.mod118 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod118)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.aj ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.aj ]
  %i.cm = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %indvars.iv.epil
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !117
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5clang4cxtuL10getASTUnitEP21CXTranslationUnitImpl.exit, label %bb.aj, !llvm.loop !2221

_ZN5clang4cxtuL10getASTUnitEP21CXTranslationUnitImpl.exit: ; preds = %bb.aj, %_ZN5clang4cxtuL10getASTUnitEP21CXTranslationUnitImpl.exit.unr-lcssa
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !45 ; 3 uses
  %.not30 = icmp eq ptr %i.co, null
  br i1 %.not30, label %bb.ap, label %bb.al

bb.ak:                                            ; preds = %bb.ak, %_ZN4llvm18IntrusiveRefCntPtrIN5clang7cxindex6LoggerEED2Ev.exit67.new
  %indvars.iv = phi i64 [ 0, %_ZN4llvm18IntrusiveRefCntPtrIN5clang7cxindex6LoggerEED2Ev.exit67.new ], [ %indvars.iv.next.3, %bb.ak ] ; 5 uses
  %niter = phi i32 [ 0, %_ZN4llvm18IntrusiveRefCntPtrIN5clang7cxindex6LoggerEED2Ev.exit67.new ], [ %niter.next.3, %bb.ak ]
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cp, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !117
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %indvars.iv
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !117
  %i.cs = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %indvars.iv
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !117
  %i.cu = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %indvars.iv
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !117
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5clang4cxtuL10getASTUnitEP21CXTranslationUnitImpl.exit.unr-lcssa, label %bb.ak, !llvm.loop !2222

bb.al:                                            ; preds = %_ZN5clang4cxtuL10getASTUnitEP21CXTranslationUnitImpl.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 2096 ; 2 uses
  call void @_ZN5clang7ASTUnit16ConcurrencyState5startEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cw) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  store ptr %0, ptr %8, align 8, !tbaa !1446
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.co, ptr %i.cx, align 8, !tbaa !1447
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %1, ptr %i.cy, align 8, !tbaa !1448
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 %2, ptr %i.cz, align 8, !tbaa !1449
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %3, ptr %i.da, align 8, !tbaa !1450
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  call void @_ZN4llvm20CrashRecoveryContextC1Ev(ptr noundef nonnull align 8 dereferenceable(21) %9) #38
  %i.db = ptrtoint ptr %8 to i64                  ; 2 uses
  %i.dc = load i32, ptr @_ZL21SafetyStackThreadSize, align 4, !tbaa !84 ; 3 uses
  %i.dd = shl i32 %i.dc, 1                        ; 2 uses
  %.not.i69 = icmp eq i32 %i.dd, 0
  br i1 %.not.i69, label %bb.am, label %.thread.i

bb.am:                                            ; preds = %bb.al
  %.not11.i = icmp eq i32 %i.dc, 0
  br i1 %.not11.i, label %.split, label %.thread.i

.thread.i:                                        ; preds = %bb.am, %bb.al
  %.0915.i = phi i32 [ %i.dc, %bb.am ], [ %i.dd, %bb.al ]
  %i.de = call ptr @getenv(ptr noundef nonnull @.str.347) #38
  %.not12.i = icmp eq ptr %i.de, null
  br i1 %.not12.i, label %_ZN5clang9RunSafelyERN4llvm20CrashRecoveryContextENS0_12function_refIFvvEEEj.exit, label %.split

.split:                                           ; preds = %.thread.i, %bb.am
  %i.df = call noundef zeroext i1 @_ZN4llvm20CrashRecoveryContext9RunSafelyENS_12function_refIFvvEEE(ptr noundef nonnull align 8 dereferenceable(21) %9, ptr nonnull @"_ZN4llvm12function_refIFvvEE11callback_fnIZ20clang_annotateTokensE3$_0EEvl", i64 %i.db) #38
  br i1 %i.df, label %bb.ao, label %bb.an

_ZN5clang9RunSafelyERN4llvm20CrashRecoveryContextENS0_12function_refIFvvEEEj.exit: ; preds = %.thread.i
  %i.dg = call noundef zeroext i1 @_ZN4llvm20CrashRecoveryContext17RunSafelyOnThreadENS_12function_refIFvvEEEj(ptr noundef nonnull align 8 dereferenceable(21) %9, ptr nonnull @"_ZN4llvm12function_refIFvvEE11callback_fnIZ20clang_annotateTokensE3$_0EEvl", i64 %i.db, i32 noundef %.0915.i) #38
  br i1 %i.dg, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.split, %_ZN5clang9RunSafelyERN4llvm20CrashRecoveryContextENS0_12function_refIFvvEEEj.exit
  %i.dh = load ptr, ptr @stderr, align 8, !tbaa !1283
  %fwrite = call i64 @fwrite(ptr nonnull @.str.331, i64 49, i64 1, ptr %i.dh) #43 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %.split, %bb.an, %_ZN5clang9RunSafelyERN4llvm20CrashRecoveryContextENS0_12function_refIFvvEEEj.exit
  call void @_ZN4llvm20CrashRecoveryContextD1Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(21) %9) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  call void @_ZN5clang7ASTUnit16ConcurrencyState6finishEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cw) #38
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN5clang4cxtuL10getASTUnitEP21CXTranslationUnitImpl.exit, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  br label %_ZN4llvm18IntrusiveRefCntPtrIN5clang7cxindex6LoggerEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIN5clang7cxindex6LoggerEED2Ev.exit: ; preds = %_ZN5clang7cxindex6Logger16isLoggingEnabledEv.exit.i, %bb.x, %bb.w, %_ZN5clang7cxindex6Logger16isLoggingEnabledEv.exit.i41, %bb.l, %bb.k, %bb.ap
  ret void
}

declare void @clang_getRange(ptr dead_on_unwind writable sret(%struct.CXSourceRange) align 8, ptr noundef byval(%struct.CXSourceLocation) align 8, ptr noundef byval(%struct.CXSourceLocation) align 8) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN5clang24GetSafetyThreadStackSizeEv() local_unnamed_addr #21 {
bb.a:
  %i.a = load i32, ptr @_ZL21SafetyStackThreadSize, align 4, !tbaa !84
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @clang_Cursor_getGCCAssemblyTemplate(ptr nofree noundef readonly byval(%struct.CXCursor) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !111
  %i.b = add i32 %i.a, -334
  %i.c = icmp ult i32 %i.b, -134
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { ptr, i32 } @_ZN5clang8cxstring11createEmptyEv() #38
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZN5clang8cxcursor13getCursorStmtE8CXCursor(ptr noundef nonnull byval(%struct.CXCursor) align 8 %0) #38 ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i16, ptr %i.e, align 8
  %i.g = and i16 %i.f, 511
  %i.h = icmp eq i16 %i.g, 266
  br i1 %i.h, label %_ZN4llvm16dyn_cast_or_nullIN5clang10GCCAsmStmtEKNS1_4StmtEEEDaPT0_.exit, label %bb.e

_ZN4llvm16dyn_cast_or_nullIN5clang10GCCAsmStmtEKNS1_4StmtEEEDaPT0_.exit: ; preds = %bb.d
  %i.i = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZN5clang8cxcursor16getCursorContextE8CXCursor(ptr noundef nonnull byval(%struct.CXCursor) align 8 %0) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  call void @_ZNK5clang10GCCAsmStmt17generateAsmStringB5cxx11ERKNS_10ASTContextE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(84) %i.e, ptr noundef nonnull align 8 dereferenceable(23904) %i.i) #38
  %i.j = load ptr, ptr %1, align 8, !tbaa !81
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1231
  %i.m = call { ptr, i32 } @_ZN5clang8cxstring9createDupEN4llvm9StringRefE(ptr %i.j, i64 %i.l) #38
  %i.n = load ptr, ptr %1, align 8, !tbaa !81     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang10GCCAsmStmtEKNS1_4StmtEEEDaPT0_.exit
  %i.q = load i64, ptr %i.o, align 8, !tbaa !82
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #39
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang10GCCAsmStmtEKNS1_4StmtEEEDaPT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = tail call { ptr, i32 } @_ZN5clang8cxstring11createEmptyEv() #38
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %bb.e, %bb.b
  %.pn = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %i.d, %bb.b ]
  ret { ptr, i32 } %.pn
}

declare void @_ZNK5clang10GCCAsmStmt17generateAsmStringB5cxx11ERKNS_10ASTContextE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(23904)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i32 0, 2) i32 @clang_Cursor_isGCCAssemblyHasGoto(ptr nofree noundef readonly byval(%struct.CXCursor) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !111
  %i.b = add i32 %i.a, -334
  %i.c = icmp ult i32 %i.b, -134
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN5clang8cxcursor13getCursorStmtE8CXCursor(ptr noundef nonnull byval(%struct.CXCursor) align 8 %0) #38 ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i16, ptr %i.d, align 8
  %i.f = and i16 %i.e, 511
  %i.g = icmp eq i16 %i.f, 266
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.i = load i32, ptr %i.h, align 8, !tbaa !2227
  %i.j = icmp ne i32 %i.i, 0
  %i.k = zext i1 %i.j to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %i.k, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @clang_Cursor_getGCCAssemblyNumOutputs(ptr nofree noundef readonly byval(%struct.CXCursor) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !111
  %i.b = add i32 %i.a, -334
  %i.c = icmp ult i32 %i.b, -134
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN5clang8cxcursor13getCursorStmtE8CXCursor(ptr noundef nonnull byval(%struct.CXCursor) align 8 %0) #38 ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i16, ptr %i.d, align 8
  %i.f = and i16 %i.e, 511
  %i.g = icmp eq i16 %i.f, 266
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1453
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %i.i, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @clang_Cursor_getGCCAssemblyNumInputs(ptr nofree noundef readonly byval(%struct.CXCursor) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !111
  %i.b = add i32 %i.a, -334
  %i.c = icmp ult i32 %i.b, -134
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN5clang8cxcursor13getCursorStmtE8CXCursor(ptr noundef nonnull byval(%struct.CXCursor) align 8 %0) #38 ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.e, label %bb.c
end_hunk_0
