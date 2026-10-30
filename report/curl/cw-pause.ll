Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/cw-pause?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Curl_cwtype = type { ptr, ptr, ptr, ptr, ptr, i64 }
%struct.curl_trc_feat = type { ptr, i32 }

@.str = private unnamed_addr constant [9 x i8] c"cw-pause\00", align 1
@Curl_cwt_pause = constant %struct.Curl_cwtype { ptr @.str, ptr null, ptr @cw_pause_init, ptr @cw_pause_write, ptr @cw_pause_close, i64 48 }, align 8
@Curl_trc_feat_write = external local_unnamed_addr global %struct.curl_trc_feat, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"[PAUSE] writing %zu/%zu bytes of type %x -> %d\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"[PAUSE] buffer %zu more bytes of type %x, total=%zu -> %d\00", align 1
@Curl_ccalloc = external local_unnamed_addr global ptr, align 8
@Curl_cfree = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"[PAUSE] flushed %zu/%zu bytes, type=%x -> %d\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"[PAUSE] flushed 0/%zu bytes, type=%x -> %d\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @cw_pause_init(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.c, align 8, !tbaa !16
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @cw_pause_write(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.d = tail call zeroext i1 @Curl_cwriter_is_content_decoding(ptr noundef %0) #5
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.lr.ph, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call zeroext i1 @Curl_cwriter_is_paused(ptr noundef %0) #5
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call fastcc i32 @cw_pause_flush(ptr noundef %0, ptr noundef nonnull %1) ; 2 uses
  %.not115 = icmp eq i32 %i.h, 0
  br i1 %.not115, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pr = load ptr, ptr %i.e, align 8, !tbaa !16
  %.not116154 = icmp eq ptr %.pr, null
  br i1 %.not116154, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.not117 = trunc i32 %2 to i1
  %.fr = freeze i1 %i.d
  %or.cond133.not = and i1 %.fr, %.not117         ; 2 uses
  %i.i = and i32 %2, -129                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.not118 = icmp eq ptr %0, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2187 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4504 ; 2 uses
  br i1 %.not118, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.m = tail call zeroext i1 @Curl_cwriter_is_paused(ptr noundef null) #5
  br i1 %i.m, label %.critedge, label %.lr.ph201

bb.e:                                             ; preds = %bb.f
  %i.n = tail call zeroext i1 @Curl_cwriter_is_paused(ptr noundef null) #5
  br i1 %i.n, label %.critedge, label %.lr.ph201, !llvm.loop !88

bb.f:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.092156.us199, i64 %i.r ; 3 uses
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !16
  %.not116.us = icmp eq ptr %i.p, null
  br i1 %.not116.us, label %bb.e, label %.critedge, !llvm.loop !88

.lr.ph201:                                        ; preds = %.lr.ph.split.us, %bb.e
  %.092156.us199 = phi ptr [ %i.o, %bb.e ], [ %3, %.lr.ph.split.us ] ; 2 uses
  %.088157.us198 = phi i64 [ %i.v, %bb.e ], [ %4, %.lr.ph.split.us ] ; 4 uses
  %i.q = tail call i64 @llvm.umin.i64(i64 %.088157.us198, i64 4096)
  %i.r = select i1 %or.cond133.not, i64 %i.q, i64 %.088157.us198 ; 6 uses
  %i.s = icmp ult i64 %i.r, %.088157.us198
  %.0.us = select i1 %i.s, i32 %i.i, i32 %2
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.u = tail call i32 @Curl_cwriter_write(ptr noundef null, ptr noundef %i.t, i32 noundef %.0.us, ptr noundef %.092156.us199, i64 noundef %i.r) #5 ; 2 uses
  %.not121.us = icmp eq i32 %i.u, 0
  br i1 %.not121.us, label %bb.g, label %.thread

bb.g:                                             ; preds = %.lr.ph201
  %i.v = sub i64 %.088157.us198, %i.r             ; 4 uses
  %.not122.not.us = icmp eq i64 %i.v, 0
  br i1 %.not122.not.us, label %.thread, label %bb.f, !llvm.loop !88

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.w = tail call zeroext i1 @Curl_cwriter_is_paused(ptr noundef nonnull %0) #5
  br i1 %i.w, label %.critedge, label %.lr.ph174

.lr.ph174:                                        ; preds = %.lr.ph.split
  br i1 %or.cond133.not, label %.lr.ph174.split.us, label %.lr.ph174.split

.lr.ph174.split.us:                               ; preds = %.lr.ph174, %bb.h
  %.092156172.us = phi ptr [ %i.ak, %bb.h ], [ %3, %.lr.ph174 ] ; 2 uses
  %.088157171.us = phi i64 [ %i.al, %bb.h ], [ %4, %.lr.ph174 ] ; 4 uses
  %i.x = tail call i64 @llvm.umin.i64(i64 %.088157171.us, i64 4096) ; 6 uses
  %i.y = icmp ugt i64 %.088157171.us, 4096
  %.0.us186 = select i1 %i.y, i32 %i.i, i32 %2    ; 2 uses
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.aa = tail call i32 @Curl_cwriter_write(ptr noundef nonnull %0, ptr noundef %i.z, i32 noundef %.0.us186, ptr noundef %.092156172.us, i64 noundef %i.x) #5 ; 3 uses
  %i.ab = load i64, ptr %i.k, align 1
  %i.ac = and i64 %i.ab, 536870912
  %.not119.us = icmp eq i64 %i.ac, 0
  br i1 %.not119.us, label %bb.m, label %bb.i

bb.h:                                             ; preds = %bb.o
  %i.ad = tail call zeroext i1 @Curl_cwriter_is_paused(ptr noundef nonnull %0) #5
  br i1 %i.ad, label %.critedge, label %.lr.ph174.split.us, !llvm.loop !88

bb.i:                                             ; preds = %.lr.ph174.split.us
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !79  ; 2 uses
  %.not120.us = icmp eq ptr %i.ae, null
  br i1 %.not120.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !81
  %i.ah = icmp sgt i32 %i.ag, 0
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_write, i64 8), align 8
  %i.aj = icmp sgt i32 %i.ai, 0
  %or.cond.us = select i1 %i.ah, i1 %i.aj, i1 false
  br i1 %or.cond.us, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.i
  %.old.us = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_write, i64 8), align 8, !tbaa !81
  %.old3.us = icmp sgt i32 %.old.us, 0
  br i1 %.old3.us, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void (ptr, ptr, ...) @Curl_trc_write(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i64 noundef %i.x, i64 noundef %.088157171.us, i32 noundef %.0.us186, i32 noundef %i.aa) #5
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph174.split.us, %bb.l, %bb.k, %bb.j
  %.not121.us182 = icmp eq i32 %i.aa, 0
  br i1 %.not121.us182, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %.092156172.us, i64 %i.x ; 3 uses
  %i.al = sub i64 %.088157171.us, %i.x            ; 4 uses
  %.not122.not.us183 = icmp eq i64 %i.al, 0
  br i1 %.not122.not.us183, label %.thread, label %bb.o, !llvm.loop !88

bb.o:                                             ; preds = %bb.n
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !16
  %.not116.us185 = icmp eq ptr %i.am, null
  br i1 %.not116.us185, label %bb.h, label %.critedge, !llvm.loop !88

.lr.ph174.split:                                  ; preds = %.lr.ph174
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.ao = tail call i32 @Curl_cwriter_write(ptr noundef nonnull %0, ptr noundef %i.an, i32 noundef %2, ptr noundef %3, i64 noundef %4) #5 ; 5 uses
  %i.ap = load i64, ptr %i.k, align 1
  %i.aq = and i64 %i.ap, 536870912
  %.not119 = icmp eq i64 %i.aq, 0
  br i1 %.not119, label %.thread, label %bb.p

bb.p:                                             ; preds = %.lr.ph174.split
  %i.ar = load ptr, ptr %i.l, align 8, !tbaa !79  ; 2 uses
  %.not120 = icmp eq ptr %i.ar, null
  br i1 %.not120, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !81
  %i.au = icmp sgt i32 %i.at, 0
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_write, i64 8), align 8
  %i.aw = icmp sgt i32 %i.av, 0
  %or.cond = select i1 %i.au, i1 %i.aw, i1 false
  br i1 %or.cond, label %bb.s, label %.thread

bb.r:                                             ; preds = %bb.p
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_write, i64 8), align 8, !tbaa !81
  %.old3 = icmp sgt i32 %.old, 0
  br i1 %.old3, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.q, %bb.r
  tail call void (ptr, ptr, ...) @Curl_trc_write(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i64 noundef %4, i64 noundef %4, i32 noundef %2, i32 noundef %i.ao) #5
  br label %.thread

.critedge:                                        ; preds = %bb.h, %bb.o, %bb.e, %bb.f, %.lr.ph.split.us, %.lr.ph.split, %bb.d
  %.092.lcssa = phi ptr [ %3, %bb.d ], [ %3, %.lr.ph.split.us ], [ %3, %.lr.ph.split ], [ %i.o, %bb.e ], [ %i.o, %bb.f ], [ %i.ak, %bb.o ], [ %i.ak, %bb.h ]
  %.088.lcssa = phi i64 [ %4, %bb.d ], [ %4, %.lr.ph.split.us ], [ %4, %.lr.ph.split ], [ %i.v, %bb.e ], [ %i.v, %bb.f ], [ %i.al, %bb.o ], [ %i.al, %bb.h ]
  %.084.lcssa = phi i64 [ 0, %bb.d ], [ 0, %.lr.ph.split.us ], [ 0, %.lr.ph.split ], [ %i.r, %bb.e ], [ %i.r, %bb.f ], [ %i.x, %bb.o ], [ %i.x, %bb.h ]
  %i.ax = and i32 %2, 1
  %.not124 = icmp eq i32 %i.ax, 0                 ; 2 uses
  %.not126 = icmp eq ptr %0, null
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.ah, %.critedge
  %.294 = phi ptr [ %.092.lcssa, %.critedge ], [ %i.by, %bb.ah ] ; 2 uses
  %.290 = phi i64 [ %.088.lcssa, %.critedge ], [ %i.bz, %bb.ah ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !82
  %i.bb = load ptr, ptr %i.e, align 8, !tbaa !16  ; 3 uses
  %.not123 = icmp eq ptr %i.bb, null
  br i1 %.not123, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !84
  %i.be = icmp ne i32 %i.bd, %2
  %or.cond136 = or i1 %.not124, %i.be
  br i1 %or.cond136, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  br label %bb.aa

bb.w:                                             ; preds = %bb.u, %bb.t
  %i.bg = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !85
  %i.bh = call ptr %i.bg(i64 noundef 1, i64 noundef 80) #5, !inline_history !89 ; 5 uses
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %.thread144, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  store i32 %2, ptr %i.bi, align 8, !tbaa !84
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 3 uses
  br i1 %.not124, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @Curl_bufq_init2(ptr noundef nonnull %i.bj, i64 noundef 16384, i64 noundef 1, i32 noundef 3) #5
  br label %cw_pause_buf_create.exit

bb.z:                                             ; preds = %bb.x
  call void @Curl_bufq_init(ptr noundef nonnull %i.bj, i64 noundef %.290, i64 noundef 1) #5
  br label %cw_pause_buf_create.exit

cw_pause_buf_create.exit:                         ; preds = %bb.z, %bb.y
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !16
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !86
  store ptr %i.bh, ptr %i.e, align 8, !tbaa !16
  br label %bb.aa

bb.aa:                                            ; preds = %cw_pause_buf_create.exit, %bb.v
  %.sink = phi ptr [ %i.bj, %cw_pause_buf_create.exit ], [ %i.bf, %bb.v ]
  %i.bl = call i32 @Curl_bufq_cwrite(ptr noundef nonnull %.sink, ptr noundef %.294, i64 noundef %.290, ptr noundef nonnull %i.a) #5 ; 3 uses
  br i1 %.not126, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bm = load i64, ptr %i.ay, align 1
  %i.bn = and i64 %i.bm, 536870912
  %.not127 = icmp eq i64 %i.bn, 0
  br i1 %.not127, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bo = load ptr, ptr %i.az, align 8, !tbaa !79 ; 2 uses
  %.not128 = icmp eq ptr %i.bo, null
  br i1 %.not128, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !81
  %i.br = icmp sgt i32 %i.bq, 0
  %i.bs = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_write, i64 8), align 8
  %i.bt = icmp sgt i32 %i.bs, 0
  %or.cond6 = select i1 %i.br, i1 %i.bt, i1 false
  br i1 %or.cond6, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %.old4 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_write, i64 8), align 8, !tbaa !81
  %.old5 = icmp sgt i32 %.old4, 0
  br i1 %.old5, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !82
  %i.bv = load i64, ptr %i.ba, align 8, !tbaa !87
  %i.bw = add i64 %i.bv, %.084.lcssa
  call void (ptr, ptr, ...) @Curl_trc_write(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, i64 noundef %i.bu, i32 noundef %2, i64 noundef %i.bw, i32 noundef %i.bl) #5
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ab, %bb.aa
  %.not129 = icmp eq i32 %i.bl, 0
  br i1 %.not129, label %bb.ah, label %.thread144

.thread144:                                       ; preds = %bb.ag, %bb.w
  %.5101.ph = phi i32 [ %i.bl, %bb.ag ], [ 27, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %.thread

bb.ah:                                            ; preds = %bb.ag
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !82  ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.294, i64 %i.bx
  %i.bz = sub i64 %.290, %i.bx                    ; 2 uses
  %i.ca = load i64, ptr %i.ba, align 8, !tbaa !87
  %i.cb = add i64 %i.ca, %i.bx
  store i64 %i.cb, ptr %i.ba, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %.not130 = icmp eq i64 %i.bz, 0
  br i1 %.not130, label %.thread, label %bb.t, !llvm.loop !90

.thread:                                          ; preds = %bb.m, %bb.n, %bb.g, %.lr.ph201, %bb.ah, %.lr.ph174.split, %bb.q, %bb.r, %bb.s, %.thread144, %bb.c
  %.6 = phi i32 [ %i.h, %bb.c ], [ %.5101.ph, %.thread144 ], [ 0, %bb.g ], [ 0, %bb.ah ], [ %i.ao, %.lr.ph174.split ], [ %i.ao, %bb.s ], [ %i.ao, %bb.r ], [ %i.ao, %bb.q ], [ %i.u, %.lr.ph201 ], [ 0, %bb.n ], [ %i.aa, %bb.m ]
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define internal void @cw_pause_close(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %.not5.i = icmp eq ptr %i.d, null
  br i1 %.not5.i, label %cw_pause_bufs_free.exit, label %cw_pause_buf_free.exit.i

cw_pause_buf_free.exit.i:                         ; preds = %bb.a, %cw_pause_buf_free.exit.i
  %i.e = phi ptr [ %i.f, %cw_pause_buf_free.exit.i ], [ %i.d, %bb.a ] ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @Curl_bufq_free(ptr noundef nonnull %i.g) #5
  %i.h = load ptr, ptr @Curl_cfree, align 8, !tbaa !85
  tail call void %i.h(ptr noundef nonnull %i.e) #5, !inline_history !91
  store ptr %i.f, ptr %i.c, align 8, !tbaa !16
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %cw_pause_bufs_free.exit, label %cw_pause_buf_free.exit.i, !llvm.loop !92

cw_pause_bufs_free.exit:                          ; preds = %cw_pause_buf_free.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Curl_cw_pause_flush(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @Curl_cwriter_get_by_type(ptr noundef %0, ptr noundef nonnull @Curl_cwt_pause) #5 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @cw_pause_flush(ptr noundef %0, ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @Curl_cwriter_get_by_type(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cw_pause_flush(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = tail call zeroext i1 @Curl_cwriter_is_content_decoding(ptr noundef %0) #5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %.not76 = icmp eq ptr %i.e, null
  br i1 %.not76, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not63 = icmp eq ptr %0, null                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2187 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4504 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.v
  %.05177 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.v ] ; 2 uses
  %i.j = call zeroext i1 @Curl_cwriter_is_paused(ptr noundef %0) #5
  br i1 %i.j, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store ptr null, ptr %i.b, align 8, !tbaa !96
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !97
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %.pre, %bb.c ], [ %i.l, %bb.d ] ; 3 uses
  %.050 = phi ptr [ %i.d, %bb.c ], [ %i.k, %bb.d ] ; 7 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !86   ; 2 uses
  %.not61 = icmp eq ptr %i.l, null
  br i1 %.not61, label %bb.e, label %bb.d, !llvm.loop !93

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = call zeroext i1 @Curl_bufq_peek(ptr noundef nonnull %i.m, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #5
  %.pre81.pre = load ptr, ptr %.050, align 8, !tbaa !97
  %i.o = getelementptr inbounds nuw i8, ptr %.pre81.pre, i64 72
  %i.p = load i32, ptr %i.o, align 8, !tbaa !84   ; 4 uses
  br i1 %i.n, label %._crit_edge, label %bb.l

._crit_edge:                                      ; preds = %bb.e
  %.not66 = trunc i32 %i.p to i1
  %or.cond92.not = select i1 %i.c, i1 %.not66, i1 false
  %i.q = load i64, ptr %i.a, align 8, !tbaa !82   ; 2 uses
  %i.r = call i64 @llvm.umin.i64(i64 %i.q, i64 4096)
  %i.s = select i1 %or.cond92.not, i64 %i.r, i64 %i.q ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.v = call i32 @Curl_cwriter_write(ptr noundef %0, ptr noundef %i.t, i32 noundef %i.p, ptr noundef %i.u, i64 noundef %i.s) #5 ; 3 uses
  br i1 %.not63, label %bb.k, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.w = load i64, ptr %i.g, align 1
  %i.x = and i64 %i.w, 536870912
  %.not68 = icmp eq i64 %i.x, 0
  br i1 %.not68, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !79   ; 2 uses
  %.not69 = icmp eq ptr %i.y, null
  br i1 %.not69, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !81
  %i.ab = icmp sgt i32 %i.aa, 0
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_write, i64 8), align 8
  %i.ad = icmp sgt i32 %i.ac, 0
  %or.cond = select i1 %i.ab, i1 %i.ad, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_write, i64 8), align 8, !tbaa !81
  %.old1 = icmp sgt i32 %.old, 0
  br i1 %.old1, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ae = load i64, ptr %i.i, align 8, !tbaa !87
  %i.af = load ptr, ptr %.050, align 8, !tbaa !97
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !84
  call void (ptr, ptr, ...) @Curl_trc_write(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, i64 noundef %i.s, i64 noundef %i.ae, i32 noundef %i.ah, i32 noundef %i.v) #5
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %._crit_edge
  %i.ai = load ptr, ptr %.050, align 8, !tbaa !97
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  call void @Curl_bufq_skip(ptr noundef nonnull %i.aj, i64 noundef %i.s) #5
  %i.ak = load i64, ptr %i.i, align 8, !tbaa !87
  %i.al = sub i64 %i.ak, %i.s
  store i64 %i.al, ptr %i.i, align 8, !tbaa !87
  %.not70 = icmp eq i32 %i.v, 0
  br i1 %.not70, label %bb.s, label %.thread

.thread:                                          ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %.critedge

bb.l:                                             ; preds = %bb.e
  %i.am = and i32 %i.p, 128
  %.not62 = icmp eq i32 %i.am, 0
  br i1 %.not62, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.ap = call i32 @Curl_cwriter_write(ptr noundef %0, ptr noundef %i.an, i32 noundef %i.p, ptr noundef %i.ao, i64 noundef 0) #5 ; 6 uses
  br i1 %.not63, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = load i64, ptr %i.g, align 1
  %i.ar = and i64 %i.aq, 536870912
  %.not64 = icmp eq i64 %i.ar, 0
  br i1 %.not64, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = load ptr, ptr %i.h, align 8, !tbaa !79  ; 2 uses
  %.not65 = icmp eq ptr %i.as, null
  br i1 %.not65, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !81
  %i.av = icmp sgt i32 %i.au, 0
  %i.aw = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_write, i64 8), align 8
  %i.ax = icmp sgt i32 %i.aw, 0
  %or.cond4 = select i1 %i.av, i1 %i.ax, i1 false
  br i1 %or.cond4, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.o
  %.old2 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_write, i64 8), align 8, !tbaa !81
  %.old3 = icmp sgt i32 %.old2, 0
  br i1 %.old3, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ay = load i64, ptr %i.i, align 8, !tbaa !87
  %i.az = load ptr, ptr %.050, align 8, !tbaa !97
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !84
  call void (ptr, ptr, ...) @Curl_trc_write(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, i64 noundef %i.ay, i32 noundef %i.bb, i32 noundef %i.ap) #5
  br label %bb.s

bb.s:                                             ; preds = %bb.l, %bb.r, %bb.q, %bb.p, %bb.n, %bb.m, %bb.k
  %.1 = phi i32 [ 0, %bb.k ], [ %i.ap, %bb.r ], [ %i.ap, %bb.p ], [ %i.ap, %bb.q ], [ %i.ap, %bb.n ], [ %i.ap, %bb.m ], [ %.05177, %bb.l ] ; 2 uses
end_hunk_0
