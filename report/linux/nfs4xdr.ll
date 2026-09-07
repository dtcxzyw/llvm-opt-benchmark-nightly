Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/nfs4xdr?download=true
inline.NumInlined: 801
inline.NumDeleted: 217
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 27
begin_hunk_0_@decode_attr_case_insensitive:bb.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -5, 1) i32 @decode_attr_case_preserving(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  store i32 0, ptr %2, align 4
  %i.a = load i32, ptr %1, align 4
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = and i64 %i.b, 131071
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.e, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 131072
  %.not8 = icmp eq i64 %i.d, 0
  br i1 %.not8, label %bb.e, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not9 = icmp eq ptr %i.e, null
  br i1 %.not9, label %bb.e, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %i.e, align 4
  %i.g = tail call i32 @llvm.bswap.i32(i32 %i.f)
  store i32 %i.g, ptr %2, align 4
  %i.h = load i32, ptr %1, align 4
  %i.i = and i32 %i.h, -131073
  store i32 %i.i, ptr %1, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ -5, %bb.c ], [ -5, %bb.a ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -5, 1) i32 @decode_attr_exclcreat_supported(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 2048
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.i, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %decode_attr_bitmap.exit, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.d, align 4
  %.fr3.i = freeze i32 %i.e                       ; 3 uses
  %i.f = tail call i32 @llvm.bswap.i32(i32 %.fr3.i) ; 2 uses
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = shl nuw nsw i64 %i.g, 2                  ; 2 uses
  %i.i = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef %i.h) #11 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %decode_attr_bitmap.exit, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq ptr %2, null
  br i1 %i.j, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not22.i.i.i = icmp ugt i32 %i.f, 3
  br i1 %.not22.i.i.i, label %.lr.ph.i.i.preheader.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq i32 %.fr3.i, 50331648
  br i1 %.not.i, label %.lr.ph.i.i.preheader.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr [4 x i8], ptr %2, i64 %i.g
  %i.l = sub nuw nsw i64 12, %i.h
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %i.l, i1 false)
  %.not2330.i.i.i = icmp eq i32 %.fr3.i, 0
  br i1 %.not2330.i.i.i, label %.thread, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.g, %bb.f, %bb.e
  %.0.i.i10.i = phi i64 [ %i.g, %bb.g ], [ 3, %bb.f ], [ -90, %bb.e ] ; 2 uses
  %.016.i.i9.i = phi i64 [ %i.g, %bb.g ], [ 3, %bb.f ], [ 3, %bb.e ] ; 4 uses
  %i.m = add nsw i64 %.016.i.i9.i, -1
  %xtraiter = and i64 %.016.i.i9.i, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.preheader.i, %.lr.ph.i.i.i.prol
  %.01533.i.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.i.prol ], [ %i.i, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.132.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.prol ], [ %.016.i.i9.i, %.lr.ph.i.i.preheader.i ]
  %.01731.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.prol ], [ %2, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.preheader.i ]
  %i.n = load i32, ptr %.01533.i.i.i.prol, align 4
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.n)
  store i32 %i.o, ptr %.01731.i.i.i.prol, align 4
  %i.p = getelementptr i8, ptr %.01533.i.i.i.prol, i64 4 ; 2 uses
  %i.q = getelementptr i8, ptr %.01731.i.i.i.prol, i64 4 ; 2 uses
  %i.r = add nsw i64 %.132.i.i.i.prol, -1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !277

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.preheader.i
  %.01533.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.preheader.i ], [ %i.p, %.lr.ph.i.i.i.prol ]
  %.132.i.i.i.unr = phi i64 [ %.016.i.i9.i, %.lr.ph.i.i.preheader.i ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.01731.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.preheader.i ], [ %i.q, %.lr.ph.i.i.i.prol ]
  %i.s = icmp ult i64 %i.m, 3
  br i1 %i.s, label %xdr_stream_decode_uint32_array.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.01533.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.01533.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.132.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i ], [ %.132.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.01731.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.01731.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %i.t = load i32, ptr %.01533.i.i.i, align 4
  %i.u = tail call i32 @llvm.bswap.i32(i32 %i.t)
  store i32 %i.u, ptr %.01731.i.i.i, align 4
  %i.v = getelementptr i8, ptr %.01533.i.i.i, i64 4
  %i.w = getelementptr i8, ptr %.01731.i.i.i, i64 4
  %i.x = load i32, ptr %i.v, align 4
  %i.y = tail call i32 @llvm.bswap.i32(i32 %i.x)
  store i32 %i.y, ptr %i.w, align 4
  %i.z = getelementptr i8, ptr %.01533.i.i.i, i64 8
  %i.aa = getelementptr i8, ptr %.01731.i.i.i, i64 8
  %i.ab = load i32, ptr %i.z, align 4
  %i.ac = tail call i32 @llvm.bswap.i32(i32 %i.ab)
  store i32 %i.ac, ptr %i.aa, align 4
  %i.ad = getelementptr i8, ptr %.01533.i.i.i, i64 12
  %i.ae = getelementptr i8, ptr %.01731.i.i.i, i64 12
  %i.af = load i32, ptr %i.ad, align 4
  %i.ag = tail call i32 @llvm.bswap.i32(i32 %i.af)
  store i32 %i.ag, ptr %i.ae, align 4
  %i.ah = getelementptr i8, ptr %.01533.i.i.i, i64 16
  %i.ai = getelementptr i8, ptr %.01731.i.i.i, i64 16
  %i.aj = add nsw i64 %.132.i.i.i, -4             ; 2 uses
  %.not23.i.i.i.3 = icmp eq i64 %i.aj, 0
  br i1 %.not23.i.i.i.3, label %xdr_stream_decode_uint32_array.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

xdr_stream_decode_uint32_array.exit.i.i:          ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %i.ak = icmp sgt i64 %.0.i.i10.i, -1
  br i1 %i.ak, label %.thread, label %bb.h, !prof !15

bb.h:                                             ; preds = %xdr_stream_decode_uint32_array.exit.i.i
  %.not.i.i = icmp eq i64 %.0.i.i10.i, -90
  br i1 %.not.i.i, label %.thread, label %decode_attr_bitmap.exit

.thread:                                          ; preds = %bb.h, %xdr_stream_decode_uint32_array.exit.i.i, %bb.d, %bb.g
  %i.al = load i32, ptr %i.a, align 4
  %i.am = and i32 %i.al, -2049
  store i32 %i.am, ptr %i.a, align 4
  br label %decode_attr_bitmap.exit

bb.i:                                             ; preds = %bb.a
  %i.an = getelementptr i8, ptr %2, i64 8
  store i32 0, ptr %i.an, align 4
  %i.ao = getelementptr i8, ptr %2, i64 4
  store i32 0, ptr %i.ao, align 4
  store i32 0, ptr %2, align 4
  br label %decode_attr_bitmap.exit

decode_attr_bitmap.exit:                          ; preds = %bb.c, %bb.b, %bb.h, %bb.i, %.thread
  %.1 = phi i32 [ 0, %bb.i ], [ 0, %.thread ], [ -5, %bb.h ], [ -5, %bb.b ], [ -5, %bb.c ]
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -5, 1) i32 @decode_attr_open_arguments(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(address) initializes((0, 20)) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %2, i8 0, i64 20, i1 false)
  %i.a = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = and i64 %i.c, 4194303
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %decode_bitmap4.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, 4194304
  %.not14 = icmp eq i64 %i.e, 0
  br i1 %.not14, label %decode_bitmap4.exit, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %decode_bitmap4.exit, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.g)
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 2
  %i.k = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef %i.j) #11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %decode_bitmap4.exit, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.l = icmp eq ptr %2, null
  br i1 %i.l, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = icmp eq i32 %i.g, 0
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %xdr_stream_decode_uint32_array.exit.i.thread

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  %3 = getelementptr [4 x i8], ptr %2, i64 %i.i
  store i32 0, ptr %3, align 4
  br label %select.unfold

xdr_stream_decode_uint32_array.exit.i.thread:     ; preds = %bb.f
  %4 = load i32, ptr %i.k, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  store i32 %5, ptr %2, align 4
  br label %select.unfold

select.unfold:                                    ; preds = %xdr_stream_decode_uint32_array.exit.i.thread, %bb.e, %.lr.ph.i.i.preheader
  %i.n = getelementptr i8, ptr %2, i64 4          ; 3 uses
  %i.o = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i15, label %decode_bitmap4.exit, label %bb.g, !prof !12

bb.g:                                             ; preds = %select.unfold
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = tail call i32 @llvm.bswap.i32(i32 %i.p)
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 2
  %i.t = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef %i.s) #11 ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.t, null
  br i1 %.not.i.i16, label %decode_bitmap4.exit, label %bb.h, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.u = icmp eq ptr %i.n, null
  br i1 %i.u, label %select.unfold97, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = icmp eq i32 %i.p, 0
  br i1 %i.v, label %.lr.ph.i.i22.preheader, label %xdr_stream_decode_uint32_array.exit.i27.thread

.lr.ph.i.i22.preheader:                           ; preds = %bb.i
  %6 = getelementptr [4 x i8], ptr %i.n, i64 %i.r
  store i32 0, ptr %6, align 4
  br label %select.unfold97

xdr_stream_decode_uint32_array.exit.i27.thread:   ; preds = %bb.i
  %7 = load i32, ptr %i.t, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  store i32 %8, ptr %i.n, align 4
  br label %select.unfold97

select.unfold97:                                  ; preds = %xdr_stream_decode_uint32_array.exit.i27.thread, %bb.h, %.lr.ph.i.i22.preheader
  %i.w = getelementptr i8, ptr %2, i64 8          ; 3 uses
  %i.x = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i32, label %decode_bitmap4.exit, label %bb.j, !prof !12

bb.j:                                             ; preds = %select.unfold97
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.y)
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = shl nuw nsw i64 %i.aa, 2
  %i.ac = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef %i.ab) #11 ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i33, label %decode_bitmap4.exit, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  %i.ad = icmp eq ptr %i.w, null
  br i1 %i.ad, label %select.unfold106, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = icmp eq i32 %i.y, 0
  br i1 %i.ae, label %.lr.ph.i.i39.preheader, label %xdr_stream_decode_uint32_array.exit.i44.thread

.lr.ph.i.i39.preheader:                           ; preds = %bb.l
  %9 = getelementptr [4 x i8], ptr %i.w, i64 %i.aa
  store i32 0, ptr %9, align 4
  br label %select.unfold106

xdr_stream_decode_uint32_array.exit.i44.thread:   ; preds = %bb.l
  %10 = load i32, ptr %i.ac, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  store i32 %11, ptr %i.w, align 4
  br label %select.unfold106

select.unfold106:                                 ; preds = %xdr_stream_decode_uint32_array.exit.i44.thread, %bb.k, %.lr.ph.i.i39.preheader
  %i.af = getelementptr i8, ptr %2, i64 12        ; 3 uses
  %i.ag = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i49, label %decode_bitmap4.exit, label %bb.m, !prof !12

bb.m:                                             ; preds = %select.unfold106
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %i.ai = tail call i32 @llvm.bswap.i32(i32 %i.ah)
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = shl nuw nsw i64 %i.aj, 2
  %i.al = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef %i.ak) #11 ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.al, null
  br i1 %.not.i.i50, label %decode_bitmap4.exit, label %bb.n, !prof !12

bb.n:                                             ; preds = %bb.m
  %i.am = icmp eq ptr %i.af, null
  br i1 %i.am, label %select.unfold115, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = icmp eq i32 %i.ah, 0
  br i1 %i.an, label %.lr.ph.i.i56.preheader, label %xdr_stream_decode_uint32_array.exit.i61.thread

.lr.ph.i.i56.preheader:                           ; preds = %bb.o
  %12 = getelementptr [4 x i8], ptr %i.af, i64 %i.aj
  store i32 0, ptr %12, align 4
  br label %select.unfold115

xdr_stream_decode_uint32_array.exit.i61.thread:   ; preds = %bb.o
  %13 = load i32, ptr %i.al, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  store i32 %14, ptr %i.af, align 4
  br label %select.unfold115

select.unfold115:                                 ; preds = %xdr_stream_decode_uint32_array.exit.i61.thread, %bb.n, %.lr.ph.i.i56.preheader
  %i.ao = getelementptr i8, ptr %2, i64 16        ; 3 uses
  %i.ap = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i66, label %decode_bitmap4.exit, label %bb.p, !prof !12

bb.p:                                             ; preds = %select.unfold115
  %i.aq = load i32, ptr %i.ap, align 4            ; 2 uses
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %i.aq)
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = shl nuw nsw i64 %i.as, 2
  %i.au = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef %i.at) #11 ; 2 uses
  %.not.i.i67 = icmp eq ptr %i.au, null
  br i1 %.not.i.i67, label %decode_bitmap4.exit, label %bb.q, !prof !12

bb.q:                                             ; preds = %bb.p
  %i.av = icmp eq ptr %i.ao, null
  br i1 %i.av, label %select.unfold124, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = icmp eq i32 %i.aq, 0
  br i1 %i.aw, label %.lr.ph.i.i73.preheader, label %xdr_stream_decode_uint32_array.exit.i78.thread

.lr.ph.i.i73.preheader:                           ; preds = %bb.r
  %15 = getelementptr [4 x i8], ptr %i.ao, i64 %i.as
  store i32 0, ptr %15, align 4
  br label %select.unfold124

xdr_stream_decode_uint32_array.exit.i78.thread:   ; preds = %bb.r
  %16 = load i32, ptr %i.au, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  store i32 %17, ptr %i.ao, align 4
  br label %select.unfold124

select.unfold124:                                 ; preds = %xdr_stream_decode_uint32_array.exit.i78.thread, %bb.q, %.lr.ph.i.i73.preheader
  %i.ax = load i32, ptr %i.a, align 4
  %i.ay = and i32 %i.ax, -4194305
  store i32 %i.ay, ptr %i.a, align 4
  br label %decode_bitmap4.exit

decode_bitmap4.exit:                              ; preds = %bb.p, %select.unfold115, %bb.m, %select.unfold106, %bb.j, %select.unfold97, %bb.g, %select.unfold, %bb.d, %bb.c, %bb.b, %select.unfold124, %bb.a
  %.0 = phi i32 [ -5, %bb.m ], [ -5, %bb.a ], [ 0, %bb.b ], [ -5, %bb.d ], [ -5, %bb.g ], [ -5, %bb.j ], [ 0, %select.unfold124 ], [ -5, %bb.p ], [ -5, %bb.c ], [ -5, %select.unfold115 ], [ -5, %select.unfold ], [ -5, %select.unfold106 ], [ -5, %select.unfold97 ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @decode_delegreturn(ptr noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 8) #11 ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %decode_op_hdr.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not20.i.i = icmp eq i32 %i.b, 134217728
  br i1 %.not20.i.i, label %bb.c, label %bb.e, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not21.i.i = icmp eq i32 %i.d, 0
  br i1 %.not21.i.i, label %decode_op_hdr.exit, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.d)  ; 2 uses
  tail call fastcc void @trace_nfs4_xdr_status(ptr noundef %0, i32 noundef range(i32 3, 59) 8, i32 noundef %i.e) #12, !srcloc !41
  %i.f = tail call i32 @nfs4_stat_to_errno(i32 noundef %i.e) #11
  br label %decode_op_hdr.exit

bb.e:                                             ; preds = %bb.b
  %i.g = tail call i32 @llvm.bswap.i32(i32 %i.b)
  tail call fastcc void @trace_nfs4_xdr_bad_operation(ptr noundef %0, i32 noundef %i.g, i32 noundef range(i32 3, 59) 8) #12, !srcloc !40
  br label %decode_op_hdr.exit

decode_op_hdr.exit:                               ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.sink.i.i = phi i32 [ 0, %bb.c ], [ -121, %bb.e ], [ %i.f, %bb.d ], [ -5, %bb.a ]
  ret i32 %.sink.i.i
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @xdr_enter_page(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @xdr_page_pos(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -22, 1) i32 @decode_secinfo_common(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %decode_secinfo_gss.exit.thread, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 40         ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  store i32 0, ptr %i.c, align 4
  %i.d = load i32, ptr %i.a, align 4              ; 2 uses
  %.not41 = icmp eq i32 %i.d, 0
  br i1 %.not41, label %decode_secinfo_gss.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.d)
  %wide.trip.count = zext i32 %i.e to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %i.h = getelementptr [48 x i8], ptr %i.g, i64 %indvars.iv ; 5 uses
  %exitcond = icmp eq i64 %indvars.iv, 85
  br i1 %exitcond, label %decode_secinfo_gss.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.i = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not24 = icmp eq ptr %i.i, null
  br i1 %.not24, label %decode_secinfo_gss.exit.thread, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = tail call i32 @llvm.bswap.i32(i32 %i.j)
  store i32 %i.k, ptr %i.h, align 4
  %i.l = icmp eq i32 %i.j, 100663296
  br i1 %i.l, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.m = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %decode_secinfo_gss.exit.thread, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %i.m, align 4
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.n)  ; 3 uses
  %i.p = icmp ugt i32 %i.o, 32
  br i1 %i.p, label %decode_secinfo_gss.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = zext nneg i32 %i.o to i64                ; 2 uses
  %i.r = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef %i.q) #11 ; 2 uses
  %.not19.i = icmp eq ptr %i.r, null
  br i1 %.not19.i, label %decode_secinfo_gss.exit.thread, label %bb.h, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %i.h, i64 4
  %i.t = getelementptr i8, ptr %i.h, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.t, ptr nonnull align 4 %i.r, i64 %i.q, i1 false)
  store i32 %i.o, ptr %i.s, align 4
  %i.u = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 8) #11 ; 3 uses
  %.not20.i = icmp eq ptr %i.u, null
  br i1 %.not20.i, label %decode_secinfo_gss.exit.thread, label %decode_secinfo_gss.exit, !prof !12

decode_secinfo_gss.exit:                          ; preds = %bb.h
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.u, align 4
  %i.x = tail call i32 @llvm.bswap.i32(i32 %i.w)
  %i.y = getelementptr i8, ptr %i.h, i64 40
  store i32 %i.x, ptr %i.y, align 4
  %i.z = load i32, ptr %i.v, align 4
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %i.z)
  %i.ab = getelementptr i8, ptr %i.h, i64 44
  store i32 %i.aa, ptr %i.ab, align 4
  br label %bb.i

bb.i:                                             ; preds = %decode_secinfo_gss.exit, %bb.d
  %i.ac = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond43.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond43.not, label %decode_secinfo_gss.exit.thread, label %.lr.ph, !llvm.loop !278

decode_secinfo_gss.exit.thread:                   ; preds = %bb.c, %bb.i, %.lr.ph, %bb.e, %bb.f, %bb.g, %bb.h, %bb.b, %bb.a
  %.022 = phi i32 [ -5, %bb.a ], [ 0, %bb.b ], [ 0, %.lr.ph ], [ -5, %bb.e ], [ -22, %bb.f ], [ -5, %bb.g ], [ 0, %bb.i ], [ -5, %bb.c ], [ -5, %bb.h ]
  ret i32 %.022
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @encode_op_map(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %xdr_stream_encode_u32.exit.i, !prof !12

xdr_stream_encode_u32.exit.i:                     ; preds = %bb.a
  store i32 67108864, ptr %i.a, align 4
  br label %encode_uint32.exit

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "1749: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1749b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1749) #10, !srcloc !25
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.73, i32 985, i32 2307, i64 16) #10, !srcloc !26
  tail call void asm sideeffect "1750: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1750b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1750) #10, !srcloc !27
  br label %encode_uint32.exit

encode_uint32.exit:                               ; preds = %xdr_stream_encode_u32.exit.i, %bb.b
  %i.b = load i32, ptr %1, align 4
  %i.c = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.c, null
  br i1 %.not.i.i6, label %bb.c, label %xdr_stream_encode_u32.exit.i7, !prof !12

xdr_stream_encode_u32.exit.i7:                    ; preds = %encode_uint32.exit
  %i.d = tail call i32 @llvm.bswap.i32(i32 %i.b)
  store i32 %i.d, ptr %i.c, align 4
  br label %encode_uint32.exit8

bb.c:                                             ; preds = %encode_uint32.exit
  tail call void asm sideeffect "1749: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1749b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1749) #10, !srcloc !25
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.73, i32 985, i32 2307, i64 16) #10, !srcloc !26
  tail call void asm sideeffect "1750: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1750b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1750) #10, !srcloc !27
  br label %encode_uint32.exit8

encode_uint32.exit8:                              ; preds = %xdr_stream_encode_u32.exit.i7, %bb.c
  %i.e = getelementptr i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i6.1 = icmp eq ptr %i.g, null
  br i1 %.not.i.i6.1, label %bb.d, label %xdr_stream_encode_u32.exit.i7.1, !prof !12

xdr_stream_encode_u32.exit.i7.1:                  ; preds = %encode_uint32.exit8
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.f)
  store i32 %i.h, ptr %i.g, align 4
  br label %encode_uint32.exit8.1

bb.d:                                             ; preds = %encode_uint32.exit8
  tail call void asm sideeffect "1749: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1749b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1749) #10, !srcloc !25
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.73, i32 985, i32 2307, i64 16) #10, !srcloc !26
  tail call void asm sideeffect "1750: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1750b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1750) #10, !srcloc !27
  br label %encode_uint32.exit8.1

encode_uint32.exit8.1:                            ; preds = %bb.d, %xdr_stream_encode_u32.exit.i7.1
  %i.i = getelementptr i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 4
  %i.k = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i6.2 = icmp eq ptr %i.k, null
  br i1 %.not.i.i6.2, label %bb.e, label %xdr_stream_encode_u32.exit.i7.2, !prof !12
end_hunk_0
