Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/js-inlining-heuristic?download=true
inline.NumInlined: 898
inline.NumDeleted: 423
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZStlsIN2v88internal12StdoutStreamEPKcEOT_S6_RKT0_:bb.a
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h) #16
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #16
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef %i.i) #16 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12StdoutStreamC1Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  tail call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i8 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 313
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr @stdout, align 8
  tail call void @_ZN2v88internal8OFStreamC2EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN2v88internal12StdoutStreamE, i64 8), ptr noundef %i.f) #16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = tail call noundef ptr @_ZN2v88internal12StdoutStream14GetStdoutMutexEv() #16 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #16
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12StdoutStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN2v88internal12StdoutStreamD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #16
  br label %_ZN2v88internal12StdoutStreamD2Ev.exit

_ZN2v88internal12StdoutStreamD2Ev.exit:           ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #16
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #16
  ret void
}

declare noundef i32 @_ZNK2v88internal8compiler16BytecodeArrayRef6lengthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare ptr @_ZNK2v88internal8compiler13JSFunctionRef4codeEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK2v88internal8compiler7CodeRef22GetInlinedBytecodeSizeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler16CallParametersOfEPKNS1_8OperatorE(ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler21ConstructParametersOfEPKNS1_8OperatorE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal8compiler19JSInliningHeuristic15InlineCandidateERKNS2_9CandidateEb(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(109) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.std::array.665", align 8   ; 5 uses
  %4 = alloca %"struct.std::array.666", align 8   ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.v8::internal::compiler::BytecodeArrayRef", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::compiler::BytecodeArrayRef", align 8 ; 4 uses
  %i.b = alloca [5 x ptr], align 16               ; 9 uses
  %i.c = alloca [4 x ptr], align 16               ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca [5 x ptr], align 16               ; 7 uses
  %7 = alloca %"class.v8::internal::compiler::BytecodeArrayRef", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::compiler::OptionalRef<v8::internal::compiler::BytecodeArrayRef>::ArrowOperatorHelper", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  store i32 %i.g, ptr %i.a, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.i = load ptr, ptr %i.h, align 8              ; 7 uses
  %i.j = icmp eq i32 %i.g, 1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = tail call ptr @_ZN2v88internal8compiler9JSInliner12ReduceJSCallEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(88) %i.k, ptr noundef %i.i) #16 ; 3 uses
  %.not65 = icmp eq ptr %i.l, null
  br i1 %.not65, label %bb.ab, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br i1 %2, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZNK2v88internal8compiler11OptionalRefINS1_16BytecodeArrayRefEE5valueEv.exit, !prof !9

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.31) #15
  unreachable

_ZNK2v88internal8compiler11OptionalRefINS1_16BytecodeArrayRefEE5valueEv.exit: ; preds = %bb.d
  store ptr %i.n, ptr %5, align 8
  %i.o = call noundef i32 @_ZNK2v88internal8compiler16BytecodeArrayRef6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = add nsw i32 %i.q, %i.o
  store i32 %i.r, ptr %i.p, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.ab

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.s = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not.i.i.i.i56 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i56, label %bb.g, label %_ZNK2v88internal8compiler11OptionalRefINS1_16BytecodeArrayRefEE5valueEv.exit57, !prof !9

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.31) #15
  unreachable

_ZNK2v88internal8compiler11OptionalRefINS1_16BytecodeArrayRefEE5valueEv.exit57: ; preds = %bb.f
  store ptr %i.s, ptr %6, align 8
  %i.t = call noundef i32 @_ZNK2v88internal8compiler16BytecodeArrayRef6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = add nsw i32 %i.v, %i.t
  store i32 %i.w, ptr %i.u, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.ab

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.x = load ptr, ptr %i.i, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %bb.j, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.36) #15
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 20 ; 4 uses
  %i.ac = load i32, ptr %i.ab, align 4            ; 2 uses
  %i.ad = and i32 %i.ac, 251658240
  %.not.i.i.i = icmp eq i32 %i.ad, 251658240
  %i.ae = ptrtoint ptr %i.i to i64
  %i.af = add i64 %i.ae, 32
  %i.ag = inttoptr i64 %i.af to ptr               ; 8 uses
  br i1 %.not.i.i.i, label %_ZNK2v88internal8compiler4Node10InputCountEv.exit, label %_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread

_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread: ; preds = %bb.j
  %i.ah = lshr i32 %i.ac, 24
  %i.ai = and i32 %i.ah, 15
  br label %bb.l

_ZNK2v88internal8compiler4Node10InputCountEv.exit: ; preds = %bb.j
  %i.aj = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = add i64 %i.ak, 16
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ao = load i32, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, -1
  br i1 %i.ap, label %bb.l, label %bb.k, !prof !23

bb.k:                                             ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.50) #15
  unreachable

bb.l:                                             ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread, %_ZNK2v88internal8compiler4Node10InputCountEv.exit
  %.in105 = phi ptr [ %i.ag, %_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread ], [ %i.am, %_ZNK2v88internal8compiler4Node10InputCountEv.exit ]
  %i.aq = phi i32 [ %i.ai, %_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread ], [ %i.ao, %_ZNK2v88internal8compiler4Node10InputCountEv.exit ] ; 6 uses
  %i.ar = load ptr, ptr %.in105, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 9 uses
  %.in.in = load ptr, ptr %i.as, align 8
  %.in = load ptr, ptr %.in.in, align 8
  %i.at = load ptr, ptr %.in, align 8             ; 3 uses
  %i.au = zext nneg i32 %i.aq to i64
  %i.av = shl nuw nsw i64 %i.au, 3                ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.ba = sub i64 %i.ax, %i.az
  %i.bb = icmp ugt i64 %i.av, %i.ba
  br i1 %i.bb, label %bb.m, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit, !prof !9

bb.m:                                             ; preds = %bb.l
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.at, i64 noundef %i.av) #16
  %.pre.i.i = load i64, ptr %i.ay, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit: ; preds = %bb.l, %bb.m
  %i.bc = phi i64 [ %.pre.i.i, %bb.m ], [ %i.az, %bb.l ] ; 2 uses
  %i.bd = inttoptr i64 %i.bc to ptr               ; 4 uses
  %i.be = add i64 %i.bc, %i.av
  store i64 %i.be, ptr %i.ay, align 8
  %.not75 = icmp eq i32 %i.aq, 0
  br i1 %.not75, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit
  %wide.trip.count = zext nneg i32 %i.aq to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bf = icmp eq i32 %i.aq, 1
  br i1 %i.bf, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod108 = trunc i32 %i.aq to i1
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %i.bg = load i32, ptr %i.ab, align 4
  %i.bh = and i32 %i.bg, 251658240
  %.not.i.i.epil = icmp eq i32 %i.bh, 251658240
  br i1 %.not.i.i.epil, label %bb.n, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.epil

bb.n:                                             ; preds = %.lr.ph.epil.preheader
  %i.bi = load ptr, ptr %i.ag, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = add i64 %i.bj, 16
  %i.bl = inttoptr i64 %i.bk to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.epil

_ZNK2v88internal8compiler4Node7InputAtEi.exit.epil: ; preds = %bb.n, %.lr.ph.epil.preheader
  %.sink.i.i.epil = phi ptr [ %i.bl, %bb.n ], [ %i.ag, %.lr.ph.epil.preheader ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i.epil, i64 %indvars.iv.epil.init
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.epil.init
  store ptr %i.bn, ptr %i.bo, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit.epil, %._crit_edge.loopexit.unr-lcssa, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit
  call void @_ZN2v88internal8compiler19JSInliningHeuristic21CreateOrReuseDispatchEPNS1_4NodeES4_RKNS2_9CandidateEPS4_S8_S8_iPi(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull %i.i, ptr noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(109) %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef %i.bd, i32 noundef %i.aq, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store ptr null, ptr %i.d, align 8
  %i.bp = call noundef zeroext i1 @_ZN2v88internal8compiler14NodeProperties17IsExceptionalCallEPNS1_4NodeEPS4_(ptr noundef nonnull %i.i, ptr noundef nonnull %i.d) #16
  %.pre = load i32, ptr %i.a, align 4             ; 16 uses
  br i1 %i.bp, label %bb.q, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre93 = sext i32 %.pre to i64
  %.pre94 = add nsw i32 %.pre, 1
  br label %bb.s

.lr.ph:                                           ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit.1, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.1 ]
  %i.bq = load i32, ptr %i.ab, align 4
  %i.br = and i32 %i.bq, 251658240
  %.not.i.i = icmp eq i32 %i.br, 251658240
  br i1 %.not.i.i, label %bb.o, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

bb.o:                                             ; preds = %.lr.ph
  %i.bs = load ptr, ptr %i.ag, align 8
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = add i64 %i.bt, 16
  %i.bv = inttoptr i64 %i.bu to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

_ZNK2v88internal8compiler4Node7InputAtEi.exit:    ; preds = %.lr.ph, %bb.o
  %.sink.i.i = phi ptr [ %i.bv, %bb.o ], [ %i.ag, %.lr.ph ]
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %indvars.iv
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv
  store ptr %i.bx, ptr %i.by, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bz = load i32, ptr %i.ab, align 4
  %i.ca = and i32 %i.bz, 251658240
  %.not.i.i.1 = icmp eq i32 %i.ca, 251658240
  br i1 %.not.i.i.1, label %bb.p, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.1

bb.p:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  %i.cb = load ptr, ptr %i.ag, align 8
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = add i64 %i.cc, 16
  %i.ce = inttoptr i64 %i.cd to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.1

_ZNK2v88internal8compiler4Node7InputAtEi.exit.1:  ; preds = %bb.p, %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  %.sink.i.i.1 = phi ptr [ %i.ce, %bb.p ], [ %i.ag, %_ZNK2v88internal8compiler4Node7InputAtEi.exit ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i.1, i64 %indvars.iv.next
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next
  store ptr %i.cg, ptr %i.ch, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !19

bb.q:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.ci = icmp sgt i32 %.pre, 0
  br i1 %i.ci, label %.lr.ph69, label %._crit_edge70

.lr.ph69:                                         ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %wide.trip.count81 = zext nneg i32 %.pre to i64
  br label %bb.r

._crit_edge70:                                    ; preds = %bb.r, %bb.q
  %i.ck = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder5MergeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i32 noundef %.pre) #16
  %i.cp = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.cl, ptr noundef %i.co, i32 noundef %.pre, ptr noundef nonnull %i.e, i1 noundef zeroext false) #16 ; 2 uses
  %i.cq = sext i32 %.pre to i64                   ; 2 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.cq
  store ptr %i.cp, ptr %i.cr, align 8
  %i.cs = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9EffectPhiEi(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i32 noundef %.pre) #16
  %i.cx = add nsw i32 %.pre, 1                    ; 3 uses
  %i.cy = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.ct, ptr noundef %i.cw, i32 noundef %i.cx, ptr noundef nonnull %i.e, i1 noundef zeroext false) #16
  %i.cz = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder3PhiENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i8 noundef zeroext 9, i32 noundef %.pre) #16
  %i.de = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.da, ptr noundef %i.dd, i32 noundef %i.cx, ptr noundef nonnull %i.e, i1 noundef zeroext false) #16
  %i.df = load ptr, ptr %i.d, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef %i.df, ptr noundef %i.de, ptr noundef %i.cy, ptr noundef %i.cp) #16, !inline_history !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph69, %bb.r
  %indvars.iv78 = phi i64 [ 0, %.lr.ph69 ], [ %indvars.iv.next79, %bb.r ] ; 4 uses
  %i.dl = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9IfSuccessEv(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #16
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv78
  %i.dr = load ptr, ptr %i.dq, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %i.dr, ptr %4, align 8
  %i.ds = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.dm, ptr noundef %i.dp, i32 noundef 1, ptr noundef nonnull %4, i1 noundef zeroext false) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv78
  store ptr %i.ds, ptr %i.dt, align 8
  %i.du = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder11IfExceptionEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %i.dr, ptr %3, align 8
  store ptr %i.dr, ptr %i.cj, align 8
  %i.dz = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.dv, ptr noundef %i.dy, i32 noundef 2, ptr noundef nonnull %3, i1 noundef zeroext false) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv78
  store ptr %i.dz, ptr %i.ea, align 8
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %._crit_edge70, label %bb.r, !llvm.loop !21

bb.s:                                             ; preds = %._crit_edge._crit_edge, %._crit_edge70
  %.pre-phi95 = phi i32 [ %.pre94, %._crit_edge._crit_edge ], [ %i.cx, %._crit_edge70 ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre93, %._crit_edge._crit_edge ], [ %i.cq, %._crit_edge70 ]
  %i.eb = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder5MergeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i32 noundef %.pre) #16
  %i.eg = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.ec, ptr noundef %i.ef, i32 noundef %.pre, ptr noundef nonnull %i.c, i1 noundef zeroext false) #16 ; 2 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.pre-phi
  store ptr %i.eg, ptr %i.eh, align 8
  %i.ei = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9EffectPhiEi(ptr noundef nonnull align 8 dereferenceable(16) %i.el, i32 noundef %.pre) #16
  %i.en = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.ej, ptr noundef %i.em, i32 noundef %.pre-phi95, ptr noundef nonnull %i.b, i1 noundef zeroext false) #16
  %i.eo = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder3PhiENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(16) %i.er, i8 noundef zeroext 9, i32 noundef %.pre) #16
  %i.et = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.ep, ptr noundef %i.es, i32 noundef %.pre-phi95, ptr noundef nonnull %i.b, i1 noundef zeroext false) #16 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8            ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef nonnull %i.i, ptr noundef %i.et, ptr noundef %i.en, ptr noundef %i.eg) #16, !inline_history !20
  %i.ez = icmp sgt i32 %.pre, 0
  br i1 %i.ez, label %.lr.ph73, label %.critedge

.lr.ph73:                                         ; preds = %bb.s
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
end_hunk_0
