Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/iamfdec?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"iamf\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Raw Immersive Audio Model and Formats\00", align 1
@ff_iamf_demuxer = local_unnamed_addr constant { { ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr }, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { { ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 33160, [4 x i8] zeroinitializer, ptr @.str, ptr null, ptr null, ptr null }, i32 0, i32 112, i32 1, [4 x i8] zeroinitializer, ptr @iamf_probe, ptr @iamf_read_header, ptr @iamf_read_packet, ptr @iamf_read_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"audio_element\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"libavformat/iamfdec.c\00", align 1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 52) i32 @iamf_probe(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.g = load i32, ptr %i.e, align 8, !tbaa !31
  %i.h = call i32 @ff_iamf_parse_obu_header(ptr noundef %i.f, i32 noundef %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null) #5 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %get_score.exit.thread, label %.lr.ph.peel

.lr.ph.peel:                                      ; preds = %bb.a
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !30   ; 2 uses
  %i.k = load i32, ptr %i.c, align 4, !tbaa !32   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds i8, ptr %i.j, i64 %i.l
  %i.n = load i32, ptr %i.e, align 8, !tbaa !31   ; 3 uses
  %i.o = load i32, ptr %i.b, align 4, !tbaa !32   ; 3 uses
  %i.p = icmp eq i32 %i.o, 31
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.peel
  %i.q = icmp ult i32 %i.o, 5
  br i1 %i.q, label %get_score.exit.thread, label %.loopexit

bb.c:                                             ; preds = %.lr.ph.peel
  %i.r = sub i32 %i.n, %i.k
  %i.s = icmp slt i32 %i.r, 4
  br i1 %i.s, label %get_score.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.m, align 1, !tbaa !11
  %.not15.i.peel = icmp eq i32 %i.t, 1718444393
  br i1 %.not15.i.peel, label %get_score.exit.thread29.peel, label %get_score.exit.thread

get_score.exit.thread29.peel:                     ; preds = %bb.d
  %..peel = call i32 @llvm.smin.i32(i32 %i.h, i32 %i.n) ; 3 uses
  %i.u = sext i32 %..peel to i64                  ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.j, i64 %i.u
  %i.w = sub nsw i32 %i.n, %..peel
  %i.x = call i32 @ff_iamf_parse_obu_header(ptr noundef %i.v, i32 noundef %i.w, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null) #5 ; 2 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %get_score.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %get_score.exit.thread29.peel, %get_score.exit.thread29
  %i.z = phi i32 [ %i.au, %get_score.exit.thread29 ], [ %i.x, %get_score.exit.thread29.peel ]
  %i.aa = phi i64 [ %i.ar, %get_score.exit.thread29 ], [ %i.u, %get_score.exit.thread29.peel ]
  %.01941 = phi i32 [ %i.aq, %get_score.exit.thread29 ], [ %..peel, %get_score.exit.thread29.peel ] ; 3 uses
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !30  ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !32  ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 %i.ae
  %i.ag = load i32, ptr %i.e, align 8, !tbaa !31  ; 3 uses
  %i.ah = load i32, ptr %i.b, align 4, !tbaa !32  ; 3 uses
  %i.ai = icmp eq i32 %i.ah, 31
  br i1 %i.ai, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.aj = add i32 %i.ad, %.01941
  %i.ak = sub i32 %i.ag, %i.aj
  %i.al = icmp slt i32 %i.ak, 4
  br i1 %i.al, label %get_score.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = load i32, ptr %i.af, align 1, !tbaa !11
  %.not15.i = icmp eq i32 %i.am, 1718444393
  br i1 %.not15.i, label %get_score.exit.thread29, label %get_score.exit.thread

bb.g:                                             ; preds = %.lr.ph
  %i.an = icmp ult i32 %i.ah, 5
  br i1 %i.an, label %get_score.exit.thread29, label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.b
  %.not.i.lcssa = phi i32 [ 0, %bb.b ], [ 51, %bb.g ]
  %.lcssa = phi i32 [ %i.o, %bb.b ], [ %i.ah, %bb.g ]
  %i.ao = icmp ult i32 %.lcssa, 24
  %spec.select = select i1 %i.ao, i32 %.not.i.lcssa, i32 0
  br label %get_score.exit.thread

get_score.exit.thread29:                          ; preds = %bb.g, %bb.f
  %i.ap = sub nsw i32 %i.ag, %.01941
  %. = call i32 @llvm.smin.i32(i32 %i.z, i32 %i.ap)
  %i.aq = add nsw i32 %., %.01941                 ; 3 uses
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ab, i64 %i.ar
  %i.at = sub nsw i32 %i.ag, %i.aq
  %i.au = call i32 @ff_iamf_parse_obu_header(ptr noundef %i.as, i32 noundef %i.at, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null) #5 ; 2 uses
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %get_score.exit.thread, label %.lr.ph, !llvm.loop !28

get_score.exit.thread:                            ; preds = %bb.c, %bb.d, %get_score.exit.thread29.peel, %bb.b, %get_score.exit.thread29, %bb.e, %bb.f, %.loopexit, %bb.a
  %.121.ph = phi i32 [ 0, %bb.a ], [ %spec.select, %.loopexit ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %get_score.exit.thread29 ], [ 0, %bb.b ], [ 0, %get_score.exit.thread29.peel ], [ 0, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.121.ph
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @iamf_read_header(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.e = tail call i32 @ff_iamfdec_read_descriptors(ptr noundef %i.b, ptr noundef %i.d, i32 noundef 2147483647, ptr noundef %0) #5 ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %.thread152.thread, label %.preheader189

.preheader189:                                    ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !46
  %.not144198 = icmp sgt i32 %i.h, 0
  br i1 %.not144198, label %.lr.ph201, label %.preheader187

.lr.ph201:                                        ; preds = %.preheader189
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph201, %._crit_edge
  %indvars.iv233 = phi i64 [ 0, %.lr.ph201 ], [ %indvars.iv.next234, %._crit_edge ] ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv233
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49   ; 6 uses
  %i.m = tail call ptr @avformat_stream_group_create(ptr noundef %0, i32 noundef 1, ptr noundef null) #5 ; 4 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.thread152.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  tail call void @av_iamf_audio_element_free(ptr noundef nonnull %i.n) #5
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !54
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %i.q, ptr %i.r, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !57
  store ptr %i.t, ptr %i.n, align 8, !tbaa !11
  store ptr null, ptr %i.s, align 8, !tbaa !57
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !58
  %.not143.not196.not = icmp eq i32 %i.v, 0
  br i1 %.not143.not196.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !59
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv ; 2 uses
  %i.ab = tail call ptr @avformat_new_stream(ptr noundef %0, ptr noundef null) #5 ; 6 uses
  %.not142 = icmp eq ptr %i.ab, null
  br i1 %.not142, label %.thread152.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call i32 @avformat_stream_group_add_stream(ptr noundef nonnull %i.m, ptr noundef nonnull %i.ab) #5 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %.thread152.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !66
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !68
  %i.ai = tail call i32 @avcodec_parameters_copy(ptr noundef %i.af, ptr noundef %i.ah) #5 ; 2 uses
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %.thread152.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = or i64 %indvars.iv, %indvars.iv233
  %or.cond.not = icmp eq i64 %i.ak, 0
  br i1 %or.cond.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %i.x, align 8, !tbaa !69
  %i.am = load i32, ptr %i.al, align 4, !tbaa !71
  %i.an = icmp eq i32 %i.am, 1
  br i1 %i.an, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ao = load i32, ptr %i.y, align 8, !tbaa !72
  %i.ap = icmp ugt i32 %i.ao, 1
  br i1 %i.ap, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr %i.x, align 8, !tbaa !69
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !71
  %i.as = icmp ugt i32 %i.ar, 1
  br i1 %i.as, label %.sink.split, label %bb.k

.sink.split:                                      ; preds = %bb.i, %bb.j, %bb.h
  %.sink273 = phi i32 [ 1, %bb.h ], [ 524288, %bb.j ], [ 524288, %bb.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 64 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !73
  %i.av = or i32 %i.au, %.sink273
  store i32 %i.av, ptr %i.at, align 8, !tbaa !73
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.j
  %i.aw = load i32, ptr %i.aa, align 8, !tbaa !74
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !75
  %i.ay = load ptr, ptr %i.ae, align 8, !tbaa !66
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 152
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !78
  tail call void @avpriv_set_pts_info(ptr noundef nonnull %i.ab, i32 noundef 64, i32 noundef 1, i32 noundef %i.ba) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bb = load i32, ptr %i.u, align 8, !tbaa !58
  %i.bc = zext i32 %i.bb to i64
  %.not143.not = icmp samesign ult i64 %indvars.iv.next, %i.bc
  br i1 %.not143.not, label %bb.d, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %bb.k, %bb.c
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %i.bd = load i32, ptr %i.g, align 8, !tbaa !46
  %i.be = sext i32 %i.bd to i64
  %.not144 = icmp slt i64 %indvars.iv.next234, %i.be
  br i1 %.not144, label %bb.b, label %.preheader187, !llvm.loop !35

.preheader187:                                    ; preds = %._crit_edge, %.preheader189
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !80
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph220, label %._crit_edge221

.lr.ph220:                                        ; preds = %.preheader187
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph220, %._crit_edge218
  %indvars.iv248 = phi i64 [ 0, %.lr.ph220 ], [ %indvars.iv.next249, %._crit_edge218 ] ; 2 uses
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !81
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv248
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !83 ; 3 uses
  %i.bo = tail call ptr @avformat_stream_group_create(ptr noundef %0, i32 noundef 2, ptr noundef null) #5 ; 4 uses
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !87 ; 2 uses
  %.not145 = icmp eq ptr %i.bo, null
  br i1 %.not145, label %.thread152.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 40 ; 2 uses
  tail call void @av_iamf_mix_presentation_free(ptr noundef nonnull %i.bq) #5
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !88
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !56
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !89
  store ptr %i.bw, ptr %i.bq, align 8, !tbaa !11
  store ptr null, ptr %i.bv, align 8, !tbaa !89
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !92 ; 2 uses
  %.not222 = icmp eq i32 %i.by, 0
  br i1 %.not222, label %._crit_edge218, label %.lr.ph217

.lr.ph217:                                        ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph217, %._crit_edge214
  %i.ca = phi i32 [ %i.by, %.lr.ph217 ], [ %i.dm, %._crit_edge214 ]
  %indvars.iv245 = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next246, %._crit_edge214 ] ; 2 uses
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !93
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv245
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !95 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !100 ; 2 uses
  %.not223 = icmp eq i32 %i.cf, 0
  br i1 %.not223, label %._crit_edge214, label %.lr.ph213
end_hunk_0
