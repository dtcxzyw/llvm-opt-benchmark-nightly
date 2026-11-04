Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/avidec?download=true
inline.NumInlined: 22
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@avi_load_index:bb.a
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.m, !llvm.loop !167

._crit_edge.i:                                    ; preds = %bb.y
  %.not.i = icmp eq i32 %.1.i, 0
  br i1 %.not.i, label %.preheader.i, label %.loopexit

.preheader.i:                                     ; preds = %._crit_edge.i
  %i.de = load i32, ptr %i.k, align 4, !tbaa !46  ; 2 uses
  %.not119.i = icmp eq i32 %i.de, 0
  br i1 %.not119.i, label %.loopexit, label %.lr.ph118.i

.lr.ph118.i:                                      ; preds = %.preheader.i
  %.pre122.i = load ptr, ptr %i.l, align 8, !tbaa !47
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %.lr.ph118.i
  %i.df = phi i32 [ %i.de, %.lr.ph118.i ], [ %i.dq, %bb.ab ]
  %i.dg = phi ptr [ %.pre122.i, %.lr.ph118.i ], [ %i.dr, %bb.ab ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph118.i ], [ %indvars.iv.next.i, %bb.ab ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv.i
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !49 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 328
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !78
  %.not101.i = icmp eq i32 %i.dk, 0
  br i1 %.not101.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 320
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !79
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8
  %i.dp = or i32 %i.do, 1
  store i32 %i.dp, ptr %i.dn, align 8
  %.pre.i = load ptr, ptr %i.l, align 8, !tbaa !47
  %.pre123.i = load i32, ptr %i.k, align 4, !tbaa !46
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dq = phi i32 [ %.pre123.i, %bb.aa ], [ %i.df, %bb.z ] ; 2 uses
  %i.dr = phi ptr [ %.pre.i, %bb.aa ], [ %i.dg, %bb.z ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ds = zext i32 %i.dq to i64
  %i.dt = icmp samesign ult i64 %indvars.iv.next.i, %i.ds
  br i1 %i.dt, label %bb.z, label %.loopexit, !llvm.loop !168

.loopexit:                                        ; preds = %bb.ab, %.preheader.i, %._crit_edge.i
  store i32 2, ptr %i.m, align 8, !tbaa !77
  br label %bb.ag

bb.ac:                                            ; preds = %bb.f
  %i.du = icmp ult i32 %i.o, 4
  br i1 %i.du, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.55, i32 noundef %i.o) #12
  br label %.loopexit42

bb.ae:                                            ; preds = %bb.ac
  %i.dv = tail call i32 @avio_rl32(ptr noundef %i.d) #12
  %i.dw = icmp eq i32 %i.dv, 1330007625
  br i1 %i.dw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dx = add i32 %i.o, -4
  %i.dy = zext i32 %i.dx to i64
  %i.dz = tail call i32 @ff_read_riff_info(ptr noundef nonnull %0, i64 noundef %i.dy) #12 ; 0 uses
  br label %bb.ag

avi_read_idx1.exit.thread40:                      ; preds = %bb.m, %bb.g, %bb.f
  %.not38 = icmp eq i32 %.0, 0
  br i1 %.not38, label %.loopexit42, label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %avi_read_idx1.exit.thread40, %.loopexit
  %.1 = phi i32 [ 0, %.loopexit ], [ -1, %avi_read_idx1.exit.thread40 ], [ %.0, %bb.af ], [ %.0, %bb.ae ]
  %i.ea = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef %i.aa, i32 noundef 0) #12
  %i.eb = icmp slt i64 %i.ea, 0
  br i1 %i.eb, label %.loopexit42, label %bb.c

.loopexit42:                                      ; preds = %bb.c, %bb.e, %bb.d, %avi_read_idx1.exit.thread40, %bb.ag, %bb.ad, %bb.a
  %i.ec = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef %i.e, i32 noundef 0) #12 ; 0 uses
  ret void
}

declare ptr @av_dict_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @clean_index(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !46   ; 2 uses
  %.not38 = icmp eq i32 %i.b, 0
  br i1 %.not38, label %._crit_edge, label %.lr.ph37

.lr.ph37:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph37, %.loopexit
  %i.d = phi i32 [ %i.b, %.lr.ph37 ], [ %i.aj, %.loopexit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph37 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  %i.i = load i32, ptr %i.h, align 8, !tbaa !78
  %.not = icmp eq i32 %i.i, 1
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !55   ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c, %.preheader
  %.0 = phi i32 [ %i.p, %.preheader ], [ %i.m, %bb.c ] ; 3 uses
  %i.o = icmp slt i32 %.0, 1024
  %i.p = shl nsw i32 %.0, 1
  br i1 %i.o, label %.preheader, label %bb.d, !llvm.loop !169

bb.d:                                             ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !79   ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !81
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.u = load i32, ptr %i.t, align 8
  %i.v = ashr i32 %i.u, 2                         ; 2 uses
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !82
  %i.z = icmp sgt i32 %i.v, 0
  br i1 %i.z, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.aa = zext nneg i32 %.0 to i64                ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.03135 = phi i64 [ 0, %.lr.ph ], [ %i.ah, %bb.e ] ; 4 uses
  %i.ab = add nsw i64 %.03135, %i.s
  %i.ac = add nsw i64 %.03135, %i.y
  %i.ad = sub nuw nsw i64 %i.w, %.03135
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 %i.aa)
  %i.af = trunc nuw nsw i64 %i.ae to i32
  %i.ag = tail call i32 @av_add_index_entry(ptr noundef nonnull %i.g, i64 noundef %i.ab, i64 noundef %i.ac, i32 noundef %i.af, i32 noundef 0, i32 noundef 1) #12 ; 0 uses
  %i.ah = add nuw nsw i64 %.03135, %i.aa          ; 2 uses
  %i.ai = icmp slt i64 %i.ah, %i.w
  br i1 %i.ai, label %bb.e, label %.loopexit.loopexit, !llvm.loop !170

.loopexit.loopexit:                               ; preds = %bb.e
  %.pre = load i32, ptr %i.a, align 4, !tbaa !46
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.d, %bb.b, %bb.c
  %i.aj = phi i32 [ %.pre, %.loopexit.loopexit ], [ %i.d, %bb.d ], [ %i.d, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = icmp samesign ult i64 %indvars.iv.next, %i.ak
  br i1 %i.al, label %bb.b, label %._crit_edge, !llvm.loop !171

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

declare void @ff_metadata_conv_ctx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_dict_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

declare i32 @av_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #8

declare i32 @av_exif_parse_buffer(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_exif_ifd_to_dict(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_exif_free(ptr noundef) local_unnamed_addr #2

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @avio_rl64(ptr noundef) local_unnamed_addr #2

declare i32 @av_add_index_entry(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @avi_sync(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 17 uses
  %i.e = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef 0, i32 noundef 1) #12
  %i.f = tail call i32 @avio_feof(ptr noundef %i.d) #12
  %.not266274 = icmp eq i32 %i.f, 0
  br i1 %.not266274, label %.preheader.lr.ph.lr.ph, label %._crit_edge

.preheader.lr.ph.lr.ph:                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.not199 = icmp eq i32 %1, 0
  br label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.lr.ph, %.thread221
  %i.m = phi i64 [ %i.e, %.preheader.lr.ph.lr.ph ], [ %i.fl, %.thread221 ] ; 2 uses
  %i.n = add nsw i64 %i.m, 9
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.thread225
  %.sroa.6.1 = phi i32 [ -1, %.preheader.lr.ph ], [ %.sroa.9.1, %.thread225 ] ; 6 uses
  %.sroa.9.1 = phi i32 [ -1, %.preheader.lr.ph ], [ %.sroa.13.1, %.thread225 ] ; 9 uses
  %.sroa.13.1 = phi i32 [ -1, %.preheader.lr.ph ], [ %.sroa.17.1, %.thread225 ] ; 15 uses
  %.sroa.17.1 = phi i32 [ -1, %.preheader.lr.ph ], [ %.sroa.20.1, %.thread225 ] ; 13 uses
  %.sroa.20.1 = phi i32 [ -1, %.preheader.lr.ph ], [ %.sroa.23.1, %.thread225 ] ; 2 uses
  %.sroa.23.1 = phi i32 [ -1, %.preheader.lr.ph ], [ %.sroa.26.1, %.thread225 ] ; 2 uses
  %.sroa.26.1 = phi i32 [ -1, %.preheader.lr.ph ], [ %2, %.thread225 ] ; 2 uses
  %.0178267 = phi i64 [ %i.m, %.preheader.lr.ph ], [ %i.fn, %.thread225 ] ; 4 uses
  %2 = tail call i32 @avio_r8(ptr noundef %i.d) #12 ; 2 uses
  %i.o = shl i32 %.sroa.23.1, 8
  %3 = shl i32 %.sroa.26.1, 16
  %4 = shl i32 %2, 24
  %i.p = add i32 %.sroa.20.1, %4
  %5 = add i32 %i.p, %i.o
  %6 = add i32 %5, %3                             ; 9 uses
  %i.q = add i32 %.sroa.13.1, -48
  %or.cond.i = icmp ult i32 %i.q, 10              ; 2 uses
  %i.r = add i32 %.sroa.17.1, -48
  %or.cond8.i = icmp ult i32 %i.r, 10
  %or.cond1.i = and i1 %or.cond.i, %or.cond8.i
  %i.s = mul nuw nsw i32 %.sroa.13.1, 10
  %i.t = add i32 %.sroa.17.1, -528
  %i.u = add i32 %i.t, %i.s
  %.0.i = select i1 %or.cond1.i, i32 %i.u, i32 100
  %i.v = load i64, ptr %i.g, align 8, !tbaa !33
  %i.w = icmp sgt i64 %i.v, 0
  %i.x = select i1 %i.w, i64 %.0178267, i64 0
  %i.y = zext i32 %6 to i64                       ; 4 uses
  %i.z = add i64 %i.x, %i.y
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !32
  %i.ab = icmp ugt i64 %i.z, %i.aa
  %i.ac = icmp ugt i32 %.sroa.6.1, 127
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond, label %.thread225, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.ad = icmp eq i32 %.sroa.6.1, 105             ; 3 uses
  %i.ae = icmp eq i32 %.sroa.9.1, 120
  %or.cond5 = and i1 %i.ad, %i.ae
  br i1 %or.cond5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.af = load i32, ptr %i.i, align 4, !tbaa !46
  %i.ag = icmp ult i32 %.0.i, %i.af
  br i1 %i.ag, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %7 = icmp eq i32 %.sroa.6.1, 74
  %8 = icmp eq i32 %.sroa.9.1, 85
  %or.cond8 = and i1 %7, %8
  %9 = icmp eq i32 %.sroa.13.1, 78
  %or.cond11 = and i1 %or.cond8, %9
  %.old463 = icmp eq i32 %.sroa.17.1, 75
  %or.cond14 = and i1 %or.cond11, %.old463
  br i1 %or.cond14, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = icmp eq i32 %.sroa.9.1, 100
  %10 = icmp eq i32 %.sroa.13.1, 120
  %11 = and i1 %i.ah, %10
  %12 = icmp eq i32 %.sroa.17.1, 49
  %13 = and i1 %11, %12
  %or.cond23 = and i1 %13, %i.ad
  br i1 %or.cond23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i32 %.sroa.9.1, 110
  %14 = icmp eq i32 %.sroa.13.1, 100
  %15 = and i1 %i.ai, %14
  %or.cond29 = and i1 %15, %i.ad
  %i.aj = icmp eq i32 %.sroa.17.1, 120            ; 2 uses
  %or.cond32 = and i1 %or.cond29, %i.aj
  br i1 %or.cond32, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.ak = tail call i64 @avio_skip(ptr noundef %i.d, i64 noundef %i.y) #12 ; 0 uses
  br label %.thread221

bb.h:                                             ; preds = %bb.f
  %16 = icmp eq i32 %.sroa.6.1, 76
  %17 = icmp eq i32 %.sroa.9.1, 73
  %or.cond35 = and i1 %16, %17
  %18 = icmp eq i32 %.sroa.13.1, 83
  %or.cond38 = and i1 %or.cond35, %18
  %i.al = icmp eq i32 %.sroa.17.1, 84
  %or.cond41 = and i1 %or.cond38, %i.al
  br i1 %or.cond41, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = tail call i64 @avio_skip(ptr noundef %i.d, i64 noundef 4) #12 ; 0 uses
  br label %.thread221

bb.j:                                             ; preds = %bb.h
  %i.an = add nsw i32 %.sroa.6.1, -48
  %or.cond.i211 = icmp ult i32 %i.an, 10
  %i.ao = add i32 %.sroa.9.1, -48
  %or.cond8.i212 = icmp ult i32 %i.ao, 10         ; 2 uses
  %or.cond1.i213 = select i1 %or.cond.i211, i1 %or.cond8.i212, i1 false
  %i.ap = mul nuw nsw i32 %.sroa.6.1, 10
  %i.aq = add nsw i32 %i.ap, -528
  %i.ar = add i32 %i.aq, %.sroa.9.1
  %.0.i214 = select i1 %or.cond1.i213, i32 %i.ar, i32 100 ; 8 uses
  %i.as = load i64, ptr %i.j, align 8, !tbaa !88
  %i.at = sub nsw i64 %.0178267, %i.as
  %i.au = and i64 %i.at, 1
  %.not196 = icmp eq i64 %i.au, 0
  br i1 %.not196, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %or.cond1.i217 = and i1 %or.cond8.i212, %or.cond.i
  %i.av = mul nuw nsw i32 %.sroa.9.1, 10
  %i.aw = add nsw i32 %i.av, -528
  %i.ax = add i32 %i.aw, %.sroa.13.1
  %.0.i218 = select i1 %or.cond1.i217, i32 %i.ax, i32 100
  %i.ay = load i32, ptr %i.i, align 4, !tbaa !46
  %i.az = icmp ult i32 %.0.i218, %i.ay
  br i1 %i.az, label %.thread225, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ba = icmp eq i32 %.sroa.13.1, 105
  %or.cond44 = and i1 %i.ba, %i.aj
  br i1 %or.cond44, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bb = load i32, ptr %i.i, align 4, !tbaa !46
  %i.bc = icmp ult i32 %.0.i214, %i.bb
  br i1 %i.bc, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.bd = tail call i64 @avio_skip(ptr noundef %i.d, i64 noundef %i.y) #12 ; 0 uses
  br label %.thread221

bb.o:                                             ; preds = %bb.l
  %i.be = icmp eq i32 %.sroa.13.1, 119            ; 2 uses
  %i.bf = icmp eq i32 %.sroa.17.1, 99             ; 2 uses
  %or.cond47 = and i1 %i.be, %i.bf
  br i1 %or.cond47, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.bg = load i32, ptr %i.i, align 4, !tbaa !46
  %i.bh = icmp ult i32 %.0.i214, %i.bg
  br i1 %i.bh, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.bi = tail call i64 @avio_skip(ptr noundef %i.d, i64 noundef 56) #12 ; 0 uses
  br label %.thread221

.thread:                                          ; preds = %bb.m, %bb.p, %bb.o
  %i.bj = phi i1 [ %i.bf, %bb.o ], [ true, %bb.p ], [ false, %bb.m ]
  %i.bk = phi i1 [ %i.be, %bb.o ], [ true, %bb.p ], [ false, %bb.m ]
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.bm = icmp ne ptr %i.bl, null
  %i.bn = icmp ne i32 %.0.i214, 0                 ; 2 uses
  %or.cond49 = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %or.cond49, label %.thread225, label %bb.r

bb.r:                                             ; preds = %.thread
  %i.bo = load i32, ptr %i.i, align 4, !tbaa !46  ; 2 uses
  %i.bp = icmp ult i32 %.0.i214, %i.bo
  br i1 %i.bp, label %bb.s, label %.thread225

bb.s:                                             ; preds = %bb.r
  %i.bq = load ptr, ptr %i.l, align 8, !tbaa !47  ; 2 uses
  %i.br = zext nneg i32 %.0.i214 to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !49 ; 8 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !45 ; 8 uses
  %.not197 = icmp eq ptr %i.bv, null
  br i1 %.not197, label %.thread221.thread228, label %bb.t

.thread221.thread228:                             ; preds = %bb.s
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.59, i32 noundef %.0.i214) #12
  br label %.thread225

bb.t:                                             ; preds = %bb.s
  %i.bw = icmp ugt i32 %i.bo, 1
  br i1 %i.bw, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !49 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !45 ; 4 uses
  %i.cb = icmp ne ptr %i.ca, null
  %or.cond52 = and i1 %i.bk, %i.cb
  %19 = icmp eq i32 %.sroa.17.1, 98
  %or.cond55 = and i1 %or.cond52, %19
  %not.or.cond55 = xor i1 %or.cond55, true
  %i.cc = select i1 %not.or.cond55, i1 true, i1 %i.bn
  br i1 %i.cc, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !57
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !60
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !57
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !60
  %i.ck = icmp eq i32 %i.cj, 1
  br i1 %i.ck, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !174
  %i.cn = icmp eq i32 %i.cm, 25699
  br i1 %i.cn, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.co = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !174
  %i.cq = icmp eq i32 %i.cp, 30562
  br i1 %i.cq, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ca, i64 44
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !175
  %.not198 = icmp eq i32 %i.cs, 0
  br i1 %.not198, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.60) #12
  br label %bb.ab

bb.ab:                                            ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %bb.z, %bb.aa, %bb.t
  %.1180 = phi i32 [ %.0.i214, %bb.t ], [ 1, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.v ], [ %.0.i214, %bb.u ]
  %.1174 = phi ptr [ %i.bt, %bb.t ], [ %i.by, %bb.aa ], [ %i.bt, %bb.z ], [ %i.bt, %bb.x ], [ %i.bt, %bb.w ], [ %i.bt, %bb.v ], [ %i.bt, %bb.u ] ; 4 uses
  %.1 = phi ptr [ %i.bv, %bb.t ], [ %i.ca, %bb.aa ], [ %i.bv, %bb.z ], [ %i.bv, %bb.x ], [ %i.bv, %bb.w ], [ %i.bv, %bb.v ], [ %i.bv, %bb.u ] ; 13 uses
  %i.ct = icmp eq i32 %.sroa.13.1, 112
  %or.cond60 = and i1 %i.ct, %i.bj
  %i.cu = icmp ult i32 %6, 1029
  %or.cond62 = and i1 %i.cu, %or.cond60
  br i1 %or.cond62, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.cv = tail call i32 @avio_r8(ptr noundef %i.d) #12 ; 3 uses
  %i.cw = tail call i32 @avio_r8(ptr noundef %i.d) #12
  %i.cx = add i32 %i.cv, 255
  %i.cy = add i32 %i.cx, %i.cw
  %i.cz = and i32 %i.cy, 255                      ; 2 uses
  %i.da = tail call i32 @avio_rl16(ptr noundef %i.d) #12 ; 0 uses
  %.not204270 = icmp sgt i32 %i.cv, %i.cz
  br i1 %.not204270, label %._crit_edge273, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ac
  %i.db = getelementptr inbounds nuw i8, ptr %.1, i64 48
  %i.dc = sext i32 %i.cv to i64
  %i.dd = add nuw nsw i32 %i.cz, 1
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph, %bb.ad
  %indvars.iv = phi i64 [ %i.dc, %.lr.ph ], [ %indvars.iv.next, %bb.ad ] ; 2 uses
  %i.de = tail call i32 @avio_rb32(ptr noundef %i.d) #12
  %i.df = lshr i32 %i.de, 8
  %i.dg = or disjoint i32 %i.df, -16777216
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.db, i64 %indvars.iv
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !37
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.dd, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge273, label %bb.ad, !llvm.loop !172

._crit_edge273:                                   ; preds = %bb.ad, %bb.ac
  %i.di = getelementptr inbounds nuw i8, ptr %.1, i64 1072
  store i32 1, ptr %i.di, align 8, !tbaa !63
  br label %.thread221

bb.ae:                                            ; preds = %bb.ab
  %i.dj = getelementptr inbounds nuw i8, ptr %.1, i64 44
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !175 ; 2 uses
  %i.dl = icmp slt i32 %i.dk, 5
  br i1 %i.dl, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dm = icmp sgt i64 %i.n, %.0178267
  %20 = or i32 %.sroa.17.1, %.sroa.13.1
  %i.dn = icmp ult i32 %20, 128
  %or.cond230 = and i1 %i.dm, %i.dn
  br i1 %or.cond230, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %21 = or i32 %.sroa.13.1, %.sroa.17.1
  %.old = icmp ult i32 %21, 128
  br i1 %.old, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.do = shl i32 %.sroa.13.1, 8
  %i.dp = add i32 %.sroa.17.1, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %.1, i64 40
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !174
  %i.ds = icmp eq i32 %i.dp, %i.dr
  br i1 %i.ds, label %bb.ai, label %.thread225

bb.ai:                                            ; preds = %bb.ag, %bb.af, %bb.ah
  %i.dt = getelementptr inbounds nuw i8, ptr %.1, i64 44
  br i1 %.not199, label %bb.aj, label %.thread221.thread

bb.aj:                                            ; preds = %bb.ai
  %i.du = shl i32 %.sroa.13.1, 8
  %i.dv = add i32 %.sroa.17.1, %i.du              ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.1, i64 40 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !174
  %i.dy = icmp eq i32 %i.dv, %i.dx
  br i1 %i.dy, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dz = add nsw i32 %i.dk, 1
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  store i32 %i.dv, ptr %i.dw, align 8, !tbaa !174
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %storemerge = phi i32 [ 0, %bb.al ], [ %i.dz, %bb.ak ]
  store i32 %storemerge, ptr %i.dt, align 4, !tbaa !175
  %i.ea = load ptr, ptr %i.k, align 8, !tbaa !50
  %.not200 = icmp eq ptr %i.ea, null
  br i1 %.not200, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.eb = getelementptr inbounds nuw i8, ptr %.1174, i64 68
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !85 ; 2 uses
  %i.ed = icmp sgt i32 %i.ec, -1
  %i.ee = icmp eq i32 %6, 0
  %or.cond68 = and i1 %i.ee, %i.ed
  %i.ef = icmp sgt i32 %i.ec, 47
  %or.cond205 = or i1 %i.ef, %or.cond68
  br i1 %or.cond205, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.eg = getelementptr inbounds nuw i8, ptr %.1, i64 28
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !55
  %.not.i = icmp eq i32 %i.eh, 0
  br i1 %.not.i, label %bb.ap, label %get_duration.exit

bb.ap:                                            ; preds = %bb.ao
  %i.ei = getelementptr inbounds nuw i8, ptr %.1, i64 1076
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !74 ; 2 uses
  %.not7.i = icmp eq i32 %i.ej, 0
  br i1 %.not7.i, label %get_duration.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ek = sext i32 %6 to i64
  %i.el = sext i32 %i.ej to i64                   ; 2 uses
  %i.em = add nsw i64 %i.ek, -1
  %i.en = add nsw i64 %i.em, %i.el
  %i.eo = sdiv i64 %i.en, %i.el
  %i.ep = trunc i64 %i.eo to i32
  br label %get_duration.exit

get_duration.exit:                                ; preds = %bb.ao, %bb.ap, %bb.aq
  %.0.i219 = phi i32 [ %6, %bb.ao ], [ %i.ep, %bb.aq ], [ 1, %bb.ap ]
  %i.eq = sext i32 %.0.i219 to i64
  %i.er = load i64, ptr %.1, align 8, !tbaa !56
  %i.es = add nsw i64 %i.er, %i.eq
  store i64 %i.es, ptr %.1, align 8, !tbaa !56
  %i.et = tail call i64 @avio_skip(ptr noundef %i.d, i64 noundef %i.y) #12 ; 0 uses
  br label %.thread221

bb.ar:                                            ; preds = %bb.an, %bb.am
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store i32 %.1180, ptr %i.eu, align 4, !tbaa !31
  %i.ev = add i32 %6, 8
  %i.ew = getelementptr inbounds nuw i8, ptr %.1, i64 12
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !84
  %i.ex = getelementptr inbounds nuw i8, ptr %.1, i64 8
  store i32 %6, ptr %i.ex, align 8, !tbaa !83
  %.not201 = icmp eq i32 %6, 0
  br i1 %.not201, label %.thread221.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ey = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef 0, i32 noundef 1) #12
  %i.ez = add nsw i64 %i.ey, -8                   ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.1174, i64 320
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !79 ; 2 uses
  %.not202 = icmp eq ptr %i.fb, null
  br i1 %.not202, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fc = getelementptr inbounds nuw i8, ptr %.1174, i64 328
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !78 ; 2 uses
  %.not203 = icmp eq i32 %i.fd, 0
  br i1 %.not203, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr [24 x i8], ptr %i.fb, i64 %i.fe
  %i.fg = getelementptr i8, ptr %i.ff, i64 -24
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !81
  %i.fi = icmp ult i64 %i.fh, %i.ez
  br i1 %i.fi, label %bb.av, label %.thread221.thread

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %i.fj = load i64, ptr %.1, align 8, !tbaa !56
  %i.fk = tail call i32 @av_add_index_entry(ptr noundef nonnull %.1174, i64 noundef %i.ez, i64 noundef %i.fj, i32 noundef %6, i32 noundef 0, i32 noundef 1) #12 ; 0 uses
  br label %.thread221.thread

.thread221:                                       ; preds = %get_duration.exit, %._crit_edge273, %bb.q, %bb.n, %bb.i, %bb.g
  %i.fl = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef 0, i32 noundef 1) #12
  %i.fm = tail call i32 @avio_feof(ptr noundef %i.d) #12
  %.not266 = icmp eq i32 %i.fm, 0
  br i1 %.not266, label %.preheader.lr.ph, label %._crit_edge

.thread225:                                       ; preds = %.thread221.thread228, %bb.r, %bb.ah, %.thread, %bb.k, %.preheader
  %i.fn = add nsw i64 %.0178267, 1
  %i.fo = tail call i32 @avio_feof(ptr noundef %i.d) #12
  %.not = icmp eq i32 %i.fo, 0
  br i1 %.not, label %.preheader, label %._crit_edge, !llvm.loop !173

._crit_edge:                                      ; preds = %.thread221, %.thread225, %bb.a
  %i.fp = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !176 ; 2 uses
  %.not195 = icmp eq i32 %i.fq, 0
  %. = select i1 %.not195, i32 -541478725, i32 %i.fq
  br label %.thread221.thread

.thread221.thread:                                ; preds = %bb.ai, %bb.ar, %bb.au, %bb.av, %._crit_edge
  %.5 = phi i32 [ %., %._crit_edge ], [ 0, %bb.av ], [ 0, %bb.au ], [ 0, %bb.ar ], [ 0, %bb.ai ]
  ret i32 %.5
}

declare i32 @avio_rb32(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare { i64, i64 } @av_mul_i(i64, i64, i64, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare { i64, i64 } @av_int2i(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare { i64, i64 } @av_add_i(i64, i64, i64, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare { i64, i64 } @av_shr_i(i64, i64, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare { i64, i64 } @av_div_i(i64, i64, i64, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @av_cmp_i(i64, i64, i64, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_i2int(i64, i64) local_unnamed_addr #5

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #9

declare i32 @avpriv_dv_get_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_get_packet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @av_packet_new_side_data(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @avpriv_dv_produce_packet(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare void @av_packet_unref(ptr noundef) local_unnamed_addr #2

declare i32 @av_index_search_timestamp(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @avpriv_find_start_code(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_packet_move_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_read_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @avio_alloc_context(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @avio_get_str16le(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @av_probe_input_format2(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @av_packet_alloc() local_unnamed_addr #2

declare ptr @avformat_alloc_context() local_unnamed_addr #2

declare i32 @ff_copy_whiteblacklists(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @avformat_open_input(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @avcodec_parameters_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_packet_free(ptr noundef) local_unnamed_addr #2

declare void @avio_context_free(ptr noundef) local_unnamed_addr #2

declare void @avformat_close_input(ptr noundef) local_unnamed_addr #2

declare void @av_buffer_unref(ptr noundef) local_unnamed_addr #2

declare void @ff_dv_ts_reset(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @avformat_seek_file(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"AVProbeData", !10, i64 0, !10, i64 8, !6, i64 16, !10, i64 24}
!12 = !{!5, !5, i64 0}
!13 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!14 = !{!"p1 _ZTS13AVInputFormat", !9, i64 0}
!15 = !{!"p1 _ZTS14AVOutputFormat", !9, i64 0}
!16 = !{!"p1 _ZTS11AVIOContext", !9, i64 0}
!17 = !{!"any p2 pointer", !9, i64 0}
!18 = !{!"p2 _ZTS8AVStream", !17, i64 0}
!19 = !{!"p2 _ZTS13AVStreamGroup", !17, i64 0}
!20 = !{!"p2 _ZTS9AVChapter", !17, i64 0}
!21 = !{!"long", !5, i64 0}
!22 = !{!"p2 _ZTS9AVProgram", !17, i64 0}
!23 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!24 = !{!"AVIOInterruptCB", !9, i64 0, !9, i64 8}
!25 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!26 = !{!"AVFormatContext", !13, i64 0, !14, i64 8, !15, i64 16, !9, i64 24, !16, i64 32, !6, i64 40, !6, i64 44, !18, i64 48, !6, i64 56, !19, i64 64, !6, i64 72, !20, i64 80, !10, i64 88, !21, i64 96, !21, i64 104, !21, i64 112, !6, i64 120, !6, i64 124, !6, i64 128, !21, i64 136, !21, i64 144, !10, i64 152, !6, i64 160, !6, i64 164, !22, i64 168, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !23, i64 192, !21, i64 200, !6, i64 208, !6, i64 212, !24, i64 216, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !21, i64 248, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !6, i64 300, !21, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !10, i64 336, !10, i64 344, !10, i64 352, !10, i64 360, !6, i64 368, !25, i64 376, !25, i64 384, !25, i64 392, !25, i64 400, !6, i64 408, !9, i64 416, !9, i64 424, !21, i64 432, !10, i64 440, !9, i64 448, !9, i64 456, !21, i64 464, !10, i64 472}
!27 = !{!26, !9, i64 24}
!28 = !{!26, !16, i64 32}
!29 = !{!"p1 _ZTS14DVDemuxContext", !9, i64 0}
!30 = !{!"AVIContext", !13, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !29, i64 72, !6, i64 80, !21, i64 88, !21, i64 96, !6, i64 104, !21, i64 112}
!31 = !{!30, !6, i64 68}
!32 = !{!30, !21, i64 24}
!33 = !{!30, !21, i64 32}
!34 = !{!30, !21, i64 40}
!35 = !{!30, !21, i64 16}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!6, !6, i64 0}
!38 = !{!30, !6, i64 64}
!39 = !{!"p1 _ZTS17AVCodecParameters", !9, i64 0}
!40 = !{!"AVRational", !6, i64 0, !6, i64 4}
!41 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!42 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!43 = !{!"AVPacket", !41, i64 0, !21, i64 8, !21, i64 16, !10, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !42, i64 48, !6, i64 56, !21, i64 64, !21, i64 72, !9, i64 80, !41, i64 88, !40, i64 96}
!44 = !{!"AVStream", !13, i64 0, !6, i64 8, !6, i64 12, !39, i64 16, !9, i64 24, !40, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !6, i64 64, !6, i64 68, !40, i64 72, !23, i64 80, !40, i64 88, !43, i64 96, !6, i64 200, !40, i64 204, !6, i64 212}
!45 = !{!44, !9, i64 24}
!46 = !{!26, !6, i64 44}
!47 = !{!26, !18, i64 48}
!48 = !{!"p1 _ZTS8AVStream", !9, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!30, !29, i64 72}
!51 = !{!"p1 _ZTS15AVFormatContext", !9, i64 0}
!52 = !{!"p1 _ZTS8AVPacket", !9, i64 0}
!53 = !{!"AVIStream", !21, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !21, i64 32, !6, i64 40, !6, i64 44, !5, i64 48, !6, i64 1072, !6, i64 1076, !51, i64 1080, !52, i64 1088, !41, i64 1096, !21, i64 1104}
!54 = !{!53, !21, i64 32}
!55 = !{!53, !6, i64 28}
!56 = !{!53, !21, i64 0}
!57 = !{!44, !39, i64 16}
!58 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!59 = !{!"AVCodecParameters", !6, i64 0, !6, i64 4, !6, i64 8, !10, i64 16, !6, i64 24, !42, i64 32, !6, i64 40, !6, i64 44, !21, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !40, i64 80, !40, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !58, i64 128, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176}
!60 = !{!59, !6, i64 0}
!61 = !{!59, !6, i64 4}
!62 = !{!59, !6, i64 8}
!63 = !{!53, !6, i64 1072}
!64 = !{!"p1 _ZTS12AVBSFContext", !9, i64 0}
!65 = !{!"p1 _ZTS14AVCodecContext", !9, i64 0}
!66 = !{!"", !64, i64 0, !6, i64 8}
!67 = !{!"FFFrac", !21, i64 0, !21, i64 8, !21, i64 16}
!68 = !{!"p1 _ZTS12FFStreamInfo", !9, i64 0}
!69 = !{!"p1 _ZTS12AVIndexEntry", !9, i64 0}
!70 = !{!"p1 _ZTS15PacketListEntry", !9, i64 0}
!71 = !{!"p1 _ZTS20AVCodecParserContext", !9, i64 0}
!72 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!73 = !{!"FFStream", !44, i64 0, !51, i64 216, !6, i64 224, !64, i64 232, !6, i64 240, !65, i64 248, !6, i64 256, !66, i64 264, !6, i64 280, !6, i64 284, !67, i64 288, !68, i64 312, !69, i64 320, !6, i64 328, !6, i64 332, !21, i64 336, !21, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !21, i64 368, !21, i64 376, !21, i64 384, !6, i64 392, !21, i64 400, !21, i64 408, !21, i64 416, !6, i64 424, !6, i64 428, !5, i64 432, !5, i64 568, !5, i64 592, !21, i64 728, !5, i64 736, !5, i64 737, !40, i64 740, !11, i64 752, !70, i64 784, !21, i64 792, !6, i64 800, !6, i64 804, !6, i64 808, !71, i64 816, !52, i64 824, !6, i64 832, !6, i64 836, !21, i64 840, !21, i64 848, !72, i64 856}
!74 = !{!53, !6, i64 1076}
!75 = !{!"AVIOContext", !13, i64 0, !10, i64 8, !6, i64 16, !10, i64 24, !10, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !21, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !21, i64 104, !10, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !6, i64 144, !6, i64 148, !10, i64 152, !10, i64 160, !9, i64 168, !6, i64 176, !10, i64 184, !21, i64 192, !21, i64 200}
!76 = !{!10, !10, i64 0}
!77 = !{!30, !6, i64 56}
!78 = !{!73, !6, i64 328}
!79 = !{!73, !69, i64 320}
!80 = !{!"AVIndexEntry", !21, i64 0, !21, i64 8, !6, i64 16, !6, i64 16, !6, i64 20}
!81 = !{!80, !21, i64 0}
!82 = !{!80, !21, i64 8}
!83 = !{!53, !6, i64 8}
!84 = !{!53, !6, i64 12}
!85 = !{!44, !6, i64 68}
!86 = !{!53, !52, i64 1088}
!87 = !{!53, !51, i64 1080}
!88 = !{!30, !21, i64 48}
!89 = !{!53, !21, i64 1104}
!90 = !{!30, !21, i64 112}
!91 = !{!11, !10, i64 8}
!92 = distinct !{!92, !36}
!93 = distinct !{!93, !36}
!94 = distinct !{!94, !36, !127, !128}
!95 = distinct !{!95, !129}
!96 = distinct !{!96, !36, !127}
!97 = distinct !{!97, !36}
!98 = distinct !{!98, !129}
!99 = distinct !{!99, !36}
!100 = distinct !{!100, !36}
!101 = distinct !{!101, !129}
!102 = distinct !{!102, !36}
!103 = distinct !{!103, !36}
!104 = distinct !{!104, !36}
!105 = distinct !{!105, !36}
!106 = distinct !{!106, !36}
!107 = distinct !{!107, !36}
!108 = distinct !{!108, !36}
!109 = distinct !{!109, !36}
!110 = !{!30, !21, i64 8}
!111 = !{!30, !6, i64 104}
!112 = !{!30, !6, i64 60}
!113 = !{!44, !6, i64 12}
!114 = !{!53, !6, i64 20}
!115 = !{!53, !6, i64 24}
!116 = !{!26, !21, i64 104}
!117 = !{!53, !6, i64 16}
!118 = !{!44, !21, i64 56}
!119 = !{!44, !21, i64 40}
!120 = !{!26, !6, i64 212}
!121 = !{!44, !21, i64 48}
!122 = !{!59, !6, i64 72}
!123 = !{!59, !6, i64 76}
!124 = !{!59, !6, i64 24}
!125 = !{!59, !10, i64 16}
!126 = !{!59, !6, i64 56}
!127 = !{!"llvm.loop.isvectorized", i32 1}
!128 = !{!"llvm.loop.unroll.runtime.disable"}
!129 = !{!"llvm.loop.unroll.disable"}
!130 = !{!73, !6, i64 808}
!131 = !{!59, !6, i64 156}
!132 = !{!73, !6, i64 352}
!133 = !{!75, !6, i64 144}
!134 = !{!26, !6, i64 128}
!135 = !{!59, !21, i64 48}
!136 = !{!44, !6, i64 32}
!137 = !{!44, !6, i64 36}
!138 = !{!26, !23, i64 192}
!139 = !{!"AVDictionaryEntry", !10, i64 0, !10, i64 8}
!140 = !{!139, !10, i64 8}
!141 = distinct !{!141, !36}
!142 = distinct !{!142, !36}
!143 = distinct !{!143, !36}
!144 = !{!43, !10, i64 24}
!145 = !{!43, !21, i64 16}
!146 = !{!44, !6, i64 8}
!147 = !{!43, !6, i64 36}
!148 = !{!43, !6, i64 32}
!149 = !{!43, !21, i64 72}
!150 = !{!43, !6, i64 40}
!151 = !{!16, !16, i64 0}
!152 = !{!75, !10, i64 32}
!153 = !{!75, !10, i64 24}
!154 = !{!"p2 _ZTS10AVCodecTag", !17, i64 0}
!155 = !{!"AVInputFormat", !10, i64 0, !10, i64 8, !6, i64 16, !10, i64 24, !154, i64 32, !13, i64 40, !10, i64 48}
!156 = !{!155, !10, i64 0}
!157 = !{!43, !41, i64 0}
!158 = !{!53, !41, i64 1096}
!159 = distinct !{!159, !36}
!160 = distinct !{!160, !36}
!161 = distinct !{!161, !36}
!162 = distinct !{!162, !36}
!163 = distinct !{!163, !36}
!164 = !{!30, !21, i64 96}
!165 = !{!30, !21, i64 88}
!166 = !{!30, !6, i64 80}
!167 = distinct !{!167, !36}
!168 = distinct !{!168, !36}
!169 = distinct !{!169, !36}
end_hunk_0
