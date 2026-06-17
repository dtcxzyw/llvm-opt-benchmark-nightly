inline.NumInlined: 2640
inline.NumDeleted: 1337
begin_hunk_0_@_ZN5folly17AsyncServerSocket17addAcceptCallbackEPNS0_14AcceptCallbackEPNS_9EventBaseEj:bb.a

bb.t:                                             ; preds = %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !10840
  %.not.not.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not.not.i.i, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  %.sroa.06.0.in.i.i = phi ptr [ %i.by, %bb.u ], [ %.sroa.06.0.i.i, %bb.w ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !10841 ; 4 uses
  %i.bz = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.bz, label %_ZNSt13unordered_mapIjN5folly17AsyncServerSocket12CallbackInfoESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !7
  %i.cc = icmp eq i32 %i.bv, %i.cb
  br i1 %i.cc, label %_ZNSt13unordered_mapIjN5folly17AsyncServerSocket12CallbackInfoESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit, label %bb.v, !llvm.loop !10842

bb.x:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ce = zext i32 %i.bv to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !10843 ; 2 uses
  %i.ch = urem i64 %i.ce, %i.cg                   ; 2 uses
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !10844
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ch
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !10845 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapIjN5folly17AsyncServerSocket12CallbackInfoESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !10841 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !7
  %i.co = icmp eq i32 %i.bv, %i.cn
  br i1 %i.co, label %_ZNSt13unordered_mapIjN5folly17AsyncServerSocket12CallbackInfoESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit, label %.lr.ph.i.i.i.i

bb.z:                                             ; preds = %bb.aa
  %i.cp = icmp eq i32 %i.bv, %i.cs
  br i1 %i.cp, label %_ZNSt13unordered_mapIjN5folly17AsyncServerSocket12CallbackInfoESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !10846

.lr.ph.i.i.i.i:                                   ; preds = %bb.y, %bb.z
  %.020.i.i.i.i = phi ptr [ %i.cq, %bb.z ], [ %i.cl, %bb.y ]
  %i.cq = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !10841 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapIjN5folly17AsyncServerSocket12CallbackInfoESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !7  ; 2 uses
  %i.ct = zext i32 %i.cs to i64
  %i.cu = urem i64 %i.ct, %i.cg
  %.not19.i.i.i.i = icmp eq i64 %i.cu, %i.ch
  br i1 %.not19.i.i.i.i, label %bb.z, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !10846

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.aa
  br label %_ZNSt13unordered_mapIjN5folly17AsyncServerSocket12CallbackInfoESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit.thread, !llvm.loop !10846

_ZNSt13unordered_mapIjN5folly17AsyncServerSocket12CallbackInfoESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit: ; preds = %bb.z, %bb.w, %bb.y
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.w ], [ %i.cl, %bb.y ], [ %i.cq, %bb.z ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 32
  store ptr %i.bd, ptr %i.cv, align 8, !tbaa !10847
  br label %_ZNSt13unordered_mapIjN5folly17AsyncServerSocket12CallbackInfoESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit.thread

_ZNSt13unordered_mapIjN5folly17AsyncServerSocket12CallbackInfoESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %bb.v, %bb.x, %..loopexit_crit_edge21.i.i.i.i, %_ZNSt13unordered_mapIjN5folly17AsyncServerSocket12CallbackInfoESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit, %bb.s
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !10849
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %_ZNSt13unordered_mapIjN5folly17AsyncServerSocket12CallbackInfoESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit.thread
  %i.cz = getelementptr inbounds i8, ptr %i.bt, i64 -16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !10764
  %i.db = load ptr, ptr %i.c, align 8, !tbaa !10616
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dd = load ptr, ptr %i.g, align 8, !tbaa !10776
  %i.de = ptrtoint ptr %i.bt to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = sdiv exact i64 %i.dg, 24
  %i.di = trunc i64 %i.dh to i32
  %i.dj = add i32 %i.di, -1
  store i32 %i.dj, ptr %i.cw, align 8, !tbaa !10849
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt13unordered_mapIjN5folly17AsyncServerSocket12CallbackInfoESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit.thread, %bb.ab, %bb.ac, %bb.j
  %i.dk = load ptr, ptr %i.au, align 8, !tbaa !10795 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i, label %bb.ae, label %_ZN5folly19uncaught_exceptionsEv.exit.i, !prof !10752

bb.ae:                                            ; preds = %bb.ad
  %i.dl = call noundef ptr @_ZN5folly6detail23uncaught_exceptions_ptrEv() #39 ; 2 uses
  store ptr %i.dl, ptr %i.au, align 8, !tbaa !10795
  br label %_ZN5folly19uncaught_exceptionsEv.exit.i

_ZN5folly19uncaught_exceptionsEv.exit.i:          ; preds = %bb.ae, %bb.ad
  %i.dm = phi ptr [ %i.dl, %bb.ae ], [ %i.dk, %bb.ad ]
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !7
  %i.do = icmp sge i32 %i.az, %i.dn
  %.val.val.i.i = load i8, ptr %i.a, align 1, !range !10600
  %i.dp = trunc nuw i8 %.val.val.i.i to i1
  %or.cond = select i1 %i.do, i1 %i.dp, i1 false
  br i1 %or.cond, label %bb.af, label %"_ZN5folly6detail25ScopeGuardForNewExceptionIZNS_17AsyncServerSocket17addAcceptCallbackEPNS2_14AcceptCallbackEPNS_9EventBaseEjE3$_0Lb0EED2Ev.exit"

bb.af:                                            ; preds = %_ZN5folly19uncaught_exceptionsEv.exit.i
  %i.dq = load ptr, ptr %0, align 8, !tbaa !14
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 104
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(352) %0), !call_target !9850, !inline_history !10850
  br label %"_ZN5folly6detail25ScopeGuardForNewExceptionIZNS_17AsyncServerSocket17addAcceptCallbackEPNS2_14AcceptCallbackEPNS_9EventBaseEjE3$_0Lb0EED2Ev.exit"

"_ZN5folly6detail25ScopeGuardForNewExceptionIZNS_17AsyncServerSocket17addAcceptCallbackEPNS2_14AcceptCallbackEPNS_9EventBaseEjE3$_0Lb0EED2Ev.exit": ; preds = %_ZN5folly19uncaught_exceptionsEv.exit.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  ret void

bb.ag:                                            ; preds = %bb.r
  invoke fastcc void @"_ZN5folly6detail25ScopeGuardForNewExceptionIZNS_17AsyncServerSocket17addAcceptCallbackEPNS2_14AcceptCallbackEPNS_9EventBaseEjE3$_0Lb0EED2Ev"(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %7)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  resume { ptr, i32 } %i.bs

bb.ai:                                            ; preds = %bb.ag, %bb.r
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #48
  unreachable

bb.aj:                                            ; preds = %bb.q
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly17AsyncServerSocket14startAcceptingEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(352) initializes((80, 81)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %i.a, align 8, !tbaa !10757
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10839
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10839
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10676 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !10676 ; 2 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.05.08, i64 216 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.j
  br i1 %i.m, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.05.08 = phi ptr [ %i.l, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %i.n = tail call noundef zeroext i1 @_ZN5folly12EventHandler12registerImplEtb(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.05.08, i16 noundef zeroext 18, i1 noundef zeroext false)
  br i1 %i.n, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #39 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull @.str.82)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #51
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.o) #39
  resume { ptr, i32 } %i.p

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly17AsyncServerSocket12handlerReadyEtNS_13NetworkSocketEt(ptr noundef nonnull align 8 dereferenceable(352) %0, i16 zeroext %1, i32 %2, i16 noundef zeroext %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.folly::SocketAddress::IPAddr", align 4 ; 5 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.392", align 16 ; 4 uses
  %6 = alloca %"class.folly::SocketAddress", align 8 ; 9 uses
  %7 = alloca %struct.sockaddr_storage, align 8   ; 6 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %8 = alloca %"struct.std::array.390", align 4   ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.google::LogMessage", align 8 ; 5 uses
  %10 = alloca %"class.google::LogMessage", align 8 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.google::LogMessage", align 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !10611 ; 2 uses
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8, !tbaa !10611
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !10851
  %.not77 = icmp eq i32 %i.h, 0
  br i1 %.not77, label %_ZN5folly13SocketAddressD2Ev.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.k = icmp eq i16 %3, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.at
  %.076 = phi i32 [ 0, %.lr.ph ], [ %i.co, %bb.at ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  invoke void @_ZN5folly9IPAddressC1Ev(ptr noundef nonnull align 4 dereferenceable(26) %4)
          to label %bb.c unwind label %bb.aw

bb.c:                                             ; preds = %bb.b
  store i16 0, ptr %i.i, align 4, !tbaa !10692
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 4 dereferenceable(28) %4, i64 28, i1 false), !tbaa.struct !10694
  store i8 0, ptr %i.j, align 8, !tbaa !10696
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %7, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  store i32 128, ptr %i.a, align 4, !tbaa !7
  store i16 %3, ptr %7, align 8, !tbaa !10852
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 110, ptr %i.a, align 4, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = invoke i32 @accept4(i32 noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %i.a, i32 noundef 2048)
          to label %bb.f unwind label %bb.aw      ; 9 uses

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %i.a, align 4, !tbaa !7
  invoke void @_ZN5folly13SocketAddress15setFromSockaddrEPK8sockaddrj(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull %7, i32 noundef %i.w)
          to label %bb.g unwind label %bb.aw

bb.g:                                             ; preds = %bb.f
  %.not75 = icmp eq i32 %i.v, -1                  ; 3 uses
  br i1 %.not75, label %.critedge2, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !10800 ; 3 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i32 %i.v, ptr noundef nonnull align 8 dereferenceable(40) %6) #39, !call_target !10854
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ab = load i8, ptr %i.m, align 8, !tbaa !10858, !range !10600, !noundef !146
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.k, label %.critedge2

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  store i32 256, ptr %i.b, align 4, !tbaa !7
  %i.ad = invoke noundef i32 @_ZN5folly6netops10getsockoptENS_13NetworkSocketEiiPvPj(i32 %i.v, i32 noundef 6, i32 noundef 28, ptr noundef nonnull %8, ptr noundef nonnull %i.b)
          to label %bb.l unwind label %bb.aw

bb.l:                                             ; preds = %bb.k
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  %i.af = load i32, ptr %8, align 4, !tbaa !7
  %i.ag = call noundef i32 @llvm.bswap.i32(i32 %i.af) ; 2 uses
  switch i16 %3, label %.thread [
    i16 10, label %bb.n
    i16 2, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.ah = lshr i32 %i.ag, 20
  %i.ai = and i32 %i.ah, 252                      ; 2 uses
  store i32 %i.ai, ptr %i.c, align 4, !tbaa !7
  %.not32 = icmp eq i32 %i.ai, 0
  br i1 %.not32, label %.thread, label %.invoke86

bb.o:                                             ; preds = %bb.m
  %i.aj = lshr i32 %i.ag, 16
  %i.ak = and i32 %i.aj, 252                      ; 2 uses
  store i32 %i.ak, ptr %i.c, align 4, !tbaa !7
  %.not31 = icmp eq i32 %i.ak, 0
  br i1 %.not31, label %.thread, label %.invoke86

.invoke86:                                        ; preds = %bb.o, %bb.n
  %13 = phi i32 [ 41, %bb.n ], [ 0, %bb.o ]
  %14 = phi i32 [ 67, %bb.n ], [ 1, %bb.o ]
  %15 = invoke noundef i32 @_ZN5folly6netops10setsockoptENS_13NetworkSocketEiiPKvj(i32 %i.v, i32 noundef %13, i32 noundef %14, ptr noundef nonnull %i.c, i32 noundef 4)
          to label %bb.p unwind label %bb.aw

bb.p:                                             ; preds = %.invoke86
  %.not33 = icmp eq i32 %15, 0
  br i1 %.not33, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %9, ptr noundef nonnull @.str.30, i32 noundef 1079, i32 noundef 2)
          to label %bb.r unwind label %bb.aw

bb.r:                                             ; preds = %bb.q
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %9)
          to label %bb.s unwind label %bb.aw      ; 3 uses

bb.s:                                             ; preds = %bb.r
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.98, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.aw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.s
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.34, i64 noundef 21)
          to label %.noexc unwind label %bb.aw    ; 0 uses

.noexc:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.al, i32 noundef %i.v)
          to label %.noexc36 unwind label %bb.aw

.noexc36:                                         ; preds = %.noexc
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @.str.35, i64 noundef 1)
          to label %_ZN5follylsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES7_RKNS_13NetworkSocketE.exit unwind label %bb.aw ; 0 uses

_ZN5follylsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES7_RKNS_13NetworkSocketE.exit: ; preds = %.noexc36
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %9) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %.thread

.thread:                                          ; preds = %bb.o, %bb.n, %bb.m, %_ZN5follylsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES7_RKNS_13NetworkSocketE.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39
  br label %bb.w

bb.t:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %10, ptr noundef nonnull @.str.30, i32 noundef 1083, i32 noundef 2)
          to label %bb.u unwind label %bb.aw

bb.u:                                             ; preds = %bb.t
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %10)
          to label %bb.v unwind label %bb.aw      ; 3 uses

bb.v:                                             ; preds = %bb.u
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.99, i64 noundef 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %bb.aw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39: ; preds = %bb.v
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.34, i64 noundef 21)
          to label %.noexc40 unwind label %bb.aw  ; 0 uses

.noexc40:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, i32 noundef %i.v)
          to label %.noexc41 unwind label %bb.aw

.noexc41:                                         ; preds = %.noexc40
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull @.str.35, i64 noundef 1)
          to label %_ZN5follylsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES7_RKNS_13NetworkSocketE.exit43 unwind label %bb.aw ; 0 uses

_ZN5follylsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES7_RKNS_13NetworkSocketE.exit43: ; preds = %.noexc41
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %10) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  br label %bb.w

bb.w:                                             ; preds = %_ZN5follylsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES7_RKNS_13NetworkSocketE.exit43, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %.critedge2

.critedge2:                                       ; preds = %bb.g, %bb.w, %bb.j
  %i.av = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #39 ; 2 uses
  %.sroa.0.0.copyload.i44 = load i64, ptr %i.n, align 8, !tbaa !10859
  store i64 %i.av, ptr %i.n, align 8, !tbaa !10859
  %i.aw = load double, ptr %i.o, align 8, !tbaa !10860 ; 2 uses
  %i.ax = fcmp olt double %i.aw, 1.000000e+00
  br i1 %i.ax, label %bb.x, label %bb.af

bb.x:                                             ; preds = %.critedge2
  %i.ay = sub nsw i64 %i.av, %.sroa.0.0.copyload.i44
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %i.ay, i64 0)
  %i.az = load double, ptr %i.p, align 8, !tbaa !10861
  %i.ba = uitofp nneg i64 %.sroa.speculated to double
  %i.bb = call double @llvm.fmuladd.f64(double %i.az, double %i.ba, double 1.000000e+00)
  %i.bc = fmul double %i.aw, %i.bb                ; 2 uses
  store double %i.bc, ptr %i.o, align 8, !tbaa !10860
  %i.bd = fcmp ult double %i.bc, 1.000000e+00
  br i1 %i.bd, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store double 1.000000e+00, ptr %i.o, align 8, !tbaa !10860
  br label %bb.af

bb.z:                                             ; preds = %bb.x
  %i.be = call i32 @rand() #39
  %i.bf = sitofp i32 %i.be to double
  %i.bg = load double, ptr %i.o, align 8, !tbaa !10860
  %i.bh = fmul double %i.bg, f0x41DFFFFFFFC00000
  %i.bi = fcmp olt double %i.bh, %i.bf
  br i1 %i.bi, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %bb.z
  %i.bj = load i64, ptr %i.t, align 8, !tbaa !10862
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr %i.t, align 8, !tbaa !10862
  br i1 %.not75, label %bb.aq, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bl = invoke noundef i32 @_ZN5folly10closeNoIntENS_13NetworkSocketE(i32 %i.v)
          to label %bb.ac unwind label %bb.aw     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.bm = load ptr, ptr %i.l, align 8, !tbaa !10800 ; 3 uses
  %.not34 = icmp eq ptr %i.bm, null
  br i1 %.not34, label %bb.aq, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39, !noalias !10863
  %i.bn = load double, ptr %i.o, align 8, !tbaa !10866, !noalias !10863
  store double %i.bn, ptr %5, align 16, !tbaa !10672, !noalias !10863
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.100, i64 66, i64 10, ptr nonnull %5)
          to label %bb.ae unwind label %bb.aw

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !10863
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !14
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, i32 %i.v, ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(32) %11) #39, !call_target !10867
  %i.br = load ptr, ptr %11, align 8, !tbaa !10673 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.u
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ae
  %i.bt = load i64, ptr %i.u, align 8, !tbaa !10672
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  br label %bb.aq

bb.af:                                            ; preds = %bb.y, %bb.z, %.critedge2
  br i1 %.not75, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %bb.af
  %i.bv = tail call ptr @__errno_location() #52   ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !7  ; 2 uses
  switch i32 %i.bw, label %.invoke.a [
    i32 11, label %bb.aq
    i32 24, label %bb.ah
    i32 23, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #39
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull @.str.30, i32 noundef 1125, i32 noundef 2)
          to label %bb.ai unwind label %bb.aw

bb.ai:                                            ; preds = %bb.ah
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %12)
          to label %bb.aj unwind label %bb.aw

bb.aj:                                            ; preds = %bb.ai
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull @.str.101, i64 noundef 70)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46 unwind label %bb.aw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46: ; preds = %bb.aj
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %12) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  invoke void @_ZN5folly17AsyncServerSocket12enterBackoffEv(ptr noundef nonnull align 8 dereferenceable(352) %0)
          to label %bb.ak unwind label %bb.aw

bb.ak:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46
  %i.bz = load i32, ptr %i.bv, align 4, !tbaa !7
  br label %.invoke.a

.invoke.a:                                        ; preds = %bb.ag, %bb.ak
  %i.ca = phi i32 [ %i.bz, %bb.ak ], [ %i.bw, %bb.ag ]
  invoke void @_ZN5folly17AsyncServerSocket13dispatchErrorEPKci(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull @.str.102, i32 noundef %i.ca)
          to label %bb.al unwind label %bb.aw

bb.al:                                            ; preds = %.invoke.a
  %i.cb = load ptr, ptr %i.l, align 8, !tbaa !10800 ; 3 uses
  %.not35 = icmp eq ptr %i.cb, null
  br i1 %.not35, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cc = load i32, ptr %i.bv, align 4, !tbaa !7
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !14
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, i32 noundef %i.cc) #39, !call_target !10870
  br label %bb.aq

bb.an:                                            ; preds = %bb.af
  invoke void @_ZN5folly17AsyncServerSocket14dispatchSocketENS_13NetworkSocketEONS_13SocketAddressE(ptr noundef nonnull align 8 dereferenceable(352) %0, i32 %i.v, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %bb.ao unwind label %bb.aw

bb.ao:                                            ; preds = %bb.an
  %i.cg = load i8, ptr %i.q, align 8, !tbaa !10757, !range !10600, !noundef !146
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ci = load ptr, ptr %i.r, align 8, !tbaa !10839
  %i.cj = load ptr, ptr %i.s, align 8, !tbaa !10839
  %i.ck = icmp eq ptr %i.ci, %i.cj
  %spec.select = select i1 %i.ck, i32 2, i32 0
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.al, %bb.am, %bb.ag, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ac
  %.023 = phi i32 [ 4, %bb.aa ], [ 1, %bb.ag ], [ 1, %bb.al ], [ 2, %bb.ao ], [ 4, %bb.ac ], [ 4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 1, %bb.am ], [ %spec.select, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.cl = load i8, ptr %i.j, align 8, !tbaa !10696
  %cond.i.i = icmp eq i8 %i.cl, 1
  br i1 %cond.i.i, label %bb.ar, label %_ZN5folly13SocketAddressD2Ev.exit, !prof !10698

bb.ar:                                            ; preds = %bb.aq
  %i.cm = load ptr, ptr %6, align 8, !tbaa !10699 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %_ZN5folly13SocketAddressD2Ev.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef 110) #50
  br label %_ZN5folly13SocketAddressD2Ev.exit

_ZN5folly13SocketAddressD2Ev.exit:                ; preds = %bb.aq, %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  switch i32 %.023, label %_ZN5folly13SocketAddressD2Ev.exit._crit_edge.loopexit [
    i32 0, label %bb.at
    i32 4, label %bb.at
  ]

bb.at:                                            ; preds = %_ZN5folly13SocketAddressD2Ev.exit, %_ZN5folly13SocketAddressD2Ev.exit
  %i.co = add nuw i32 %.076, 1                    ; 2 uses
  %i.cp = load i32, ptr %i.g, align 4, !tbaa !10851
  %i.cq = icmp ult i32 %i.co, %i.cp
  br i1 %i.cq, label %bb.b, label %_ZN5folly13SocketAddressD2Ev.exit._crit_edge.loopexit, !llvm.loop !10873

_ZN5folly13SocketAddressD2Ev.exit._crit_edge.loopexit: ; preds = %_ZN5folly13SocketAddressD2Ev.exit, %bb.at
  %.pre = load i32, ptr %i.d, align 8, !tbaa !10611
  %i.cr = add i32 %.pre, -1
  br label %_ZN5folly13SocketAddressD2Ev.exit._crit_edge

_ZN5folly13SocketAddressD2Ev.exit._crit_edge:     ; preds = %_ZN5folly13SocketAddressD2Ev.exit._crit_edge.loopexit, %bb.a
  %i.cs = phi i32 [ %i.cr, %_ZN5folly13SocketAddressD2Ev.exit._crit_edge.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  store i32 %i.cs, ptr %i.d, align 8, !tbaa !10611
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.au, label %_ZN5folly22DelayedDestructionBase15DestructorGuardD2Ev.exit

bb.au:                                            ; preds = %_ZN5folly13SocketAddressD2Ev.exit._crit_edge
  %i.cu = load ptr, ptr %0, align 8, !tbaa !14
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  invoke void %i.cw(ptr noundef nonnull align 8 dereferenceable(12) %0, i1 noundef zeroext true)
          to label %_ZN5folly22DelayedDestructionBase15DestructorGuardD2Ev.exit unwind label %bb.av, !call_target !9970

bb.av:                                            ; preds = %bb.au
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #48
  unreachable

_ZN5folly22DelayedDestructionBase15DestructorGuardD2Ev.exit: ; preds = %_ZN5folly13SocketAddressD2Ev.exit._crit_edge, %bb.au
  ret void

bb.aw:                                            ; preds = %.invoke86, %.invoke.a, %bb.aj, %.noexc41, %.noexc40, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %bb.v, %.noexc36, %.noexc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.s, %bb.b, %bb.ad, %bb.an, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46, %bb.ai, %bb.ah, %bb.ab, %bb.u, %bb.t, %bb.r, %bb.q, %bb.k, %bb.f, %bb.e
  %16 = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %16, 0
  call void @__clang_call_terminate(ptr %i.cz) #48
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr noundef ptr @_ZThn16_NK5folly17AsyncServerSocket12getEventBaseEv(ptr noundef %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10616
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define void @_ZThn16_N5folly17AsyncServerSocketD1Ev(ptr noundef %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN5folly17AsyncServerSocketD1Ev(ptr noundef nonnull align 8 dereferenceable(352) %i.a) #39
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZThn16_N5folly17AsyncServerSocketD0Ev(ptr noundef %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  tail call void @_ZN5folly17AsyncServerSocketD1Ev(ptr noundef nonnull align 8 dereferenceable(352) %i.a) #39, !inline_history !10874
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(352) %i.a, i64 noundef 352) #50, !inline_history !10874
  ret void
}

; Function Attrs: uwtable
define void @_ZThn16_NK5folly17AsyncServerSocket10getAddressEPNS_13SocketAddressE(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZNK5folly17AsyncServerSocket10getAddressEPNS_13SocketAddressE(ptr noundef nonnull align 8 dereferenceable(352) %i.a, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN5folly17AsyncServerSocket14AcceptCallbackD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #5 align 2 {
bb.a:
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly17AsyncServerSocket14RemoteAcceptor5startEPNS_9EventBaseEj(ptr noundef nonnull align 64 dereferenceable(576) initializes((472, 476)) %0, ptr noundef nonnull %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::Function", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i32 %2, ptr %i.a, align 8, !tbaa !10834
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  store ptr %1, ptr %3, align 16, !tbaa !10769
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !10770
  store ptr @"_ZN5folly6detail8function5call_IZNS_17AsyncServerSocket14RemoteAcceptor5startEPNS_9EventBaseEjE3$_0Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE", ptr %i.b, align 16, !tbaa !10835
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.c, align 8, !tbaa !10837
  call void @_ZN5folly9EventBase20runInEventBaseThreadENS_8FunctionIFvvEEE(ptr noundef nonnull align 16 dereferenceable(632) %1, ptr noundef nonnull %3) #39
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10837 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN5folly8FunctionIFvvEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef i64 %i.d(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #39, !inline_history !10875 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit

_ZN5folly8FunctionIFvvEED2Ev.exit:                ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5folly9EventBase20runInEventBaseThreadENS_8FunctionIFvvEEE(ptr noundef nonnull align 16 dereferenceable(632), ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: mustprogress uwtable
define internal void @"_ZN5folly6detail8function5call_IZNS_17AsyncServerSocket14RemoteAcceptor5startEPNS_9EventBaseEjE3$_0Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE"(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10876 ; 10 uses
  %i.c = load ptr, ptr %i.b, align 64, !tbaa !10801 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #39, !call_target !10595, !inline_history !10878
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.h = load ptr, ptr %0, align 16, !tbaa !10879 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  store ptr %i.h, ptr %i.i, align 16, !tbaa !10880
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 2 uses
  %i.l = load i32, ptr %i.k, align 32, !tbaa !10881 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 292
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp slt i32 %i.l, 0
  %i.p = select i1 %i.o, i32 %i.n, i32 %i.l
  tail call void @_ZN5folly12EventHandler11initHandlerEPNS_9EventBaseENS_13NetworkSocketE(ptr noundef nonnull align 8 dereferenceable(184) %i.j, ptr noundef %i.h, i32 %i.p)
  %i.q = tail call noundef zeroext i1 @_ZN5folly12EventHandler12registerImplEtb(ptr noundef nonnull align 8 dereferenceable(184) %i.j, i16 noundef zeroext 18, i1 noundef zeroext false)
  br i1 %i.q, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.r = load i32, ptr %i.k, align 32, !tbaa !10881
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.u = tail call noundef zeroext i1 @_ZN5folly14EventBaseEvent16setEdgeTriggeredEv(ptr noundef nonnull align 8 dereferenceable(168) %i.t)
  %i.v = zext i1 %i.u to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = phi i8 [ 0, %bb.b ], [ %i.v, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 553
  store i8 %i.w, ptr %i.x, align 1, !tbaa !10882
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 544 ; 2 uses
  %i.z = load i64, ptr %i.y, align 32, !tbaa !10883
  %i.aa = add nsw i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 32, !tbaa !10883
  tail call void @_ZN5folly32EventBaseAtomicNotificationQueueISt7variantIJNS_17AsyncServerSocket14NewConnMessageENS2_12ErrorMessageEEENS2_14RemoteAcceptor8ConsumerEE8notifyFdEv(ptr noundef nonnull align 64 dereferenceable(490) %i.g)
  br label %"_ZZN5folly17AsyncServerSocket14RemoteAcceptor5startEPNS_9EventBaseEjENK3$_0clEv.exit"

bb.e:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 553
  store i8 0, ptr %i.ab, align 1, !tbaa !10882
  br label %"_ZZN5folly17AsyncServerSocket14RemoteAcceptor5startEPNS_9EventBaseEjENK3$_0clEv.exit"

"_ZZN5folly17AsyncServerSocket14RemoteAcceptor5startEPNS_9EventBaseEjENK3$_0clEv.exit": ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_(i32 noundef %0, ptr noundef %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.c [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @abort() #48
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.a
  ret i64 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

declare void @_ZN5folly12EventHandler11initHandlerEPNS_9EventBaseENS_13NetworkSocketE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef, i32) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly32EventBaseAtomicNotificationQueueISt7variantIJNS_17AsyncServerSocket14NewConnMessageENS2_12ErrorMessageEEENS2_14RemoteAcceptor8ConsumerEE8notifyFdEv(ptr noundef nonnull align 64 dereferenceable(490) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = load i32, ptr %i.c, align 8, !tbaa !10884
  %i.e = tail call noundef i32 @_ZN5folly14get_cached_pidEv()
  %.not.i = icmp eq i32 %i.d, %i.e
  br i1 %.not.i, label %_ZNK5folly32EventBaseAtomicNotificationQueueISt7variantIJNS_17AsyncServerSocket14NewConnMessageENS2_12ErrorMessageEEENS2_14RemoteAcceptor8ConsumerEE8checkPidEv.exit.preheader, label %bb.b, !prof !10731

_ZNK5folly32EventBaseAtomicNotificationQueueISt7variantIJNS_17AsyncServerSocket14NewConnMessageENS2_12ErrorMessageEEENS2_14RemoteAcceptor8ConsumerEE8checkPidEv.exit.preheader: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232
  br label %_ZNK5folly32EventBaseAtomicNotificationQueueISt7variantIJNS_17AsyncServerSocket14NewConnMessageENS2_12ErrorMessageEEENS2_14RemoteAcceptor8ConsumerEE8checkPidEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK5folly32EventBaseAtomicNotificationQueueISt7variantIJNS_17AsyncServerSocket14NewConnMessageENS2_12ErrorMessageEEENS2_14RemoteAcceptor8ConsumerEE12checkPidFailEv(ptr noundef nonnull align 64 dereferenceable(490) %0) #51
  unreachable

_ZNK5folly32EventBaseAtomicNotificationQueueISt7variantIJNS_17AsyncServerSocket14NewConnMessageENS2_12ErrorMessageEEENS2_14RemoteAcceptor8ConsumerEE8checkPidEv.exit: ; preds = %_ZNK5folly32EventBaseAtomicNotificationQueueISt7variantIJNS_17AsyncServerSocket14NewConnMessageENS2_12ErrorMessageEEENS2_14RemoteAcceptor8ConsumerEE8checkPidEv.exit.preheader, %bb.f
  %i.h = load i32, ptr %i.f, align 32, !tbaa !10881 ; 2 uses
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK5folly32EventBaseAtomicNotificationQueueISt7variantIJNS_17AsyncServerSocket14NewConnMessageENS2_12ErrorMessageEEENS2_14RemoteAcceptor8ConsumerEE8checkPidEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
end_hunk_0
