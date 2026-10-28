Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pngenc?download=true
inline.NumInlined: 46
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@png_choose_filter:bb.a
scalar.ph109:                                     ; preds = %scalar.ph109.preheader, %scalar.ph109
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3, %scalar.ph109 ], [ %indvars.iv.3.ph, %scalar.ph109.preheader ] ; 2 uses
  %.05156.3 = phi i32 [ %i.bz, %scalar.ph109 ], [ %.05156.3.ph, %scalar.ph109.preheader ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.148.2, i64 %indvars.iv.3
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !54
  %i.bx = tail call i8 @llvm.abs.i8(i8 %i.bw, i1 false)
  %i.by = zext i8 %i.bx to i32
  %i.bz = add nuw nsw i32 %.05156.3, %i.by        ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1 ; 2 uses
  %exitcond.3.not = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.3.not, label %._crit_edge.3, label %scalar.ph109, !llvm.loop !156

._crit_edge.3:                                    ; preds = %scalar.ph109, %middle.block120
  %.lcssa71 = phi i32 [ %i.bu, %middle.block120 ], [ %i.bz, %scalar.ph109 ] ; 2 uses
  %.150.2 = tail call i32 @llvm.smin.i32(i32 %.lcssa72, i32 %.150.1) ; 2 uses
  %.1.2 = select i1 %i.bj, ptr %.148.1, ptr %.1.1 ; 2 uses
  %i.ca = icmp samesign ult i32 %.lcssa71, %.150.2 ; 2 uses
  %.148.3 = select i1 %i.ca, ptr %.1.2, ptr %.148.2 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.148.3, i64 1
  tail call fastcc void @png_filter_row(ptr noundef nonnull %0, ptr noundef %i.cb, i32 noundef 4, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5)
  store i8 4, ptr %.148.3, align 1, !tbaa !54
  %min.iters.check126 = icmp ult i32 %4, 7
  br i1 %min.iters.check126, label %scalar.ph125.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %._crit_edge.3
  %n.vec128 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph127
  %index130 = phi i64 [ 0, %vector.ph127 ], [ %index.next135, %vector.body129 ] ; 2 uses
  %vec.phi131 = phi <4 x i32> [ zeroinitializer, %vector.ph127 ], [ %i.ci, %vector.body129 ]
  %vec.phi132 = phi <4 x i32> [ zeroinitializer, %vector.ph127 ], [ %i.cj, %vector.body129 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.148.3, i64 %index130 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %wide.load133 = load <4 x i8>, ptr %i.cc, align 1, !tbaa !54
  %wide.load134 = load <4 x i8>, ptr %i.cd, align 1, !tbaa !54
  %i.ce = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load133, i1 false)
  %i.cf = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load134, i1 false)
  %i.cg = zext <4 x i8> %i.ce to <4 x i32>
  %i.ch = zext <4 x i8> %i.cf to <4 x i32>
  %i.ci = add <4 x i32> %vec.phi131, %i.cg        ; 2 uses
  %i.cj = add <4 x i32> %vec.phi132, %i.ch        ; 2 uses
  %index.next135 = add nuw i64 %index130, 8       ; 2 uses
  %i.ck = icmp eq i64 %index.next135, %n.vec128
  br i1 %i.ck, label %middle.block136, label %vector.body129, !llvm.loop !157

middle.block136:                                  ; preds = %vector.body129
  %bin.rdx137 = add <4 x i32> %i.cj, %i.ci
  %i.cl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx137) ; 2 uses
  %cmp.n138 = icmp eq i64 %n.vec128, %wide.trip.count
  br i1 %cmp.n138, label %._crit_edge.4, label %scalar.ph125.preheader

scalar.ph125.preheader:                           ; preds = %._crit_edge.3, %middle.block136
  %indvars.iv.4.ph = phi i64 [ 0, %._crit_edge.3 ], [ %n.vec128, %middle.block136 ]
  %.05156.4.ph = phi i32 [ 0, %._crit_edge.3 ], [ %i.cl, %middle.block136 ]
  br label %scalar.ph125

scalar.ph125:                                     ; preds = %scalar.ph125.preheader, %scalar.ph125
  %indvars.iv.4 = phi i64 [ %indvars.iv.next.4, %scalar.ph125 ], [ %indvars.iv.4.ph, %scalar.ph125.preheader ] ; 2 uses
  %.05156.4 = phi i32 [ %i.cq, %scalar.ph125 ], [ %.05156.4.ph, %scalar.ph125.preheader ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.148.3, i64 %indvars.iv.4
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !54
  %i.co = tail call i8 @llvm.abs.i8(i8 %i.cn, i1 false)
  %i.cp = zext i8 %i.co to i32
  %i.cq = add nuw nsw i32 %.05156.4, %i.cp        ; 2 uses
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.4, 1 ; 2 uses
  %exitcond.4.not = icmp eq i64 %indvars.iv.next.4, %wide.trip.count
  br i1 %exitcond.4.not, label %._crit_edge.4, label %scalar.ph125, !llvm.loop !158

._crit_edge.4:                                    ; preds = %scalar.ph125, %middle.block136
  %.lcssa = phi i32 [ %i.cl, %middle.block136 ], [ %i.cq, %scalar.ph125 ]
  %.150.3 = tail call i32 @llvm.smin.i32(i32 %.lcssa71, i32 %.150.2)
  %.1.3 = select i1 %i.ca, ptr %.148.2, ptr %.1.2
  %i.cr = icmp samesign ult i32 %.lcssa, %.150.3
  %.1.4 = select i1 %i.cr, ptr %.148.3, ptr %.1.3
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 1
  tail call fastcc void @png_filter_row(ptr noundef nonnull %0, ptr noundef %i.cs, i32 noundef %spec.store.select, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5)
  %i.ct = trunc i32 %spec.store.select to i8
  store i8 %i.ct, ptr %1, align 1, !tbaa !54
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge.4, %.split.us.preheader, %bb.e
  %.0 = phi ptr [ %1, %bb.e ], [ %1, %.split.us.preheader ], [ %.1.4, %._crit_edge.4 ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @png_write_image_data(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef range(i32 1, -2147483648) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 3 uses
  %i.d = tail call ptr @av_crc_get_table(i32 noundef 4) #11 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !75
  %i.g = icmp eq i32 %i.f, 61
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.i = load i64, ptr %i.h, align 8, !tbaa !58
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 9 uses
  %i.l = tail call ptr @av_crc_get_table(i32 noundef 4) #11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.m = tail call i32 @llvm.bswap.i32(i32 %2)
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !55
  store i32 %i.m, ptr %i.n, align 1, !tbaa !54
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  store ptr %i.p, ptr %i.k, align 8, !tbaa !55
  store i32 1413563465, ptr %i.a, align 4, !tbaa !54
  %i.q = call i32 @av_crc(ptr noundef %i.l, i32 noundef -1, ptr noundef nonnull %i.a, i64 noundef 4) #12
  store i32 1413563465, ptr %i.p, align 1, !tbaa !54
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 4 uses
  store ptr %i.s, ptr %i.k, align 8, !tbaa !55
  %i.t = zext nneg i32 %2 to i64                  ; 3 uses
  %i.u = call i32 @av_crc(ptr noundef %i.l, i32 noundef %i.q, ptr noundef %1, i64 noundef %i.t) #12
  %.not.i = icmp eq ptr %i.s, %1
  br i1 %.not.i, label %png_write_chunk.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.s, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.t, i1 false)
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !55
  br label %png_write_chunk.exit

png_write_chunk.exit:                             ; preds = %bb.c, %bb.d
  %i.v = phi ptr [ %.pre.i, %bb.d ], [ %i.s, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t ; 2 uses
  store ptr %i.w, ptr %i.k, align 8, !tbaa !55
  %i.x = xor i32 %i.u, -1
  %i.y = call i32 @llvm.bswap.i32(i32 %i.x)
  store i32 %i.y, ptr %i.w, align 1, !tbaa !54
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store ptr %i.aa, ptr %i.k, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 11 uses
  %i.ac = add nuw nsw i32 %2, 4
  %i.ad = tail call i32 @llvm.bswap.i32(i32 %i.ac)
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !55
  store i32 %i.ad, ptr %i.ae, align 1, !tbaa !54
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !55
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !55
  store i32 1413571686, ptr %i.ag, align 1, !tbaa !54
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !55
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  store ptr %i.ai, ptr %i.ab, align 8, !tbaa !55
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 4316 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !62
  %i.al = tail call i32 @llvm.bswap.i32(i32 %i.ak)
  store i32 %i.al, ptr %i.ai, align 1, !tbaa !54
  %i.am = load ptr, ptr %i.ab, align 8, !tbaa !55 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  store ptr %i.an, ptr %i.ab, align 8, !tbaa !55
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ap = tail call i32 @av_crc(ptr noundef %i.d, i32 noundef -1, ptr noundef nonnull %i.ao, i64 noundef 8) #12
  %i.aq = zext nneg i32 %2 to i64                 ; 3 uses
  %i.ar = tail call i32 @av_crc(ptr noundef %i.d, i32 noundef %i.ap, ptr noundef %1, i64 noundef %i.aq) #12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.an, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.aq, i1 false)
  %i.as = load ptr, ptr %i.ab, align 8, !tbaa !51
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq ; 2 uses
  store ptr %i.at, ptr %i.ab, align 8, !tbaa !51
  %i.au = xor i32 %i.ar, -1
  %i.av = tail call i32 @llvm.bswap.i32(i32 %i.au)
  store i32 %i.av, ptr %i.at, align 1, !tbaa !54
  %i.aw = load ptr, ptr %i.ab, align 8, !tbaa !55
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store ptr %i.ax, ptr %i.ab, align 8, !tbaa !55
  %i.ay = load i32, ptr %i.aj, align 4, !tbaa !62
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.aj, align 4, !tbaa !62
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %png_write_chunk.exit
  ret void
}

declare void @av_freep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @png_filter_row(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1, i32 noundef range(i32 6, 5) %2, ptr noundef %3, ptr noundef %4, i32 noundef range(i32 -268435456, -2147483648) %5, i32 noundef range(i32 -268435456, 268435456) %6) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 12 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 8 uses
  %i.c = ptrtoaddr ptr %4 to i64                  ; 5 uses
  switch i32 %2, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %.preheader55
    i32 4, label %.preheader57
  ]

.preheader57:                                     ; preds = %bb.a
  %i.d = icmp sgt i32 %6, 0
  br i1 %i.d, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader57
  %wide.trip.count = zext nneg i32 %6 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %6, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.e = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.e, -32
  %i.f = sub i64 %i.c, %i.a
  %diff.check92 = icmp ugt i64 %i.f, -32
  %conflict.rdx = or i1 %diff.check, %diff.check92
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check93 = icmp ult i32 %6, 32
  br i1 %min.iters.check93, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <16 x i8>, ptr %i.h, align 1, !tbaa !54
  %wide.load94 = load <16 x i8>, ptr %i.i, align 1, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load95 = load <16 x i8>, ptr %i.j, align 1, !tbaa !54
  %wide.load96 = load <16 x i8>, ptr %i.k, align 1, !tbaa !54
  %i.l = sub <16 x i8> %wide.load, %wide.load95
  %i.m = sub <16 x i8> %wide.load94, %wide.load96
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <16 x i8> %i.l, ptr %i.n, align 1, !tbaa !54
  store <16 x i8> %i.m, ptr %i.o, align 1, !tbaa !54
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !159

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !177

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec97 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index98 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next101, %vec.epilog.vector.body ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 %index98
  %wide.load99 = load <4 x i8>, ptr %i.q, align 1, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 %index98
  %wide.load100 = load <4 x i8>, ptr %i.r, align 1, !tbaa !54
  %i.s = sub <4 x i8> %wide.load99, %wide.load100
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %index98
  store <4 x i8> %i.s, ptr %i.t, align 1, !tbaa !54
  %index.next101 = add nuw i64 %index98, 4        ; 2 uses
  %i.u = icmp eq i64 %index.next101, %n.vec97
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !160

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n102 = icmp eq i64 %n.vec97, %wide.trip.count
  br i1 %cmp.n102, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec97, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.prol
  %i.w = load i8, ptr %i.v, align 1, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.prol
  %i.y = load i8, ptr %i.x, align 1, !tbaa !54
  %i.z = sub i8 %i.w, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.prol
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !54
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !161

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %._crit_edge, label %.lr.ph

.preheader55:                                     ; preds = %bb.a
  %i.ad = icmp sgt i32 %6, 0
  br i1 %i.ad, label %iter.check172, label %.preheader

iter.check172:                                    ; preds = %.preheader55
  %wide.trip.count75 = zext nneg i32 %6 to i64    ; 8 uses
  %min.iters.check154 = icmp ult i32 %6, 4
  br i1 %min.iters.check154, label %.lr.ph62.preheader, label %vector.memcheck155

vector.memcheck155:                               ; preds = %iter.check172
  %i.ae = sub i64 %i.b, %i.a
  %diff.check156 = icmp ugt i64 %i.ae, -32
  %i.af = sub i64 %i.c, %i.a
  %diff.check157 = icmp ugt i64 %i.af, -32
  %conflict.rdx158 = or i1 %diff.check156, %diff.check157
  br i1 %conflict.rdx158, label %.lr.ph62.preheader, label %vector.main.loop.iter.check159

vector.main.loop.iter.check159:                   ; preds = %vector.memcheck155
  %min.iters.check160 = icmp ult i32 %6, 32
  br i1 %min.iters.check160, label %vec.epilog.ph176, label %vector.ph161

vector.ph161:                                     ; preds = %vector.main.loop.iter.check159
  %i.ag = and i64 %wide.trip.count75, 28
  %n.vec162 = and i64 %wide.trip.count75, 2147483616 ; 4 uses
  br label %vector.body163

vector.body163:                                   ; preds = %vector.ph161, %vector.body163
  %index164 = phi i64 [ 0, %vector.ph161 ], [ %index.next169, %vector.body163 ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 %index164 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load165 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !54
  %wide.load166 = load <16 x i8>, ptr %i.ai, align 1, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 %index164 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load167 = load <16 x i8>, ptr %i.aj, align 1, !tbaa !54
  %wide.load168 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !54
  %i.al = lshr <16 x i8> %wide.load167, splat (i8 1)
  %i.am = lshr <16 x i8> %wide.load168, splat (i8 1)
  %i.an = sub <16 x i8> %wide.load165, %i.al
  %i.ao = sub <16 x i8> %wide.load166, %i.am
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %index164 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <16 x i8> %i.an, ptr %i.ap, align 1, !tbaa !54
  store <16 x i8> %i.ao, ptr %i.aq, align 1, !tbaa !54
  %index.next169 = add nuw i64 %index164, 32      ; 2 uses
  %i.ar = icmp eq i64 %index.next169, %n.vec162
  br i1 %i.ar, label %middle.block170, label %vector.body163, !llvm.loop !162

middle.block170:                                  ; preds = %vector.body163
  %cmp.n171 = icmp eq i64 %n.vec162, %wide.trip.count75
  br i1 %cmp.n171, label %.preheader, label %vec.epilog.iter.check173

vec.epilog.iter.check173:                         ; preds = %middle.block170
  %min.epilog.iters.check175 = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check175, label %.lr.ph62.preheader, label %vec.epilog.ph176, !prof !177

vec.epilog.ph176:                                 ; preds = %vector.main.loop.iter.check159, %vec.epilog.iter.check173
  %vec.epilog.resume.val177 = phi i64 [ %n.vec162, %vec.epilog.iter.check173 ], [ 0, %vector.main.loop.iter.check159 ]
  %n.vec178 = and i64 %wide.trip.count75, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body179

vec.epilog.vector.body179:                        ; preds = %vec.epilog.vector.body179, %vec.epilog.ph176
  %index180 = phi i64 [ %vec.epilog.resume.val177, %vec.epilog.ph176 ], [ %index.next183, %vec.epilog.vector.body179 ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 %index180
  %wide.load181 = load <4 x i8>, ptr %i.as, align 1, !tbaa !54
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 %index180
  %wide.load182 = load <4 x i8>, ptr %i.at, align 1, !tbaa !54
  %i.au = lshr <4 x i8> %wide.load182, splat (i8 1)
  %i.av = sub <4 x i8> %wide.load181, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %index180
  store <4 x i8> %i.av, ptr %i.aw, align 1, !tbaa !54
  %index.next183 = add nuw i64 %index180, 4       ; 2 uses
  %i.ax = icmp eq i64 %index.next183, %n.vec178
  br i1 %i.ax, label %vec.epilog.middle.block184, label %vec.epilog.vector.body179, !llvm.loop !163

vec.epilog.middle.block184:                       ; preds = %vec.epilog.vector.body179
  %cmp.n185 = icmp eq i64 %n.vec178, %wide.trip.count75
  br i1 %cmp.n185, label %.preheader, label %.lr.ph62.preheader

.lr.ph62.preheader:                               ; preds = %iter.check172, %vector.memcheck155, %vec.epilog.iter.check173, %vec.epilog.middle.block184
  %indvars.iv72.ph = phi i64 [ 0, %iter.check172 ], [ 0, %vector.memcheck155 ], [ %n.vec162, %vec.epilog.iter.check173 ], [ %n.vec178, %vec.epilog.middle.block184 ] ; 6 uses
  %xtraiter276 = and i64 %wide.trip.count75, 1
  %lcmp.mod277.not = icmp eq i64 %xtraiter276, 0
  br i1 %lcmp.mod277.not, label %.lr.ph62.prol.loopexit, label %.lr.ph62.prol

.lr.ph62.prol:                                    ; preds = %.lr.ph62.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv72.ph
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !54
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv72.ph
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !54
  %i.bc = lshr i8 %i.bb, 1
  %i.bd = sub i8 %i.az, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv72.ph
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !54
  %indvars.iv.next73.prol = or disjoint i64 %indvars.iv72.ph, 1
  br label %.lr.ph62.prol.loopexit

.lr.ph62.prol.loopexit:                           ; preds = %.lr.ph62.prol, %.lr.ph62.preheader
  %indvars.iv72.unr = phi i64 [ %indvars.iv72.ph, %.lr.ph62.preheader ], [ %indvars.iv.next73.prol, %.lr.ph62.prol ]
  %i.bf = add nsw i64 %wide.trip.count75, -1
  %i.bg = icmp eq i64 %indvars.iv72.ph, %i.bf
  br i1 %i.bg, label %.preheader, label %.lr.ph62

bb.b:                                             ; preds = %bb.a
  %i.bh = sext i32 %5 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr align 1 %3, i64 %i.bh, i1 false)
  br label %sub_png_paeth_prediction.exit

bb.c:                                             ; preds = %bb.a
  %i.bi = sext i32 %6 to i64                      ; 4 uses
  %i.bj = getelementptr inbounds i8, ptr %3, i64 %i.bi ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr align 1 %3, i64 %i.bi, i1 false)
  %i.bk = getelementptr inbounds i8, ptr %1, i64 %i.bi ; 7 uses
  %i.bl = sub nsw i32 %5, %6                      ; 2 uses
  %i.bm = sub nsw i32 32, %6
  %i.bn = tail call i32 @llvm.smin.i32(i32 %i.bm, i32 %i.bl) ; 8 uses
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %iter.check252, label %sub_left_prediction.exit

iter.check252:                                    ; preds = %bb.c
  %i.bp = zext nneg i32 %i.bn to i64              ; 5 uses
  %min.iters.check232 = icmp ult i32 %i.bn, 4
  br i1 %min.iters.check232, label %.lr.ph.i.preheader, label %vector.memcheck233

vector.memcheck233:                               ; preds = %iter.check252
  %i.bq = add i64 %i.a, %i.bi
  %i.br = sub i64 %i.b, %i.bq
  %diff.check234 = icmp ugt i64 %i.br, -32
  %i.bs = sub i64 %i.b, %i.a
  %diff.check235 = icmp ugt i64 %i.bs, -32
  %conflict.rdx236 = or i1 %diff.check234, %diff.check235
  br i1 %conflict.rdx236, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check237

vector.main.loop.iter.check237:                   ; preds = %vector.memcheck233
  %min.iters.check238 = icmp ult i32 %i.bn, 32
  br i1 %min.iters.check238, label %vec.epilog.ph256, label %vector.ph239

vector.ph239:                                     ; preds = %vector.main.loop.iter.check237
  %i.bt = and i64 %i.bp, 28
  %n.vec240 = and i64 %i.bp, 2147483616           ; 7 uses
  %i.bu = trunc nuw nsw i64 %n.vec240 to i32
  %i.bv = getelementptr i8, ptr %3, i64 %n.vec240 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bj, i64 %n.vec240 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bk, i64 %n.vec240 ; 2 uses
  br label %vector.body241

vector.body241:                                   ; preds = %vector.ph239, %vector.body241
  %index242 = phi i64 [ 0, %vector.ph239 ], [ %index.next249, %vector.body241 ] ; 4 uses
  %next.gep = getelementptr i8, ptr %3, i64 %index242 ; 2 uses
  %next.gep243 = getelementptr i8, ptr %i.bj, i64 %index242 ; 2 uses
  %next.gep244 = getelementptr i8, ptr %i.bk, i64 %index242 ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep243, i64 16
  %wide.load245 = load <16 x i8>, ptr %next.gep243, align 1, !tbaa !54
  %wide.load246 = load <16 x i8>, ptr %i.by, align 1, !tbaa !54
  %i.bz = getelementptr i8, ptr %next.gep, i64 16
  %wide.load247 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !54
  %wide.load248 = load <16 x i8>, ptr %i.bz, align 1, !tbaa !54
  %i.ca = sub <16 x i8> %wide.load245, %wide.load247
  %i.cb = sub <16 x i8> %wide.load246, %wide.load248
  %i.cc = getelementptr i8, ptr %next.gep244, i64 16
  store <16 x i8> %i.ca, ptr %next.gep244, align 1, !tbaa !54
  store <16 x i8> %i.cb, ptr %i.cc, align 1, !tbaa !54
  %index.next249 = add nuw i64 %index242, 32      ; 2 uses
  %i.cd = icmp eq i64 %index.next249, %n.vec240
  br i1 %i.cd, label %middle.block250, label %vector.body241, !llvm.loop !164

middle.block250:                                  ; preds = %vector.body241
  %cmp.n251 = icmp eq i64 %n.vec240, %i.bp
  br i1 %cmp.n251, label %sub_left_prediction.exit, label %vec.epilog.iter.check253

vec.epilog.iter.check253:                         ; preds = %middle.block250
  %min.epilog.iters.check255 = icmp eq i64 %i.bt, 0
  br i1 %min.epilog.iters.check255, label %.lr.ph.i.preheader, label %vec.epilog.ph256, !prof !177

vec.epilog.ph256:                                 ; preds = %vector.main.loop.iter.check237, %vec.epilog.iter.check253
  %vec.epilog.resume.val257 = phi i64 [ %n.vec240, %vec.epilog.iter.check253 ], [ 0, %vector.main.loop.iter.check237 ]
  %n.vec258 = and i64 %i.bp, 2147483644           ; 6 uses
  %i.ce = trunc nuw nsw i64 %n.vec258 to i32
  %i.cf = getelementptr i8, ptr %3, i64 %n.vec258 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bj, i64 %n.vec258 ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bk, i64 %n.vec258 ; 2 uses
  br label %vec.epilog.vector.body259

vec.epilog.vector.body259:                        ; preds = %vec.epilog.vector.body259, %vec.epilog.ph256
  %index260 = phi i64 [ %vec.epilog.resume.val257, %vec.epilog.ph256 ], [ %index.next266, %vec.epilog.vector.body259 ] ; 4 uses
  %next.gep261 = getelementptr i8, ptr %3, i64 %index260
  %next.gep262 = getelementptr i8, ptr %i.bj, i64 %index260
  %next.gep263 = getelementptr i8, ptr %i.bk, i64 %index260
  %wide.load264 = load <4 x i8>, ptr %next.gep262, align 1, !tbaa !54
  %wide.load265 = load <4 x i8>, ptr %next.gep261, align 1, !tbaa !54
  %i.ci = sub <4 x i8> %wide.load264, %wide.load265
  store <4 x i8> %i.ci, ptr %next.gep263, align 1, !tbaa !54
  %index.next266 = add nuw i64 %index260, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next266, %n.vec258
  br i1 %i.cj, label %vec.epilog.middle.block267, label %vec.epilog.vector.body259, !llvm.loop !165

vec.epilog.middle.block267:                       ; preds = %vec.epilog.vector.body259
  %cmp.n268 = icmp eq i64 %n.vec258, %i.bp
  br i1 %cmp.n268, label %sub_left_prediction.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check252, %vector.memcheck233, %vec.epilog.iter.check253, %vec.epilog.middle.block267
  %.033.i.ph = phi i32 [ 0, %iter.check252 ], [ 0, %vector.memcheck233 ], [ %i.bu, %vec.epilog.iter.check253 ], [ %i.ce, %vec.epilog.middle.block267 ] ; 4 uses
  %.02632.i.ph = phi ptr [ %3, %iter.check252 ], [ %3, %vector.memcheck233 ], [ %i.bv, %vec.epilog.iter.check253 ], [ %i.cf, %vec.epilog.middle.block267 ] ; 2 uses
  %.02731.i.ph = phi ptr [ %i.bj, %iter.check252 ], [ %i.bj, %vector.memcheck233 ], [ %i.bw, %vec.epilog.iter.check253 ], [ %i.cg, %vec.epilog.middle.block267 ] ; 2 uses
  %.02830.i.ph = phi ptr [ %i.bk, %iter.check252 ], [ %i.bk, %vector.memcheck233 ], [ %i.bx, %vec.epilog.iter.check253 ], [ %i.ch, %vec.epilog.middle.block267 ] ; 2 uses
  %i.ck = sub i32 %i.bn, %.033.i.ph
  %xtraiter282 = and i32 %i.ck, 3                 ; 2 uses
  %lcmp.mod283.not = icmp eq i32 %xtraiter282, 0
  br i1 %lcmp.mod283.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.033.i.prol = phi i32 [ %i.cr, %.lr.ph.i.prol ], [ %.033.i.ph, %.lr.ph.i.preheader ]
  %.02632.i.prol = phi ptr [ %i.cn, %.lr.ph.i.prol ], [ %.02632.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02731.i.prol = phi ptr [ %i.cl, %.lr.ph.i.prol ], [ %.02731.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02830.i.prol = phi ptr [ %i.cq, %.lr.ph.i.prol ], [ %.02830.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter284 = phi i32 [ %prol.iter284.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.02731.i.prol, i64 1 ; 3 uses
  %i.cm = load i8, ptr %.02731.i.prol, align 1, !tbaa !54
  %i.cn = getelementptr inbounds nuw i8, ptr %.02632.i.prol, i64 1 ; 3 uses
  %i.co = load i8, ptr %.02632.i.prol, align 1, !tbaa !54
  %i.cp = sub i8 %i.cm, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %.02830.i.prol, i64 1 ; 3 uses
  store i8 %i.cp, ptr %.02830.i.prol, align 1, !tbaa !54
  %i.cr = add nuw nsw i32 %.033.i.prol, 1         ; 2 uses
  %prol.iter284.next = add i32 %prol.iter284, 1   ; 2 uses
  %prol.iter284.cmp.not = icmp eq i32 %prol.iter284.next, %xtraiter282
  br i1 %prol.iter284.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !166

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa274.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.cl, %.lr.ph.i.prol ]
  %.lcssa273.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.cn, %.lr.ph.i.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.cq, %.lr.ph.i.prol ]
  %.033.i.unr = phi i32 [ %.033.i.ph, %.lr.ph.i.preheader ], [ %i.cr, %.lr.ph.i.prol ]
  %.02632.i.unr = phi ptr [ %.02632.i.ph, %.lr.ph.i.preheader ], [ %i.cn, %.lr.ph.i.prol ]
  %.02731.i.unr = phi ptr [ %.02731.i.ph, %.lr.ph.i.preheader ], [ %i.cl, %.lr.ph.i.prol ]
  %.02830.i.unr = phi ptr [ %.02830.i.ph, %.lr.ph.i.preheader ], [ %i.cq, %.lr.ph.i.prol ]
  %i.cs = sub i32 %.033.i.ph, %i.bn
  %i.ct = icmp ugt i32 %i.cs, -4
  br i1 %i.ct, label %sub_left_prediction.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.033.i = phi i32 [ %i.ds, %.lr.ph.i ], [ %.033.i.unr, %.lr.ph.i.prol.loopexit ]
  %.02632.i = phi ptr [ %i.do, %.lr.ph.i ], [ %.02632.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.02731.i = phi ptr [ %i.dm, %.lr.ph.i ], [ %.02731.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.02830.i = phi ptr [ %i.dr, %.lr.ph.i ], [ %.02830.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.02731.i, i64 1
  %i.cv = load i8, ptr %.02731.i, align 1, !tbaa !54
  %i.cw = getelementptr inbounds nuw i8, ptr %.02632.i, i64 1
  %i.cx = load i8, ptr %.02632.i, align 1, !tbaa !54
  %i.cy = sub i8 %i.cv, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %.02830.i, i64 1
  store i8 %i.cy, ptr %.02830.i, align 1, !tbaa !54
  %i.da = getelementptr inbounds nuw i8, ptr %.02731.i, i64 2
  %i.db = load i8, ptr %i.cu, align 1, !tbaa !54
  %i.dc = getelementptr inbounds nuw i8, ptr %.02632.i, i64 2
  %i.dd = load i8, ptr %i.cw, align 1, !tbaa !54
  %i.de = sub i8 %i.db, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %.02830.i, i64 2
  store i8 %i.de, ptr %i.cz, align 1, !tbaa !54
  %i.dg = getelementptr inbounds nuw i8, ptr %.02731.i, i64 3
  %i.dh = load i8, ptr %i.da, align 1, !tbaa !54
  %i.di = getelementptr inbounds nuw i8, ptr %.02632.i, i64 3
  %i.dj = load i8, ptr %i.dc, align 1, !tbaa !54
  %i.dk = sub i8 %i.dh, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %.02830.i, i64 3
  store i8 %i.dk, ptr %i.df, align 1, !tbaa !54
  %i.dm = getelementptr inbounds nuw i8, ptr %.02731.i, i64 4 ; 2 uses
  %i.dn = load i8, ptr %i.dg, align 1, !tbaa !54
  %i.do = getelementptr inbounds nuw i8, ptr %.02632.i, i64 4 ; 2 uses
  %i.dp = load i8, ptr %i.di, align 1, !tbaa !54
  %i.dq = sub i8 %i.dn, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %.02830.i, i64 4 ; 2 uses
  store i8 %i.dq, ptr %i.dl, align 1, !tbaa !54
  %i.ds = add nuw nsw i32 %.033.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i32 %i.ds, %i.bn
  br i1 %exitcond.not.i.3, label %sub_left_prediction.exit, label %.lr.ph.i, !llvm.loop !167

sub_left_prediction.exit:                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block250, %vec.epilog.middle.block267, %bb.c
  %.028.lcssa.i = phi ptr [ %i.bk, %bb.c ], [ %i.ch, %vec.epilog.middle.block267 ], [ %i.bx, %middle.block250 ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.dr, %.lr.ph.i ]
  %.027.lcssa.i = phi ptr [ %i.bj, %bb.c ], [ %i.cg, %vec.epilog.middle.block267 ], [ %i.bw, %middle.block250 ], [ %.lcssa274.unr, %.lr.ph.i.prol.loopexit ], [ %i.dm, %.lr.ph.i ]
  %.026.lcssa.i = phi ptr [ %3, %bb.c ], [ %i.cf, %vec.epilog.middle.block267 ], [ %i.bv, %middle.block250 ], [ %.lcssa273.unr, %.lr.ph.i.prol.loopexit ], [ %i.do, %.lr.ph.i ]
  %i.dt = sub nsw i32 %i.bl, %i.bn
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !178
  %i.dw = zext nneg i32 %i.dt to i64
  tail call void %i.dv(ptr noundef nonnull %.028.lcssa.i, ptr noundef %.027.lcssa.i, ptr noundef %.026.lcssa.i, i64 noundef %i.dw) #11, !inline_history !168
  br label %sub_png_paeth_prediction.exit

bb.d:                                             ; preds = %bb.a
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !178
  %i.dz = sext i32 %5 to i64
  tail call void %i.dy(ptr noundef nonnull %1, ptr noundef %3, ptr noundef %4, i64 noundef %i.dz) #11
  br label %sub_png_paeth_prediction.exit

.preheader:                                       ; preds = %.lr.ph62.prol.loopexit, %.lr.ph62, %middle.block170, %vec.epilog.middle.block184, %.preheader55
  %.0.lcssa = phi i32 [ 0, %.preheader55 ], [ %6, %middle.block170 ], [ %6, %vec.epilog.middle.block184 ], [ %6, %.lr.ph62 ], [ %6, %.lr.ph62.prol.loopexit ] ; 2 uses
  %i.ea = icmp slt i32 %.0.lcssa, %5
  br i1 %i.ea, label %iter.check212, label %sub_png_paeth_prediction.exit

iter.check212:                                    ; preds = %.preheader
  %i.eb = zext nneg i32 %.0.lcssa to i64          ; 7 uses
  %i.ec = sext i32 %6 to i64                      ; 6 uses
  %wide.trip.count80 = zext nneg i32 %5 to i64    ; 4 uses
  %i.ed = sub nsw i64 %wide.trip.count80, %i.eb   ; 7 uses
  %min.iters.check193 = icmp ult i64 %i.ed, 4
  br i1 %min.iters.check193, label %.lr.ph65.preheader, label %vector.memcheck194

vector.memcheck194:                               ; preds = %iter.check212
  %i.ee = add i64 %i.a, %i.ec
  %i.ef = sub i64 %i.b, %i.ee
  %diff.check195 = icmp ugt i64 %i.ef, -16
  %i.eg = sub i64 %i.b, %i.a
  %diff.check196 = icmp ugt i64 %i.eg, -16
  %conflict.rdx197 = or i1 %diff.check195, %diff.check196
  %i.eh = sub i64 %i.c, %i.a
  %diff.check198 = icmp ugt i64 %i.eh, -16
  %conflict.rdx199 = or i1 %conflict.rdx197, %diff.check198
  br i1 %conflict.rdx199, label %.lr.ph65.preheader, label %vector.main.loop.iter.check200

vector.main.loop.iter.check200:                   ; preds = %vector.memcheck194
  %min.iters.check201 = icmp ult i64 %i.ed, 16
  br i1 %min.iters.check201, label %vec.epilog.ph216, label %vector.ph202

vector.ph202:                                     ; preds = %vector.main.loop.iter.check200
  %i.ei = and i64 %i.ed, 12
  %n.vec203 = and i64 %i.ed, -16                  ; 4 uses
  %i.ej = add nsw i64 %n.vec203, %i.eb
  br label %vector.body204

vector.body204:                                   ; preds = %vector.ph202, %vector.body204
  %index205 = phi i64 [ 0, %vector.ph202 ], [ %index.next209, %vector.body204 ] ; 2 uses
  %i.ek = add nuw i64 %index205, %i.eb            ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 %i.ek
  %wide.load206 = load <16 x i8>, ptr %i.el, align 1, !tbaa !54
  %i.em = sub nsw i64 %i.ek, %i.ec
  %i.en = getelementptr inbounds i8, ptr %3, i64 %i.em
  %wide.load207 = load <16 x i8>, ptr %i.en, align 1, !tbaa !54
  %i.eo = zext <16 x i8> %wide.load207 to <16 x i16>
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 %i.ek
  %wide.load208 = load <16 x i8>, ptr %i.ep, align 1, !tbaa !54
  %i.eq = zext <16 x i8> %wide.load208 to <16 x i16>
  %i.er = add nuw nsw <16 x i16> %i.eq, %i.eo
  %i.es = lshr <16 x i16> %i.er, splat (i16 1)
  %i.et = trunc nuw <16 x i16> %i.es to <16 x i8>
  %i.eu = sub <16 x i8> %wide.load206, %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 %i.ek
  store <16 x i8> %i.eu, ptr %i.ev, align 1, !tbaa !54
  %index.next209 = add nuw i64 %index205, 16      ; 2 uses
  %i.ew = icmp eq i64 %index.next209, %n.vec203
  br i1 %i.ew, label %middle.block210, label %vector.body204, !llvm.loop !169

middle.block210:                                  ; preds = %vector.body204
  %cmp.n211 = icmp eq i64 %i.ed, %n.vec203
  br i1 %cmp.n211, label %sub_png_paeth_prediction.exit, label %vec.epilog.iter.check213

vec.epilog.iter.check213:                         ; preds = %middle.block210
  %min.epilog.iters.check215 = icmp eq i64 %i.ei, 0
  br i1 %min.epilog.iters.check215, label %.lr.ph65.preheader, label %vec.epilog.ph216, !prof !179

vec.epilog.ph216:                                 ; preds = %vector.main.loop.iter.check200, %vec.epilog.iter.check213
  %vec.epilog.resume.val217 = phi i64 [ %n.vec203, %vec.epilog.iter.check213 ], [ 0, %vector.main.loop.iter.check200 ]
  %n.vec218 = and i64 %i.ed, -4                   ; 3 uses
  %i.ex = add nsw i64 %n.vec218, %i.eb
  br label %vec.epilog.vector.body219

vec.epilog.vector.body219:                        ; preds = %vec.epilog.vector.body219, %vec.epilog.ph216
  %index220 = phi i64 [ %vec.epilog.resume.val217, %vec.epilog.ph216 ], [ %index.next224, %vec.epilog.vector.body219 ] ; 2 uses
  %i.ey = add nuw i64 %index220, %i.eb            ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 %i.ey
  %wide.load221 = load <4 x i8>, ptr %i.ez, align 1, !tbaa !54
  %i.fa = sub nsw i64 %i.ey, %i.ec
  %i.fb = getelementptr inbounds i8, ptr %3, i64 %i.fa
  %wide.load222 = load <4 x i8>, ptr %i.fb, align 1, !tbaa !54
  %i.fc = zext <4 x i8> %wide.load222 to <4 x i16>
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 %i.ey
  %wide.load223 = load <4 x i8>, ptr %i.fd, align 1, !tbaa !54
  %i.fe = zext <4 x i8> %wide.load223 to <4 x i16>
  %i.ff = add nuw nsw <4 x i16> %i.fe, %i.fc
  %i.fg = lshr <4 x i16> %i.ff, splat (i16 1)
  %i.fh = trunc nuw <4 x i16> %i.fg to <4 x i8>
  %i.fi = sub <4 x i8> %wide.load221, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ey
  store <4 x i8> %i.fi, ptr %i.fj, align 1, !tbaa !54
  %index.next224 = add nuw i64 %index220, 4       ; 2 uses
  %i.fk = icmp eq i64 %index.next224, %n.vec218
  br i1 %i.fk, label %vec.epilog.middle.block225, label %vec.epilog.vector.body219, !llvm.loop !170

vec.epilog.middle.block225:                       ; preds = %vec.epilog.vector.body219
  %cmp.n226 = icmp eq i64 %i.ed, %n.vec218
  br i1 %cmp.n226, label %sub_png_paeth_prediction.exit, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %iter.check212, %vector.memcheck194, %vec.epilog.iter.check213, %vec.epilog.middle.block225
  %indvars.iv77.ph = phi i64 [ %i.eb, %iter.check212 ], [ %i.eb, %vector.memcheck194 ], [ %i.ej, %vec.epilog.iter.check213 ], [ %i.ex, %vec.epilog.middle.block225 ] ; 8 uses
  %i.fl = sub nsw i64 %wide.trip.count80, %indvars.iv77.ph
  %xtraiter279 = and i64 %i.fl, 1
  %lcmp.mod280.not = icmp eq i64 %xtraiter279, 0
  br i1 %lcmp.mod280.not, label %.lr.ph65.prol.loopexit, label %.lr.ph65.prol

.lr.ph65.prol:                                    ; preds = %.lr.ph65.preheader
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv77.ph
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !54
  %i.fo = sub nsw i64 %indvars.iv77.ph, %i.ec
  %i.fp = getelementptr inbounds i8, ptr %3, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !54
  %i.fr = zext i8 %i.fq to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv77.ph
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !54
  %i.fu = zext i8 %i.ft to i16
  %i.fv = add nuw nsw i16 %i.fu, %i.fr
  %i.fw = lshr i16 %i.fv, 1
  %i.fx = trunc nuw i16 %i.fw to i8
  %i.fy = sub i8 %i.fn, %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv77.ph
  store i8 %i.fy, ptr %i.fz, align 1, !tbaa !54
  %indvars.iv.next78.prol = add nuw nsw i64 %indvars.iv77.ph, 1
  br label %.lr.ph65.prol.loopexit

.lr.ph65.prol.loopexit:                           ; preds = %.lr.ph65.prol, %.lr.ph65.preheader
  %indvars.iv77.unr = phi i64 [ %indvars.iv77.ph, %.lr.ph65.preheader ], [ %indvars.iv.next78.prol, %.lr.ph65.prol ]
  %i.ga = add nsw i64 %wide.trip.count80, -1
  %i.gb = icmp eq i64 %indvars.iv77.ph, %i.ga
  br i1 %i.gb, label %sub_png_paeth_prediction.exit, label %.lr.ph65

.lr.ph62:                                         ; preds = %.lr.ph62.prol.loopexit, %.lr.ph62
  %indvars.iv72 = phi i64 [ %indvars.iv.next73.1, %.lr.ph62 ], [ %indvars.iv72.unr, %.lr.ph62.prol.loopexit ] ; 5 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv72
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !54
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv72
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !54
  %i.gg = lshr i8 %i.gf, 1
  %i.gh = sub i8 %i.gd, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv72
  store i8 %i.gh, ptr %i.gi, align 1, !tbaa !54
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next73
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !54
  %i.gl = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next73
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !54
  %i.gn = lshr i8 %i.gm, 1
  %i.go = sub i8 %i.gk, %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next73
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !54
  %indvars.iv.next73.1 = add nuw nsw i64 %indvars.iv72, 2 ; 2 uses
  %exitcond76.not.1 = icmp eq i64 %indvars.iv.next73.1, %wide.trip.count75
  br i1 %exitcond76.not.1, label %.preheader, label %.lr.ph62, !llvm.loop !171

.lr.ph65:                                         ; preds = %.lr.ph65.prol.loopexit, %.lr.ph65
  %indvars.iv77 = phi i64 [ %indvars.iv.next78.1, %.lr.ph65 ], [ %indvars.iv77.unr, %.lr.ph65.prol.loopexit ] ; 6 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv77
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !54
  %i.gs = sub nsw i64 %indvars.iv77, %i.ec
  %i.gt = getelementptr inbounds i8, ptr %3, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !54
  %i.gv = zext i8 %i.gu to i16
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv77
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !54
  %i.gy = zext i8 %i.gx to i16
  %i.gz = add nuw nsw i16 %i.gy, %i.gv
  %i.ha = lshr i16 %i.gz, 1
  %i.hb = trunc nuw i16 %i.ha to i8
  %i.hc = sub i8 %i.gr, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv77
  store i8 %i.hc, ptr %i.hd, align 1, !tbaa !54
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next78
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !54
  %i.hg = sub nsw i64 %indvars.iv.next78, %i.ec
  %i.hh = getelementptr inbounds i8, ptr %3, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !54
  %i.hj = zext i8 %i.hi to i16
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next78
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !54
  %i.hm = zext i8 %i.hl to i16
  %i.hn = add nuw nsw i16 %i.hm, %i.hj
  %i.ho = lshr i16 %i.hn, 1
  %i.hp = trunc nuw i16 %i.ho to i8
  %i.hq = sub i8 %i.hf, %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next78
  store i8 %i.hq, ptr %i.hr, align 1, !tbaa !54
  %indvars.iv.next78.1 = add nuw nsw i64 %indvars.iv77, 2 ; 2 uses
  %exitcond81.not.1 = icmp eq i64 %indvars.iv.next78.1, %wide.trip.count80
  br i1 %exitcond81.not.1, label %sub_png_paeth_prediction.exit, label %.lr.ph65, !llvm.loop !172

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !54
  %i.hu = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !54
  %i.hw = sub i8 %i.ht, %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.hw, ptr %i.hx, align 1, !tbaa !54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !54
  %i.ia = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !54
  %i.ic = sub i8 %i.hz, %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  store i8 %i.ic, ptr %i.id, align 1, !tbaa !54
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next.1
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !54
  %i.ig = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next.1
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !54
  %i.ii = sub i8 %i.if, %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  store i8 %i.ii, ptr %i.ij, align 1, !tbaa !54
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next.2
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !54
  %i.im = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next.2
  %i.in = load i8, ptr %i.im, align 1, !tbaa !54
  %i.io = sub i8 %i.il, %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !54
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !173

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader57
  %.2.lcssa = phi i32 [ 0, %.preheader57 ], [ %6, %middle.block ], [ %6, %vec.epilog.middle.block ], [ %6, %.lr.ph ], [ %6, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.iq = zext nneg i32 %.2.lcssa to i64          ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 %i.iq ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %3, i64 %i.iq ; 6 uses
  %i.it = getelementptr inbounds nuw i8, ptr %4, i64 %i.iq ; 6 uses
  %i.iu = sub nsw i32 %5, %.2.lcssa               ; 4 uses
  %i.iv = icmp sgt i32 %i.iu, 0
  br i1 %i.iv, label %iter.check133, label %sub_png_paeth_prediction.exit

iter.check133:                                    ; preds = %._crit_edge
  %i.iw = sext i32 %6 to i64                      ; 4 uses
  %wide.trip.count.i = zext nneg i32 %i.iu to i64 ; 6 uses
  %min.iters.check111 = icmp ult i32 %i.iu, 4
  br i1 %min.iters.check111, label %.lr.ph.i53.preheader, label %vector.memcheck112

vector.memcheck112:                               ; preds = %iter.check133
  %i.ix = sub i64 %i.b, %i.a
  %diff.check113 = icmp ugt i64 %i.ix, -16
  %i.iy = add i64 %i.a, %i.iw                     ; 2 uses
  %i.iz = sub i64 %i.b, %i.iy
  %diff.check114 = icmp ugt i64 %i.iz, -16
  %conflict.rdx115 = or i1 %diff.check113, %diff.check114
  %i.ja = sub i64 %i.c, %i.iy
  %diff.check116 = icmp ugt i64 %i.ja, -16
  %conflict.rdx117 = or i1 %conflict.rdx115, %diff.check116
  %i.jb = sub i64 %i.c, %i.a
  %diff.check118 = icmp ugt i64 %i.jb, -16
  %conflict.rdx119 = or i1 %conflict.rdx117, %diff.check118
  br i1 %conflict.rdx119, label %.lr.ph.i53.preheader, label %vector.main.loop.iter.check120

vector.main.loop.iter.check120:                   ; preds = %vector.memcheck112
  %min.iters.check121 = icmp ult i32 %i.iu, 16
  br i1 %min.iters.check121, label %vec.epilog.ph137, label %vector.ph122

vector.ph122:                                     ; preds = %vector.main.loop.iter.check120
  %i.jc = and i64 %wide.trip.count.i, 12
  %n.vec123 = and i64 %wide.trip.count.i, 2147483632 ; 4 uses
  br label %vector.body124

vector.body124:                                   ; preds = %vector.ph122, %vector.body124
  %index125 = phi i64 [ 0, %vector.ph122 ], [ %index.next130, %vector.body124 ] ; 5 uses
  %i.jd = sub nsw i64 %index125, %i.iw            ; 2 uses
  %i.je = getelementptr inbounds i8, ptr %i.is, i64 %i.jd
  %wide.load126 = load <16 x i8>, ptr %i.je, align 1, !tbaa !54 ; 2 uses
  %i.jf = zext <16 x i8> %wide.load126 to <16 x i32>
  %i.jg = getelementptr inbounds nuw i8, ptr %i.it, i64 %index125
  %wide.load127 = load <16 x i8>, ptr %i.jg, align 1, !tbaa !54 ; 2 uses
  %i.jh = zext <16 x i8> %wide.load127 to <16 x i32>
  %i.ji = getelementptr inbounds i8, ptr %i.it, i64 %i.jd
  %wide.load128 = load <16 x i8>, ptr %i.ji, align 1, !tbaa !54 ; 2 uses
  %i.jj = zext <16 x i8> %wide.load128 to <16 x i32> ; 2 uses
  %i.jk = sub nsw <16 x i32> %i.jh, %i.jj         ; 2 uses
  %i.jl = sub nsw <16 x i32> %i.jf, %i.jj         ; 2 uses
  %i.jm = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.jk, i1 true) ; 2 uses
  %i.jn = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.jl, i1 true) ; 2 uses
  %i.jo = add nsw <16 x i32> %i.jk, %i.jl
  %i.jp = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.jo, i1 true) ; 2 uses
  %i.jq = icmp samesign ugt <16 x i32> %i.jm, %i.jn
  %i.jr = icmp samesign ugt <16 x i32> %i.jm, %i.jp
  %i.js = select <16 x i1> %i.jq, <16 x i1> splat (i1 true), <16 x i1> %i.jr
  %i.jt = icmp samesign ugt <16 x i32> %i.jn, %i.jp
  %i.ju = select <16 x i1> %i.jt, <16 x i8> %wide.load128, <16 x i8> %wide.load127
  %i.jv = select <16 x i1> %i.js, <16 x i8> %i.ju, <16 x i8> %wide.load126
  %i.jw = getelementptr inbounds nuw i8, ptr %i.is, i64 %index125
  %wide.load129 = load <16 x i8>, ptr %i.jw, align 1, !tbaa !54
  %i.jx = sub <16 x i8> %wide.load129, %i.jv
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ir, i64 %index125
  store <16 x i8> %i.jx, ptr %i.jy, align 1, !tbaa !54
  %index.next130 = add nuw i64 %index125, 16      ; 2 uses
  %i.jz = icmp eq i64 %index.next130, %n.vec123
  br i1 %i.jz, label %middle.block131, label %vector.body124, !llvm.loop !174

middle.block131:                                  ; preds = %vector.body124
  %cmp.n132 = icmp eq i64 %n.vec123, %wide.trip.count.i
  br i1 %cmp.n132, label %sub_png_paeth_prediction.exit, label %vec.epilog.iter.check134

vec.epilog.iter.check134:                         ; preds = %middle.block131
  %min.epilog.iters.check136 = icmp eq i64 %i.jc, 0
  br i1 %min.epilog.iters.check136, label %.lr.ph.i53.preheader, label %vec.epilog.ph137, !prof !179

vec.epilog.ph137:                                 ; preds = %vector.main.loop.iter.check120, %vec.epilog.iter.check134
  %vec.epilog.resume.val138 = phi i64 [ %n.vec123, %vec.epilog.iter.check134 ], [ 0, %vector.main.loop.iter.check120 ]
  %n.vec139 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body140

vec.epilog.vector.body140:                        ; preds = %vec.epilog.vector.body140, %vec.epilog.ph137
  %index141 = phi i64 [ %vec.epilog.resume.val138, %vec.epilog.ph137 ], [ %index.next146, %vec.epilog.vector.body140 ] ; 5 uses
  %i.ka = sub nsw i64 %index141, %i.iw            ; 2 uses
  %i.kb = getelementptr inbounds i8, ptr %i.is, i64 %i.ka
  %wide.load142 = load <4 x i8>, ptr %i.kb, align 1, !tbaa !54 ; 2 uses
  %i.kc = zext <4 x i8> %wide.load142 to <4 x i32>
  %i.kd = getelementptr inbounds nuw i8, ptr %i.it, i64 %index141
  %wide.load143 = load <4 x i8>, ptr %i.kd, align 1, !tbaa !54 ; 2 uses
  %i.ke = zext <4 x i8> %wide.load143 to <4 x i32>
  %i.kf = getelementptr inbounds i8, ptr %i.it, i64 %i.ka
  %wide.load144 = load <4 x i8>, ptr %i.kf, align 1, !tbaa !54 ; 2 uses
  %i.kg = zext <4 x i8> %wide.load144 to <4 x i32> ; 2 uses
  %i.kh = sub nsw <4 x i32> %i.ke, %i.kg          ; 2 uses
  %i.ki = sub nsw <4 x i32> %i.kc, %i.kg          ; 2 uses
  %i.kj = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.kh, i1 true) ; 2 uses
  %i.kk = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ki, i1 true) ; 2 uses
  %i.kl = add nsw <4 x i32> %i.kh, %i.ki
  %i.km = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.kl, i1 true) ; 2 uses
  %i.kn = icmp samesign ugt <4 x i32> %i.kj, %i.kk
  %i.ko = icmp samesign ugt <4 x i32> %i.kj, %i.km
  %i.kp = select <4 x i1> %i.kn, <4 x i1> splat (i1 true), <4 x i1> %i.ko
  %i.kq = icmp samesign ugt <4 x i32> %i.kk, %i.km
  %i.kr = select <4 x i1> %i.kq, <4 x i8> %wide.load144, <4 x i8> %wide.load143
  %i.ks = select <4 x i1> %i.kp, <4 x i8> %i.kr, <4 x i8> %wide.load142
  %i.kt = getelementptr inbounds nuw i8, ptr %i.is, i64 %index141
  %wide.load145 = load <4 x i8>, ptr %i.kt, align 1, !tbaa !54
  %i.ku = sub <4 x i8> %wide.load145, %i.ks
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ir, i64 %index141
  store <4 x i8> %i.ku, ptr %i.kv, align 1, !tbaa !54
  %index.next146 = add nuw i64 %index141, 4       ; 2 uses
  %i.kw = icmp eq i64 %index.next146, %n.vec139
  br i1 %i.kw, label %vec.epilog.middle.block147, label %vec.epilog.vector.body140, !llvm.loop !175

vec.epilog.middle.block147:                       ; preds = %vec.epilog.vector.body140
  %cmp.n148 = icmp eq i64 %n.vec139, %wide.trip.count.i
  br i1 %cmp.n148, label %sub_png_paeth_prediction.exit, label %.lr.ph.i53.preheader

.lr.ph.i53.preheader:                             ; preds = %iter.check133, %vector.memcheck112, %vec.epilog.iter.check134, %vec.epilog.middle.block147
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check133 ], [ 0, %vector.memcheck112 ], [ %n.vec123, %vec.epilog.iter.check134 ], [ %n.vec139, %vec.epilog.middle.block147 ]
  br label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %.lr.ph.i53.preheader, %.lr.ph.i53
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i53 ], [ %indvars.iv.i.ph, %.lr.ph.i53.preheader ] ; 5 uses
  %i.kx = sub nsw i64 %indvars.iv.i, %i.iw        ; 2 uses
  %i.ky = getelementptr inbounds i8, ptr %i.is, i64 %i.kx
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !54  ; 2 uses
  %i.la = zext i8 %i.kz to i32
  %i.lb = getelementptr inbounds nuw i8, ptr %i.it, i64 %indvars.iv.i
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !54  ; 2 uses
  %i.ld = zext i8 %i.lc to i32
  %i.le = getelementptr inbounds i8, ptr %i.it, i64 %i.kx
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !54  ; 2 uses
  %i.lg = zext i8 %i.lf to i32                    ; 2 uses
  %i.lh = sub nsw i32 %i.ld, %i.lg                ; 2 uses
  %i.li = sub nsw i32 %i.la, %i.lg                ; 2 uses
  %i.lj = tail call i32 @llvm.abs.i32(i32 %i.lh, i1 true) ; 2 uses
  %i.lk = tail call i32 @llvm.abs.i32(i32 %i.li, i1 true) ; 2 uses
  %i.ll = add nsw i32 %i.lh, %i.li
  %i.lm = tail call i32 @llvm.abs.i32(i32 %i.ll, i1 true) ; 2 uses
  %.not.i = icmp samesign ugt i32 %i.lj, %i.lk
  %.not34.i = icmp samesign ugt i32 %i.lj, %i.lm
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not34.i
  %.not35.i = icmp samesign ugt i32 %i.lk, %i.lm
  %..i = select i1 %.not35.i, i8 %i.lf, i8 %i.lc
  %.0.i = select i1 %or.cond.i, i8 %..i, i8 %i.kz
  %i.ln = getelementptr inbounds nuw i8, ptr %i.is, i64 %indvars.iv.i
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !54
  %i.lp = sub i8 %i.lo, %.0.i
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ir, i64 %indvars.iv.i
  store i8 %i.lp, ptr %i.lq, align 1, !tbaa !54
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i54 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i54, label %sub_png_paeth_prediction.exit, label %.lr.ph.i53, !llvm.loop !176

bb.e:                                             ; preds = %bb.a
  unreachable

sub_png_paeth_prediction.exit:                    ; preds = %.lr.ph.i53, %.lr.ph65.prol.loopexit, %.lr.ph65, %middle.block131, %vec.epilog.middle.block147, %middle.block210, %vec.epilog.middle.block225, %.preheader, %._crit_edge, %bb.d, %sub_left_prediction.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

declare ptr @av_crc_get_table(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @av_crc(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @ff_deflate_end(ptr noundef) local_unnamed_addr #2

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

declare i32 @ff_get_encode_buffer(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_encode_reordered_opaque(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @av_packet_new_side_data(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @av_frame_alloc() local_unnamed_addr #2

declare i32 @av_frame_get_buffer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_frame_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_frame_replace(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.lrint.v4i64.v4f64(<4 x double>) #5
end_hunk_0
