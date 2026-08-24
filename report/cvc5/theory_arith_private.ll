Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/theory_arith_private?download=true
inline.NumInlined: 11214
inline.NumDeleted: 3243
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate19attemptSolveIntegerENS1_6Theory6EffortEb:bb.a
  %i.by = mul i32 %i.b, %i.b
  %i.bz = add nuw nsw i32 %i.by, 1
  %i.ca = add i32 %i.bz, %i.bx
  %i.cb = uitofp i32 %i.ca to double
  %i.cc = fdiv double %i.bv, %i.cb
  %i.cd = tail call noundef nonnull align 8 dereferenceable(2544) ptr @_ZN4cvc58internal6Random9getRandomEv()
  %i.ce = tail call noundef zeroext i1 @_ZN4cvc58internal6Random12pickWithProbEd(ptr noundef nonnull align 8 dereferenceable(2544) %i.cd, double noundef %i.cc)
  br i1 %i.ce, label %.thread, label %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate23getSolveIntegerResourceEv.exit

.thread:                                          ; preds = %bb.s
  %i.cf = tail call noundef zeroext i1 @_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate23getSolveIntegerResourceEv(ptr noundef nonnull align 8 dereferenceable(9440) %0)
  br label %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate23getSolveIntegerResourceEv.exit

_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate23getSolveIntegerResourceEv.exit: ; preds = %bb.g, %bb.r, %bb.e, %_ZNK4cvc58internal6theory5arith6linear18TheoryArithPrivate20nextIntegerViolationEb.exit.i, %bb.s, %.thread, %_ZN4cvc57context3CDOIiEaSERKi.exit.i, %bb.h, %bb.q, %bb.c, %bb.b, %bb.a, %bb.p, %_ZN4cvc57context3CDOIiEaSERKi.exit
  %.1 = phi i1 [ false, %bb.q ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ false, %_ZN4cvc57context3CDOIiEaSERKi.exit ], [ %i.bi, %bb.p ], [ false, %_ZN4cvc57context3CDOIiEaSERKi.exit.i ], [ %i.cf, %.thread ], [ false, %bb.r ], [ true, %bb.h ], [ false, %bb.s ], [ false, %_ZNK4cvc58internal6theory5arith6linear18TheoryArithPrivate20nextIntegerViolationEb.exit.i ], [ false, %bb.e ], [ false, %bb.g ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZN4cvc58internal6theory5arith6linear18ApproximateSimplex7enabledEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(2544) ptr @_ZN4cvc58internal6Random9getRandomEv() local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr @_ZGVZN4cvc58internal6Random9getRandomEvE9s_current, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !1550

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4cvc58internal6RandomC1Em(ptr noundef nonnull align 8 dereferenceable(2544) @_ZZN4cvc58internal6Random9getRandomEvE9s_current, i64 noundef 0)
  %i.c = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZN4cvc58internal6RandomD1Ev, ptr nonnull @_ZZN4cvc58internal6Random9getRandomEvE9s_current, ptr nonnull @__dso_handle) #27 ; 0 uses
  store i8 1, ptr @_ZGVZN4cvc58internal6Random9getRandomEvE9s_current, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN4cvc58internal6Random9getRandomEvE9s_current)
  ret ptr %i.d
}

declare noundef zeroext i1 @_ZN4cvc58internal6Random12pickWithProbEd(ptr noundef nonnull align 8 dereferenceable(2544), double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate9replayLogEPNS3_18ApproximateSimplexE(ptr noundef nonnull align 8 dereferenceable(9440) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::CodeTimer", align 8 ; 6 uses
  %3 = alloca %"class.cvc5::context::Context::ScopedPush", align 8 ; 7 uses
  %4 = alloca %"class.std::vector.764", align 8   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9288
  call void @_ZN4cvc58internal9CodeTimerC1ERNS0_9TimerStatEb(ptr noundef nonnull align 8 dereferenceable(9) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9416
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal7IntStatppEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.b unwind label %bb.l       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1296 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1247 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1247
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %i.o = icmp ne ptr %i.h, null
  %.neg.i.i = sext i1 %i.o to i64
  %i.p = add nsw i64 %i.n, %.neg.i.i
  %i.q = shl nsw i64 %i.p, 6
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !1551
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1552
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  %i.y = add nsw i64 %i.q, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1553
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !1551
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3
  %i.ag = add nsw i64 %i.y, %i.af                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8624 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !740 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.c, label %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate10getTreeLogEv.exit

bb.c:                                             ; preds = %bb.b
  %i.ak = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #34
          to label %.noexc unwind label %bb.m     ; 4 uses

.noexc:                                           ; preds = %bb.c
  invoke void @_ZN4cvc58internal6theory5arith6linear7TreeLogC1Ev(ptr noundef nonnull align 8 dereferenceable(133) %i.ak)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !740
  br label %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate10getTreeLogEv.exit

bb.e:                                             ; preds = %.noexc
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 136) #35
  br label %.body

_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate10getTreeLogEv.exit: ; preds = %bb.d, %bb.b
  %i.am = phi ptr [ %i.ak, %bb.d ], [ %i.ai, %bb.b ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 640
  store i8 0, ptr %i.an, align 8, !tbaa !1554
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.ao = invoke noundef ptr @_ZNK4cvc58internal6EnvObj7contextEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.f unwind label %bb.n       ; 3 uses

bb.f:                                             ; preds = %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate10getTreeLogEv.exit
  store ptr %i.ao, ptr %3, align 8, !tbaa !1442
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !622
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !624
  store ptr %i.at, ptr %i.ap, align 8, !tbaa !1444
  invoke void @_ZN4cvc57context7Context4pushEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ao)
          to label %_ZN4cvc57context7Context10ScopedPushC2EPS1_.exit unwind label %bb.n

_ZN4cvc57context7Context10ScopedPushC2EPS1_.exit: ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 5640
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !614 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !615
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !622
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !624
  %i.bb = icmp eq ptr %i.av, %i.ba
  br i1 %i.bb, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4cvc57context7Context10ScopedPushC2EPS1_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 5632
  invoke void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(41) %i.bc)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %_ZN4cvc57context7Context10ScopedPushC2EPS1_.exit, %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 5672
  store i8 0, ptr %i.bd, align 8, !tbaa !613
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.be = invoke noundef i32 @_ZNK4cvc58internal6theory5arith6linear7TreeLog9getRootIdEv(ptr noundef nonnull align 8 dereferenceable(133) %i.am)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate12replayLogRecEPNS3_18ApproximateSimplexEiPNS3_10ConstraintEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.764") align 8 %4, ptr noundef nonnull align 8 dereferenceable(9440) %0, ptr noundef %1, i32 noundef %i.be, ptr noundef null, i32 noundef 1)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.bf = load ptr, ptr %4, align 8, !tbaa !1555  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1555 ; 2 uses
  %i.bi = icmp eq ptr %i.bf, %i.bh
  br i1 %i.bi, label %bb.k, label %.lr.ph258

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 9336
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal7IntStatppEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bj)
          to label %bb.ab unwind label %bb.q      ; 0 uses

bb.l:                                             ; preds = %bb.a
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.c
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.f, %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit, %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate10getTreeLogEv.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.o:                                             ; preds = %bb.g
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.p:                                             ; preds = %bb.i, %bb.h
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.q:                                             ; preds = %bb.ac, %bb.k
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.lr.ph258:                                        ; preds = %bb.j
  %i.br = ptrtoint ptr %i.bh to i64
  %i.bs = ptrtoint ptr %i.bf to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = sdiv exact i64 %i.bt, 24
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4280
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4272
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 4312 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4320 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4328 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 4336 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.r

._crit_edge:                                      ; preds = %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13raiseConflictEPKNS3_10ConstraintENS1_11InferenceIdE.exit
  %.not = icmp eq i32 %.3, 0
  br i1 %.not, label %bb.ab, label %bb.z

bb.r:                                             ; preds = %.lr.ph258, %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13raiseConflictEPKNS3_10ConstraintENS1_11InferenceIdE.exit
  %.025257 = phi i64 [ 0, %.lr.ph258 ], [ %i.eg, %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13raiseConflictEPKNS3_10ConstraintENS1_11InferenceIdE.exit ] ; 2 uses
  %.026256 = phi i32 [ 0, %.lr.ph258 ], [ %.3, %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13raiseConflictEPKNS3_10ConstraintENS1_11InferenceIdE.exit ] ; 3 uses
  %i.cc = load ptr, ptr %4, align 8, !tbaa !1557
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %.025257 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1501 ; 3 uses
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !1499 ; 4 uses
  %.not259 = icmp eq ptr %i.cf, %i.cg
  br i1 %.not259, label %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13raiseConflictEPKNS3_10ConstraintENS1_11InferenceIdE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = ashr exact i64 %i.cj, 3
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13raiseConflictEPKNS3_10ConstraintENS1_11InferenceIdE.exit.thread
  %.0255 = phi i64 [ 0, %.lr.ph ], [ %i.ef, %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13raiseConflictEPKNS3_10ConstraintENS1_11InferenceIdE.exit.thread ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.0255
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !1260 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 88
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !1262
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 120
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !1267
  %.not248 = icmp eq i64 %i.cq, -1
  br i1 %.not248, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit158, label %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13raiseConflictEPKNS3_10ConstraintENS1_11InferenceIdE.exit.thread

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit158: ; preds = %bb.s
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.0255
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 88
  %i.ct = add i32 %.026256, 1
  %i.cu = getelementptr inbounds i8, ptr %i.cf, i64 -8 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !1260
  store ptr %i.cv, ptr %i.cr, align 8, !tbaa !1260
  store ptr %i.cu, ptr %i.ce, align 8, !tbaa !1501
  %i.cw = load ptr, ptr %i.cs, align 8, !tbaa !1262
  invoke void @_ZN4cvc58internal6theory5arith6linear10Constraint16impliedByIntHoleERKSt6vectorIPKS4_SaIS7_EEb(ptr noundef nonnull align 8 dereferenceable(145) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i1 noundef zeroext true)
          to label %bb.t unwind label %.loopexit

bb.t:                                             ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit158
  %i.cx = load ptr, ptr %i.bv, align 8, !tbaa !614 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !615
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !622
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !624
  %i.dd = icmp eq ptr %i.cx, %i.dc
  br i1 %i.dd, label %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(74) %i.bw)
          to label %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i unwind label %.loopexit

_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i: ; preds = %bb.u, %bb.t
  %i.de = load ptr, ptr %i.by, align 8, !tbaa !679 ; 6 uses
  %i.df = load ptr, ptr %i.bz, align 8, !tbaa !680
  %.not.i11.i = icmp eq ptr %i.de, %i.df
  br i1 %.not.i11.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i
  store ptr %i.cm, ptr %i.de, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i32 18, ptr %.sroa.5.0..sroa_idx, align 8
  %i.dg = load ptr, ptr %i.by, align 8, !tbaa !679
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store ptr %i.dh, ptr %i.by, align 8, !tbaa !679
  br label %.noexc159

bb.w:                                             ; preds = %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i
  %i.di = load ptr, ptr %i.bx, align 8, !tbaa !676 ; 5 uses
  %i.dj = ptrtoint ptr %i.de to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk                    ; 4 uses
  %i.dm = icmp eq i64 %i.dl, 9223372036854775792
  br i1 %i.dm, label %bb.x, label %_ZNKSt6vectorISt4pairIPKN4cvc58internal6theory5arith6linear10ConstraintENS3_11InferenceIdEESaISA_EE12_M_check_lenEmPKc.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.350) #37
          to label %.noexc191 unwind label %.loopexit.split-lp

.noexc191:                                        ; preds = %bb.x
  unreachable

_ZNKSt6vectorISt4pairIPKN4cvc58internal6theory5arith6linear10ConstraintENS3_11InferenceIdEESaISA_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.w
  %i.dn = ashr exact i64 %i.dl, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dn, i64 1)
  %i.do = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dn ; 2 uses
  %i.dp = icmp ult i64 %i.do, %i.dn
  %i.dq = call i64 @llvm.umin.i64(i64 %i.do, i64 576460752303423487)
  %i.dr = select i1 %i.dp, i64 576460752303423487, i64 %i.dq ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ds = shl nuw nsw i64 %i.dr, 4
  %i.dt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #34
          to label %.noexc192 unwind label %.loopexit ; 5 uses

.noexc192:                                        ; preds = %_ZNKSt6vectorISt4pairIPKN4cvc58internal6theory5arith6linear10ConstraintENS3_11InferenceIdEESaISA_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dl ; 2 uses
  store ptr %i.cm, ptr %i.du, align 8
  %.sroa.5.0..sroa_idx203 = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i32 18, ptr %.sroa.5.0..sroa_idx203, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.di, %i.de
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPKN4cvc58internal6theory5arith6linear10ConstraintENS3_11InferenceIdEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc192, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i.i ], [ %i.dt, %.noexc192 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.i ], [ %i.di, %.noexc192 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !1559
  %i.dv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dv, %i.de
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPKN4cvc58internal6theory5arith6linear10ConstraintENS3_11InferenceIdEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1242

_ZNSt6vectorISt4pairIPKN4cvc58internal6theory5arith6linear10ConstraintENS3_11InferenceIdEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc192
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dt, %.noexc192 ], [ %i.dw, %.lr.ph.i.i.i.i.i.i ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairIPKN4cvc58internal6theory5arith6linear10ConstraintENS3_11InferenceIdEESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt4pairIPKN4cvc58internal6theory5arith6linear10ConstraintENS3_11InferenceIdEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dl) #35
  br label %_ZNSt6vectorISt4pairIPKN4cvc58internal6theory5arith6linear10ConstraintENS3_11InferenceIdEESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIPKN4cvc58internal6theory5arith6linear10ConstraintENS3_11InferenceIdEESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i: ; preds = %bb.y, %_ZNSt6vectorISt4pairIPKN4cvc58internal6theory5arith6linear10ConstraintENS3_11InferenceIdEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i.i
  store ptr %i.dt, ptr %i.bx, align 8, !tbaa !676
  store ptr %i.dx, ptr %i.by, align 8, !tbaa !679
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %i.dr
  store ptr %i.dy, ptr %i.bz, align 8, !tbaa !680
  br label %.noexc159

.noexc159:                                        ; preds = %_ZNSt6vectorISt4pairIPKN4cvc58internal6theory5arith6linear10ConstraintENS3_11InferenceIdEESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i, %bb.v
  %i.dz = load i64, ptr %i.ca, align 8, !tbaa !677
  %i.ea = add i64 %i.dz, 1
  store i64 %i.ea, ptr %i.ca, align 8, !tbaa !677
  %i.eb = load ptr, ptr %i.cb, align 8, !tbaa !1237, !nonnull !371, !align !372 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 64
  %i.ee = load ptr, ptr %i.ed, align 8
  invoke void %i.ee(ptr noundef nonnull align 8 dereferenceable(160) %i.eb)
          to label %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13raiseConflictEPKNS3_10ConstraintENS1_11InferenceIdE.exit unwind label %.loopexit, !inline_history !1263

.loopexit:                                        ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit158, %.noexc159, %bb.u, %_ZNKSt6vectorISt4pairIPKN4cvc58internal6theory5arith6linear10ConstraintENS3_11InferenceIdEESaISA_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp:                               ; preds = %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13raiseConflictEPKNS3_10ConstraintENS1_11InferenceIdE.exit.thread: ; preds = %bb.s
  %i.ef = add nuw i64 %.0255, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ef, %i.ck
  br i1 %exitcond.not, label %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13raiseConflictEPKNS3_10ConstraintENS1_11InferenceIdE.exit, label %bb.s, !llvm.loop !1563

_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13raiseConflictEPKNS3_10ConstraintENS1_11InferenceIdE.exit: ; preds = %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13raiseConflictEPKNS3_10ConstraintENS1_11InferenceIdE.exit.thread, %bb.r, %.noexc159
  %.3 = phi i32 [ %i.ct, %.noexc159 ], [ %.026256, %bb.r ], [ %.026256, %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13raiseConflictEPKNS3_10ConstraintENS1_11InferenceIdE.exit.thread ] ; 2 uses
  %i.eg = add nuw i64 %.025257, 1                 ; 2 uses
  %exitcond264.not = icmp eq i64 %i.eg, %i.bu
  br i1 %exitcond264.not, label %._crit_edge, label %bb.r, !llvm.loop !1564

bb.z:                                             ; preds = %._crit_edge
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 9424
  %i.ei = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal7IntStatppEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eh)
          to label %bb.ab unwind label %bb.aa     ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ab:                                            ; preds = %._crit_edge, %bb.z, %bb.k
  %i.ek = load ptr, ptr %i.g, align 8, !tbaa !1247 ; 2 uses
  %i.el = load ptr, ptr %i.i, align 8, !tbaa !1247
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = ashr exact i64 %i.eo, 3
  %i.eq = icmp ne ptr %i.ek, null
  %.neg.i.i161 = sext i1 %i.eq to i64
  %i.er = add nsw i64 %i.ep, %.neg.i.i161
  %i.es = shl nsw i64 %i.er, 6
  %i.et = load ptr, ptr %i.e, align 8, !tbaa !1551
  %i.eu = load ptr, ptr %i.s, align 8, !tbaa !1552
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = ashr exact i64 %i.ex, 3
  %i.ez = add nsw i64 %i.es, %i.ey
  %i.fa = load ptr, ptr %i.z, align 8, !tbaa !1553
  %i.fb = load ptr, ptr %i.f, align 8, !tbaa !1551
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = ashr exact i64 %i.fe, 3
  %i.fg = add nsw i64 %i.ez, %i.ff
  %i.fh = icmp ugt i64 %i.fg, %i.ag
  br i1 %i.fh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZNSt5dequeIPN4cvc58internal6theory5arith6linear10ConstraintESaIS6_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef %i.ag)
          to label %bb.ad unwind label %bb.q

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 3, ptr %i.fi, align 8, !tbaa !383
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 4312
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !678
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 4320
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !678
  %i.fn = load ptr, ptr %4, align 8, !tbaa !1557  ; 3 uses
  %i.fo = load ptr, ptr %i.bg, align 8, !tbaa !1565 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fn, %i.fo
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ad, %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fv, %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i ], [ %i.fn, %bb.ad ] ; 3 uses
  %i.fp = load ptr, ptr %.05.i.i.i, align 8, !tbaa !1499 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !1500
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fp to i64
  %i.fu = sub i64 %i.fs, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.fu) #35
  br label %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i: ; preds = %bb.ae, %.lr.ph.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fv, %i.fo
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1566

_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !1557
  br label %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i, %bb.ad
  %i.fw = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i ], [ %i.fn, %bb.ad ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.fw, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !1567
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fw to i64
  %i.gb = sub i64 %i.fz, %i.ga
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.gb) #35
  br label %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit

_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  invoke void @_ZN4cvc57context7Context10ScopedPushD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3)
          to label %bb.ai unwind label %bb.n

bb.ag:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.aa, %bb.q
  %.pn47 = phi { ptr, i32 } [ %i.bq, %bb.q ], [ %i.ej, %bb.aa ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #27
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.p
  %.pn47.pn = phi { ptr, i32 } [ %.pn47, %bb.ag ], [ %i.bp, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.aj

bb.ai:                                            ; preds = %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit
  %i.gc = icmp ne ptr %i.fk, %i.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @_ZN4cvc58internal9CodeTimerD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret i1 %i.gc

bb.aj:                                            ; preds = %bb.ah, %bb.o
  %.pn47.pn.pn = phi { ptr, i32 } [ %.pn47.pn, %bb.ah ], [ %i.bo, %bb.o ]
  invoke void @_ZN4cvc57context7Context10ScopedPushD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj, %bb.n
  %.pn51 = phi { ptr, i32 } [ %i.bn, %bb.n ], [ %.pn47.pn.pn, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.body

.body:                                            ; preds = %bb.m, %bb.e, %bb.ak, %bb.l
  %.pn51.pn.pn = phi { ptr, i32 } [ %i.bl, %bb.l ], [ %.pn51, %bb.ak ], [ %i.bm, %bb.m ], [ %i.al, %bb.e ]
  call void @_ZN4cvc58internal9CodeTimerD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn51.pn.pn

bb.al:                                            ; preds = %bb.aj
  %i.gd = landingpad { ptr, i32 }
          catch ptr null
  %i.ge = extractvalue { ptr, i32 } %i.gd, 0
  call void @__clang_call_terminate(ptr %i.ge) #36
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(133) ptr @_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate10getTreeLogEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(9440) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8624 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !740  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #34 ; 4 uses
  invoke void @_ZN4cvc58internal6theory5arith6linear7TreeLogC1Ev(ptr noundef nonnull align 8 dereferenceable(133) %i.d)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %i.a, align 8, !tbaa !740
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 136) #35
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.f = phi ptr [ %i.d, %bb.c ], [ %i.b, %bb.a ]
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate12replayLogRecEPNS3_18ApproximateSimplexEiPNS3_10ConstraintEi(ptr dead_on_unwind noalias writable sret(%"class.std::vector.764") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(9440) %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.std::pair.601", align 8    ; 5 uses
  %7 = alloca %"struct.std::pair.601", align 8    ; 5 uses
  %8 = alloca %"struct.std::pair.601", align 8    ; 5 uses
  %9 = alloca %"class.cvc5::context::Context::ScopedPush", align 8 ; 7 uses
  %10 = alloca %"class.std::set.830", align 8     ; 10 uses
  %11 = alloca %"class.cvc5::internal::CodeTimer", align 8 ; 6 uses
  %12 = alloca %"class.cvc5::internal::theory::arith::linear::UpdateTrackingCallback", align 8 ; 6 uses
  %13 = alloca %"class.std::vector.17", align 8   ; 8 uses
  %14 = alloca %"class.std::vector.764", align 8  ; 12 uses
  %15 = alloca %"class.std::vector.764", align 8  ; 14 uses
  %16 = alloca %"class.std::vector.764", align 8  ; 6 uses
  %17 = alloca %"class.std::vector.764", align 8  ; 10 uses
  %18 = alloca %"class.std::vector.17", align 8   ; 8 uses
  %19 = alloca %"class.cvc5::internal::TrustNode", align 8 ; 9 uses
  %20 = alloca %"class.cvc5::internal::TrustNode", align 8 ; 8 uses
  %21 = alloca %"class.cvc5::internal::theory::arith::linear::UpdateTrackingCallback", align 8 ; 6 uses
  %22 = alloca %"class.cvc5::internal::DeltaRational", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9048
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal7IntStatppEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8632 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8640 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !760
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !639
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8656 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8664 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !756
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate12replayLogRecEPNS3_18ApproximateSimplexEiPNS3_10ConstraintEi:bb.a
  br label %bb.cm

bb.cj:                                            ; preds = %bb.ca, %bb.bz
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ck:                                            ; preds = %bb.cd, %bb.cc, %bb.cf, %bb.ce, %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13selectSimplexEb.exit
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.pn = phi { ptr, i32 } [ %i.gt, %bb.ck ], [ %i.gs, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ci
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.cl ], [ %i.gr, %bb.ci ]
  call void @_ZN4cvc58internal9CodeTimerD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %11) #27
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.ch
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.cm ], [ %i.gq, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %.body

.critedge:                                        ; preds = %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate12replayAssertEPNS3_10ConstraintE.exit257, %.preheader833
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 9056
  %i.gv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal7IntStatppEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gu)
          to label %bb.co unwind label %.loopexit.split-lp ; 0 uses

bb.co:                                            ; preds = %bb.cg, %bb.bw, %.critedge
  %i.gw = load ptr, ptr %i.bc, align 8, !tbaa !678 ; 2 uses
  %i.gx = load ptr, ptr %i.bd, align 8, !tbaa !678 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %bb.cw, label %.lr.ph882

.lr.ph882:                                        ; preds = %bb.co
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = ptrtoint ptr %i.gw to i64
  %i.hb = sub i64 %i.gz, %i.ha
  %i.hc = ashr exact i64 %i.hb, 4
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hf = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  br label %bb.cq

._crit_edge.invoke:                               ; preds = %bb.ct, %bb.cx
  %.sink = phi i64 [ 9080, %bb.cx ], [ 9064, %bb.ct ]
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %i.hh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal7IntStatppEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hg)
          to label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit489 unwind label %.loopexit.split-lp ; 0 uses

bb.cp:                                            ; preds = %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EED2Ev.exit
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cq:                                            ; preds = %.lr.ph882, %bb.ct
  %.0117881 = phi i64 [ 0, %.lr.ph882 ], [ %i.hv, %bb.ct ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.hj = load ptr, ptr %i.hd, align 8, !tbaa !1565 ; 4 uses
  %i.hk = load ptr, ptr %i.he, align 8, !tbaa !1567
  %.not.i.i = icmp eq ptr %i.hj, %i.hk
  br i1 %.not.i.i, label %bb.cr, label %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE9push_backEOS9_.exit.thread

_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE9push_backEOS9_.exit.thread: ; preds = %bb.cq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hj, i8 0, i64 24, i1 false)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  store ptr %i.hl, ptr %i.hd, align 8, !tbaa !1565
  br label %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EED2Ev.exit

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.hj, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE9push_backEOS9_.exit unwind label %bb.cu

_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE9push_backEOS9_.exit: ; preds = %bb.cr
  %.pr768 = load ptr, ptr %13, align 8, !tbaa !1499 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr768, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EED2Ev.exit, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE9push_backEOS9_.exit
  %i.hm = load ptr, ptr %i.hf, align 8, !tbaa !1500
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %.pr768 to i64
  %i.hp = sub i64 %i.hn, %i.ho
  call void @_ZdlPvm(ptr noundef nonnull %.pr768, i64 noundef %i.hp) #35
  br label %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EED2Ev.exit

_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EED2Ev.exit: ; preds = %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE9push_backEOS9_.exit.thread, %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE9push_backEOS9_.exit, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  %i.hq = load ptr, ptr %i.bc, align 8, !tbaa !676
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.hq, i64 %.0117881
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !1585
  %i.ht = load ptr, ptr %i.hd, align 8, !tbaa !1555
  %i.hu = getelementptr inbounds i8, ptr %i.ht, i64 -24
  invoke void @_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate23intHoleConflictToVectorEPKNS3_10ConstraintERSt6vectorIS7_SaIS7_EE(ptr noundef %i.hs, ptr noundef nonnull align 8 dereferenceable(24) %i.hu)
          to label %bb.ct unwind label %bb.cp

bb.ct:                                            ; preds = %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EED2Ev.exit
  %i.hv = add nuw i64 %.0117881, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.hv, %i.hc
  br i1 %exitcond.not, label %._crit_edge.invoke, label %bb.cq, !llvm.loop !1586

bb.cu:                                            ; preds = %bb.cr
  %i.hw = landingpad { ptr, i32 }
          cleanup
  %i.hx = load ptr, ptr %13, align 8, !tbaa !1499 ; 3 uses
  %.not.i.i.i296 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i296, label %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EED2Ev.exit297, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.hy = load ptr, ptr %i.hf, align 8, !tbaa !1500
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = ptrtoint ptr %i.hx to i64
  %i.ib = sub i64 %i.hz, %i.ia
  call void @_ZdlPvm(ptr noundef nonnull %i.hx, i64 noundef %i.ib) #35
  br label %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EED2Ev.exit297

_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EED2Ev.exit297: ; preds = %bb.cu, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %.body

bb.cw:                                            ; preds = %bb.co
  %i.ic = invoke noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear7NodeLog8isBranchEv(ptr noundef nonnull align 8 dereferenceable(200) %i.az)
          to label %bb.cx unwind label %.loopexit.split-lp

bb.cx:                                            ; preds = %bb.cw
  br i1 %i.ic, label %bb.cy, label %._crit_edge.invoke

bb.cy:                                            ; preds = %bb.cx
  %i.id = invoke { ptr, i32 } @_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate19replayGetConstraintEPNS3_18ApproximateSimplexERKNS3_7NodeLogE(ptr noundef nonnull align 8 dereferenceable(9440) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(200) %i.az)
          to label %bb.cz unwind label %bb.di

bb.cz:                                            ; preds = %bb.cy
  %.fca.0.extract = extractvalue { ptr, i32 } %i.id, 0 ; 5 uses
  %.not165 = icmp eq ptr %.fca.0.extract, null
  br i1 %.not165, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit489, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ie = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 88 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !1262 ; 2 uses
  %i.ig = invoke noundef i32 @_ZNK4cvc58internal6theory5arith6linear7NodeLog9getDownIdEv(ptr noundef nonnull align 8 dereferenceable(200) %i.az)
          to label %bb.db unwind label %bb.dj     ; 2 uses

bb.db:                                            ; preds = %bb.da
  %i.ih = invoke noundef i32 @_ZNK4cvc58internal6theory5arith6linear7NodeLog7getUpIdEv(ptr noundef nonnull align 8 dereferenceable(200) %i.az)
          to label %bb.dc unwind label %bb.dk     ; 2 uses

bb.dc:                                            ; preds = %bb.db
  %i.ii = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN4cvc58internal6theory5arith6linear7TreeLog7getNodeEi(ptr noundef nonnull align 8 dereferenceable(133) %i.ag, i32 noundef %i.ig)
          to label %bb.dd unwind label %bb.dl

bb.dd:                                            ; preds = %bb.dc
  %i.ij = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN4cvc58internal6theory5arith6linear7TreeLog7getNodeEi(ptr noundef nonnull align 8 dereferenceable(133) %i.ag, i32 noundef %i.ih)
          to label %bb.de unwind label %bb.dm

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZN4cvc58internal6theory5arith6linear7NodeLog16copyParentRowIdsEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ii)
          to label %bb.df unwind label %bb.dm

bb.df:                                            ; preds = %bb.de
  invoke void @_ZN4cvc58internal6theory5arith6linear7NodeLog16copyParentRowIdsEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ij)
          to label %bb.dg unwind label %bb.dm

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.ik = load ptr, ptr %0, align 8, !tbaa !1555
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !1555
  %i.in = icmp eq ptr %i.ik, %i.im
  br i1 %i.in, label %bb.dh, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit324

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.io = add nsw i32 %5, 1
  invoke void @_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate12replayLogRecEPNS3_18ApproximateSimplexEiPNS3_10ConstraintEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.764") align 8 %16, ptr noundef nonnull align 8 dereferenceable(9440) %1, ptr noundef %2, i32 noundef %i.ig, ptr noundef nonnull %.fca.0.extract, i32 noundef %i.io)
          to label %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit unwind label %bb.dn

_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit: ; preds = %bb.dh
  %i.ip = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.iq = load ptr, ptr %16, align 8, !tbaa !1557 ; 4 uses
  store ptr %i.iq, ptr %14, align 8, !tbaa !1557
  %i.ir = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.is = load <2 x ptr>, ptr %i.ir, align 8, !tbaa !1555
  %i.it = load ptr, ptr %i.ir, align 8, !tbaa !1565 ; 2 uses
  store <2 x ptr> %i.is, ptr %i.ip, align 8, !tbaa !1555
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  %.not914 = icmp eq ptr %i.it, %i.iq
  br i1 %.not914, label %.loopexit822, label %.lr.ph888

.lr.ph888:                                        ; preds = %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit
  %i.iu = ptrtoint ptr %i.it to i64
  %i.iv = ptrtoint ptr %i.iq to i64
  %i.iw = sub i64 %i.iu, %i.iv
  %i.ix = sdiv exact i64 %i.iw, 24
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.do

bb.di:                                            ; preds = %bb.cy
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dj:                                            ; preds = %bb.da
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dk:                                            ; preds = %bb.db
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dl:                                            ; preds = %bb.dc
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dm:                                            ; preds = %bb.df, %bb.de, %bb.dd
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dn:                                            ; preds = %bb.dh
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit474

bb.do:                                            ; preds = %.lr.ph888, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.jf = phi ptr [ %i.iq, %.lr.ph888 ], [ %i.la, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 5 uses
  %.sroa.0728.0887 = phi ptr [ null, %.lr.ph888 ], [ %.sroa.0728.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 9 uses
  %.sroa.10733.0886 = phi ptr [ null, %.lr.ph888 ], [ %.sroa.10733.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 8 uses
  %.sroa.14735.0885 = phi ptr [ null, %.lr.ph888 ], [ %.sroa.14735.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 7 uses
  %.0766883 = phi i64 [ 0, %.lr.ph888 ], [ %i.lb, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 4 uses
  %i.jg = getelementptr inbounds nuw [24 x i8], ptr %i.jf, i64 %.0766883 ; 4 uses
  %.val = load ptr, ptr %i.jg, align 8, !tbaa !1499 ; 3 uses
  %i.jh = getelementptr i8, ptr %i.jg, i64 8      ; 2 uses
  %.val209 = load ptr, ptr %i.jh, align 8, !tbaa !1501 ; 2 uses
  %i.ji = ptrtoint ptr %.val209 to i64
  %i.jj = ptrtoint ptr %.val to i64
  %i.jk = sub i64 %i.ji, %i.jj                    ; 5 uses
  %i.jl = and i64 %i.jk, 34359738360
  %.not.i299 = icmp eq i64 %i.jl, 0
  br i1 %.not.i299, label %.loopexit821, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.do
  %i.jm = lshr exact i64 %i.jk, 3
  %wide.trip.count.i = and i64 %i.jm, 4294967295
  br label %.lr.ph.i300

bb.dp:                                            ; preds = %.lr.ph.i300
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i301 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i301, label %.loopexit821, label %.lr.ph.i300, !llvm.loop !1587

.lr.ph.i300:                                      ; preds = %bb.dp, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.dp ] ; 2 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv.i
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !1260
  %i.jp = icmp eq ptr %i.jo, %.fca.0.extract
  br i1 %i.jp, label %_ZN4cvc58internal6theory5arith6linearL8containsERKSt6vectorIPKNS3_10ConstraintESaIS7_EEPS5_.exit, label %bb.dp

_ZN4cvc58internal6theory5arith6linearL8containsERKSt6vectorIPKNS3_10ConstraintESaIS7_EEPS5_.exit: ; preds = %.lr.ph.i300
  %.not.i302 = icmp eq ptr %.sroa.10733.0886, %.sroa.14735.0885
  br i1 %.not.i302, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %_ZN4cvc58internal6theory5arith6linearL8containsERKSt6vectorIPKNS3_10ConstraintESaIS7_EEPS5_.exit
  store i64 %.0766883, ptr %.sroa.10733.0886, align 8, !tbaa !377
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.10733.0886, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.dr:                                            ; preds = %_ZN4cvc58internal6theory5arith6linearL8containsERKSt6vectorIPKNS3_10ConstraintESaIS7_EEPS5_.exit
  %i.jr = ptrtoint ptr %.sroa.10733.0886 to i64
  %i.js = ptrtoint ptr %.sroa.0728.0887 to i64
  %i.jt = sub i64 %i.jr, %i.js                    ; 6 uses
  %i.ju = icmp eq i64 %i.jt, 9223372036854775800
  br i1 %i.ju, label %bb.ds, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.ds:                                            ; preds = %bb.dr
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.350) #37
          to label %.noexc304 unwind label %.loopexit.split-lp824

.noexc304:                                        ; preds = %bb.ds
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dr
  %i.jv = ashr exact i64 %i.jt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.jv, i64 1)
  %i.jw = add nsw i64 %.sroa.speculated.i.i.i, %i.jv ; 2 uses
  %i.jx = icmp ult i64 %i.jw, %i.jv
  %i.jy = call i64 @llvm.umin.i64(i64 %i.jw, i64 1152921504606846975)
  %i.jz = select i1 %i.jx, i64 1152921504606846975, i64 %i.jy ; 3 uses
  %.not.i.i.i303 = icmp ne i64 %i.jz, 0
  call void @llvm.assume(i1 %.not.i.i.i303)
  %i.ka = shl nuw nsw i64 %i.jz, 3
  %i.kb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ka) #34
          to label %.noexc305 unwind label %.loopexit823 ; 4 uses

.noexc305:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.kc = getelementptr inbounds i8, ptr %i.kb, i64 %i.jt ; 2 uses
  store i64 %.0766883, ptr %i.kc, align 8, !tbaa !377
  %i.kd = icmp sgt i64 %i.jt, 0
  br i1 %i.kd, label %bb.dt, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.dt:                                            ; preds = %.noexc305
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kb, ptr align 8 %.sroa.0728.0887, i64 %i.jt, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.dt, %.noexc305
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.0728.0887, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.du

bb.du:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0728.0887, i64 noundef %i.jt) #35
  %.pre = load ptr, ptr %14, align 8, !tbaa !1557
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.du, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.kf = phi ptr [ %.pre, %bb.du ], [ %i.jf, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i ]
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.jz
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

.loopexit823:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %_ZNSt15__new_allocatorIPKN4cvc58internal6theory5arith6linear10ConstraintEE8allocateEmPKv.exit.i.i.i.i.i, %bb.ea
  %.sroa.14735.0885.lcssa926 = phi ptr [ %.sroa.10733.0886, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.14735.0885, %_ZNSt15__new_allocatorIPKN4cvc58internal6theory5arith6linear10ConstraintEE8allocateEmPKv.exit.i.i.i.i.i ], [ %.sroa.14735.0885, %bb.ea ]
  %lpad.loopexit825 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit472

.loopexit.split-lp824:                            ; preds = %bb.ds, %.noexc.i.i.i
  %.sroa.14735.0885929 = phi ptr [ %.sroa.10733.0886, %bb.ds ], [ %.sroa.14735.0885, %.noexc.i.i.i ]
  %lpad.loopexit.split-lp826 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit472

.loopexit821:                                     ; preds = %bb.dp, %bb.do
  %i.kh = load ptr, ptr %i.il, align 8, !tbaa !1565 ; 6 uses
  %i.ki = load ptr, ptr %i.iy, align 8, !tbaa !1567
  %.not.i306 = icmp eq ptr %i.kh, %i.ki
  br i1 %.not.i306, label %bb.ea, label %bb.dv

bb.dv:                                            ; preds = %.loopexit821
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kh, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i307 = icmp eq ptr %.val209, %.val
  br i1 %.not.i.i.i.i.i307, label %.noexc309, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.kj = icmp ugt i64 %i.jk, 9223372036854775800
  br i1 %i.kj, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIPKN4cvc58internal6theory5arith6linear10ConstraintEE8allocateEmPKv.exit.i.i.i.i.i, !prof !412

.noexc.i.i.i:                                     ; preds = %bb.dw
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc308 unwind label %.loopexit.split-lp824

.noexc308:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIPKN4cvc58internal6theory5arith6linear10ConstraintEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.dw
  %i.kk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jk) #34
          to label %.noexc309 unwind label %.loopexit823

.noexc309:                                        ; preds = %_ZNSt15__new_allocatorIPKN4cvc58internal6theory5arith6linear10ConstraintEE8allocateEmPKv.exit.i.i.i.i.i, %bb.dv
  %i.kl = phi ptr [ null, %bb.dv ], [ %i.kk, %_ZNSt15__new_allocatorIPKN4cvc58internal6theory5arith6linear10ConstraintEE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.kl, ptr %i.kh, align 8, !tbaa !1499
  %i.km = getelementptr inbounds nuw i8, ptr %i.kh, i64 8 ; 2 uses
  store ptr %i.kl, ptr %i.km, align 8, !tbaa !1501
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.jk
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  store ptr %i.kn, ptr %i.ko, align 8, !tbaa !1500
  %i.kp = load ptr, ptr %i.jg, align 8, !tbaa !737 ; 3 uses
  %i.kq = load ptr, ptr %i.jh, align 8, !tbaa !737
  %i.kr = ptrtoint ptr %i.kq to i64
  %i.ks = ptrtoint ptr %i.kp to i64
  %i.kt = sub i64 %i.kr, %i.ks                    ; 4 uses
  %i.ku = icmp sgt i64 %i.kt, 8
  br i1 %i.ku, label %bb.dx, label %bb.dy, !prof !411

bb.dx:                                            ; preds = %.noexc309
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.kl, ptr align 8 %i.kp, i64 %i.kt, i1 false)
  br label %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EEC2ERKS9_.exit.i

bb.dy:                                            ; preds = %.noexc309
  %i.kv = icmp eq i64 %i.kt, 8
  br i1 %i.kv, label %bb.dz, label %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EEC2ERKS9_.exit.i

bb.dz:                                            ; preds = %bb.dy
  %i.kw = load ptr, ptr %i.kp, align 8, !tbaa !1260
  store ptr %i.kw, ptr %i.kl, align 8, !tbaa !1260
  br label %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EEC2ERKS9_.exit.i

_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EEC2ERKS9_.exit.i: ; preds = %bb.dz, %bb.dy, %bb.dx
  %i.kx = getelementptr inbounds i8, ptr %i.kl, i64 %i.kt
  store ptr %i.kx, ptr %i.km, align 8, !tbaa !1501
  %i.ky = load ptr, ptr %i.il, align 8, !tbaa !1565
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 24
  store ptr %i.kz, ptr %i.il, align 8, !tbaa !1565
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.ea:                                            ; preds = %.loopexit821
  invoke void @_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.kh, ptr noundef nonnull align 8 dereferenceable(24) %i.jg)
          to label %_ZNSt6vectorImSaImEE9push_backERKm.exit unwind label %.loopexit823

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EEC2ERKS9_.exit.i, %bb.ea, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.dq
  %i.la = phi ptr [ %i.jf, %bb.dq ], [ %i.kf, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.jf, %bb.ea ], [ %i.jf, %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EEC2ERKS9_.exit.i ]
  %.sroa.14735.1 = phi ptr [ %.sroa.14735.0885, %bb.dq ], [ %i.kg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.14735.0885, %bb.ea ], [ %.sroa.14735.0885, %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EEC2ERKS9_.exit.i ] ; 2 uses
  %.sroa.10733.1 = phi ptr [ %i.jq, %bb.dq ], [ %i.ke, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.10733.0886, %bb.ea ], [ %.sroa.10733.0886, %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EEC2ERKS9_.exit.i ] ; 2 uses
  %.sroa.0728.1 = phi ptr [ %.sroa.0728.0887, %bb.dq ], [ %i.kb, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.0728.0887, %bb.ea ], [ %.sroa.0728.0887, %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EEC2ERKS9_.exit.i ] ; 2 uses
  %i.lb = add nuw i64 %.0766883, 1                ; 2 uses
  %exitcond935.not = icmp eq i64 %i.lb, %i.ix
  br i1 %exitcond935.not, label %.loopexit822, label %bb.do, !llvm.loop !1588

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit324: ; preds = %bb.dg
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 9088
  %i.ld = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal7IntStatppEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lc)
          to label %.loopexit822 unwind label %bb.eb ; 0 uses

bb.eb:                                            ; preds = %bb.fr, %bb.fq, %bb.fo, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit387, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit324
  %.sroa.14.0 = phi ptr [ %.sroa.14.3, %bb.fr ], [ %.sroa.14.3, %bb.fq ], [ %.sroa.14.3, %bb.fo ], [ null, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit387 ], [ null, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit324 ]
  %.sroa.0720.0 = phi ptr [ %.sroa.0720.3, %bb.fr ], [ %.sroa.0720.3, %bb.fq ], [ %.sroa.0720.3, %bb.fo ], [ null, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit387 ], [ null, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit324 ]
  %.sroa.14735.2 = phi ptr [ %.sroa.14735.3, %bb.fr ], [ %.sroa.14735.3, %bb.fq ], [ %.sroa.14735.3, %bb.fo ], [ %.sroa.14735.3, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit387 ], [ null, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit324 ]
  %.sroa.0728.2 = phi ptr [ %.sroa.0728.3, %bb.fr ], [ %.sroa.0728.3, %bb.fq ], [ %.sroa.0728.3, %bb.fo ], [ %.sroa.0728.3, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit387 ], [ null, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit324 ]
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp807

.loopexit822:                                     ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit, %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit324
  %.sroa.14735.3 = phi ptr [ null, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit324 ], [ null, %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit ], [ %.sroa.14735.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 12 uses
  %.sroa.10733.2 = phi ptr [ null, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit324 ], [ null, %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit ], [ %.sroa.10733.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 2 uses
  %.sroa.0728.3 = phi ptr [ null, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit324 ], [ null, %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit ], [ %.sroa.0728.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 17 uses
  %i.lf = load ptr, ptr %0, align 8, !tbaa !1555
  %i.lg = load ptr, ptr %i.il, align 8, !tbaa !1555
  %i.lh = icmp eq ptr %i.lf, %i.lg
  br i1 %i.lh, label %bb.ec, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit387

bb.ec:                                            ; preds = %.loopexit822
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  %i.li = add nsw i32 %5, 1
  invoke void @_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate12replayLogRecEPNS3_18ApproximateSimplexEiPNS3_10ConstraintEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.764") align 8 %17, ptr noundef nonnull align 8 dereferenceable(9440) %1, ptr noundef %2, i32 noundef %i.ih, ptr noundef %i.if, i32 noundef %i.li)
          to label %bb.ed unwind label %bb.ei

bb.ed:                                            ; preds = %bb.ec
  %i.lj = load ptr, ptr %15, align 8, !tbaa !1557 ; 5 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !1565 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !1567
  %i.lo = load ptr, ptr %17, align 8, !tbaa !1557 ; 4 uses
  store ptr %i.lo, ptr %15, align 8, !tbaa !1557
  %i.lp = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.lr = load <2 x ptr>, ptr %i.lp, align 8, !tbaa !1555
  %i.ls = load ptr, ptr %i.lp, align 8, !tbaa !1565 ; 2 uses
  store <2 x ptr> %i.lr, ptr %i.lk, align 8, !tbaa !1555
  %.not4.i.i.i.i.i325 = icmp eq ptr %i.lj, %i.ll
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i325, label %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i.i.i331, label %.lr.ph.i.i.i.i.i326

.lr.ph.i.i.i.i.i326:                              ; preds = %bb.ed, %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i.i.i329
  %.05.i.i.i.i.i327 = phi ptr [ %i.lz, %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i.i.i329 ], [ %i.lj, %bb.ed ] ; 3 uses
  %i.lt = load ptr, ptr %.05.i.i.i.i.i327, align 8, !tbaa !1499 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i328 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i.i.i.i.i.i.i.i328, label %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i.i.i329, label %bb.ee

bb.ee:                                            ; preds = %.lr.ph.i.i.i.i.i326
  %i.lu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i327, i64 16
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !1500
  %i.lw = ptrtoint ptr %i.lv to i64
  %i.lx = ptrtoint ptr %i.lt to i64
  %i.ly = sub i64 %i.lw, %i.lx
  call void @_ZdlPvm(ptr noundef nonnull %i.lt, i64 noundef %i.ly) #35
  br label %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i.i.i329

_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i.i.i329: ; preds = %bb.ee, %.lr.ph.i.i.i.i.i326
  %i.lz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i327, i64 24 ; 2 uses
  %.not.i.i.i.i.i330 = icmp eq ptr %i.lz, %i.ll
  br i1 %.not.i.i.i.i.i330, label %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i.i.i331, label %.lr.ph.i.i.i.i.i326, !llvm.loop !1566

_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i.i.i331: ; preds = %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i.i.i329, %bb.ed
  %.not.i.i1.i.i.i332 = icmp eq ptr %i.lj, null
  br i1 %.not.i.i1.i.i.i332, label %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EEaSEOSB_.exit333, label %bb.ef

bb.ef:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i.i.i331
  %i.ma = ptrtoint ptr %i.ln to i64
  %i.mb = ptrtoint ptr %i.lj to i64
  %i.mc = sub i64 %i.ma, %i.mb
  call void @_ZdlPvm(ptr noundef nonnull %i.lj, i64 noundef %i.mc) #35
  br label %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EEaSEOSB_.exit333

_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EEaSEOSB_.exit333: ; preds = %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i.i.i331, %bb.ef
  %i.md = load ptr, ptr %17, align 8, !tbaa !1557 ; 3 uses
  %i.me = load ptr, ptr %i.lp, align 8, !tbaa !1565 ; 2 uses
  %.not4.i.i.i334 = icmp eq ptr %i.md, %i.me
  br i1 %.not4.i.i.i334, label %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i342, label %.lr.ph.i.i.i335

.lr.ph.i.i.i335:                                  ; preds = %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EEaSEOSB_.exit333, %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i338
  %.05.i.i.i336 = phi ptr [ %i.ml, %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i338 ], [ %i.md, %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EEaSEOSB_.exit333 ] ; 3 uses
  %i.mf = load ptr, ptr %.05.i.i.i336, align 8, !tbaa !1499 ; 3 uses
  %.not.i.i.i.i.i.i.i337 = icmp eq ptr %i.mf, null
  br i1 %.not.i.i.i.i.i.i.i337, label %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i338, label %bb.eg

bb.eg:                                            ; preds = %.lr.ph.i.i.i335
  %i.mg = getelementptr inbounds nuw i8, ptr %.05.i.i.i336, i64 16
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !1500
  %i.mi = ptrtoint ptr %i.mh to i64
  %i.mj = ptrtoint ptr %i.mf to i64
  %i.mk = sub i64 %i.mi, %i.mj
  call void @_ZdlPvm(ptr noundef nonnull %i.mf, i64 noundef %i.mk) #35
  br label %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i338

_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i338: ; preds = %bb.eg, %.lr.ph.i.i.i335
  %i.ml = getelementptr inbounds nuw i8, ptr %.05.i.i.i336, i64 24 ; 2 uses
  %.not.i.i.i339 = icmp eq ptr %i.ml, %i.me
  br i1 %.not.i.i.i339, label %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i340, label %.lr.ph.i.i.i335, !llvm.loop !1566

_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i340: ; preds = %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i338
  %.pr.i341 = load ptr, ptr %17, align 8, !tbaa !1557
  br label %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i342

_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i342: ; preds = %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i340, %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EEaSEOSB_.exit333
  %i.mm = phi ptr [ %.pr.i341, %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i340 ], [ %i.md, %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EEaSEOSB_.exit333 ] ; 3 uses
  %.not.i.i1.i343 = icmp eq ptr %i.mm, null
  br i1 %.not.i.i1.i343, label %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit344, label %bb.eh

bb.eh:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i342
  %i.mn = load ptr, ptr %i.lq, align 8, !tbaa !1567
  %i.mo = ptrtoint ptr %i.mn to i64
  %i.mp = ptrtoint ptr %i.mm to i64
  %i.mq = sub i64 %i.mo, %i.mp
  call void @_ZdlPvm(ptr noundef nonnull %i.mm, i64 noundef %i.mq) #35
  br label %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit344

_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit344: ; preds = %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i342, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  %.not915 = icmp eq ptr %i.ls, %i.lo
  br i1 %.not915, label %.loopexit815, label %.lr.ph897

.lr.ph897:                                        ; preds = %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit344
  %i.mr = ptrtoint ptr %i.ls to i64
  %i.ms = ptrtoint ptr %i.lo to i64
  %i.mt = sub i64 %i.mr, %i.ms
  %i.mu = sdiv exact i64 %i.mt, 24
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.ej

bb.ei:                                            ; preds = %bb.ec
  %i.mw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit472

bb.ej:                                            ; preds = %.lr.ph897, %_ZNSt6vectorImSaImEE9push_backERKm.exit363
  %i.mx = phi ptr [ %i.lo, %.lr.ph897 ], [ %i.os, %_ZNSt6vectorImSaImEE9push_backERKm.exit363 ] ; 5 uses
  %.sroa.0720.1896 = phi ptr [ null, %.lr.ph897 ], [ %.sroa.0720.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit363 ] ; 9 uses
  %.sroa.10.0895 = phi ptr [ null, %.lr.ph897 ], [ %.sroa.10.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit363 ] ; 8 uses
  %.0765893 = phi i64 [ 0, %.lr.ph897 ], [ %i.ot, %_ZNSt6vectorImSaImEE9push_backERKm.exit363 ] ; 4 uses
  %.sroa.14.1892 = phi ptr [ null, %.lr.ph897 ], [ %.sroa.14.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit363 ] ; 7 uses
  %i.my = getelementptr inbounds nuw [24 x i8], ptr %i.mx, i64 %.0765893 ; 4 uses
  %.val210 = load ptr, ptr %i.my, align 8, !tbaa !1499 ; 3 uses
  %i.mz = getelementptr i8, ptr %i.my, i64 8      ; 2 uses
  %.val211 = load ptr, ptr %i.mz, align 8, !tbaa !1501 ; 2 uses
  %i.na = ptrtoint ptr %.val211 to i64
  %i.nb = ptrtoint ptr %.val210 to i64
  %i.nc = sub i64 %i.na, %i.nb                    ; 5 uses
  %i.nd = and i64 %i.nc, 34359738360
  %.not.i345 = icmp eq i64 %i.nd, 0
  br i1 %.not.i345, label %.loopexit814, label %.lr.ph.preheader.i346

.lr.ph.preheader.i346:                            ; preds = %bb.ej
  %i.ne = lshr exact i64 %i.nc, 3
  %wide.trip.count.i347 = and i64 %i.ne, 4294967295
  br label %.lr.ph.i348

bb.ek:                                            ; preds = %.lr.ph.i348
  %indvars.iv.next.i350 = add nuw nsw i64 %indvars.iv.i349, 1 ; 2 uses
  %exitcond.not.i351 = icmp eq i64 %indvars.iv.next.i350, %wide.trip.count.i347
  br i1 %exitcond.not.i351, label %.loopexit814, label %.lr.ph.i348, !llvm.loop !1587

.lr.ph.i348:                                      ; preds = %bb.ek, %.lr.ph.preheader.i346
  %indvars.iv.i349 = phi i64 [ 0, %.lr.ph.preheader.i346 ], [ %indvars.iv.next.i350, %bb.ek ] ; 2 uses
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %.val210, i64 %indvars.iv.i349
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !1260
  %i.nh = icmp eq ptr %i.ng, %i.if
  br i1 %i.nh, label %_ZN4cvc58internal6theory5arith6linearL8containsERKSt6vectorIPKNS3_10ConstraintESaIS7_EEPS5_.exit353, label %bb.ek

_ZN4cvc58internal6theory5arith6linearL8containsERKSt6vectorIPKNS3_10ConstraintESaIS7_EEPS5_.exit353: ; preds = %.lr.ph.i348
  %.not.i354 = icmp eq ptr %.sroa.10.0895, %.sroa.14.1892
  br i1 %.not.i354, label %bb.em, label %bb.el

bb.el:                                            ; preds = %_ZN4cvc58internal6theory5arith6linearL8containsERKSt6vectorIPKNS3_10ConstraintESaIS7_EEPS5_.exit353
  store i64 %.0765893, ptr %.sroa.10.0895, align 8, !tbaa !377
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.10.0895, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit363

bb.em:                                            ; preds = %_ZN4cvc58internal6theory5arith6linearL8containsERKSt6vectorIPKNS3_10ConstraintESaIS7_EEPS5_.exit353
  %i.nj = ptrtoint ptr %.sroa.10.0895 to i64
  %i.nk = ptrtoint ptr %.sroa.0720.1896 to i64
  %i.nl = sub i64 %i.nj, %i.nk                    ; 6 uses
  %i.nm = icmp eq i64 %i.nl, 9223372036854775800
  br i1 %i.nm, label %bb.en, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i355

bb.en:                                            ; preds = %bb.em
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.350) #37
          to label %.noexc361 unwind label %.loopexit.split-lp817

.noexc361:                                        ; preds = %bb.en
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i355: ; preds = %bb.em
  %i.nn = ashr exact i64 %i.nl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i356 = call i64 @llvm.umax.i64(i64 %i.nn, i64 1)
  %i.no = add nsw i64 %.sroa.speculated.i.i.i356, %i.nn ; 2 uses
  %i.np = icmp ult i64 %i.no, %i.nn
  %i.nq = call i64 @llvm.umin.i64(i64 %i.no, i64 1152921504606846975)
  %i.nr = select i1 %i.np, i64 1152921504606846975, i64 %i.nq ; 3 uses
  %.not.i.i.i357 = icmp ne i64 %i.nr, 0
  call void @llvm.assume(i1 %.not.i.i.i357)
  %i.ns = shl nuw nsw i64 %i.nr, 3
  %i.nt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ns) #34
          to label %.noexc362 unwind label %.loopexit816 ; 4 uses

.noexc362:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i355
  %i.nu = getelementptr inbounds i8, ptr %i.nt, i64 %i.nl ; 2 uses
  store i64 %.0765893, ptr %i.nu, align 8, !tbaa !377
  %i.nv = icmp sgt i64 %i.nl, 0
  br i1 %i.nv, label %bb.eo, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i358

bb.eo:                                            ; preds = %.noexc362
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.nt, ptr align 8 %.sroa.0720.1896, i64 %i.nl, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i358

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i358: ; preds = %bb.eo, %.noexc362
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %.not.i17.i.i359 = icmp eq ptr %.sroa.0720.1896, null
  br i1 %.not.i17.i.i359, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i360, label %bb.ep

bb.ep:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i358
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0720.1896, i64 noundef %i.nl) #35
  %.pre943 = load ptr, ptr %15, align 8, !tbaa !1557
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i360

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i360: ; preds = %bb.ep, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i358
  %i.nx = phi ptr [ %.pre943, %bb.ep ], [ %i.mx, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i358 ]
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %i.nr
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit363

.loopexit816:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i355, %_ZNSt15__new_allocatorIPKN4cvc58internal6theory5arith6linear10ConstraintEE8allocateEmPKv.exit.i.i.i.i.i366, %bb.ev
  %.sroa.14.1892.lcssa918 = phi ptr [ %.sroa.10.0895, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i355 ], [ %.sroa.14.1892, %_ZNSt15__new_allocatorIPKN4cvc58internal6theory5arith6linear10ConstraintEE8allocateEmPKv.exit.i.i.i.i.i366 ], [ %.sroa.14.1892, %bb.ev ]
  %lpad.loopexit818 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp807

.loopexit.split-lp817:                            ; preds = %bb.en, %.noexc.i.i.i368
  %.sroa.14.1892921 = phi ptr [ %.sroa.10.0895, %bb.en ], [ %.sroa.14.1892, %.noexc.i.i.i368 ]
  %lpad.loopexit.split-lp819 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp807

.loopexit814:                                     ; preds = %bb.ek, %bb.ej
  %i.nz = load ptr, ptr %i.il, align 8, !tbaa !1565 ; 6 uses
  %i.oa = load ptr, ptr %i.mv, align 8, !tbaa !1567
  %.not.i364 = icmp eq ptr %i.nz, %i.oa
  br i1 %.not.i364, label %bb.ev, label %bb.eq

bb.eq:                                            ; preds = %.loopexit814
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nz, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i365 = icmp eq ptr %.val211, %.val210
  br i1 %.not.i.i.i.i.i365, label %.noexc370, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ob = icmp ugt i64 %i.nc, 9223372036854775800
  br i1 %i.ob, label %.noexc.i.i.i368, label %_ZNSt15__new_allocatorIPKN4cvc58internal6theory5arith6linear10ConstraintEE8allocateEmPKv.exit.i.i.i.i.i366, !prof !412

.noexc.i.i.i368:                                  ; preds = %bb.er
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc369 unwind label %.loopexit.split-lp817

.noexc369:                                        ; preds = %.noexc.i.i.i368
  unreachable

_ZNSt15__new_allocatorIPKN4cvc58internal6theory5arith6linear10ConstraintEE8allocateEmPKv.exit.i.i.i.i.i366: ; preds = %bb.er
  %i.oc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nc) #34
          to label %.noexc370 unwind label %.loopexit816

.noexc370:                                        ; preds = %_ZNSt15__new_allocatorIPKN4cvc58internal6theory5arith6linear10ConstraintEE8allocateEmPKv.exit.i.i.i.i.i366, %bb.eq
  %i.od = phi ptr [ null, %bb.eq ], [ %i.oc, %_ZNSt15__new_allocatorIPKN4cvc58internal6theory5arith6linear10ConstraintEE8allocateEmPKv.exit.i.i.i.i.i366 ] ; 6 uses
  store ptr %i.od, ptr %i.nz, align 8, !tbaa !1499
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nz, i64 8 ; 2 uses
  store ptr %i.od, ptr %i.oe, align 8, !tbaa !1501
  %i.of = getelementptr inbounds nuw i8, ptr %i.od, i64 %i.nc
  %i.og = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  store ptr %i.of, ptr %i.og, align 8, !tbaa !1500
  %i.oh = load ptr, ptr %i.my, align 8, !tbaa !737 ; 3 uses
  %i.oi = load ptr, ptr %i.mz, align 8, !tbaa !737
  %i.oj = ptrtoint ptr %i.oi to i64
  %i.ok = ptrtoint ptr %i.oh to i64
  %i.ol = sub i64 %i.oj, %i.ok                    ; 4 uses
  %i.om = icmp sgt i64 %i.ol, 8
  br i1 %i.om, label %bb.es, label %bb.et, !prof !411

bb.es:                                            ; preds = %.noexc370
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.od, ptr align 8 %i.oh, i64 %i.ol, i1 false)
  br label %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EEC2ERKS9_.exit.i367

bb.et:                                            ; preds = %.noexc370
  %i.on = icmp eq i64 %i.ol, 8
  br i1 %i.on, label %bb.eu, label %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EEC2ERKS9_.exit.i367

bb.eu:                                            ; preds = %bb.et
  %i.oo = load ptr, ptr %i.oh, align 8, !tbaa !1260
  store ptr %i.oo, ptr %i.od, align 8, !tbaa !1260
  br label %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EEC2ERKS9_.exit.i367

_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EEC2ERKS9_.exit.i367: ; preds = %bb.eu, %bb.et, %bb.es
  %i.op = getelementptr inbounds i8, ptr %i.od, i64 %i.ol
  store ptr %i.op, ptr %i.oe, align 8, !tbaa !1501
  %i.oq = load ptr, ptr %i.il, align 8, !tbaa !1565
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 24
  store ptr %i.or, ptr %i.il, align 8, !tbaa !1565
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit363

bb.ev:                                            ; preds = %.loopexit814
  invoke void @_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.nz, ptr noundef nonnull align 8 dereferenceable(24) %i.my)
          to label %_ZNSt6vectorImSaImEE9push_backERKm.exit363 unwind label %.loopexit816

_ZNSt6vectorImSaImEE9push_backERKm.exit363:       ; preds = %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EEC2ERKS9_.exit.i367, %bb.ev, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i360, %bb.el
  %i.os = phi ptr [ %i.mx, %bb.el ], [ %i.nx, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i360 ], [ %i.mx, %bb.ev ], [ %i.mx, %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EEC2ERKS9_.exit.i367 ]
  %.sroa.14.2 = phi ptr [ %.sroa.14.1892, %bb.el ], [ %i.ny, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i360 ], [ %.sroa.14.1892, %bb.ev ], [ %.sroa.14.1892, %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EEC2ERKS9_.exit.i367 ] ; 2 uses
  %.sroa.10.1 = phi ptr [ %i.ni, %bb.el ], [ %i.nw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i360 ], [ %.sroa.10.0895, %bb.ev ], [ %.sroa.10.0895, %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EEC2ERKS9_.exit.i367 ] ; 2 uses
  %.sroa.0720.2 = phi ptr [ %.sroa.0720.1896, %bb.el ], [ %i.nt, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i360 ], [ %.sroa.0720.1896, %bb.ev ], [ %.sroa.0720.1896, %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EEC2ERKS9_.exit.i367 ] ; 2 uses
  %i.ot = add nuw i64 %.0765893, 1                ; 2 uses
  %exitcond937.not = icmp eq i64 %i.ot, %i.mu
  br i1 %exitcond937.not, label %.loopexit815, label %bb.ej, !llvm.loop !1589

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit387: ; preds = %.loopexit822
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 9088
  %i.ov = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal7IntStatppEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ou)
          to label %.loopexit815 unwind label %bb.eb ; 0 uses

.loopexit815:                                     ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit363, %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit344, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit387
  %.sroa.14.3 = phi ptr [ null, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit387 ], [ null, %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit344 ], [ %.sroa.14.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit363 ] ; 8 uses
  %.sroa.10.2 = phi ptr [ null, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit387 ], [ null, %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit344 ], [ %.sroa.10.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit363 ] ; 2 uses
  %.sroa.0720.3 = phi ptr [ null, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit387 ], [ null, %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit344 ], [ %.sroa.0720.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit363 ] ; 13 uses
  %i.ow = load ptr, ptr %0, align 8, !tbaa !1555  ; 6 uses
  %i.ox = load ptr, ptr %i.il, align 8, !tbaa !1555 ; 2 uses
  %i.oy = icmp eq ptr %i.ow, %i.ox
  br i1 %i.oy, label %bb.ew, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit420

bb.ew:                                            ; preds = %.loopexit815
  %i.oz = ptrtoint ptr %.sroa.10733.2 to i64
  %i.pa = ptrtoint ptr %.sroa.0728.3 to i64
  %i.pb = sub i64 %i.oz, %i.pa
  %i.pc = ashr exact i64 %i.pb, 3
  %.not916 = icmp eq ptr %.sroa.10733.2, %.sroa.0728.3
  br i1 %.not916, label %._crit_edge908.split, label %.lr.ph907

.lr.ph907:                                        ; preds = %bb.ew
  %i.pd = ptrtoint ptr %.sroa.0720.3 to i64       ; 2 uses
  %.not917 = icmp eq ptr %.sroa.10.2, %.sroa.0720.3
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.pf = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  br i1 %.not917, label %._crit_edge908.split, label %.lr.ph903.preheader

.lr.ph903.preheader:                              ; preds = %.lr.ph907
  %i.pg = ptrtoint ptr %.sroa.10.2 to i64
  %i.ph = sub i64 %i.pg, %i.pd
  %i.pi = ashr exact i64 %i.ph, 3
  %.pre945 = load ptr, ptr %14, align 8, !tbaa !1557
  %.pre946.pre = load ptr, ptr %15, align 8, !tbaa !1557
  br label %.lr.ph903

._crit_edge908.split.loopexit:                    ; preds = %._crit_edge904
  %.pre947 = load ptr, ptr %i.il, align 8, !tbaa !1565
  %.pre948 = load ptr, ptr %0, align 8, !tbaa !1557
  br label %._crit_edge908.split

._crit_edge908.split:                             ; preds = %._crit_edge908.split.loopexit, %.lr.ph907, %bb.ew
  %i.pj = phi ptr [ %.pre948, %._crit_edge908.split.loopexit ], [ %i.ow, %.lr.ph907 ], [ %i.ow, %bb.ew ] ; 2 uses
  %i.pk = phi ptr [ %.pre947, %._crit_edge908.split.loopexit ], [ %i.ow, %.lr.ph907 ], [ %i.ow, %bb.ew ] ; 2 uses
  %i.pl = ptrtoint ptr %i.pk to i64
  %i.pm = ptrtoint ptr %i.pj to i64
  %i.pn = sub i64 %i.pl, %i.pm
  %i.po = sdiv exact i64 %i.pn, 24
  %i.pp = icmp ugt i64 %i.po, 1
  br i1 %i.pp, label %bb.fo, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit420

.lr.ph903:                                        ; preds = %.lr.ph903.preheader, %._crit_edge904
  %.0116905 = phi i64 [ %i.pu, %._crit_edge904 ], [ 0, %.lr.ph903.preheader ] ; 2 uses
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0728.3, i64 %.0116905
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !377
  %i.ps = getelementptr inbounds nuw [24 x i8], ptr %.pre945, i64 %i.pr ; 3 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  br label %bb.ex

._crit_edge904:                                   ; preds = %_ZN4cvc58internal6theory5arith6linearL7resolveERSt6vectorIPKNS3_10ConstraintESaIS7_EEPS5_RKS9_SD_.exit
  %i.pu = add nuw i64 %.0116905, 1                ; 2 uses
  %exitcond941.not = icmp eq i64 %i.pu, %i.pc
  br i1 %exitcond941.not, label %._crit_edge908.split.loopexit, label %.lr.ph903, !llvm.loop !1590

bb.ex:                                            ; preds = %.lr.ph903, %_ZN4cvc58internal6theory5arith6linearL7resolveERSt6vectorIPKNS3_10ConstraintESaIS7_EEPS5_RKS9_SD_.exit
  %.0901 = phi i64 [ 0, %.lr.ph903 ], [ %i.sx, %_ZN4cvc58internal6theory5arith6linearL7resolveERSt6vectorIPKNS3_10ConstraintESaIS7_EEPS5_RKS9_SD_.exit ] ; 2 uses
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0720.3, i64 %.0901
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !377
  %i.px = getelementptr inbounds nuw [24 x i8], ptr %.pre946.pre, i64 %i.pw ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.py = load ptr, ptr %i.il, align 8, !tbaa !1565 ; 4 uses
  %i.pz = load ptr, ptr %i.pe, align 8, !tbaa !1567
  %.not.i.i388 = icmp eq ptr %i.py, %i.pz
  br i1 %.not.i.i388, label %bb.ey, label %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE9push_backEOS9_.exit390.thread

_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE9push_backEOS9_.exit390.thread: ; preds = %bb.ex
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.py, i8 0, i64 24, i1 false)
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 24
  store ptr %i.qa, ptr %i.il, align 8, !tbaa !1565
  br label %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EED2Ev.exit392

bb.ey:                                            ; preds = %bb.ex
  invoke void @_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.py, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE9push_backEOS9_.exit390 unwind label %bb.fm

_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE9push_backEOS9_.exit390: ; preds = %bb.ey
  %.pr771 = load ptr, ptr %18, align 8, !tbaa !1499 ; 3 uses
  %.not.i.i.i391 = icmp eq ptr %.pr771, null
  br i1 %.not.i.i.i391, label %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EED2Ev.exit392, label %bb.ez

bb.ez:                                            ; preds = %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE9push_backEOS9_.exit390
  %i.qb = load ptr, ptr %i.pf, align 8, !tbaa !1500
  %i.qc = ptrtoint ptr %i.qb to i64
  %i.qd = ptrtoint ptr %.pr771 to i64
  %i.qe = sub i64 %i.qc, %i.qd
  call void @_ZdlPvm(ptr noundef nonnull %.pr771, i64 noundef %i.qe) #35
  br label %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EED2Ev.exit392

_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EED2Ev.exit392: ; preds = %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE9push_backEOS9_.exit390.thread, %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE9push_backEOS9_.exit390, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  %i.qf = load ptr, ptr %i.il, align 8, !tbaa !1555 ; 5 uses
  %i.qg = getelementptr inbounds i8, ptr %i.qf, i64 -24 ; 4 uses
  %i.qh = load ptr, ptr %i.pt, align 8, !tbaa !1501
  %i.qi = load ptr, ptr %i.ps, align 8, !tbaa !1499
  %i.qj = ptrtoint ptr %i.qh to i64
  %i.qk = ptrtoint ptr %i.qi to i64
  %i.ql = sub i64 %i.qj, %i.qk                    ; 2 uses
  %i.qm = and i64 %i.ql, 34359738360
  %.not.i393 = icmp eq i64 %i.qm, 0
  br i1 %.not.i393, label %._crit_edge.i, label %.lr.ph.i394

.lr.ph.i394:                                      ; preds = %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EED2Ev.exit392
  %i.qn = lshr exact i64 %i.ql, 3
  %i.qo = getelementptr inbounds i8, ptr %i.qf, i64 -16 ; 3 uses
  %i.qp = getelementptr inbounds i8, ptr %i.qf, i64 -8 ; 2 uses
  %wide.trip.count.i395 = and i64 %i.qn, 4294967295
  br label %bb.fa

._crit_edge.i:                                    ; preds = %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EE9push_backERKS7_.exit.i, %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EED2Ev.exit392
  %i.qq = load ptr, ptr %i.ie, align 8, !tbaa !1262
  %i.qr = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !1501
  %i.qt = load ptr, ptr %i.px, align 8, !tbaa !1499
  %i.qu = ptrtoint ptr %i.qs to i64
  %i.qv = ptrtoint ptr %i.qt to i64
  %i.qw = sub i64 %i.qu, %i.qv                    ; 2 uses
  %i.qx = and i64 %i.qw, 34359738360
  %.not38.i = icmp eq i64 %i.qx, 0
  br i1 %.not38.i, label %_ZN4cvc58internal6theory5arith6linearL7resolveERSt6vectorIPKNS3_10ConstraintESaIS7_EEPS5_RKS9_SD_.exit, label %.lr.ph36.i

.lr.ph36.i:                                       ; preds = %._crit_edge.i
  %i.qy = lshr exact i64 %i.qw, 3
  %i.qz = getelementptr inbounds i8, ptr %i.qf, i64 -16 ; 3 uses
  %i.ra = getelementptr inbounds i8, ptr %i.qf, i64 -8 ; 2 uses
  %wide.trip.count43.i = and i64 %i.qy, 4294967295
  br label %bb.fg

bb.fa:                                            ; preds = %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EE9push_backERKS7_.exit.i, %.lr.ph.i394
  %indvars.iv.i396 = phi i64 [ 0, %.lr.ph.i394 ], [ %indvars.iv.next.i398, %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EE9push_backERKS7_.exit.i ] ; 2 uses
  %i.rb = load ptr, ptr %i.ps, align 8, !tbaa !1499
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %indvars.iv.i396 ; 2 uses
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !1260 ; 2 uses
  %i.re = icmp eq ptr %i.rd, %.fca.0.extract
  br i1 %i.re, label %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EE9push_backERKS7_.exit.i, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.rf = load ptr, ptr %i.qo, align 8, !tbaa !1501 ; 4 uses
  %i.rg = load ptr, ptr %i.qp, align 8, !tbaa !1500
  %.not.i.i397 = icmp eq ptr %i.rf, %i.rg
  br i1 %.not.i.i397, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  store ptr %i.rd, ptr %i.rf, align 8, !tbaa !1260
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  store ptr %i.rh, ptr %i.qo, align 8, !tbaa !1501
  br label %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EE9push_backERKS7_.exit.i

bb.fd:                                            ; preds = %bb.fb
  %i.ri = load ptr, ptr %i.qg, align 8, !tbaa !1499 ; 4 uses
  %i.rj = ptrtoint ptr %i.rf to i64
  %i.rk = ptrtoint ptr %i.ri to i64
  %i.rl = sub i64 %i.rj, %i.rk                    ; 6 uses
  %i.rm = icmp eq i64 %i.rl, 9223372036854775800
  br i1 %i.rm, label %.invoke1072, label %_ZNKSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.fd
  %i.rn = ashr exact i64 %i.rl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.rn, i64 1)
  %i.ro = add nsw i64 %.sroa.speculated.i.i.i.i, %i.rn ; 2 uses
  %i.rp = icmp ult i64 %i.ro, %i.rn
  %i.rq = call i64 @llvm.umin.i64(i64 %i.ro, i64 1152921504606846975)
  %i.rr = select i1 %i.rp, i64 1152921504606846975, i64 %i.rq ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.rr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.rs = shl nuw nsw i64 %i.rr, 3
  %i.rt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rs) #34
          to label %.noexc401 unwind label %.loopexit.split-lp807.loopexit ; 4 uses

.noexc401:                                        ; preds = %_ZNKSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ru = getelementptr inbounds i8, ptr %i.rt, i64 %i.rl ; 2 uses
  %i.rv = load ptr, ptr %i.rc, align 8, !tbaa !1260
  store ptr %i.rv, ptr %i.ru, align 8, !tbaa !1260
  %i.rw = icmp sgt i64 %i.rl, 0
  br i1 %i.rw, label %bb.fe, label %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit16.i.i.i

bb.fe:                                            ; preds = %.noexc401
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.rt, ptr align 8 %i.ri, i64 %i.rl, i1 false)
  br label %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit16.i.i.i

_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit16.i.i.i: ; preds = %bb.fe, %.noexc401
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ri, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i, label %bb.ff

bb.ff:                                            ; preds = %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ri, i64 noundef %i.rl) #35
end_hunk_1
begin_hunk_2_@_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate12replayLogRecEPNS3_18ApproximateSimplexEiPNS3_10ConstraintEi:bb.a

bb.fo:                                            ; preds = %._crit_edge908.split
  invoke void @_ZNK4cvc58internal6theory5arith6linear18TheoryArithPrivate11subsumptionERSt6vectorIS5_IPKNS3_10ConstraintESaIS8_EESaISA_EE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.fp unwind label %bb.eb

bb.fp:                                            ; preds = %bb.fo
  %i.te = load ptr, ptr %i.il, align 8, !tbaa !1565 ; 2 uses
  %i.tf = load ptr, ptr %0, align 8, !tbaa !1557  ; 2 uses
  %i.tg = ptrtoint ptr %i.te to i64
  %i.th = ptrtoint ptr %i.tf to i64
  %i.ti = sub i64 %i.tg, %i.th
  %i.tj = sdiv exact i64 %i.ti, 24
  %i.tk = icmp ugt i64 %i.tj, 100
  br i1 %i.tk, label %bb.fq, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit420

bb.fq:                                            ; preds = %bb.fp
  invoke void @_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 100)
          to label %._ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit420_crit_edge unwind label %bb.eb

._ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit420_crit_edge: ; preds = %bb.fq
  %.pre949 = load ptr, ptr %0, align 8, !tbaa !1555
  %.pre950 = load ptr, ptr %i.il, align 8, !tbaa !1555
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit420

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit420: ; preds = %._ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit420_crit_edge, %.loopexit815, %._crit_edge908.split, %bb.fp
  %i.tl = phi ptr [ %.pre950, %._ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit420_crit_edge ], [ %i.ox, %.loopexit815 ], [ %i.pk, %._crit_edge908.split ], [ %i.te, %bb.fp ]
  %i.tm = phi ptr [ %.pre949, %._ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit420_crit_edge ], [ %i.ow, %.loopexit815 ], [ %i.pj, %._crit_edge908.split ], [ %i.tf, %bb.fp ]
  %i.tn = icmp eq ptr %i.tm, %i.tl
  br i1 %i.tn, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit420
  %i.to = getelementptr inbounds nuw i8, ptr %1, i64 9072
  %i.tp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal7IntStatppEv(ptr noundef nonnull align 8 dereferenceable(8) %i.to)
          to label %bb.fs unwind label %bb.eb     ; 0 uses

bb.fs:                                            ; preds = %bb.fr, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit420
  %.not.i.i.i446 = icmp eq ptr %.sroa.0720.3, null
  br i1 %.not.i.i.i446, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.tq = ptrtoint ptr %.sroa.14.3 to i64
  %i.tr = ptrtoint ptr %.sroa.0720.3 to i64
  %i.ts = sub i64 %i.tq, %i.tr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0720.3, i64 noundef %i.ts) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.fs, %bb.ft
  %.not.i.i.i447 = icmp eq ptr %.sroa.0728.3, null
  br i1 %.not.i.i.i447, label %_ZNSt6vectorImSaImEED2Ev.exit448, label %bb.fu

bb.fu:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.tt = ptrtoint ptr %.sroa.14735.3 to i64
  %i.tu = ptrtoint ptr %.sroa.0728.3 to i64
  %i.tv = sub i64 %i.tt, %i.tu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0728.3, i64 noundef %i.tv) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit448

_ZNSt6vectorImSaImEED2Ev.exit448:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.fu
  %i.tw = load ptr, ptr %15, align 8, !tbaa !1557 ; 5 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !1565 ; 2 uses
  %.not4.i.i.i449 = icmp eq ptr %i.tw, %i.ty
  br i1 %.not4.i.i.i449, label %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i457, label %.lr.ph.i.i.i450

.lr.ph.i.i.i450:                                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit448, %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i453
  %.05.i.i.i451 = phi ptr [ %i.uf, %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i453 ], [ %i.tw, %_ZNSt6vectorImSaImEED2Ev.exit448 ] ; 3 uses
  %i.tz = load ptr, ptr %.05.i.i.i451, align 8, !tbaa !1499 ; 3 uses
  %.not.i.i.i.i.i.i.i452 = icmp eq ptr %i.tz, null
  br i1 %.not.i.i.i.i.i.i.i452, label %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i453, label %bb.fv

bb.fv:                                            ; preds = %.lr.ph.i.i.i450
  %i.ua = getelementptr inbounds nuw i8, ptr %.05.i.i.i451, i64 16
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !1500
  %i.uc = ptrtoint ptr %i.ub to i64
  %i.ud = ptrtoint ptr %i.tz to i64
  %i.ue = sub i64 %i.uc, %i.ud
  call void @_ZdlPvm(ptr noundef nonnull %i.tz, i64 noundef %i.ue) #35
  br label %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i453

_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i453: ; preds = %bb.fv, %.lr.ph.i.i.i450
  %i.uf = getelementptr inbounds nuw i8, ptr %.05.i.i.i451, i64 24 ; 2 uses
  %.not.i.i.i454 = icmp eq ptr %i.uf, %i.ty
  br i1 %.not.i.i.i454, label %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i457, label %.lr.ph.i.i.i450, !llvm.loop !1566

_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i457: ; preds = %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i453, %_ZNSt6vectorImSaImEED2Ev.exit448
  %.not.i.i1.i458 = icmp eq ptr %i.tw, null
  br i1 %.not.i.i1.i458, label %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit459, label %bb.fw

bb.fw:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i457
  %i.ug = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !1567
  %i.ui = ptrtoint ptr %i.uh to i64
  %i.uj = ptrtoint ptr %i.tw to i64
  %i.uk = sub i64 %i.ui, %i.uj
  call void @_ZdlPvm(ptr noundef nonnull %i.tw, i64 noundef %i.uk) #35
  br label %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit459

_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit459: ; preds = %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i457, %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  %i.ul = load ptr, ptr %14, align 8, !tbaa !1557 ; 5 uses
  %i.um = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !1565 ; 2 uses
  %.not4.i.i.i460 = icmp eq ptr %i.ul, %i.un
  br i1 %.not4.i.i.i460, label %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i468, label %.lr.ph.i.i.i461

.lr.ph.i.i.i461:                                  ; preds = %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit459, %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i464
  %.05.i.i.i462 = phi ptr [ %i.uu, %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i464 ], [ %i.ul, %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit459 ] ; 3 uses
  %i.uo = load ptr, ptr %.05.i.i.i462, align 8, !tbaa !1499 ; 3 uses
  %.not.i.i.i.i.i.i.i463 = icmp eq ptr %i.uo, null
  br i1 %.not.i.i.i.i.i.i.i463, label %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i464, label %bb.fx

bb.fx:                                            ; preds = %.lr.ph.i.i.i461
  %i.up = getelementptr inbounds nuw i8, ptr %.05.i.i.i462, i64 16
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !1500
  %i.ur = ptrtoint ptr %i.uq to i64
  %i.us = ptrtoint ptr %i.uo to i64
  %i.ut = sub i64 %i.ur, %i.us
  call void @_ZdlPvm(ptr noundef nonnull %i.uo, i64 noundef %i.ut) #35
  br label %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i464

_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i464: ; preds = %bb.fx, %.lr.ph.i.i.i461
  %i.uu = getelementptr inbounds nuw i8, ptr %.05.i.i.i462, i64 24 ; 2 uses
  %.not.i.i.i465 = icmp eq ptr %i.uu, %i.un
  br i1 %.not.i.i.i465, label %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i468, label %.lr.ph.i.i.i461, !llvm.loop !1566

_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i468: ; preds = %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i464, %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit459
  %.not.i.i1.i469 = icmp eq ptr %i.ul, null
  br i1 %.not.i.i1.i469, label %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit470, label %bb.fy

bb.fy:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i468
  %i.uv = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !1567
  %i.ux = ptrtoint ptr %i.uw to i64
  %i.uy = ptrtoint ptr %i.ul to i64
  %i.uz = sub i64 %i.ux, %i.uy
  call void @_ZdlPvm(ptr noundef nonnull %i.ul, i64 noundef %i.uz) #35
  br label %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit470

_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit470: ; preds = %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i468, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit489

.loopexit.split-lp807:                            ; preds = %.loopexit806, %.loopexit.split-lp807.loopexit.split-lp, %.loopexit.split-lp807.loopexit, %.loopexit816, %.loopexit.split-lp817, %bb.eb
  %.sroa.14.4 = phi ptr [ %.sroa.14.0, %bb.eb ], [ %.sroa.14.1892921, %.loopexit.split-lp817 ], [ %.sroa.14.1892.lcssa918, %.loopexit816 ], [ %.sroa.14.3, %.loopexit.split-lp807.loopexit ], [ %.sroa.14.3, %.loopexit.split-lp807.loopexit.split-lp ], [ %.sroa.14.3, %.loopexit806 ]
  %.sroa.0720.4 = phi ptr [ %.sroa.0720.0, %bb.eb ], [ %.sroa.0720.1896, %.loopexit.split-lp817 ], [ %.sroa.0720.1896, %.loopexit816 ], [ %.sroa.0720.3, %.loopexit.split-lp807.loopexit ], [ %.sroa.0720.3, %.loopexit.split-lp807.loopexit.split-lp ], [ %.sroa.0720.3, %.loopexit806 ] ; 3 uses
  %.sroa.14735.4 = phi ptr [ %.sroa.14735.2, %bb.eb ], [ %.sroa.14735.3, %.loopexit.split-lp817 ], [ %.sroa.14735.3, %.loopexit816 ], [ %.sroa.14735.3, %.loopexit.split-lp807.loopexit ], [ %.sroa.14735.3, %.loopexit.split-lp807.loopexit.split-lp ], [ %.sroa.14735.3, %.loopexit806 ] ; 2 uses
  %.sroa.0728.4 = phi ptr [ %.sroa.0728.2, %bb.eb ], [ %.sroa.0728.3, %.loopexit.split-lp817 ], [ %.sroa.0728.3, %.loopexit816 ], [ %.sroa.0728.3, %.loopexit.split-lp807.loopexit ], [ %.sroa.0728.3, %.loopexit.split-lp807.loopexit.split-lp ], [ %.sroa.0728.3, %.loopexit806 ] ; 2 uses
  %.pn181 = phi { ptr, i32 } [ %i.le, %bb.eb ], [ %lpad.loopexit.split-lp819, %.loopexit.split-lp817 ], [ %lpad.loopexit818, %.loopexit816 ], [ %lpad.loopexit811, %.loopexit.split-lp807.loopexit ], [ %lpad.loopexit.split-lp812, %.loopexit.split-lp807.loopexit.split-lp ], [ %lpad.loopexit808, %.loopexit806 ] ; 2 uses
  %.not.i.i.i471 = icmp eq ptr %.sroa.0720.4, null
  br i1 %.not.i.i.i471, label %_ZNSt6vectorImSaImEED2Ev.exit472, label %.loopexit.split-lp807._crit_edge

.loopexit.split-lp807._crit_edge:                 ; preds = %.loopexit.split-lp807
  %.pre951 = ptrtoint ptr %.sroa.0720.4 to i64
  br label %bb.fz

bb.fz:                                            ; preds = %.loopexit.split-lp807._crit_edge, %.thread783
  %.pre-phi = phi i64 [ %.pre951, %.loopexit.split-lp807._crit_edge ], [ %i.pd, %.thread783 ]
  %.pn181794 = phi { ptr, i32 } [ %.pn181, %.loopexit.split-lp807._crit_edge ], [ %i.sy, %.thread783 ]
  %.sroa.0728.4793 = phi ptr [ %.sroa.0728.4, %.loopexit.split-lp807._crit_edge ], [ %.sroa.0728.3, %.thread783 ]
  %.sroa.14735.4792 = phi ptr [ %.sroa.14735.4, %.loopexit.split-lp807._crit_edge ], [ %.sroa.14735.3, %.thread783 ]
  %.sroa.0720.4791 = phi ptr [ %.sroa.0720.4, %.loopexit.split-lp807._crit_edge ], [ %.sroa.0720.3, %.thread783 ]
  %.sroa.14.4790 = phi ptr [ %.sroa.14.4, %.loopexit.split-lp807._crit_edge ], [ %.sroa.14.3, %.thread783 ]
  %i.va = ptrtoint ptr %.sroa.14.4790 to i64
  %i.vb = sub i64 %i.va, %.pre-phi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0720.4791, i64 noundef %i.vb) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit472

_ZNSt6vectorImSaImEED2Ev.exit472:                 ; preds = %.loopexit823, %.loopexit.split-lp824, %bb.ei, %.loopexit.split-lp807, %bb.fz
  %.pn181782 = phi { ptr, i32 } [ %.pn181794, %bb.fz ], [ %.pn181, %.loopexit.split-lp807 ], [ %i.mw, %bb.ei ], [ %lpad.loopexit825, %.loopexit823 ], [ %lpad.loopexit.split-lp826, %.loopexit.split-lp824 ] ; 2 uses
  %.sroa.0728.4781 = phi ptr [ %.sroa.0728.4793, %bb.fz ], [ %.sroa.0728.4, %.loopexit.split-lp807 ], [ %.sroa.0728.3, %bb.ei ], [ %.sroa.0728.0887, %.loopexit823 ], [ %.sroa.0728.0887, %.loopexit.split-lp824 ] ; 3 uses
  %.sroa.14735.4780 = phi ptr [ %.sroa.14735.4792, %bb.fz ], [ %.sroa.14735.4, %.loopexit.split-lp807 ], [ %.sroa.14735.3, %bb.ei ], [ %.sroa.14735.0885.lcssa926, %.loopexit823 ], [ %.sroa.14735.0885929, %.loopexit.split-lp824 ]
  %.not.i.i.i473 = icmp eq ptr %.sroa.0728.4781, null
  br i1 %.not.i.i.i473, label %_ZNSt6vectorImSaImEED2Ev.exit474, label %bb.ga

bb.ga:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit472
  %i.vc = ptrtoint ptr %.sroa.14735.4780 to i64
  %i.vd = ptrtoint ptr %.sroa.0728.4781 to i64
  %i.ve = sub i64 %i.vc, %i.vd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0728.4781, i64 noundef %i.ve) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit474

_ZNSt6vectorImSaImEED2Ev.exit474:                 ; preds = %bb.dn, %_ZNSt6vectorImSaImEED2Ev.exit472, %bb.ga
  %.pn181782800 = phi { ptr, i32 } [ %.pn181782, %bb.ga ], [ %.pn181782, %_ZNSt6vectorImSaImEED2Ev.exit472 ], [ %i.je, %bb.dn ]
  call void @_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  call void @_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %.body

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit489: ; preds = %._crit_edge.invoke, %bb.cz, %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit470
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !1565 ; 2 uses
  %i.vh = load ptr, ptr %0, align 8, !tbaa !1557  ; 2 uses
  %.not.i505 = icmp eq ptr %i.vg, %i.vh
  br i1 %.not.i505, label %_ZNK4cvc58internal6theory5arith6linear18TheoryArithPrivate20resolveOutPropagatedERSt6vectorIS5_IPKNS3_10ConstraintESaIS8_EESaISA_EE.exit, label %.lr.ph.preheader.i506

.lr.ph.preheader.i506:                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit489
  %i.vi = ptrtoint ptr %i.vg to i64
  %i.vj = ptrtoint ptr %i.vh to i64
  %i.vk = sub i64 %i.vi, %i.vj
  %i.vl = sdiv exact i64 %i.vk, 24
  br label %.lr.ph.i507

.lr.ph.i507:                                      ; preds = %.noexc510, %.lr.ph.preheader.i506
  %.066.i = phi i64 [ %i.vo, %.noexc510 ], [ 0, %.lr.ph.preheader.i506 ] ; 2 uses
  %i.vm = load ptr, ptr %0, align 8, !tbaa !1557
  %i.vn = getelementptr inbounds nuw [24 x i8], ptr %i.vm, i64 %.066.i
  invoke void @_ZN4cvc58internal6theory5arith6linear10Constraint15assertionFringeERSt6vectorIPKS4_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.vn)
          to label %.noexc510 unwind label %.loopexit805

.noexc510:                                        ; preds = %.lr.ph.i507
  %i.vo = add nuw i64 %.066.i, 1                  ; 2 uses
  %exitcond.not.i508 = icmp eq i64 %i.vo, %i.vl
  br i1 %exitcond.not.i508, label %_ZNK4cvc58internal6theory5arith6linear18TheoryArithPrivate20resolveOutPropagatedERSt6vectorIS5_IPKNS3_10ConstraintESaIS8_EESaISA_EE.exit, label %.lr.ph.i507, !llvm.loop !1594

_ZNK4cvc58internal6theory5arith6linear18TheoryArithPrivate20resolveOutPropagatedERSt6vectorIS5_IPKNS3_10ConstraintESaIS8_EESaISA_EE.exit: ; preds = %.noexc510, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit489
  %i.vp = invoke noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.gb unwind label %.loopexit.split-lp

bb.gb:                                            ; preds = %_ZNK4cvc58internal6theory5arith6linear18TheoryArithPrivate20resolveOutPropagatedERSt6vectorIS5_IPKNS3_10ConstraintESaIS8_EESaISA_EE.exit
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 200
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !419, !nonnull !371, !align !372
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 194
  %i.vt = load i8, ptr %i.vs, align 2, !tbaa !1595, !range !612, !noundef !371
  %i.vu = trunc nuw i8 %i.vt to i1
  br i1 %i.vu, label %bb.gc, label %.loopexit

bb.gc:                                            ; preds = %bb.gb
  %i.vv = load ptr, ptr %0, align 8, !tbaa !1555
  %i.vw = load ptr, ptr %i.vf, align 8, !tbaa !1555
  %i.vx = icmp eq ptr %i.vv, %i.vw
  br i1 %i.vx, label %bb.gd, label %.loopexit

bb.gd:                                            ; preds = %bb.gc
  %i.vy = load ptr, ptr %i.ab, align 8, !tbaa !740 ; 2 uses
  %i.vz = icmp eq ptr %i.vy, null
  br i1 %i.vz, label %bb.ge, label %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate10getTreeLogEv.exit517

bb.ge:                                            ; preds = %bb.gd
  %i.wa = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #34
          to label %.noexc514 unwind label %.loopexit.split-lp ; 4 uses

.noexc514:                                        ; preds = %bb.ge
  invoke void @_ZN4cvc58internal6theory5arith6linear7TreeLogC1Ev(ptr noundef nonnull align 8 dereferenceable(133) %i.wa)
          to label %bb.gf unwind label %bb.gg

bb.gf:                                            ; preds = %.noexc514
  store ptr %i.wa, ptr %i.ab, align 8, !tbaa !740
  br label %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate10getTreeLogEv.exit517

bb.gg:                                            ; preds = %.noexc514
  %i.wb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.wa, i64 noundef 136) #35
  br label %.body

_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate10getTreeLogEv.exit517: ; preds = %bb.gf, %bb.gd
  %i.wc = phi ptr [ %i.wa, %bb.gf ], [ %i.vy, %bb.gd ]
  %i.wd = invoke noundef i32 @_ZNK4cvc58internal6theory5arith6linear7TreeLog9getRootIdEv(ptr noundef nonnull align 8 dereferenceable(133) %i.wc)
          to label %bb.gh unwind label %.loopexit.split-lp

bb.gh:                                            ; preds = %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate10getTreeLogEv.exit517
  %i.we = icmp eq i32 %3, %i.wd
  br i1 %i.we, label %bb.gi, label %.loopexit

bb.gi:                                            ; preds = %bb.gh
  %i.wf = invoke noundef zeroext i1 @_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate12replayLemmasEPNS3_18ApproximateSimplexE(ptr noundef nonnull align 8 dereferenceable(9440) %1, ptr noundef %2)
          to label %bb.gj unwind label %.loopexit.split-lp

bb.gj:                                            ; preds = %bb.gi
  %i.wg = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.wh = zext i1 %i.wf to i8
  store i8 %i.wh, ptr %i.wg, align 8, !tbaa !1554
  %i.wi = getelementptr inbounds nuw i8, ptr %1, i64 8272
  %i.wj = getelementptr inbounds nuw i8, ptr %1, i64 8352 ; 5 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %1, i64 8336 ; 4 uses
  %i.wl = load i64, ptr %i.wj, align 8, !tbaa !1596 ; 2 uses
  %i.wm = load i64, ptr %i.wk, align 8, !tbaa !1597
  %i.wn = icmp eq i64 %i.wl, %i.wm
  br i1 %i.wn, label %.loopexit, label %.lr.ph910

.lr.ph910:                                        ; preds = %bb.gj
  %i.wo = getelementptr inbounds nuw i8, ptr %1, i64 8312 ; 3 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %1, i64 8280
  %i.ws = getelementptr inbounds nuw i8, ptr %1, i64 8360 ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %1, i64 8320
  %i.wu = getelementptr inbounds nuw i8, ptr %1, i64 8376 ; 3 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %1, i64 8384
  %i.ww = getelementptr inbounds nuw i8, ptr %1, i64 8368
  br label %bb.gk

bb.gk:                                            ; preds = %.lr.ph910, %_ZN4cvc58internal9TrustNodeD2Ev.exit
  %i.wx = phi i64 [ %i.wl, %.lr.ph910 ], [ %i.zr, %_ZN4cvc58internal9TrustNodeD2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  %i.wy = load ptr, ptr %i.wo, align 8, !tbaa !655
  %i.wz = getelementptr inbounds nuw [24 x i8], ptr %i.wy, i64 %i.wx ; 3 uses
  %i.xa = load i32, ptr %i.wz, align 8, !tbaa !1273
  store i32 %i.xa, ptr %19, align 8, !tbaa !1273
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wz, i64 8
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !410 ; 5 uses
  store ptr %i.xc, ptr %i.wp, align 8, !tbaa !410
  %i.xd = load i64, ptr %i.xc, align 8            ; 3 uses
  %i.xe = lshr i64 %i.xd, 40
  %i.xf = trunc nuw nsw i64 %i.xe to i32
  %i.xg = and i32 %i.xf, 1048575                  ; 3 uses
  %i.xh = icmp samesign ult i32 %i.xg, 1048574
  br i1 %i.xh, label %bb.gl, label %bb.gm, !prof !411

bb.gl:                                            ; preds = %bb.gk
  %i.xi = add nuw nsw i32 %i.xg, 1
  %i.xj = zext nneg i32 %i.xi to i64
  %i.xk = shl nuw nsw i64 %i.xj, 40
  %i.xl = and i64 %i.xd, -1152920405095219201
  %i.xm = or i64 %i.xk, %i.xl
  store i64 %i.xm, ptr %i.xc, align 8
  br label %bb.go

bb.gm:                                            ; preds = %bb.gk
  %i.xn = icmp eq i32 %i.xg, 1048574
  br i1 %i.xn, label %bb.gn, label %bb.go, !prof !412

bb.gn:                                            ; preds = %bb.gm
  %i.xo = or i64 %i.xd, 1152920405095219200
  store i64 %i.xo, ptr %i.xc, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xc)
          to label %bb.go unwind label %bb.gz

bb.go:                                            ; preds = %bb.gm, %bb.gl, %bb.gn
  %i.xp = getelementptr inbounds nuw i8, ptr %i.wz, i64 16
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !1277
  store ptr %i.xq, ptr %i.wq, align 8, !tbaa !1277
  %i.xr = load ptr, ptr %i.wr, align 8, !tbaa !614 ; 2 uses
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !615
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 16
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !622
  %i.xv = getelementptr inbounds i8, ptr %i.xu, i64 -8
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !624
  %i.xx = icmp eq ptr %i.xr, %i.xw
  br i1 %i.xx, label %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  invoke void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(96) %i.wi)
          to label %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i unwind label %bb.ha

_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i: ; preds = %bb.gp, %bb.go
  %i.xy = load i64, ptr %i.wj, align 8, !tbaa !1596
  %i.xz = add i64 %i.xy, 1                        ; 3 uses
  store i64 %i.xz, ptr %i.wj, align 8, !tbaa !1596
  %i.ya = load i64, ptr %i.wk, align 8, !tbaa !1597
  %i.yb = icmp eq i64 %i.xz, %i.ya
  br i1 %i.yb, label %bb.gq, label %_ZN4cvc57context7CDQueueINS_8internal9TrustNodeENS0_14DefaultCleanUpIS3_EESaIS3_EE3popEv.exit

bb.gq:                                            ; preds = %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i
  %i.yc = load i64, ptr %i.ws, align 8, !tbaa !1598 ; 3 uses
  %.not.i519 = icmp eq i64 %i.yc, %i.xz
  br i1 %.not.i519, label %_ZN4cvc57context7CDQueueINS_8internal9TrustNodeENS0_14DefaultCleanUpIS3_EESaIS3_EE3popEv.exit, label %_ZN4cvc57context6CDListINS_8internal9TrustNodeENS0_14DefaultCleanUpIS3_EESaIS3_EE12truncateListEm.exit.i

_ZN4cvc57context6CDListINS_8internal9TrustNodeENS0_14DefaultCleanUpIS3_EESaIS3_EE12truncateListEm.exit.i: ; preds = %bb.gq
  store i64 %i.yc, ptr %i.wk, align 8, !tbaa !1597
  %i.yd = load ptr, ptr %i.wo, align 8, !tbaa !1599 ; 3 uses
  %i.ye = getelementptr inbounds [24 x i8], ptr %i.yd, i64 %i.yc
  %i.yf = load ptr, ptr %i.wt, align 8, !tbaa !1599
  %i.yg = ptrtoint ptr %i.yd to i64
  %i.yh = ptrtoint ptr %i.yf to i64
  %i.yi = sub i64 %i.yh, %i.yg
  %i.yj = getelementptr inbounds i8, ptr %i.yd, i64 %i.yi
  %i.yk = invoke ptr @_ZNSt6vectorIN4cvc58internal9TrustNodeESaIS2_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS2_S4_EES8_(ptr noundef nonnull align 8 dereferenceable(24) %i.wo, ptr %i.ye, ptr %i.yj)
          to label %.noexc521 unwind label %bb.ha ; 0 uses

.noexc521:                                        ; preds = %_ZN4cvc57context6CDListINS_8internal9TrustNodeENS0_14DefaultCleanUpIS3_EESaIS3_EE12truncateListEm.exit.i
  %i.yl = load i64, ptr %i.ws, align 8, !tbaa !1598
  store i64 %i.yl, ptr %i.wj, align 8, !tbaa !1596
  br label %_ZN4cvc57context7CDQueueINS_8internal9TrustNodeENS0_14DefaultCleanUpIS3_EESaIS3_EE3popEv.exit

_ZN4cvc57context7CDQueueINS_8internal9TrustNodeENS0_14DefaultCleanUpIS3_EESaIS3_EE3popEv.exit: ; preds = %.noexc521, %bb.gq, %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i
  %i.ym = load ptr, ptr %i.wu, align 8, !tbaa !656 ; 5 uses
  %i.yn = load ptr, ptr %i.wv, align 8, !tbaa !658
  %.not.i522 = icmp eq ptr %i.ym, %i.yn
  br i1 %.not.i522, label %bb.gv, label %bb.gr

bb.gr:                                            ; preds = %_ZN4cvc57context7CDQueueINS_8internal9TrustNodeENS0_14DefaultCleanUpIS3_EESaIS3_EE3popEv.exit
  %i.yo = load i32, ptr %19, align 8, !tbaa !1273
  store i32 %i.yo, ptr %i.ym, align 8, !tbaa !1273
  %i.yp = getelementptr inbounds nuw i8, ptr %i.ym, i64 8
  %i.yq = load ptr, ptr %i.wp, align 8, !tbaa !410 ; 5 uses
  store ptr %i.yq, ptr %i.yp, align 8, !tbaa !410
  %i.yr = load i64, ptr %i.yq, align 8            ; 3 uses
  %i.ys = lshr i64 %i.yr, 40
  %i.yt = trunc nuw nsw i64 %i.ys to i32
  %i.yu = and i32 %i.yt, 1048575                  ; 3 uses
  %i.yv = icmp samesign ult i32 %i.yu, 1048574
  br i1 %i.yv, label %bb.gs, label %bb.gt, !prof !411

bb.gs:                                            ; preds = %bb.gr
  %i.yw = add nuw nsw i32 %i.yu, 1
  %i.yx = zext nneg i32 %i.yw to i64
  %i.yy = shl nuw nsw i64 %i.yx, 40
  %i.yz = and i64 %i.yr, -1152920405095219201
  %i.za = or i64 %i.yy, %i.yz
  store i64 %i.za, ptr %i.yq, align 8
  br label %_ZN4cvc58internal9TrustNodeC2ERKS1_.exit.i

bb.gt:                                            ; preds = %bb.gr
  %i.zb = icmp eq i32 %i.yu, 1048574
  br i1 %i.zb, label %bb.gu, label %_ZN4cvc58internal9TrustNodeC2ERKS1_.exit.i, !prof !412

bb.gu:                                            ; preds = %bb.gt
  %i.zc = or i64 %i.yr, 1152920405095219200
  store i64 %i.zc, ptr %i.yq, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yq)
          to label %_ZN4cvc58internal9TrustNodeC2ERKS1_.exit.i unwind label %bb.ha
end_hunk_2
begin_hunk_3_@_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate12tryBranchCutEPNS3_18ApproximateSimplexEiRNS3_13BranchCutInfoE:bb.a
  br i1 %i.bc, label %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13selectSimplexEb.exit.sink.split, label %bb.q

bb.q:                                             ; preds = %.noexc89
  %i.bd = invoke noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(9440) %0)
          to label %.noexc90 unwind label %bb.z

.noexc90:                                         ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 200
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !419, !nonnull !371, !align !372
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 267
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !1584, !range !612, !noundef !371
  %i.bi = trunc nuw i8 %i.bh to i1
  %. = select i1 %i.bi, i64 6752, i64 5680
  br label %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13selectSimplexEb.exit.sink.split

_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13selectSimplexEb.exit.sink.split: ; preds = %.noexc90, %.noexc89
  %.sink238 = phi i64 [ 6104, %.noexc89 ], [ %., %.noexc90 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %.sink238 ; 2 uses
  store ptr %i.bj, ptr %i.au, align 8, !tbaa !1582
  br label %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13selectSimplexEb.exit

_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13selectSimplexEb.exit: ; preds = %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13selectSimplexEb.exit.sink.split, %bb.o
  %.0.i = phi ptr [ %i.av, %bb.o ], [ %i.bj, %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13selectSimplexEb.exit.sink.split ] ; 2 uses
  %i.bk = load ptr, ptr %.0.i, align 8, !tbaa !8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = invoke noundef i32 %i.bm(ptr noundef nonnull align 8 dereferenceable(304) %.0.i, i1 noundef zeroext false)
          to label %bb.r unwind label %bb.z       ; 0 uses

bb.r:                                             ; preds = %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13selectSimplexEb.exit
  invoke void @_ZN4cvc58internal6theory5arith6linear20LinearEqualityModule23stopTrackingBoundCountsEv(ptr noundef nonnull align 8 dereferenceable(456) %i.as)
          to label %bb.s unwind label %bb.z

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN4cvc58internal6theory5arith6linear14ArithVariables24startQueueingBoundCountsEv(ptr noundef nonnull align 8 dereferenceable(568) %i.ar)
          to label %bb.t unwind label %bb.z

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @_ZN4cvc58internal9CodeTimerD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !679
  %.pre217 = load ptr, ptr %i.al, align 8, !tbaa !676
  br label %bb.ad

bb.u:                                             ; preds = %bb.e, %.critedge72, %bb.d
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.v:                                             ; preds = %bb.i, %.noexc86, %bb.h, %bb.g
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.w:                                             ; preds = %bb.k
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.x:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.y:                                             ; preds = %bb.n, %bb.m
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.q, %bb.p, %bb.s, %bb.r, %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13selectSimplexEb.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.z ], [ %i.bs, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.aa ], [ %i.br, %bb.x ]
  call void @_ZN4cvc58internal9CodeTimerD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %8) #27
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.w
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ab ], [ %i.bq, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.am

bb.ad:                                            ; preds = %bb.t, %bb.j
  %i.bu = phi ptr [ %.pre217, %bb.t ], [ %i.am, %bb.j ] ; 2 uses
  %i.bv = phi ptr [ %.pre, %bb.t ], [ %i.ao, %bb.j ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4272
  %.not213 = icmp eq ptr %i.bv, %i.bu
  br i1 %.not213, label %.critedge72, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 4
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  br label %bb.af

bb.ae:                                            ; preds = %bb.ai, %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EED2Ev.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.af:                                            ; preds = %.lr.ph, %bb.aj
  %.041210 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !1565 ; 4 uses
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !1567
  %.not.i.i = icmp eq ptr %i.cf, %i.cg
  br i1 %.not.i.i, label %bb.ag, label %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE9push_backEOS9_.exit.thread

_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE9push_backEOS9_.exit.thread: ; preds = %bb.af
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i8 0, i64 24, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store ptr %i.ch, ptr %i.cb, align 8, !tbaa !1565
  br label %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EED2Ev.exit

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE9push_backEOS9_.exit unwind label %bb.ak

_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE9push_backEOS9_.exit: ; preds = %bb.ag
  %.pr = load ptr, ptr %10, align 8, !tbaa !1499  ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE9push_backEOS9_.exit
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !1500
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %.pr to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.cl) #35
  br label %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EED2Ev.exit

_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EED2Ev.exit: ; preds = %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE9push_backEOS9_.exit.thread, %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE9push_backEOS9_.exit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.cm = load ptr, ptr %i.al, align 8, !tbaa !676
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %.041210
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !1585
  %i.cp = load ptr, ptr %i.cb, align 8, !tbaa !1555
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -24
  invoke void @_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate23intHoleConflictToVectorEPKNS3_10ConstraintERSt6vectorIS7_SaIS7_EE(ptr noundef %i.co, ptr noundef nonnull align 8 dereferenceable(24) %i.cq)
          to label %bb.ai unwind label %bb.ae

bb.ai:                                            ; preds = %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EED2Ev.exit
  %i.cr = load ptr, ptr %i.cb, align 8, !tbaa !1555
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -24
  invoke void @_ZN4cvc58internal6theory5arith6linear10Constraint15assertionFringeERSt6vectorIPKS4_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.cs)
          to label %bb.aj unwind label %bb.ae

bb.aj:                                            ; preds = %bb.ai
  %i.ct = add nuw i64 %.041210, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ct, %i.ca
  br i1 %exitcond.not, label %.critedge72, label %bb.af, !llvm.loop !1630

bb.ak:                                            ; preds = %bb.ag
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %i.cv = load ptr, ptr %10, align 8, !tbaa !1499 ; 3 uses
  %.not.i.i.i92 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i92, label %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EED2Ev.exit93, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cw = load ptr, ptr %i.cd, align 8, !tbaa !1500
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = sub i64 %i.cx, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.cz) #35
  br label %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EED2Ev.exit93

_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EED2Ev.exit93: ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.am

.critedge72:                                      ; preds = %bb.aj, %bb.ad
  invoke void @_ZN4cvc57context7Context10ScopedPushD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7)
          to label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit122 unwind label %bb.u

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit122: ; preds = %.critedge72
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1565 ; 2 uses
  %i.dc = load ptr, ptr %6, align 8, !tbaa !1557  ; 2 uses
  %.not214 = icmp eq ptr %i.db, %i.dc
  br i1 %.not214, label %.loopexit, label %.lr.ph212

.lr.ph212:                                        ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit122
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = sdiv exact i64 %i.df, 24
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.ao

bb.am:                                            ; preds = %bb.ae, %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EED2Ev.exit93, %bb.ac, %bb.v
  %.pn64.pn = phi { ptr, i32 } [ %i.bp, %bb.v ], [ %i.ce, %bb.ae ], [ %i.cu, %_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EED2Ev.exit93 ], [ %.pn.pn.pn, %bb.ac ]
  invoke void @_ZN4cvc57context7Context10ScopedPushD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7)
          to label %bb.an unwind label %bb.be

bb.an:                                            ; preds = %bb.am, %bb.u
  %.pn64.pn.pn = phi { ptr, i32 } [ %.pn64.pn, %bb.am ], [ %i.bo, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.bd

bb.ao:                                            ; preds = %.lr.ph212, %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13raiseConflictEPKNS3_10ConstraintENS1_11InferenceIdE.exit
  %.0211 = phi i64 [ 0, %.lr.ph212 ], [ %i.fb, %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13raiseConflictEPKNS3_10ConstraintENS1_11InferenceIdE.exit ] ; 2 uses
  %i.di = load ptr, ptr %6, align 8, !tbaa !1557
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %.0211 ; 6 uses
  %.val = load ptr, ptr %i.dj, align 8, !tbaa !1499 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 8      ; 3 uses
  %.val73 = load ptr, ptr %i.dk, align 8, !tbaa !1501
  %i.dl = ptrtoint ptr %.val73 to i64
  %i.dm = ptrtoint ptr %.val to i64
  %i.dn = sub i64 %i.dl, %i.dm                    ; 2 uses
  %i.do = and i64 %i.dn, 34359738360
  %.not.i123 = icmp eq i64 %i.do, 0
  br i1 %.not.i123, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit139, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ao
  %i.dp = lshr exact i64 %i.dn, 3
  %wide.trip.count.i = and i64 %i.dp, 4294967295
  br label %.lr.ph.i124

bb.ap:                                            ; preds = %.lr.ph.i124
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i125 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i125, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit139, label %.lr.ph.i124, !llvm.loop !1587

.lr.ph.i124:                                      ; preds = %bb.ap, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.ap ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv.i
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1260
  %i.ds = icmp eq ptr %i.dr, %i.o
  br i1 %i.ds, label %_ZN4cvc58internal6theory5arith6linearL8containsERKSt6vectorIPKNS3_10ConstraintESaIS7_EEPS5_.exit, label %bb.ap

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit139: ; preds = %bb.ap, %bb.ao
  %i.dt = invoke noundef ptr @_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate23vectorToIntHoleConflictERKSt6vectorIPKNS3_10ConstraintESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.dj)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit139
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %i.dt, ptr %4, align 8
  store i32 16, ptr %.sroa.2.0..sroa_idx.i, align 8
  invoke void @_ZN4cvc57context6CDListISt4pairIPKNS_8internal6theory5arith6linear10ConstraintENS4_11InferenceIdEENS0_14DefaultCleanUpISB_EESaISB_EE9push_backERKSB_(ptr noundef nonnull align 8 dereferenceable(74) %i.bw, ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %.noexc140 unwind label %bb.as

.noexc140:                                        ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.du = load ptr, ptr %i.dh, align 8, !tbaa !1237, !nonnull !371, !align !372 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  %i.dx = load ptr, ptr %i.dw, align 8
  invoke void %i.dx(ptr noundef nonnull align 8 dereferenceable(160) %i.du)
          to label %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13raiseConflictEPKNS3_10ConstraintENS1_11InferenceIdE.exit unwind label %bb.as, !inline_history !1263

bb.ar:                                            ; preds = %bb.az, %_ZN4cvc58internal6theory5arith6linearL4dropERSt6vectorIPKNS3_10ConstraintESaIS7_EEPS5_.exit, %_ZN4cvc58internal6theory5arith6linearL8containsERKSt6vectorIPKNS3_10ConstraintESaIS7_EEPS5_.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.as:                                            ; preds = %.noexc140, %bb.aq, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit139
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

_ZN4cvc58internal6theory5arith6linearL8containsERKSt6vectorIPKNS3_10ConstraintESaIS7_EEPS5_.exit: ; preds = %.lr.ph.i124
  %i.ea = invoke noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear7CutInfo6provenEv(ptr noundef nonnull align 8 dereferenceable(88) %3)
          to label %bb.at unwind label %bb.ar

bb.at:                                            ; preds = %_ZN4cvc58internal6theory5arith6linearL8containsERKSt6vectorIPKNS3_10ConstraintESaIS7_EEPS5_.exit
  br i1 %i.ea, label %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13raiseConflictEPKNS3_10ConstraintENS1_11InferenceIdE.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eb = load ptr, ptr %i.dk, align 8, !tbaa !1501 ; 3 uses
  %i.ec = load ptr, ptr %i.dj, align 8, !tbaa !1499 ; 9 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee                    ; 3 uses
  %i.eg = ashr exact i64 %i.ef, 3                 ; 5 uses
  %.not17.i = icmp eq ptr %i.eb, %i.ec
  br i1 %.not17.i, label %._crit_edge.thread.i, label %.lr.ph.i142.preheader

.lr.ph.i142.preheader:                            ; preds = %bb.au
  %i.eh = icmp eq i64 %i.ef, 8
  br i1 %i.eh, label %.lr.ph.i142.epil.preheader, label %.lr.ph.i142.preheader.new

.lr.ph.i142.preheader.new:                        ; preds = %.lr.ph.i142.preheader
  %unroll_iter = and i64 %i.eg, -2
  br label %.lr.ph.i142

.lr.ph.i142:                                      ; preds = %bb.ax, %.lr.ph.i142.preheader.new
  %.016.i = phi i64 [ 0, %.lr.ph.i142.preheader.new ], [ %.1.i.1, %bb.ax ] ; 3 uses
  %.01315.i = phi i64 [ 0, %.lr.ph.i142.preheader.new ], [ %i.er, %bb.ax ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i142.preheader.new ], [ %niter.next.1, %bb.ax ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %.01315.i
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !1260 ; 2 uses
  %.not.i143 = icmp eq ptr %i.ej, %i.o
  br i1 %.not.i143, label %.lr.ph.i142.1, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i142
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %.016.i
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !1260
  %i.el = add i64 %.016.i, 1
  br label %.lr.ph.i142.1

.lr.ph.i142.1:                                    ; preds = %bb.av, %.lr.ph.i142
  %.1.i = phi i64 [ %i.el, %bb.av ], [ %.016.i, %.lr.ph.i142 ] ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %.01315.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !1260 ; 2 uses
  %.not.i143.1 = icmp eq ptr %i.eo, %i.o
  br i1 %.not.i143.1, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i142.1
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %.1.i
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !1260
  %i.eq = add i64 %.1.i, 1
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.lr.ph.i142.1
  %.1.i.1 = phi i64 [ %i.eq, %bb.aw ], [ %.1.i, %.lr.ph.i142.1 ] ; 3 uses
  %i.er = add nuw i64 %.01315.i, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i142, !llvm.loop !1631

._crit_edge.i.unr-lcssa:                          ; preds = %bb.ax
  %i.es = and i64 %i.ef, 8
  %lcmp.mod.not = icmp eq i64 %i.es, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i142.epil.preheader

.lr.ph.i142.epil.preheader:                       ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i142.preheader
  %.016.i.epil.init = phi i64 [ 0, %.lr.ph.i142.preheader ], [ %.1.i.1, %._crit_edge.i.unr-lcssa ] ; 3 uses
  %.01315.i.epil.init = phi i64 [ 0, %.lr.ph.i142.preheader ], [ %i.er, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod240 = trunc i64 %i.eg to i1
  call void @llvm.assume(i1 %lcmp.mod240)
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %.01315.i.epil.init
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !1260 ; 2 uses
  %.not.i143.epil = icmp eq ptr %i.eu, %i.o
  br i1 %.not.i143.epil, label %._crit_edge.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i142.epil.preheader
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %.016.i.epil.init
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !1260
  %i.ew = add i64 %.016.i.epil.init, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i142.epil.preheader, %bb.ay, %._crit_edge.i.unr-lcssa
  %.1.i.lcssa = phi i64 [ %.1.i.1, %._crit_edge.i.unr-lcssa ], [ %i.ew, %bb.ay ], [ %.016.i.epil.init, %.lr.ph.i142.epil.preheader ] ; 3 uses
  %i.ex = icmp ugt i64 %.1.i.lcssa, %i.eg
  br i1 %i.ex, label %bb.az, label %._crit_edge.thread.i

bb.az:                                            ; preds = %._crit_edge.i
  %i.ey = sub nuw i64 %.1.i.lcssa, %i.eg
  invoke void @_ZNSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i64 noundef %i.ey)
          to label %_ZN4cvc58internal6theory5arith6linearL4dropERSt6vectorIPKNS3_10ConstraintESaIS7_EEPS5_.exit unwind label %bb.ar

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.au
  %.0.lcssa24.i = phi i64 [ %.1.i.lcssa, %._crit_edge.i ], [ 0, %bb.au ] ; 2 uses
  %i.ez = icmp ult i64 %.0.lcssa24.i, %i.eg
  br i1 %i.ez, label %bb.ba, label %_ZN4cvc58internal6theory5arith6linearL4dropERSt6vectorIPKNS3_10ConstraintESaIS7_EEPS5_.exit

bb.ba:                                            ; preds = %._crit_edge.thread.i
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %.0.lcssa24.i ; 2 uses
  %.not.i.i.i145 = icmp eq ptr %i.eb, %i.fa
  br i1 %.not.i.i.i145, label %_ZN4cvc58internal6theory5arith6linearL4dropERSt6vectorIPKNS3_10ConstraintESaIS7_EEPS5_.exit, label %_ZSt8_DestroyIPPKN4cvc58internal6theory5arith6linear10ConstraintES7_EvT_S9_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPPKN4cvc58internal6theory5arith6linear10ConstraintES7_EvT_S9_RSaIT0_E.exit.i.i.i: ; preds = %bb.ba
  store ptr %i.fa, ptr %i.dk, align 8, !tbaa !1501
  br label %_ZN4cvc58internal6theory5arith6linearL4dropERSt6vectorIPKNS3_10ConstraintESaIS7_EEPS5_.exit

_ZN4cvc58internal6theory5arith6linearL4dropERSt6vectorIPKNS3_10ConstraintESaIS7_EEPS5_.exit: ; preds = %_ZSt8_DestroyIPPKN4cvc58internal6theory5arith6linear10ConstraintES7_EvT_S9_RSaIT0_E.exit.i.i.i, %bb.ba, %._crit_edge.thread.i, %bb.az
  invoke void @_ZN4cvc58internal6theory5arith6linear7CutInfo14setExplanationERKSt6vectorIPKNS3_10ConstraintESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.dj)
          to label %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13raiseConflictEPKNS3_10ConstraintENS1_11InferenceIdE.exit unwind label %bb.ar

_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13raiseConflictEPKNS3_10ConstraintENS1_11InferenceIdE.exit: ; preds = %_ZN4cvc58internal6theory5arith6linearL4dropERSt6vectorIPKNS3_10ConstraintESaIS7_EEPS5_.exit, %.noexc140, %bb.at
  %i.fb = add nuw i64 %.0211, 1                   ; 2 uses
  %exitcond216.not = icmp eq i64 %i.fb, %i.dg
  br i1 %exitcond216.not, label %.loopexit, label %bb.ao, !llvm.loop !1632

.loopexit:                                        ; preds = %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13raiseConflictEPKNS3_10ConstraintENS1_11InferenceIdE.exit, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit122, %_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate19replayGetConstraintERKNS3_7CutInfoE.exit
  %i.fc = load ptr, ptr %6, align 8, !tbaa !1557  ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !1565 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fc, %i.fe
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fl, %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i ], [ %i.fc, %.loopexit ] ; 3 uses
  %i.ff = load ptr, ptr %.05.i.i.i, align 8, !tbaa !1499 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !1500
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.ff to i64
  %i.fk = sub i64 %i.fi, %i.fj
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.fk) #35
  br label %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i: ; preds = %bb.bb, %.lr.ph.i.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i162 = icmp eq ptr %i.fl, %i.fe
  br i1 %.not.i.i.i162, label %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1566

_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !1557
  br label %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i, %.loopexit
  %i.fm = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i ], [ %i.fc, %.loopexit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.fm, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i
  %i.fn = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !1567
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = ptrtoint ptr %i.fm to i64
  %i.fr = sub i64 %i.fp, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef %i.fr) #35
  br label %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit

_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  ret void

bb.bd:                                            ; preds = %bb.an, %bb.as, %bb.ar, %bb.c, %bb.b
  %.pn64.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.l, %bb.b ], [ %i.dy, %bb.ar ], [ %i.m, %bb.c ], [ %.pn64.pn.pn, %bb.an ], [ %i.dz, %bb.as ]
  call void @_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  resume { ptr, i32 } %.pn64.pn.pn.pn.pn.pn

bb.be:                                            ; preds = %bb.am
  %i.fs = landingpad { ptr, i32 }
          catch ptr null
  %i.ft = extractvalue { ptr, i32 } %i.fs, 0
  call void @__clang_call_terminate(ptr %i.ft) #36
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate12replayAssertEPNS3_10ConstraintE(ptr noundef nonnull align 8 dereferenceable(9440) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.601", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1514
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1262
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1267
  %i.g = icmp ne i64 %i.f, -1                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1267
  %.not62 = icmp eq i64 %i.i, -1
  br i1 %.not62, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4cvc58internal6theory5arith6linear10Constraint21setInternalAssumptionEb(ptr noundef nonnull align 8 dereferenceable(145) %1, i1 noundef zeroext %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4272
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %1, ptr %2, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 17, ptr %.sroa.2.0..sroa_idx.i, align 8
  call void @_ZN4cvc57context6CDListISt4pairIPKNS_8internal6theory5arith6linear10ConstraintENS4_11InferenceIdEENS0_14DefaultCleanUpISB_EESaISB_EE9push_backERKSB_(ptr noundef nonnull align 8 dereferenceable(74) %i.j, ptr noundef nonnull align 8 dereferenceable(12) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1237, !nonnull !371, !align !372 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(160) %i.l), !inline_history !1263
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = tail call noundef zeroext i1 @_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate14assertionCasesEPNS3_10ConstraintE(ptr noundef nonnull align 8 dereferenceable(9440) %0, ptr noundef nonnull %1) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  ret void
}

declare void @_ZN4cvc58internal6theory5arith6linear14ArithVariables23stopQueueingBoundCountsEv(ptr noundef nonnull align 8 dereferenceable(568)) local_unnamed_addr #1

declare void @_ZN4cvc58internal6theory5arith6linear14ArithVariables18processBoundsQueueERNS3_19BoundUpdateCallbackE(ptr noundef nonnull align 8 dereferenceable(568), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN4cvc58internal6theory5arith6linear20LinearEqualityModule24startTrackingBoundCountsEv(ptr noundef nonnull align 8 dereferenceable(456)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(304) ptr @_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate13selectSimplexEb(ptr noundef nonnull align 8 dereferenceable(9440) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  br i1 %1, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7880 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1582 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !419, !nonnull !371, !align !372
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 265
  %i.h = load i8, ptr %i.g, align 1, !tbaa !1583, !range !612, !noundef !371
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 6104 ; 2 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !1582
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.k = tail call noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !419, !nonnull !371, !align !372
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 267
  %i.o = load i8, ptr %i.n, align 1, !tbaa !1584, !range !612, !noundef !371
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 6752 ; 2 uses
  store ptr %i.q, ptr %i.a, align 8, !tbaa !1582
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 2 uses
  store ptr %i.r, ptr %i.a, align 8, !tbaa !1582
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 7888 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1633 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.v = tail call noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 200
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !419, !nonnull !371, !align !372
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 265
  %i.z = load i8, ptr %i.y, align 1, !tbaa !1583, !range !612, !noundef !371
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 6104 ; 2 uses
  store ptr %i.ab, ptr %i.s, align 8, !tbaa !1633
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ac = tail call noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 6752 ; 2 uses
  store ptr %i.ad, ptr %i.s, align 8, !tbaa !1633
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h, %bb.j, %bb.b, %bb.f, %bb.g, %bb.d
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.j, %bb.d ], [ %i.r, %bb.g ], [ %i.q, %bb.f ], [ %i.ab, %bb.j ], [ %i.t, %bb.h ], [ %i.ad, %bb.k ]
  ret ptr %.0
}

declare void @_ZN4cvc58internal6theory5arith6linear20LinearEqualityModule23stopTrackingBoundCountsEv(ptr noundef nonnull align 8 dereferenceable(456)) local_unnamed_addr #1

declare void @_ZN4cvc58internal6theory5arith6linear14ArithVariables24startQueueingBoundCountsEv(ptr noundef nonnull align 8 dereferenceable(568)) local_unnamed_addr #1
end_hunk_3
begin_hunk_4_@_ZN4cvc58internal6theory5arith6linear18TheoryArithPrivate23entireStateIsConsistentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.x

_ZNK4cvc58internal6theory5arith6linear7Tableau7isBasicEj.exit.thread: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.g, %_ZNK4cvc58internal6theory5arith6linear7Tableau7isBasicEj.exit
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4cvc58internal6EnvObj7warningEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !8
  %i.av = getelementptr i8, ptr %i.au, i64 -24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %i.at, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 240
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !765 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i, label %bb.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.i:                                             ; preds = %_ZNK4cvc58internal6theory5arith6linear7Tableau7isBasicEj.exit.thread
  call void @_ZSt16__throw_bad_castv() #37
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZNK4cvc58internal6theory5arith6linear7Tableau7isBasicEj.exit.thread
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !780
  %.not.i1.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i1.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 67
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !380
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.az)
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call noundef signext i8 %i.bg(ptr noundef nonnull align 8 dereferenceable(570) %i.az, i8 noundef signext 10), !inline_history !1634
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.j, %bb.k
  %.0.i.i.i = phi i8 [ %i.bd, %bb.j ], [ %i.bh, %bb.k ]
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.at, i8 noundef signext %.0.i.i.i)
  br label %.sink.split

bb.l:                                             ; preds = %bb.b
  %i.bj = call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear14ArithVariables9isIntegerEj(ptr noundef nonnull align 8 dereferenceable(568) %i.a, i32 noundef %i.n)
  br i1 %i.bj, label %bb.m, label %bb.w

bb.m:                                             ; preds = %bb.l
  %i.bk = call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear14ArithVariables18integralAssignmentEj(ptr noundef nonnull align 8 dereferenceable(568) %i.a, i32 noundef %i.n)
  br i1 %i.bk, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZNK4cvc58internal6theory5arith6linear14ArithVariables10printModelEj(ptr noundef nonnull align 8 dereferenceable(568) %i.a, i32 noundef %i.n)
  %i.bl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4cvc58internal6EnvObj7warningEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !378
  %i.bn = load i64, ptr %i.k, align 8, !tbaa !381
  %i.bo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef %i.bm, i64 noundef %i.bn) ; 3 uses
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.100, i64 noundef 1) ; 0 uses
  %i.bq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.299, i64 noundef 47) ; 0 uses
  %i.br = zext i32 %i.n to i64                    ; 3 uses
  %i.bs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, i64 noundef %i.br)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @_ZNK4cvc58internal6theory5arith6linear14ArithVariables6asNodeEj(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %5, ptr noundef nonnull align 8 dereferenceable(568) %i.a, i32 noundef %i.n)
  %i.bt = load ptr, ptr %5, align 8, !tbaa !410
  invoke void @_ZNK4cvc58internal4expr9NodeValue8toStreamERSo(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(8) %i.bs)
          to label %_ZN4cvc58internallsERSoNS0_12NodeTemplateILb0EEE.exit20 unwind label %bb.s

_ZN4cvc58internallsERSoNS0_12NodeTemplateILb0EEE.exit20: ; preds = %bb.n
  %i.bu = load ptr, ptr %5, align 8, !tbaa !410   ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 8            ; 3 uses
  %i.bw = and i64 %i.bv, 1152920405095219200
  %.not.i.i21 = icmp eq i64 %i.bw, 1152920405095219200
  br i1 %.not.i.i21, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit22, label %bb.o, !prof !412

bb.o:                                             ; preds = %_ZN4cvc58internallsERSoNS0_12NodeTemplateILb0EEE.exit20
  %i.bx = add i64 %i.bv, 1152920405095219200
  %i.by = and i64 %i.bx, 1152920405095219200      ; 2 uses
  %i.bz = and i64 %i.bv, -1152920405095219201
  %i.ca = or disjoint i64 %i.by, %i.bz
  store i64 %i.ca, ptr %i.bu, align 8
  %i.cb = icmp eq i64 %i.by, 0
  br i1 %i.cb, label %bb.p, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit22, !prof !412

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit22 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #36
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit22: ; preds = %_ZN4cvc58internallsERSoNS0_12NodeTemplateILb0EEE.exit20, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.ce = load ptr, ptr %i.m, align 8, !tbaa !760
  %i.cf = load ptr, ptr %i.l, align 8, !tbaa !639 ; 2 uses
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = ashr exact i64 %i.ci, 2
  %.not.i.i23 = icmp ugt i64 %i.cj, %i.br
  br i1 %.not.i.i23, label %_ZNK4cvc58internal6theory5arith6linear7Tableau7isBasicEj.exit25, label %_ZNK4cvc58internal6theory5arith6linear7Tableau7isBasicEj.exit25.thread

_ZNK4cvc58internal6theory5arith6linear7Tableau7isBasicEj.exit25: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit22
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.br
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !418
  %.not34 = icmp eq i32 %i.cl, -1
  br i1 %.not34, label %_ZNK4cvc58internal6theory5arith6linear7Tableau7isBasicEj.exit25.thread, label %bb.r

bb.r:                                             ; preds = %_ZNK4cvc58internal6theory5arith6linear7Tableau7isBasicEj.exit25
  %i.cm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4cvc58internal6EnvObj7warningEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.cn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull @.str.276, i64 noundef 8) ; 0 uses
  br label %_ZNK4cvc58internal6theory5arith6linear7Tableau7isBasicEj.exit25.thread

bb.s:                                             ; preds = %bb.n
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.x

_ZNK4cvc58internal6theory5arith6linear7Tableau7isBasicEj.exit25.thread: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit22, %bb.r, %_ZNK4cvc58internal6theory5arith6linear7Tableau7isBasicEj.exit25
  %i.cp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4cvc58internal6EnvObj7warningEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !8
  %i.cr = getelementptr i8, ptr %i.cq, i64 -24
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds i8, ptr %i.cp, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 240
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !765 ; 6 uses
  %.not.i.i.i26 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i26, label %bb.t, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i27

bb.t:                                             ; preds = %_ZNK4cvc58internal6theory5arith6linear7Tableau7isBasicEj.exit25.thread
  call void @_ZSt16__throw_bad_castv() #37
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i27: ; preds = %_ZNK4cvc58internal6theory5arith6linear7Tableau7isBasicEj.exit25.thread
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !780
  %.not.i1.i.i28 = icmp eq i8 %i.cx, 0
  br i1 %.not.i1.i.i28, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i27
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 67
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !380
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit30

bb.v:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i27
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cv)
  %i.da = load ptr, ptr %i.cv, align 8, !tbaa !8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = call noundef signext i8 %i.dc(ptr noundef nonnull align 8 dereferenceable(570) %i.cv, i8 noundef signext 10), !inline_history !1634
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit30

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit30: ; preds = %bb.u, %bb.v
  %.0.i.i.i29 = phi i8 [ %i.cz, %bb.u ], [ %i.dd, %bb.v ]
  %i.de = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, i8 noundef signext %.0.i.i.i29)
  br label %.sink.split

.sink.split:                                      ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit30
  %.sink = phi ptr [ %i.de, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit30 ], [ %i.bi, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %i.df = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %.sink) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %bb.l, %bb.m
  %.1 = phi i1 [ %.01741, %bb.m ], [ %.01741, %bb.l ], [ false, %.sink.split ] ; 2 uses
  %i.dg = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4cvc58internal6theory5arith6linear14ArithVariables12var_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  %i.dh = call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear14ArithVariables12var_iteratorneERKS5_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br i1 %i.dh, label %bb.b, label %._crit_edge, !llvm.loop !1635

bb.x:                                             ; preds = %bb.s, %bb.h
  %.pn = phi { ptr, i32 } [ %i.co, %bb.s ], [ %i.as, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn
}

declare noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear7CutInfo6provenEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #1

declare void @_ZN4cvc58internal6theory5arith6linear7CutInfo14setExplanationERKSt6vectorIPKNS3_10ConstraintESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN4cvc58internal6theory5arith6linear10Constraint21setInternalAssumptionEb(ptr noundef nonnull align 8 dereferenceable(145), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4cvc58internal6theory5arith6linear18TheoryArithPrivate20resolveOutPropagatedERSt6vectorIS5_IPKNS3_10ConstraintESaIS8_EESaISA_EE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(9440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1565 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !1557   ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.066 = phi i64 [ %i.j, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1557
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.066
  tail call void @_ZN4cvc58internal6theory5arith6linear10Constraint15assertionFringeERSt6vectorIPKS4_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.i)
  %i.j = add nuw i64 %.066, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1594

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4cvc58internal6theory5arith6linear18TheoryArithPrivate11subsumptionERSt6vectorIS5_IPKNS3_10ConstraintESaIS8_EESaISA_EE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1565 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !1557   ; 3 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN4cvc58internal6theory5arith6linear10ConstraintESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit
  %.pre = load ptr, ptr %1, align 8, !tbaa !1555
  %.pre70 = load ptr, ptr %i.a, align 8, !tbaa !1555
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.h = phi ptr [ %.pre70, %._crit_edge.loopexit ], [ %i.b, %bb.a ] ; 5 uses
  %i.i = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.c, %bb.a ] ; 5 uses
  %.not.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaISA_EES2_ISC_SaISC_EEEENS7_7SizeOrdEEvT_SI_T0_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv exact i64 %i.l, 24
  %i.n = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.o = shl nuw nsw i64 %i.n, 1
  %i.p = xor i64 %i.o, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaISA_EES2_ISC_SaISC_EEEElNS0_5__ops15_Iter_comp_iterINS7_7SizeOrdEEEEvT_SL_T0_T1_(ptr %i.i, ptr %i.h, i64 noundef %i.p)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaISA_EES2_ISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterINS7_7SizeOrdEEEEvT_SL_T0_(ptr %i.i, ptr %i.h)
  %.pre71 = load ptr, ptr %i.a, align 8, !tbaa !1565
  %.pre72 = load ptr, ptr %1, align 8, !tbaa !1557
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaISA_EES2_ISC_SaISC_EEEENS7_7SizeOrdEEvT_SI_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaISA_EES2_ISC_SaISC_EEEENS7_7SizeOrdEEvT_SI_T0_.exit: ; preds = %._crit_edge, %bb.b
  %i.q = phi ptr [ %i.i, %._crit_edge ], [ %.pre72, %bb.b ] ; 2 uses
  %i.r = phi ptr [ %i.h, %._crit_edge ], [ %.pre71, %bb.b ] ; 2 uses
  %.not69 = icmp eq ptr %i.r, %i.q
  br i1 %.not69, label %._crit_edge68, label %.lr.ph67

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN4cvc58internal6theory5arith6linear10ConstraintESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit
  %.057 = phi i64 [ %i.ae, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN4cvc58internal6theory5arith6linear10ConstraintESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !1557
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %.057 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !737  ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !737  ; 4 uses
  %.not.i.i38 = icmp eq ptr %i.u, %i.w
  br i1 %.not.i.i38, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN4cvc58internal6theory5arith6linear10ConstraintESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 3
  %i.ab = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = shl nuw nsw i64 %i.ab, 1
  %i.ad = xor i64 %i.ac, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4cvc58internal6theory5arith6linear10ConstraintESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_less_iterEEvT_SH_T0_T1_(ptr %i.u, ptr %i.w, i64 noundef %i.ad)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN4cvc58internal6theory5arith6linear10ConstraintESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_less_iterEEvT_SH_T0_(ptr %i.u, ptr %i.w)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN4cvc58internal6theory5arith6linear10ConstraintESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN4cvc58internal6theory5arith6linear10ConstraintESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit: ; preds = %.lr.ph, %bb.c
  %i.ae = add nuw i64 %.057, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.g
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1636

.loopexit:                                        ; preds = %bb.g
  %.pre76 = ptrtoint ptr %i.bw to i64
  %.pre77 = ptrtoint ptr %i.bv to i64
  %.pre79 = sub i64 %.pre76, %.pre77
  %.pre81 = sdiv exact i64 %.pre79, 24
  %i.af = icmp ult i64 %i.ai, %.pre81
  br i1 %i.af, label %.lr.ph67, label %._crit_edge68, !llvm.loop !1637

.lr.ph67:                                         ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaISA_EES2_ISC_SaISC_EEEENS7_7SizeOrdEEvT_SI_T0_.exit, %.loopexit
  %i.ag = phi ptr [ %i.bv, %.loopexit ], [ %i.q, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaISA_EES2_ISC_SaISC_EEEENS7_7SizeOrdEEvT_SI_T0_.exit ] ; 3 uses
  %i.ah = phi ptr [ %i.bw, %.loopexit ], [ %i.r, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaISA_EES2_ISC_SaISC_EEEENS7_7SizeOrdEEvT_SI_T0_.exit ] ; 3 uses
  %.03666 = phi i64 [ %i.ai, %.loopexit ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaISA_EES2_ISC_SaISC_EEEENS7_7SizeOrdEEvT_SI_T0_.exit ] ; 2 uses
  %i.ai = add nuw i64 %.03666, 1                  ; 4 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = sdiv exact i64 %i.al, 24
  %i.an = icmp ult i64 %i.ai, %i.am
  br i1 %i.an, label %.lr.ph62, label %._crit_edge68

.lr.ph62:                                         ; preds = %.lr.ph67, %bb.g
  %i.ao = phi ptr [ %i.bv, %bb.g ], [ %i.ag, %.lr.ph67 ]
  %i.ap = phi ptr [ %i.bw, %bb.g ], [ %i.ah, %.lr.ph67 ]
  %i.aq = phi ptr [ %i.bx, %bb.g ], [ %i.ag, %.lr.ph67 ] ; 3 uses
  %i.ar = phi ptr [ %i.by, %bb.g ], [ %i.ah, %.lr.ph67 ] ; 4 uses
  %.03760 = phi i64 [ %.1, %bb.g ], [ %i.ai, %.lr.ph67 ] ; 3 uses
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.03666 ; 2 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.03760 ; 4 uses
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !737 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !737 ; 2 uses
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !737 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !737 ; 4 uses
  %i.ba = icmp ne ptr %i.au, %i.aw
  %i.bb = icmp ne ptr %i.ax, %i.az
  %or.cond12.i.i = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %or.cond12.i.i, label %.lr.ph.i.i, label %_ZSt8includesIN9__gnu_cxx17__normal_iteratorIPPKN4cvc58internal6theory5arith6linear10ConstraintESt6vectorIS9_SaIS9_EEEESE_EbT_SF_T0_SG_.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph62, %bb.d
  %.sroa.09.014.i.i = phi ptr [ %i.bg, %bb.d ], [ %i.au, %.lr.ph62 ] ; 2 uses
  %.sroa.05.013.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ %i.ax, %.lr.ph62 ] ; 2 uses
  %i.bc = load ptr, ptr %.sroa.05.013.i.i, align 8, !tbaa !1260 ; 2 uses
  %i.bd = load ptr, ptr %.sroa.09.014.i.i, align 8, !tbaa !1260 ; 2 uses
  %i.be = icmp ult ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZSt8includesIN9__gnu_cxx17__normal_iteratorIPPKN4cvc58internal6theory5arith6linear10ConstraintESt6vectorIS9_SaIS9_EEEESE_EbT_SF_T0_SG_.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.bf = icmp ult ptr %i.bd, %i.bc
  %spec.select.idx.i.i = select i1 %i.bf, i64 0, i64 8
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.013.i.i, i64 %spec.select.idx.i.i ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.09.014.i.i, i64 8 ; 2 uses
  %i.bh = icmp ne ptr %i.bg, %i.aw
  %i.bi = icmp ne ptr %spec.select.i.i, %i.az
  %or.cond.i.i = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZSt8includesIN9__gnu_cxx17__normal_iteratorIPPKN4cvc58internal6theory5arith6linear10ConstraintESt6vectorIS9_SaIS9_EEEESE_EbT_SF_T0_SG_.exit, !llvm.loop !1638

_ZSt8includesIN9__gnu_cxx17__normal_iteratorIPPKN4cvc58internal6theory5arith6linear10ConstraintESt6vectorIS9_SaIS9_EEEESE_EbT_SF_T0_SG_.exit: ; preds = %bb.d, %.lr.ph62
  %.sroa.05.0.lcssa.i.i = phi ptr [ %i.ax, %.lr.ph62 ], [ %spec.select.i.i, %bb.d ]
  %i.bj = icmp eq ptr %.sroa.05.0.lcssa.i.i, %i.az
  br i1 %i.bj, label %bb.e, label %_ZSt8includesIN9__gnu_cxx17__normal_iteratorIPPKN4cvc58internal6theory5arith6linear10ConstraintESt6vectorIS9_SaIS9_EEEESE_EbT_SF_T0_SG_.exit.thread

bb.e:                                             ; preds = %_ZSt8includesIN9__gnu_cxx17__normal_iteratorIPPKN4cvc58internal6theory5arith6linear10ConstraintESt6vectorIS9_SaIS9_EEEESE_EbT_SF_T0_SG_.exit
  %i.bk = getelementptr inbounds i8, ptr %i.ar, i64 -24 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1500 ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.ar, i64 -16
  %i.bo = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !737
  store <2 x ptr> %i.bo, ptr %i.at, align 8, !tbaa !737
  %i.bp = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1500
  store ptr %i.bq, ptr %i.bl, align 8, !tbaa !1500
  store ptr %i.ax, ptr %i.bk, align 8, !tbaa !1499
  store ptr %i.az, ptr %i.bn, align 8, !tbaa !1501
  store ptr %i.bm, ptr %i.bp, align 8, !tbaa !1500
  store ptr %i.bk, ptr %i.a, align 8, !tbaa !1565
  %.not.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE8pop_backEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.br = ptrtoint ptr %i.bm to i64
  %i.bs = ptrtoint ptr %i.ax to i64
  %i.bt = sub i64 %i.br, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bt) #35
  %.pre73.pre = load ptr, ptr %i.a, align 8, !tbaa !1565
  br label %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE8pop_backEv.exit

_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE8pop_backEv.exit: ; preds = %bb.e, %bb.f
  %.pre73 = phi ptr [ %i.bk, %bb.e ], [ %.pre73.pre, %bb.f ] ; 2 uses
  %.pre74 = load ptr, ptr %1, align 8, !tbaa !1557 ; 2 uses
  br label %bb.g

_ZSt8includesIN9__gnu_cxx17__normal_iteratorIPPKN4cvc58internal6theory5arith6linear10ConstraintESt6vectorIS9_SaIS9_EEEESE_EbT_SF_T0_SG_.exit.thread: ; preds = %.lr.ph.i.i, %_ZSt8includesIN9__gnu_cxx17__normal_iteratorIPPKN4cvc58internal6theory5arith6linear10ConstraintESt6vectorIS9_SaIS9_EEEESE_EbT_SF_T0_SG_.exit
  %i.bu = add nuw i64 %.03760, 1
  br label %bb.g

bb.g:                                             ; preds = %_ZSt8includesIN9__gnu_cxx17__normal_iteratorIPPKN4cvc58internal6theory5arith6linear10ConstraintESt6vectorIS9_SaIS9_EEEESE_EbT_SF_T0_SG_.exit.thread, %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE8pop_backEv.exit
  %i.bv = phi ptr [ %.pre74, %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE8pop_backEv.exit ], [ %i.ao, %_ZSt8includesIN9__gnu_cxx17__normal_iteratorIPPKN4cvc58internal6theory5arith6linear10ConstraintESt6vectorIS9_SaIS9_EEEESE_EbT_SF_T0_SG_.exit.thread ] ; 3 uses
  %i.bw = phi ptr [ %.pre73, %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE8pop_backEv.exit ], [ %i.ap, %_ZSt8includesIN9__gnu_cxx17__normal_iteratorIPPKN4cvc58internal6theory5arith6linear10ConstraintESt6vectorIS9_SaIS9_EEEESE_EbT_SF_T0_SG_.exit.thread ] ; 3 uses
  %i.bx = phi ptr [ %.pre74, %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE8pop_backEv.exit ], [ %i.aq, %_ZSt8includesIN9__gnu_cxx17__normal_iteratorIPPKN4cvc58internal6theory5arith6linear10ConstraintESt6vectorIS9_SaIS9_EEEESE_EbT_SF_T0_SG_.exit.thread ] ; 2 uses
  %i.by = phi ptr [ %.pre73, %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE8pop_backEv.exit ], [ %i.ar, %_ZSt8includesIN9__gnu_cxx17__normal_iteratorIPPKN4cvc58internal6theory5arith6linear10ConstraintESt6vectorIS9_SaIS9_EEEESE_EbT_SF_T0_SG_.exit.thread ] ; 2 uses
  %.1 = phi i64 [ %.03760, %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE8pop_backEv.exit ], [ %i.bu, %_ZSt8includesIN9__gnu_cxx17__normal_iteratorIPPKN4cvc58internal6theory5arith6linear10ConstraintESt6vectorIS9_SaIS9_EEEESE_EbT_SF_T0_SG_.exit.thread ] ; 2 uses
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = sdiv exact i64 %i.cb, 24
  %i.cd = icmp ult i64 %.1, %i.cc
  br i1 %i.cd, label %.lr.ph62, label %.loopexit, !llvm.loop !1639

._crit_edge68:                                    ; preds = %.loopexit, %.lr.ph67, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaISA_EES2_ISC_SaISC_EEEENS7_7SizeOrdEEvT_SI_T0_.exit
  ret void
}

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN4cvc58internal6theory5arith6linear7TreeLog7getNodeEi(ptr noundef nonnull align 8 dereferenceable(133), i32 noundef) local_unnamed_addr #1

declare ptr @_ZNK4cvc58internal6theory5arith6linear7NodeLog5beginEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #1

declare ptr @_ZNK4cvc58internal6theory5arith6linear7NodeLog3endEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #18

declare void @_ZN4cvc58internal6theory5arith6linear7TreeLog16applyRowsDeletedEiRKNS3_11RowsDeletedE(ptr noundef nonnull align 8 dereferenceable(133), i32 noundef, ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear7CutInfo13reconstructedEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #1

declare void @_ZN4cvc58internal6theory5arith6linear7TreeLog8mapRowIdEiij(ptr noundef nonnull align 8 dereferenceable(133), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK4cvc58internal6theory5arith6linear7NodeLog9getNodeIdEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #1

declare noundef i32 @_ZNK4cvc58internal6theory5arith6linear7CutInfo8getRowIdEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4cvc58internal6theory5arith6linear7CutInfo14getExplanationEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear7NodeLog8isBranchEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #1

declare noundef i32 @_ZNK4cvc58internal6theory5arith6linear7NodeLog9getDownIdEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #1

declare noundef i32 @_ZNK4cvc58internal6theory5arith6linear7NodeLog7getUpIdEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #1

declare void @_ZN4cvc58internal6theory5arith6linear7NodeLog16copyParentRowIdsEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1565 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1557   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g
  tail call void @_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  br label %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE15_M_erase_at_endEPS9_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %1, %i.g
  br i1 %i.j, label %bb.d, label %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE15_M_erase_at_endEPS9_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i = icmp eq ptr %i.b, %i.k
  br i1 %.not.i, label %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE15_M_erase_at_endEPS9_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i ], [ %i.k, %bb.d ] ; 3 uses
  %i.l = load ptr, ptr %.05.i.i.i, align 8, !tbaa !1499 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1500
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #35
  br label %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1566

_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EEEvPT_.exit.i.i.i
  store ptr %i.k, ptr %i.a, align 8, !tbaa !1565
  br label %_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE15_M_erase_at_endEPS9_.exit

_ZNSt6vectorIS_IPKN4cvc58internal6theory5arith6linear10ConstraintESaIS7_EESaIS9_EE15_M_erase_at_endEPS9_.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPKN4cvc58internal6theory5arith6linear10ConstraintESaIS8_EESA_EvT_SC_RSaIT0_E.exit.i, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_4
