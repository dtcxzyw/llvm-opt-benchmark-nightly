Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ares_dns_write?download=true
inline.NumInlined: 40
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @ares_dns_write_buf(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store ptr null, ptr %i.d, align 8, !tbaa !22
  %i.e = icmp eq ptr %0, null
  %i.f = icmp eq ptr %1, null
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @ares_buf_len(ptr noundef nonnull %1) #5
  %i.h = load i16, ptr %0, align 8, !tbaa !23
  %i.i = tail call i32 @ares_buf_append_be16(ptr noundef nonnull %1, i16 noundef zeroext %i.h) #5 ; 2 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.c, label %ares_dns_write_questions.exit.thread40

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %2 = load i16, ptr %i.j, align 2, !tbaa !24     ; 5 uses
  %3 = shl i16 %2, 15
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %5 = load i32, ptr %4, align 4, !tbaa !25
  %.tr.i = trunc i32 %5 to i16
  %6 = insertelement <4 x i16> poison, i16 %.tr.i, i64 0
  %7 = insertelement <4 x i16> %6, i16 %2, i64 1
  %8 = shufflevector <4 x i16> %7, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %9 = shl <4 x i16> %8, <i16 11, i16 9, i16 7, i16 5>
  %10 = and <4 x i16> %9, <i16 30720, i16 1024, i16 512, i16 256>
  %i.k = shl i16 %2, 3
  %i.l = and i16 %i.k, 128
  %11 = and i16 %2, 32
  %i.m = lshr i16 %2, 2
  %i.n = and i16 %i.m, 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !12   ; 2 uses
  %i.q = icmp ugt i32 %i.p, 15
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = tail call ptr @ares_dns_get_opt_rr_const(ptr noundef nonnull %0) #5
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre.i = load i32, ptr %i.o, align 8, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %bb.c
  %i.t = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.p, %bb.c ]
  %i.u = trunc i32 %i.t to i16
  %i.v = and i16 %i.u, 15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i16 [ %i.v, %bb.e ], [ 2, %bb.d ]
  %i.w = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %10)
  %op.rdx = or disjoint i16 %i.w, %i.l
  %op.rdx64.a = or disjoint i16 %11, %i.n
  %op.rdx65.a = or disjoint i16 %.0.i, %3
  %op.rdx66.a = or disjoint i16 %op.rdx, %op.rdx64.a
  %op.rdx67 = or disjoint i16 %op.rdx66.a, %op.rdx65.a
  %i.x = tail call i32 @ares_buf_append_be16(ptr noundef nonnull %1, i16 noundef zeroext %op.rdx67) #5 ; 2 uses
  %.not62.i = icmp eq i32 %i.x, 0
  br i1 %.not62.i, label %bb.g, label %ares_dns_write_questions.exit.thread40

bb.g:                                             ; preds = %bb.f
  %i.y = tail call i64 @ares_dns_record_query_cnt(ptr noundef nonnull %0) #5
  %i.z = trunc i64 %i.y to i16
  %i.aa = tail call i32 @ares_buf_append_be16(ptr noundef nonnull %1, i16 noundef zeroext %i.z) #5 ; 2 uses
  %.not63.i = icmp eq i32 %i.aa, 0
  br i1 %.not63.i, label %bb.h, label %ares_dns_write_questions.exit.thread40

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call i64 @ares_dns_record_rr_cnt(ptr noundef nonnull %0, i32 noundef 1) #5
  %i.ac = trunc i64 %i.ab to i16
  %i.ad = tail call i32 @ares_buf_append_be16(ptr noundef nonnull %1, i16 noundef zeroext %i.ac) #5 ; 2 uses
  %.not64.i = icmp eq i32 %i.ad, 0
  br i1 %.not64.i, label %bb.i, label %ares_dns_write_questions.exit.thread40

bb.i:                                             ; preds = %bb.h
  %i.ae = tail call i64 @ares_dns_record_rr_cnt(ptr noundef nonnull %0, i32 noundef 2) #5
  %i.af = trunc i64 %i.ae to i16
  %i.ag = tail call i32 @ares_buf_append_be16(ptr noundef nonnull %1, i16 noundef zeroext %i.af) #5 ; 2 uses
  %.not65.i = icmp eq i32 %i.ag, 0
  br i1 %.not65.i, label %ares_dns_write_header.exit, label %ares_dns_write_questions.exit.thread40

ares_dns_write_header.exit:                       ; preds = %bb.i
  %i.ah = tail call i64 @ares_dns_record_rr_cnt(ptr noundef nonnull %0, i32 noundef 3) #5
  %i.ai = trunc i64 %i.ah to i16
  %i.aj = tail call i32 @ares_buf_append_be16(ptr noundef nonnull %1, i16 noundef zeroext %i.ai) #5 ; 2 uses
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %bb.j, label %ares_dns_write_questions.exit.thread40

bb.j:                                             ; preds = %ares_dns_write_header.exit
  %i.ak = tail call i64 @ares_dns_record_query_cnt(ptr noundef nonnull %0) #5
  %.not32.i = icmp eq i64 %i.ak, 0
  br i1 %.not32.i, label %.loopexit, label %.lr.ph.i

bb.k:                                             ; preds = %bb.n
  %i.al = add nuw i64 %.01829.i, 1                ; 2 uses
  %i.am = call i64 @ares_dns_record_query_cnt(ptr noundef nonnull %0) #5
  %i.an = icmp ult i64 %i.al, %i.am
  br i1 %i.an, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.j, %bb.k
  %.01829.i = phi i64 [ %i.al, %bb.k ], [ 0, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.ao = call i32 @ares_dns_record_query_get(ptr noundef nonnull %0, i64 noundef %.01829.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #5 ; 2 uses
  %.not.i33 = icmp eq i32 %i.ao, 0
  br i1 %.not.i33, label %bb.l, label %.thread.i

bb.l:                                             ; preds = %.lr.ph.i
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.aq = call i32 @ares_dns_name_write(ptr noundef nonnull %1, ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef %i.ap) #5 ; 2 uses
  %.not24.i = icmp eq i32 %i.aq, 0
  br i1 %.not24.i, label %bb.m, label %.thread.i

bb.m:                                             ; preds = %bb.l
  %i.ar = load i32, ptr %i.b, align 4, !tbaa !26
  %i.as = trunc i32 %i.ar to i16
  %i.at = call i32 @ares_buf_append_be16(ptr noundef nonnull %1, i16 noundef zeroext %i.as) #5 ; 2 uses
  %.not25.i = icmp eq i32 %i.at, 0
  br i1 %.not25.i, label %bb.n, label %.thread.i

.thread.i:                                        ; preds = %bb.m, %bb.l, %.lr.ph.i
  %.1.ph.i = phi i32 [ %i.aq, %bb.l ], [ %i.ao, %.lr.ph.i ], [ %i.at, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %ares_dns_write_questions.exit.thread40

bb.n:                                             ; preds = %bb.m
  %i.au = load i32, ptr %i.c, align 4, !tbaa !26
  %i.av = trunc i32 %i.au to i16
  %i.aw = call i32 @ares_buf_append_be16(ptr noundef nonnull %1, i16 noundef zeroext %i.av) #5 ; 2 uses
  %.not26.i = icmp eq i32 %i.aw, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br i1 %.not26.i, label %bb.k, label %ares_dns_write_questions.exit.thread40

.loopexit:                                        ; preds = %bb.k, %bb.j
  %i.ax = call fastcc i32 @ares_dns_write_rr(ptr noundef %0, ptr noundef %i.d, i32 noundef 1, ptr noundef %1) ; 2 uses
  %.not30 = icmp eq i32 %i.ax, 0
  br i1 %.not30, label %bb.o, label %ares_dns_write_questions.exit.thread40

bb.o:                                             ; preds = %.loopexit
  %i.ay = call fastcc i32 @ares_dns_write_rr(ptr noundef %0, ptr noundef %i.d, i32 noundef 2, ptr noundef %1) ; 2 uses
  %.not31 = icmp eq i32 %i.ay, 0
  br i1 %.not31, label %ares_dns_write_questions.exit, label %ares_dns_write_questions.exit.thread40

ares_dns_write_questions.exit.thread40:           ; preds = %bb.n, %ares_dns_write_header.exit, %.loopexit, %bb.o, %.thread.i, %bb.i, %bb.b, %bb.f, %bb.g, %bb.h
  %.0.ph = phi i32 [ %i.ag, %bb.i ], [ %.1.ph.i, %.thread.i ], [ %i.ay, %bb.o ], [ %i.ax, %.loopexit ], [ %i.aj, %ares_dns_write_header.exit ], [ %i.ad, %bb.h ], [ %i.aa, %bb.g ], [ %i.x, %bb.f ], [ %i.i, %bb.b ], [ %i.aw, %bb.n ]
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !22
  call void @ares_llist_destroy(ptr noundef %i.az) #5
  br label %bb.p

ares_dns_write_questions.exit:                    ; preds = %bb.o
  %i.ba = call fastcc i32 @ares_dns_write_rr(ptr noundef %0, ptr noundef %i.d, i32 noundef 3, ptr noundef %1) ; 2 uses
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !22
  call void @ares_llist_destroy(ptr noundef %i.bb) #5
  %.not32 = icmp eq i32 %i.ba, 0
  br i1 %.not32, label %bb.q, label %bb.p

bb.p:                                             ; preds = %ares_dns_write_questions.exit.thread40, %ares_dns_write_questions.exit
  %.043 = phi i32 [ %.0.ph, %ares_dns_write_questions.exit.thread40 ], [ %i.ba, %ares_dns_write_questions.exit ]
  %i.bc = call i32 @ares_buf_set_length(ptr noundef nonnull %1, i64 noundef %i.g) #5 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %ares_dns_write_questions.exit, %bb.p, %bb.a
  %.022 = phi i32 [ 2, %bb.a ], [ %.043, %bb.p ], [ 0, %ares_dns_write_questions.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  ret i32 %.022
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @ares_buf_len(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ares_dns_write_rr(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef range(i32 1, 4) %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @ares_dns_record_rr_cnt(ptr noundef nonnull %0, i32 noundef %2) #5
  %.not170 = icmp eq i64 %i.a, 0
  br i1 %.not170, label %.thread145, label %.lr.ph

bb.b:                                             ; preds = %bb.ad
  %i.b = add nuw i64 %.0117148, 1                 ; 2 uses
  %i.c = tail call i64 @ares_dns_record_rr_cnt(ptr noundef nonnull %0, i32 noundef %2) #5
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %.lr.ph, label %.thread145

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0117148 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = tail call ptr @ares_dns_record_rr_get_const(ptr noundef nonnull %0, i32 noundef %2, i64 noundef %.0117148) #5 ; 25 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread145, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.g = tail call i32 @ares_dns_rr_get_type(ptr noundef nonnull %i.e) #5 ; 3 uses
  %i.h = tail call i32 @ares_dns_rec_allow_name_comp(i32 noundef %i.g) #5
  %.not = icmp eq i32 %i.h, 0
  %spec.select = select i1 %.not, ptr null, ptr %1 ; 10 uses
  %i.i = tail call ptr @ares_dns_rr_get_name(ptr noundef nonnull %i.e) #5
  %i.j = tail call i32 @ares_dns_name_write(ptr noundef nonnull %3, ptr noundef nonnull %1, i32 noundef 1, ptr noundef %i.i) #5 ; 2 uses
  %.not131 = icmp eq i32 %i.j, 0
  br i1 %.not131, label %bb.d, label %.thread145

bb.d:                                             ; preds = %bb.c
  %i.k = trunc i32 %i.g to i16
  %i.l = tail call i32 @ares_buf_append_be16(ptr noundef nonnull %3, i16 noundef zeroext %i.k) #5 ; 2 uses
  %.not132 = icmp eq i32 %i.l, 0
  br i1 %.not132, label %bb.e, label %.thread145

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @ares_dns_rr_get_class(ptr noundef nonnull %i.e) #5
  %i.n = trunc i32 %i.m to i16
  %i.o = tail call i32 @ares_buf_append_be16(ptr noundef nonnull %3, i16 noundef zeroext %i.n) #5 ; 2 uses
  %.not133 = icmp eq i32 %i.o, 0
  br i1 %.not133, label %bb.f, label %.thread145

bb.f:                                             ; preds = %bb.e
  %i.p = tail call i32 @ares_dns_rr_get_ttl(ptr noundef nonnull %i.e) #5
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !18
  %.0114 = tail call i32 @llvm.usub.sat.i32(i32 %i.p, i32 %i.s)
  %i.t = tail call i32 @ares_buf_append_be32(ptr noundef nonnull %3, i32 noundef %.0114) #5 ; 2 uses
  %.not134 = icmp eq i32 %i.t, 0
  br i1 %.not134, label %bb.g, label %.thread145

bb.g:                                             ; preds = %bb.f
  %i.u = tail call i64 @ares_buf_len(ptr noundef nonnull %3) #5 ; 2 uses
  %i.v = tail call i32 @ares_buf_append_be16(ptr noundef nonnull %3, i16 noundef zeroext 0) #5 ; 2 uses
  %.not135 = icmp eq i32 %i.v, 0
  br i1 %.not135, label %bb.h, label %.thread145

bb.h:                                             ; preds = %bb.g
  switch i32 %i.g, label %.thread [
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
    i32 12, label %bb.m
    i32 13, label %bb.n
    i32 15, label %bb.o
    i32 16, label %bb.p
    i32 24, label %bb.q
    i32 28, label %bb.r
    i32 33, label %bb.s
    i32 35, label %bb.t
    i32 255, label %.thread145
    i32 41, label %bb.u
    i32 52, label %bb.v
    i32 64, label %bb.w
    i32 65, label %bb.x
    i32 256, label %bb.y
end_hunk_0
begin_hunk_1_@ares_dns_write_rr_raw_rr:bb.a
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %ares_dns_write_rr_be16.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, -10
  %i.e = tail call i32 @ares_buf_set_length(ptr noundef nonnull %0, i64 noundef %i.d) #5 ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %ares_dns_write_rr_be16.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @ares_dns_rr_key_datatype(i32 noundef 6553601) #5
  %.not.i = icmp eq i32 %i.f, 4
  br i1 %.not.i, label %ares_dns_write_rr_be16.exit, label %ares_dns_write_rr_be16.exit.thread

ares_dns_write_rr_be16.exit:                      ; preds = %bb.c
  %i.g = tail call zeroext i16 @ares_dns_rr_get_u16(ptr noundef nonnull %1, i32 noundef 6553601) #5
  %i.h = tail call i32 @ares_buf_append_be16(ptr noundef nonnull %0, i16 noundef zeroext %i.g) #5 ; 2 uses
  %.not24 = icmp eq i32 %i.h, 0
  br i1 %.not24, label %bb.d, label %ares_dns_write_rr_be16.exit.thread

bb.d:                                             ; preds = %ares_dns_write_rr_be16.exit
  %i.i = tail call i32 @ares_buf_set_length(ptr noundef nonnull %0, i64 noundef %i.b) #5 ; 2 uses
  %.not25 = icmp eq i32 %i.i, 0
  br i1 %.not25, label %bb.e, label %ares_dns_write_rr_be16.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.j = call ptr @ares_dns_rr_get_bin(ptr noundef nonnull %1, i32 noundef 6553602, ptr noundef nonnull %i.a) #5 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %ares_dns_write_rr_be16.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i64, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %ares_dns_write_rr_be16.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = call i32 @ares_buf_append(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i64 noundef %i.l) #5
  br label %ares_dns_write_rr_be16.exit.thread

ares_dns_write_rr_be16.exit.thread:               ; preds = %bb.c, %bb.f, %bb.e, %bb.d, %ares_dns_write_rr_be16.exit, %bb.b, %bb.a, %bb.g
  %.0 = phi i32 [ %i.n, %bb.g ], [ 2, %bb.a ], [ %i.e, %bb.b ], [ %i.h, %ares_dns_write_rr_be16.exit ], [ %i.i, %bb.d ], [ 2, %bb.e ], [ 0, %bb.f ], [ 2, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

declare ptr @ares_dns_rr_get_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ares_buf_append(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ares_dns_write_rr_name(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef range(i32 201, 6503) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @ares_dns_rr_get_str(ptr noundef nonnull %1, i32 noundef %3) #5 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @ares_dns_name_write(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 0, ptr noundef nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 2, %bb.a ]
  ret i32 %.0
}

declare ptr @ares_dns_rr_get_str(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ares_dns_write_rr_be32(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef range(i32 603, 2407) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ares_dns_rr_key_datatype(i32 noundef %2) #5
  %.not = icmp eq i32 %i.a, 5
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @ares_dns_rr_get_u32(ptr noundef nonnull %1, i32 noundef %2) #5
  %i.c = tail call i32 @ares_buf_append_be32(ptr noundef nonnull %0, i32 noundef %i.b) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 2, %bb.a ]
  ret i32 %.0
}

declare i32 @ares_dns_rr_key_datatype(i32 noundef) local_unnamed_addr #2

declare i32 @ares_dns_rr_get_u32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ares_dns_write_rr_str(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef range(i32 1301, 25703) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @ares_dns_rr_get_str(ptr noundef nonnull %1, i32 noundef %2) #5 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @ares_strlen(ptr noundef nonnull %i.a) #5 ; 4 uses
  %i.d = icmp ugt i64 %i.c, 255
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = trunc nuw i64 %i.c to i8
  %i.f = tail call i32 @ares_buf_append_byte(ptr noundef nonnull %0, i8 noundef zeroext %i.e) #5 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i64 %i.c, 0
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @ares_buf_append(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %i.c) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.e
  %.0 = phi i32 [ %i.h, %bb.e ], [ 2, %bb.a ], [ 2, %bb.b ], [ %i.f, %bb.c ], [ 0, %bb.d ]
  ret i32 %.0
}

declare i64 @ares_strlen(ptr noundef) local_unnamed_addr #2

declare i32 @ares_buf_append_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ares_dns_write_rr_be16(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef range(i32 1501, 6553602) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ares_dns_rr_key_datatype(i32 noundef %2) #5
  %.not = icmp eq i32 %i.a, 4
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i16 @ares_dns_rr_get_u16(ptr noundef nonnull %1, i32 noundef %2) #5
  %i.c = tail call i32 @ares_buf_append_be16(ptr noundef nonnull %0, i16 noundef zeroext %i.b) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 2, %bb.a ]
  ret i32 %.0
}

declare zeroext i16 @ares_dns_rr_get_u16(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @ares_dns_rr_get_abin_cnt(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ares_dns_rr_get_abin(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ares_dns_rr_get_bin(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ares_dns_rr_get_u8(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ares_dns_rr_get_addr6(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @ares_dns_rr_get_opt_cnt(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i16 @ares_dns_rr_get_opt(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v4i16(<4 x i16>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"short", !4, i64 0}
!10 = !{!"p1 _ZTS10ares_array", !8, i64 0}
!11 = !{!"ares_dns_record", !9, i64 0, !9, i64 2, !5, i64 4, !5, i64 8, !9, i64 12, !5, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!12 = !{!11, !5, i64 8}
!13 = !{!"p1 omnipotent char", !8, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"p1 _ZTS15ares_dns_record", !8, i64 0}
!16 = !{!"ares_dns_rr", !15, i64 0, !13, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !4, i64 32}
!17 = !{!16, !15, i64 0}
!18 = !{!11, !5, i64 16}
!19 = !{!"long", !4, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"p1 _ZTS10ares_llist", !8, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!11, !9, i64 0}
!24 = !{!11, !9, i64 2}
!25 = !{!11, !5, i64 4}
!26 = !{!5, !5, i64 0}
end_hunk_1
