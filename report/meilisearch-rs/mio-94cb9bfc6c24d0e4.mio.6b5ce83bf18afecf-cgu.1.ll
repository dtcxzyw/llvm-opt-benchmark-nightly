Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/mio-94cb9bfc6c24d0e4.mio.6b5ce83bf18afecf-cgu.1?download=true
inline.NumInlined: 282
inline.NumDeleted: 54
begin_hunk_0_@_ZN3mio3sys4unix3uds8listener9bind_addr17hd76e5a64c8d672b9E:bb.a
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.be, ptr %i.bg, align 4
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bh = invoke ptr @_ZN3std2io5error5Error13last_os_error17h3e71965a9df2bb6fE()
          to label %bb.y unwind label %bb.n

bb.x:                                             ; preds = %bb.y, %bb.v
  %storemerge2 = phi i32 [ 0, %bb.v ], [ 1, %bb.y ]
  store i32 %storemerge2, ptr %i.d, align 8
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h644e1983762f6813E"(ptr nonnull sret([16 x i8]) align 8 %i.e, ptr nonnull align 8 %i.d)
          to label %bb.z unwind label %bb.n

bb.y:                                             ; preds = %bb.w
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.bh, ptr %i.bi, align 8
  br label %bb.x

bb.z:                                             ; preds = %bb.x
  %i.bj = load i32, ptr %i.e, align 8
  %i.bk = trunc i32 %i.bj to i1
  br i1 %i.bk, label %.invoke, label %bb.aa

.invoke:                                          ; preds = %bb.z, %bb.t
  %.sink11.sroa.phi = phi ptr [ %.sink11.sroa.gep, %bb.t ], [ %.sink11.sroa.gep12, %bb.z ]
  %i.bl = phi ptr [ @21, %bb.t ], [ @20, %bb.z ]
  %i.bm = load ptr, ptr %.sink11.sroa.phi, align 8
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h0b7d96a52496981aE"(ptr sret([16 x i8]) align 8 %0, ptr %i.bm, ptr nonnull align 8 %i.bl)
          to label %bb.ac unwind label %bb.n

bb.aa:                                            ; preds = %bb.z
  %i.bn = load i32, ptr %i.i, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bn, ptr %i.bo, align 4
  store i32 0, ptr %0, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %bb.aa, %bb.g
  ret void

bb.ac:                                            ; preds = %.invoke
  call void @"_ZN4core3ptr63drop_in_place$LT$std..os..unix..net..listener..UnixListener$GT$17hee210c003d067ce7E"(ptr nonnull align 4 %i.i)
  br label %bb.ab

bb.ad:                                            ; preds = %bb.n
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #22
  unreachable

bb.ae:                                            ; preds = %bb.n
  resume { ptr, i32 } %i.av
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3mio3sys4unix3uds9unix_addr17h78ac115461682580E(ptr nofree writeonly sret([116 x i8]) align 4 captures(none) initializes((0, 110), (112, 116)) %0, ptr align 4 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [110 x i8], align 2               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(108) %i.b, i8 0, i64 108, i1 false)
  store i16 1, ptr %i.a, align 2
  %i.c = tail call { ptr, i64 } @_ZN3std2os4unix3net4addr10SocketAddr11as_pathname17h421f6a14114651a9E(ptr align 4 %1) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  %i.f = tail call { ptr, i64 } @_ZN3std4path4Path9as_os_str17h61716d27091023fcE(ptr nonnull align 1 %i.d, i64 %i.e) ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  %i.i = tail call { ptr, i64 } @"_ZN80_$LT$std..ffi..os_str..OsStr$u20$as$u20$std..os..unix..ffi..os_str..OsStrExt$GT$8as_bytes17h936efa1a821e173dE"(ptr align 1 %i.g, i64 %i.h) ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = tail call { ptr, i64 } @"_ZN101_$LT$std..os..unix..net..addr..SocketAddr$u20$as$u20$std..os..net..linux_ext..addr..SocketAddrExt$GT$16as_abstract_name17h4431a153b8735ccfE"(ptr align 4 %1) ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0        ; 2 uses
  %.not22 = icmp ne ptr %i.m, null                ; 3 uses
  %i.n = extractvalue { ptr, i64 } %i.l, 1
  %.sroa.012.0 = select i1 %.not22, ptr %i.m, ptr inttoptr (i64 1 to ptr)
  %.sroa.313.0 = select i1 %.not22, i64 %i.n, i64 0
  %.sroa.0.0 = zext i1 %.not22 to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.6.0 = phi i64 [ %i.k, %bb.b ], [ %.sroa.313.0, %bb.c ] ; 4 uses
  %.sroa.02.0 = phi ptr [ %i.j, %bb.b ], [ %.sroa.012.0, %bb.c ] ; 3 uses
  %.sroa.0.1 = phi i64 [ 0, %bb.b ], [ %.sroa.0.0, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.0.1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %.sroa.02.0, i64 %.sroa.6.0, i1 false)
  %i.q = add i64 %.sroa.6.0, 2                    ; 2 uses
  %.not.i = icmp eq i64 %.sroa.6.0, 0
  %.not2324 = icmp eq ptr %.sroa.02.0, null
  %.not23 = select i1 %.not.i, i1 true, i1 %.not2324
  br i1 %.not23, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i8, ptr %.sroa.02.0, align 1
  %i.s = icmp eq i8 %i.r, 0
  %i.t = add i64 %.sroa.6.0, 3
  %spec.select = select i1 %i.s, i64 %i.q, i64 %i.t
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.018.0 = phi i64 [ %spec.select, %bb.e ], [ %i.q, %bb.d ]
  %i.u = trunc i64 %.sroa.018.0 to i32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(110) %0, ptr noundef nonnull align 2 dereferenceable(110) %i.a, i64 110, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.u, ptr %i.v, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc ptr @_ZN3mio3sys4unix5waker5Waker4wake17ha1be7ed1bf7067e6E(ptr align 4 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 2 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 2 uses
  %i.h = tail call i64 @"_ZN4core3num21_$LT$impl$u20$u64$GT$11to_ne_bytes17h0880fd62bc277b51E"(i64 1)
  store i64 %i.h, ptr %i.g, align 8
  store ptr %0, ptr %i.e, align 8
  %i.i = call { i64, ptr } @"_ZN52_$LT$$RF$std..fs..File$u20$as$u20$std..io..Write$GT$5write17h67386e57384e2d63E"(ptr nonnull align 8 %i.e, ptr nonnull align 1 %i.g, i64 8) ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.i, 1
  store i64 %i.j, ptr %i.f, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  store ptr %i.k, ptr %i.l, align 8
  %i.m = trunc nuw i64 %i.j to i1
  br i1 %i.m, label %bb.b, label %.thread13

bb.b:                                             ; preds = %bb.a
  %i.n = invoke i8 @_ZN3std2io5error5Error4kind17he9ae6f6a46f8b87cE(ptr nonnull align 8 %i.l)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.q
  %.pre = load i64, ptr %i.f, align 8
  %i.o = trunc nuw i64 %.pre to i1
  br i1 %i.o, label %bb.r, label %.thread13

bb.d:                                             ; preds = %bb.l, %.noexc, %bb.g, %bb.q, %bb.p, %bb.n, %bb.e, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.d ], [ %i.ac, %bb.j ]
  invoke void @"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h40f855fc2c90082cE"(ptr nonnull align 8 %i.f) #21
          to label %bb.u unwind label %bb.t

bb.e:                                             ; preds = %bb.b
  store i8 %i.n, ptr %i.d, align 1
  %i.q = invoke zeroext i1 @"_ZN66_$LT$std..io..error..ErrorKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h6ae89803005fa6f8E"(ptr nonnull align 1 %i.d, ptr nonnull align 1 @27)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  br i1 %i.q, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f
  %i.r = load ptr, ptr %i.l, align 8
  br label %.thread13

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.s = invoke i64 @"_ZN4core3num21_$LT$impl$u20$u64$GT$11to_ne_bytes17h0880fd62bc277b51E"(i64 0)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.g
  store i64 %i.s, ptr %i.c, align 8
  %i.t = invoke { i64, ptr } @_ZN3std3sys2fs4unix4File4read17h64ccba347713fb19E(ptr align 4 %0, ptr nonnull align 1 %i.c, i64 8)
          to label %.noexc8 unwind label %bb.d    ; 2 uses

.noexc8:                                          ; preds = %.noexc
  %i.u = extractvalue { i64, ptr } %i.t, 0        ; 2 uses
  %i.v = extractvalue { i64, ptr } %i.t, 1
  store i64 %i.u, ptr %i.b, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr %i.v, ptr %i.w, align 8
  %i.x = trunc nuw i64 %i.u to i1
  br i1 %i.x, label %bb.h, label %bb.n

bb.h:                                             ; preds = %.noexc8
  %i.y = invoke i8 @_ZN3std2io5error5Error4kind17he9ae6f6a46f8b87cE(ptr nonnull align 8 %i.w)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.k
  %i.z = load ptr, ptr %i.w, align 8
  %spec.select6.i = select i1 %i.ad, ptr null, ptr %i.z
  %.pre.i = load i64, ptr %i.b, align 8
  %i.aa = trunc nuw i64 %.pre.i to i1
  %i.ab = and i1 %i.ad, %i.aa
  br i1 %i.ab, label %bb.l, label %bb.n

bb.j:                                             ; preds = %bb.k, %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h40f855fc2c90082cE"(ptr nonnull align 8 %i.b) #21
          to label %.body unwind label %bb.m

bb.k:                                             ; preds = %bb.h
  store i8 %i.y, ptr %i.a, align 1
  %i.ad = invoke zeroext i1 @"_ZN66_$LT$std..io..error..ErrorKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h6ae89803005fa6f8E"(ptr nonnull align 1 %i.a, ptr nonnull align 1 @27)
          to label %bb.i unwind label %bb.j       ; 2 uses

bb.l:                                             ; preds = %bb.i
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h63e7965ea3599b16E"(ptr nonnull align 8 %i.w)
          to label %bb.n unwind label %bb.d

bb.m:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #22
  unreachable

bb.n:                                             ; preds = %bb.i, %.noexc8, %bb.l
  %.sroa.0.09.i = phi ptr [ %spec.select6.i, %bb.i ], [ null, %.noexc8 ], [ null, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.af = invoke ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hd81fcc1386ad573dE"(ptr %.sroa.0.09.i)
          to label %bb.o unwind label %bb.d       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = invoke ptr @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h9feba4a747e2c187E"(ptr nonnull %i.af, ptr nonnull align 8 @28)
          to label %bb.s unwind label %bb.d

bb.q:                                             ; preds = %bb.o
  %i.ah = invoke fastcc ptr @_ZN3mio3sys4unix5waker5Waker4wake17ha1be7ed1bf7067e6E(ptr align 4 %0)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.r:                                             ; preds = %bb.c
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h63e7965ea3599b16E"(ptr nonnull align 8 %i.l)
  br label %.thread13

.thread13:                                        ; preds = %bb.a, %.thread, %bb.c, %bb.r, %bb.s
  %.sroa.0.1 = phi ptr [ %i.ag, %bb.s ], [ %i.ah, %bb.r ], [ %i.ah, %bb.c ], [ %i.r, %.thread ], [ null, %bb.a ]
  ret ptr %.sroa.0.1

bb.s:                                             ; preds = %bb.p
  call void @"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h40f855fc2c90082cE"(ptr nonnull align 8 %i.f)
  br label %.thread13

bb.t:                                             ; preds = %.body
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #22
  unreachable

bb.u:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define ptr @_ZN3mio3sys4unix8selector19stateless_io_source13IoSourceState10deregister17ha5e7517efa707b49E(ptr nofree readnone align 1 captures(none) %0, ptr align 4 %1, i32 %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @_ZN3mio3sys4unix8selector8Selector10deregister17hba0599433ea9cd19E(ptr align 4 %1, i32 %2)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define ptr @_ZN3mio3sys4unix8selector19stateless_io_source13IoSourceState10reregister17hac09cd14b7de2007E(ptr nofree readnone align 1 captures(none) %0, ptr align 4 %1, i64 %2, i8 %3, i32 %4) unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @_ZN3mio3sys4unix8selector8Selector10reregister17h7f4ef47f721bec1dE(ptr align 4 %1, i32 %4, i64 %2, i8 %3)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN3mio3sys4unix8selector19stateless_io_source13IoSourceState5do_io17h012e0e0f7ba05ed9E(ptr nofree readnone align 1 captures(none) %0, ptr align 8 %1, i64 %2, ptr align 4 %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, ptr } @"_ZN63_$LT$mio..sys..unix..pipe..Sender$u20$as$u20$std..io..Write$GT$14write_vectored28_$u7b$$u7b$closure$u7d$$u7d$17h4f1134361637acdbE"(ptr align 8 %1, i64 %2, ptr align 4 %3)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN3mio3sys4unix8selector19stateless_io_source13IoSourceState5do_io17h02d1c94bbfb51d19E(ptr nofree readnone align 1 captures(none) %0, ptr align 1 %1, i64 %2, ptr align 4 %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, ptr } @"_ZN3mio3net3udp9UdpSocket4peek28_$u7b$$u7b$closure$u7d$$u7d$17h26221d38160eb9c9E"(ptr align 1 %1, i64 %2, ptr align 4 %3)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN3mio3sys4unix8selector19stateless_io_source13IoSourceState5do_io17h02d97fece664f36aE(ptr nofree readnone align 1 captures(none) %0, ptr align 1 %1, i64 %2, ptr align 4 %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.a, align 8
  %i.b = call { i64, ptr } @"_ZN62_$LT$$RF$std..net..tcp..TcpStream$u20$as$u20$std..io..Read$GT$4read17h03e4528656aa0bc9E"(ptr nonnull align 8 %i.a, ptr align 1 %1, i64 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN3mio3sys4unix8selector19stateless_io_source13IoSourceState5do_io17h078e165875839eb7E(ptr nofree readnone align 1 captures(none) %0, ptr align 8 %1, i64 %2, ptr align 4 %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.a, align 8
  %i.b = call { i64, ptr } @"_ZN63_$LT$$RF$std..net..tcp..TcpStream$u20$as$u20$std..io..Write$GT$14write_vectored17h84d6ba2e1b3bd529E"(ptr nonnull align 8 %i.a, ptr align 8 %1, i64 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noalias noundef ptr @_ZN3mio3sys4unix8selector19stateless_io_source13IoSourceState5do_io17h09a45c1fc1bba12dE(ptr nofree readnone align 1 captures(none) %0, ptr nofree readnone align 4 captures(none) %1) unnamed_addr #0 {
bb.a:
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN3mio3sys4unix8selector19stateless_io_source13IoSourceState5do_io17h0d48f2592487ec08E(ptr nofree readnone align 1 captures(none) %0, ptr align 1 %1, i64 %2, ptr align 4 %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.a, align 8
  %i.b = call { i64, ptr } @"_ZN76_$LT$$RF$std..os..unix..net..stream..UnixStream$u20$as$u20$std..io..Read$GT$4read17h57b24f1dae9d6e22E"(ptr nonnull align 8 %i.a, ptr align 1 %1, i64 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN3mio3sys4unix8selector19stateless_io_source13IoSourceState5do_io17h12aa1100dc2bd7f3E(ptr nofree readnone align 1 captures(none) %0, ptr align 1 %1, i64 %2, ptr align 4 %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, ptr } @"_ZN3mio3net3udp9UdpSocket4send28_$u7b$$u7b$closure$u7d$$u7d$17h6cc944c8b239b230E"(ptr align 1 %1, i64 %2, ptr align 4 %3)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN3mio3sys4unix8selector19stateless_io_source13IoSourceState5do_io17h1595379f35f4905dE(ptr nofree readnone align 1 captures(none) %0, ptr align 1 %1, i64 %2, ptr align 4 %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, ptr } @"_ZN63_$LT$mio..sys..unix..pipe..Sender$u20$as$u20$std..io..Write$GT$5write28_$u7b$$u7b$closure$u7d$$u7d$17h6d8424934027764eE"(ptr align 1 %1, i64 %2, ptr align 4 %3)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN3mio3sys4unix8selector19stateless_io_source13IoSourceState5do_io17h1855c142ddb9a0daE(ptr nofree readnone align 1 captures(none) %0, ptr align 1 %1, i64 %2, ptr align 4 %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, ptr } @_ZN3std2os4unix3net8datagram12UnixDatagram4send17hbb1dd91f84ec5ab9E(ptr align 4 %3, ptr align 1 %1, i64 %2)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_ZN3mio3sys4unix8selector19stateless_io_source13IoSourceState5do_io17h2a1f872fd013c7a9E(ptr sret([40 x i8]) align 8 %0, ptr nofree readnone align 1 captures(none) %1, ptr align 1 %2, i64 %3, ptr align 4 %4) unnamed_addr #1 {
bb.a:
  tail call void @"_ZN3mio3net3udp9UdpSocket9peek_from28_$u7b$$u7b$closure$u7d$$u7d$17h62ec7a525a9cd436E"(ptr sret([40 x i8]) align 8 %0, ptr align 1 %2, i64 %3, ptr align 4 %4)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN3mio3sys4unix8selector19stateless_io_source13IoSourceState5do_io17h2d4844bac65b589aE(ptr nofree readnone align 1 captures(none) %0, ptr align 8 %1, i64 %2, ptr align 4 %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.a, align 8
  %i.b = call { i64, ptr } @"_ZN77_$LT$$RF$std..os..unix..net..stream..UnixStream$u20$as$u20$std..io..Write$GT$14write_vectored17h145a32dbad4051e3E"(ptr nonnull align 8 %i.a, ptr align 8 %1, i64 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define ptr @_ZN3mio3sys4unix8selector19stateless_io_source13IoSourceState5do_io17h3784e57301b8a1e3E(ptr nofree readnone align 1 captures(none) %0, ptr align 4 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @"_ZN63_$LT$mio..sys..unix..pipe..Sender$u20$as$u20$std..io..Write$GT$5flush28_$u7b$$u7b$closure$u7d$$u7d$17h8ef2109f1c239176E"(ptr align 4 %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define ptr @_ZN3mio3sys4unix8selector19stateless_io_source13IoSourceState5do_io17h3daf26fd15c8caf2E(ptr nofree readnone align 1 captures(none) %0, ptr align 4 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.b = call ptr @"_ZN77_$LT$$RF$std..os..unix..net..stream..UnixStream$u20$as$u20$std..io..Write$GT$5flush17ha1d818b5844cdba5E"(ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN3mio3sys4unix8selector19stateless_io_source13IoSourceState5do_io17h3e387bc15b0502aeE(ptr nofree readnone align 1 captures(none) %0, ptr align 1 %1, i64 %2, ptr align 4 %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.a, align 8
  %i.b = call { i64, ptr } @"_ZN77_$LT$$RF$std..os..unix..net..stream..UnixStream$u20$as$u20$std..io..Write$GT$5write17hf77904f5028c8acaE"(ptr nonnull align 8 %i.a, ptr align 1 %1, i64 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define ptr @_ZN3mio3sys4unix8selector19stateless_io_source13IoSourceState5do_io17h56e3af79e8cdaed9E(ptr nofree readnone align 1 captures(none) %0, ptr align 4 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @"_ZN67_$LT$$RF$mio..sys..unix..pipe..Sender$u20$as$u20$std..io..Write$GT$5flush28_$u7b$$u7b$closure$u7d$$u7d$17h78f66f39c36206fbE"(ptr align 4 %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_ZN3mio3sys4unix8selector19stateless_io_source13IoSourceState5do_io17h571f5fca58f433dfE(ptr sret([40 x i8]) align 8 %0, ptr nofree readnone align 1 captures(none) %1, ptr align 1 %2, i64 %3, ptr align 4 %4) unnamed_addr #1 {
bb.a:
  tail call void @"_ZN3mio3net3udp9UdpSocket9recv_from28_$u7b$$u7b$closure$u7d$$u7d$17hae9b6dd292be9f8dE"(ptr sret([40 x i8]) align 8 %0, ptr align 1 %2, i64 %3, ptr align 4 %4)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN3mio3sys4unix8selector19stateless_io_source13IoSourceState5do_io17h5d901e0a96199635E(ptr nofree readnone align 1 captures(none) %0, ptr align 1 %1, i64 %2, ptr align 4 %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.a, align 8
  %i.b = call { i64, ptr } @"_ZN63_$LT$$RF$std..net..tcp..TcpStream$u20$as$u20$std..io..Write$GT$5write17hae232ca489359d4fE"(ptr nonnull align 8 %i.a, ptr align 1 %1, i64 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.b
}

end_hunk_0
