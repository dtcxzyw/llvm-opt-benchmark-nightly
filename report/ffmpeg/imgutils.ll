Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/imgutils?download=true
inline.NumInlined: 13
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 22
begin_hunk_0_@av_image_copy_to_buffer:bb.a
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define range(i32 -22, 1) i32 @av_image_fill_color(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 %6) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x [32 x i8]], align 16         ; 8 uses
  %i.b = alloca [4 x i32], align 16               ; 6 uses
  %i.c = alloca [4 x i64], align 16               ; 5 uses
  %i.d = alloca [4 x ptr], align 16               ; 7 uses
  %i.e = alloca [4 x i32], align 16               ; 5 uses
  %i.f = alloca [32 x i32], align 16              ; 6 uses
  %i.g = tail call ptr @av_pix_fmt_desc_get(i32 noundef %2) #12 ; 7 uses
  %i.h = tail call i32 @av_pix_fmt_count_planes(i32 noundef %2) #12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.i = icmp eq ptr %i.g, null
  %i.j = add i32 %i.h, -5
  %i.k = icmp ult i32 %i.j, -4
  %or.cond4 = select i1 %i.i, i1 true, i1 %i.k
  br i1 %or.cond4, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !18   ; 2 uses
  %i.n = and i64 %i.m, 8
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.o = and i64 %i.m, 4
  %.not94 = icmp eq i64 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !32    ; 2 uses
  %.not121 = icmp eq i8 %i.q, 0
  br i1 %.not121, label %.lr.ph109.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %wide.trip.count = zext i8 %i.q to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph107, label %bb.e, !llvm.loop !52

.lr.ph107:                                        ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.t = select i1 %.not94, i32 0, i32 3
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.z = insertelement <2 x ptr> poison, ptr %i.u, i64 0
  %i.aa = insertelement <2 x ptr> %i.z, ptr %i.w, i64 1
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [20 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  %.sroa.025.0.copyload = load i32, ptr %i.ab, align 4, !tbaa !13
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !13
  %i.ac = sext i32 %.sroa.025.0.copyload to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !13
  %..sroa.7.0.copyload = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 %.sroa.7.0.copyload) ; 2 uses
  store i32 %..sroa.7.0.copyload, ptr %i.ad, align 4, !tbaa !13
  %i.af = icmp slt i32 %..sroa.7.0.copyload, 33
  br i1 %i.af, label %bb.d, label %.loopexit

.preheader96:                                     ; preds = %.preheader98.preheader
  %i.ag = icmp sgt i32 %i.h, 0
  br i1 %i.ag, label %.lr.ph109.preheader, label %.loopexit

.lr.ph109.preheader:                              ; preds = %bb.c, %.preheader96
  %wide.trip.count143 = zext nneg i32 %i.h to i64
  br label %.lr.ph109

bb.f:                                             ; preds = %.lr.ph107, %.preheader98.preheader
  %indvars.iv137 = phi i64 [ 0, %.lr.ph107 ], [ %indvars.iv.next138, %.preheader98.preheader ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [20 x i8], ptr %i.s, i64 %indvars.iv137 ; 3 uses
  %.sroa.0.0.copyload = load i32, ptr %i.ah, align 4, !tbaa !13
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !13
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.524.0.copyload = load i32, ptr %.sroa.524.0..sroa_idx, align 4, !tbaa !13
  %i.ai = sext i32 %.sroa.0.0.copyload to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !13
  %i.al = shl i32 %i.ak, %i.t
  %i.am = sdiv i32 %i.al, %.sroa.4.0.copyload     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.an = icmp sgt i32 %.sroa.524.0.copyload, 32
  %i.ao = icmp slt i32 %i.am, 1
  %or.cond = select i1 %i.an, i1 true, i1 %i.ao
  br i1 %or.cond, label %bb.g, label %.preheader99

.preheader99:                                     ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv137
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !13 ; 2 uses
  %wide.trip.count131 = zext nneg i32 %i.am to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.am, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader99
  %n.vec = and i64 %wide.trip.count131, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.aq, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ar, align 16, !tbaa !13
  store <4 x i32> %broadcast.splat, ptr %i.as, align 16, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count131
  br i1 %cmp.n, label %.preheader98.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader99, %middle.block
  %indvars.iv128.ph = phi i64 [ 0, %.preheader99 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %scalar.ph ], [ %indvars.iv128.ph, %scalar.ph.preheader ] ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv128
  store i32 %i.aq, ptr %i.au, align 4, !tbaa !13
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count131
  br i1 %exitcond132.not, label %.preheader98.preheader, label %scalar.ph, !llvm.loop !54

.preheader98.preheader:                           ; preds = %scalar.ph, %middle.block
  store ptr %i.a, ptr %i.d, align 16, !tbaa !22
  store <2 x ptr> %i.aa, ptr %i.v, align 8, !tbaa !22
  store ptr %i.x, ptr %i.y, align 8, !tbaa !22
  %i.av = trunc nuw nsw i64 %indvars.iv137 to i32
  call void @av_write_image_line2(ptr noundef nonnull %i.f, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.g, i32 noundef 0, i32 noundef 0, i32 noundef %i.av, i32 noundef %i.am, i32 noundef 4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %i.aw = load i8, ptr %i.p, align 8, !tbaa !32
  %i.ax = zext i8 %i.aw to i64
  %i.ay = icmp samesign ult i64 %indvars.iv.next138, %i.ax
  br i1 %i.ay, label %bb.f, label %.preheader96, !llvm.loop !55

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %.loopexit

bb.h:                                             ; preds = %.lr.ph109
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count143
  br i1 %exitcond144.not, label %._crit_edge, label %.lr.ph109, !llvm.loop !56

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %bb.h
  %indvars.iv140 = phi i64 [ 0, %.lr.ph109.preheader ], [ %indvars.iv.next141, %bb.h ] ; 3 uses
  %i.az = trunc nuw nsw i64 %indvars.iv140 to i32
  %i.ba = call i32 @av_image_get_linesize(i32 noundef %2, i32 noundef %4, i32 noundef %i.az) ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv140
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !20
  %i.bd = icmp slt i32 %i.ba, 0
  br i1 %i.bd, label %.loopexit, label %bb.h

._crit_edge:                                      ; preds = %bb.h
  %.not95.not = icmp eq ptr %0, null
  br i1 %.not95.not, label %.loopexit, label %.lr.ph118

.lr.ph118:                                        ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %i.bf = sub nsw i32 0, %5
  %wide.trip.count148 = zext nneg i32 %i.h to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph118, %._crit_edge114.split
  %indvars.iv145 = phi i64 [ 0, %.lr.ph118 ], [ %indvars.iv.next146, %._crit_edge114.split ] ; 7 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv145
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !20 ; 8 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv145
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !22 ; 3 uses
  %i.bk = trunc i64 %indvars.iv145 to i32
  %i.bl = add i32 %i.bk, -1
  %or.cond6 = icmp ult i32 %i.bl, 2
  br i1 %or.cond6, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bm = load i8, ptr %i.be, align 2, !tbaa !21
  %i.bn = zext i8 %i.bm to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bo = phi i32 [ %i.bn, %bb.j ], [ 0, %bb.i ]
  %i.bp = ashr i32 %i.bf, %i.bo                   ; 3 uses
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %.lr.ph113, label %._crit_edge114.split

.lr.ph113:                                        ; preds = %bb.k
  %i.br = sub i32 0, %i.bp                        ; 4 uses
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %indvars.iv145 ; 8 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv145
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !13
  %.fr123 = freeze i32 %i.bu                      ; 2 uses
  %i.bv = sext i32 %.fr123 to i64                 ; 2 uses
  %spec.select29.i = call i64 @llvm.umin.i64(i64 range(i64 -2147483648, 2147483648) %i.bv, i64 %i.bh) ; 4 uses
  %i.bw = trunc i64 %spec.select29.i to i32
  %i.bx = sub nuw i64 %i.bh, %spec.select29.i
  %i.by = trunc i64 %i.bx to i32
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv145 ; 6 uses
  switch i32 %.fr123, label %.preheader.i [
    i32 0, label %._crit_edge114.split
    i32 1, label %.preheader.i.us.preheader
  ]

.preheader.i.us.preheader:                        ; preds = %.lr.ph113
  %xtraiter = and i32 %i.br, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.us.prol.loopexit, label %.preheader.i.us.prol

.preheader.i.us.prol:                             ; preds = %.preheader.i.us.preheader, %.preheader.i.us.prol
  %.0111.us.prol = phi i32 [ %10, %.preheader.i.us.prol ], [ %i.br, %.preheader.i.us.preheader ]
  %.079110.us.prol = phi ptr [ %9, %.preheader.i.us.prol ], [ %i.bj, %.preheader.i.us.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.i.us.prol ], [ 0, %.preheader.i.us.preheader ]
  %7 = load i8, ptr %i.bs, align 16, !tbaa !33
  call void @llvm.memset.p0.i64(ptr align 1 %.079110.us.prol, i8 %7, i64 %i.bh, i1 false)
  %8 = load i64, ptr %i.bz, align 8, !tbaa !20
  %9 = getelementptr inbounds i8, ptr %.079110.us.prol, i64 %8 ; 2 uses
  %10 = add nsw i32 %.0111.us.prol, -1            ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.us.prol.loopexit, label %.preheader.i.us.prol, !llvm.loop !57

.preheader.i.us.prol.loopexit:                    ; preds = %.preheader.i.us.prol, %.preheader.i.us.preheader
  %.0111.us.unr = phi i32 [ %i.br, %.preheader.i.us.preheader ], [ %10, %.preheader.i.us.prol ]
  %.079110.us.unr = phi ptr [ %i.bj, %.preheader.i.us.preheader ], [ %9, %.preheader.i.us.prol ]
  %11 = icmp ugt i32 %i.bp, -4
  br i1 %11, label %._crit_edge114.split, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.i.us.prol.loopexit, %.preheader.i.us
  %.0111.us = phi i32 [ %i.cd, %.preheader.i.us ], [ %.0111.us.unr, %.preheader.i.us.prol.loopexit ] ; 2 uses
  %.079110.us = phi ptr [ %i.cc, %.preheader.i.us ], [ %.079110.us.unr, %.preheader.i.us.prol.loopexit ] ; 2 uses
  %12 = load i8, ptr %i.bs, align 16, !tbaa !33
  call void @llvm.memset.p0.i64(ptr align 1 %.079110.us, i8 %12, i64 %i.bh, i1 false)
  %13 = load i64, ptr %i.bz, align 8, !tbaa !20
  %14 = getelementptr inbounds i8, ptr %.079110.us, i64 %13 ; 2 uses
  %15 = load i8, ptr %i.bs, align 16, !tbaa !33
  call void @llvm.memset.p0.i64(ptr align 1 %14, i8 %15, i64 %i.bh, i1 false)
  %16 = load i64, ptr %i.bz, align 8, !tbaa !20
  %17 = getelementptr inbounds i8, ptr %14, i64 %16 ; 2 uses
  %18 = load i8, ptr %i.bs, align 16, !tbaa !33
  call void @llvm.memset.p0.i64(ptr align 1 %17, i8 %18, i64 %i.bh, i1 false)
  %19 = load i64, ptr %i.bz, align 8, !tbaa !20
  %20 = getelementptr inbounds i8, ptr %17, i64 %19 ; 2 uses
  %i.ca = load i8, ptr %i.bs, align 16, !tbaa !33
  call void @llvm.memset.p0.i64(ptr align 1 %20, i8 %i.ca, i64 %i.bh, i1 false)
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !20
  %i.cc = getelementptr inbounds i8, ptr %20, i64 %i.cb
  %i.cd = add nsw i32 %.0111.us, -4
  %21 = icmp sgt i32 %.0111.us, 4
  br i1 %21, label %.preheader.i.us, label %._crit_edge114.split, !llvm.loop !58

.preheader.i:                                     ; preds = %.lr.ph113, %memset_bytes.exit
  %.0111 = phi i32 [ %i.ck, %memset_bytes.exit ], [ %i.br, %.lr.ph113 ] ; 2 uses
  %.079110 = phi ptr [ %i.cj, %memset_bytes.exit ], [ %i.bj, %.lr.ph113 ] ; 4 uses
  %i.ce = load i8, ptr %i.bs, align 16, !tbaa !33 ; 2 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.bv
  br i1 %exitcond.not.i, label %.thread.i.loopexit, label %bb.m, !llvm.loop !59

bb.m:                                             ; preds = %bb.l, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.l ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bs, i64 %indvars.iv.i
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !33
  %.not27.i = icmp eq i8 %i.cg, %i.ce
  br i1 %.not27.i, label %bb.l, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.079110, ptr nonnull readonly align 16 %i.bs, i64 %spec.select29.i, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %.079110, i64 %spec.select29.i
  call void @av_memcpy_backptr(ptr noundef %i.ch, i32 noundef %i.bw, i32 noundef %i.by) #12
  br label %memset_bytes.exit

.thread.i.loopexit:                               ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr align 1 %.079110, i8 %i.ce, i64 %i.bh, i1 false)
  br label %memset_bytes.exit

memset_bytes.exit:                                ; preds = %.thread.i.loopexit, %bb.n
  %i.ci = load i64, ptr %i.bz, align 8, !tbaa !20
  %i.cj = getelementptr inbounds i8, ptr %.079110, i64 %i.ci
  %i.ck = add nsw i32 %.0111, -1
  %i.cl = icmp sgt i32 %.0111, 1
  br i1 %i.cl, label %.preheader.i, label %._crit_edge114.split, !llvm.loop !58

._crit_edge114.split:                             ; preds = %.preheader.i.us.prol.loopexit, %.preheader.i.us, %memset_bytes.exit, %.lr.ph113, %bb.k
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond149.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count148
  br i1 %exitcond149.not, label %.loopexit, label %bb.i, !llvm.loop !60

.loopexit:                                        ; preds = %bb.e, %.lr.ph109, %._crit_edge114.split, %.preheader96, %._crit_edge, %bb.g, %bb.a, %bb.b
  %.4 = phi i32 [ 0, %._crit_edge114.split ], [ 0, %.preheader96 ], [ -22, %bb.g ], [ -22, %bb.a ], [ 0, %._crit_edge ], [ -22, %bb.b ], [ -22, %.lr.ph109 ], [ -22, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.4
}

declare i32 @av_pix_fmt_count_planes(i32 noundef) local_unnamed_addr #4

declare void @av_write_image_line2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -22, 1) i32 @av_image_fill_black(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 11 uses
  %i.b = tail call ptr @av_pix_fmt_desc_get(i32 noundef %2) #12 ; 9 uses
  %i.c = tail call i32 @av_pix_fmt_count_planes(i32 noundef %2) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.d = icmp eq ptr %i.b, null
  %i.e = add i32 %i.c, -5
  %i.f = icmp ult i32 %i.e, -4
  %or.cond4 = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond4, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18
  %.fr106 = freeze i64 %i.h                       ; 5 uses
  %i.i = and i64 %.fr106, 8
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = and i64 %.fr106, 1058
  %or.cond8.not = icmp eq i64 %i.j, 0
  %i.k = icmp ne i32 %3, 2
  %spec.select = and i1 %i.k, %or.cond8.not       ; 2 uses
  %i.l = and i64 %.fr106, 130
  %i.m = icmp eq i64 %i.l, 128
  %i.n = and i64 %.fr106, 512
  %.not107 = icmp eq i64 %i.n, 0                  ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load i8, ptr %i.o, align 8, !tbaa !32    ; 4 uses
  %.not103112.not = icmp eq i8 %i.p, 0
  br i1 %.not103112.not, label %.critedge105, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.q = icmp eq i32 %2, 9
  %i.r = and i64 %.fr106, 1056
  %i.s = icmp ne i64 %i.r, 0                      ; 3 uses
  %wide.trip.count152 = zext i8 %i.p to i64       ; 6 uses
  br i1 %i.q, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %bb.d ], [ 0, %.lr.ph ] ; 3 uses
  %i.t = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %indvars.iv149
  %.sroa.3.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %.sroa.3.0.copyload.us = load i32, ptr %.sroa.3.0..sroa_idx.us, align 4, !tbaa !13
  %i.u = icmp sgt i32 %.sroa.3.0.copyload.us, 32
  br i1 %i.u, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv149
  store i32 1, ptr %i.v, align 4, !tbaa !13
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count152
  br i1 %exitcond153.not, label %.critedge105, label %.lr.ph.split.us, !llvm.loop !61

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.m, label %.lr.ph.split.split, label %.lr.ph.split.split.us.preheader

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %.sroa.3.0..sroa_idx.us115.peel = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.3.0.copyload.us116.peel = load i32, ptr %.sroa.3.0..sroa_idx.us115.peel, align 8, !tbaa !13 ; 6 uses
  %i.w = icmp sgt i32 %.sroa.3.0.copyload.us116.peel, 32
  br i1 %i.w, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.split.us.preheader
  %i.x = icmp sgt i32 %.sroa.3.0.copyload.us116.peel, 1
  %or.cond18.us.peel = and i1 %i.x, %spec.select
  br i1 %or.cond18.us.peel, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.y = icmp samesign ult i32 %.sroa.3.0.copyload.us116.peel, 8
  br i1 %i.y, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not107, label %.critedge109.us.peel, label %switch.early.test.us.peel

switch.early.test.us.peel:                        ; preds = %bb.g
  switch i32 %.sroa.3.0.copyload.us116.peel, label %.critedge [
    i32 32, label %bb.h
    i32 16, label %bb.h
  ]

bb.h:                                             ; preds = %switch.early.test.us.peel, %switch.early.test.us.peel
  %i.z = icmp eq i32 %.sroa.3.0.copyload.us116.peel, 16
  %i.aa = select i1 %i.z, i32 11264, i32 1031798784
  br label %bb.i

.critedge109.us.peel:                             ; preds = %bb.g
  %i.ab = add nsw i32 %.sroa.3.0.copyload.us116.peel, -8
  %i.ac = shl nuw nsw i32 16, %i.ab
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %.critedge109.us.peel, %bb.h
  %.0.us117.peel = phi i32 [ %i.aa, %bb.h ], [ %i.ac, %.critedge109.us.peel ], [ 0, %bb.e ]
  store i32 %.0.us117.peel, ptr %i.a, align 16, !tbaa !13
  %exitcond.peel.not = icmp eq i8 %i.p, 1
  br i1 %exitcond.peel.not, label %.critedge105, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %bb.i, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 1, %bb.i ] ; 4 uses
  %i.ad = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %indvars.iv
  %.sroa.3.0..sroa_idx.us115 = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %.sroa.3.0.copyload.us116 = load i32, ptr %.sroa.3.0..sroa_idx.us115, align 4, !tbaa !13 ; 5 uses
  %i.ae = icmp sgt i32 %.sroa.3.0.copyload.us116, 32
  br i1 %i.ae, label %.critedge, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.split.us
  %i.af = trunc i64 %indvars.iv to i32
  %i.ag = add i32 %i.af, -3
  %or.cond26.us = icmp ult i32 %i.ag, -2
  %or.cond30.us = or i1 %i.s, %or.cond26.us
  br i1 %or.cond30.us, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = icmp slt i32 %.sroa.3.0.copyload.us116, 8
  br i1 %i.ah, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not107, label %.critedge111.us, label %switch.early.test104.us

switch.early.test104.us:                          ; preds = %bb.l
  switch i32 %.sroa.3.0.copyload.us116, label %.critedge [
    i32 32, label %bb.m
    i32 16, label %bb.m
  ]

bb.m:                                             ; preds = %switch.early.test104.us, %switch.early.test104.us
  %i.ai = icmp eq i32 %.sroa.3.0.copyload.us116, 16
  %i.aj = select i1 %i.ai, i32 14336, i32 1056964608
  br label %bb.n

.critedge111.us:                                  ; preds = %bb.l
  %i.ak = add nsw i32 %.sroa.3.0.copyload.us116, -8
  %i.al = shl nuw i32 128, %i.ak
  br label %bb.n

bb.n:                                             ; preds = %.critedge111.us, %bb.m, %bb.j
  %.0.us117 = phi i32 [ %i.al, %.critedge111.us ], [ %i.aj, %bb.m ], [ 0, %bb.j ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %.0.us117, ptr %i.am, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count152
  br i1 %exitcond.not, label %.critedge105, label %.lr.ph.split.split.us, !llvm.loop !62

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %spec.select, label %.lr.ph.split.split.split.preheader, label %.lr.ph.split.split.split.us

.lr.ph.split.split.split.preheader:               ; preds = %.lr.ph.split.split
  %.sroa.3.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.3.0.copyload.peel = load i32, ptr %.sroa.3.0..sroa_idx.peel, align 8, !tbaa !13 ; 10 uses
  %i.an = icmp sgt i32 %.sroa.3.0.copyload.peel, 32
  br i1 %i.an, label %.critedge, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.split.split.preheader
  %i.ao = icmp eq i8 %i.p, 1
  br i1 %i.ao, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = icmp sgt i32 %.sroa.3.0.copyload.peel, 1
  br i1 %i.ap, label %bb.q, label %.lr.ph.split.split.split.peel.next

bb.q:                                             ; preds = %bb.p
  %i.aq = icmp samesign ult i32 %.sroa.3.0.copyload.peel, 8
  br i1 %i.aq, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %.not107, label %.critedge109.peel, label %switch.early.test.peel

switch.early.test.peel:                           ; preds = %bb.r
  switch i32 %.sroa.3.0.copyload.peel, label %.critedge [
    i32 32, label %bb.s
    i32 16, label %bb.s
  ]

bb.s:                                             ; preds = %switch.early.test.peel, %switch.early.test.peel
  %i.ar = icmp eq i32 %.sroa.3.0.copyload.peel, 16
  %i.as = select i1 %i.ar, i32 11264, i32 1031798784
  br label %.lr.ph.split.split.split.peel.next

.critedge109.peel:                                ; preds = %bb.r
  %i.at = add nsw i32 %.sroa.3.0.copyload.peel, -8
  %i.au = shl nuw nsw i32 16, %i.at
  br label %.lr.ph.split.split.split.peel.next

bb.t:                                             ; preds = %bb.o
  br i1 %.not107, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  switch i32 %.sroa.3.0.copyload.peel, label %.critedge [
    i32 32, label %bb.v
    i32 16, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  %i.av = icmp eq i32 %.sroa.3.0.copyload.peel, 16
  %i.aw = select i1 %i.av, i32 15360, i32 1065353216
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.ax = icmp eq i32 %.sroa.3.0.copyload.peel, 32
  %notmask.peel = shl nsw i32 -1, %.sroa.3.0.copyload.peel
  %i.ay = xor i32 %notmask.peel, -1
  %i.az = select i1 %i.ax, i32 -1, i32 %i.ay
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0.peel = phi i32 [ %i.az, %bb.w ], [ %i.aw, %bb.v ]
  store i32 %.0.peel, ptr %i.a, align 16, !tbaa !13
  br label %.critedge105

.lr.ph.split.split.split.peel.next:               ; preds = %bb.p, %.critedge109.peel, %bb.s
  %.0.peel.ph = phi i32 [ 0, %bb.p ], [ %i.as, %bb.s ], [ %i.au, %.critedge109.peel ]
  store i32 %.0.peel.ph, ptr %i.a, align 16, !tbaa !13
  br label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split, %bb.ah
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %bb.ah ], [ 0, %.lr.ph.split.split ] ; 4 uses
  %i.ba = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %indvars.iv138
  %.sroa.3.0..sroa_idx.us120 = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %.sroa.3.0.copyload.us121 = load i32, ptr %.sroa.3.0..sroa_idx.us120, align 4, !tbaa !13 ; 9 uses
  %i.bb = icmp sgt i32 %.sroa.3.0.copyload.us121, 32
  br i1 %i.bb, label %.critedge, label %bb.y

bb.y:                                             ; preds = %.lr.ph.split.split.split.us
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 3 uses
  %i.bc = icmp eq i64 %indvars.iv.next139, %wide.trip.count152
  br i1 %i.bc, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bd = trunc i64 %indvars.iv138 to i32
  %i.be = add i32 %i.bd, -3
  %or.cond26.us124 = icmp ult i32 %i.be, -2
  %or.cond30.us125 = or i1 %i.s, %or.cond26.us124
  br i1 %or.cond30.us125, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bf = icmp slt i32 %.sroa.3.0.copyload.us121, 8
  br i1 %i.bf, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not107, label %.critedge111.us127, label %switch.early.test104.us126

switch.early.test104.us126:                       ; preds = %bb.ab
  switch i32 %.sroa.3.0.copyload.us121, label %.critedge [
    i32 32, label %bb.ac
    i32 16, label %bb.ac
  ]

bb.ac:                                            ; preds = %switch.early.test104.us126, %switch.early.test104.us126
  %i.bg = icmp eq i32 %.sroa.3.0.copyload.us121, 16
  %i.bh = select i1 %i.bg, i32 14336, i32 1056964608
  br label %bb.ah

.critedge111.us127:                               ; preds = %bb.ab
  %i.bi = add nsw i32 %.sroa.3.0.copyload.us121, -8
  %i.bj = shl nuw i32 128, %i.bi
  br label %bb.ah

bb.ad:                                            ; preds = %bb.y
  br i1 %.not107, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  switch i32 %.sroa.3.0.copyload.us121, label %.critedge [
    i32 32, label %bb.af
    i32 16, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae
  %i.bk = icmp eq i32 %.sroa.3.0.copyload.us121, 16
  %i.bl = select i1 %i.bk, i32 15360, i32 1065353216
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  %i.bm = icmp eq i32 %.sroa.3.0.copyload.us121, 32
  %notmask.us = shl nsw i32 -1, %.sroa.3.0.copyload.us121
  %i.bn = xor i32 %notmask.us, -1
  %i.bo = select i1 %i.bm, i32 -1, i32 %i.bn
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.critedge111.us127, %bb.ac, %bb.z
  %.0.us128 = phi i32 [ %i.bj, %.critedge111.us127 ], [ %i.bl, %bb.af ], [ %i.bo, %bb.ag ], [ %i.bh, %bb.ac ], [ 0, %bb.z ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv138
  store i32 %.0.us128, ptr %i.bp, align 4, !tbaa !13
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count152
  br i1 %exitcond142.not, label %.critedge105, label %.lr.ph.split.split.split.us, !llvm.loop !61

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split.split.peel.next, %bb.ar
  %indvars.iv143 = phi i64 [ 1, %.lr.ph.split.split.split.peel.next ], [ %indvars.iv.next144, %bb.ar ] ; 4 uses
  %i.bq = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %indvars.iv143
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !13 ; 9 uses
  %i.br = icmp sgt i32 %.sroa.3.0.copyload, 32
  br i1 %i.br, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.split.split.split
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 3 uses
  %i.bs = icmp eq i64 %indvars.iv.next144, %wide.trip.count152
  br i1 %i.bs, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not107, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  switch i32 %.sroa.3.0.copyload, label %.critedge [
    i32 32, label %bb.al
    i32 16, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak
  %i.bt = icmp eq i32 %.sroa.3.0.copyload, 16
  %i.bu = select i1 %i.bt, i32 15360, i32 1065353216
  br label %bb.ar

bb.am:                                            ; preds = %bb.aj
  %i.bv = icmp eq i32 %.sroa.3.0.copyload, 32
  %notmask = shl nsw i32 -1, %.sroa.3.0.copyload
  %i.bw = xor i32 %notmask, -1
  %i.bx = select i1 %i.bv, i32 -1, i32 %i.bw
  br label %bb.ar

bb.an:                                            ; preds = %bb.ai
  %i.by = trunc i64 %indvars.iv143 to i32
  %i.bz = add i32 %i.by, -3
  %or.cond26 = icmp ult i32 %i.bz, -2
  %or.cond30 = or i1 %i.s, %or.cond26
  br i1 %or.cond30, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ca = icmp slt i32 %.sroa.3.0.copyload, 8
  br i1 %i.ca, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  br i1 %.not107, label %.critedge111, label %switch.early.test104

switch.early.test104:                             ; preds = %bb.ap
  switch i32 %.sroa.3.0.copyload, label %.critedge [
    i32 32, label %bb.aq
    i32 16, label %bb.aq
  ]

bb.aq:                                            ; preds = %switch.early.test104, %switch.early.test104
  %i.cb = icmp eq i32 %.sroa.3.0.copyload, 16
  %i.cc = select i1 %i.cb, i32 14336, i32 1056964608
  br label %bb.ar

.critedge111:                                     ; preds = %bb.ap
  %i.cd = add nsw i32 %.sroa.3.0.copyload, -8
  %i.ce = shl nuw i32 128, %i.cd
  br label %bb.ar

bb.ar:                                            ; preds = %bb.am, %bb.al, %bb.an, %.critedge111, %bb.aq
  %.0 = phi i32 [ %i.ce, %.critedge111 ], [ %i.bu, %bb.al ], [ %i.bx, %bb.am ], [ %i.cc, %bb.aq ], [ 0, %bb.an ]
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv143
  store i32 %.0, ptr %i.cf, align 4, !tbaa !13
  %exitcond147.not = icmp eq i64 %indvars.iv.next144, %wide.trip.count152
  br i1 %exitcond147.not, label %.critedge105, label %.lr.ph.split.split.split, !llvm.loop !63

.critedge105:                                     ; preds = %bb.n, %bb.ah, %bb.ar, %bb.d, %bb.i, %bb.x, %bb.c
  %i.cg = call i32 @av_image_fill_color(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.a, i32 noundef %4, i32 noundef %5, i32 poison)
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.split.split.us, %bb.k, %switch.early.test104.us, %bb.ae, %switch.early.test104.us126, %bb.aa, %.lr.ph.split.split.split.us, %.lr.ph.split.split.split, %bb.ak, %switch.early.test104, %bb.ao, %.lr.ph.split.us, %.lr.ph.split.split.us.preheader, %bb.f, %switch.early.test.us.peel, %.lr.ph.split.split.split.preheader, %bb.q, %switch.early.test.peel, %bb.u, %bb.a, %bb.b, %.critedge105
  %.3 = phi i32 [ -22, %bb.a ], [ %i.cg, %.critedge105 ], [ -22, %bb.b ], [ -22, %.lr.ph.split.split.us.preheader ], [ -22, %.lr.ph.split.split.split.preheader ], [ -22, %bb.ae ], [ -22, %.lr.ph.split.us ], [ -22, %switch.early.test.us.peel ], [ -22, %bb.f ], [ -22, %.lr.ph.split.split.split ], [ -22, %bb.u ], [ -22, %switch.early.test.peel ], [ -22, %bb.q ], [ -22, %bb.ao ], [ -22, %switch.early.test104 ], [ -22, %bb.ak ], [ -22, %.lr.ph.split.split.split.us ], [ -22, %bb.aa ], [ -22, %switch.early.test104.us126 ], [ -22, %switch.early.test104.us ], [ -22, %bb.k ], [ -22, %.lr.ph.split.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.3
}

declare ptr @av_default_item_name(ptr noundef) #4

declare void @av_memcpy_backptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !23}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"override-stack-alignment", i32 16}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"AVComponentDescriptor", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16}
!11 = !{!10, !7, i64 4}
!12 = !{!10, !7, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!"AVPixFmtDescriptor", !15, i64 0, !6, i64 8, !6, i64 9, !6, i64 10, !16, i64 16, !6, i64 24, !15, i64 104}
!18 = !{!17, !16, i64 16}
!19 = !{!17, !6, i64 9}
!20 = !{!16, !16, i64 0}
!21 = !{!17, !6, i64 10}
!22 = !{!15, !15, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{!"p1 _ZTS7AVClass", !14, i64 0}
!27 = !{!"ImgUtils", !26, i64 0, !7, i64 8, !14, i64 16}
!28 = !{!27, !26, i64 0}
!29 = !{!27, !7, i64 8}
!30 = !{!27, !14, i64 16}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = !{!17, !6, i64 8}
!33 = !{!6, !6, i64 0}
!34 = distinct !{!34, !23, !24, !25}
!35 = distinct !{!35, !23, !24, !25}
!36 = distinct !{!36, !23, !24, !25}
!37 = distinct !{!37, !23, !24, !25}
!38 = distinct !{!38, !23, !24, !25}
!39 = distinct !{!39, !31}
!40 = distinct !{!40, !31}
!41 = distinct !{!41, !31}
!42 = distinct !{!42, !23, !24, !25}
!43 = distinct !{!43, !23, !25, !24}
!44 = distinct !{!44, !23}
!45 = !{ptr @av_image_copy_plane_uc_from, ptr @image_copy_plane}
!46 = distinct !{!46, !23}
!47 = distinct !{!47, !31}
!48 = distinct !{!48, !23}
!49 = distinct !{!49, !31}
!50 = distinct !{!50, !23}
!51 = distinct !{!51, !23}
!52 = distinct !{!52, !23}
!53 = distinct !{!53, !23, !24, !25}
!54 = distinct !{!54, !23, !25, !24}
!55 = distinct !{!55, !23}
!56 = distinct !{!56, !23}
!57 = distinct !{!57, !31}
!58 = distinct !{!58, !23}
!59 = distinct !{!59, !23}
!60 = distinct !{!60, !23}
!61 = distinct !{!61, !23}
!62 = distinct !{!62, !23, !64}
!63 = distinct !{!63, !23, !64}
!64 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_0
