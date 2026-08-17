inline.NumInlined: 6505
inline.NumDeleted: 2825
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 45
begin_hunk_0_@"_ZN4core3ptr50drop_in_place$LT$hyper..proto..h1..conn..State$GT$17h52f7c5f59f2dc4d4E":bb.a
bb.am:                                            ; preds = %bb.ai
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8226)
  %i.cp = load ptr, ptr %i.cj, align 8, !alias.scope !8229, !noundef !3 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$hyper..upgrade..Pending$GT$$GT$17h1b8a9b30385cad14E.exit", label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cr = atomicrmw sub ptr %i.cp, i64 1 release, align 8, !noalias !8230
  %i.cs = icmp eq i64 %i.cr, 1
  br i1 %i.cs, label %bb.ao, label %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$hyper..upgrade..Pending$GT$$GT$17h1b8a9b30385cad14E.exit"

bb.ao:                                            ; preds = %bb.an
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17haa79fa49d7cc6a56E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cj)
  br label %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$hyper..upgrade..Pending$GT$$GT$17h1b8a9b30385cad14E.exit"

bb.ap:                                            ; preds = %bb.al
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34
  unreachable

common.resume:                                    ; preds = %.body27, %bb.aj, %bb.ak, %bb.al
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %bb.aj ], [ %i.ck, %bb.al ], [ %i.ck, %bb.ak ], [ %.pn12, %.body27 ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$hyper..upgrade..Pending$GT$$GT$17h1b8a9b30385cad14E.exit": ; preds = %"_ZN4core3ptr52drop_in_place$LT$hyper..proto..h1..conn..Writing$GT$17h6e5198c414679bceE.exit", %bb.am, %bb.an, %bb.ao
  ret void

bb.aq:                                            ; preds = %bb.u, %bb.q, %bb.d, %bb.c, %.body27, %bb.ab, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$hyper..ext..informational..OnInformational$GT$$GT$17h22c286a0926fd78cE.exit"
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr50drop_in_place$LT$tokio..sync..notify..Notified$GT$17hbe873f86435f4de0E"(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN71_$LT$tokio..sync..notify..Notified$u20$as$u20$core..ops..drop..Drop$GT$4drop17h910e6ffb24a80c52E"(ptr noundef nonnull align 8 %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr i8, ptr %0, i64 32
  %.val2 = load ptr, ptr %i.b, align 8, !align !6, !noundef !3 ; 2 uses
  %i.c = icmp eq ptr %.val2, null
  br i1 %i.c, label %"_ZN4core3ptr48drop_in_place$LT$tokio..sync..notify..Waiter$GT$17h334063c831e9fb3dE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 40
  %.val3 = load ptr, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  invoke void %i.f(ptr noundef %.val3)
          to label %"_ZN4core3ptr48drop_in_place$LT$tokio..sync..notify..Waiter$GT$17h334063c831e9fb3dE.exit" unwind label %bb.f, !inline_history !459

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.g, align 8, !align !6, !noundef !3 ; 2 uses
  %i.h = icmp eq ptr %.val, null
  br i1 %i.h, label %"_ZN4core3ptr48drop_in_place$LT$tokio..sync..notify..Waiter$GT$17h334063c831e9fb3dE.exit4", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 40
  %.val1 = load ptr, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3
  tail call void %i.k(ptr noundef %.val1), !inline_history !8235
  br label %"_ZN4core3ptr48drop_in_place$LT$tokio..sync..notify..Waiter$GT$17h334063c831e9fb3dE.exit4"

"_ZN4core3ptr48drop_in_place$LT$tokio..sync..notify..Waiter$GT$17h334063c831e9fb3dE.exit4": ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34
  unreachable

"_ZN4core3ptr48drop_in_place$LT$tokio..sync..notify..Waiter$GT$17h334063c831e9fb3dE.exit": ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr517drop_in_place$LT$tokio..runtime..task..core..Stage$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$axum..serve..handle_connection$LT$tokio..net..tcp..listener..TcpListener$C$axum..extract..connect_info..IntoMakeServiceWithConnectInfo$LT$axum..routing..Router$C$core..net..socket_addr..SocketAddr$GT$$C$axum..extension..AddExtension$LT$axum..routing..Router$C$axum..extract..connect_info..ConnectInfo$LT$core..net..socket_addr..SocketAddr$GT$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$$GT$17h55c595236a72c2b4E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !820, !noundef !3
  switch i32 %i.a, label %"_ZN4core3ptr98drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$tokio..runtime..task..error..JoinError$GT$$GT$17h46a288b89036387eE.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.d
  ]

"_ZN4core3ptr98drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$tokio..runtime..task..error..JoinError$GT$$GT$17h46a288b89036387eE.exit": ; preds = %bb.i, %bb.h, %bb.e, %bb.d, %"_ZN4core3ptr476drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$axum..serve..handle_connection$LT$tokio..net..tcp..listener..TcpListener$C$axum..extract..connect_info..IntoMakeServiceWithConnectInfo$LT$axum..routing..Router$C$core..net..socket_addr..SocketAddr$GT$$C$axum..extension..AddExtension$LT$axum..routing..Router$C$axum..extract..connect_info..ConnectInfo$LT$core..net..socket_addr..SocketAddr$GT$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hab9d22a4271c175dE.exit", %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3 ; 3 uses
  invoke fastcc void @"_ZN4core3ptr429drop_in_place$LT$axum..serve..handle_connection$LT$tokio..net..tcp..listener..TcpListener$C$axum..extract..connect_info..IntoMakeServiceWithConnectInfo$LT$axum..routing..Router$C$core..net..socket_addr..SocketAddr$GT$$C$axum..extension..AddExtension$LT$axum..routing..Router$C$axum..extract..connect_info..ConnectInfo$LT$core..net..socket_addr..SocketAddr$GT$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h2d1123588efd4a6cE"(ptr noundef nonnull align 8 %.val)
          to label %"_ZN4core3ptr476drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$axum..serve..handle_connection$LT$tokio..net..tcp..listener..TcpListener$C$axum..extract..connect_info..IntoMakeServiceWithConnectInfo$LT$axum..routing..Router$C$core..net..socket_addr..SocketAddr$GT$$C$axum..extension..AddExtension$LT$axum..routing..Router$C$axum..extract..connect_info..ConnectInfo$LT$core..net..socket_addr..SocketAddr$GT$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hab9d22a4271c175dE.exit" unwind label %bb.c

common.resume:                                    ; preds = %bb.j, %bb.k, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.q, %bb.k ], [ %i.q, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 1064, i64 noundef 8) #26
  br label %common.resume

"_ZN4core3ptr476drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$axum..serve..handle_connection$LT$tokio..net..tcp..listener..TcpListener$C$axum..extract..connect_info..IntoMakeServiceWithConnectInfo$LT$axum..routing..Router$C$core..net..socket_addr..SocketAddr$GT$$C$axum..extension..AddExtension$LT$axum..routing..Router$C$axum..extract..connect_info..ConnectInfo$LT$core..net..socket_addr..SocketAddr$GT$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hab9d22a4271c175dE.exit": ; preds = %bb.b
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 1064, i64 noundef 8) #26
  br label %"_ZN4core3ptr98drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$tokio..runtime..task..error..JoinError$GT$$GT$17h46a288b89036387eE.exit"

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8236)
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !8236, !noundef !3
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %"_ZN4core3ptr98drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$tokio..runtime..task..error..JoinError$GT$$GT$17h46a288b89036387eE.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !8236, !align !5, !noundef !3 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.h, align 8, !alias.scope !8236 ; 6 uses
  %i.i = icmp eq ptr %.val.i, null
  br i1 %i.i, label %"_ZN4core3ptr98drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$tokio..runtime..task..error..JoinError$GT$$GT$17h46a288b89036387eE.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.j = load ptr, ptr %.val1.i, align 8, !invariant.load !3, !noalias !8236 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.j(ptr noundef nonnull %.val.i)
          to label %bb.h unwind label %bb.j, !noalias !8236

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !7, !invariant.load !3, !noalias !8236 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !8, !invariant.load !3, !noalias !8236 ; 2 uses
  %i.o = icmp ult i64 %i.n, -9223372036854775807
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp eq i64 %i.l, 0
  br i1 %i.p, label %"_ZN4core3ptr98drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$tokio..runtime..task..error..JoinError$GT$$GT$17h46a288b89036387eE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, -9223372036854775807) %i.n) #26, !noalias !8236
  br label %"_ZN4core3ptr98drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$tokio..runtime..task..error..JoinError$GT$$GT$17h46a288b89036387eE.exit"

bb.j:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !7, !invariant.load !3, !noalias !8236 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !8, !invariant.load !3, !noalias !8236 ; 2 uses
  %i.v = icmp ult i64 %i.u, -9223372036854775807
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp eq i64 %i.s, 0
  br i1 %i.w, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.u) #26, !noalias !8236
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr519drop_in_place$LT$axum..serve..WithGracefulShutdown$LT$tokio..net..tcp..listener..TcpListener$C$axum..extract..connect_info..IntoMakeServiceWithConnectInfo$LT$axum..routing..Router$C$core..net..socket_addr..SocketAddr$GT$$C$axum..extension..AddExtension$LT$axum..routing..Router$C$axum..extract..connect_info..ConnectInfo$LT$core..net..socket_addr..SocketAddr$GT$$GT$$C$anki..sync..http_server..SimpleServer..make_server..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$..run..$u7b$$u7b$closure$u7d$$u7d$$GT$17h3e5292b9d5815020E"(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load i8, ptr %i.a, align 8, !range !96, !noundef !3
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.c
    i8 4, label %bb.d
    i8 5, label %bb.e
  ]

common.ret:                                       ; preds = %bb.b, %bb.a, %"_ZN4core3ptr59drop_in_place$LT$tokio..net..tcp..listener..TcpListener$GT$17haf0864a0405060fcE.exit"
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN4core3ptr485drop_in_place$LT$axum..serve..WithGracefulShutdown$LT$tokio..net..tcp..listener..TcpListener$C$axum..extract..connect_info..IntoMakeServiceWithConnectInfo$LT$axum..routing..Router$C$core..net..socket_addr..SocketAddr$GT$$C$axum..extension..AddExtension$LT$axum..routing..Router$C$axum..extract..connect_info..ConnectInfo$LT$core..net..socket_addr..SocketAddr$GT$$GT$$C$anki..sync..http_server..SimpleServer..make_server..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h17082cb931fee216E"(ptr noundef nonnull align 8 %0)
  br label %common.ret

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  invoke fastcc void @"_ZN4core3ptr237drop_in_place$LT$$LP$$LT$tokio..net..tcp..listener..TcpListener$u20$as$u20$axum..serve..listener..Listener$GT$..accept..$u7b$$u7b$closure$u7d$$u7d$$C$tokio..sync..watch..Sender$LT$$LP$$RP$$GT$..closed..$u7b$$u7b$closure$u7d$$u7d$$RP$$GT$17ha0798d3dc483c1beE"(ptr noundef nonnull align 8 %i.c)
          to label %"_ZN4core3ptr100drop_in_place$LT$tokio..sync..watch..Sender$LT$$LP$$RP$$GT$..closed..$u7b$$u7b$closure$u7d$$u7d$$GT$17h80e3462729160627E.exit" unwind label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  invoke fastcc void @"_ZN4core3ptr400drop_in_place$LT$axum..serve..handle_connection$LT$tokio..net..tcp..listener..TcpListener$C$axum..extract..connect_info..IntoMakeServiceWithConnectInfo$LT$axum..routing..Router$C$core..net..socket_addr..SocketAddr$GT$$C$axum..extension..AddExtension$LT$axum..routing..Router$C$axum..extract..connect_info..ConnectInfo$LT$core..net..socket_addr..SocketAddr$GT$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17he47c2019b38076c9E"(ptr noundef nonnull align 8 %i.d)
          to label %1 unwind label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.f = load i8, ptr %i.e, align 8, !range !95, !noundef !3
  %cond.i = icmp eq i8 %i.f, 3
  br i1 %cond.i, label %bb.f, label %"_ZN4core3ptr100drop_in_place$LT$tokio..sync..watch..Sender$LT$$LP$$RP$$GT$..closed..$u7b$$u7b$closure$u7d$$u7d$$GT$17h80e3462729160627E.exit"

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 225
  %i.h = load i8, ptr %i.g, align 1, !range !122, !noundef !3
  %cond.i.i.i = icmp eq i8 %i.h, 4
  br i1 %cond.i.i.i, label %bb.g, label %"_ZN4core3ptr100drop_in_place$LT$tokio..sync..watch..Sender$LT$$LP$$RP$$GT$..closed..$u7b$$u7b$closure$u7d$$u7d$$GT$17h80e3462729160627E.exit"

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  invoke void @"_ZN71_$LT$tokio..sync..notify..Notified$u20$as$u20$core..ops..drop..Drop$GT$4drop17h910e6ffb24a80c52E"(ptr noundef nonnull align 8 %i.i)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 264
  %.val2.i.i.i.i = load ptr, ptr %i.k, align 8, !align !6, !noundef !3 ; 2 uses
  %i.l = icmp eq ptr %.val2.i.i.i.i, null
  br i1 %i.l, label %.body.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr i8, ptr %0, i64 272
  %.val3.i.i.i.i = load ptr, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3
  invoke void %i.o(ptr noundef %.val3.i.i.i.i)
          to label %.body.i.i.i unwind label %bb.l, !inline_history !459

bb.j:                                             ; preds = %bb.g
  %i.p = getelementptr i8, ptr %0, i64 264
  %.val.i.i.i.i = load ptr, ptr %i.p, align 8, !align !6, !noundef !3 ; 2 uses
  %i.q = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.q, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr i8, ptr %0, i64 272
  %.val1.i.i.i.i = load ptr, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3
  invoke void %i.t(ptr noundef %.val1.i.i.i.i)
          to label %bb.p unwind label %bb.m, !inline_history !460

bb.l:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.m, %bb.i, %bb.h
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.v, %bb.m ], [ %i.j, %bb.i ], [ %i.j, %bb.h ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 0, ptr %i.w, align 8
  br label %.body

bb.n:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 203
  store i8 0, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i8 0, ptr %i.aa, align 4
  br label %.body

1:                                                ; preds = %bb.d
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 203
  store i8 0, ptr %2, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.j, %bb.k, %1
  %.sink32 = phi i64 [ 204, %1 ], [ 224, %bb.k ], [ 224, %bb.j ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.sink32
  store i8 0, ptr %i.ab, align 4
  br label %"_ZN4core3ptr100drop_in_place$LT$tokio..sync..watch..Sender$LT$$LP$$RP$$GT$..closed..$u7b$$u7b$closure$u7d$$u7d$$GT$17h80e3462729160627E.exit"

"_ZN4core3ptr100drop_in_place$LT$tokio..sync..watch..Sender$LT$$LP$$RP$$GT$..closed..$u7b$$u7b$closure$u7d$$u7d$$GT$17h80e3462729160627E.exit": ; preds = %bb.p, %bb.f, %bb.e, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 201 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !range !121, !noundef !3
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.v, label %"_ZN4core3ptr65drop_in_place$LT$tokio..sync..watch..Receiver$LT$$LP$$RP$$GT$$GT$17h0f8ec24ea0917d1dE.exit"

.body:                                            ; preds = %.body.i.i.i, %bb.n, %bb.o
  %.pn = phi { ptr, i32 } [ %i.x, %bb.n ], [ %i.y, %bb.o ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 201
  %i.ag = load i8, ptr %i.af, align 1, !range !121, !noundef !3
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.at, label %.body19

"_ZN4core3ptr65drop_in_place$LT$tokio..sync..watch..Receiver$LT$$LP$$RP$$GT$$GT$17h0f8ec24ea0917d1dE.exit": ; preds = %bb.y, %bb.z, %"_ZN4core3ptr100drop_in_place$LT$tokio..sync..watch..Sender$LT$$LP$$RP$$GT$..closed..$u7b$$u7b$closure$u7d$$u7d$$GT$17h80e3462729160627E.exit"
  store i8 0, ptr %i.ac, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  invoke void @"_ZN77_$LT$tokio..sync..watch..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h946ea3ef3d83dfbeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ai)
          to label %bb.s unwind label %bb.q

bb.q:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$tokio..sync..watch..Receiver$LT$$LP$$RP$$GT$$GT$17h0f8ec24ea0917d1dE.exit"
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8242)
  %i.ak = load ptr, ptr %i.ai, align 8, !alias.scope !8245, !nonnull !3, !noundef !3
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !8248
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.r, label %.body15

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb0d54a666104b191E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ai)
          to label %.body15 unwind label %bb.u

bb.s:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$tokio..sync..watch..Receiver$LT$$LP$$RP$$GT$$GT$17h0f8ec24ea0917d1dE.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8252)
  %i.an = load ptr, ptr %i.ai, align 8, !alias.scope !8255, !nonnull !3, !noundef !3
  %i.ao = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !8256
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.t, label %"_ZN4core3ptr63drop_in_place$LT$tokio..sync..watch..Sender$LT$$LP$$RP$$GT$$GT$17hd54e069f8fa0597fE.exit"

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb0d54a666104b191E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ai)
          to label %"_ZN4core3ptr63drop_in_place$LT$tokio..sync..watch..Sender$LT$$LP$$RP$$GT$$GT$17hd54e069f8fa0597fE.exit" unwind label %bb.ac

bb.u:                                             ; preds = %bb.r
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34
  unreachable

bb.v:                                             ; preds = %"_ZN4core3ptr100drop_in_place$LT$tokio..sync..watch..Sender$LT$$LP$$RP$$GT$..closed..$u7b$$u7b$closure$u7d$$u7d$$GT$17h80e3462729160627E.exit"
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  invoke void @"_ZN79_$LT$tokio..sync..watch..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1988efa601672861E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ar)
          to label %bb.y unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8260)
  %i.at = load ptr, ptr %i.ar, align 8, !alias.scope !8263, !nonnull !3, !noundef !3
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !8266
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.x, label %.body19

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb0d54a666104b191E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ar)
          to label %.body19 unwind label %bb.aa

bb.y:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8270)
  %i.aw = load ptr, ptr %i.ar, align 8, !alias.scope !8273, !nonnull !3, !noundef !3
  %i.ax = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !noalias !8274
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.z, label %"_ZN4core3ptr65drop_in_place$LT$tokio..sync..watch..Receiver$LT$$LP$$RP$$GT$$GT$17h0f8ec24ea0917d1dE.exit"

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb0d54a666104b191E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ar)
          to label %"_ZN4core3ptr65drop_in_place$LT$tokio..sync..watch..Receiver$LT$$LP$$RP$$GT$$GT$17h0f8ec24ea0917d1dE.exit" unwind label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34
  unreachable

.body19:                                          ; preds = %bb.ab, %bb.x, %bb.w, %bb.at, %.body
  %.pn3 = phi { ptr, i32 } [ %.pn, %.body ], [ %.pn, %bb.at ], [ %i.bc, %bb.ab ], [ %i.as, %bb.x ], [ %i.as, %bb.w ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 201
  store i8 0, ptr %i.ba, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$tokio..sync..watch..Sender$LT$$LP$$RP$$GT$$GT$17hd54e069f8fa0597fE"(ptr noalias noundef align 8 dereferenceable(8) %i.bb) #33
          to label %.body15 unwind label %bb.au

bb.ab:                                            ; preds = %bb.z
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body19

.body15:                                          ; preds = %bb.ac, %bb.r, %bb.q, %.body19
  %.pn5 = phi { ptr, i32 } [ %.pn3, %.body19 ], [ %i.bf, %bb.ac ], [ %i.aj, %bb.r ], [ %i.aj, %bb.q ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 205
  store i8 0, ptr %i.bd, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$tokio..sync..watch..Sender$LT$$LP$$RP$$GT$$GT$17hd54e069f8fa0597fE"(ptr noalias noundef align 8 dereferenceable(8) %i.be) #33
          to label %.body23 unwind label %bb.au

bb.ac:                                            ; preds = %bb.t
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body15

"_ZN4core3ptr63drop_in_place$LT$tokio..sync..watch..Sender$LT$$LP$$RP$$GT$$GT$17hd54e069f8fa0597fE.exit": ; preds = %bb.s, %bb.t
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 205
  store i8 0, ptr %i.bg, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  invoke void @"_ZN77_$LT$tokio..sync..watch..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h946ea3ef3d83dfbeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bh)
          to label %bb.af unwind label %bb.ad

bb.ad:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$tokio..sync..watch..Sender$LT$$LP$$RP$$GT$$GT$17hd54e069f8fa0597fE.exit"
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8278)
  %i.bj = load ptr, ptr %i.bh, align 8, !alias.scope !8281, !nonnull !3, !noundef !3
  %i.bk = atomicrmw sub ptr %i.bj, i64 1 release, align 8, !noalias !8284
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.ae, label %.body23

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb0d54a666104b191E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bh)
          to label %.body23 unwind label %bb.ah

bb.af:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$tokio..sync..watch..Sender$LT$$LP$$RP$$GT$$GT$17hd54e069f8fa0597fE.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8288)
  %i.bm = load ptr, ptr %i.bh, align 8, !alias.scope !8291, !nonnull !3, !noundef !3
  %i.bn = atomicrmw sub ptr %i.bm, i64 1 release, align 8, !noalias !8292
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %bb.ag, label %"_ZN4core3ptr63drop_in_place$LT$tokio..sync..watch..Sender$LT$$LP$$RP$$GT$$GT$17hd54e069f8fa0597fE.exit25"

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb0d54a666104b191E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bh)
          to label %"_ZN4core3ptr63drop_in_place$LT$tokio..sync..watch..Sender$LT$$LP$$RP$$GT$$GT$17hd54e069f8fa0597fE.exit25" unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ae
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34
  unreachable

.body23:                                          ; preds = %bb.aj, %bb.ae, %bb.ad, %.body15
  %.pn7 = phi { ptr, i32 } [ %.pn5, %.body15 ], [ %i.bv, %bb.aj ], [ %i.bi, %bb.ae ], [ %i.bi, %bb.ad ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 206
  store i8 0, ptr %i.bq, align 2
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8302)
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !8305, !nonnull !3, !noundef !3
  %i.bt = atomicrmw sub ptr %i.bs, i64 1 release, align 8, !noalias !8305
  %i.bu = icmp eq i64 %i.bt, 1
  br i1 %i.bu, label %bb.ai, label %"_ZN4core3ptr146drop_in_place$LT$axum..extract..connect_info..IntoMakeServiceWithConnectInfo$LT$axum..routing..Router$C$core..net..socket_addr..SocketAddr$GT$$GT$17h9bb329c8c7d69634E.exit"

bb.ai:                                            ; preds = %.body23
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h88293124af1b043aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.br)
          to label %"_ZN4core3ptr146drop_in_place$LT$axum..extract..connect_info..IntoMakeServiceWithConnectInfo$LT$axum..routing..Router$C$core..net..socket_addr..SocketAddr$GT$$GT$17h9bb329c8c7d69634E.exit" unwind label %bb.au

bb.aj:                                            ; preds = %bb.ag
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body23

"_ZN4core3ptr63drop_in_place$LT$tokio..sync..watch..Sender$LT$$LP$$RP$$GT$$GT$17hd54e069f8fa0597fE.exit25": ; preds = %bb.af, %bb.ag
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 206
  store i8 0, ptr %i.bw, align 2
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8315)
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !8318, !nonnull !3, !noundef !3
  %i.bz = atomicrmw sub ptr %i.by, i64 1 release, align 8, !noalias !8318
  %i.ca = icmp eq i64 %i.bz, 1
  br i1 %i.ca, label %bb.ak, label %"_ZN4core3ptr146drop_in_place$LT$axum..extract..connect_info..IntoMakeServiceWithConnectInfo$LT$axum..routing..Router$C$core..net..socket_addr..SocketAddr$GT$$GT$17h9bb329c8c7d69634E.exit28"

bb.ak:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$tokio..sync..watch..Sender$LT$$LP$$RP$$GT$$GT$17hd54e069f8fa0597fE.exit25"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h88293124af1b043aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bx)
          to label %"_ZN4core3ptr146drop_in_place$LT$axum..extract..connect_info..IntoMakeServiceWithConnectInfo$LT$axum..routing..Router$C$core..net..socket_addr..SocketAddr$GT$$GT$17h9bb329c8c7d69634E.exit28" unwind label %bb.al

end_hunk_0
