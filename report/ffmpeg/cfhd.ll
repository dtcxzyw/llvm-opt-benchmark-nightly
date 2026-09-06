Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cfhd?download=true
inline.NumInlined: 15
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@av_pix_fmt_count_planes

declare i32 @av_image_check_size2(i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ff_cfhd_init_vlcs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @avpriv_report_missing_feature(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @ff_thread_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @peak_table(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i32, ptr %1, align 8, !tbaa !223
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !66
  %i.g = tail call i16 @llvm.abs.i16(i16 %i.f, i1 false)
  %i.h = zext i16 %i.g to i32
  %i.i = icmp slt i32 %i.b, %i.h
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !54   ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp slt i64 %i.n, 2
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.j, ptr %i.c, align 8, !tbaa !54
  br label %bytestream2_get_le16.exit

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store ptr %i.p, ptr %i.c, align 8, !tbaa !53
  %i.q = load i16, ptr %i.k, align 1, !tbaa !51
  br label %bytestream2_get_le16.exit

bytestream2_get_le16.exit:                        ; preds = %bb.d, %bb.e
  %.0.i = phi i16 [ 0, %bb.d ], [ %i.q, %bb.e ]
  store i16 %.0.i, ptr %i.e, align 2, !tbaa !66
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bytestream2_get_le16.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !222
}

declare void @ff_thread_finish_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @process_bayer(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = sext i32 %i.b to i64                     ; 7 uses
  %i.d = add nsw i32 %1, -1
  %i.e = shl nuw i32 1, %i.d                      ; 4 uses
  %i.f = sub nsw i32 16, %1                       ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.h = load i32, ptr %i.g, align 4, !tbaa !61
  %i.i = ashr i32 %i.h, 1                         ; 3 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.preheader.lr.ph, label %._crit_edge82.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = load i32, ptr %i.k, align 8, !tbaa !62   ; 3 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.preheader.preheader, label %._crit_edge82.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.n = load ptr, ptr %0, align 8, !tbaa !53     ; 10 uses
  %i.o = getelementptr i8, ptr %i.n, i64 2        ; 4 uses
  %i.p = getelementptr i8, ptr %i.n, i64 %i.c     ; 5 uses
  %i.q = getelementptr i8, ptr %i.p, i64 2        ; 4 uses
  %i.r = zext nneg i32 %i.l to i64                ; 3 uses
  %i.s = add nsw i32 %i.i, -1
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = mul nsw i64 %i.c, %i.t
  %i.v = shl i64 %i.u, 1
  %i.w = shl nuw nsw i64 %i.r, 1
  %i.x = add nsw i64 %i.w, -2
  %i.y = and i64 %i.x, -4                         ; 2 uses
  %i.z = add i64 %i.v, %i.y                       ; 2 uses
  %i.aa = getelementptr i8, ptr %i.n, i64 %i.z
  %scevgep = getelementptr i8, ptr %i.aa, i64 2   ; 3 uses
  %i.ab = getelementptr i8, ptr %i.n, i64 %i.z
  %scevgep86 = getelementptr i8, ptr %i.ab, i64 4 ; 3 uses
  %i.ac = shl nuw nsw i64 %i.t, 1
  %i.ad = or disjoint i64 %i.ac, 1
  %i.ae = mul i64 %i.ad, %i.c
  %i.af = add i64 %i.ae, %i.y                     ; 2 uses
  %i.ag = getelementptr i8, ptr %i.n, i64 %i.af
  %scevgep87 = getelementptr i8, ptr %i.ag, i64 2 ; 3 uses
  %i.ah = getelementptr i8, ptr %i.n, i64 %i.af
  %scevgep88 = getelementptr i8, ptr %i.ah, i64 4 ; 3 uses
  %i.ai = add nsw i64 %i.r, -1
  %i.aj = lshr i64 %i.ai, 1
  %i.ak = add nuw i64 %i.aj, 1                    ; 2 uses
  %min.iters.check = icmp ult i32 %i.l, 15
  %bound0 = icmp ult ptr %i.n, %scevgep86
  %bound1 = icmp ult ptr %i.o, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound090 = icmp ult ptr %i.n, %scevgep87
  %bound191 = icmp ult ptr %i.p, %scevgep
  %found.conflict92 = and i1 %bound090, %bound191
  %stride.check93 = icmp slt i32 %i.b, 0
  %i.al = or i1 %found.conflict92, %stride.check93
  %conflict.rdx = or i1 %found.conflict, %i.al
  %bound095 = icmp ult ptr %i.n, %scevgep88
  %bound196 = icmp ult ptr %i.q, %scevgep
  %found.conflict97 = and i1 %bound095, %bound196
  %conflict.rdx100 = or i1 %found.conflict97, %conflict.rdx
  %bound0101 = icmp ult ptr %i.o, %scevgep87
  %bound1102 = icmp ult ptr %i.p, %scevgep86
  %found.conflict103 = and i1 %bound0101, %bound1102
  %conflict.rdx106 = or i1 %found.conflict103, %conflict.rdx100
  %bound0107 = icmp ult ptr %i.o, %scevgep88
  %bound1108 = icmp ult ptr %i.q, %scevgep86
  %found.conflict109 = and i1 %bound0107, %bound1108
  %conflict.rdx112 = or i1 %found.conflict109, %conflict.rdx106
  %bound0113 = icmp ult ptr %i.p, %scevgep88
  %bound1114 = icmp ult ptr %i.q, %scevgep87
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx118 = or i1 %found.conflict115, %conflict.rdx112
  %n.vec = and i64 %i.ak, -4                      ; 3 uses
  %i.am = shl i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert119 = insertelement <4 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat120 = shufflevector <4 x i32> %broadcast.splatinsert119, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.081 = phi ptr [ %i.bs, %._crit_edge ], [ %i.n, %.preheader.preheader ] ; 3 uses
  %.06280 = phi ptr [ %i.bt, %._crit_edge ], [ %i.o, %.preheader.preheader ] ; 2 uses
  %.06379 = phi ptr [ %i.bu, %._crit_edge ], [ %i.p, %.preheader.preheader ] ; 3 uses
  %.06478 = phi ptr [ %i.bv, %._crit_edge ], [ %i.q, %.preheader.preheader ] ; 2 uses
  %.06577 = phi i32 [ %i.bw, %._crit_edge ], [ 0, %.preheader.preheader ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx118
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 2 uses
  %i.an = shl nuw i64 %index, 1                   ; 2 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.081, i64 %i.an ; 2 uses
  %wide.vec = load <8 x i16>, ptr %i.ao, align 2, !tbaa !66
  %i.ap = freeze <8 x i16> %wide.vec              ; 2 uses
  %i.aq = bitcast <8 x i16> %i.ap to <4 x i32>
  %i.ar = bitcast <8 x i16> %i.ap to <4 x i32>
  %i.as = and <4 x i32> %i.ar, splat (i32 65535)  ; 4 uses
  %i.at = lshr <4 x i32> %i.aq, splat (i32 16)
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %.06379, i64 %i.an ; 2 uses
  %wide.vec122 = load <8 x i16>, ptr %i.au, align 2, !tbaa !66
  %i.av = freeze <8 x i16> %wide.vec122           ; 2 uses
  %i.aw = bitcast <8 x i16> %i.av to <4 x i32>
  %i.ax = bitcast <8 x i16> %i.av to <4 x i32>
  %i.ay = and <4 x i32> %i.ax, splat (i32 65535)
  %i.az = lshr <4 x i32> %i.aw, splat (i32 16)
  %i.ba = sub nsw <4 x i32> %i.az, %broadcast.splat ; 2 uses
  %i.bb = sub nsw <4 x i32> %i.at, %broadcast.splat
  %i.bc = shl nsw <4 x i32> %i.bb, splat (i32 1)
  %i.bd = add nsw <4 x i32> %i.bc, %i.as
  %i.be = add nsw <4 x i32> %i.ba, %i.as
  %i.bf = sub nsw <4 x i32> %i.as, %i.ba
  %i.bg = sub nsw <4 x i32> %i.ay, %broadcast.splat
  %i.bh = shl nsw <4 x i32> %i.bg, splat (i32 1)
  %i.bi = add nsw <4 x i32> %i.bh, %i.as
  %i.bj = shl <4 x i32> %i.bd, %broadcast.splat120
  %i.bk = shl <4 x i32> %i.be, %broadcast.splat120
  %i.bl = shl <4 x i32> %i.bf, %broadcast.splat120
  %i.bm = shl <4 x i32> %i.bi, %broadcast.splat120
  %i.bn = shufflevector <4 x i32> %i.bj, <4 x i32> %i.bk, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.bo = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bn, <8 x i32> zeroinitializer)
  %i.bp = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.bo, <8 x i32> splat (i32 65535))
  %interleaved.vec = trunc nuw <8 x i32> %i.bp to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %i.ao, align 2, !tbaa !66
  %2 = shufflevector <4 x i32> %i.bl, <4 x i32> %i.bm, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %3 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %2, <8 x i32> zeroinitializer)
  %i.bq = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %3, <8 x i32> splat (i32 65535))
  %interleaved.vec125 = trunc nuw <8 x i32> %i.bq to <8 x i16>
  store <8 x i16> %interleaved.vec125, ptr %i.au, align 2, !tbaa !66
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !224

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.am, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge82.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.bs = getelementptr inbounds [2 x i8], ptr %.081, i64 %i.c
  %i.bt = getelementptr inbounds [2 x i8], ptr %.06280, i64 %i.c
  %i.bu = getelementptr inbounds [2 x i8], ptr %.06379, i64 %i.c
  %i.bv = getelementptr inbounds [2 x i8], ptr %.06478, i64 %i.c
  %i.bw = add nuw nsw i32 %.06577, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bw, %i.i
  br i1 %exitcond.not, label %._crit_edge82.split, label %.preheader, !llvm.loop !225

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %.081, i64 %indvars.iv ; 2 uses
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !66
  %i.bz = zext i16 %i.by to i32                   ; 4 uses
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %.06280, i64 %indvars.iv ; 2 uses
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !66
  %i.cc = zext i16 %i.cb to i32
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %.06379, i64 %indvars.iv ; 2 uses
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !66
  %i.cf = zext i16 %i.ce to i32
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %.06478, i64 %indvars.iv ; 2 uses
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !66
  %i.ci = zext i16 %i.ch to i32
  %i.cj = sub nsw i32 %i.ci, %i.e                 ; 2 uses
  %i.ck = sub nsw i32 %i.cc, %i.e
  %i.cl = shl nsw i32 %i.ck, 1
  %i.cm = add nsw i32 %i.cl, %i.bz
  %i.cn = add nsw i32 %i.cj, %i.bz
  %i.co = sub nsw i32 %i.bz, %i.cj
  %i.cp = sub nsw i32 %i.cf, %i.e
  %i.cq = shl nsw i32 %i.cp, 1
  %i.cr = add nsw i32 %i.cq, %i.bz
  %i.cs = shl i32 %i.cm, %i.f
  %i.ct = tail call i32 @llvm.smax.i32(i32 %i.cs, i32 0)
  %i.cu = tail call i32 @llvm.umin.i32(i32 %i.ct, i32 65535)
  %i.cv = shl i32 %i.cn, %i.f
  %i.cw = tail call i32 @llvm.smax.i32(i32 %i.cv, i32 0)
  %i.cx = tail call i32 @llvm.umin.i32(i32 %i.cw, i32 65535)
  %i.cy = shl i32 %i.co, %i.f
  %i.cz = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 0)
  %i.da = tail call i32 @llvm.umin.i32(i32 %i.cz, i32 65535)
  %i.db = shl i32 %i.cr, %i.f
  %i.dc = tail call i32 @llvm.smax.i32(i32 %i.db, i32 0)
  %i.dd = tail call i32 @llvm.umin.i32(i32 %i.dc, i32 65535)
  %i.de = trunc nuw i32 %i.cu to i16
  store i16 %i.de, ptr %i.bx, align 2, !tbaa !66
  %i.df = trunc nuw i32 %i.cx to i16
  store i16 %i.df, ptr %i.ca, align 2, !tbaa !66
  %i.dg = trunc nuw i32 %i.da to i16
  store i16 %i.dg, ptr %i.cd, align 2, !tbaa !66
  %i.dh = trunc nuw i32 %i.dd to i16
  store i16 %i.dh, ptr %i.cg, align 2, !tbaa !66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.di = icmp samesign ult i64 %indvars.iv.next, %i.r
  br i1 %i.di, label %scalar.ph, label %._crit_edge, !llvm.loop !226
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

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
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!"p1 _ZTS14AVCodecContext", !9, i64 0}
!30 = !{!"short", !5, i64 0}
!31 = !{!"GetByteContext", !14, i64 0, !14, i64 8, !14, i64 16}
!32 = !{!"Peak", !6, i64 0, !6, i64 4, !31, i64 8}
!33 = !{!"CFHDDSPContext", !9, i64 0, !9, i64 8, !9, i64 16}
!34 = !{!"CFHDContext", !29, i64 0, !5, i64 8, !5, i64 12536, !5, i64 39968, !6, i64 42016, !6, i64 42020, !6, i64 42024, !6, i64 42028, !6, i64 42032, !6, i64 42036, !6, i64 42040, !6, i64 42044, !6, i64 42048, !6, i64 42052, !6, i64 42056, !6, i64 42060, !6, i64 42064, !6, i64 42068, !6, i64 42072, !6, i64 42076, !6, i64 42080, !6, i64 42084, !6, i64 42088, !5, i64 42092, !30, i64 42094, !6, i64 42096, !6, i64 42100, !6, i64 42104, !6, i64 42108, !6, i64 42112, !5, i64 42116, !5, i64 42128, !32, i64 46224, !33, i64 46256}
!35 = !{!34, !6, i64 42032}
!36 = !{!"Plane", !6, i64 0, !6, i64 4, !13, i64 8, !17, i64 16, !17, i64 24, !6, i64 32, !5, i64 40, !5, i64 176, !5, i64 256}
!37 = !{!36, !6, i64 32}
!38 = !{!34, !6, i64 42064}
!39 = !{!34, !6, i64 42056}
!40 = !{!34, !6, i64 42060}
!41 = !{!34, !6, i64 42068}
!42 = !{!34, !6, i64 42052}
!43 = !{!34, !6, i64 42016}
!44 = !{!36, !17, i64 16}
!45 = !{!34, !6, i64 42036}
!46 = !{!34, !6, i64 42040}
!47 = !{!34, !6, i64 42048}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!6, !6, i64 0}
!50 = !{!34, !6, i64 42072}
!51 = !{!5, !5, i64 0}
!52 = !{!"SubBand", !13, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !5, i64 24}
!53 = !{!14, !14, i64 0}
!54 = !{!31, !14, i64 0}
!55 = !{!31, !14, i64 8}
!56 = !{!27, !6, i64 136}
!57 = !{!"p2 omnipotent char", !25, i64 0}
!58 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!59 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!60 = !{!"AVFrame", !5, i64 0, !5, i64 64, !57, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !58, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !59, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!61 = !{!60, !6, i64 108}
!62 = !{!60, !6, i64 104}
!63 = !{!17, !17, i64 0}
!64 = !{!52, !6, i64 16}
!65 = !{!52, !6, i64 8}
!66 = !{!30, !30, i64 0}
!67 = !{!"llvm.loop.isvectorized", i32 1}
!68 = !{!"llvm.loop.unroll.runtime.disable"}
!69 = !{!52, !5, i64 24}
!70 = !{!36, !6, i64 0}
!71 = !{!36, !6, i64 4}
!72 = distinct !{!72, !48}
end_hunk_0
