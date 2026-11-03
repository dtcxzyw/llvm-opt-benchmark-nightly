Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_flip?download=true
inline.NumInlined: 22
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@distort_backtransform:bb.a
  store <16 x float> %interleaved.vec79, ptr %i.dm, align 4, !tbaa !57
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !167

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dg, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dh, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.split.split.preheader, label %vec.epilog.ph, !prof !60

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec80 = and i64 %i.dg, -4                    ; 3 uses
  %i.ds = shl i64 %n.vec80, 1
  %broadcast.splatinsert81 = insertelement <4 x float> poison, float %i.bo, i64 0
  %broadcast.splatinsert83 = insertelement <4 x float> poison, float %i.dd, i64 0
  %i.dt = shufflevector <4 x float> %broadcast.splatinsert81, <4 x float> %broadcast.splatinsert83, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index85 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next90, %vec.epilog.vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index85, 3
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %wide.vec86 = load <8 x float>, ptr %i.du, align 4, !tbaa !57
  %i.dv = shufflevector <8 x float> %wide.vec86, <8 x float> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %interleaved.vec89 = fsub reassoc nsz arcp contract afn <8 x float> %i.dt, %i.dv
  store <8 x float> %interleaved.vec89, ptr %i.du, align 4, !tbaa !57
  %index.next90 = add nuw i64 %index85, 4         ; 2 uses
  %i.dw = icmp eq i64 %index.next90, %n.vec80
  br i1 %i.dw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !168

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n91 = icmp eq i64 %i.dg, %n.vec80
  br i1 %cmp.n91, label %.loopexit, label %.lr.ph.split.split.split.preheader

.lr.ph.split.split.split.preheader:               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02832.ph = phi i64 [ 0, %iter.check ], [ %i.di, %vec.epilog.iter.check ], [ %i.ds, %vec.epilog.middle.block ]
  %i.dx = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.dy = insertelement <2 x float> %i.dx, float %i.bo, i64 1
  br label %.lr.ph.split.split.split

iter.check114:                                    ; preds = %.lr.ph.split.split
  br i1 %min.iters.check92, label %.lr.ph.split.split.split.us.preheader, label %vector.main.loop.iter.check93

vector.main.loop.iter.check93:                    ; preds = %iter.check114
  %min.iters.check94 = icmp ult i64 %i.de, 30
  br i1 %min.iters.check94, label %vec.epilog.ph118, label %vector.ph95

vector.ph95:                                      ; preds = %vector.main.loop.iter.check93
  %i.dz = and i64 %i.dg, 12
  %n.vec96 = and i64 %i.dg, -16                   ; 4 uses
  %i.ea = shl i64 %n.vec96, 1
  %broadcast.splatinsert97 = insertelement <8 x float> poison, float %i.bo, i64 0
  %broadcast.splat98 = shufflevector <8 x float> %broadcast.splatinsert97, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert99 = insertelement <8 x float> poison, float %i.dd, i64 0
  %broadcast.splat100 = shufflevector <8 x float> %broadcast.splatinsert99, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body101

vector.body101:                                   ; preds = %vector.ph95, %vector.body101
  %index102 = phi i64 [ 0, %vector.ph95 ], [ %index.next111, %vector.body101 ] ; 2 uses
  %i.eb = shl nuw i64 %index102, 1                ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.eb ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.eb
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 64 ; 2 uses
  %wide.vec103 = load <16 x float>, ptr %i.ec, align 4, !tbaa !57 ; 2 uses
  %strided.vec104 = shufflevector <16 x float> %wide.vec103, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec105 = shufflevector <16 x float> %wide.vec103, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec106 = load <16 x float>, ptr %i.ee, align 4, !tbaa !57 ; 2 uses
  %strided.vec107 = shufflevector <16 x float> %wide.vec106, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec108 = shufflevector <16 x float> %wide.vec106, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ef = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat98, %strided.vec104
  %i.eg = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat98, %strided.vec107
  %i.eh = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat100, %strided.vec105
  %i.ei = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat100, %strided.vec108
  %interleaved.vec109 = shufflevector <8 x float> %i.ef, <8 x float> %i.eh, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec109, ptr %i.ec, align 4, !tbaa !57
  %interleaved.vec110 = shufflevector <8 x float> %i.eg, <8 x float> %i.ei, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec110, ptr %i.ee, align 4, !tbaa !57
  %index.next111 = add nuw i64 %index102, 16      ; 2 uses
  %i.ej = icmp eq i64 %index.next111, %n.vec96
  br i1 %i.ej, label %middle.block112, label %vector.body101, !llvm.loop !169

middle.block112:                                  ; preds = %vector.body101
  %cmp.n113 = icmp eq i64 %i.dg, %n.vec96
  br i1 %cmp.n113, label %.loopexit, label %vec.epilog.iter.check115

vec.epilog.iter.check115:                         ; preds = %middle.block112
  %min.epilog.iters.check117 = icmp eq i64 %i.dz, 0
  br i1 %min.epilog.iters.check117, label %.lr.ph.split.split.split.us.preheader, label %vec.epilog.ph118, !prof !60

vec.epilog.ph118:                                 ; preds = %vector.main.loop.iter.check93, %vec.epilog.iter.check115
  %vec.epilog.resume.val119 = phi i64 [ %n.vec96, %vec.epilog.iter.check115 ], [ 0, %vector.main.loop.iter.check93 ]
  %n.vec120 = and i64 %i.dg, -4                   ; 3 uses
  %i.ek = shl i64 %n.vec120, 1
  %broadcast.splatinsert121 = insertelement <4 x float> poison, float %i.bo, i64 0
  %broadcast.splatinsert123 = insertelement <4 x float> poison, float %i.dd, i64 0
  %i.el = shufflevector <4 x float> %broadcast.splatinsert121, <4 x float> %broadcast.splatinsert123, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  br label %vec.epilog.vector.body125

vec.epilog.vector.body125:                        ; preds = %vec.epilog.vector.body125, %vec.epilog.ph118
  %index126 = phi i64 [ %vec.epilog.resume.val119, %vec.epilog.ph118 ], [ %index.next131, %vec.epilog.vector.body125 ] ; 2 uses
  %.idx301 = shl nuw i64 %index126, 3
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 %.idx301 ; 2 uses
  %wide.vec127 = load <8 x float>, ptr %i.em, align 4, !tbaa !57
  %interleaved.vec130 = fsub reassoc nsz arcp contract afn <8 x float> %i.el, %wide.vec127
  store <8 x float> %interleaved.vec130, ptr %i.em, align 4, !tbaa !57
  %index.next131 = add nuw i64 %index126, 4       ; 2 uses
  %i.en = icmp eq i64 %index.next131, %n.vec120
  br i1 %i.en, label %vec.epilog.middle.block132, label %vec.epilog.vector.body125, !llvm.loop !170

vec.epilog.middle.block132:                       ; preds = %vec.epilog.vector.body125
  %cmp.n133 = icmp eq i64 %i.dg, %n.vec120
  br i1 %cmp.n133, label %.loopexit, label %.lr.ph.split.split.split.us.preheader

.lr.ph.split.split.split.us.preheader:            ; preds = %iter.check114, %vec.epilog.iter.check115, %vec.epilog.middle.block132
  %.02832.us39.ph = phi i64 [ 0, %iter.check114 ], [ %i.ea, %vec.epilog.iter.check115 ], [ %i.ek, %vec.epilog.middle.block132 ]
  %i.eo = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.ep = insertelement <2 x float> %i.eo, float %i.dd, i64 1
  br label %.lr.ph.split.split.split.us

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split.split.us.preheader, %.lr.ph.split.split.split.us
  %.02832.us39 = phi i64 [ %i.et, %.lr.ph.split.split.split.us ], [ %.02832.us39.ph, %.lr.ph.split.split.split.us.preheader ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02832.us39 ; 2 uses
  %i.er = load <2 x float>, ptr %i.eq, align 4, !tbaa !57
  %i.es = fsub reassoc nsz arcp contract afn <2 x float> %i.ep, %i.er
  store <2 x float> %i.es, ptr %i.eq, align 4, !tbaa !57
  %i.et = add nuw i64 %.02832.us39, 2             ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.e
  br i1 %i.eu, label %.lr.ph.split.split.split.us, label %.loopexit, !llvm.loop !171

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split.split.preheader, %.lr.ph.split.split.split
  %.02832 = phi i64 [ %i.ez, %.lr.ph.split.split.split ], [ %.02832.ph, %.lr.ph.split.split.split.preheader ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02832 ; 2 uses
  %i.ew = load <2 x float>, ptr %i.ev, align 4, !tbaa !57
  %i.ex = fsub reassoc nsz arcp contract afn <2 x float> %i.dy, %i.ew
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ey, ptr %i.ev, align 4, !tbaa !57
  %i.ez = add nuw i64 %.02832, 2                  ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %i.e
  br i1 %i.fa, label %.lr.ph.split.split.split, label %.loopexit, !llvm.loop !172

.loopexit:                                        ; preds = %.lr.ph.split.split.split, %.lr.ph.split.split.split.us, %.lr.ph.split.split.us.split, %.lr.ph.split.split.us.split.us, %.lr.ph.split.us.split.split, %.lr.ph.split.us.split.split.us, %.lr.ph.split.us.split.us.split, %middle.block, %vec.epilog.middle.block, %middle.block112, %vec.epilog.middle.block132, %middle.block153, %vec.epilog.middle.block171, %middle.block192, %vec.epilog.middle.block210, %middle.block231, %vec.epilog.middle.block249, %middle.block282, %vec.epilog.middle.block298, %.lr.ph.split.us.split.us, %.preheader, %bb.a
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @distort_mask(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !63   ; 3 uses
  %i.e = shl nsw i32 %i.d, 2
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !64   ; 2 uses
  %i.h = load i32, ptr %i.b, align 4, !tbaa !56
  tail call void @dt_imageio_flip_buffers(ptr noundef %3, ptr noundef %2, i64 noundef 4, i32 noundef %i.d, i32 noundef %i.g, i32 noundef %i.d, i32 noundef %i.g, i32 noundef %i.e, i32 noundef %i.h) #21
  ret void
}

declare void @dt_imageio_flip_buffers(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @modify_roi_out(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 20)) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !65
  %i.c = load i32, ptr %i.b, align 4, !tbaa !56
  %i.d = and i32 %i.c, 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.f, ptr %i.g, align 4, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !63
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.i, ptr %i.j, align 4, !tbaa !64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @modify_roi_in(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 20)) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !65
  %i.c = load i32, ptr %2, align 4, !tbaa !173    ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !174  ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !63
  %i.h = add i32 %i.c, -1
  %i.i = add i32 %i.h, %i.g                       ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !64
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k                       ; 8 uses
  %i.n = load i32, ptr %i.b, align 4, !tbaa !56
  %.fr78 = freeze i32 %i.n                        ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.p = load i32, ptr %i.o, align 4, !tbaa !175
  %i.q = sitofp reassoc nsz arcp contract afn i32 %i.p to float
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load float, ptr %i.r, align 4, !tbaa !176 ; 2 uses
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, %i.q
  %i.u = fptosi float %i.t to i32                 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.w = load i32, ptr %i.v, align 8, !tbaa !177
  %i.x = sitofp reassoc nsz arcp contract afn i32 %i.w to float
  %i.y = fmul reassoc nsz arcp contract afn float %i.s, %i.x
  %i.z = fptosi float %i.y to i32                 ; 5 uses
  %i.aa = and i32 %.fr78, 4
  %.not.i = icmp eq i32 %i.aa, 0
  %i.ab = and i32 %.fr78, 2
  %.not20.i = icmp eq i32 %i.ab, 0                ; 3 uses
  %i.ac = and i32 %.fr78, 1
  %.not21.i = icmp eq i32 %i.ac, 0                ; 4 uses
  br i1 %.not.i, label %backtransform.exit.us.preheader.a, label %.split

backtransform.exit.us.preheader.a:                ; preds = %bb.a
  %4 = xor i32 %i.c, -1
  %5 = add i32 %i.u, %4
  %.sroa.029.0.us = select i1 %.not20.i, i32 %i.c, i32 %5 ; 2 uses
  %i.ad = xor i32 %i.e, -1
  %i.ae = add i32 %i.z, %i.ad
  %.sroa.5.0.us = select i1 %.not21.i, i32 %i.e, i32 %i.ae ; 2 uses
  %i.af = xor i32 %i.i, -1
  %i.ag = add i32 %i.u, %i.af
  %.sroa.029.0.us.1 = select i1 %.not20.i, i32 %i.i, i32 %i.ag ; 2 uses
  %..i.us.1 = tail call i32 @llvm.smin.i32(i32 %.sroa.029.0.us, i32 %.sroa.029.0.us.1)
  %i.ah = tail call i32 @llvm.smax.i32(i32 %.sroa.029.0.us, i32 %.sroa.029.0.us.1)
  %i.ai = xor i32 %i.m, -1
  %i.aj = add i32 %i.z, %i.ai
  %.sroa.5.0.us.2 = select i1 %.not21.i, i32 %i.m, i32 %i.aj ; 2 uses
  %i.ak = tail call i32 @llvm.smin.i32(i32 %.sroa.5.0.us, i32 %.sroa.5.0.us.2)
  %i.al = tail call i32 @llvm.smax.i32(i32 %.sroa.5.0.us, i32 %.sroa.5.0.us.2)
  br label %.split37.us

.split:                                           ; preds = %bb.a
  br i1 %.not20.i, label %.split.split.us, label %.split.split

.split.split.us:                                  ; preds = %.split
  br i1 %.not21.i, label %backtransform.exit.us41.us.preheader, label %backtransform.exit.us41.preheader

backtransform.exit.us41.preheader:                ; preds = %.split.split.us
  %i.am = xor i32 %i.c, -1
  %i.an = add i32 %i.u, %i.am                     ; 2 uses
  %i.ao = xor i32 %i.i, -1
  %i.ap = add i32 %i.u, %i.ao                     ; 2 uses
  %i.aq = tail call i32 @llvm.smin.i32(i32 %i.an, i32 %i.ap)
  %i.ar = tail call i32 @llvm.smax.i32(i32 %i.an, i32 %i.ap)
  %..i.us48.2 = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.m)
  %i.as = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %i.m)
  br label %.split37.us

backtransform.exit.us41.us.preheader:             ; preds = %.split.split.us
  %i.at = tail call i32 @llvm.smin.i32(i32 %i.c, i32 %i.i)
  %i.au = tail call i32 @llvm.smax.i32(i32 %i.c, i32 %i.i)
  %..i.us48.us.2 = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.m)
  %i.av = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %i.m)
  br label %.split37.us

.split.split:                                     ; preds = %.split
  %i.aw = xor i32 %i.e, -1
  %i.ax = add i32 %i.z, %i.aw                     ; 4 uses
  br i1 %.not21.i, label %backtransform.exit.us57.preheader, label %backtransform.exit.preheader

backtransform.exit.preheader:                     ; preds = %.split.split
  %i.ay = xor i32 %i.c, -1
  %i.az = add i32 %i.u, %i.ay                     ; 2 uses
  %i.ba = xor i32 %i.i, -1
  %i.bb = add i32 %i.u, %i.ba                     ; 2 uses
  %i.bc = tail call i32 @llvm.smin.i32(i32 %i.az, i32 %i.bb)
  %i.bd = tail call i32 @llvm.smax.i32(i32 %i.az, i32 %i.bb)
  %i.be = xor i32 %i.m, -1
  %i.bf = add i32 %i.z, %i.be                     ; 2 uses
  %..i.2 = tail call i32 @llvm.smin.i32(i32 %i.ax, i32 %i.bf)
  %i.bg = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 %i.bf)
  br label %.split37.us

backtransform.exit.us57.preheader:                ; preds = %.split.split
  %i.bh = tail call i32 @llvm.smin.i32(i32 %i.c, i32 %i.i)
  %i.bi = tail call i32 @llvm.smax.i32(i32 %i.c, i32 %i.i)
  %i.bj = xor i32 %i.m, -1
  %i.bk = add i32 %i.z, %i.bj                     ; 2 uses
  %..i.us64.2 = tail call i32 @llvm.smin.i32(i32 %i.ax, i32 %i.bk)
  %i.bl = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 %i.bk)
  br label %.split37.us

.split37.us:                                      ; preds = %backtransform.exit.preheader, %backtransform.exit.us57.preheader, %backtransform.exit.us41.preheader, %backtransform.exit.us41.us.preheader, %backtransform.exit.us.preheader.a
  %.us-phi = phi i32 [ %i.bi, %backtransform.exit.us57.preheader ], [ %i.au, %backtransform.exit.us41.us.preheader ], [ %i.al, %backtransform.exit.us.preheader.a ], [ %i.ar, %backtransform.exit.us41.preheader ], [ %i.bd, %backtransform.exit.preheader ]
  %.us-phi38 = phi i32 [ %i.bl, %backtransform.exit.us57.preheader ], [ %i.av, %backtransform.exit.us41.us.preheader ], [ %i.ah, %backtransform.exit.us.preheader.a ], [ %i.as, %backtransform.exit.us41.preheader ], [ %i.bg, %backtransform.exit.preheader ]
  %.us-phi39 = phi i32 [ %i.bh, %backtransform.exit.us57.preheader ], [ %i.at, %backtransform.exit.us41.us.preheader ], [ %i.ak, %backtransform.exit.us.preheader.a ], [ %i.aq, %backtransform.exit.us41.preheader ], [ %i.bc, %backtransform.exit.preheader ] ; 2 uses
  %.us-phi40 = phi i32 [ %..i.us64.2, %backtransform.exit.us57.preheader ], [ %..i.us48.us.2, %backtransform.exit.us41.us.preheader ], [ %..i.us.1, %backtransform.exit.us.preheader.a ], [ %..i.us48.2, %backtransform.exit.us41.preheader ], [ %..i.2, %backtransform.exit.preheader ] ; 2 uses
  store i32 %.us-phi40, ptr %3, align 4, !tbaa !173
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.us-phi39, ptr %i.bm, align 4, !tbaa !174
  %i.bn = add i32 %.us-phi38, 1
  %i.bo = sub i32 %i.bn, %.us-phi40
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !63
  %i.bq = add i32 %.us-phi, 1
  %i.br = sub i32 %i.bq, %.us-phi39
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !64
  ret void
}

; Function Attrs: nounwind uwtable
define void @process(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.d = load i32, ptr %i.c, align 4, !tbaa !178
  %i.e = shl i32 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !63   ; 3 uses
  %i.h = mul nsw i32 %i.e, %i.g
  %i.i = sext i32 %i.e to i64
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !64   ; 2 uses
  %i.l = load i32, ptr %i.b, align 4, !tbaa !56
  tail call void @dt_imageio_flip_buffers(ptr noundef %3, ptr noundef %2, i64 noundef %i.i, i32 noundef %i.g, i32 noundef %i.k, i32 noundef %i.g, i32 noundef %i.k, i32 noundef %i.h, i32 noundef %i.l) #21
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #22 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !69
  store i32 -999, ptr %i.a, align 4, !tbaa !180
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
  tail call void @free(ptr noundef %i.b) #21
  store ptr null, ptr %i.a, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !54  ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !56     ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.g = getelementptr i8, ptr %i.f, i64 116
  %.val = load i32, ptr %i.g, align 4, !tbaa !44  ; 2 uses
  %.not.i = icmp eq i32 %.val, -1
  br i1 %.not.i, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !56
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge = phi i32 [ %.val, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  store i32 %storemerge, ptr %i.b, align 4, !tbaa !56
  %i.h = icmp eq i32 %storemerge, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.i, align 16, !tbaa !181
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #22
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !54
  tail call void @free(ptr noundef %i.b) #21
  store ptr null, ptr %i.a, align 16, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_presets(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.dt_iop_flip_params_t, align 4 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !107
  tail call void @dt_database_start_transaction(ptr noundef %i.a) #21
  store i32 -1, ptr %1, align 4, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !182
  %i.e = tail call i32 (...) %i.d() #21
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.b, i32 noundef %i.e, ptr noundef nonnull %1, i32 noundef 4, i32 noundef 1, i32 noundef 0) #21
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !182
  %i.g = call i32 (...) %i.f() #21
  call void @dt_gui_presets_update_autoapply(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.b, i32 noundef %i.g, i32 noundef 1) #21
  store i32 0, ptr %1, align 4, !tbaa !56
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !182
  %i.i = call i32 (...) %i.h() #21
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.b, i32 noundef %i.i, ptr noundef nonnull %1, i32 noundef 4, i32 noundef 1, i32 noundef 0) #21
  store i32 2, ptr %1, align 4, !tbaa !56
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !182
  %i.k = call i32 (...) %i.j() #21
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.10, ptr noundef nonnull %i.b, i32 noundef %i.k, ptr noundef nonnull %1, i32 noundef 4, i32 noundef 1, i32 noundef 0) #21
  store i32 1, ptr %1, align 4, !tbaa !56
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !182
  %i.m = call i32 (...) %i.l() #21
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.b, i32 noundef %i.m, ptr noundef nonnull %1, i32 noundef 4, i32 noundef 1, i32 noundef 0) #21
  store i32 5, ptr %1, align 4, !tbaa !56
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !182
  %i.o = call i32 (...) %i.n() #21
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.b, i32 noundef %i.o, ptr noundef nonnull %1, i32 noundef 4, i32 noundef 1, i32 noundef 0) #21
  store i32 6, ptr %1, align 4, !tbaa !56
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !182
  %i.q = call i32 (...) %i.p() #21
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.13, ptr noundef nonnull %i.b, i32 noundef %i.q, ptr noundef nonnull %1, i32 noundef 4, i32 noundef 1, i32 noundef 0) #21
  store i32 3, ptr %1, align 4, !tbaa !56
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !182
  %i.s = call i32 (...) %i.r() #21
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.b, i32 noundef %i.s, ptr noundef nonnull %1, i32 noundef 4, i32 noundef 1, i32 noundef 0) #21
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !107
  call void @dt_database_release_transaction(ptr noundef %i.t) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void
}

declare void @dt_database_start_transaction(ptr noundef) local_unnamed_addr #3

declare void @dt_gui_presets_add_generic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_gui_presets_update_autoapply(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_database_release_transaction(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @reload_defaults(ptr nofree noundef captures(none) initializes((676, 680)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !183 ; 2 uses
  store i32 -1, ptr %i.c, align 4, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 676
  store i32 1, ptr %i.d, align 4, !tbaa !184
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1784
  %i.h = load i32, ptr %i.g, align 8
  %i.i = lshr i32 %i.h, 24
  %.off = add nsw i32 %i.i, -1
  %switch = icmp ult i32 %.off, 254
  br i1 %switch, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !185
  %i.k = and i32 %i.j, 256
  %.not11 = icmp eq i32 %i.k, 0
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 497, ptr noundef nonnull @__FUNCTION__.reload_defaults, ptr noundef nonnull @.str.17) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !107
  %i.m = tail call ptr @dt_database_get(ptr noundef %i.l) #21
  %i.n = call i32 @sqlite3_prepare_v2(ptr noundef %i.m, ptr noundef nonnull @.str.17, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #21
  %.not12 = icmp eq i32 %i.n, 0
  br i1 %.not12, label %bb.f, label %bb.e
end_hunk_0
