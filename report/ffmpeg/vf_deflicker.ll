Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_deflicker?download=true
inline.NumInlined: 16
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@filter_frame:bb.a

ff_bufqueue_add.exit70:                           ; preds = %ff_bufqueue_get.exit, %bb.m
  %i.fh = phi i16 [ %.pre.i69, %bb.m ], [ %.val.i67, %ff_bufqueue_get.exit ] ; 2 uses
  %i.fi = load i16, ptr %i.eb, align 8, !tbaa !23
  %i.fj = zext i16 %i.fi to i32
  %i.fk = add i16 %i.fh, 1
  store i16 %i.fk, ptr %i.m, align 2, !tbaa !22
  %i.fl = zext i16 %i.fh to i32
  %i.fm = add nuw nsw i32 %i.fj, %i.fl
  %i.fn = urem i32 %i.fm, 129
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.fo
  store ptr %1, ptr %i.fp, align 8, !tbaa !25
  %i.fq = call i32 @ff_filter_frame(ptr noundef nonnull %i.i, ptr noundef nonnull %i.bj) #13
  br label %bb.n

bb.n:                                             ; preds = %ff_bufqueue_add.exit70, %bb.g, %ff_bufqueue_add.exit
  %.062 = phi i32 [ %i.fq, %ff_bufqueue_add.exit70 ], [ -12, %bb.g ], [ 0, %ff_bufqueue_add.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  ret i32 %.062
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @config_input(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !67
  %i.c = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.b) #13 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 15 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load i8, ptr %i.h, align 8, !tbaa !69
  %i.j = zext i8 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  store i32 %i.j, ptr %i.k, align 4, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !47
  %i.n = sub nsw i32 0, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.p = load i8, ptr %i.o, align 2, !tbaa !70
  %i.q = zext nneg i8 %i.p to i32
  %i.r = ashr i32 %i.n, %i.q
  %i.s = sub nsw i32 0, %i.r                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i32 %i.s, ptr %i.u, align 8, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  store i32 %i.s, ptr %i.v, align 4, !tbaa !51
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.x = load i32, ptr %i.w, align 4, !tbaa !47   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  store i32 %i.x, ptr %i.y, align 4, !tbaa !51
  store i32 %i.x, ptr %i.t, align 8, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !46
  %i.ab = sub nsw i32 0, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !71
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = ashr i32 %i.ab, %i.ae
  %i.ag = sub nsw i32 0, %i.af                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i32 %i.ag, ptr %i.ai, align 8, !tbaa !51
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  store i32 %i.ag, ptr %i.aj, align 4, !tbaa !51
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !46 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  store i32 %i.al, ptr %i.am, align 4, !tbaa !51
  store i32 %i.al, ptr %i.ah, align 8, !tbaa !51
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !73 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !53
  %i.aq = icmp eq i32 %i.ao, 8                    ; 2 uses
  %spec.select = select i1 %i.aq, ptr @deflicker8, ptr @deflicker16
  %spec.select46 = select i1 %i.aq, ptr @calc_avgy8, ptr @calc_avgy16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 2168
  store ptr %spec.select, ptr %i.ar, align 8, !tbaa !49
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 2160
  store ptr %spec.select46, ptr %i.as, align 8, !tbaa !42
  %i.at = shl nuw i32 1, %i.ao
  %i.au = sext i32 %i.at to i64
  %i.av = tail call noalias ptr @av_calloc(i64 noundef %i.au, i64 noundef 8) #13 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !55
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !74 ; 2 uses
  %i.az = icmp ult i32 %i.ay, 7
  br i1 %i.az, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %bb.b
  %i.ba = zext nneg i32 %i.ay to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.config_input, i64 %i.ba
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 2152
  store ptr %switch.load, ptr %i.bb, align 8, !tbaa !48
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %switch.lookup, %bb.a
  %.0 = phi i32 [ -12, %bb.a ], [ 0, %bb.b ], [ 0, %switch.lookup ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare void @av_image_copy_plane(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare i32 @av_dict_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef i32 @deflicker8(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, float noundef %7) #6 {
bb.a:
  %i.a = icmp sgt i32 %6, 0
  %i.b = icmp sgt i32 %5, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge21.split

.preheader.preheader:                             ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %5 to i64      ; 10 uses
  %i.c = add nsw i32 %6, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = mul i64 %4, %i.d
  %i.f = getelementptr i8, ptr %3, i64 %i.e
  %scevgep = getelementptr i8, ptr %i.f, i64 %wide.trip.count
  %i.g = mul i64 %2, %i.d
  %i.h = getelementptr i8, ptr %1, i64 %i.g
  %scevgep26 = getelementptr i8, ptr %i.h, i64 %wide.trip.count
  %min.iters.check = icmp ult i32 %5, 4
  %bound0 = icmp ult ptr %3, %scevgep26
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.i = or i64 %2, %4
  %i.j = icmp slt i64 %i.i, 0
  %i.k = or i1 %found.conflict, %i.j
  %min.iters.check28 = icmp ult i32 %5, 16
  %i.l = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <16 x float> poison, float %7, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  %n.vec29 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert30 = insertelement <4 x float> poison, float %7, i64 0
  %broadcast.splat31 = shufflevector <4 x float> %broadcast.splatinsert30, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n35 = icmp eq i64 %n.vec29, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.m = add nsw i64 %wide.trip.count, -1
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.020 = phi i32 [ %i.az, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.01519 = phi ptr [ %i.ay, %._crit_edge ], [ %1, %.preheader.preheader ] ; 6 uses
  %.01618 = phi ptr [ %i.ax, %._crit_edge ], [ %3, %.preheader.preheader ] ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.k
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check28, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01519, i64 %index
  %wide.load = load <16 x i8>, ptr %i.n, align 1, !tbaa !56, !alias.scope !82
  %i.o = uitofp <16 x i8> %wide.load to <16 x float>
  %i.p = fmul nsz <16 x float> %broadcast.splat, %i.o
  %i.q = fptosi <16 x float> %i.p to <16 x i32>   ; 3 uses
  %8 = icmp ult <16 x i32> %i.q, splat (i32 256)
  %9 = icmp sgt <16 x i32> %i.q, splat (i32 -1)
  %10 = sext <16 x i1> %9 to <16 x i8>
  %i.r = trunc nuw <16 x i32> %i.q to <16 x i8>
  %11 = select <16 x i1> %8, <16 x i8> %i.r, <16 x i8> %10
  %i.s = getelementptr inbounds nuw i8, ptr %.01618, i64 %index
  store <16 x i8> %11, ptr %i.s, align 1, !tbaa !56, !alias.scope !83, !noalias !82
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !84

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index32 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next34, %vec.epilog.vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01519, i64 %index32
  %wide.load33 = load <4 x i8>, ptr %i.u, align 1, !tbaa !56, !alias.scope !82
  %i.v = uitofp <4 x i8> %wide.load33 to <4 x float>
  %i.w = fmul nsz <4 x float> %broadcast.splat31, %i.v
  %i.x = fptosi <4 x float> %i.w to <4 x i32>     ; 3 uses
  %12 = icmp ult <4 x i32> %i.x, splat (i32 256)
  %13 = icmp sgt <4 x i32> %i.x, splat (i32 -1)
  %14 = sext <4 x i1> %13 to <4 x i8>
  %i.y = trunc nuw <4 x i32> %i.x to <4 x i8>
  %15 = select <4 x i1> %12, <4 x i8> %i.y, <4 x i8> %14
  %i.z = getelementptr inbounds nuw i8, ptr %.01618, i64 %index32
  store <4 x i8> %15, ptr %i.z, align 1, !tbaa !56, !alias.scope !83, !noalias !82
  %index.next34 = add nuw i64 %index32, 4         ; 2 uses
  %i.aa = icmp eq i64 %index.next34, %n.vec29
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !79

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n35, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec29, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 5 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %.01519, i64 %indvars.iv.ph
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !56
  %i.ad = uitofp i8 %i.ac to float
  %i.ae = fmul nsz float %7, %i.ad
  %i.af = fptosi float %i.ae to i32               ; 3 uses
  %.not.i.prol = icmp ult i32 %i.af, 256
  %isnotneg.i.prol = icmp sgt i32 %i.af, -1
  %16 = sext i1 %isnotneg.i.prol to i8
  %i.ag = trunc nuw i32 %i.af to i8
  %.0.i.prol = select i1 %.not.i.prol, i8 %i.ag, i8 %16
  %i.ah = getelementptr inbounds nuw i8, ptr %.01618, i64 %indvars.iv.ph
  store i8 %.0.i.prol, ptr %i.ah, align 1, !tbaa !56
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.ai = icmp eq i64 %indvars.iv.ph, %i.m
  br i1 %i.ai, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.01519, i64 %indvars.iv
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !56
  %i.al = uitofp i8 %i.ak to float
  %i.am = fmul nsz float %7, %i.al
  %i.an = fptosi float %i.am to i32               ; 3 uses
  %.not.i = icmp ult i32 %i.an, 256
  %isnotneg.i = icmp sgt i32 %i.an, -1
  %17 = sext i1 %isnotneg.i to i8
  %i.ao = trunc nuw i32 %i.an to i8
  %.0.i = select i1 %.not.i, i8 %i.ao, i8 %17
  %i.ap = getelementptr inbounds nuw i8, ptr %.01618, i64 %indvars.iv
  store i8 %.0.i, ptr %i.ap, align 1, !tbaa !56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.01519, i64 %indvars.iv.next
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !56
  %i.as = uitofp i8 %i.ar to float
  %i.at = fmul nsz float %7, %i.as
  %i.au = fptosi float %i.at to i32               ; 3 uses
  %.not.i.1 = icmp ult i32 %i.au, 256
  %isnotneg.i.1 = icmp sgt i32 %i.au, -1
  %18 = sext i1 %isnotneg.i.1 to i8
  %i.av = trunc nuw i32 %i.au to i8
  %.0.i.1 = select i1 %.not.i.1, i8 %i.av, i8 %18
  %i.aw = getelementptr inbounds nuw i8, ptr %.01618, i64 %indvars.iv.next
  store i8 %.0.i.1, ptr %i.aw, align 1, !tbaa !56
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !80

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.ax = getelementptr inbounds i8, ptr %.01618, i64 %4
  %i.ay = getelementptr inbounds i8, ptr %.01519, i64 %2
  %i.az = add nuw nsw i32 %.020, 1                ; 2 uses
  %exitcond23.not = icmp eq i32 %i.az, %6
  br i1 %exitcond23.not, label %._crit_edge21.split, label %iter.check, !llvm.loop !81

._crit_edge21.split:                              ; preds = %._crit_edge, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal float @calc_avgy8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !53
  %i.h = shl nuw i32 1, %i.g
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, i8 0, i64 %i.j, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !51   ; 3 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.preheader27.lr.ph, label %.preheader

.preheader27.lr.ph:                               ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !51   ; 3 uses
  %i.p = icmp sgt i32 %i.o, 0
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = load i32, ptr %i.q, align 8, !tbaa !51
  %i.s = sext i32 %i.r to i64
  br i1 %i.p, label %.preheader27.lr.ph.split, label %.preheader

.preheader27.lr.ph.split:                         ; preds = %.preheader27.lr.ph
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !55   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.u = icmp ult i32 %i.o, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod44 = icmp ne i64 %xtraiter, 0
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.lr.ph.split, %._crit_edge
  %.02430 = phi i32 [ 0, %.preheader27.lr.ph.split ], [ %i.bh, %._crit_edge ]
  %.02629 = phi ptr [ %i.c, %.preheader27.lr.ph.split ], [ %i.bg, %._crit_edge ] ; 6 uses
  br i1 %i.u, label %.epil.preheader, label %.preheader27.new

.preheader:                                       ; preds = %._crit_edge, %.preheader27.lr.ph, %bb.a
  %i.v = load i32, ptr %i.f, align 8, !tbaa !53   ; 3 uses
  %.not = icmp eq i32 %i.v, 31
  br i1 %.not, label %._crit_edge33, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.w = shl nuw nsw i32 1, %i.v
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !55   ; 5 uses
  %wide.trip.count40 = zext nneg i32 %i.w to i64  ; 2 uses
  %xtraiter46 = and i64 %wide.trip.count40, 3     ; 3 uses
  %i.y = icmp ult i32 %i.v, 2
  br i1 %i.y, label %.epil.preheader45, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter51 = and i64 %wide.trip.count40, 2147483644
  br label %bb.c

.preheader27.new:                                 ; preds = %.preheader27, %.preheader27.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader27.new ], [ 0, %.preheader27 ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader27.new ], [ 0, %.preheader27 ]
  %i.z = getelementptr inbounds nuw i8, ptr %.02629, i64 %indvars.iv
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !56
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ab ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !59
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !59
  %i.af = getelementptr inbounds nuw i8, ptr %.02629, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !56
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ai ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !59
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !59
  %i.am = getelementptr inbounds nuw i8, ptr %.02629, i64 %indvars.iv
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !56
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ap ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !59
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !59
  %i.at = getelementptr inbounds nuw i8, ptr %.02629, i64 %indvars.iv
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 3
  %i.av = load i8, ptr %i.au, align 1, !tbaa !56
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.aw ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !59
  %i.az = add i64 %i.ay, 1
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !59
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader27.new, !llvm.loop !85

._crit_edge.unr-lcssa:                            ; preds = %.preheader27.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader27
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader27 ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod44)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.02629, i64 %indvars.iv.epil
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !56
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.bc ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !59
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !59
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !86

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.unr-lcssa
  %i.bg = getelementptr inbounds i8, ptr %.02629, i64 %i.s
  %i.bh = add nuw nsw i32 %.02430, 1              ; 2 uses
  %exitcond36.not = icmp eq i32 %i.bh, %i.l
  br i1 %exitcond36.not, label %.preheader, label %.preheader27, !llvm.loop !87

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv37 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next38.3, %bb.c ] ; 6 uses
  %.02531 = phi i64 [ 0, %.lr.ph.new ], [ %i.bx, %bb.c ]
  %niter52 = phi i64 [ 0, %.lr.ph.new ], [ %niter52.next.3, %bb.c ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv37
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !59
  %i.bk = mul i64 %i.bj, %indvars.iv37
  %i.bl = add i64 %i.bk, %.02531
  %indvars.iv.next38 = or disjoint i64 %indvars.iv37, 1 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next38
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !59
  %i.bo = mul i64 %i.bn, %indvars.iv.next38
  %i.bp = add i64 %i.bo, %i.bl
  %indvars.iv.next38.1 = or disjoint i64 %indvars.iv37, 2 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next38.1
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !59
  %i.bs = mul i64 %i.br, %indvars.iv.next38.1
  %i.bt = add i64 %i.bs, %i.bp
  %indvars.iv.next38.2 = or disjoint i64 %indvars.iv37, 3 ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next38.2
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !59
  %i.bw = mul i64 %i.bv, %indvars.iv.next38.2
  %i.bx = add i64 %i.bw, %i.bt                    ; 3 uses
  %indvars.iv.next38.3 = add nuw nsw i64 %indvars.iv37, 4 ; 2 uses
  %niter52.next.3 = add i64 %niter52, 4           ; 2 uses
  %niter52.ncmp.3 = icmp eq i64 %niter52.next.3, %unroll_iter51
  br i1 %niter52.ncmp.3, label %._crit_edge33.loopexit.unr-lcssa, label %bb.c, !llvm.loop !88

._crit_edge33.loopexit.unr-lcssa:                 ; preds = %bb.c
  %lcmp.mod48.not = icmp eq i64 %xtraiter46, 0
  br i1 %lcmp.mod48.not, label %._crit_edge33.loopexit, label %.epil.preheader45

.epil.preheader45:                                ; preds = %._crit_edge33.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv37.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next38.3, %._crit_edge33.loopexit.unr-lcssa ]
  %.02531.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bx, %._crit_edge33.loopexit.unr-lcssa ]
  %lcmp.mod50 = icmp ne i64 %xtraiter46, 0
  tail call void @llvm.assume(i1 %lcmp.mod50)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader45
  %indvars.iv37.epil = phi i64 [ %indvars.iv37.epil.init, %.epil.preheader45 ], [ %indvars.iv.next38.epil, %bb.d ] ; 3 uses
  %.02531.epil = phi i64 [ %.02531.epil.init, %.epil.preheader45 ], [ %i.cb, %bb.d ]
  %epil.iter47 = phi i64 [ 0, %.epil.preheader45 ], [ %epil.iter47.next, %bb.d ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv37.epil
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !59
  %i.ca = mul i64 %i.bz, %indvars.iv37.epil
  %i.cb = add i64 %i.ca, %.02531.epil             ; 2 uses
  %indvars.iv.next38.epil = add nuw nsw i64 %indvars.iv37.epil, 1
  %epil.iter47.next = add i64 %epil.iter47, 1     ; 2 uses
  %epil.iter47.cmp.not = icmp eq i64 %epil.iter47.next, %xtraiter46
  br i1 %epil.iter47.cmp.not, label %._crit_edge33.loopexit, label %bb.d, !llvm.loop !89

._crit_edge33.loopexit:                           ; preds = %bb.d, %._crit_edge33.loopexit.unr-lcssa
  %.lcssa = phi i64 [ %i.bx, %._crit_edge33.loopexit.unr-lcssa ], [ %i.cb, %bb.d ]
  %i.cc = sitofp nsz i64 %.lcssa to float
  br label %._crit_edge33

end_hunk_0
begin_hunk_1_@get_cm_factor:bb.a
  store float %i.aj, ptr %1, align 4, !tbaa !45
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.al = load float, ptr %i.ak, align 8, !tbaa !45
  %i.am = fdiv nsz float %i.aj, %i.al
  store float %i.am, ptr %1, align 4, !tbaa !45
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @get_pm_factor(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  store float 0.000000e+00, ptr %1, align 4, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !40   ; 5 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = sitofp nsz i32 %i.d to float
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 5 uses
  %i.g = uitofp nneg i32 %i.d to float            ; 7 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.h = icmp ult i32 %i.d, 4
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %i.i = phi float [ 0.000000e+00, %.lr.ph.new ], [ %i.ab, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load float, ptr %i.j, align 4, !tbaa !45
  %i.l = tail call nsz float @llvm.pow.f32(float %i.k, float %i.g)
  %i.m = fadd nsz float %i.i, %i.l                ; 2 uses
  store float %i.m, ptr %1, align 4, !tbaa !45
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !45
  %i.q = tail call nsz float @llvm.pow.f32(float %i.p, float %i.g)
  %i.r = fadd nsz float %i.m, %i.q                ; 2 uses
  store float %i.r, ptr %1, align 4, !tbaa !45
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !45
  %i.v = tail call nsz float @llvm.pow.f32(float %i.u, float %i.g)
  %i.w = fadd nsz float %i.r, %i.v                ; 2 uses
  store float %i.w, ptr %1, align 4, !tbaa !45
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.z = load float, ptr %i.y, align 4, !tbaa !45
  %i.aa = tail call nsz float @llvm.pow.f32(float %i.z, float %i.g)
  %i.ab = fadd nsz float %i.w, %i.aa              ; 4 uses
  store float %i.ab, ptr %1, align 4, !tbaa !45
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !118

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ab, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod19 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod19)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %i.ac = phi float [ %.epil.init, %.epil.preheader ], [ %i.ag, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.epil
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !45
  %i.af = tail call nsz float @llvm.pow.f32(float %i.ae, float %i.g)
  %i.ag = fadd nsz float %i.ac, %i.af             ; 3 uses
  store float %i.ag, ptr %1, align 4, !tbaa !45
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !119

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %.._crit_edge_crit_edge
  %.pre-phi = phi float [ %.pre, %.._crit_edge_crit_edge ], [ %i.g, %bb.c ], [ %i.g, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %i.ah = phi float [ 0.000000e+00, %.._crit_edge_crit_edge ], [ %i.ab, %._crit_edge.loopexit.unr-lcssa ], [ %i.ag, %bb.c ]
  %i.ai = fdiv nsz float %i.ah, %.pre-phi
  %i.aj = fdiv nsz float 1.000000e+00, %.pre-phi
  %i.ak = tail call nsz float @llvm.pow.f32(float %i.ai, float %i.aj) ; 2 uses
  store float %i.ak, ptr %1, align 4, !tbaa !45
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.am = load float, ptr %i.al, align 8, !tbaa !45
  %i.an = fdiv nsz float %i.ak, %i.am
  store float %i.an, ptr %1, align 4, !tbaa !45
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @cbrtf(float noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #10

; Function Attrs: nounwind uwtable
define internal i32 @request_frame(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !120    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.g = tail call i32 @ff_request_frame(ptr noundef %i.f) #13 ; 2 uses
  %i.h = icmp eq i32 %i.g, -541478725
  br i1 %i.h, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2144 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !43   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.l = add nsw i32 %i.j, -1                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 2138
  %i.n = load i16, ptr %i.m, align 2, !tbaa !22
  %i.o = zext i16 %i.n to i32
  %i.p = icmp samesign ult i32 %i.l, %i.o
  br i1 %i.p, label %ff_bufqueue_peek.exit, label %.critedge

ff_bufqueue_peek.exit:                            ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 1104
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 2136
  %i.s = load i16, ptr %i.r, align 8, !tbaa !23
  %i.t = zext i16 %i.s to i32
  %i.u = add nuw nsw i32 %i.l, %i.t
  %i.v = urem i32 %i.u, 129
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !25   ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %ff_bufqueue_peek.exit
  %i.z = tail call ptr @av_frame_clone(ptr noundef nonnull %i.y) #13 ; 2 uses
  %.not24 = icmp eq ptr %i.z, null
  br i1 %.not24, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 1, ptr %i.aa, align 4, !tbaa !41
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !121
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !37
  %i.ad = tail call i32 @filter_frame(ptr noundef %i.ac, ptr noundef nonnull %i.z)
  %i.ae = load i32, ptr %i.i, align 8, !tbaa !43
  %i.af = add nsw i32 %i.ae, -1
  store i32 %i.af, ptr %i.i, align 8, !tbaa !43
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %ff_bufqueue_peek.exit, %bb.d, %bb.a, %bb.b, %bb.e
  %.118 = phi i32 [ %i.g, %bb.a ], [ %i.ad, %bb.e ], [ -541478725, %bb.b ], [ -12, %bb.d ], [ -12, %ff_bufqueue_peek.exit ], [ -12, %bb.c ]
  ret i32 %.118
}

declare i32 @ff_request_frame(ptr noundef) local_unnamed_addr #3

declare ptr @av_frame_clone(ptr noundef) local_unnamed_addr #3

declare ptr @av_default_item_name(ptr noundef) #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #10

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind willreturn memory(none) }

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
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"short", !5, i64 0}
!21 = !{!"FFBufQueue", !5, i64 0, !20, i64 1032, !20, i64 1034}
!22 = !{!21, !20, i64 1034}
!23 = !{!21, !20, i64 1032}
!24 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!28 = !{!"AVRational", !6, i64 0, !6, i64 4}
!29 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!30 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!31 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!32 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!33 = !{!"AVFilterFormatsConfig", !31, i64 0, !31, i64 8, !32, i64 16, !31, i64 24, !31, i64 32, !31, i64 40}
!34 = !{!"AVFilterLink", !27, i64 0, !13, i64 8, !27, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !28, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !29, i64 72, !28, i64 96, !30, i64 104, !6, i64 112, !6, i64 116, !33, i64 120, !33, i64 168}
!35 = !{!34, !27, i64 16}
!36 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"p1 long", !9, i64 0}
!39 = !{!"DeflickerContext", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !5, i64 32, !5, i64 48, !38, i64 64, !5, i64 72, !5, i64 588, !21, i64 1104, !6, i64 2144, !9, i64 2152, !9, i64 2160, !9, i64 2168}
!40 = !{!39, !6, i64 8}
!41 = !{!39, !6, i64 20}
!42 = !{!39, !9, i64 2160}
!43 = !{!39, !6, i64 2144}
!44 = !{!"float", !5, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!34, !6, i64 40}
!47 = !{!34, !6, i64 44}
!48 = !{!39, !9, i64 2152}
!49 = !{!39, !9, i64 2168}
!50 = !{!12, !12, i64 0}
!51 = !{!6, !6, i64 0}
!52 = !{!39, !6, i64 28}
!53 = !{!39, !6, i64 24}
!54 = !{!"long", !5, i64 0}
!55 = !{!39, !38, i64 64}
!56 = !{!5, !5, i64 0}
!57 = !{!"llvm.loop.isvectorized", i32 1}
!58 = !{!"llvm.loop.unroll.runtime.disable"}
!59 = !{!54, !54, i64 0}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = !{!20, !20, i64 0}
!62 = distinct !{!62, !26}
!63 = distinct !{!63, !26}
!64 = !{!18, !15, i64 56}
!65 = !{!39, !20, i64 2138}
!66 = !{!39, !6, i64 16}
!67 = !{!34, !6, i64 36}
!68 = !{!"AVPixFmtDescriptor", !12, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !54, i64 16, !5, i64 24, !12, i64 104}
!69 = !{!68, !5, i64 8}
!70 = !{!68, !5, i64 10}
!71 = !{!68, !5, i64 9}
!72 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!73 = !{!72, !6, i64 16}
!74 = !{!39, !6, i64 12}
!75 = distinct !{!75, !"LVerDomain"}
!76 = distinct !{!76, !75}
!77 = distinct !{!77, !75}
!78 = distinct !{!78, !26, !57, !58}
!79 = distinct !{!79, !26, !57, !58}
!80 = distinct !{!80, !26, !57}
!81 = distinct !{!81, !26}
!82 = !{!76}
!83 = !{!77}
!84 = !{!"branch_weights", i32 4, i32 12}
!85 = distinct !{!85, !26}
!86 = distinct !{!86, !60}
!87 = distinct !{!87, !26}
!88 = distinct !{!88, !26}
!89 = distinct !{!89, !60}
!90 = distinct !{!90, !"LVerDomain"}
!91 = distinct !{!91, !90}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !26, !57, !58}
!94 = distinct !{!94, !26, !57}
!95 = distinct !{!95, !26}
!96 = !{!91}
!97 = !{!92}
!98 = distinct !{!98, !26}
!99 = distinct !{!99, !60}
!100 = distinct !{!100, !26}
!101 = distinct !{!101, !26}
!102 = distinct !{!102, !60}
!103 = distinct !{!103, !26}
!104 = distinct !{!104, !26}
!105 = distinct !{!105, !26}
!106 = distinct !{!106, !26}
!107 = !{!9, !9, i64 0}
!108 = distinct !{!108, !26}
!109 = distinct !{!109, !60}
!110 = distinct !{!110, !26}
!111 = distinct !{!111, !60}
!112 = distinct !{!112, !26}
!113 = distinct !{!113, !60}
!114 = distinct !{!114, !26}
!115 = distinct !{!115, !60}
!116 = distinct !{!116, !26}
!117 = distinct !{!117, !60}
!118 = distinct !{!118, !26}
!119 = distinct !{!119, !60}
!120 = !{!34, !27, i64 0}
!121 = !{!18, !15, i64 32}
end_hunk_1
