Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/tvbuff_lznt1?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.except_id_t = type { i64, i64 }
%struct.except_stacknode = type { ptr, i32, %union.anon }
%union.anon = type { ptr }
%struct.except_catch = type { ptr, i64, %struct.except_t, [1 x %struct.__jmp_buf_tag] }
%struct.except_t = type { %struct.except_id_t, ptr, ptr }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }

@tvb_uncompress_lznt1.catch_spec = internal constant [1 x %struct.except_id_t] [%struct.except_id_t { i64 1, i64 0 }], align 16

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef ptr @tvb_uncompress_lznt1(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 13 uses
  %3 = alloca %struct.except_stacknode, align 8   ; 3 uses
  %4 = alloca %struct.except_catch, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store volatile i8 0, ptr %i.c, align 1
  %i.f = call ptr @wmem_allocator_new(i32 noundef 0) ; 2 uses
  %i.g = shl i32 %2, 1
  %i.h = call ptr @wmem_array_sized_new(ptr noundef %i.f, i64 noundef 1, i32 noundef %i.g) ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store volatile i32 0, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @except_setup_try(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull @tvb_uncompress_lznt1.catch_spec, i64 noundef 1)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.j = call i32 @_setjmp(ptr noundef nonnull %i.i) #8
  %.not = icmp eq i32 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sink = select i1 %.not, ptr null, ptr %i.k
  store volatile ptr %.sink, ptr %i.d, align 8
  %.0..0..0..0.5 = load volatile i32, ptr %i.e, align 4
  %i.l = and i32 %.0..0..0..0.5, 1
  %.not28 = icmp eq i32 %i.l, 0
  br i1 %.not28, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0..0..0..0.6 = load volatile i32, ptr %i.e, align 4
  %i.m = or i32 %.0..0..0..0.6, 2
  store volatile i32 %i.m, ptr %i.e, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0..0..0..0.7 = load volatile i32, ptr %i.e, align 4
  %i.n = and i32 %.0..0..0..0.7, -2
  store volatile i32 %i.n, ptr %i.e, align 4
  %.0..0..0..0.8 = load volatile i32, ptr %i.e, align 4
  %i.o = icmp eq i32 %.0..0..0..0.8, 0
  br i1 %i.o, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %.0..0..0..0.12 = load volatile ptr, ptr %i.d, align 8
  %i.p = icmp eq ptr %.0..0..0..0.12, null
  br i1 %i.p, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %do_uncompress.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = icmp eq i32 %2, 0
  %i.r = icmp sgt i32 %2, 16777216
  %or.cond.i = or i1 %i.q, %i.r
  br i1 %or.cond.i, label %do_uncompress.exit, label %.preheader35.i

.preheader35.i:                                   ; preds = %bb.f
  %i.s = icmp sgt i32 %2, 0
  br i1 %i.s, label %.lr.ph.i, label %do_uncompress.exit

.lr.ph.i:                                         ; preds = %.preheader35.i, %.loopexit33.i
  %.02844.i = phi i32 [ %.2.i, %.loopexit33.i ], [ 0, %.preheader35.i ] ; 2 uses
  %i.t = add i32 %.02844.i, %1
  %i.u = call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %0, i32 noundef %i.t) ; 2 uses
  %i.v = add i32 %.02844.i, 2                     ; 3 uses
  %i.w = and i16 %i.u, 4095
  %narrow.i = add nuw nsw i16 %i.w, 1
  %i.x = zext nneg i16 %narrow.i to i32           ; 4 uses
  %.not31.i = icmp sgt i16 %i.u, -1
  br i1 %.not31.i, label %.preheader.i, label %bb.g

.preheader.i:                                     ; preds = %.lr.ph.i, %.preheader.i
  %.043.i = phi i32 [ %i.ac, %.preheader.i ], [ 0, %.lr.ph.i ]
  %.142.i = phi i32 [ %i.ab, %.preheader.i ], [ %i.v, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.y = add i32 %.142.i, %1
  %i.z = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.y)
  store i8 %i.z, ptr %i.b, align 1
  %i.aa = call zeroext i1 @wmem_array_append(ptr noundef %i.h, ptr noundef nonnull %i.b, i32 noundef 1) ; 0 uses
  %i.ab = add i32 %.142.i, 1                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.ac = add nuw nsw i32 %.043.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ac, %i.x
  br i1 %exitcond.not.i, label %.loopexit33.i, label %.preheader.i, !llvm.loop !6

bb.g:                                             ; preds = %.lr.ph.i
  %i.ad = add i32 %i.v, %1                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ae = call i32 @wmem_array_get_count(ptr noundef %i.h) ; 3 uses
  br label %bb.h

.loopexit85.i.i:                                  ; preds = %bb.i
  %i.af = icmp ult i32 %.275.i.i, %i.x
  br i1 %i.af, label %bb.h, label %.loopexit.i, !llvm.loop !8

bb.h:                                             ; preds = %.loopexit85.i.i, %bb.g
  %.071107.i.i = phi i32 [ 0, %bb.g ], [ %.5.i.i, %.loopexit85.i.i ]
  %.073106.i.i = phi i32 [ 0, %bb.g ], [ %.275.i.i, %.loopexit85.i.i ] ; 2 uses
  %i.ag = add i32 %.073106.i.i, %i.ad
  %i.ah = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.ag)
  %i.ai = add nuw nsw i32 %.073106.i.i, 1
  %i.aj = zext i8 %i.ah to i32
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ak = add nuw nsw i32 %.070105.i.i, 1         ; 2 uses
  %exitcond116.not.i.i = icmp eq i32 %i.ak, 8
  br i1 %exitcond116.not.i.i, label %.loopexit85.i.i, label %bb.j, !llvm.loop !9

bb.j:                                             ; preds = %bb.i, %bb.h
  %.070105.i.i = phi i32 [ 0, %bb.h ], [ %i.ak, %bb.i ] ; 2 uses
  %.172104.i.i = phi i32 [ %.071107.i.i, %bb.h ], [ %.5.i.i, %bb.i ] ; 6 uses
  %.174103.i.i = phi i32 [ %i.ai, %bb.h ], [ %.275.i.i, %bb.i ] ; 3 uses
  %i.al = shl nuw nsw i32 1, %.070105.i.i
  %i.am = and i32 %i.al, %i.aj
  %i.an = icmp eq i32 %i.am, 0
  %i.ao = add i32 %.174103.i.i, %i.ad             ; 2 uses
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.ao)
  %i.aq = zext i8 %i.ap to i32
  store i32 %i.aq, ptr %i.a, align 4
  %i.ar = add i32 %.174103.i.i, 1
  %i.as = call zeroext i1 @wmem_array_append(ptr noundef %i.h, ptr noundef nonnull %i.a, i32 noundef 1) ; 0 uses
  %i.at = add i32 %.172104.i.i, 1
  br label %.loopexit.i.i

bb.l:                                             ; preds = %bb.j
  %i.au = call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %0, i32 noundef %i.ao)
  %i.av = zext i16 %i.au to i32                   ; 2 uses
  %i.aw = add i32 %.174103.i.i, 2                 ; 2 uses
  %or.cond.i.i = icmp ugt i32 %.172104.i.i, 16
  br i1 %or.cond.i.i, label %.lr.ph.preheader.i.i, label %.loopexit84.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.l
  %i.ax = add i32 %.172104.i.i, -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.06491.i.i = phi i32 [ %i.az, %.lr.ph.i.i ], [ 12, %.lr.ph.preheader.i.i ]
  %.06590.i.i = phi i32 [ %i.ay, %.lr.ph.i.i ], [ 4095, %.lr.ph.preheader.i.i ]
  %.06789.i.i = phi i32 [ %i.ba, %.lr.ph.i.i ], [ %i.ax, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ay = lshr i32 %.06590.i.i, 1                 ; 2 uses
  %i.az = add nsw i32 %.06491.i.i, -1             ; 2 uses
  %i.ba = lshr i32 %.06789.i.i, 1
  %i.bb = icmp ugt i32 %.06789.i.i, 31
  br i1 %i.bb, label %.lr.ph.i.i, label %.loopexit84.i.i, !llvm.loop !10

.loopexit84.i.i:                                  ; preds = %.lr.ph.i.i, %bb.l
  %.166.i.i = phi i32 [ 4095, %bb.l ], [ %i.ay, %.lr.ph.i.i ]
  %.1.i.i = phi i32 [ 12, %bb.l ], [ %i.az, %.lr.ph.i.i ]
  %i.bc = and i32 %.166.i.i, %i.av
  %i.bd = add nuw nsw i32 %i.bc, 3                ; 5 uses
  %i.be = lshr i32 %i.av, %.1.i.i                 ; 4 uses
  %i.bf = add nuw nsw i32 %i.be, 1                ; 4 uses
  %.neg.i.i = xor i32 %i.be, -1                   ; 2 uses
  %i.bg = add i32 %.172104.i.i, %i.ae
  %.not83.i.i = icmp ult i32 %i.be, %i.bg
  br i1 %.not83.i.i, label %bb.m, label %uncompress_chunk.exit.i

bb.m:                                             ; preds = %.loopexit84.i.i
  %i.bh = call zeroext i1 @wmem_array_grow(ptr noundef %i.h, i32 noundef %i.bd)
  br i1 %i.bh, label %.preheader.i.i, label %uncompress_chunk.exit.i

.preheader.i.i:                                   ; preds = %bb.m
  %.not.not.i.i = icmp samesign ult i32 %i.be, %i.bd
  br i1 %.not.not.i.i, label %.lr.ph95.i.i.a, label %.preheader.i..lr.ph101.i_crit_edge.i

.preheader.i..lr.ph101.i_crit_edge.i:             ; preds = %.preheader.i.i
  %.pre.i = add i32 %i.ae, %.neg.i.i
  br label %.lr.ph101.i.i.a

.lr.ph95.i.i.a:                                   ; preds = %.preheader.i.i
  %i.bi = udiv i32 %i.bd, %i.bf
  %5 = add i32 %i.ae, %.neg.i.i                   ; 2 uses
  %umax.i.i = call i32 @llvm.umax.i32(i32 %i.bi, i32 1) ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph95.i.i.a
  %.06894.i.i = phi i32 [ 0, %.lr.ph95.i.i.a ], [ %i.bn, %bb.n ]
  %.293.i.i = phi i32 [ %.172104.i.i, %.lr.ph95.i.i.a ], [ %i.bm, %bb.n ] ; 2 uses
  %i.bj = add i32 %.293.i.i, %5
  %i.bk = call ptr @wmem_array_index(ptr noundef %i.h, i32 noundef %i.bj)
  %i.bl = call zeroext i1 @wmem_array_append(ptr noundef %i.h, ptr noundef %i.bk, i32 noundef %i.bf) ; 0 uses
  %i.bm = add i32 %.293.i.i, %i.bf                ; 3 uses
  %i.bn = add nuw nsw i32 %.06894.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.bn, %umax.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.n, !llvm.loop !11

._crit_edge.i.i:                                  ; preds = %bb.n
  %i.bo = mul i32 %umax.i.i, %i.bf                ; 2 uses
  %i.bp = icmp ult i32 %i.bo, %i.bd
  br i1 %i.bp, label %.lr.ph101.i.i.a, label %.loopexit.i.i

.lr.ph101.i.i.a:                                  ; preds = %._crit_edge.i.i, %.preheader.i..lr.ph101.i_crit_edge.i
  %.pre-phi.i = phi i32 [ %.pre.i, %.preheader.i..lr.ph101.i_crit_edge.i ], [ %5, %._crit_edge.i.i ]
  %.068.lcssa124.i.i = phi i32 [ 0, %.preheader.i..lr.ph101.i_crit_edge.i ], [ %i.bo, %._crit_edge.i.i ]
  %.2.lcssa123.i.i = phi i32 [ %.172104.i.i, %.preheader.i..lr.ph101.i_crit_edge.i ], [ %i.bm, %._crit_edge.i.i ]
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph101.i.i.a
  %.16999.i.i = phi i32 [ %.068.lcssa124.i.i, %.lr.ph101.i.i.a ], [ %i.bu, %bb.o ]
  %.398.i.i = phi i32 [ %.2.lcssa123.i.i, %.lr.ph101.i.i.a ], [ %i.bt, %bb.o ] ; 2 uses
  %i.bq = add i32 %.398.i.i, %.pre-phi.i
  %i.br = call ptr @wmem_array_index(ptr noundef %i.h, i32 noundef %i.bq)
  %i.bs = call zeroext i1 @wmem_array_append(ptr noundef %i.h, ptr noundef %i.br, i32 noundef 1) ; 0 uses
  %i.bt = add i32 %.398.i.i, 1                    ; 2 uses
  %i.bu = add i32 %.16999.i.i, 1                  ; 2 uses
  %exitcond115.not.i.i = icmp eq i32 %i.bu, %i.bd
  br i1 %exitcond115.not.i.i, label %.loopexit.i.i, label %bb.o, !llvm.loop !12

.loopexit.i.i:                                    ; preds = %bb.o, %._crit_edge.i.i, %bb.k
  %.275.i.i = phi i32 [ %i.ar, %bb.k ], [ %i.aw, %._crit_edge.i.i ], [ %i.aw, %bb.o ] ; 4 uses
  %.5.i.i = phi i32 [ %i.at, %bb.k ], [ %i.bm, %._crit_edge.i.i ], [ %i.bt, %bb.o ] ; 2 uses
  %i.bv = icmp eq i32 %.275.i.i, %i.x
  br i1 %i.bv, label %.loopexit.i, label %bb.i

uncompress_chunk.exit.i:                          ; preds = %bb.m, %.loopexit84.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %do_uncompress.exit

.loopexit.i:                                      ; preds = %.loopexit85.i.i, %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.bw = add i32 %i.v, %i.x
  br label %.loopexit33.i

.loopexit33.i:                                    ; preds = %.preheader.i, %.loopexit.i
  %.2.i = phi i32 [ %i.bw, %.loopexit.i ], [ %i.ab, %.preheader.i ] ; 2 uses
  %i.bx = icmp slt i32 %.2.i, %2
  br i1 %i.bx, label %.lr.ph.i, label %do_uncompress.exit, !llvm.loop !13

do_uncompress.exit:                               ; preds = %.loopexit33.i, %bb.e, %bb.f, %.preheader35.i, %uncompress_chunk.exit.i
  %.029.i = phi i8 [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %uncompress_chunk.exit.i ], [ 1, %.preheader35.i ], [ 1, %.loopexit33.i ]
  store volatile i8 %.029.i, ptr %i.c, align 1
  br label %bb.p

bb.p:                                             ; preds = %do_uncompress.exit, %bb.d, %bb.c
  %.0..0..0..0.9 = load volatile i32, ptr %i.e, align 4
  %i.by = icmp eq i32 %.0..0..0..0.9, 0
  br i1 %i.by, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %.0..0..0..0.13 = load volatile ptr, ptr %i.d, align 8
  %.not29 = icmp eq ptr %.0..0..0..0.13, null
  br i1 %.not29, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.0..0..0..0.10 = load volatile i32, ptr %i.e, align 4
  %i.bz = or i32 %.0..0..0..0.10, 1
  store volatile i32 %i.bz, ptr %i.e, align 4
  store volatile i8 0, ptr %i.c, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.0..0..0..0.11 = load volatile i32, ptr %i.e, align 4
  %i.ca = and i32 %.0..0..0..0.11, 1
  %.not30 = icmp eq i32 %i.ca, 0
  br i1 %.not30, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.0..0..0..0.14 = load volatile ptr, ptr %i.d, align 8
  %.not31 = icmp eq ptr %.0..0..0..0.14, null
  br i1 %.not31, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.0..0..0..0.15 = load volatile ptr, ptr %i.d, align 8
  call void @except_rethrow(ptr noundef %.0..0..0..0.15) #9
  unreachable

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.cc = load volatile ptr, ptr %i.cb, align 8
  call void @except_free(ptr noundef %i.cc)
  %i.cd = call ptr @except_pop()                  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.0..0..0..0.23 = load volatile i8, ptr %i.c, align 1, !range !14, !noundef !15
  %i.ce = trunc nuw i8 %.0..0..0..0.23 to i1
  br i1 %i.ce, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cf = call i32 @wmem_array_get_count(ptr noundef %i.h) ; 3 uses
  %i.cg = zext i32 %i.cf to i64                   ; 2 uses
  %i.ch = call noalias ptr @g_malloc(i64 noundef %i.cg) #10 ; 2 uses
  %i.ci = call ptr @wmem_array_get_raw(ptr noundef %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.ch, ptr noundef align 1 %i.ci, i64 noundef range(i64 0, 4294967296) %i.cg, i1 noundef false) #7
  %i.cj = call ptr @tvb_new_real_data(ptr noundef %i.ch, i32 noundef %i.cf, i32 noundef %i.cf) ; 2 uses
  call void @tvb_set_free_cb(ptr noundef %i.cj, ptr noundef nonnull @g_free)
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %.0 = phi ptr [ %i.cj, %bb.w ], [ null, %bb.v ]
  call void @wmem_destroy_allocator(ptr noundef %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_allocator_new(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_array_sized_new(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @except_setup_try(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn null_pointer_is_valid
declare void @except_rethrow(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @except_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @except_pop() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare i32 @wmem_array_get_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_array_get_raw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_real_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @tvb_set_free_cb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @g_free(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare void @wmem_destroy_allocator(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef ptr @tvb_child_uncompress_lznt1(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @tvb_uncompress_lznt1(ptr noundef %1, i32 noundef %2, i32 noundef %3) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @tvb_set_child_real_data_tvbuff(ptr noundef %0, ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: null_pointer_is_valid
declare void @tvb_set_child_real_data_tvbuff(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_letohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wmem_array_append(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wmem_array_grow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_array_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind null_pointer_is_valid returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind returns_twice }
attributes #9 = { noreturn }
attributes #10 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = !{i8 0, i8 2}
!15 = !{}
end_hunk_0
