Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/AsyncUDPSocket?download=true
inline.NumInlined: 1647
inline.NumDeleted: 873
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5folly14AsyncUDPSocket9writeImplENS_5RangeIPKNS_13SocketAddressEEEPmP5iovecmP7mmsghdrPKNS0_12WriteOptionsEPc:bb.a

_ZN5folly12small_vectorINS_14AsyncUDPSocket21full_sockaddr_storageELm1EvED2Ev.exit: ; preds = %bb.f, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  ret i32 %i.ai

bb.j:                                             ; preds = %._crit_edge
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.e, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.ar, %bb.j ], [ %i.x, %bb.e ], [ %i.w, %bb.d ]
  call void @_ZN5folly12small_vectorINS_14AsyncUDPSocket21full_sockaddr_storageELm1EvED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5folly14AsyncUDPSocket10writevImplEPNS_6netops9MsgheaderENS0_12WriteOptionsE(ptr noundef nonnull align 16 dereferenceable(800) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %.sroa.064.0.extract.trunc = trunc i64 %2 to i32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !7432 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !106  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi ptr [ null, %bb.a ], [ %i.o, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !106 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %._crit_edge76, label %.lr.ph75

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.071 = phi ptr [ %i.o, %bb.c ], [ null, %bb.a ]
  %.sroa.060.070 = phi ptr [ %i.r, %bb.c ], [ %i.d, %bb.a ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.060.070, i64 32
  %i.l = load <2 x i32>, ptr %i.k, align 4, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.060.070, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !107
  tail call void @_ZN5folly6netops9Msgheader11incrCmsgLenEm(ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef 4)
  %i.o = tail call noundef ptr @_ZN5folly6netops9Msgheader24getFirstOrNextCmsgHeaderEP7cmsghdr(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %.071) ; 6 uses
  %.not53 = icmp eq ptr %i.o, null
  br i1 %.not53, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store <2 x i32> %i.l, ptr %i.p, align 8, !tbaa !43
  store i64 20, ptr %i.o, align 8, !tbaa !7421
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i32 %i.n, ptr %i.q, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.r = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.060.070) #40 ; 2 uses
  %i.s = load ptr, ptr %i.a, align 16, !tbaa !7432
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %._crit_edge, label %.lr.ph, !llvm.loop !7491

._crit_edge76:                                    ; preds = %bb.e, %._crit_edge
  %.1.lcssa = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.y, %bb.e ] ; 2 uses
  %i.v = icmp sgt i32 %.sroa.064.0.extract.trunc, 0
  br i1 %i.v, label %bb.f, label %bb.h

.lr.ph75:                                         ; preds = %._crit_edge, %bb.e
  %.173 = phi ptr [ %i.y, %bb.e ], [ %.0.lcssa, %._crit_edge ]
  %.sroa.056.072 = phi ptr [ %i.al, %bb.e ], [ %i.h, %._crit_edge ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.056.072, i64 56 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !41
  tail call void @_ZN5folly6netops9Msgheader11incrCmsgLenEm(ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.x)
  %i.y = tail call noundef ptr @_ZN5folly6netops9Msgheader24getFirstOrNextCmsgHeaderEP7cmsghdr(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %.173) ; 7 uses
  %.not52 = icmp eq ptr %i.y, null
  br i1 %.not52, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph75
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.056.072, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.056.072, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !112
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !43
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.056.072, i64 36
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7492
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !43
  %i.ag = load i64, ptr %i.w, align 8, !tbaa !41
  %i.ah = add i64 %i.ag, 16
  store i64 %i.ah, ptr %i.y, align 8, !tbaa !7421
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !40
  %i.ak = load i64, ptr %i.w, align 8, !tbaa !41
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr align 1 %i.aj, i64 %i.ak, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph75
  %i.al = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.056.072) #40 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.i
  br i1 %i.am, label %._crit_edge76, label %.lr.ph75

bb.f:                                             ; preds = %._crit_edge76
  tail call void @_ZN5folly6netops9Msgheader11incrCmsgLenEm(ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef 2)
  %i.an = tail call noundef ptr @_ZN5folly6netops9Msgheader24getFirstOrNextCmsgHeaderEP7cmsghdr(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %.1.lcssa) ; 6 uses
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 17, ptr %i.ao, align 8, !tbaa !43
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 103, ptr %i.ap, align 4, !tbaa !43
  store i64 18, ptr %i.an, align 8, !tbaa !7421
  %i.aq = trunc i64 %2 to i16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i16 %i.aq, ptr %i.ar, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %._crit_edge76
  %.2 = phi ptr [ %i.an, %bb.g ], [ null, %bb.f ], [ %.1.lcssa, %._crit_edge76 ]
  %i.as = icmp sgt i64 %3, 0
  br i1 %i.as, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 2 uses
  %i.av = load i8, ptr %i.au, align 4, !tbaa !7422, !range !37, !noundef !38
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZNR5folly8OptionalINS_14AsyncUDPSocket6TXTimeEE5valueEv.exit, label %bb.m

_ZNR5folly8OptionalINS_14AsyncUDPSocket6TXTimeEE5valueEv.exit: ; preds = %bb.i
  %i.ax = load i32, ptr %i.at, align 4, !tbaa !7423
  %i.ay = icmp sgt i32 %i.ax, -1
  br i1 %i.ay, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZNR5folly8OptionalINS_14AsyncUDPSocket6TXTimeEE5valueEv.exit
  %i.az = tail call noundef ptr @_ZN5folly6netops9Msgheader24getFirstOrNextCmsgHeaderEP7cmsghdr(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %.2) ; 5 uses
  %.not51 = icmp eq ptr %i.az, null
  br i1 %.not51, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i32 1, ptr %i.ba, align 8, !tbaa !43
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 61, ptr %i.bb, align 4, !tbaa !43
  store i64 24, ptr %i.az, align 8, !tbaa !7421
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.bc = load i8, ptr %i.au, align 4, !tbaa !7422, !range !37, !noundef !38
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %_ZNR5folly8OptionalINS_14AsyncUDPSocket6TXTimeEE5valueEv.exit54, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN5folly6detail16throw_exception_INS_22OptionalEmptyExceptionEJEEEvDpT0_() #11
  unreachable

_ZNR5folly8OptionalINS_14AsyncUDPSocket6TXTimeEE5valueEv.exit54: ; preds = %bb.k
  %i.be = load i32, ptr %i.at, align 4, !tbaa !7423
  %i.bf = call i32 @clock_gettime(i32 noundef %i.be, ptr noundef nonnull %4) #34 ; 0 uses
  %i.bg = load i64, ptr %4, align 8, !tbaa !7425
  %i.bh = mul i64 %i.bg, 1000000000
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !7427
  %i.bk = mul nuw nsw i64 %3, 1000
  %i.bl = add i64 %i.bj, %i.bk
  %i.bm = add i64 %i.bl, %i.bh
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %i.bm, ptr %i.bn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %_ZNR5folly8OptionalINS_14AsyncUDPSocket6TXTimeEE5valueEv.exit54, %_ZNR5folly8OptionalINS_14AsyncUDPSocket6TXTimeEE5valueEv.exit, %bb.i, %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.sroa.0.0.copyload = load i32, ptr %i.bo, align 8, !tbaa !43
  %i.bp = call noundef ptr @_ZN5folly6netops9Msgheader6getMsgEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.bq = load ptr, ptr %0, align 16, !tbaa !22
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 376
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call noundef i64 %i.bs(ptr noundef nonnull align 16 dereferenceable(800) %0, i32 %.sroa.0.0.copyload, ptr noundef %i.bp, i32 noundef 0), !call_target !7041
  ret i64 %i.bt
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5folly14AsyncUDPSocket7fromMsgERNS0_12ReadCallback21OnDataAvailableParamsER6msghdr(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(65) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7420
  %i.c = icmp ult i64 %i.b, 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not2325 = icmp eq ptr %i.e, null
  %.not23 = select i1 %i.c, i1 true, i1 %.not2325
  br i1 %.not23, label %select.unfold._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.promoted = load i8, ptr %i.h, align 8
  br label %bb.b

bb.b:                                             ; preds = %__cmsg_nxthdr.exit, %.lr.ph
  %2 = phi i8 [ %.promoted, %.lr.ph ], [ %3, %__cmsg_nxthdr.exit ] ; 8 uses
  %.024 = phi ptr [ %i.e, %.lr.ph ], [ %i.as, %__cmsg_nxthdr.exit ] ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.024, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !43
  switch i32 %i.j, label %.thread [
    i32 17, label %bb.c
    i32 1, label %bb.e
    i32 0, label %bb.h
    i32 41, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.024, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !43
  %i.m = icmp eq i32 %i.l, 104
  br i1 %i.m, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.024, i64 16
  %i.o = load i16, ptr %i.n, align 8, !tbaa !7493
  %i.p = zext i16 %i.o to i32
  store i32 %i.p, ptr %0, align 8, !tbaa !7494
  br label %.thread

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.024, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !43
  switch i32 %i.r, label %.thread [
    i32 37, label %bb.f
    i32 35, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.024, i64 16
  %i.t = trunc nuw i8 %2 to i1
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.s, i64 48, i1 false)
  br i1 %i.t, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.h, align 8, !tbaa !7498
  br label %.thread

bb.h:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.024, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !43
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.j, label %.thread

bb.i:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %.024, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !43
  %i.z = icmp eq i32 %i.y, 67
  br i1 %i.z, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %.024, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !42
  store i8 %i.ab, ptr %i.f, align 8, !tbaa !7499
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.f, %bb.b, %bb.h, %bb.e, %bb.d, %bb.c, %bb.i, %bb.j
  %3 = phi i8 [ %2, %bb.b ], [ %2, %bb.h ], [ %2, %bb.e ], [ %2, %bb.d ], [ %2, %bb.c ], [ %2, %bb.i ], [ %2, %bb.j ], [ 1, %bb.f ], [ 1, %bb.g ]
  %i.ac = load i64, ptr %.024, align 8, !tbaa !7421 ; 4 uses
  %i.ad = icmp ult i64 %i.ac, 16
  br i1 %i.ad, label %select.unfold._crit_edge, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.ae = sub i64 0, %i.ac
  %i.af = and i64 %i.ae, 7
  %i.ag = or disjoint i64 %i.af, 16               ; 2 uses
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !7419
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !7420
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %.024 to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.ag
  %i.ao = sub nuw i64 %i.am, %i.ag
  %i.ap = icmp ult i64 %i.ao, %i.ac
  %or.cond.i = select i1 %i.an, i1 true, i1 %i.ap
  br i1 %or.cond.i, label %select.unfold._crit_edge, label %__cmsg_nxthdr.exit

__cmsg_nxthdr.exit:                               ; preds = %bb.k
  %i.aq = add nuw i64 %i.ac, 7
  %i.ar = and i64 %i.aq, -8
  %i.as = getelementptr inbounds nuw i8, ptr %.024, i64 %i.ar
  br label %bb.b, !llvm.loop !7500

select.unfold._crit_edge:                         ; preds = %bb.k, %.thread, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define void @_ZN5folly14AsyncUDPSocketC2EPNS_9EventBaseE(ptr noundef nonnull align 16 dereferenceable(800) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.folly::SocketAddress::IPAddr", align 4 ; 5 uses
  %3 = alloca %"struct.folly::SocketAddress::IPAddr", align 4 ; 5 uses
  %4 = alloca %"struct.folly::SocketAddress::IPAddr", align 4 ; 5 uses
  tail call void @_ZN5folly12EventHandlerC2EPNS_9EventBaseENS_13NetworkSocketE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, i32 -1)
  store ptr getelementptr inbounds nuw inrange(-16, 416) (i8, ptr @_ZTVN5folly14AsyncUDPSocketE, i64 16), ptr %0, align 16, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i16 1, ptr %i.a, align 8, !tbaa !7501
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr null, ptr %i.b, align 16, !tbaa !7433
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %1, ptr %i.c, align 8, !tbaa !7456
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  invoke void @_ZN5folly9IPAddressC1Ev(ptr noundef nonnull align 4 dereferenceable(26) %4)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i16 0, ptr %i.e, align 4, !tbaa !7502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.d, ptr noundef nonnull align 4 dereferenceable(28) %4, i64 28, i1 false), !tbaa.struct !7504
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  store i8 0, ptr %i.f, align 16, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 -1, ptr %i.g, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  invoke void @_ZN5folly9IPAddressC1Ev(ptr noundef nonnull align 4 dereferenceable(26) %3)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i16 0, ptr %i.i, align 4, !tbaa !7502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.h, ptr noundef nonnull align 4 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !7504
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  store i8 0, ptr %i.j, align 16, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  invoke void @_ZN5folly9IPAddressC1Ev(ptr noundef nonnull align 4 dereferenceable(26) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i16 0, ptr %i.l, align 4, !tbaa !7502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !7504
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i8 0, ptr %i.m, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i8 0, ptr %i.p, align 8, !tbaa !7505
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 364
  store i8 0, ptr %i.q, align 4, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i8 0, ptr %i.r, align 16, !tbaa !7505
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 372
  store i8 0, ptr %i.s, align 4, !tbaa !42
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 380
  store i8 0, ptr %i.t, align 4, !tbaa !7506
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i8 0, ptr %i.u, align 16, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 388
  store i8 0, ptr %i.v, align 4, !tbaa !7505
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr null, ptr %i.w, align 8, !tbaa !7455
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i8 0, ptr %i.x, align 16, !tbaa !7411
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 401
  store i8 0, ptr %i.y, align 1, !tbaa !7507
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 480
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %i.n, i8 0, i64 6, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.o, i8 0, i64 13, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.z, i8 0, i64 20, i1 false)
  store ptr %i.ab, ptr %i.aa, align 16, !tbaa !7508
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 1, ptr %i.ac, align 8, !tbaa !7509
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 464
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ae, align 16, !tbaa !7510
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 496
  store ptr null, ptr %i.ag, align 16, !tbaa !42
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvOSt10unique_ptrINS_5IOBufESt14default_deleteIS4_EEEE10uninitCallES8_RNS1_4DataE, ptr %i.ah, align 16, !tbaa !7430
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 552
  store ptr null, ptr %i.ai, align 8, !tbaa !7429
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  store i32 0, ptr %i.ak, align 8, !tbaa !7511
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 576
  store ptr null, ptr %i.al, align 16, !tbaa !111
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 584
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !106
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr %i.ak, ptr %i.an, align 16, !tbaa !124
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 600
  store i64 0, ptr %i.ao, align 8, !tbaa !125
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !7511
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 624
  store ptr null, ptr %i.aq, align 16, !tbaa !111
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 632
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !106
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 640
  store ptr %i.ap, ptr %i.as, align 16, !tbaa !124
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i64 0, ptr %i.at, align 8, !tbaa !125
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 656
  store ptr %i.aj, ptr %i.au, align 16, !tbaa !7432
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 3 uses
  store i32 0, ptr %i.av, align 16, !tbaa !7511
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 680
  store ptr null, ptr %i.aw, align 8, !tbaa !111
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 688
  store ptr %i.av, ptr %i.ax, align 16, !tbaa !106
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 696
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !124
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 704
  store i64 0, ptr %i.az, align 16, !tbaa !125
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 720
  store ptr null, ptr %i.ba, align 16, !tbaa !42
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 768
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFNS_8OptionalISt3mapINS_15SocketOptionKeyEiSt4lessIS5_ESaISt4pairIKS5_iEEEEEvEE10uninitCallERNS1_4DataE, ptr %i.bb, align 16, !tbaa !123
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 776
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  ret void

bb.e:                                             ; preds = %bb.a
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly13SocketAddressD2Ev.exit12

bb.f:                                             ; preds = %bb.b
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly13SocketAddressD2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bg = load i8, ptr %i.j, align 16, !tbaa !19
  %cond.i.i = icmp eq i8 %i.bg, 1
  br i1 %cond.i.i, label %bb.h, label %_ZN5folly13SocketAddressD2Ev.exit, !prof !7512

bb.h:                                             ; preds = %bb.g
  %i.bh = load ptr, ptr %i.h, align 16, !tbaa !7513 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZN5folly13SocketAddressD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef 110) #35
  br label %_ZN5folly13SocketAddressD2Ev.exit
end_hunk_0
begin_hunk_1_@_ZN5folly14AsyncUDPSocket10handleReadEv:bb.a
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 16 dereferenceable(800) %0) #34, !call_target !7622
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.t = load i16, ptr %i.s, align 8, !tbaa !7501 ; 2 uses
  %.not27 = icmp eq i16 %i.t, 0
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !7456
  %spec.select = select i1 %.not27, i64 -1, i64 %i.u ; 2 uses
  %.not2852 = icmp eq i64 %spec.select, 0
  br i1 %.not2852, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 341
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %.sroa.8.8..sroa_idx46 = getelementptr inbounds nuw i8, ptr %8, i64 9
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %select.unfold
  %.in = phi i64 [ %spec.select, %.lr.ph ], [ %i.ap, %select.unfold ]
  %i.ap = add i64 %.in, -1                        ; 2 uses
  %i.aq = load ptr, ptr %i.i, align 16, !tbaa !7433 ; 3 uses
  %.not29 = icmp eq ptr %i.aq, null
  br i1 %.not29, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.v, align 8, !tbaa !7456
  %i.as = icmp eq ptr %i.ar, %i.w
  br i1 %i.as, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !22
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #34, !call_target !7625
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !7458 ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  %i.ax = load i64, ptr %i.b, align 8             ; 3 uses
  %i.ay = icmp eq i64 %i.ax, 0
  %or.cond = select i1 %i.aw, i1 true, i1 %i.ay
  br i1 %or.cond, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.70, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.k unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5folly20AsyncSocketExceptionC2ENS0_24AsyncSocketExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 0)
          to label %bb.l unwind label %.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  %i.az = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !42
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.be = load ptr, ptr %i.i, align 16, !tbaa !7433 ; 2 uses
  store ptr null, ptr %i.i, align 16, !tbaa !7433
  %i.bf = call noundef zeroext i1 @_ZN5folly14AsyncUDPSocket18updateRegistrationEv(ptr noundef nonnull align 16 dereferenceable(800) %0) #34 ; 0 uses
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !22
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %2) #34, !call_target !7440
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %.critedge

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  store i32 128, ptr %i.c, align 4, !tbaa !43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %5, i8 0, i64 128, i1 false)
  %i.bj = load i8, ptr %i.x, align 16, !tbaa !19
  switch i8 %i.bj, label %.invoke.loopexit69 [
    i8 1, label %_ZNK5folly13SocketAddress9getFamilyEv.exit
    i8 0, label %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit.i
    i8 -1, label %.invoke
  ], !prof !21

.invoke.loopexit69:                               ; preds = %bb.m
  br label %.invoke

.invoke:                                          ; preds = %bb.m, %.invoke.loopexit69
  %.str.19.sink = phi ptr [ @.str.20, %.invoke.loopexit69 ], [ @.str.19, %bb.m ]
  %i.bk = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.bk, align 8, !tbaa !22
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %.str.19.sink, ptr %i.bl, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.bk, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #37
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %bb.m
  %i.bm = load i16, ptr %i.y, align 4, !tbaa !28
  br label %_ZNK5folly13SocketAddress9getFamilyEv.exit

_ZNK5folly13SocketAddress9getFamilyEv.exit:       ; preds = %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit.i, %bb.m
  %.0.i = phi i16 [ %i.bm, %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ 1, %bb.m ]
  store i16 %.0.i, ptr %5, align 8, !tbaa !7629
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.bn = load i8, ptr %i.z, align 16, !tbaa !7457, !range !37, !noundef !38
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %_ZNR5folly8OptionalIiE5valueEv.exit, label %bb.n

_ZNR5folly8OptionalIiE5valueEv.exit:              ; preds = %_ZNK5folly13SocketAddress9getFamilyEv.exit
  %i.bp = load i32, ptr %i.aa, align 4, !tbaa !43
  %i.bq = icmp sgt i32 %i.bp, 0
  br label %bb.n

bb.n:                                             ; preds = %_ZNR5folly8OptionalIiE5valueEv.exit, %_ZNK5folly13SocketAddress9getFamilyEv.exit
  %i.br = phi i1 [ false, %_ZNK5folly13SocketAddress9getFamilyEv.exit ], [ %i.bq, %_ZNR5folly8OptionalIiE5valueEv.exit ]
  %i.bs = load i8, ptr %i.ab, align 4, !tbaa !7457, !range !37, !noundef !38
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %_ZNR5folly8OptionalIiE5valueEv.exit35, label %bb.o

_ZNR5folly8OptionalIiE5valueEv.exit35:            ; preds = %bb.n
  %i.bu = load i32, ptr %i.ac, align 16, !tbaa !43
  %i.bv = icmp sgt i32 %i.bu, 0
  br label %bb.o

bb.o:                                             ; preds = %_ZNR5folly8OptionalIiE5valueEv.exit35, %bb.n
  %i.bw = phi i1 [ false, %bb.n ], [ %i.bv, %_ZNR5folly8OptionalIiE5valueEv.exit35 ]
  %or.cond3 = select i1 %i.br, i1 true, i1 %i.bw
  br i1 %or.cond3, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = load i8, ptr %i.ad, align 1, !tbaa !7449, !range !37, !noundef !38
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.q, label %bb.ab

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.d, i8 0, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  store ptr %i.av, ptr %7, align 8, !tbaa !7407
  store i64 %i.ax, ptr %i.ae, align 8, !tbaa !7410
  store ptr %7, ptr %i.af, align 8, !tbaa !7417
  store i64 1, ptr %i.ag, align 8, !tbaa !7418
  store ptr %5, ptr %6, align 8, !tbaa !7413
  store i32 128, ptr %i.ah, align 8, !tbaa !7416
  store ptr %i.d, ptr %i.ai, align 8, !tbaa !7419
  store i64 112, ptr %i.aj, align 8, !tbaa !7420
  %.sroa.04.0.copyload = load i32, ptr %i.f, align 8, !tbaa !43
  %i.bz = invoke noundef i64 @_ZN5folly6netops7recvmsgENS_13NetworkSocketEP6msghdri(i32 %.sroa.04.0.copyload, ptr noundef nonnull %6, i32 noundef 32)
          to label %bb.r unwind label %.loopexit  ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.ca = icmp sgt i64 %i.bz, -1
  br i1 %i.ca, label %bb.s, label %_ZN5folly14AsyncUDPSocket7fromMsgERNS0_12ReadCallback21OnDataAvailableParamsER6msghdr.exit

bb.s:                                             ; preds = %bb.r
  %i.cb = load i32, ptr %i.ah, align 8, !tbaa !7416
  store i32 %i.cb, ptr %i.c, align 4, !tbaa !43
  %i.cc = load i64, ptr %i.aj, align 8, !tbaa !7420 ; 2 uses
  %i.cd = icmp ult i64 %i.cc, 16
  %i.ce = load ptr, ptr %i.ai, align 8            ; 3 uses
  %.not2325.i = icmp eq ptr %i.ce, null
  %.not23.i = select i1 %i.cd, i1 true, i1 %.not2325.i
  br i1 %.not23.i, label %_ZN5folly14AsyncUDPSocket7fromMsgERNS0_12ReadCallback21OnDataAvailableParamsER6msghdr.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cc
  %i.cg = ptrtoint ptr %i.cf to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %__cmsg_nxthdr.exit.i
  %.sroa.544.2 = phi i8 [ %.sroa.544.3, %__cmsg_nxthdr.exit.i ], [ 0, %.lr.ph.i.preheader ] ; 7 uses
  %.sroa.847.2 = phi i1 [ %.sroa.847.3, %__cmsg_nxthdr.exit.i ], [ false, %.lr.ph.i.preheader ] ; 8 uses
  %.sroa.043.2 = phi i32 [ %.sroa.043.3, %__cmsg_nxthdr.exit.i ], [ -1, %.lr.ph.i.preheader ] ; 7 uses
  %.sroa.1249.2 = phi i8 [ %.sroa.1249.3, %__cmsg_nxthdr.exit.i ], [ 0, %.lr.ph.i.preheader ] ; 7 uses
  %11 = phi i1 [ %12, %__cmsg_nxthdr.exit.i ], [ false, %.lr.ph.i.preheader ] ; 8 uses
  %.024.i = phi ptr [ %i.dm, %__cmsg_nxthdr.exit.i ], [ %i.ce, %.lr.ph.i.preheader ] ; 12 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.024.i, i64 8
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !43
  switch i32 %i.ci, label %.thread.i [
    i32 17, label %bb.t
    i32 1, label %bb.v
    i32 0, label %bb.x
    i32 41, label %bb.y
  ]

bb.t:                                             ; preds = %.lr.ph.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.024.i, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !43
  %i.cl = icmp eq i32 %i.ck, 104
  br i1 %i.cl, label %bb.u, label %.thread.i

bb.u:                                             ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %.024.i, i64 16
  %i.cn = load i16, ptr %i.cm, align 8, !tbaa !7493
  %i.co = zext i16 %i.cn to i32
  br label %.thread.i

bb.v:                                             ; preds = %.lr.ph.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.024.i, i64 12
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !43
  switch i32 %i.cq, label %.thread.i [
    i32 37, label %bb.w
    i32 35, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.cr = getelementptr inbounds nuw i8, ptr %.024.i, i64 16
  %.sroa.544.8.copyload = load i8, ptr %i.cr, align 8
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.024.i, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.8, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.8.8..sroa_idx, i64 47, i1 false)
  %not. = xor i1 %11, true
  %spec.select51 = select i1 %not., i1 true, i1 %.sroa.847.2
  br label %.thread.i

bb.x:                                             ; preds = %.lr.ph.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.024.i, i64 12
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !43
  %i.cu = icmp eq i32 %i.ct, 1
  br i1 %i.cu, label %bb.z, label %.thread.i

bb.y:                                             ; preds = %.lr.ph.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.024.i, i64 12
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !43
  %i.cx = icmp eq i32 %i.cw, 67
  br i1 %i.cx, label %bb.z, label %.thread.i

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %.024.i, i64 16
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !42
  br label %.thread.i

.thread.i:                                        ; preds = %bb.w, %bb.z, %bb.y, %bb.x, %bb.v, %bb.u, %bb.t, %.lr.ph.i
  %.sroa.544.3 = phi i8 [ %.sroa.544.2, %.lr.ph.i ], [ %.sroa.544.2, %bb.u ], [ %.sroa.544.2, %bb.t ], [ %.sroa.544.2, %bb.v ], [ %.sroa.544.8.copyload, %bb.w ], [ %.sroa.544.2, %bb.y ], [ %.sroa.544.2, %bb.z ], [ %.sroa.544.2, %bb.x ] ; 3 uses
  %.sroa.847.3 = phi i1 [ %.sroa.847.2, %.lr.ph.i ], [ %.sroa.847.2, %bb.u ], [ %.sroa.847.2, %bb.t ], [ %.sroa.847.2, %bb.v ], [ %spec.select51, %bb.w ], [ %.sroa.847.2, %bb.y ], [ %.sroa.847.2, %bb.z ], [ %.sroa.847.2, %bb.x ] ; 3 uses
  %.sroa.043.3 = phi i32 [ %.sroa.043.2, %.lr.ph.i ], [ %i.co, %bb.u ], [ %.sroa.043.2, %bb.t ], [ %.sroa.043.2, %bb.v ], [ %.sroa.043.2, %bb.w ], [ %.sroa.043.2, %bb.y ], [ %.sroa.043.2, %bb.z ], [ %.sroa.043.2, %bb.x ] ; 3 uses
  %.sroa.1249.3 = phi i8 [ %.sroa.1249.2, %.lr.ph.i ], [ %.sroa.1249.2, %bb.u ], [ %.sroa.1249.2, %bb.t ], [ %.sroa.1249.2, %bb.v ], [ %.sroa.1249.2, %bb.w ], [ %.sroa.1249.2, %bb.y ], [ %i.cz, %bb.z ], [ %.sroa.1249.2, %bb.x ] ; 3 uses
  %12 = phi i1 [ %11, %.lr.ph.i ], [ %11, %bb.u ], [ %11, %bb.t ], [ %11, %bb.v ], [ true, %bb.w ], [ %11, %bb.y ], [ %11, %bb.z ], [ %11, %bb.x ]
  %i.da = load i64, ptr %.024.i, align 8, !tbaa !7421 ; 4 uses
  %i.db = icmp ult i64 %i.da, 16
  br i1 %i.db, label %_ZN5folly14AsyncUDPSocket7fromMsgERNS0_12ReadCallback21OnDataAvailableParamsER6msghdr.exit, label %bb.aa

bb.aa:                                            ; preds = %.thread.i
  %i.dc = sub i64 0, %i.da
  %i.dd = and i64 %i.dc, 7
  %i.de = or disjoint i64 %i.dd, 16               ; 2 uses
  %i.df = ptrtoint ptr %.024.i to i64
  %i.dg = sub i64 %i.cg, %i.df                    ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.de
  %i.di = sub nuw i64 %i.dg, %i.de
  %i.dj = icmp ult i64 %i.di, %i.da
  %or.cond.i.i = select i1 %i.dh, i1 true, i1 %i.dj
  br i1 %or.cond.i.i, label %_ZN5folly14AsyncUDPSocket7fromMsgERNS0_12ReadCallback21OnDataAvailableParamsER6msghdr.exit, label %__cmsg_nxthdr.exit.i

__cmsg_nxthdr.exit.i:                             ; preds = %bb.aa
  %i.dk = add nuw i64 %i.da, 7
  %i.dl = and i64 %i.dk, -8
  %i.dm = getelementptr inbounds nuw i8, ptr %.024.i, i64 %i.dl
  br label %.lr.ph.i

_ZN5folly14AsyncUDPSocket7fromMsgERNS0_12ReadCallback21OnDataAvailableParamsER6msghdr.exit: ; preds = %bb.aa, %.thread.i, %bb.s, %bb.r
  %.sroa.544.0 = phi i8 [ 0, %bb.r ], [ 0, %bb.s ], [ %.sroa.544.3, %.thread.i ], [ %.sroa.544.3, %bb.aa ]
  %.sroa.847.0 = phi i1 [ false, %bb.r ], [ false, %bb.s ], [ %.sroa.847.3, %.thread.i ], [ %.sroa.847.3, %bb.aa ]
  %.sroa.043.0 = phi i32 [ -1, %bb.r ], [ -1, %bb.s ], [ %.sroa.043.3, %.thread.i ], [ %.sroa.043.3, %bb.aa ]
  %.sroa.1249.0 = phi i8 [ 0, %bb.r ], [ 0, %bb.s ], [ %.sroa.1249.3, %.thread.i ], [ %.sroa.1249.3, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br label %bb.ac

bb.ab:                                            ; preds = %bb.p
  %.sroa.0.0.copyload = load i32, ptr %i.f, align 8, !tbaa !43
  %i.dn = invoke noundef i64 @_ZN5folly6netops8recvfromENS_13NetworkSocketEPvmiP8sockaddrPj(i32 %.sroa.0.0.copyload, ptr noundef nonnull %i.av, i64 noundef %i.ax, i32 noundef 32, ptr noundef nonnull %5, ptr noundef nonnull %i.c)
          to label %bb.ac unwind label %.loopexit

bb.ac:                                            ; preds = %bb.ab, %_ZN5folly14AsyncUDPSocket7fromMsgERNS0_12ReadCallback21OnDataAvailableParamsER6msghdr.exit
  %.sroa.544.1 = phi i8 [ %.sroa.544.0, %_ZN5folly14AsyncUDPSocket7fromMsgERNS0_12ReadCallback21OnDataAvailableParamsER6msghdr.exit ], [ 0, %bb.ab ]
  %.sroa.847.1 = phi i1 [ %.sroa.847.0, %_ZN5folly14AsyncUDPSocket7fromMsgERNS0_12ReadCallback21OnDataAvailableParamsER6msghdr.exit ], [ false, %bb.ab ]
  %.sroa.043.1 = phi i32 [ %.sroa.043.0, %_ZN5folly14AsyncUDPSocket7fromMsgERNS0_12ReadCallback21OnDataAvailableParamsER6msghdr.exit ], [ -1, %bb.ab ]
  %.sroa.1249.1 = phi i8 [ %.sroa.1249.0, %_ZN5folly14AsyncUDPSocket7fromMsgERNS0_12ReadCallback21OnDataAvailableParamsER6msghdr.exit ], [ 0, %bb.ab ]
  %.023 = phi i64 [ %i.bz, %_ZN5folly14AsyncUDPSocket7fromMsgERNS0_12ReadCallback21OnDataAvailableParamsER6msghdr.exit ], [ %i.dn, %bb.ab ] ; 4 uses
  %i.do = icmp sgt i64 %.023, -1
  br i1 %i.do, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.dp = load i32, ptr %i.c, align 4, !tbaa !43
  invoke void @_ZN5folly13SocketAddress15setFromSockaddrEPK8sockaddrj(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull %5, i32 noundef %i.dp)
          to label %bb.ae unwind label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %.not30 = icmp eq i64 %.023, 0
  br i1 %.not30, label %select.unfold, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dq = load i64, ptr %i.b, align 8, !tbaa !7421 ; 2 uses
  %i.dr = icmp ugt i64 %.023, %i.dq
  %spec.select31 = call i64 @llvm.umin.i64(i64 %.023, i64 %i.dq)
  %i.ds = load ptr, ptr %i.i, align 16, !tbaa !7433 ; 2 uses
  store i32 %.sroa.043.1, ptr %8, align 8, !tbaa !7494
  store i8 0, ptr %i.al, align 8, !tbaa !42
  store i8 0, ptr %i.am, align 8, !tbaa !7631
  br i1 %.sroa.847.1, label %_ZNKR5folly8OptionalISt5arrayI8timespecLm3EEE5valueEv.exit.i.i, label %_ZN5folly14AsyncUDPSocket12ReadCallback21OnDataAvailableParamsC2ERKS2_.exit

_ZNKR5folly8OptionalISt5arrayI8timespecLm3EEE5valueEv.exit.i.i: ; preds = %bb.af
  store i8 %.sroa.544.1, ptr %i.al, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.8.8..sroa_idx46, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.8, i64 47, i1 false), !tbaa.struct !7632
  store i8 1, ptr %i.am, align 8, !tbaa !7498
  br label %_ZN5folly14AsyncUDPSocket12ReadCallback21OnDataAvailableParamsC2ERKS2_.exit

_ZN5folly14AsyncUDPSocket12ReadCallback21OnDataAvailableParamsC2ERKS2_.exit: ; preds = %bb.af, %_ZNKR5folly8OptionalISt5arrayI8timespecLm3EEE5valueEv.exit.i.i
  store i8 %.sroa.1249.1, ptr %i.an, align 8, !tbaa !7499
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !22
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, ptr noundef nonnull align 8 dereferenceable(40) %i.ak, i64 noundef %spec.select31, i1 noundef zeroext %i.dr, ptr noundef nonnull align 8 dead_on_return %8) #34, !call_target !7633
  br label %select.unfold

bb.ag:                                            ; preds = %bb.ac
  %i.dw = tail call ptr @__errno_location() #39   ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !43
  %i.dy = icmp eq i32 %i.dx, 11
  br i1 %i.dy, label %.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.dz = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.dz, ptr %10, align 8, !tbaa !39
  %i.ea = invoke noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #38
          to label %.noexc38 unwind label %.loopexit.split-lp ; 3 uses

.noexc38:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.ea, ptr %10, align 8, !tbaa !40
  store i64 19, ptr %i.dz, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.ea, ptr noundef nonnull align 1 dereferenceable(19) @.str.71, i64 19, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 19, ptr %i.eb, align 8, !tbaa !41
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 19
  store i8 0, ptr %i.ec, align 1, !tbaa !42
  %i.ed = load i32, ptr %i.dw, align 4, !tbaa !43 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  invoke void @_ZN5folly20AsyncSocketException10getMessageENS0_24AsyncSocketExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef %i.ed)
          to label %.noexc39 unwind label %.loopexit.split-lp

.noexc39:                                         ; preds = %.noexc38
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %.noexc39
  %i.ee = load ptr, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ah
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !42
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.ai:                                            ; preds = %.noexc39
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = load ptr, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.ai
  %i.en = load i64, ptr %i.el, align 8, !tbaa !42
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly20AsyncSocketExceptionE, i64 16), ptr %9, align 8, !tbaa !22
  %i.ep = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 8, ptr %i.ep, align 8, !tbaa !7434
  %i.eq = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 %i.ed, ptr %i.eq, align 4, !tbaa !7439
  %i.er = load ptr, ptr %10, align 8, !tbaa !40   ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.dz
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.et = load i64, ptr %i.dz, align 8, !tbaa !42
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.ev = load ptr, ptr %i.i, align 16, !tbaa !7433 ; 2 uses
  store ptr null, ptr %i.i, align 16, !tbaa !7433
  %i.ew = invoke noundef zeroext i1 @_ZN5folly12EventHandler12registerImplEtb(ptr noundef nonnull align 16 dereferenceable(800) %0, i16 noundef zeroext 16, i1 noundef zeroext false)
          to label %_ZN5folly14AsyncUDPSocket18updateRegistrationEv.exit unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #36
  unreachable

_ZN5folly14AsyncUDPSocket18updateRegistrationEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.ez = load ptr, ptr %i.ev, align 8, !tbaa !22
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef nonnull align 8 dereferenceable(24) %9) #34, !call_target !7440
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %.thread

.thread:                                          ; preds = %bb.ag, %_ZN5folly14AsyncUDPSocket18updateRegistrationEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %.critedge

select.unfold:                                    ; preds = %_ZN5folly14AsyncUDPSocket12ReadCallback21OnDataAvailableParamsC2ERKS2_.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %.not28 = icmp eq i64 %i.ap, 0
  br i1 %.not28, label %.critedge, label %bb.g, !llvm.loop !7636

.critedge:                                        ; preds = %bb.h, %select.unfold, %bb.g, %bb.f, %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b, %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret void

.loopexit:                                        ; preds = %bb.q, %bb.ab, %bb.ad
  %lpad.loopexit = landingpad { ptr, i32 }
end_hunk_1
