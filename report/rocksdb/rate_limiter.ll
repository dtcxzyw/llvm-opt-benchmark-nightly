inline.NumInlined: 420
inline.NumDeleted: 219
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EEC2ERKS5_:_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EEC2ERKS4_m.exit
  ret void

bb.b:                                             ; preds = %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EEC2ERKS4_m.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #17
  resume { ptr, i32 } %i.ah
}

declare void @_ZN7rocksdb4port7CondVar6SignalEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

declare void @_ZN7rocksdb4port7CondVar4WaitEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7rocksdb18GenericRateLimiterD0Ev(ptr noundef nonnull align 8 dereferenceable(616) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN7rocksdb18GenericRateLimiterD1Ev(ptr noundef nonnull align 8 dead_on_return(616) dereferenceable(616) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 616) #18
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18GenericRateLimiter17SetBytesPerSecondEl(ptr noundef nonnull align 8 dereferenceable(616) %0, i64 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  store atomic i64 %1, ptr %i.b monotonic, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = sdiv i64 9223372036854775807, %1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %i.g = icmp slt i64 %i.d, %i.f
  %i.h = mul nsw i64 %i.f, %1
  %i.i = sdiv i64 %i.h, 1000000
  %.0.i.i = select i1 %i.g, i64 9223372036854, i64 %i.i
  store atomic i64 %.0.i.i, ptr %i.c monotonic, align 8
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #19
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit:                   ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN7rocksdb18GenericRateLimiter23SetBytesPerSecondLockedEl(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(616) %0, i64 noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store atomic i64 %1, ptr %i.a monotonic, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = sdiv i64 9223372036854775807, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.f = icmp slt i64 %i.c, %i.e
  %i.g = mul nsw i64 %i.e, %1
  %i.h = sdiv i64 %i.g, 1000000
  %.0.i = select i1 %i.f, i64 9223372036854, i64 %i.h
  store atomic i64 %.0.i, ptr %i.b monotonic, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18GenericRateLimiter19SetSingleBurstBytesEl(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(616) %1, i64 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr @.str, ptr %3, align 8, !tbaa !105
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 55, ptr %i.b, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr @.str.1, ptr %4, align 8, !tbaa !105
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !108
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %_ZN7rocksdb9MutexLockD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  store atomic i64 %2, ptr %i.e monotonic, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !109, !alias.scope !111
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !111
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #19
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit:                   ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18GenericRateLimiter7RequestElNS_3Env10IOPriorityEPNS_10StatisticsE(ptr noundef nonnull align 8 dereferenceable(616) %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN7rocksdb18GenericRateLimiter11RequestImplElNS_3Env10IOPriorityEPNS_10StatisticsENS_11RateLimiter6OpTypeE(ptr noundef nonnull align 8 dereferenceable(616) %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18GenericRateLimiter11RequestImplElNS_3Env10IOPriorityEPNS_10StatisticsENS_11RateLimiter6OpTypeE(ptr noundef nonnull align 8 dereferenceable(616) %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.rocksdb::GenericRateLimiter::Req", align 8 ; 10 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %1, i64 0) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  tail call void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 585
  %i.d = load i8, ptr %i.c, align 1, !tbaa !48, !range !16, !noundef !17
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef i64 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.c unwind label %bb.l, !inline_history !43

bb.c:                                             ; preds = %bb.b
  %i.l = udiv i64 %i.k, 1000
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !114  ; 2 uses
  %i.o = sub nsw i64 %i.l, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !114
  %i.r = mul nsw i64 %i.q, 100
  %.not = icmp slt i64 %i.o, %i.r
  br i1 %.not, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !42, !noalias !115 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !9, !noalias !115
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  %i.v = load ptr, ptr %i.u, align 8, !noalias !115
  %i.w = invoke noundef i64 %i.v(ptr noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %.noexc unwind label %bb.m, !inline_history !118

.noexc:                                           ; preds = %bb.d
  %i.x = udiv i64 %i.w, 1000                      ; 2 uses
  store i64 %i.x, ptr %i.m, align 8, !tbaa !114, !noalias !115
  %i.y = load i64, ptr %i.p, align 8, !tbaa !114, !noalias !115 ; 2 uses
  %i.z = xor i64 %i.n, -1
  %i.aa = add i64 %i.x, %i.z
  %i.ab = add i64 %i.aa, %i.y
  %i.ac = sdiv i64 %i.ab, %i.y
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !49, !noalias !115
  %i.af = mul nsw i64 %i.ae, 100
  %i.ag = sdiv i64 %i.af, %i.ac                   ; 3 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !9, !noalias !115
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !115
  %i.ak = invoke noundef i64 %i.aj(ptr noundef nonnull align 8 dereferenceable(616) %0)
          to label %.noexc81 unwind label %bb.m, !inline_history !118 ; 3 uses

.noexc81:                                         ; preds = %.noexc
  %i.al = icmp eq i64 %i.ag, 0
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.noexc81
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.an = load i64, ptr %i.am, align 8, !tbaa !50, !noalias !115
  %i.ao = sdiv i64 %i.an, 20
  br label %bb.j

bb.f:                                             ; preds = %.noexc81
  %i.ap = icmp slt i64 %i.ag, 50
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.speculated24.i = tail call i64 @llvm.smin.i64(i64 %i.ak, i64 92233720368547758)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !50, !noalias !115
  %i.as = sdiv i64 %i.ar, 20
  %i.at = mul nsw i64 %.sroa.speculated24.i, 100
  %i.au = sdiv i64 %i.at, 105
  %.sroa.speculated18.i = tail call i64 @llvm.smax.i64(i64 %i.as, i64 %i.au)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.av = icmp samesign ugt i64 %i.ag, 90
  br i1 %i.av, label %bb.i, label %_ZN7rocksdb6StatusD2Ev.exit

bb.i:                                             ; preds = %bb.h
  %.sroa.speculated14.i = tail call i64 @llvm.smin.i64(i64 %i.ak, i64 87841638446235960)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ax = mul nsw i64 %.sroa.speculated14.i, 105
  %i.ay = sdiv i64 %i.ax, 100
  %i.az = load i64, ptr %i.aw, align 8, !tbaa !114, !noalias !115
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.ay, i64 %i.az)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  %.0.i = phi i64 [ %i.ao, %bb.e ], [ %.sroa.speculated18.i, %bb.g ], [ %.sroa.speculated.i, %bb.i ] ; 4 uses
  %.not.i = icmp eq i64 %.0.i, %i.ak
  br i1 %.not.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  store atomic i64 %.0.i, ptr %i.ba monotonic, align 8, !noalias !115
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bc = sdiv i64 9223372036854775807, %.0.i
  %i.bd = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !115 ; 2 uses
  %i.be = icmp slt i64 %i.bc, %i.bd
  %i.bf = mul nsw i64 %i.bd, %.0.i
  %i.bg = sdiv i64 %i.bf, 1000000
  %.0.i.i.i = select i1 %i.be, i64 9223372036854, i64 %i.bg
  store atomic i64 %.0.i.i.i, ptr %i.bb monotonic, align 8, !noalias !115
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.k, %bb.j, %bb.h
  store i64 0, ptr %i.ad, align 8, !tbaa !49, !noalias !115
  br label %bb.n

bb.l:                                             ; preds = %bb.b
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.m:                                             ; preds = %.noexc, %bb.d
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.n:                                             ; preds = %bb.c, %_ZN7rocksdb6StatusD2Ev.exit, %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !39, !range !16, !noundef !17
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %.critedge80, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bn = zext i32 %2 to i64                      ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bn ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !114
  %i.bq = add nsw i64 %i.bp, 1
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !114
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !41 ; 2 uses
  %i.bt = icmp sgt i64 %i.bs, 0
  br i1 %i.bt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.speculated131 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated, i64 %i.bs) ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bn ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !114
  %i.bx = add nsw i64 %i.bw, %.sroa.speculated131
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !114
  %i.by = load i64, ptr %i.br, align 8, !tbaa !41
  %i.bz = sub nsw i64 %i.by, %.sroa.speculated131
  store i64 %i.bz, ptr %i.br, align 8, !tbaa !41
  %i.ca = sub nsw i64 %.sroa.speculated, %.sroa.speculated131
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0139 = phi i64 [ %i.ca, %bb.p ], [ %.sroa.speculated, %bb.o ] ; 3 uses
  %i.cb = icmp eq i64 %.0139, 0
  br i1 %i.cb, label %bb.au, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store i64 %.0139, ptr %5, align 8, !tbaa !119
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.0139, ptr %i.cc, align 8, !tbaa !121
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  invoke void @_ZN7rocksdb4port7CondVarC1EPNS0_5MutexE(ptr noundef nonnull align 8 dereferenceable(56) %i.cd, ptr noundef nonnull %i.b)
          to label %_ZN7rocksdb18GenericRateLimiter3ReqC2ElPNS_4port5MutexE.exit unwind label %bb.x

_ZN7rocksdb18GenericRateLimiter3ReqC2ElPNS_4port5MutexE.exit: ; preds = %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.cf = getelementptr inbounds nuw [80 x i8], ptr %i.ce, i64 %i.bn ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %5, ptr %i.a, align 8, !tbaa !75
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 48 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !122 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !123
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -8
  %.not.i.i87 = icmp eq ptr %i.ch, %i.ck
  br i1 %.not.i.i87, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN7rocksdb18GenericRateLimiter3ReqC2ElPNS_4port5MutexE.exit
  store ptr %5, ptr %i.ch, align 8, !tbaa !75
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.cl, ptr %i.cg, align 8, !tbaa !122
  br label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9push_backEOS3_.exit

bb.t:                                             ; preds = %_ZN7rocksdb18GenericRateLimiter3ReqC2ElPNS_4port5MutexE.exit
  invoke void @_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.cf, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9push_backEOS3_.exit unwind label %bb.y

_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 3 uses
  %.not.i91 = icmp eq ptr %3, null
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 280
  br label %bb.u

bb.u:                                             ; preds = %.loopexit, %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9push_backEOS3_.exit
  %.044 = phi i64 [ 0, %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9push_backEOS3_.exit ], [ %.246, %.loopexit ] ; 2 uses
  %.041 = phi i8 [ 0, %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9push_backEOS3_.exit ], [ %.243, %.loopexit ] ; 2 uses
  %i.cy = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !9
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 160
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = invoke noundef i64 %i.db(ptr noundef nonnull align 8 dereferenceable(32) %i.cy)
          to label %bb.v unwind label %bb.z, !inline_history !43

bb.v:                                             ; preds = %bb.u
  %i.dd = udiv i64 %i.dc, 1000                    ; 2 uses
  %i.de = load i64, ptr %i.cn, align 8, !tbaa !44
  %i.df = sub nsw i64 %i.de, %i.dd                ; 2 uses
  %i.dg = icmp sgt i64 %i.df, 0
  br i1 %i.dg, label %bb.w, label %bb.ah

bb.w:                                             ; preds = %bb.v
  %i.dh = trunc nuw i8 %.041 to i1
  %spec.select = select i1 %i.dh, i64 %.044, i64 %i.dd ; 2 uses
  %i.di = load i8, ptr %i.co, align 8, !tbaa !47, !range !16, !noundef !17
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.aa, label %bb.ac

bb.x:                                             ; preds = %bb.r
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.y:                                             ; preds = %bb.t
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.as

bb.z:                                             ; preds = %bb.u
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.aa:                                            ; preds = %bb.w
  invoke void @_ZN7rocksdb4port7CondVar4WaitEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cd)
          to label %bb.ai unwind label %bb.ab

bb.ab:                                            ; preds = %bb.ah, %bb.aa
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ac:                                            ; preds = %bb.w
  %i.do = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !9
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 152
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = invoke noundef i64 %i.dr(ptr noundef nonnull align 8 dereferenceable(32) %i.do)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.dt = add i64 %i.ds, %i.df
  br i1 %.not.i91, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.du = load ptr, ptr %3, align 8, !tbaa !9
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 176
  %i.dw = load ptr, ptr %i.dv, align 8
  invoke void %i.dw(ptr noundef nonnull align 8 dereferenceable(33) %3, i32 noundef 124, i64 noundef 1)
          to label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit unwind label %bb.ag, !inline_history !124

_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit: ; preds = %bb.ad, %bb.ae
  %i.dx = load i64, ptr %i.cp, align 8, !tbaa !49
  %i.dy = add nsw i64 %i.dx, 1
  store i64 %i.dy, ptr %i.cp, align 8, !tbaa !49
  store i8 1, ptr %i.co, align 8, !tbaa !47
  %i.dz = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !9
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 192
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = invoke noundef zeroext i1 %i.ec(ptr noundef nonnull align 8 dereferenceable(32) %i.dz, ptr noundef nonnull %i.cd, i64 %i.dt)
          to label %bb.af unwind label %bb.ag     ; 0 uses
end_hunk_0
begin_hunk_1_@_ZN7rocksdb18GenericRateLimiter11RequestImplElNS_3Env10IOPriorityEPNS_10StatisticsENS_11RateLimiter6OpTypeE:bb.a
  br i1 %i.fa, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %.loopexit.thread, %bb.al
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !40
  %i.fe = add nsw i32 %i.fd, -1
  store i32 %i.fe, ptr %i.fc, align 8, !tbaa !40
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke void @_ZN7rocksdb4port7CondVar6SignalEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ff)
          to label %._crit_edge unwind label %bb.an

._crit_edge:                                      ; preds = %bb.am
  %.pre158 = trunc nuw i8 %.243 to i1
  br label %bb.ar

bb.an:                                            ; preds = %bb.ap, %bb.am
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ao:                                            ; preds = %.loopexit.thread, %bb.al
  %i.fh = trunc nuw i8 %.243 to i1
  br i1 %i.fh, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.fi = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !9
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 160
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = invoke noundef i64 %i.fl(ptr noundef nonnull align 8 dereferenceable(32) %i.fi)
          to label %bb.aq unwind label %bb.an, !inline_history !43

bb.aq:                                            ; preds = %bb.ap
  %i.fn = udiv i64 %i.fm, 1000
  %i.fo = sub nsw i64 %i.fn, %.246
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge, %bb.ao, %bb.aq
  %i.fp = phi i1 [ true, %._crit_edge ], [ false, %bb.ao ], [ false, %bb.aq ]
  %.pre-phi = phi i1 [ %.pre158, %._crit_edge ], [ false, %bb.ao ], [ true, %bb.aq ]
  %.047 = phi i64 [ 0, %._crit_edge ], [ 0, %bb.ao ], [ %i.fo, %bb.aq ]
  call void @_ZN7rocksdb4port7CondVarD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.cd) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.au

bb.as:                                            ; preds = %bb.z, %bb.ak, %bb.ag, %bb.ab, %bb.an, %bb.y
  %.pn74 = phi { ptr, i32 } [ %i.fg, %bb.an ], [ %i.dl, %bb.y ], [ %i.dm, %bb.z ], [ %i.ex, %bb.ak ], [ %i.dn, %bb.ab ], [ %i.ee, %bb.ag ]
  call void @_ZN7rocksdb4port7CondVarD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.cd) #17
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.x
  %.pn74.pn = phi { ptr, i32 } [ %.pn74, %bb.as ], [ %i.dk, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.ay

bb.au:                                            ; preds = %bb.ar, %bb.q
  %.249 = phi i64 [ 0, %bb.q ], [ %.047, %bb.ar ] ; 2 uses
  %.4 = phi i1 [ false, %bb.q ], [ %.pre-phi, %bb.ar ]
  %.2.not = phi i1 [ false, %bb.q ], [ %i.fp, %bb.ar ]
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #19
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit:                   ; preds = %bb.au
  br i1 %.2.not, label %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZN7rocksdb9MutexLockD2Ev.exit
  %switch.selectcmp2.i = icmp eq i32 %4, 0        ; 5 uses
  %.not.i95 = icmp eq ptr %3, null
  br i1 %.not.i95, label %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit100.thread

_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit100.thread: ; preds = %bb.aw
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 127, i32 128
  %i.fs = load ptr, ptr %3, align 8, !tbaa !9
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 176
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(33) %3, i32 noundef %switch.select3.i, i64 noundef 1), !inline_history !124
  %switch.select3.i98 = select i1 %switch.selectcmp2.i, i32 125, i32 126
  %i.fv = load ptr, ptr %3, align 8, !tbaa !9
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 176
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(33) %3, i32 noundef %switch.select3.i98, i64 noundef %.sroa.speculated), !inline_history !124
  br i1 %.4, label %bb.ax, label %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit

bb.ax:                                            ; preds = %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit100.thread
  %switch.select3.i102141 = select i1 %switch.selectcmp2.i, i32 129, i32 130
  %i.fy = load ptr, ptr %3, align 8, !tbaa !9
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 176
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(33) %3, i32 noundef %switch.select3.i102141, i64 noundef 1), !inline_history !124
  %switch.select3.i106 = select i1 %switch.selectcmp2.i, i32 131, i32 132
  %i.gb = load ptr, ptr %3, align 8, !tbaa !9
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 176
  %i.gd = load ptr, ptr %i.gc, align 8
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(33) %3, i32 noundef %switch.select3.i106, i64 noundef %.249), !inline_history !124
  %switch.select3.i110 = select i1 %switch.selectcmp2.i, i32 73, i32 74
  %i.ge = load ptr, ptr %3, align 8, !tbaa !9
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 216
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(33) %3, i32 noundef %switch.select3.i110, i64 noundef %.249), !inline_history !126
  br label %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit

bb.ay:                                            ; preds = %bb.l, %bb.m, %bb.at
  %.pn74.pn.pn = phi { ptr, i32 } [ %.pn74.pn, %bb.at ], [ %i.bi, %bb.m ], [ %i.bh, %bb.l ]
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit112 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #19
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit112:                ; preds = %bb.ay
  resume { ptr, i32 } %.pn74.pn.pn

.critedge80:                                      ; preds = %bb.n
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit unwind label %bb.ba

bb.ba:                                            ; preds = %.critedge80
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  tail call void @__clang_call_terminate(ptr %i.gk) #19
  unreachable

_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit: ; preds = %bb.aw, %.critedge80, %bb.ax, %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit100.thread, %_ZN7rocksdb9MutexLockD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18GenericRateLimiter7RequestElNS_3Env10IOPriorityEPNS_10StatisticsENS_11RateLimiter6OpTypeE(ptr noundef nonnull align 8 dereferenceable(616) %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %4)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7rocksdb18GenericRateLimiter11RequestImplElNS_3Env10IOPriorityEPNS_10StatisticsENS_11RateLimiter6OpTypeE(ptr noundef nonnull align 8 dereferenceable(616) %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18GenericRateLimiter10TuneLockedEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(none) initializes((0, 6), (8, 16)) %0, ptr noundef nonnull align 8 dereferenceable(616) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.d), !inline_history !43
  %i.i = udiv i64 %i.h, 1000                      ; 2 uses
  store i64 %i.i, ptr %i.a, align 8, !tbaa !114
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !114  ; 2 uses
  %i.l = xor i64 %i.b, -1
  %i.m = add i64 %i.i, %i.l
  %i.n = add i64 %i.m, %i.k
  %i.o = sdiv i64 %i.n, %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 592 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !49
  %i.r = mul nsw i64 %i.q, 100
  %i.s = sdiv i64 %i.r, %i.o                      ; 3 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i64 %i.v(ptr noundef nonnull align 8 dereferenceable(616) %1) ; 3 uses
  %i.x = icmp eq i64 %i.s, 0
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.z = load i64, ptr %i.y, align 8, !tbaa !50
  %i.aa = sdiv i64 %i.z, 20
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.ab = icmp slt i64 %i.s, 50
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.speculated24 = tail call i64 @llvm.smin.i64(i64 %i.w, i64 92233720368547758)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !50
  %i.ae = sdiv i64 %i.ad, 20
  %i.af = mul nsw i64 %.sroa.speculated24, 100
  %i.ag = sdiv i64 %i.af, 105
  %.sroa.speculated18 = tail call i64 @llvm.smax.i64(i64 %i.ae, i64 %i.ag)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.ah = icmp samesign ugt i64 %i.s, 90
  br i1 %i.ah, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %.sroa.speculated14 = tail call i64 @llvm.smin.i64(i64 %i.w, i64 87841638446235960)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.aj = mul nsw i64 %.sroa.speculated14, 105
  %i.ak = sdiv i64 %i.aj, 100
  %i.al = load i64, ptr %i.ai, align 8, !tbaa !114
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.ak, i64 %i.al)
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.b
  %.0 = phi i64 [ %i.aa, %bb.b ], [ %.sroa.speculated18, %bb.d ], [ %.sroa.speculated, %bb.f ] ; 4 uses
  %.not = icmp eq i64 %.0, %i.w
  br i1 %.not, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64
  store atomic i64 %.0, ptr %i.am monotonic, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ao = sdiv i64 9223372036854775807, %.0
  %i.ap = load i64, ptr %i.j, align 8, !tbaa !18  ; 2 uses
  %i.aq = icmp slt i64 %i.ao, %i.ap
  %i.ar = mul nsw i64 %i.ap, %.0
  %i.as = sdiv i64 %i.ar, 1000000
  %.0.i.i = select i1 %i.aq, i64 9223372036854, i64 %i.as
  store atomic i64 %.0.i.i, ptr %i.an monotonic, align 8
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.h, %bb.g
  store i64 0, ptr %i.p, align 8, !tbaa !49
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.at, align 8, !tbaa !109, !alias.scope !127
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !127
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18GenericRateLimiter33RefillBytesAndGrantRequestsLockedEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(616) initializes((248, 256)) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b), !inline_history !43
  %i.g = udiv i64 %i.f, 1000
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !18
  %i.j = add i64 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 %i.j, ptr %i.k, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load atomic i64, ptr %i.l monotonic, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 13 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !41
  %i.o = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #20, !noalias !130 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  store i32 3, ptr %i.o, align 4, !tbaa !133, !noalias !130
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.s = load i32, ptr %i.r, align 8, !tbaa !45, !noalias !130 ; 2 uses
  %i.t = load i32, ptr %i.q, align 4, !tbaa !46, !noalias !130
  %i.u = zext i32 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, 16807              ; 2 uses
  %i.w = lshr i64 %i.v, 31
  %i.x = and i64 %i.v, 2147483647
  %i.y = add nuw nsw i64 %i.w, %i.x
  %i.z = trunc nuw i64 %i.y to i32                ; 3 uses
  %i.aa = icmp slt i32 %i.z, 0
  %i.ab = add i32 %i.z, -2147483647
  %spec.select.i.i.i.i = select i1 %i.aa, i32 %i.ab, i32 %i.z ; 2 uses
  %i.ac = urem i32 %spec.select.i.i.i.i, %i.s
  %i.ad = icmp ne i32 %i.ac, 0                    ; 3 uses
  %i.ae = zext i32 %spec.select.i.i.i.i to i64
  %i.af = mul nuw nsw i64 %i.ae, 16807            ; 2 uses
  %i.ag = lshr i64 %i.af, 31
  %i.ah = and i64 %i.af, 2147483647
  %i.ai = add nuw nsw i64 %i.ag, %i.ah
  %i.aj = trunc nuw i64 %i.ai to i32              ; 3 uses
  %i.ak = icmp slt i32 %i.aj, 0
  %i.al = add i32 %i.aj, -2147483647
  %spec.select.i.i.i10.i = select i1 %i.ak, i32 %i.al, i32 %i.aj ; 2 uses
  store i32 %spec.select.i.i.i10.i, ptr %i.q, align 4, !tbaa !46, !noalias !130
  %i.am = urem i32 %spec.select.i.i.i10.i, %i.s
  %i.an = icmp eq i32 %i.am, 0                    ; 3 uses
  %i.ao = xor i1 %i.an, true
  %i.ap = zext i1 %i.ao to i32
  %i.aq = zext i1 %i.an to i32
  %.sink12.i = select i1 %i.ad, i32 %i.aq, i32 2
  %.sink11.in.i = xor i1 %i.ad, %i.an
  %.sink.i = select i1 %i.ad, i32 2, i32 %i.ap
  %.sink11.i = zext i1 %.sink11.in.i to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 2 uses
  store i32 %.sink12.i, ptr %i.ar, align 4, !tbaa !133, !noalias !130
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store i32 %.sink11.i, ptr %i.as, align 4, !tbaa !133, !noalias !130
  store i32 %.sink.i, ptr %i.p, align 4, !tbaa !133, !noalias !130
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9pop_frontEv.exit, %bb.a
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !66
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !66 ; 4 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !75 ; 5 uses
  %i.bf = load i64, ptr %i.n, align 8, !tbaa !41  ; 3 uses
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !119 ; 3 uses
  %i.bh = icmp slt i64 %i.bf, %i.bg
  br i1 %i.bh, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.bi = sub nsw i64 %i.bg, %i.bf
  store i64 %i.bi, ptr %i.be, align 8, !tbaa !119
  store i64 0, ptr %i.n, align 8, !tbaa !41
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.bj = sub nsw i64 %i.bf, %i.bg
  store i64 %i.bj, ptr %i.n, align 8, !tbaa !41
  store i64 0, ptr %i.be, align 8, !tbaa !119
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !121
  %i.bm = load i64, ptr %i.ax, align 8, !tbaa !114
  %i.bn = add nsw i64 %i.bm, %i.bl
  store i64 %i.bn, ptr %i.ax, align 8, !tbaa !114
  %i.bo = load ptr, ptr %i.ay, align 8, !tbaa !135
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -8
  %.not.i = icmp eq ptr %i.bc, %i.bp
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  br label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9pop_frontEv.exit

bb.f:                                             ; preds = %bb.d
  %i.br = load ptr, ptr %i.az, align 8, !tbaa !136
  tail call void @_ZdlPvm(ptr noundef %i.br, i64 noundef 512) #18
  %i.bs = load ptr, ptr %i.ba, align 8, !tbaa !59
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  store ptr %i.bt, ptr %i.ba, align 8, !tbaa !65
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !61 ; 3 uses
  store ptr %i.bu, ptr %i.az, align 8, !tbaa !67
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 512
  store ptr %i.bv, ptr %i.ay, align 8, !tbaa !68
  br label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9pop_frontEv.exit

_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9pop_frontEv.exit: ; preds = %bb.e, %bb.f
  %storemerge.i = phi ptr [ %i.bq, %bb.e ], [ %i.bu, %bb.f ]
  store ptr %storemerge.i, ptr %i.aw, align 8, !tbaa !137
  %i.bw = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  invoke void @_ZN7rocksdb4port7CondVar6SignalEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bw)
          to label %bb.b unwind label %_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23.loopexit

_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23.loopexit: ; preds = %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9pop_frontEv.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23

_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23.loopexit.split-lp.loopexit: ; preds = %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9pop_frontEv.exit.1
  %lpad.loopexit40 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23

_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9pop_frontEv.exit.2
  %lpad.loopexit43 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23

_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9pop_frontEv.exit.3
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23

_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23: ; preds = %_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23.loopexit.split-lp.loopexit, %_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23.loopexit.split-lp.loopexit.split-lp.loopexit, %_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23.loopexit ], [ %lpad.loopexit40, %_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23.loopexit.split-lp.loopexit ], [ %lpad.loopexit43, %_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 16) #18
  resume { ptr, i32 } %lpad.phi

.loopexit:                                        ; preds = %bb.b, %.thread
  %i.bx = load i32, ptr %i.p, align 4, !tbaa !133
  %i.by = zext i32 %i.bx to i64                   ; 2 uses
  %i.bz = getelementptr inbounds nuw [80 x i8], ptr %i.at, i64 %i.by ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.by ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 32 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 24 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 40 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9pop_frontEv.exit.1, %.loopexit
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !66
  %i.ch = load ptr, ptr %i.cb, align 8, !tbaa !66 ; 4 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %.loopexit.1, label %bb.h

end_hunk_1
