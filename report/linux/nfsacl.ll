Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/nfsacl?download=true
inline.NumInlined: 35
inline.NumDeleted: 21
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@xdr_nfsace_encode:bb.a
bb.e:                                             ; preds = %.split
  %i.ac = getelementptr i8, ptr %i.h, i64 4
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %i.ad)
  br label %bb.f

bb.f:                                             ; preds = %.split, %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink = phi i32 [ %i.v, %bb.b ], [ %i.ae, %bb.e ], [ %i.ab, %bb.d ], [ %i.y, %bb.c ], [ 0, %bb.a ], [ 0, %.split ]
  %i.af = getelementptr i8, ptr %1, i64 4
  store i32 %.sink, ptr %i.af, align 4
  %.0 = getelementptr i8, ptr %1, i64 8
  %i.ag = getelementptr i8, ptr %i.h, i64 2
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = and i16 %i.ah, 7
  %i.aj = zext nneg i16 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.aj, 24
  store i32 %i.ak, ptr %.0, align 4
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @xdr_encode_word(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @posix_acl_init(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @xdr_encode_array2(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i1 @nfs_stream_encode_acl(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 align 16 prefalign(16) {
bb.a:
  %5 = alloca %struct.nfsacl_encode_desc, align 8 ; 15 uses
  %6 = alloca %struct.nfsacl_simple_acl, align 8  ; 9 uses
  %i.a = icmp ne ptr %2, null                     ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %2, i64 4
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @llvm.smax.i32(i32 %i.c, i32 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %i.e = phi i32 [ %i.d, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store i32 12, ptr %5, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.g = icmp ne i32 %3, 0                        ; 2 uses
  %i.h = select i1 %i.g, i32 %i.e, i32 0          ; 2 uses
  store i32 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @xdr_nfsace_encode, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %2, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 %4, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.q = getelementptr i8, ptr %1, i64 24
  %i.r = load i32, ptr %i.q, align 8
  store i32 %i.r, ptr %i.p, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.t = getelementptr i8, ptr %1, i64 28
  %i.u = load i32, ptr %i.t, align 4
  store i32 %i.u, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 0, ptr %i.v, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false), !annotation !10
  %i.w = icmp samesign ugt i32 %i.e, 1024
  br i1 %i.w, label %xdr_stream_encode_u32.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef 4) #9 ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %xdr_stream_encode_u32.exit.thread, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.y = tail call i32 @llvm.bswap.i32(i32 range(i32 0, 1025) %i.e)
  store i32 %i.y, ptr %i.x, align 4
  %or.cond = and i1 %i.a, %i.g
  br i1 %or.cond, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr i8, ptr %2, i64 4
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = icmp eq i32 %i.aa, 3
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @posix_acl_init(ptr noundef nonnull %6, i32 noundef 4) #9
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ad = getelementptr i8, ptr %2, i64 24
  %i.ae = load i64, ptr %i.ad, align 8
  store i64 %i.ae, ptr %i.ac, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ag = getelementptr i8, ptr %2, i64 32
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  store i64 %i.ah, ptr %i.af, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i64 %i.ah, ptr %i.ai, align 8
  store i16 16, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ak = getelementptr i8, ptr %2, i64 40
  %i.al = load i64, ptr %i.ak, align 8
  store i64 %i.al, ptr %i.aj, align 8
  store ptr %6, ptr %i.n, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.am = call i32 @xdr_stream_pos(ptr noundef %0) #9
  %narrow = mul nuw nsw i32 %i.h, 12
  %narrow49 = add nuw nsw i32 %narrow, 4
  %i.an = zext nneg i32 %narrow49 to i64
  %i.ao = call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef %i.an) #9
  %.not42 = icmp eq ptr %i.ao, null
  br i1 %.not42, label %xdr_stream_encode_u32.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call i32 @xdr_encode_array2(ptr noundef %i.aq, i32 noundef %i.am, ptr noundef nonnull %5) #9
  %.not43 = icmp eq i32 %i.ar, 0
  br label %xdr_stream_encode_u32.exit.thread

xdr_stream_encode_u32.exit.thread:                ; preds = %bb.e, %bb.j, %bb.i, %bb.d
  %.0 = phi i1 [ false, %bb.i ], [ false, %bb.d ], [ %.not43, %bb.j ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  ret i1 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @xdr_stream_pos(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @nfsacl_decode(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.nfsacl_decode_desc, align 8 ; 11 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store i32 12, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.not = icmp eq ptr %3, null                    ; 2 uses
  %i.e = select i1 %.not, ptr null, ptr @xdr_nfsace_decode
  store ptr %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !annotation !10
  %i.h = call i32 @xdr_decode_word(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.a) #9
  %i.i = icmp ne i32 %i.h, 0
  %i.j = load i32, ptr %i.a, align 4              ; 2 uses
  %i.k = icmp ugt i32 %i.j, 1024
  %or.cond = select i1 %i.i, i1 true, i1 %i.k
  br i1 %or.cond, label %posix_acl_release.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.j, ptr %i.l, align 8
  %i.m = add i32 %1, 4
  %i.n = call i32 @xdr_decode_array2(ptr noundef %0, i32 noundef %i.m, ptr noundef nonnull %4) #9 ; 2 uses
  %.not16 = icmp eq i32 %i.n, 0
  br i1 %.not16, label %bb.c, label %posix_acl_release.exit

bb.c:                                             ; preds = %bb.b
  br i1 %.not, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.a, align 4
  %i.p = load i32, ptr %i.b, align 4
  %.not17 = icmp eq i32 %i.o, %i.p
  %i.q = load ptr, ptr %i.g, align 8              ; 8 uses
  %.not.i = icmp eq ptr %i.q, null                ; 2 uses
  br i1 %.not17, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i, label %posix_acl_from_nfsacl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %i.q, i64 24       ; 6 uses
  %i.s = getelementptr i8, ptr %i.q, i64 4        ; 3 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = zext i32 %i.t to i64
  call void @sort(ptr noundef %i.r, i64 noundef %i.u, i64 noundef 8, ptr noundef nonnull @cmp_acl_entry, ptr noundef null) #9
  %i.v = load i32, ptr %i.s, align 4              ; 2 uses
  %i.w = zext i32 %i.v to i64                     ; 3 uses
  %i.x = getelementptr [8 x i8], ptr %i.r, i64 %i.w ; 2 uses
  %i.y = icmp ult ptr %i.r, %i.x
  br i1 %i.y, label %.lr.ph.i.preheader, label %posix_acl_from_nfsacl.exit

.lr.ph.i.preheader:                               ; preds = %bb.f
  %5 = add nuw nsw i64 %i.w, 2305843009213693951
  %6 = and i64 %5, 2305843009213693951
  %xtraiter = and i64 %i.w, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %10
  %.033.i.prol = phi ptr [ %.1.i.prol, %10 ], [ null, %.lr.ph.i.preheader ] ; 2 uses
  %.02532.i.prol = phi ptr [ %.126.i.prol, %10 ], [ null, %.lr.ph.i.preheader ] ; 2 uses
  %.02731.i.prol = phi ptr [ %11, %10 ], [ %i.r, %.lr.ph.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %10 ], [ 0, %.lr.ph.i.preheader ]
  %7 = load i16, ptr %.02731.i.prol, align 4
  switch i16 %7, label %10 [
    i16 16, label %9
    i16 4, label %8
  ]

8:                                                ; preds = %.lr.ph.i.prol
  br label %10

9:                                                ; preds = %.lr.ph.i.prol
  br label %10

10:                                               ; preds = %9, %8, %.lr.ph.i.prol
  %.126.i.prol = phi ptr [ %.02532.i.prol, %.lr.ph.i.prol ], [ %.02532.i.prol, %9 ], [ %.02731.i.prol, %8 ] ; 3 uses
  %.1.i.prol = phi ptr [ %.033.i.prol, %.lr.ph.i.prol ], [ %.02731.i.prol, %9 ], [ %.033.i.prol, %8 ] ; 3 uses
  %11 = getelementptr i8, ptr %.02731.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !12

.lr.ph.i.prol.loopexit:                           ; preds = %10, %.lr.ph.i.preheader
  %.033.i.unr = phi ptr [ null, %.lr.ph.i.preheader ], [ %.1.i.prol, %10 ]
  %.02532.i.unr = phi ptr [ null, %.lr.ph.i.preheader ], [ %.126.i.prol, %10 ]
  %.02731.i.unr = phi ptr [ %i.r, %.lr.ph.i.preheader ], [ %11, %10 ]
  %.126.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.126.i.prol, %10 ]
  %.1.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.1.i.prol, %10 ]
  %12 = icmp samesign ult i64 %6, 3
  br i1 %12, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.i
  %.033.i = phi ptr [ %.1.i.a, %bb.i ], [ %.033.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.02532.i = phi ptr [ %.126.i.a, %bb.i ], [ %.02532.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.02731.i = phi ptr [ %i.aa, %bb.i ], [ %.02731.i.unr, %.lr.ph.i.prol.loopexit ] ; 7 uses
  %i.z = load i16, ptr %.02731.i, align 4
  switch i16 %i.z, label %.lr.ph.i.1 [
    i16 16, label %14
    i16 4, label %13
  ]

13:                                               ; preds = %.lr.ph.i
  br label %.lr.ph.i.1

14:                                               ; preds = %.lr.ph.i
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %14, %13, %.lr.ph.i
  %.126.i = phi ptr [ %.02532.i, %.lr.ph.i ], [ %.02532.i, %14 ], [ %.02731.i, %13 ] ; 2 uses
  %.1.i = phi ptr [ %.033.i, %.lr.ph.i ], [ %.02731.i, %14 ], [ %.033.i, %13 ] ; 2 uses
  %15 = getelementptr i8, ptr %.02731.i, i64 8    ; 3 uses
  %16 = load i16, ptr %15, align 4
  switch i16 %16, label %.lr.ph.i.2 [
    i16 16, label %18
    i16 4, label %17
  ]

17:                                               ; preds = %.lr.ph.i.1
  br label %.lr.ph.i.2

18:                                               ; preds = %.lr.ph.i.1
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %18, %17, %.lr.ph.i.1
  %.126.i.1 = phi ptr [ %.126.i, %.lr.ph.i.1 ], [ %.126.i, %18 ], [ %15, %17 ] ; 2 uses
  %.1.i.1 = phi ptr [ %.1.i, %.lr.ph.i.1 ], [ %15, %18 ], [ %.1.i, %17 ] ; 2 uses
  %19 = getelementptr i8, ptr %.02731.i, i64 16   ; 3 uses
  %20 = load i16, ptr %19, align 4
  switch i16 %20, label %.lr.ph.i.3 [
    i16 16, label %22
    i16 4, label %21
  ]

21:                                               ; preds = %.lr.ph.i.2
  br label %.lr.ph.i.3

22:                                               ; preds = %.lr.ph.i.2
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %22, %21, %.lr.ph.i.2
  %.126.i.2 = phi ptr [ %.126.i.1, %.lr.ph.i.2 ], [ %.126.i.1, %22 ], [ %19, %21 ] ; 2 uses
  %.1.i.2 = phi ptr [ %.1.i.1, %.lr.ph.i.2 ], [ %19, %22 ], [ %.1.i.1, %21 ] ; 2 uses
  %23 = getelementptr i8, ptr %.02731.i, i64 24   ; 3 uses
  %24 = load i16, ptr %23, align 4
  switch i16 %24, label %bb.i [
    i16 16, label %bb.h
    i16 4, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph.i.3
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.3
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.lr.ph.i.3
  %.126.i.a = phi ptr [ %.126.i.2, %.lr.ph.i.3 ], [ %.126.i.2, %bb.h ], [ %23, %bb.g ] ; 2 uses
  %.1.i.a = phi ptr [ %.1.i.2, %.lr.ph.i.3 ], [ %23, %bb.h ], [ %.1.i.2, %bb.g ] ; 2 uses
  %i.aa = getelementptr i8, ptr %.02731.i, i64 32 ; 2 uses
  %i.ab = icmp ult ptr %i.aa, %i.x
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !14

._crit_edge.i:                                    ; preds = %bb.i, %.lr.ph.i.prol.loopexit
  %.126.i.lcssa = phi ptr [ %.126.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.126.i.a, %bb.i ] ; 2 uses
  %.1.i.lcssa = phi ptr [ %.1.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.1.i.a, %bb.i ] ; 5 uses
  %i.ac = icmp eq i32 %i.v, 4
  %i.ad = icmp ne ptr %.126.i.lcssa, null
  %or.cond.i = select i1 %i.ac, i1 %i.ad, i1 false
  %i.ae = icmp ne ptr %.1.i.lcssa, null
  %or.cond3.i = select i1 %or.cond.i, i1 %i.ae, i1 false
  br i1 %or.cond3.i, label %bb.j, label %posix_acl_from_nfsacl.exit

bb.j:                                             ; preds = %._crit_edge.i
  %i.af = getelementptr i8, ptr %.1.i.lcssa, i64 2
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = getelementptr i8, ptr %.126.i.lcssa, i64 2
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = icmp eq i16 %i.ag, %i.ai
  br i1 %i.aj, label %bb.k, label %posix_acl_from_nfsacl.exit

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr i8, ptr %.1.i.lcssa, i64 8
  %i.al = ptrtoint ptr %.1.i.lcssa to i64
  %i.am = ptrtoint ptr %i.r to i64
  %.neg.i = add i64 %i.am, 24
  %i.an = sub i64 %.neg.i, %i.al
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %.1.i.lcssa, ptr align 4 %i.ak, i64 %i.an, i1 false)
  store i32 3, ptr %i.s, align 4
  br label %posix_acl_from_nfsacl.exit

posix_acl_from_nfsacl.exit:                       ; preds = %bb.e, %bb.f, %._crit_edge.i, %bb.j, %bb.k
  %i.ao = load ptr, ptr %i.g, align 8
  store ptr %i.ao, ptr %3, align 8
  br label %bb.q

bb.l:                                             ; preds = %bb.d
  br i1 %.not.i, label %posix_acl_release.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.q, i32 -1, ptr nonnull elementtype(i32) %i.q) #8, !srcloc !16 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = icmp slt i32 %i.ap, 1
  br i1 %i.ar, label %bb.o, label %posix_acl_release.exit, !prof !11

bb.o:                                             ; preds = %bb.n
  call void @refcount_warn_saturate(ptr noundef nonnull %i.q, i32 noundef 3) #9
  br label %posix_acl_release.exit

bb.p:                                             ; preds = %bb.m
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !17
  %i.as = getelementptr i8, ptr %i.q, i64 8
  call void @kvfree_call_rcu(ptr noundef %i.as, ptr noundef nonnull %i.q) #9
  br label %posix_acl_release.exit

bb.q:                                             ; preds = %posix_acl_from_nfsacl.exit, %bb.c
  %.not18 = icmp eq ptr %2, null
  br i1 %.not18, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = load i32, ptr %i.a, align 4
  store i32 %i.at, ptr %2, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.au = load i32, ptr %4, align 8
  %i.av = load i32, ptr %i.b, align 4
  %i.aw = mul i32 %i.av, %i.au
  %i.ax = add i32 %i.aw, 8
  br label %posix_acl_release.exit

posix_acl_release.exit:                           ; preds = %bb.p, %bb.o, %bb.n, %bb.l, %bb.b, %bb.a, %bb.s
  %.0 = phi i32 [ %i.ax, %bb.s ], [ -22, %bb.a ], [ %i.n, %bb.b ], [ -22, %bb.l ], [ -22, %bb.n ], [ -22, %bb.o ], [ -22, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @xdr_nfsace_decode(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 24
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp ugt i32 %i.d, 1024
  br i1 %i.e, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @posix_acl_alloc(i32 noundef %i.d, i32 noundef 3264) #9 ; 3 uses
  store ptr %i.f, ptr %i.a, align 8
  %.not26 = icmp eq ptr %i.f, null
  br i1 %.not26, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.g = phi i32 [ %.pre, %._crit_edge ], [ 0, %bb.c ] ; 2 uses
  %i.h = phi ptr [ %i.b, %._crit_edge ], [ %i.f, %bb.c ]
  %i.i = getelementptr i8, ptr %i.h, i64 24
  %i.j = getelementptr i8, ptr %0, i64 24
  %i.k = add i32 %i.g, 1
  store i32 %i.k, ptr %i.j, align 8
  %i.l = zext i32 %i.g to i64
  %i.m = getelementptr [8 x i8], ptr %i.i, i64 %i.l ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 4
  %i.o = load i32, ptr %1, align 4
  %i.p = and i32 %i.o, -1048577
  %i.q = tail call i32 @llvm.bswap.i32(i32 %i.p)  ; 2 uses
  %i.r = trunc i32 %i.q to i16
  store i16 %i.r, ptr %i.m, align 4
  %i.s = getelementptr i8, ptr %1, i64 8
  %i.t = load i32, ptr %i.n, align 4              ; 3 uses
  %i.u = tail call i32 @llvm.bswap.i32(i32 %i.t)  ; 2 uses
  %i.v = load i32, ptr %i.s, align 4
  %i.w = tail call i32 @llvm.bswap.i32(i32 %i.v)
  %i.x = trunc i32 %i.w to i16                    ; 3 uses
  %i.y = getelementptr i8, ptr %i.m, i64 2        ; 2 uses
  store i16 %i.x, ptr %i.y, align 2
  %sext = shl i32 %i.q, 16
  %i.z = ashr exact i32 %sext, 16                 ; 2 uses
  %i.aa = tail call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %i.z)
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %.split, label %bb.j

.split:                                           ; preds = %bb.d
  %i.ac = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.z, i1 true)
  switch i32 %i.ac, label %bb.j [
    i32 1, label %bb.e
    i32 3, label %bb.f
    i32 0, label %bb.g
    i32 2, label %bb.g
    i32 5, label %bb.g
    i32 4, label %bb.h
  ]

bb.e:                                             ; preds = %.split
  %i.ad = getelementptr i8, ptr %i.m, i64 4
  store i32 %i.u, ptr %i.ad, align 4
  %.not28 = icmp eq i32 %i.t, -1
  br i1 %.not28, label %bb.j, label %bb.i

bb.f:                                             ; preds = %.split
  %i.ae = getelementptr i8, ptr %i.m, i64 4
  store i32 %i.u, ptr %i.ae, align 4
  %.not27 = icmp eq i32 %i.t, -1
  br i1 %.not27, label %bb.j, label %bb.i

bb.g:                                             ; preds = %.split, %.split, %.split
  %i.af = icmp ugt i16 %i.x, 7
  br i1 %i.af, label %bb.j, label %bb.i

bb.h:                                             ; preds = %.split
  %i.ag = and i16 %i.x, 7
  store i16 %i.ag, ptr %i.y, align 2
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.h
  br label %bb.j

bb.j:                                             ; preds = %.split, %bb.d, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b, %bb.i
  %.0 = phi i32 [ -22, %bb.g ], [ 0, %bb.i ], [ -12, %bb.c ], [ -22, %bb.e ], [ -22, %bb.f ], [ -22, %bb.b ], [ -22, %bb.d ], [ -22, %.split ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @xdr_decode_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @xdr_decode_array2(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @nfs_stream_decode_acl(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.nfsacl_decode_desc, align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store i32 12, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.not = icmp eq ptr %2, null                    ; 2 uses
  %i.e = select i1 %.not, ptr null, ptr @xdr_nfsace_decode
  store ptr %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.h = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #9 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %posix_acl_release.exit, label %xdr_stream_decode_u32.exit, !prof !11

xdr_stream_decode_u32.exit:                       ; preds = %bb.a
  %i.i = load i32, ptr %i.h, align 4
  %i.j = tail call i32 @llvm.bswap.i32(i32 %i.i)  ; 5 uses
  %i.k = icmp ugt i32 %i.j, 1024
  br i1 %i.k, label %posix_acl_release.exit, label %bb.b

bb.b:                                             ; preds = %xdr_stream_decode_u32.exit
  %i.l = tail call i32 @xdr_stream_pos(ptr noundef %0) #9
  %narrow = mul nuw nsw i32 %i.j, 12
  %narrow27 = add nuw nsw i32 %narrow, 4
  %i.m = zext nneg i32 %narrow27 to i64
  %i.n = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef %i.m) #9
  %.not12 = icmp eq ptr %i.n, null
  br i1 %.not12, label %posix_acl_release.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.j, ptr %i.b, align 8
  %i.o = getelementptr i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call i32 @xdr_decode_array2(ptr noundef %i.p, i32 noundef %i.l, ptr noundef nonnull %3) #9
  %.not13 = icmp eq i32 %i.q, 0
  br i1 %.not13, label %bb.d, label %posix_acl_release.exit

bb.d:                                             ; preds = %bb.c
  br i1 %.not, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i32, ptr %i.a, align 4
  %.not14 = icmp eq i32 %i.j, %i.r
  %i.s = load ptr, ptr %i.g, align 8              ; 8 uses
  %.not.i17 = icmp eq ptr %i.s, null              ; 2 uses
  br i1 %.not14, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  br i1 %.not.i17, label %posix_acl_from_nfsacl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %i.s, i64 24       ; 6 uses
  %i.u = getelementptr i8, ptr %i.s, i64 4        ; 3 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = zext i32 %i.v to i64
  call void @sort(ptr noundef %i.t, i64 noundef %i.w, i64 noundef 8, ptr noundef nonnull @cmp_acl_entry, ptr noundef null) #9
  %i.x = load i32, ptr %i.u, align 4              ; 2 uses
  %i.y = zext i32 %i.x to i64                     ; 3 uses
  %i.z = getelementptr [8 x i8], ptr %i.t, i64 %i.y ; 2 uses
  %i.aa = icmp ult ptr %i.t, %i.z
  br i1 %i.aa, label %.lr.ph.i.preheader, label %posix_acl_from_nfsacl.exit

.lr.ph.i.preheader:                               ; preds = %bb.g
  %4 = add nuw nsw i64 %i.y, 2305843009213693951
  %5 = and i64 %4, 2305843009213693951
  %xtraiter = and i64 %i.y, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %9
  %.033.i.prol = phi ptr [ %.1.i.prol, %9 ], [ null, %.lr.ph.i.preheader ] ; 2 uses
  %.02532.i.prol = phi ptr [ %.126.i.prol, %9 ], [ null, %.lr.ph.i.preheader ] ; 2 uses
  %.02731.i.prol = phi ptr [ %10, %9 ], [ %i.t, %.lr.ph.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %9 ], [ 0, %.lr.ph.i.preheader ]
  %6 = load i16, ptr %.02731.i.prol, align 4
  switch i16 %6, label %9 [
    i16 16, label %8
    i16 4, label %7
  ]

7:                                                ; preds = %.lr.ph.i.prol
  br label %9

8:                                                ; preds = %.lr.ph.i.prol
  br label %9

9:                                                ; preds = %8, %7, %.lr.ph.i.prol
  %.126.i.prol = phi ptr [ %.02532.i.prol, %.lr.ph.i.prol ], [ %.02532.i.prol, %8 ], [ %.02731.i.prol, %7 ] ; 3 uses
  %.1.i.prol = phi ptr [ %.033.i.prol, %.lr.ph.i.prol ], [ %.02731.i.prol, %8 ], [ %.033.i.prol, %7 ] ; 3 uses
  %10 = getelementptr i8, ptr %.02731.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !18

.lr.ph.i.prol.loopexit:                           ; preds = %9, %.lr.ph.i.preheader
  %.033.i.unr = phi ptr [ null, %.lr.ph.i.preheader ], [ %.1.i.prol, %9 ]
  %.02532.i.unr = phi ptr [ null, %.lr.ph.i.preheader ], [ %.126.i.prol, %9 ]
  %.02731.i.unr = phi ptr [ %i.t, %.lr.ph.i.preheader ], [ %10, %9 ]
  %.126.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.126.i.prol, %9 ]
  %.1.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.1.i.prol, %9 ]
  %11 = icmp samesign ult i64 %5, 3
  br i1 %11, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %.033.i = phi ptr [ %.1.i.a, %bb.j ], [ %.033.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.02532.i = phi ptr [ %.126.i.a, %bb.j ], [ %.02532.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.02731.i = phi ptr [ %i.ac, %bb.j ], [ %.02731.i.unr, %.lr.ph.i.prol.loopexit ] ; 7 uses
  %i.ab = load i16, ptr %.02731.i, align 4
  switch i16 %i.ab, label %.lr.ph.i.1 [
    i16 16, label %13
    i16 4, label %12
  ]

12:                                               ; preds = %.lr.ph.i
  br label %.lr.ph.i.1

13:                                               ; preds = %.lr.ph.i
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %13, %12, %.lr.ph.i
  %.126.i = phi ptr [ %.02532.i, %.lr.ph.i ], [ %.02532.i, %13 ], [ %.02731.i, %12 ] ; 2 uses
  %.1.i = phi ptr [ %.033.i, %.lr.ph.i ], [ %.02731.i, %13 ], [ %.033.i, %12 ] ; 2 uses
  %14 = getelementptr i8, ptr %.02731.i, i64 8    ; 3 uses
  %15 = load i16, ptr %14, align 4
  switch i16 %15, label %.lr.ph.i.2 [
    i16 16, label %17
    i16 4, label %16
  ]

16:                                               ; preds = %.lr.ph.i.1
  br label %.lr.ph.i.2

17:                                               ; preds = %.lr.ph.i.1
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %17, %16, %.lr.ph.i.1
  %.126.i.1 = phi ptr [ %.126.i, %.lr.ph.i.1 ], [ %.126.i, %17 ], [ %14, %16 ] ; 2 uses
  %.1.i.1 = phi ptr [ %.1.i, %.lr.ph.i.1 ], [ %14, %17 ], [ %.1.i, %16 ] ; 2 uses
  %18 = getelementptr i8, ptr %.02731.i, i64 16   ; 3 uses
  %19 = load i16, ptr %18, align 4
  switch i16 %19, label %.lr.ph.i.3 [
    i16 16, label %21
    i16 4, label %20
  ]

20:                                               ; preds = %.lr.ph.i.2
  br label %.lr.ph.i.3

21:                                               ; preds = %.lr.ph.i.2
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %21, %20, %.lr.ph.i.2
  %.126.i.2 = phi ptr [ %.126.i.1, %.lr.ph.i.2 ], [ %.126.i.1, %21 ], [ %18, %20 ] ; 2 uses
  %.1.i.2 = phi ptr [ %.1.i.1, %.lr.ph.i.2 ], [ %18, %21 ], [ %.1.i.1, %20 ] ; 2 uses
  %22 = getelementptr i8, ptr %.02731.i, i64 24   ; 3 uses
  %23 = load i16, ptr %22, align 4
  switch i16 %23, label %bb.j [
    i16 16, label %bb.i
    i16 4, label %bb.h
  ]

bb.h:                                             ; preds = %.lr.ph.i.3
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.3
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.lr.ph.i.3
  %.126.i.a = phi ptr [ %.126.i.2, %.lr.ph.i.3 ], [ %.126.i.2, %bb.i ], [ %22, %bb.h ] ; 2 uses
  %.1.i.a = phi ptr [ %.1.i.2, %.lr.ph.i.3 ], [ %22, %bb.i ], [ %.1.i.2, %bb.h ] ; 2 uses
  %i.ac = getelementptr i8, ptr %.02731.i, i64 32 ; 2 uses
  %i.ad = icmp ult ptr %i.ac, %i.z
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !14

._crit_edge.i:                                    ; preds = %bb.j, %.lr.ph.i.prol.loopexit
  %.126.i.lcssa = phi ptr [ %.126.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.126.i.a, %bb.j ] ; 2 uses
  %.1.i.lcssa = phi ptr [ %.1.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.1.i.a, %bb.j ] ; 5 uses
  %i.ae = icmp eq i32 %i.x, 4
  %i.af = icmp ne ptr %.126.i.lcssa, null
  %or.cond.i = select i1 %i.ae, i1 %i.af, i1 false
  %i.ag = icmp ne ptr %.1.i.lcssa, null
  %or.cond3.i = select i1 %or.cond.i, i1 %i.ag, i1 false
  br i1 %or.cond3.i, label %bb.k, label %posix_acl_from_nfsacl.exit

bb.k:                                             ; preds = %._crit_edge.i
  %i.ah = getelementptr i8, ptr %.1.i.lcssa, i64 2
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = getelementptr i8, ptr %.126.i.lcssa, i64 2
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = icmp eq i16 %i.ai, %i.ak
  br i1 %i.al, label %bb.l, label %posix_acl_from_nfsacl.exit

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr i8, ptr %.1.i.lcssa, i64 8
  %i.an = ptrtoint ptr %.1.i.lcssa to i64
  %i.ao = ptrtoint ptr %i.t to i64
  %.neg.i = add i64 %i.ao, 24
  %i.ap = sub i64 %.neg.i, %i.an
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %.1.i.lcssa, ptr align 4 %i.am, i64 %i.ap, i1 false)
  store i32 3, ptr %i.u, align 4
  br label %posix_acl_from_nfsacl.exit

posix_acl_from_nfsacl.exit:                       ; preds = %bb.f, %bb.g, %._crit_edge.i, %bb.k, %bb.l
  %i.aq = load ptr, ptr %i.g, align 8
  store ptr %i.aq, ptr %2, align 8
  br label %bb.r

bb.m:                                             ; preds = %bb.e
  br i1 %.not.i17, label %posix_acl_release.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.s, i32 -1, ptr nonnull elementtype(i32) %i.s) #8, !srcloc !16 ; 2 uses
  %i.as = icmp eq i32 %i.ar, 1
  br i1 %i.as, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = icmp slt i32 %i.ar, 1
  br i1 %i.at, label %bb.p, label %posix_acl_release.exit, !prof !11

bb.p:                                             ; preds = %bb.o
  call void @refcount_warn_saturate(ptr noundef nonnull %i.s, i32 noundef 3) #9
  br label %posix_acl_release.exit

bb.q:                                             ; preds = %bb.n
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !17
  %i.au = getelementptr i8, ptr %i.s, i64 8
  call void @kvfree_call_rcu(ptr noundef %i.au, ptr noundef nonnull %i.s) #9
  br label %posix_acl_release.exit

bb.r:                                             ; preds = %posix_acl_from_nfsacl.exit, %bb.d
  %.not15 = icmp eq ptr %1, null
  br i1 %.not15, label %posix_acl_release.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 %i.j, ptr %1, align 4
  br label %posix_acl_release.exit

posix_acl_release.exit:                           ; preds = %bb.a, %bb.q, %bb.p, %bb.o, %bb.m, %bb.r, %bb.s, %bb.c, %bb.b, %xdr_stream_decode_u32.exit
  %.0 = phi i1 [ true, %bb.r ], [ false, %xdr_stream_decode_u32.exit ], [ false, %bb.b ], [ false, %bb.q ], [ false, %bb.c ], [ true, %bb.s ], [ false, %bb.m ], [ false, %bb.o ], [ false, %bb.p ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i1 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @posix_acl_alloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal range(i32 -65535, 65536) i32 @cmp_acl_entry(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 align 16 prefalign(16) {
bb.a:
  %i.a = load i16, ptr %0, align 4                ; 3 uses
  %i.b = load i16, ptr %1, align 4                ; 2 uses
  %.not = icmp eq i16 %i.a, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i16 %i.a to i32
  %i.d = sext i16 %i.b to i32
  %i.e = sub nsw i32 %i.c, %i.d
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  switch i16 %i.a, label %.thread22 [
    i16 2, label %bb.d
    i16 8, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 4
  %i.g = getelementptr i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.f, align 4              ; 2 uses
  %i.i = load i32, ptr %i.g, align 4              ; 2 uses
  %i.j = icmp ugt i32 %i.h, %i.i
  br i1 %i.j, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ult i32 %i.h, %i.i
  br i1 %i.k, label %bb.h, label %.thread22

bb.f:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 4
  %i.m = getelementptr i8, ptr %1, i64 4
  %i.n = load i32, ptr %i.l, align 4              ; 2 uses
  %i.o = load i32, ptr %i.m, align 4              ; 2 uses
  %i.p = icmp ugt i32 %i.n, %i.o
  br i1 %i.p, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = icmp ult i32 %i.n, %i.o
  br i1 %i.q, label %bb.h, label %.thread22

.thread22:                                        ; preds = %bb.c, %bb.e, %bb.g
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %.thread22, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %.thread22 ], [ 1, %bb.d ], [ -1, %bb.e ], [ 1, %bb.f ], [ -1, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{i64 2148952581, i64 2148952620, i64 2148952641, i64 2148952678, i64 2148952701, i64 2148952710}
!17 = !{i64 2151092380}
!18 = distinct !{!18, !13}
end_hunk_0
