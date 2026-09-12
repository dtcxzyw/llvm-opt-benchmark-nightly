Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/avidec?download=true
inline.NumInlined: 22
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@avi_load_index:bb.a

bb.s:                                             ; preds = %bb.r
  store i32 1, ptr %i.bb, align 8, !tbaa !38
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ch = zext i32 %.085114.i to i64
  %i.ci = icmp ne i64 %i.cd, %i.ch
  %i.cj = icmp ne i32 %i.bi, 0
  %or.cond3.i = and i1 %i.cj, %i.ci
  br i1 %or.cond3.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ck = load i64, ptr %i.ce, align 8, !tbaa !54
  %i.cl = lshr i32 %i.bf, 4
  %.lobit.i = and i32 %i.cl, 1
  %i.cm = tail call i32 @av_add_index_entry(ptr noundef nonnull %i.bt, i64 noundef %i.cd, i64 noundef %i.ck, i32 noundef %i.bi, i32 noundef 0, i32 noundef %.lobit.i) #12 ; 0 uses
  %i.cn = trunc i64 %i.cd to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.186.i = phi i32 [ %i.cn, %bb.u ], [ %.085114.i, %bb.t ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.bv, i64 28
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !55
  %.not.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i, label %bb.w, label %get_duration.exit.i

bb.w:                                             ; preds = %bb.v
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bv, i64 1076
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !74 ; 2 uses
  %.not7.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not7.i.i, label %get_duration.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = sext i32 %i.bi to i64
  %i.ct = sext i32 %i.cr to i64                   ; 2 uses
  %i.cu = add nsw i64 %i.cs, -1
  %i.cv = add nsw i64 %i.cu, %i.ct
  %i.cw = sdiv i64 %i.cv, %i.ct
  %i.cx = trunc i64 %i.cw to i32
  br label %get_duration.exit.i

get_duration.exit.i:                              ; preds = %bb.x, %bb.w, %bb.v
  %.0.i.i = phi i32 [ %i.bi, %bb.v ], [ %i.cx, %bb.x ], [ 1, %bb.w ]
  %i.cy = sext i32 %.0.i.i to i64
  %i.cz = load i64, ptr %i.ce, align 8, !tbaa !54
  %i.da = add nsw i64 %i.cz, %i.cy
  store i64 %i.da, ptr %i.ce, align 8, !tbaa !54
  %i.db = and i32 %i.bf, 16
  %i.dc = or i32 %i.db, %.0116.i
  br label %bb.y

bb.y:                                             ; preds = %get_duration.exit.i, %bb.o, %bb.n
  %.292.i = phi i32 [ %.090112.i, %bb.n ], [ %.090112.i, %bb.o ], [ %.191.i, %get_duration.exit.i ]
  %.189.i = phi i64 [ %.088113.i, %bb.n ], [ %.088113.i, %bb.o ], [ %i.cd, %get_duration.exit.i ]
  %.287.i = phi i32 [ %.085114.i, %bb.n ], [ %.085114.i, %bb.o ], [ %.186.i, %get_duration.exit.i ]
  %.4.i = phi i64 [ %.182115.i, %bb.n ], [ %.182115.i, %bb.o ], [ %.3.i, %get_duration.exit.i ]
  %.1.i = phi i32 [ %.0116.i, %bb.n ], [ %.0116.i, %bb.o ], [ %i.dc, %get_duration.exit.i ] ; 2 uses
  %i.dd = add nuw nsw i32 %.094111.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dd, %i.bc
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.m, !llvm.loop !167

._crit_edge.i:                                    ; preds = %bb.y
  %.not.i = icmp eq i32 %.1.i, 0
  br i1 %.not.i, label %.preheader.i, label %.loopexit

.preheader.i:                                     ; preds = %._crit_edge.i
  %i.de = load i32, ptr %i.k, align 4, !tbaa !46  ; 2 uses
  %.not119.i = icmp eq i32 %i.de, 0
  br i1 %.not119.i, label %.loopexit, label %.lr.ph118.i

.lr.ph118.i:                                      ; preds = %.preheader.i, %bb.aa
  %i.df = phi i32 [ %i.dq, %bb.aa ], [ %i.de, %.preheader.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.aa ], [ 0, %.preheader.i ] ; 2 uses
  %i.dg = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv.i
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !49 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 328
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !78
  %.not101.i = icmp eq i32 %i.dk, 0
  br i1 %.not101.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph118.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 320
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !79
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8
  %i.dp = or i32 %i.do, 1
  store i32 %i.dp, ptr %i.dn, align 8
  %.pre.i = load i32, ptr %i.k, align 4, !tbaa !46
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph118.i
  %i.dq = phi i32 [ %.pre.i, %bb.z ], [ %i.df, %.lr.ph118.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dr = zext i32 %i.dq to i64
  %i.ds = icmp samesign ult i64 %indvars.iv.next.i, %i.dr
  br i1 %i.ds, label %.lr.ph118.i, label %.loopexit, !llvm.loop !168

.loopexit:                                        ; preds = %bb.aa, %.preheader.i, %._crit_edge.i
  store i32 2, ptr %i.m, align 8, !tbaa !77
  br label %bb.af

bb.ab:                                            ; preds = %bb.f
  %i.dt = icmp ult i32 %i.o, 4
  br i1 %i.dt, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.55, i32 noundef %i.o) #12
  br label %.loopexit42

bb.ad:                                            ; preds = %bb.ab
  %i.du = tail call i32 @avio_rl32(ptr noundef %i.d) #12
  %i.dv = icmp eq i32 %i.du, 1330007625
  br i1 %i.dv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dw = add i32 %i.o, -4
  %i.dx = zext i32 %i.dw to i64
  %i.dy = tail call i32 @ff_read_riff_info(ptr noundef nonnull %0, i64 noundef %i.dx) #12 ; 0 uses
  br label %bb.af

avi_read_idx1.exit.thread40:                      ; preds = %bb.m, %bb.g, %bb.f
  %.not38 = icmp eq i32 %.0, 0
  br i1 %.not38, label %.loopexit42, label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %avi_read_idx1.exit.thread40, %.loopexit
  %.1 = phi i32 [ 0, %.loopexit ], [ -1, %avi_read_idx1.exit.thread40 ], [ %.0, %bb.ae ], [ %.0, %bb.ad ]
  %i.dz = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef %i.aa, i32 noundef 0) #12
  %i.ea = icmp slt i64 %i.dz, 0
  br i1 %i.ea, label %.loopexit42, label %bb.c

.loopexit42:                                      ; preds = %bb.c, %bb.e, %bb.d, %avi_read_idx1.exit.thread40, %bb.af, %bb.ac, %bb.a
  %i.eb = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef %i.e, i32 noundef 0) #12 ; 0 uses
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
  %i.a = alloca [8 x i32], align 16               ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 -1, i64 32, i1 false)
  %i.f = tail call i64 @avio_seek(ptr noundef %i.e, i64 noundef 0, i32 noundef 1) #12
  %i.g = tail call i32 @avio_feof(ptr noundef %i.e) #12
  %.not266274 = icmp eq i32 %i.g, 0
  br i1 %.not266274, label %.preheader.lr.ph.lr.ph, label %._crit_edge

.preheader.lr.ph.lr.ph:                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.not199 = icmp eq i32 %1, 0
  %.4..4.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.28..28..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.20..20..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.24..24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.4..4.scevgep.sroa_idx425 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.lr.ph, %.thread221
  %i.n = phi i64 [ %i.f, %.preheader.lr.ph.lr.ph ], [ %i.gd, %.thread221 ] ; 2 uses
  %i.o = add nsw i64 %i.n, 9
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.thread225
  %.0178267 = phi i64 [ %i.n, %.preheader.lr.ph ], [ %i.gf, %.thread225 ] ; 4 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.a, ptr noundef nonnull align 4 dereferenceable(28) %.4..4.scevgep.sroa_idx, i64 28, i1 false), !tbaa !37
  %i.p = tail call i32 @avio_r8(ptr noundef %i.e) #12 ; 2 uses
  store i32 %i.p, ptr %.28..28..sroa_idx, align 4, !tbaa !37
  %.16..16. = load i32, ptr %.16..16..sroa_idx, align 16, !tbaa !37
  %.20..20. = load i32, ptr %.20..20..sroa_idx, align 4, !tbaa !37
  %i.q = shl i32 %.20..20., 8
  %.24..24. = load i32, ptr %.24..24..sroa_idx, align 8, !tbaa !37
  %i.r = shl i32 %.24..24., 16
  %i.s = shl i32 %i.p, 24
  %i.t = add i32 %.16..16., %i.s
  %i.u = add i32 %i.t, %i.q
  %i.v = add i32 %i.u, %i.r                       ; 9 uses
  %.8..8..val209 = load i32, ptr %.8..8..sroa_idx, align 8, !tbaa !37 ; 14 uses
  %.12..12..val210 = load i32, ptr %.12..12..sroa_idx, align 4 ; 12 uses
  %i.w = add i32 %.8..8..val209, -48
  %or.cond.i = icmp ult i32 %i.w, 10              ; 2 uses
  %i.x = add i32 %.12..12..val210, -48
  %or.cond8.i = icmp ult i32 %i.x, 10
  %or.cond1.i = select i1 %or.cond.i, i1 %or.cond8.i, i1 false
  %i.y = mul nuw nsw i32 %.8..8..val209, 10
  %i.z = add i32 %.12..12..val210, -528
  %i.aa = add i32 %i.z, %i.y
  %.0.i = select i1 %or.cond1.i, i32 %i.aa, i32 100
  %i.ab = load i64, ptr %i.h, align 8, !tbaa !33
  %i.ac = icmp sgt i64 %i.ab, 0
  %i.ad = select i1 %i.ac, i64 %.0178267, i64 0
  %i.ae = zext i32 %i.v to i64                    ; 4 uses
  %i.af = add i64 %i.ad, %i.ae
  %i.ag = load i64, ptr %i.i, align 8, !tbaa !32
  %i.ah = icmp ugt i64 %i.af, %i.ag
  %.0..0. = load i32, ptr %i.a, align 16          ; 6 uses
  %i.ai = icmp ugt i32 %.0..0., 127
  %or.cond = select i1 %i.ah, i1 true, i1 %i.ai
  br i1 %or.cond, label %.thread225, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.aj = icmp eq i32 %.0..0., 105                ; 3 uses
  %.4..4. = load i32, ptr %.4..4.scevgep.sroa_idx425, align 4 ; 8 uses
  %i.ak = icmp eq i32 %.4..4., 120
  %or.cond5 = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.al = load i32, ptr %i.j, align 4, !tbaa !46
  %i.am = icmp ult i32 %.0.i, %i.al
  br i1 %i.am, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.an = icmp eq i32 %.0..0., 74
  %i.ao = icmp eq i32 %.4..4., 85
  %or.cond8 = select i1 %i.an, i1 %i.ao, i1 false
  %i.ap = icmp eq i32 %.8..8..val209, 78
  %or.cond11 = select i1 %or.cond8, i1 %i.ap, i1 false
  %i.aq = icmp eq i32 %.12..12..val210, 75
  %or.cond14 = select i1 %or.cond11, i1 %i.aq, i1 false
  br i1 %or.cond14, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = icmp eq i32 %.4..4., 100
  %or.cond17 = select i1 %i.aj, i1 %i.ar, i1 false
  %i.as = icmp eq i32 %.8..8..val209, 120
  %or.cond20 = select i1 %or.cond17, i1 %i.as, i1 false
  %i.at = icmp eq i32 %.12..12..val210, 49
  %or.cond23 = select i1 %or.cond20, i1 %i.at, i1 false
  br i1 %or.cond23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = icmp eq i32 %.4..4., 110
  %or.cond26 = select i1 %i.aj, i1 %i.au, i1 false
  %i.av = icmp eq i32 %.8..8..val209, 100
  %or.cond29 = select i1 %or.cond26, i1 %i.av, i1 false
  %i.aw = icmp eq i32 %.12..12..val210, 120       ; 2 uses
  %or.cond32 = select i1 %or.cond29, i1 %i.aw, i1 false
  br i1 %or.cond32, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.ax = tail call i64 @avio_skip(ptr noundef %i.e, i64 noundef %i.ae) #12 ; 0 uses
  br label %.thread221

bb.h:                                             ; preds = %bb.f
  %i.ay = icmp eq i32 %.0..0., 76
  %i.az = icmp eq i32 %.4..4., 73
  %or.cond35 = select i1 %i.ay, i1 %i.az, i1 false
  %i.ba = icmp eq i32 %.8..8..val209, 83
  %or.cond38 = select i1 %or.cond35, i1 %i.ba, i1 false
  %i.bb = icmp eq i32 %.12..12..val210, 84
  %or.cond41 = select i1 %or.cond38, i1 %i.bb, i1 false
  br i1 %or.cond41, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bc = tail call i64 @avio_skip(ptr noundef %i.e, i64 noundef 4) #12 ; 0 uses
  br label %.thread221

bb.j:                                             ; preds = %bb.h
  %i.bd = add nsw i32 %.0..0., -48
  %or.cond.i211 = icmp ult i32 %i.bd, 10
  %i.be = add i32 %.4..4., -48
  %or.cond8.i212 = icmp ult i32 %i.be, 10         ; 2 uses
  %or.cond1.i213 = select i1 %or.cond.i211, i1 %or.cond8.i212, i1 false
  %i.bf = mul nuw nsw i32 %.0..0., 10
  %i.bg = add nsw i32 %i.bf, -528
  %i.bh = add i32 %i.bg, %.4..4.
  %.0.i214 = select i1 %or.cond1.i213, i32 %i.bh, i32 100 ; 9 uses
  %i.bi = load i64, ptr %i.k, align 8, !tbaa !88
  %i.bj = sub nsw i64 %.0178267, %i.bi
  %i.bk = and i64 %i.bj, 1
  %.not196 = icmp eq i64 %i.bk, 0
  br i1 %.not196, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %or.cond1.i217 = select i1 %or.cond8.i212, i1 %or.cond.i, i1 false
end_hunk_0
