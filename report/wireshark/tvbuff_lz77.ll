Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/tvbuff_lz77?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
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

@tvb_uncompress_lz77.catch_spec = internal constant [1 x %struct.except_id_t] [%struct.except_id_t { i64 1, i64 0 }], align 16

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef ptr @tvb_uncompress_lz77(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 13 uses
  %3 = alloca %struct.except_stacknode, align 8   ; 3 uses
  %4 = alloca %struct.except_catch, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store volatile i8 0, ptr %i.b, align 1
  %.not = icmp eq ptr %0, null
  %i.e = add i32 %2, -16777217
  %or.cond = icmp ult i32 %i.e, -16777216
  %or.cond41 = or i1 %.not, %or.cond
  br i1 %or.cond41, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @wmem_allocator_new(i32 noundef 0) ; 2 uses
  %i.g = shl nuw nsw i32 %2, 1
  %i.h = call ptr @wmem_array_sized_new(ptr noundef %i.f, i64 noundef 1, i32 noundef %i.g) ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store volatile i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @except_setup_try(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull @tvb_uncompress_lz77.catch_spec, i64 noundef 1)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.j = call i32 @_setjmp(ptr noundef nonnull %i.i) #7
  %.not36 = icmp eq i32 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sink = select i1 %.not36, ptr null, ptr %i.k
  store volatile ptr %.sink, ptr %i.c, align 8
  %.0..0..0..0.6 = load volatile i32, ptr %i.d, align 4
  %i.l = and i32 %.0..0..0..0.6, 1
  %.not37 = icmp eq i32 %i.l, 0
  br i1 %.not37, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.0..0..0..0.7 = load volatile i32, ptr %i.d, align 4
  %i.m = or i32 %.0..0..0..0.7, 2
  store volatile i32 %i.m, ptr %i.d, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0..0..0..0.8 = load volatile i32, ptr %i.d, align 4
  %i.n = and i32 %.0..0..0..0.8, -2
  store volatile i32 %i.n, ptr %i.d, align 4
  %.0..0..0..0.9 = load volatile i32, ptr %i.d, align 4
  %i.o = icmp eq i32 %.0..0..0..0.9, 0
  br i1 %i.o, label %bb.e, label %bb.t

bb.e:                                             ; preds = %bb.d
  %.0..0..0..0.13 = load volatile ptr, ptr %i.c, align 8
  %i.p = icmp eq ptr %.0..0..0..0.13, null
  br i1 %i.p, label %.preheader.outer, label %bb.t

.preheader.outer.backedge:                        ; preds = %.lr.ph112.i, %._crit_edge.i
  br label %.preheader.outer

.preheader.outer:                                 ; preds = %bb.e, %.preheader.outer.backedge
  %.093.i.ph = phi i32 [ %.194.i, %.preheader.outer.backedge ], [ 0, %bb.e ]
  %.091.i.ph = phi i32 [ %i.u, %.preheader.outer.backedge ], [ 0, %bb.e ]
  %.086.i.ph = phi i32 [ %.6106.i, %.preheader.outer.backedge ], [ 0, %bb.e ]
  %.082.i.ph = phi i32 [ %.284107.i, %.preheader.outer.backedge ], [ 0, %bb.e ] ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.outer, %bb.h
  %.093.i = phi i32 [ %.194.i, %bb.h ], [ %.093.i.ph, %.preheader.outer ]
  %.091.i = phi i32 [ %i.u, %bb.h ], [ %.091.i.ph, %.preheader.outer ] ; 2 uses
  %.086.i = phi i32 [ %i.ab, %bb.h ], [ %.086.i.ph, %.preheader.outer ] ; 3 uses
  %i.q = icmp eq i32 %.091.i, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader
  %i.r = add i32 %.086.i, %1
  %i.s = call i32 @tvb_get_letohl(ptr noundef nonnull %0, i32 noundef %i.r)
  %i.t = add i32 %.086.i, 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader
  %.194.i = phi i32 [ %i.s, %bb.f ], [ %.093.i, %.preheader ] ; 3 uses
  %.192.i = phi i32 [ 32, %bb.f ], [ %.091.i, %.preheader ]
  %.187.i = phi i32 [ %i.t, %bb.f ], [ %.086.i, %.preheader ] ; 6 uses
  %i.u = add nsw i32 %.192.i, -1                  ; 3 uses
  %i.v = shl nuw i32 1, %i.u
  %i.w = and i32 %i.v, %.194.i
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.y = add i32 %.187.i, %1
  %i.z = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.y)
  store i8 %i.z, ptr %i.a, align 1
  %i.aa = call zeroext i1 @wmem_array_append(ptr noundef %i.h, ptr noundef nonnull %i.a, i32 noundef 1) ; 0 uses
  %i.ab = add i32 %.187.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %.preheader

bb.i:                                             ; preds = %bb.g
  %i.ac = icmp eq i32 %.187.i, %2                 ; 2 uses
  br i1 %i.ac, label %do_uncompress.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = add i32 %.187.i, %1
  %i.ae = call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %0, i32 noundef %i.ad)
  %i.af = zext i16 %i.ae to i32                   ; 2 uses
  %i.ag = add i32 %.187.i, 2                      ; 4 uses
  %i.ah = and i32 %i.af, 7                        ; 2 uses
  %i.ai = lshr i32 %i.af, 3                       ; 3 uses
  %i.aj = add nuw nsw i32 %i.ai, 1                ; 5 uses
  %i.ak = icmp eq i32 %i.ah, 7
  br i1 %i.ak, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  %i.al = icmp eq i32 %.082.i.ph, 0
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.am = add i32 %i.ag, %1
  %i.an = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.am)
  %i.ao = and i8 %i.an, 15
  %i.ap = add i32 %.187.i, 3
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.aq = add i32 %.082.i.ph, %1
  %i.ar = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.aq)
  %i.as = lshr i8 %i.ar, 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.288.i = phi i32 [ %i.ap, %bb.l ], [ %i.ag, %bb.m ] ; 5 uses
  %.183.i = phi i32 [ %i.ag, %bb.l ], [ 0, %bb.m ] ; 3 uses
  %.080.in.i = phi i8 [ %i.ao, %bb.l ], [ %i.as, %bb.m ] ; 2 uses
  %i.at = icmp eq i8 %.080.in.i, 15
  br i1 %i.at, label %bb.o, label %.thread120.i

.thread120.i:                                     ; preds = %bb.n
  %narrow.i = add nuw nsw i8 %.080.in.i, 7
  %i.au = zext nneg i8 %narrow.i to i32
  br label %.thread.i

bb.o:                                             ; preds = %bb.n
  %i.av = add i32 %.288.i, %1
  %i.aw = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.av) ; 2 uses
  %i.ax = add i32 %.288.i, 1                      ; 2 uses
  %i.ay = icmp eq i8 %i.aw, -1
  br i1 %i.ay, label %bb.p, label %.thread

.thread:                                          ; preds = %bb.o
  %i.az = zext i8 %i.aw to i32
  %i.ba = add nuw nsw i32 %i.az, 22
  br label %.thread.i

bb.p:                                             ; preds = %bb.o
  %i.bb = add i32 %i.ax, %1
  %i.bc = call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %0, i32 noundef %i.bb) ; 2 uses
  %i.bd = zext i16 %i.bc to i32
  %i.be = add i32 %.288.i, 3                      ; 2 uses
  %i.bf = icmp eq i16 %i.bc, 0
  br i1 %i.bf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bg = add i32 %i.be, %1
  %i.bh = call i32 @tvb_get_letohl(ptr noundef nonnull %0, i32 noundef %i.bg)
  %i.bi = add i32 %.288.i, 7
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.389.i = phi i32 [ %i.bi, %bb.q ], [ %i.be, %bb.p ]
  %.181.i = phi i32 [ %i.bh, %bb.q ], [ %i.bd, %bb.p ] ; 2 uses
  %i.bj = add i32 %.181.i, -16777217
  %or.cond45 = icmp ult i32 %i.bj, -16777195
  br i1 %or.cond45, label %do_uncompress.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.r, %.thread, %.thread120.i, %bb.j
  %.4108.i = phi i32 [ %.181.i, %bb.r ], [ %i.ah, %bb.j ], [ %i.au, %.thread120.i ], [ %i.ba, %.thread ]
  %.284107.i = phi i32 [ %.183.i, %bb.r ], [ %.082.i.ph, %bb.j ], [ %.183.i, %.thread120.i ], [ %.183.i, %.thread ]
  %.6106.i = phi i32 [ %.389.i, %bb.r ], [ %i.ag, %bb.j ], [ %.288.i, %.thread120.i ], [ %i.ax, %.thread ]
  %i.bk = add nuw nsw i32 %.4108.i, 3             ; 5 uses
  %i.bl = call i32 @wmem_array_get_count(ptr noundef %i.h)
  %.not.i = icmp ult i32 %i.ai, %i.bl
  br i1 %.not.i, label %bb.s, label %do_uncompress.exit

bb.s:                                             ; preds = %.thread.i
  %i.bm = call zeroext i1 @wmem_array_grow(ptr noundef %i.h, i32 noundef %i.bk)
  br i1 %i.bm, label %.lr.ph.preheader.i, label %do_uncompress.exit

.lr.ph.preheader.i:                               ; preds = %bb.s
  %i.bn = udiv i32 %i.bk, %i.aj                   ; 2 uses
  %.not113.not.i = icmp samesign ult i32 %i.ai, %i.bk
  br i1 %.not113.not.i, label %.lr.ph.i, label %.lr.ph112.i.preheader

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %.lr.ph.i
  %.079109.i = phi i32 [ %i.bs, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %i.bo = call i32 @wmem_array_get_count(ptr noundef %i.h)
  %i.bp = sub i32 %i.bo, %i.aj
  %i.bq = call ptr @wmem_array_index(ptr noundef %i.h, i32 noundef %i.bp)
  %i.br = call zeroext i1 @wmem_array_append(ptr noundef %i.h, ptr noundef %i.bq, i32 noundef %i.aj) ; 0 uses
  %i.bs = add nuw i32 %.079109.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bs, %i.bn
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !6

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.bt = mul i32 %i.bn, %i.aj                    ; 2 uses
  %i.bu = icmp ult i32 %i.bt, %i.bk
  br i1 %i.bu, label %.lr.ph112.i.preheader, label %.preheader.outer.backedge

.lr.ph112.i.preheader:                            ; preds = %.lr.ph.preheader.i, %._crit_edge.i
  %.1110.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.bt, %._crit_edge.i ]
  br label %.lr.ph112.i

.lr.ph112.i:                                      ; preds = %.lr.ph112.i.preheader, %.lr.ph112.i
  %.1110.i = phi i32 [ %i.bz, %.lr.ph112.i ], [ %.1110.i.ph, %.lr.ph112.i.preheader ]
  %i.bv = call i32 @wmem_array_get_count(ptr noundef %i.h)
  %i.bw = sub i32 %i.bv, %i.aj
  %i.bx = call ptr @wmem_array_index(ptr noundef %i.h, i32 noundef %i.bw)
  %i.by = call zeroext i1 @wmem_array_append(ptr noundef %i.h, ptr noundef %i.bx, i32 noundef 1) ; 0 uses
  %i.bz = add i32 %.1110.i, 1                     ; 2 uses
  %exitcond116.not.i = icmp eq i32 %i.bz, %i.bk
  br i1 %exitcond116.not.i, label %.preheader.outer.backedge, label %.lr.ph112.i, !llvm.loop !8

do_uncompress.exit:                               ; preds = %bb.i, %bb.r, %.thread.i, %bb.s
  %i.ca = zext i1 %i.ac to i8
  store volatile i8 %i.ca, ptr %i.b, align 1
  br label %bb.t

bb.t:                                             ; preds = %do_uncompress.exit, %bb.e, %bb.d
  %.0..0..0..0.10 = load volatile i32, ptr %i.d, align 4
  %i.cb = icmp eq i32 %.0..0..0..0.10, 0
  br i1 %i.cb, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %.0..0..0..0.14 = load volatile ptr, ptr %i.c, align 8
  %.not38 = icmp eq ptr %.0..0..0..0.14, null
  br i1 %.not38, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.0..0..0..0.11 = load volatile i32, ptr %i.d, align 4
  %i.cc = or i32 %.0..0..0..0.11, 1
  store volatile i32 %i.cc, ptr %i.d, align 4
  store volatile i8 0, ptr %i.b, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.0..0..0..0.12 = load volatile i32, ptr %i.d, align 4
  %i.cd = and i32 %.0..0..0..0.12, 1
  %.not39 = icmp eq i32 %i.cd, 0
  br i1 %.not39, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %.0..0..0..0.15 = load volatile ptr, ptr %i.c, align 8
  %.not40 = icmp eq ptr %.0..0..0..0.15, null
  br i1 %.not40, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.0..0..0..0.16 = load volatile ptr, ptr %i.c, align 8
  call void @except_rethrow(ptr noundef %.0..0..0..0.16) #8
  unreachable

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.cf = load volatile ptr, ptr %i.ce, align 8
  call void @except_free(ptr noundef %i.cf)
  %i.cg = call ptr @except_pop()                  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.0..0..0..0.24 = load volatile i8, ptr %i.b, align 1, !range !9, !noundef !10
  %i.ch = trunc nuw i8 %.0..0..0..0.24 to i1
  br i1 %i.ch, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ci = call i32 @wmem_array_get_count(ptr noundef %i.h) ; 3 uses
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %i.ck = call noalias ptr @g_malloc(i64 noundef %i.cj) #9 ; 2 uses
  %i.cl = call ptr @wmem_array_get_raw(ptr noundef %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.ck, ptr noundef align 1 %i.cl, i64 noundef range(i64 0, 4294967296) %i.cj, i1 noundef false) #6
  %i.cm = call ptr @tvb_new_real_data(ptr noundef %i.ck, i32 noundef %i.ci, i32 noundef %i.ci) ; 2 uses
  call void @tvb_set_free_cb(ptr noundef %i.cm, ptr noundef nonnull @g_free)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.033 = phi ptr [ %i.cm, %bb.aa ], [ null, %bb.z ]
  call void @wmem_destroy_allocator(ptr noundef %i.f)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  %.0 = phi ptr [ null, %bb.a ], [ %.033, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
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
define noundef ptr @tvb_child_uncompress_lz77(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @tvb_uncompress_lz77(ptr noundef %1, i32 noundef %2, i32 noundef %3) ; 3 uses
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
declare i32 @tvb_get_letohl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wmem_array_append(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_letohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wmem_array_grow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_array_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind null_pointer_is_valid returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind returns_twice }
attributes #8 = { noreturn }
attributes #9 = { allocsize(0) }

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
!9 = !{i8 0, i8 2}
!10 = !{}
end_hunk_0
