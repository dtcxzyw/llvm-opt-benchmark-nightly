Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/net_addr?download=true
inline.NumInlined: 117
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4lean26lean_ipv6_addr_to_in6_addrEP11lean_objectP8in6_addr:bb.a
  %.not.i.i.i.5 = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i.5, label %bb.v, label %_ZN4lean10array_ugetEP11lean_objectm.exit.5

bb.v:                                             ; preds = %_ZN4lean10array_ugetEP11lean_objectm.exit.4
  %.val.i.i.i.i.5 = load i32, ptr %i.ay, align 4, !tbaa !13 ; 3 uses
  %i.bb = icmp sgt i32 %.val.i.i.i.i.5, 0
  br i1 %i.bb, label %bb.y, label %bb.w, !prof !14

bb.w:                                             ; preds = %bb.v
  %.not.i.i.i.i.5 = icmp eq i32 %.val.i.i.i.i.5, 0
  br i1 %.not.i.i.i.i.5, label %_ZN4lean10array_ugetEP11lean_objectm.exit.5, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bc = atomicrmw add ptr %i.ay, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean10array_ugetEP11lean_objectm.exit.5

bb.y:                                             ; preds = %bb.v
  %i.bd = add nuw i32 %.val.i.i.i.i.5, 1
  store i32 %i.bd, ptr %i.ay, align 4, !tbaa !13
  br label %_ZN4lean10array_ugetEP11lean_objectm.exit.5

_ZN4lean10array_ugetEP11lean_objectm.exit.5:      ; preds = %bb.y, %bb.x, %bb.w, %_ZN4lean10array_ugetEP11lean_objectm.exit.4
  %i.be = lshr i64 %i.az, 1
  %i.bf = trunc i64 %i.be to i16
  %rev.i.5 = tail call noundef i16 @llvm.bswap.i16(i16 %i.bf)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %rev.i.5, ptr %i.bg, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !11 ; 4 uses
  %i.bj = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bk = and i64 %i.bj, 1
  %.not.i.i.i.6 = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i.6, label %bb.z, label %_ZN4lean10array_ugetEP11lean_objectm.exit.6

bb.z:                                             ; preds = %_ZN4lean10array_ugetEP11lean_objectm.exit.5
  %.val.i.i.i.i.6 = load i32, ptr %i.bi, align 4, !tbaa !13 ; 3 uses
  %i.bl = icmp sgt i32 %.val.i.i.i.i.6, 0
  br i1 %i.bl, label %bb.ac, label %bb.aa, !prof !14

bb.aa:                                            ; preds = %bb.z
  %.not.i.i.i.i.6 = icmp eq i32 %.val.i.i.i.i.6, 0
  br i1 %.not.i.i.i.i.6, label %_ZN4lean10array_ugetEP11lean_objectm.exit.6, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bm = atomicrmw add ptr %i.bi, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean10array_ugetEP11lean_objectm.exit.6

bb.ac:                                            ; preds = %bb.z
  %i.bn = add nuw i32 %.val.i.i.i.i.6, 1
  store i32 %i.bn, ptr %i.bi, align 4, !tbaa !13
  br label %_ZN4lean10array_ugetEP11lean_objectm.exit.6

_ZN4lean10array_ugetEP11lean_objectm.exit.6:      ; preds = %bb.ac, %bb.ab, %bb.aa, %_ZN4lean10array_ugetEP11lean_objectm.exit.5
  %i.bo = lshr i64 %i.bj, 1
  %i.bp = trunc i64 %i.bo to i16
  %rev.i.6 = tail call noundef i16 @llvm.bswap.i16(i16 %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 %rev.i.6, ptr %i.bq, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !11 ; 4 uses
  %i.bt = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bu = and i64 %i.bt, 1
  %.not.i.i.i.7 = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i.i.7, label %bb.ad, label %_ZN4lean10array_ugetEP11lean_objectm.exit.7

bb.ad:                                            ; preds = %_ZN4lean10array_ugetEP11lean_objectm.exit.6
  %.val.i.i.i.i.7 = load i32, ptr %i.bs, align 4, !tbaa !13 ; 3 uses
  %i.bv = icmp sgt i32 %.val.i.i.i.i.7, 0
  br i1 %i.bv, label %bb.ag, label %bb.ae, !prof !14

bb.ae:                                            ; preds = %bb.ad
  %.not.i.i.i.i.7 = icmp eq i32 %.val.i.i.i.i.7, 0
  br i1 %.not.i.i.i.i.7, label %_ZN4lean10array_ugetEP11lean_objectm.exit.7, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bw = atomicrmw add ptr %i.bs, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean10array_ugetEP11lean_objectm.exit.7

bb.ag:                                            ; preds = %bb.ad
  %i.bx = add nuw i32 %.val.i.i.i.i.7, 1
  store i32 %i.bx, ptr %i.bs, align 4, !tbaa !13
  br label %_ZN4lean10array_ugetEP11lean_objectm.exit.7

_ZN4lean10array_ugetEP11lean_objectm.exit.7:      ; preds = %bb.ag, %bb.af, %bb.ae, %_ZN4lean10array_ugetEP11lean_objectm.exit.6
  %i.by = lshr i64 %i.bt, 1
  %i.bz = trunc i64 %i.by to i16
  %rev.i.7 = tail call noundef i16 @llvm.bswap.i16(i16 %i.bz)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 %rev.i.7, ptr %i.ca, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4lean31lean_ip_addr_to_in_addr_storageEP11lean_objectPiPNS_15in_addr_storageE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef captures(none) initializes((0, 4)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 4
  %.val8 = load i32, ptr %i.b, align 4
  %i.c = icmp ult i32 %.val8, 16777216
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4lean25lean_ipv4_addr_to_in_addrEP11lean_objectP7in_addr(ptr noundef %.val, ptr noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4lean26lean_ipv6_addr_to_in6_addrEP11lean_objectP8in6_addr(ptr noundef %.val, ptr noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i32 [ 10, %bb.c ], [ 2, %bb.b ]
  store i32 %storemerge, ptr %1, align 4, !tbaa !15
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4lean17lean_ip_addr_ntopEP11lean_objectPcm(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"union.lean::in_addr_storage", align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !11 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 4
  %.val8.i = load i32, ptr %i.b, align 4
  %i.c = icmp ult i32 %.val8.i, 16777216
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN4lean25lean_ipv4_addr_to_in_addrEP11lean_objectP7in_addr(ptr noundef %.val.i, ptr noundef nonnull %3)
  br label %_ZN4lean31lean_ip_addr_to_in_addr_storageEP11lean_objectPiPNS_15in_addr_storageE.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZN4lean26lean_ipv6_addr_to_in6_addrEP11lean_objectP8in6_addr(ptr noundef %.val.i, ptr noundef nonnull %3)
  br label %_ZN4lean31lean_ip_addr_to_in_addr_storageEP11lean_objectPiPNS_15in_addr_storageE.exit

_ZN4lean31lean_ip_addr_to_in_addr_storageEP11lean_objectPiPNS_15in_addr_storageE.exit: ; preds = %bb.b, %bb.c
  %storemerge.i = phi i32 [ 10, %bb.c ], [ 2, %bb.b ]
  %i.d = call i32 @uv_inet_ntop(i32 noundef %storemerge.i, ptr noundef nonnull %3, ptr noundef %1, i64 noundef %2)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.d, !prof !14

bb.d:                                             ; preds = %_ZN4lean31lean_ip_addr_to_in_addr_storageEP11lean_objectPiPNS_15in_addr_storageE.exit
  call void @_ZN4lean26notify_assertion_violationEPKciS1_(ptr noundef nonnull @.str, i32 noundef 50, ptr noundef nonnull @.str.1)
  %i.e = call ptr @__cxa_allocate_exception(i64 40) #12 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.h, align 8, !tbaa !21
  store i8 0, ptr %i.g, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean19unreachable_reachedE, i64 16), ptr %i.e, align 8, !tbaa !24
  call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN4lean19unreachable_reachedE, ptr nonnull @_ZN4lean9throwableD2Ev) #13
  unreachable

bb.e:                                             ; preds = %_ZN4lean31lean_ip_addr_to_in_addr_storageEP11lean_objectPiPNS_15in_addr_storageE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void
}

declare i32 @uv_inet_ntop(i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN4lean26notify_assertion_violationEPKciS1_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN4lean9throwableD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4lean39lean_socket_address_to_sockaddr_storageEP11lean_objectP16sockaddr_storage(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 128)) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %1, i8 0, i64 128, i1 false)
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val16 = load ptr, ptr %i.a, align 8, !tbaa !11 ; 2 uses
  %i.b = getelementptr i8, ptr %.val16, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !11  ; 2 uses
  %i.c = getelementptr i8, ptr %.val16, i64 16
  %.val18 = load i16, ptr %i.c, align 8, !tbaa !26
  %i.d = getelementptr i8, ptr %0, i64 4
  %.val17 = load i32, ptr %i.d, align 4
  %i.e = icmp ult i32 %.val17, 16777216
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @_ZN4lean25lean_ipv4_addr_to_in_addrEP11lean_objectP7in_addr(ptr noundef %.val, ptr noundef nonnull %i.f)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN4lean26lean_ipv6_addr_to_in6_addrEP11lean_objectP8in6_addr(ptr noundef %.val, ptr noundef nonnull %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ 10, %bb.c ], [ 2, %bb.b ]
  %rev.i = tail call noundef i16 @llvm.bswap.i16(i16 %.val18)
  %2 = zext i16 %rev.i to i32
  %3 = shl nuw i32 %2, 16
  %4 = or disjoint i32 %3, %.sink
  store i32 %4, ptr %1, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN4lean25lean_in_addr_to_ipv4_addrEPK7in_addr(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @lean_alloc_object(i64 noundef 56) ; 9 uses
  store i32 1, ptr %i.a, align 4, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 65535
  %i.e = or disjoint i32 %i.d, -167772160
  store i32 %i.e, ptr %i.b, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 4, ptr %i.g, align 8, !tbaa !27
  %i.h = load i32, ptr %0, align 4, !tbaa !9
  %i.i = tail call noundef i32 @llvm.bswap.i32(i32 %i.h) ; 4 uses
  %i.j = lshr i32 %i.i, 23
  %i.k = or i32 %i.j, 1
  %i.l = zext nneg i32 %i.k to i64
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = tail call noundef ptr @lean_array_push(ptr noundef nonnull %i.a, ptr noundef nonnull %i.m) ; 0 uses
  %i.o = lshr i32 %i.i, 15
  %i.p = and i32 %i.o, 510
  %i.q = or disjoint i32 %i.p, 1
  %i.r = zext nneg i32 %i.q to i64
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = tail call noundef ptr @lean_array_push(ptr noundef nonnull %i.a, ptr noundef nonnull %i.s) ; 0 uses
  %i.u = lshr i32 %i.i, 7
  %i.v = and i32 %i.u, 510
  %i.w = or disjoint i32 %i.v, 1
  %i.x = zext nneg i32 %i.w to i64
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = tail call noundef ptr @lean_array_push(ptr noundef nonnull %i.a, ptr noundef nonnull %i.y) ; 0 uses
  %i.aa = shl i32 %i.i, 1
  %i.ab = and i32 %i.aa, 510
  %i.ac = or disjoint i32 %i.ab, 1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = tail call noundef ptr @lean_array_push(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ae) ; 0 uses
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN4lean26lean_in6_addr_to_ipv6_addrEPK8in6_addr(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @lean_alloc_object(i64 noundef 88) ; 13 uses
  store i32 1, ptr %i.a, align 4, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 65535
  %i.e = or disjoint i32 %i.d, -167772160
  store i32 %i.e, ptr %i.b, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 8, ptr %i.g, align 8, !tbaa !27
  %i.h = load i16, ptr %0, align 1
  %rev.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.h)
  %i.i = zext i16 %rev.i to i64
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = or disjoint i64 %i.j, 1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = tail call noundef ptr @lean_array_push(ptr noundef nonnull %i.a, ptr noundef nonnull %i.l) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.o = load i16, ptr %i.n, align 1
  %rev.i.1 = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %i.p = zext i16 %rev.i.1 to i64
  %i.q = shl nuw nsw i64 %i.p, 1
  %i.r = or disjoint i64 %i.q, 1
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = tail call noundef ptr @lean_array_push(ptr noundef nonnull %i.a, ptr noundef nonnull %i.s) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = load i16, ptr %i.u, align 1
  %rev.i.2 = tail call noundef i16 @llvm.bswap.i16(i16 %i.v)
  %i.w = zext i16 %rev.i.2 to i64
  %i.x = shl nuw nsw i64 %i.w, 1
  %i.y = or disjoint i64 %i.x, 1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = tail call noundef ptr @lean_array_push(ptr noundef nonnull %i.a, ptr noundef nonnull %i.z) ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ac = load i16, ptr %i.ab, align 1
  %rev.i.3 = tail call noundef i16 @llvm.bswap.i16(i16 %i.ac)
  %i.ad = zext i16 %rev.i.3 to i64
  %i.ae = shl nuw nsw i64 %i.ad, 1
  %i.af = or disjoint i64 %i.ae, 1
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = tail call noundef ptr @lean_array_push(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ag) ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i16, ptr %i.ai, align 1
  %rev.i.4 = tail call noundef i16 @llvm.bswap.i16(i16 %i.aj)
  %i.ak = zext i16 %rev.i.4 to i64
  %i.al = shl nuw nsw i64 %i.ak, 1
  %i.am = or disjoint i64 %i.al, 1
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = tail call noundef ptr @lean_array_push(ptr noundef nonnull %i.a, ptr noundef nonnull %i.an) ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.aq = load i16, ptr %i.ap, align 1
  %rev.i.5 = tail call noundef i16 @llvm.bswap.i16(i16 %i.aq)
  %i.ar = zext i16 %rev.i.5 to i64
  %i.as = shl nuw nsw i64 %i.ar, 1
  %i.at = or disjoint i64 %i.as, 1
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = tail call noundef ptr @lean_array_push(ptr noundef nonnull %i.a, ptr noundef nonnull %i.au) ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ax = load i16, ptr %i.aw, align 1
  %rev.i.6 = tail call noundef i16 @llvm.bswap.i16(i16 %i.ax)
  %i.ay = zext i16 %rev.i.6 to i64
  %i.az = shl nuw nsw i64 %i.ay, 1
  %i.ba = or disjoint i64 %i.az, 1
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = tail call noundef ptr @lean_array_push(ptr noundef nonnull %i.a, ptr noundef nonnull %i.bb) ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.be = load i16, ptr %i.bd, align 1
  %rev.i.7 = tail call noundef i16 @llvm.bswap.i16(i16 %i.be)
  %i.bf = zext i16 %rev.i.7 to i64
  %i.bg = shl nuw nsw i64 %i.bf, 1
  %i.bh = or disjoint i64 %i.bg, 1
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = tail call noundef ptr @lean_array_push(ptr noundef nonnull %i.a, ptr noundef nonnull %i.bi) ; 0 uses
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN4lean26lean_phys_addr_to_mac_addrEPc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @lean_alloc_object(i64 noundef 72) ; 11 uses
  store i32 1, ptr %i.a, align 4, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 65535
  %i.e = or disjoint i32 %i.d, -167772160
  store i32 %i.e, ptr %i.b, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 6, ptr %i.g, align 8, !tbaa !27
  %i.h = load i8, ptr %0, align 1, !tbaa !22
  %i.i = zext i8 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = or disjoint i64 %i.j, 1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = tail call noundef ptr @lean_array_push(ptr noundef nonnull %i.a, ptr noundef nonnull %i.l) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !22
  %i.p = zext i8 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 1
  %i.r = or disjoint i64 %i.q, 1
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = tail call noundef ptr @lean_array_push(ptr noundef nonnull %i.a, ptr noundef nonnull %i.s) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !22
  %i.w = zext i8 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 1
  %i.y = or disjoint i64 %i.x, 1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = tail call noundef ptr @lean_array_push(ptr noundef nonnull %i.a, ptr noundef nonnull %i.z) ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !22
  %i.ad = zext i8 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 1
  %i.af = or disjoint i64 %i.ae, 1
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = tail call noundef ptr @lean_array_push(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ag) ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !22
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 1
  %i.am = or disjoint i64 %i.al, 1
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = tail call noundef ptr @lean_array_push(ptr noundef nonnull %i.a, ptr noundef nonnull %i.an) ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !22
  %i.ar = zext i8 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 1
  %i.at = or disjoint i64 %i.as, 1
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = tail call noundef ptr @lean_array_push(ptr noundef nonnull %i.a, ptr noundef nonnull %i.au) ; 0 uses
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noalias noundef nonnull ptr @_ZN4lean21lean_mk_socketaddressEP11lean_objectt(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  tail call void @lean_inc_heartbeat()
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #12 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZL15lean_alloc_ctorjjj.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #13
  unreachable

_ZL15lean_alloc_ctorjjj.exit:                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
end_hunk_0
