Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/imageop_math?download=true
inline.NumInlined: 19
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 45
begin_hunk_0_@dt_iop_clip_and_zoom_mosaic_half_size:.preheader130
  %i.lm = freeze <16 x i16> %wide.vec237
  %i.ln = bitcast <16 x i16> %i.lm to <8 x i32>
  %i.lo = and <8 x i32> %i.ln, splat (i32 65535)
  %wide.vec239 = load <16 x i16>, ptr %i.lf, align 2, !tbaa !20
  %i.lp = freeze <16 x i16> %wide.vec239
  %i.lq = bitcast <16 x i16> %i.lp to <8 x i32>
  %i.lr = and <8 x i32> %i.lq, splat (i32 65535)
  %i.ls = add <8 x i32> %i.kq, %i.li              ; 2 uses
  %i.lt = add <8 x i32> %i.kr, %i.ll              ; 2 uses
  %i.lu = add <8 x i32> %i.ks, %i.lo              ; 2 uses
  %i.lv = add <8 x i32> %i.kt, %i.lr              ; 2 uses
  %i.lw = add <8 x i32> %vec.phi223, splat (i32 2) ; 2 uses
  %i.lx = add <8 x i32> %vec.phi224, splat (i32 2) ; 2 uses
  %i.ly = add <8 x i32> %vec.phi225, splat (i32 2) ; 2 uses
  %i.lz = add <8 x i32> %vec.phi226, splat (i32 2) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ma = icmp eq i64 %index.next, %n.vec
  br i1 %i.ma, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !32

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx243 = add <8 x i32> %i.lx, %i.lw
  %bin.rdx244 = add <8 x i32> %i.ly, %bin.rdx243
  %bin.rdx245 = add <8 x i32> %i.lz, %bin.rdx244
  %i.mb = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx245) ; 2 uses
  %bin.rdx = add <8 x i32> %i.lt, %i.ls
  %bin.rdx241 = add <8 x i32> %i.lu, %bin.rdx
  %bin.rdx242 = add <8 x i32> %i.lv, %bin.rdx241
  %i.mc = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx242) ; 2 uses
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.mc, %vec.epilog.iter.check ], [ %.0100141.us.us.us.us, %vector.main.loop.iter.check ]
  %bc.merge.rdx246 = phi i32 [ %i.mb, %vec.epilog.iter.check ], [ %.0101140.us.us.us.us, %vector.main.loop.iter.check ]
  %i.md = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %i.me = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx246, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index248 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next255, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi249 = phi <8 x i32> [ %i.md, %vec.epilog.ph ], [ %i.mu, %vec.epilog.vector.body ]
  %vec.phi250 = phi <8 x i32> [ %i.me, %vec.epilog.ph ], [ %i.mv, %vec.epilog.vector.body ]
  %index248.tr = trunc i64 %index248 to i32
  %i.mf = shl i32 %index248.tr, 1
  %i.mg = add i32 %i.mf, %i.cn                    ; 2 uses
  %i.mh = add i32 %invariant.op.us.us.us.us, %i.mg
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr inbounds [2 x i8], ptr %1, i64 %i.mi
  %wide.vec251 = load <16 x i16>, ptr %i.mj, align 2, !tbaa !20
  %i.mk = freeze <16 x i16> %wide.vec251
  %i.ml = bitcast <16 x i16> %i.mk to <8 x i32>
  %i.mm = and <8 x i32> %i.ml, splat (i32 65535)
  %i.mn = add <8 x i32> %vec.phi249, %i.mm
  %i.mo = add i32 %invariant.op138.us.us.us.us, %i.mg
  %i.mp = sext i32 %i.mo to i64
  %i.mq = getelementptr inbounds [2 x i8], ptr %1, i64 %i.mp
  %wide.vec253 = load <16 x i16>, ptr %i.mq, align 2, !tbaa !20
  %i.mr = freeze <16 x i16> %wide.vec253
  %i.ms = bitcast <16 x i16> %i.mr to <8 x i32>
  %i.mt = and <8 x i32> %i.ms, splat (i32 65535)
  %i.mu = add <8 x i32> %i.mn, %i.mt              ; 2 uses
  %i.mv = add <8 x i32> %vec.phi250, splat (i32 2) ; 2 uses
  %index.next255 = add nuw i64 %index248, 8       ; 2 uses
  %i.mw = icmp eq i64 %index.next255, %n.vec247
  br i1 %i.mw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !33

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.mx = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.mu)
  %i.my = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.mv)
  br label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv189.ph = phi i64 [ %i.ih, %iter.check ], [ %i.ih, %vector.scevcheck ], [ %i.iw, %vec.epilog.iter.check ], [ %i.jb, %vec.epilog.middle.block ]
  %.1134.us.us.us.us.us.ph = phi i32 [ %.0100141.us.us.us.us, %iter.check ], [ %.0100141.us.us.us.us, %vector.scevcheck ], [ %i.mc, %vec.epilog.iter.check ], [ %i.mx, %vec.epilog.middle.block ]
  %.1102133.us.us.us.us.us.ph = phi i32 [ %.0101140.us.us.us.us, %iter.check ], [ %.0101140.us.us.us.us, %vector.scevcheck ], [ %i.mb, %vec.epilog.iter.check ], [ %i.my, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv189 = phi i64 [ %indvars.iv.next190, %vec.epilog.scalar.ph ], [ %indvars.iv189.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.1134.us.us.us.us.us = phi i32 [ %i.nj, %vec.epilog.scalar.ph ], [ %.1134.us.us.us.us.us.ph, %vec.epilog.scalar.ph.preheader ]
  %.1102133.us.us.us.us.us = phi i32 [ %i.nk, %vec.epilog.scalar.ph ], [ %.1102133.us.us.us.us.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.mz = trunc nsw i64 %indvars.iv189 to i32     ; 2 uses
  %.reass.us.us.us.us.us = add i32 %invariant.op.us.us.us.us, %i.mz
  %i.na = sext i32 %.reass.us.us.us.us.us to i64
  %i.nb = getelementptr inbounds [2 x i8], ptr %1, i64 %i.na
  %i.nc = load i16, ptr %i.nb, align 2, !tbaa !20
  %i.nd = zext i16 %i.nc to i32
  %i.ne = add i32 %.1134.us.us.us.us.us, %i.nd
  %.reass139.us.us.us.us = add i32 %invariant.op138.us.us.us.us, %i.mz
  %i.nf = sext i32 %.reass139.us.us.us.us to i64
  %i.ng = getelementptr inbounds [2 x i8], ptr %1, i64 %i.nf
  %i.nh = load i16, ptr %i.ng, align 2, !tbaa !20
  %i.ni = zext i16 %i.nh to i32
  %i.nj = add i32 %i.ne, %i.ni                    ; 3 uses
  %i.nk = add nsw i32 %.1102133.us.us.us.us.us, 2 ; 3 uses
  %indvars.iv.next190 = add nsw i64 %indvars.iv189, 2 ; 2 uses
  %i.nl = icmp slt i64 %indvars.iv.next190, %i.ii
  br i1 %i.nl, label %vec.epilog.scalar.ph, label %._crit_edge.split.us.us.us.us.us, !llvm.loop !34

._crit_edge.split.us.us.us.us.us:                 ; preds = %vec.epilog.scalar.ph
  %i.nm = add nsw i32 %.099142.us.us.us.us, 2     ; 2 uses
  %i.nn = icmp slt i32 %i.nm, %i.cc
  %indvar.next = add i32 %indvar, 1
  br i1 %i.nn, label %iter.check, label %._crit_edge143.us.us

._crit_edge143.us.us:                             ; preds = %._crit_edge.split.us151.us.us, %._crit_edge.split.us.us.us.us.us
  %.us-phi154.us.us = phi i32 [ %i.nk, %._crit_edge.split.us.us.us.us.us ], [ %i.ec, %._crit_edge.split.us151.us.us ] ; 2 uses
  %.us-phi155.us.us = phi i32 [ %i.nj, %._crit_edge.split.us.us.us.us.us ], [ %.lcssa327, %._crit_edge.split.us151.us.us ]
  %.not124.us.us = icmp eq i32 %.us-phi154.us.us, 0
  br i1 %.not124.us.us, label %._crit_edge143.us.us.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge143.us.us
  %i.no = udiv i32 %.us-phi155.us.us, %.us-phi154.us.us
  %i.np = trunc i32 %i.no to i16
  store i16 %i.np, ptr %.0106157.us.us, align 2, !tbaa !20
  br label %._crit_edge143.us.us.thread

._crit_edge143.us.us.thread:                      ; preds = %.preheader.lr.ph.us.us, %bb.d, %._crit_edge143.us.us
  %i.nq = add nuw nsw i32 %.0104159.us.us, 1      ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.0106157.us.us, i64 2
  %exitcond192.not = icmp eq i32 %i.nq, %i.bd
  br i1 %exitcond192.not, label %._crit_edge.us, label %.lr.ph.split.us.us

._crit_edge.us:                                   ; preds = %._crit_edge143.us.us.thread, %.lr.ph.us
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 2 uses
  %exitcond196.not = icmp eq i64 %indvars.iv.next194, %wide.trip.count
  br i1 %exitcond196.not, label %._crit_edge175, label %bb.a

._crit_edge175:                                   ; preds = %._crit_edge.us, %.lr.ph174, %.preheader130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @dt_iop_clip_and_zoom_mosaic_half_size_f(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load float, ptr %i.b, align 4, !tbaa !18
  %i.d = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.c ; 3 uses
  %i.e = and i32 %6, 12
  %.not = icmp ne i32 %i.e, 4                     ; 2 uses
  %i.f = select i1 %.not, i32 12, i32 3
  %i.g = and i32 %i.f, %6
  %.not440 = icmp ne i32 %i.g, 0                  ; 4 uses
  %.1450 = xor i1 %.not, %.not440
  %.1 = zext i1 %.1450 to i32                     ; 3 uses
  %.0428 = zext i1 %.not440 to i32                ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph505, label %._crit_edge506.split

.lr.ph505:                                        ; preds = %bb.a
  %i.k = fmul reassoc nsz arcp contract afn float %i.d, 5.000000e-01
  %i.l = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.k)
  %i.m = fptosi float %i.l to i32                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16   ; 2 uses
  %i.p = and i32 %i.o, -2
  %i.q = add i32 %i.p, -6
  %i.r = add i32 %i.o, -5
  %i.s = and i32 %i.r, -2                         ; 2 uses
  %i.t = or disjoint i32 %i.s, %.0428             ; 2 uses
  %i.u = shl i32 %i.m, 1                          ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !15   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = add nsw i32 %i.m, 1                      ; 3 uses
  %i.z = sitofp reassoc nsz arcp contract afn i32 %i.y to float ; 2 uses
  %i.aa = mul nsw i32 %i.y, %i.y
  %i.ab = uitofp nsz nneg i32 %i.aa to float
  br i1 %i.x, label %.lr.ph505.split, label %._crit_edge506.split

.lr.ph505.split:                                  ; preds = %.lr.ph505
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !15 ; 2 uses
  %i.ae = and i32 %i.ad, -2
  %i.af = add nsw i32 %i.ae, -6
  %i.ag = add nsw i32 %i.ad, -5
  %i.ah = and i32 %i.ag, -2
  %i.ai = or disjoint i32 %i.ah, %.1              ; 2 uses
  %i.aj = select i1 %.not440, i32 3, i32 2
  %i.ak = sext i32 %5 to i64                      ; 8 uses
  %i.al = sext i32 %4 to i64
  %i.am = zext i1 %.not440 to i64
  %wide.trip.count = zext nneg i32 %i.i to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 7 uses
  %i.aq = or disjoint i32 %i.u, %.0428
  %i.ar = or disjoint i32 %i.s, %.0428            ; 3 uses
  %ident.check1312.not = icmp eq i32 %5, 1
  %ident.check924.not = icmp eq i32 %5, 1
  %ident.check.not = icmp eq i32 %5, 1
  br label %.lr.ph501

._crit_edge506.split:                             ; preds = %._crit_edge502, %.lr.ph505, %bb.a
  ret void

.lr.ph501:                                        ; preds = %.lr.ph505.split, %._crit_edge502
  %indvars.iv566 = phi i64 [ 0, %.lr.ph505.split ], [ %indvars.iv.next567, %._crit_edge502 ] ; 4 uses
  %i.as = mul nsw i64 %indvars.iv566, %i.al
  %i.at = getelementptr inbounds [4 x i8], ptr %0, i64 %i.as
  %i.au = trunc nuw nsw i64 %indvars.iv566 to i32
  %i.av = uitofp nsz nneg i32 %i.au to float
  %i.aw = fmul reassoc nsz arcp contract afn float %i.d, %i.av ; 2 uses
  %i.ax = fptosi float %i.aw to i32
  %i.ay = and i32 %i.ax, -2                       ; 2 uses
  %i.az = sitofp reassoc nsz arcp contract afn i32 %i.ay to float
  %i.ba = fsub reassoc nsz arcp contract afn float %i.aw, %i.az
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ba, 5.000000e-01 ; 17 uses
  %. = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.ay) ; 3 uses
  %i.bc = or disjoint i32 %., %.0428              ; 5 uses
  %i.bd = add nsw i32 %i.bc, %i.u                 ; 2 uses
  %i.be = tail call i32 @llvm.umin.i32(i32 %i.t, i32 %i.bd) ; 5 uses
  %i.bf = mul nsw i32 %i.bc, %5                   ; 7 uses
  %i.bg = add nsw i32 %i.bc, 1
  %i.bh = mul nsw i32 %i.bg, %5                   ; 7 uses
  %i.bi = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bb ; 9 uses
  %i.bj = add nsw i32 %i.bc, 2
  %.not441458 = icmp sgt i32 %i.bj, %i.be         ; 4 uses
  %i.bk = icmp ule i32 %i.bd, %i.t                ; 2 uses
  %i.bl = sub nsw i32 %i.be, %i.bc
  %i.bm = sdiv i32 %i.bl, 2
  %i.bn = add nsw i32 %i.bm, 1
  %i.bo = sitofp reassoc nsz arcp contract afn i32 %i.bn to float
  %i.bp = fsub reassoc nsz arcp contract afn float %i.bo, %i.bb ; 2 uses
  %i.bq = add nsw i32 %i.be, 2
  %i.br = mul nsw i32 %i.bq, %5                   ; 7 uses
  %i.bs = add nsw i32 %i.be, 3
  %i.bt = mul nsw i32 %i.bs, %5                   ; 7 uses
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bp, %i.z
  %i.bv = add nuw nsw i64 %indvars.iv566, %i.am
  %.tr = trunc nuw i64 %i.bv to i32
  %i.bw = shl nuw i32 %.tr, 1
  %i.bx = and i32 %i.bw, 2
  %i.by = add i32 %i.aj, %.
  %i.bz = sext i32 %i.by to i64                   ; 20 uses
  %i.ca = sext i32 %i.be to i64                   ; 4 uses
  %i.cb = sext i32 %i.bf to i64                   ; 2 uses
  %i.cc = sext i32 %i.bh to i64                   ; 2 uses
  %i.cd = sext i32 %i.br to i64                   ; 4 uses
  %i.ce = sext i32 %i.bt to i64                   ; 4 uses
  %invariant.gep670 = getelementptr [4 x i8], ptr %1, i64 %i.cb ; 6 uses
  %invariant.gep672 = getelementptr [4 x i8], ptr %1, i64 %i.cb
  %invariant.gep674 = getelementptr [4 x i8], ptr %1, i64 %i.cc ; 6 uses
  %invariant.gep676 = getelementptr [4 x i8], ptr %1, i64 %i.cc
  %invariant.gep694 = getelementptr [4 x i8], ptr %1, i64 %i.cd ; 6 uses
  %invariant.gep696 = getelementptr [4 x i8], ptr %1, i64 %i.cd
  %invariant.gep698 = getelementptr [4 x i8], ptr %1, i64 %i.ce ; 6 uses
  %invariant.gep700 = getelementptr [4 x i8], ptr %1, i64 %i.ce
  %invariant.gep718 = getelementptr [4 x i8], ptr %1, i64 %i.cd ; 6 uses
  %invariant.gep720 = getelementptr [4 x i8], ptr %1, i64 %i.cd
  %invariant.gep722 = getelementptr [4 x i8], ptr %1, i64 %i.ce ; 6 uses
  %invariant.gep724 = getelementptr [4 x i8], ptr %1, i64 %i.ce
  %i.cf = add nsw i64 %i.bz, 2                    ; 3 uses
  %i.cg = add i32 %i.aq, %.                       ; 3 uses
  %umin = tail call i32 @llvm.umin.i32(i32 %i.cg, i32 %i.ar)
  %7 = sext i32 %umin to i64
  %8 = add nsw i64 %7, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.cf, i64 %8)
  %9 = xor i64 %i.bz, -1
  %10 = add i64 %smax, %9                         ; 3 uses
  %11 = lshr i64 %10, 1
  %12 = add nuw i64 %11, 1                        ; 5 uses
  %umin925 = tail call i32 @llvm.umin.i32(i32 %i.cg, i32 %i.ar)
  %13 = sext i32 %umin925 to i64
  %14 = add nsw i64 %13, 1
  %smax926 = tail call i64 @llvm.smax.i64(i64 %i.cf, i64 %14)
  %15 = xor i64 %i.bz, -1
  %16 = add i64 %smax926, %15                     ; 3 uses
  %17 = lshr i64 %16, 1
  %18 = add nuw i64 %17, 1                        ; 5 uses
  %umin1313 = tail call i32 @llvm.umin.i32(i32 %i.cg, i32 %i.ar)
  %i.ch = sext i32 %umin1313 to i64
  %i.ci = add nsw i64 %i.ch, 1
  %smax1314 = tail call i64 @llvm.smax.i64(i64 %i.cf, i64 %i.ci)
  %i.cj = xor i64 %i.bz, -1
  %i.ck = add i64 %smax1314, %i.cj                ; 3 uses
  %i.cl = lshr i64 %i.ck, 1
  %i.cm = add nuw i64 %i.cl, 1                    ; 5 uses
  %min.iters.check1315 = icmp ugt i64 %i.ck, 5
  %or.cond1412 = and i1 %min.iters.check1315, %ident.check1312.not
  %min.iters.check1317 = icmp ult i64 %i.ck, 62
  %i.cn = and i64 %i.cm, 28
  %n.vec1319 = and i64 %i.cm, -32                 ; 4 uses
  %i.co = shl i64 %n.vec1319, 1
  %i.cp = add i64 %i.co, %i.bz
  %cmp.n1378 = icmp eq i64 %i.cm, %n.vec1319
  %min.epilog.iters.check1387 = icmp eq i64 %i.cn, 0
  %n.vec1389 = and i64 %i.cm, -4                  ; 3 uses
  %i.cq = shl i64 %n.vec1389, 1
  %i.cr = add i64 %i.cq, %i.bz
  %cmp.n1406 = icmp eq i64 %i.cm, %n.vec1389
  %broadcast.splatinsert1219 = insertelement <8 x float> poison, float %i.bi, i64 0
  %broadcast.splat1220 = shufflevector <8 x float> %broadcast.splatinsert1219, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  %broadcast.splatinsert1289 = insertelement <4 x float> poison, float %i.bi, i64 0
  %broadcast.splat1290 = shufflevector <4 x float> %broadcast.splatinsert1289, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1029 = insertelement <8 x float> poison, float %i.bb, i64 0
  %broadcast.splat1030 = shufflevector <8 x float> %broadcast.splatinsert1029, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  %broadcast.splatinsert1099 = insertelement <4 x float> poison, float %i.bb, i64 0
  %broadcast.splat1100 = shufflevector <4 x float> %broadcast.splatinsert1099, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %min.iters.check927.a = icmp ugt i64 %16, 5
  %or.cond1414 = and i1 %min.iters.check927.a, %ident.check924.not
  %min.iters.check929 = icmp ult i64 %16, 62
  %i.cs = and i64 %18, 28
  %n.vec931 = and i64 %18, -32                    ; 4 uses
  %i.ct = shl i64 %n.vec931, 1
  %i.cu = add i64 %i.ct, %i.bz
  %cmp.n990 = icmp eq i64 %18, %n.vec931
  %min.epilog.iters.check999 = icmp eq i64 %i.cs, 0
  %n.vec1001 = and i64 %18, -4                    ; 3 uses
  %i.cv = shl i64 %n.vec1001, 1
  %i.cw = add i64 %i.cv, %i.bz
  %cmp.n1018 = icmp eq i64 %18, %n.vec1001
  %min.iters.check826 = icmp ugt i64 %10, 5
  %or.cond1413 = and i1 %min.iters.check826, %ident.check.not
  %min.iters.check828 = icmp ult i64 %10, 62
  %i.cx = and i64 %12, 28
  %n.vec830 = and i64 %12, -32                    ; 4 uses
  %i.cy = shl i64 %n.vec830, 1
  %i.cz = add i64 %i.cy, %i.bz
  %cmp.n889 = icmp eq i64 %12, %n.vec830
  %min.epilog.iters.check898 = icmp eq i64 %i.cx, 0
  %n.vec900 = and i64 %12, -4                     ; 3 uses
  %i.da = shl i64 %n.vec900, 1
  %i.db = add i64 %i.da, %i.bz
  %cmp.n917 = icmp eq i64 %12, %n.vec900
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.bb, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  %broadcast.splatinsert806 = insertelement <4 x float> poison, float %i.bb, i64 0
  %broadcast.splat807 = shufflevector <4 x float> %broadcast.splatinsert806, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %bb.b

._crit_edge502:                                   ; preds = %bb.h
  %indvars.iv.next567 = add nuw nsw i64 %indvars.iv566, 1 ; 2 uses
  %exitcond569.not = icmp eq i64 %indvars.iv.next567, %wide.trip.count
  br i1 %exitcond569.not, label %._crit_edge506.split, label %.lr.ph501

bb.b:                                             ; preds = %.lr.ph501, %bb.h
  %.0425499 = phi i32 [ 0, %.lr.ph501 ], [ %i.alc, %bb.h ] ; 3 uses
  %.0426498 = phi ptr [ %i.at, %.lr.ph501 ], [ %i.alb, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.dc = uitofp nsz nneg i32 %.0425499 to float
  %i.dd = fmul reassoc nsz arcp contract afn float %i.d, %i.dc ; 2 uses
  %i.de = fptosi float %i.dd to i32
  %i.df = and i32 %i.de, -2                       ; 2 uses
  %i.dg = sitofp reassoc nsz arcp contract afn i32 %i.df to float
  %i.dh = fsub reassoc nsz arcp contract afn float %i.dd, %i.dg
  %i.di = fmul reassoc nsz arcp contract afn float %i.dh, 5.000000e-01 ; 18 uses
  %.449 = tail call i32 @llvm.umin.i32(i32 %i.af, i32 %i.df)
  %i.dj = or disjoint i32 %.449, %.1              ; 12 uses
  %i.dk = add nsw i32 %i.dj, %i.bf
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dl
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !17
  %i.do = add nsw i32 %i.dj, 1                    ; 7 uses
  %i.dp = add nsw i32 %i.do, %i.bf
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !17
  %i.dt = add nsw i32 %i.dj, %i.bh
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %1, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !17
  %i.dx = add nsw i32 %i.do, %i.bh
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dy
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !17
  %i.eb = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.di ; 9 uses
  %i.ec = fmul reassoc nsz arcp contract afn float %i.eb, %i.bi ; 4 uses
  %i.ed = fmul reassoc nsz arcp contract afn float %i.ec, %i.dn ; 5 uses
  store float %i.ed, ptr %i.a, align 16, !tbaa !17
  %i.ee = fmul reassoc nsz arcp contract afn float %i.ec, %i.ds ; 5 uses
  store float %i.ee, ptr %i.an, align 4, !tbaa !17
  %i.ef = fmul reassoc nsz arcp contract afn float %i.ec, %i.dw ; 5 uses
  store float %i.ef, ptr %i.ao, align 8, !tbaa !17
  %i.eg = fmul reassoc nsz arcp contract afn float %i.ec, %i.ea ; 5 uses
  store float %i.eg, ptr %i.ap, align 4, !tbaa !17
  %i.eh = add nsw i32 %i.dj, %i.u                 ; 2 uses
  %i.ei = tail call i32 @llvm.umin.i32(i32 %i.ai, i32 %i.eh) ; 11 uses
  br i1 %.not441458, label %._crit_edge, label %iter.check1384

iter.check1384:                                   ; preds = %bb.b
  %i.ej = sext i32 %i.dj to i64                   ; 2 uses
  %i.ek = sext i32 %i.do to i64                   ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.ej ; 6 uses
  %invariant.gep660 = getelementptr [4 x i8], ptr %1, i64 %i.ek ; 6 uses
  %invariant.gep662 = getelementptr [4 x i8], ptr %1, i64 %i.ej
  %invariant.gep664 = getelementptr [4 x i8], ptr %1, i64 %i.ek
  br i1 %or.cond1412, label %vector.main.loop.iter.check1316, label %vec.epilog.scalar.ph1385.preheader

vector.main.loop.iter.check1316:                  ; preds = %iter.check1384
  br i1 %min.iters.check1317, label %vec.epilog.ph1388, label %vector.ph1318

vector.ph1318:                                    ; preds = %vector.main.loop.iter.check1316
  %i.el = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.eg, i64 0
  %i.em = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ef, i64 0
  %i.en = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ee, i64 0
  %i.eo = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ed, i64 0
  %broadcast.splatinsert1320 = insertelement <8 x float> poison, float %i.eb, i64 0
  %broadcast.splat1321 = shufflevector <8 x float> %broadcast.splatinsert1320, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  br label %vector.body1322

vector.body1322:                                  ; preds = %vector.ph1318, %vector.body1322
  %index1323 = phi i64 [ 0, %vector.ph1318 ], [ %index.next1364, %vector.body1322 ] ; 2 uses
  %vec.phi1324.a = phi <8 x float> [ %i.el, %vector.ph1318 ], [ %i.ge, %vector.body1322 ]
  %vec.phi1325.a = phi <8 x float> [ zeroinitializer, %vector.ph1318 ], [ %i.gf, %vector.body1322 ]
  %vec.phi1326.a = phi <8 x float> [ zeroinitializer, %vector.ph1318 ], [ %i.gg, %vector.body1322 ]
  %vec.phi1327.a = phi <8 x float> [ zeroinitializer, %vector.ph1318 ], [ %i.gh, %vector.body1322 ]
  %vec.phi1328.a = phi <8 x float> [ %i.em, %vector.ph1318 ], [ %i.fw, %vector.body1322 ]
  %vec.phi1329.a = phi <8 x float> [ zeroinitializer, %vector.ph1318 ], [ %i.fx, %vector.body1322 ]
  %vec.phi1330.a = phi <8 x float> [ zeroinitializer, %vector.ph1318 ], [ %i.fy, %vector.body1322 ]
  %vec.phi1331.a = phi <8 x float> [ zeroinitializer, %vector.ph1318 ], [ %i.fz, %vector.body1322 ]
  %vec.phi1332.a = phi <8 x float> [ %i.en, %vector.ph1318 ], [ %i.fo, %vector.body1322 ]
  %vec.phi1333.a = phi <8 x float> [ zeroinitializer, %vector.ph1318 ], [ %i.fp, %vector.body1322 ]
  %vec.phi1334.a = phi <8 x float> [ zeroinitializer, %vector.ph1318 ], [ %i.fq, %vector.body1322 ]
  %vec.phi1335.a = phi <8 x float> [ zeroinitializer, %vector.ph1318 ], [ %i.fr, %vector.body1322 ]
  %vec.phi1336 = phi <8 x float> [ %i.eo, %vector.ph1318 ], [ %i.fg, %vector.body1322 ]
  %vec.phi1337 = phi <8 x float> [ zeroinitializer, %vector.ph1318 ], [ %i.fh, %vector.body1322 ]
  %vec.phi1338 = phi <8 x float> [ zeroinitializer, %vector.ph1318 ], [ %i.fi, %vector.body1322 ]
  %vec.phi1339 = phi <8 x float> [ zeroinitializer, %vector.ph1318 ], [ %i.fj, %vector.body1322 ]
  %i.ep = shl i64 %index1323, 1
  %i.eq = add i64 %i.ep, %i.bz                    ; 5 uses
  %i.er = add i64 %i.eq, 16                       ; 2 uses
  %i.es = add i64 %i.eq, 32                       ; 2 uses
  %i.et = add i64 %i.eq, 48                       ; 2 uses
  %i.eu = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.eq
  %i.ev = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.er
  %i.ew = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.es
  %i.ex = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.et
  %wide.vec1340 = load <16 x float>, ptr %i.eu, align 4, !tbaa !17 ; 2 uses
  %strided.vec1341.a = shufflevector <16 x float> %wide.vec1340, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1342 = shufflevector <16 x float> %wide.vec1340, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec1343 = load <16 x float>, ptr %i.ev, align 4, !tbaa !17 ; 2 uses
  %strided.vec1344.a = shufflevector <16 x float> %wide.vec1343, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1345 = shufflevector <16 x float> %wide.vec1343, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec1346 = load <16 x float>, ptr %i.ew, align 4, !tbaa !17 ; 2 uses
  %strided.vec1347.a = shufflevector <16 x float> %wide.vec1346, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1348 = shufflevector <16 x float> %wide.vec1346, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec1349 = load <16 x float>, ptr %i.ex, align 4, !tbaa !17 ; 2 uses
  %strided.vec1350.a = shufflevector <16 x float> %wide.vec1349, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1351 = shufflevector <16 x float> %wide.vec1349, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ey = getelementptr [4 x i8], ptr %invariant.gep660, i64 %i.eq
  %i.ez = getelementptr [4 x i8], ptr %invariant.gep660, i64 %i.er
  %i.fa = getelementptr [4 x i8], ptr %invariant.gep660, i64 %i.es
  %i.fb = getelementptr [4 x i8], ptr %invariant.gep660, i64 %i.et
  %wide.vec1352 = load <16 x float>, ptr %i.ey, align 4, !tbaa !17 ; 2 uses
  %strided.vec1353.a = shufflevector <16 x float> %wide.vec1352, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1354 = shufflevector <16 x float> %wide.vec1352, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec1355 = load <16 x float>, ptr %i.ez, align 4, !tbaa !17 ; 2 uses
  %strided.vec1356.a = shufflevector <16 x float> %wide.vec1355, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1357 = shufflevector <16 x float> %wide.vec1355, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec1358 = load <16 x float>, ptr %i.fa, align 4, !tbaa !17 ; 2 uses
  %strided.vec1359.a = shufflevector <16 x float> %wide.vec1358, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1360 = shufflevector <16 x float> %wide.vec1358, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec1361 = load <16 x float>, ptr %i.fb, align 4, !tbaa !17 ; 2 uses
  %strided.vec1362 = shufflevector <16 x float> %wide.vec1361, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1363 = shufflevector <16 x float> %wide.vec1361, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.fc = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1341.a, %broadcast.splat1321
  %i.fd = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1344.a, %broadcast.splat1321
  %i.fe = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1347.a, %broadcast.splat1321
  %i.ff = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1350.a, %broadcast.splat1321
  %i.fg = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1336, %i.fc ; 2 uses
  %i.fh = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1337, %i.fd ; 2 uses
  %i.fi = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1338, %i.fe ; 2 uses
  %i.fj = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1339, %i.ff ; 2 uses
  %i.fk = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1353.a, %broadcast.splat1321
  %i.fl = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1356.a, %broadcast.splat1321
  %i.fm = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1359.a, %broadcast.splat1321
  %i.fn = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1362, %broadcast.splat1321
  %i.fo = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1332.a, %i.fk ; 2 uses
  %i.fp = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1333.a, %i.fl ; 2 uses
  %i.fq = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1334.a, %i.fm ; 2 uses
  %i.fr = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1335.a, %i.fn ; 2 uses
  %i.fs = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1342, %broadcast.splat1321
  %i.ft = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1345, %broadcast.splat1321
  %i.fu = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1348, %broadcast.splat1321
  %i.fv = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1351, %broadcast.splat1321
  %i.fw = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1328.a, %i.fs ; 2 uses
  %i.fx = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1329.a, %i.ft ; 2 uses
  %i.fy = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1330.a, %i.fu ; 2 uses
  %i.fz = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1331.a, %i.fv ; 2 uses
  %i.ga = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1354, %broadcast.splat1321
  %i.gb = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1357, %broadcast.splat1321
  %i.gc = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1360, %broadcast.splat1321
  %i.gd = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1363, %broadcast.splat1321
  %i.ge = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1324.a, %i.ga ; 2 uses
  %i.gf = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1325.a, %i.gb ; 2 uses
  %i.gg = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1326.a, %i.gc ; 2 uses
  %i.gh = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1327.a, %i.gd ; 2 uses
  %index.next1364 = add nuw i64 %index1323, 32    ; 2 uses
  %i.gi = icmp eq i64 %index.next1364, %n.vec1319
  br i1 %i.gi, label %middle.block1365, label %vector.body1322, !llvm.loop !35

middle.block1365:                                 ; preds = %vector.body1322
  %bin.rdx1366.a = fadd reassoc nsz arcp contract afn <8 x float> %i.gf, %i.ge
  %bin.rdx1367.a = fadd reassoc nsz arcp contract afn <8 x float> %i.gg, %bin.rdx1366.a
  %bin.rdx1368.a = fadd reassoc nsz arcp contract afn <8 x float> %i.gh, %bin.rdx1367.a
  %i.gj = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx1368.a) ; 3 uses
  %bin.rdx1369.a = fadd reassoc nsz arcp contract afn <8 x float> %i.fx, %i.fw
  %bin.rdx1370.a = fadd reassoc nsz arcp contract afn <8 x float> %i.fy, %bin.rdx1369.a
  %bin.rdx1371.a = fadd reassoc nsz arcp contract afn <8 x float> %i.fz, %bin.rdx1370.a
  %i.gk = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx1371.a) ; 3 uses
  %bin.rdx1372.a = fadd reassoc nsz arcp contract afn <8 x float> %i.fp, %i.fo
  %bin.rdx1373.a = fadd reassoc nsz arcp contract afn <8 x float> %i.fq, %bin.rdx1372.a
  %bin.rdx1374 = fadd reassoc nsz arcp contract afn <8 x float> %i.fr, %bin.rdx1373.a
  %i.gl = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx1374) ; 3 uses
  %bin.rdx1375 = fadd reassoc nsz arcp contract afn <8 x float> %i.fh, %i.fg
  %bin.rdx1376 = fadd reassoc nsz arcp contract afn <8 x float> %i.fi, %bin.rdx1375
  %bin.rdx1377 = fadd reassoc nsz arcp contract afn <8 x float> %i.fj, %bin.rdx1376
  %i.gm = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx1377) ; 3 uses
  br i1 %cmp.n1378, label %._crit_edge.loopexit, label %vec.epilog.iter.check1386

vec.epilog.iter.check1386:                        ; preds = %middle.block1365
  br i1 %min.epilog.iters.check1387, label %vec.epilog.scalar.ph1385.preheader, label %vec.epilog.ph1388, !prof !25

vec.epilog.ph1388:                                ; preds = %vector.main.loop.iter.check1316, %vec.epilog.iter.check1386
  %vec.epilog.resume.val1379 = phi i64 [ %n.vec1319, %vec.epilog.iter.check1386 ], [ 0, %vector.main.loop.iter.check1316 ]
  %bc.merge.rdx1380 = phi float [ %i.gj, %vec.epilog.iter.check1386 ], [ %i.eg, %vector.main.loop.iter.check1316 ]
  %bc.merge.rdx1381 = phi float [ %i.gk, %vec.epilog.iter.check1386 ], [ %i.ef, %vector.main.loop.iter.check1316 ]
  %bc.merge.rdx1382 = phi float [ %i.gl, %vec.epilog.iter.check1386 ], [ %i.ee, %vector.main.loop.iter.check1316 ]
  %bc.merge.rdx1383 = phi float [ %i.gm, %vec.epilog.iter.check1386 ], [ %i.ed, %vector.main.loop.iter.check1316 ]
  %i.gn = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1380, i64 0
  %i.go = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1381, i64 0
  %i.gp = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1382, i64 0
  %i.gq = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1383, i64 0
  %broadcast.splatinsert1390 = insertelement <4 x float> poison, float %i.eb, i64 0
end_hunk_0
begin_hunk_1_@dt_iop_clip_and_zoom_demosaic_passthrough_monochrome_f:bb.a
  %i.pi = tail call i32 @llvm.smin.i32(i32 %i.bx, i32 %i.w) ; 3 uses
  %smin316 = sext i32 %i.pi to i64
  %i.pj = add nsw i64 %smin316, 1                 ; 5 uses
  %i.pk = add i32 %i.cb, 1
  %i.pl = add i32 %i.pk, %i.pi
  %i.pm = sub i32 %i.pl, %.236
  %i.pn = xor i32 %i.pi, -1
  %i.po = add i32 %i.cb, %i.pn                    ; 3 uses
  %i.pp = zext i32 %i.po to i64
  %i.pq = add nuw nsw i64 %i.pp, 1                ; 5 uses
  %min.iters.check484 = icmp ult i32 %i.po, 7
  br i1 %min.iters.check484, label %.lr.ph264.preheader, label %vector.main.loop.iter.check485

vector.main.loop.iter.check485:                   ; preds = %iter.check509
  %min.iters.check486 = icmp ult i32 %i.po, 31
  br i1 %min.iters.check486, label %vec.epilog.ph513, label %vector.ph487

vector.ph487:                                     ; preds = %vector.main.loop.iter.check485
  %i.pr = and i64 %i.pq, 24
  %n.vec488 = and i64 %i.pq, 8589934560           ; 4 uses
  %i.ps = add nsw i64 %i.pj, %n.vec488
  %i.pt = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.2.lcssa, i64 0
  %i.pu = getelementptr [4 x i8], ptr %invariant.gep365, i64 %i.pj
  br label %vector.body491

vector.body491:                                   ; preds = %vector.ph487, %vector.body491
  %index492 = phi i64 [ 0, %vector.ph487 ], [ %index.next501, %vector.body491 ] ; 2 uses
  %vec.phi493 = phi <8 x float> [ %i.pt, %vector.ph487 ], [ %i.qd, %vector.body491 ]
  %vec.phi494 = phi <8 x float> [ zeroinitializer, %vector.ph487 ], [ %i.qe, %vector.body491 ]
  %vec.phi495 = phi <8 x float> [ zeroinitializer, %vector.ph487 ], [ %i.qf, %vector.body491 ]
  %vec.phi496 = phi <8 x float> [ zeroinitializer, %vector.ph487 ], [ %i.qg, %vector.body491 ]
  %i.pv = getelementptr [4 x i8], ptr %i.pu, i64 %index492 ; 4 uses
  %i.pw = getelementptr i8, ptr %i.pv, i64 32
  %i.px = getelementptr i8, ptr %i.pv, i64 64
  %i.py = getelementptr i8, ptr %i.pv, i64 96
  %wide.load497 = load <8 x float>, ptr %i.pv, align 4, !tbaa !17
  %wide.load498 = load <8 x float>, ptr %i.pw, align 4, !tbaa !17
  %wide.load499 = load <8 x float>, ptr %i.px, align 4, !tbaa !17
  %wide.load500 = load <8 x float>, ptr %i.py, align 4, !tbaa !17
  %i.pz = fmul reassoc nsz arcp contract afn <8 x float> %wide.load497, %broadcast.splat490
  %i.qa = fmul reassoc nsz arcp contract afn <8 x float> %wide.load498, %broadcast.splat490
  %i.qb = fmul reassoc nsz arcp contract afn <8 x float> %wide.load499, %broadcast.splat490
  %i.qc = fmul reassoc nsz arcp contract afn <8 x float> %wide.load500, %broadcast.splat490
  %i.qd = fadd reassoc nsz arcp contract afn <8 x float> %i.pz, %vec.phi493 ; 2 uses
  %i.qe = fadd reassoc nsz arcp contract afn <8 x float> %i.qa, %vec.phi494 ; 2 uses
  %i.qf = fadd reassoc nsz arcp contract afn <8 x float> %i.qb, %vec.phi495 ; 2 uses
  %i.qg = fadd reassoc nsz arcp contract afn <8 x float> %i.qc, %vec.phi496 ; 2 uses
  %index.next501 = add nuw i64 %index492, 32      ; 2 uses
  %i.qh = icmp eq i64 %index.next501, %n.vec488
  br i1 %i.qh, label %middle.block502, label %vector.body491, !llvm.loop !92

middle.block502:                                  ; preds = %vector.body491
  %bin.rdx503 = fadd reassoc nsz arcp contract afn <8 x float> %i.qe, %i.qd
  %bin.rdx504 = fadd reassoc nsz arcp contract afn <8 x float> %i.qf, %bin.rdx503
  %bin.rdx505 = fadd reassoc nsz arcp contract afn <8 x float> %i.qg, %bin.rdx504
  %i.qi = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx505) ; 3 uses
  %cmp.n506 = icmp eq i64 %i.pq, %n.vec488
  br i1 %cmp.n506, label %._crit_edge265, label %vec.epilog.iter.check511

vec.epilog.iter.check511:                         ; preds = %middle.block502
  %min.epilog.iters.check512 = icmp eq i64 %i.pr, 0
  br i1 %min.epilog.iters.check512, label %.lr.ph264.preheader, label %vec.epilog.ph513, !prof !23

vec.epilog.ph513:                                 ; preds = %vector.main.loop.iter.check485, %vec.epilog.iter.check511
  %vec.epilog.resume.val507 = phi i64 [ %n.vec488, %vec.epilog.iter.check511 ], [ 0, %vector.main.loop.iter.check485 ]
  %bc.merge.rdx508 = phi float [ %i.qi, %vec.epilog.iter.check511 ], [ %.2.lcssa, %vector.main.loop.iter.check485 ]
  %n.vec514 = and i64 %i.pq, 8589934584           ; 3 uses
  %i.qj = add nsw i64 %i.pj, %n.vec514
  %i.qk = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx508, i64 0
  %i.ql = getelementptr [4 x i8], ptr %invariant.gep365, i64 %i.pj
  br label %vec.epilog.vector.body517

vec.epilog.vector.body517:                        ; preds = %vec.epilog.vector.body517, %vec.epilog.ph513
  %index518 = phi i64 [ %vec.epilog.resume.val507, %vec.epilog.ph513 ], [ %index.next521, %vec.epilog.vector.body517 ] ; 2 uses
  %vec.phi519 = phi <8 x float> [ %i.qk, %vec.epilog.ph513 ], [ %i.qo, %vec.epilog.vector.body517 ]
  %i.qm = getelementptr [4 x i8], ptr %i.ql, i64 %index518
  %wide.load520 = load <8 x float>, ptr %i.qm, align 4, !tbaa !17
  %i.qn = fmul reassoc nsz arcp contract afn <8 x float> %wide.load520, %broadcast.splat516
  %i.qo = fadd reassoc nsz arcp contract afn <8 x float> %i.qn, %vec.phi519 ; 2 uses
  %index.next521 = add nuw i64 %index518, 8       ; 2 uses
  %i.qp = icmp eq i64 %index.next521, %n.vec514
  br i1 %i.qp, label %vec.epilog.middle.block522, label %vec.epilog.vector.body517, !llvm.loop !93

vec.epilog.middle.block522:                       ; preds = %vec.epilog.vector.body517
  %i.qq = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.qo) ; 2 uses
  %cmp.n523 = icmp eq i64 %i.pq, %n.vec514
  br i1 %cmp.n523, label %._crit_edge265, label %.lr.ph264.preheader

.lr.ph264.preheader:                              ; preds = %iter.check509, %vec.epilog.iter.check511, %vec.epilog.middle.block522
  %indvars.iv317.ph = phi i64 [ %i.pj, %iter.check509 ], [ %i.ps, %vec.epilog.iter.check511 ], [ %i.qj, %vec.epilog.middle.block522 ]
  %.7262.ph = phi float [ %.2.lcssa, %iter.check509 ], [ %i.qi, %vec.epilog.iter.check511 ], [ %i.qq, %vec.epilog.middle.block522 ]
  br label %.lr.ph264

._crit_edge265:                                   ; preds = %.lr.ph264, %middle.block502, %vec.epilog.middle.block522, %.preheader239
  %.7.lcssa = phi float [ %.2.lcssa, %.preheader239 ], [ %i.qq, %vec.epilog.middle.block522 ], [ %i.qi, %middle.block502 ], [ %i.rg, %.lr.ph264 ]
  %i.qr = add nsw i32 %.236, %i.at
  %i.qs = sext i32 %i.qr to i64
  %i.qt = getelementptr inbounds [4 x i8], ptr %1, i64 %i.qs
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !17
  %i.qv = fmul reassoc nsz arcp contract afn float %i.cg, %i.ah
  %i.qw = fmul reassoc nsz arcp contract afn float %i.qv, %i.qu
  %i.qx = fadd reassoc nsz arcp contract afn float %i.qw, %.7.lcssa
  %i.qy = sub nsw i32 %i.cb, %.236
  %i.qz = sdiv i32 %i.qy, 2
  %i.ra = add nsw i32 %i.qz, 1
  %i.rb = sitofp reassoc nsz arcp contract afn i32 %i.ra to float
  %i.rc = fsub reassoc nsz arcp contract afn float %i.rb, %i.bz
  %i.rd = fmul reassoc nsz arcp contract afn float %i.rc, %i.r
  br label %bb.f

.lr.ph264:                                        ; preds = %.lr.ph264.preheader, %.lr.ph264
  %indvars.iv317 = phi i64 [ %indvars.iv.next318, %.lr.ph264 ], [ %indvars.iv317.ph, %.lr.ph264.preheader ] ; 2 uses
  %.7262 = phi float [ %i.rg, %.lr.ph264 ], [ %.7262.ph, %.lr.ph264.preheader ]
  %gep366 = getelementptr [4 x i8], ptr %invariant.gep365, i64 %indvars.iv317
  %i.re = load float, ptr %gep366, align 4, !tbaa !17
  %i.rf = fmul reassoc nsz arcp contract afn float %i.re, %i.ah
  %i.rg = fadd reassoc nsz arcp contract afn float %i.rf, %.7262 ; 2 uses
  %indvars.iv.next318 = add nsw i64 %indvars.iv317, 1 ; 2 uses
  %lftr.wideiv319 = trunc i64 %indvars.iv.next318 to i32
  %exitcond320.not = icmp eq i32 %i.pm, %lftr.wideiv319
  br i1 %exitcond320.not, label %._crit_edge265, label %.lr.ph264, !llvm.loop !94

bb.e:                                             ; preds = %bb.d
  %i.rh = sub nsw i32 %i.cb, %.236
  %i.ri = sdiv i32 %i.rh, 2
  %i.rj = add nsw i32 %i.ri, 1
  %i.rk = sitofp reassoc nsz arcp contract afn i32 %i.rj to float
  %i.rl = fsub reassoc nsz arcp contract afn float %i.rk, %i.bz
  %i.rm = fmul reassoc nsz arcp contract afn float %i.rl, %i.ar
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge271, %bb.e, %._crit_edge265, %._crit_edge284
  %.8 = phi nsz float [ %i.mb, %._crit_edge284 ], [ %i.nt, %._crit_edge271 ], [ %i.qx, %._crit_edge265 ], [ %.2.lcssa, %bb.e ]
  %.0214 = phi nsz float [ %i.t, %._crit_edge284 ], [ %i.au, %._crit_edge271 ], [ %i.rd, %._crit_edge265 ], [ %i.rm, %bb.e ] ; 2 uses
  %i.rn = fcmp reassoc nsz arcp contract afn une float %.0214, 0.000000e+00
  %i.ro = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.8, float 0.000000e+00)
  %i.rp = fdiv reassoc nsz arcp contract afn float %i.ro, %.0214
  %i.rq = select reassoc nsz arcp contract afn i1 %i.rn, float %i.rp, float 0.000000e+00
  %i.rr = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.rq, i64 0
  %i.rs = shufflevector <4 x float> %i.rr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.rs, ptr %.0217286, align 4, !tbaa !17
  %i.rt = getelementptr inbounds nuw i8, ptr %.0217286, i64 16
  %i.ru = add nuw nsw i32 %.0216287, 1            ; 2 uses
  %exitcond334.not = icmp eq i32 %i.ru, %i.o
  br i1 %exitcond334.not, label %._crit_edge290, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @dt_iop_clip_and_zoom_demosaic_half_size_f(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load float, ptr %i.a, align 4, !tbaa !18
  %i.c = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.b ; 3 uses
  %i.d = and i32 %6, 12
  %.not = icmp ne i32 %i.d, 4                     ; 2 uses
  %i.e = select i1 %.not, i32 12, i32 3
  %i.f = and i32 %i.e, %6
  %.not439 = icmp ne i32 %i.f, 0                  ; 3 uses
  %.1449 = xor i1 %.not, %.not439
  %.1 = zext i1 %.1449 to i32                     ; 2 uses
  %.0427 = zext i1 %.not439 to i32                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !16   ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph504, label %._crit_edge505.split

.lr.ph504:                                        ; preds = %bb.a
  %i.j = fmul reassoc nsz arcp contract afn float %i.c, 5.000000e-01
  %i.k = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.j)
  %i.l = fptosi float %i.k to i32                 ; 2 uses
  %i.m = shl i32 %4, 2
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16   ; 2 uses
  %i.p = and i32 %i.o, -2
  %i.q = add i32 %i.p, -6
  %i.r = add i32 %i.o, -5
  %i.s = and i32 %i.r, -2                         ; 2 uses
  %i.t = or disjoint i32 %i.s, %.0427             ; 2 uses
  %i.u = shl i32 %i.l, 1                          ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !15   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = add nsw i32 %i.l, 1                      ; 3 uses
  %i.z = sitofp reassoc nsz arcp contract afn i32 %i.y to float ; 2 uses
  %i.aa = mul nsw i32 %i.y, %i.y
  %i.ab = uitofp nsz nneg i32 %i.aa to float
  br i1 %i.x, label %.lr.ph504.split, label %._crit_edge505.split

.lr.ph504.split:                                  ; preds = %.lr.ph504
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !15 ; 2 uses
  %i.ae = and i32 %i.ad, -2
  %i.af = add nsw i32 %i.ae, -6
  %i.ag = add nsw i32 %i.ad, -5
  %i.ah = and i32 %i.ag, -2
  %i.ai = or disjoint i32 %i.ah, %.1              ; 2 uses
  %i.aj = select i1 %.not439, i32 3, i32 2
  %i.ak = sext i32 %5 to i64                      ; 8 uses
  %wide.trip.count = zext nneg i32 %i.h to i64
  %i.al = or disjoint i32 %i.u, %.0427
  %i.am = or disjoint i32 %i.s, %.0427            ; 3 uses
  %ident.check1256.not = icmp eq i32 %5, 1
  %ident.check908.not = icmp eq i32 %5, 1
  %ident.check.not = icmp eq i32 %5, 1
  br label %.lr.ph500

._crit_edge505.split:                             ; preds = %._crit_edge501, %.lr.ph504, %bb.a
  ret void

.lr.ph500:                                        ; preds = %.lr.ph504.split, %._crit_edge501
  %indvars.iv565 = phi i64 [ 0, %.lr.ph504.split ], [ %indvars.iv.next566, %._crit_edge501 ] ; 2 uses
  %i.an = trunc nuw nsw i64 %indvars.iv565 to i32 ; 2 uses
  %i.ao = mul i32 %i.m, %i.an
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ap
  %i.ar = uitofp nsz nneg i32 %i.an to float
  %i.as = fmul reassoc nsz arcp contract afn float %i.c, %i.ar ; 2 uses
  %i.at = fptosi float %i.as to i32
  %i.au = and i32 %i.at, -2                       ; 2 uses
  %i.av = sitofp reassoc nsz arcp contract afn i32 %i.au to float
  %i.aw = fsub reassoc nsz arcp contract afn float %i.as, %i.av
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, 5.000000e-01 ; 15 uses
  %. = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.au) ; 3 uses
  %i.ay = or disjoint i32 %., %.0427              ; 5 uses
  %i.az = add nsw i32 %i.ay, %i.u                 ; 2 uses
  %i.ba = tail call i32 @llvm.umin.i32(i32 %i.t, i32 %i.az) ; 5 uses
  %i.bb = mul nsw i32 %i.ay, %5                   ; 7 uses
  %i.bc = add nsw i32 %i.ay, 1
  %i.bd = mul nsw i32 %i.bc, %5                   ; 7 uses
  %i.be = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ax ; 8 uses
  %i.bf = add nsw i32 %i.ay, 2
  %.not440457 = icmp sgt i32 %i.bf, %i.ba         ; 4 uses
  %i.bg = icmp ule i32 %i.az, %i.t                ; 2 uses
  %i.bh = sub nsw i32 %i.ba, %i.ay
  %i.bi = sdiv i32 %i.bh, 2
  %i.bj = add nsw i32 %i.bi, 1
  %i.bk = sitofp reassoc nsz arcp contract afn i32 %i.bj to float
  %i.bl = fsub reassoc nsz arcp contract afn float %i.bk, %i.ax ; 2 uses
  %i.bm = add nsw i32 %i.ba, 2
  %i.bn = mul nsw i32 %i.bm, %5                   ; 7 uses
  %i.bo = add nsw i32 %i.ba, 3
  %i.bp = mul nsw i32 %i.bo, %5                   ; 7 uses
  %i.bq = fmul reassoc nsz arcp contract afn float %i.bl, %i.z
  %i.br = add i32 %i.aj, %.
  %i.bs = sext i32 %i.br to i64                   ; 20 uses
  %i.bt = sext i32 %i.ba to i64                   ; 4 uses
  %i.bu = sext i32 %i.bb to i64                   ; 2 uses
  %i.bv = sext i32 %i.bd to i64                   ; 2 uses
  %i.bw = sext i32 %i.bn to i64                   ; 4 uses
  %i.bx = sext i32 %i.bp to i64                   ; 4 uses
  %invariant.gep689 = getelementptr [4 x i8], ptr %1, i64 %i.bu ; 6 uses
  %invariant.gep691 = getelementptr [4 x i8], ptr %1, i64 %i.bu
  %invariant.gep693 = getelementptr [4 x i8], ptr %1, i64 %i.bv ; 6 uses
  %invariant.gep695 = getelementptr [4 x i8], ptr %1, i64 %i.bv
  %invariant.gep705 = getelementptr [4 x i8], ptr %1, i64 %i.bw ; 6 uses
  %invariant.gep707 = getelementptr [4 x i8], ptr %1, i64 %i.bw
  %invariant.gep709 = getelementptr [4 x i8], ptr %1, i64 %i.bx ; 6 uses
  %invariant.gep711 = getelementptr [4 x i8], ptr %1, i64 %i.bx
  %invariant.gep729 = getelementptr [4 x i8], ptr %1, i64 %i.bw ; 6 uses
  %invariant.gep731 = getelementptr [4 x i8], ptr %1, i64 %i.bw
  %invariant.gep733 = getelementptr [4 x i8], ptr %1, i64 %i.bx ; 6 uses
  %invariant.gep735 = getelementptr [4 x i8], ptr %1, i64 %i.bx
  %i.by = add nsw i64 %i.bs, 2                    ; 3 uses
  %i.bz = add i32 %i.al, %.                       ; 3 uses
  %umin = tail call i32 @llvm.umin.i32(i32 %i.bz, i32 %i.am)
  %7 = sext i32 %umin to i64
  %8 = add nsw i64 %7, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.by, i64 %8)
  %9 = xor i64 %i.bs, -1
  %10 = add i64 %smax, %9                         ; 3 uses
  %11 = lshr i64 %10, 1
  %12 = add nuw i64 %11, 1                        ; 5 uses
  %umin909 = tail call i32 @llvm.umin.i32(i32 %i.bz, i32 %i.am)
  %13 = sext i32 %umin909 to i64
  %14 = add nsw i64 %13, 1
  %smax910 = tail call i64 @llvm.smax.i64(i64 %i.by, i64 %14)
  %15 = xor i64 %i.bs, -1
  %16 = add i64 %smax910, %15                     ; 3 uses
  %17 = lshr i64 %16, 1
  %18 = add nuw i64 %17, 1                        ; 5 uses
  %umin1257 = tail call i32 @llvm.umin.i32(i32 %i.bz, i32 %i.am)
  %i.ca = sext i32 %umin1257 to i64
  %i.cb = add nsw i64 %i.ca, 1
  %smax1258 = tail call i64 @llvm.smax.i64(i64 %i.by, i64 %i.cb)
  %i.cc = xor i64 %i.bs, -1
  %i.cd = add i64 %smax1258, %i.cc                ; 3 uses
  %i.ce = lshr i64 %i.cd, 1
  %i.cf = add nuw i64 %i.ce, 1                    ; 5 uses
  %min.iters.check1259 = icmp ugt i64 %i.cd, 5
  %or.cond1346 = and i1 %min.iters.check1259, %ident.check1256.not
  %min.iters.check1261 = icmp ult i64 %i.cd, 62
  %i.cg = and i64 %i.cf, 28
  %n.vec1263 = and i64 %i.cf, -32                 ; 4 uses
  %i.ch = shl i64 %n.vec1263, 1
  %i.ci = add i64 %i.ch, %i.bs
  %cmp.n1315 = icmp eq i64 %i.cf, %n.vec1263
  %min.epilog.iters.check1323 = icmp eq i64 %i.cg, 0
  %n.vec1325 = and i64 %i.cf, -4                  ; 3 uses
  %i.cj = shl i64 %n.vec1325, 1
  %i.ck = add i64 %i.cj, %i.bs
  %cmp.n1341 = icmp eq i64 %i.cf, %n.vec1325
  %broadcast.splatinsert1173 = insertelement <8 x float> poison, float %i.be, i64 0
  %broadcast.splat1174 = shufflevector <8 x float> %broadcast.splatinsert1173, <8 x float> poison, <8 x i32> zeroinitializer ; 12 uses
  %broadcast.splatinsert1235 = insertelement <4 x float> poison, float %i.be, i64 0
  %broadcast.splat1236 = shufflevector <4 x float> %broadcast.splatinsert1235, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert1003 = insertelement <8 x float> poison, float %i.ax, i64 0
  %broadcast.splat1004 = shufflevector <8 x float> %broadcast.splatinsert1003, <8 x float> poison, <8 x i32> zeroinitializer ; 12 uses
  %broadcast.splatinsert1065 = insertelement <4 x float> poison, float %i.ax, i64 0
  %broadcast.splat1066 = shufflevector <4 x float> %broadcast.splatinsert1065, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %min.iters.check911.a = icmp ugt i64 %16, 5
  %or.cond1348 = and i1 %min.iters.check911.a, %ident.check908.not
  %min.iters.check913 = icmp ult i64 %16, 62
  %i.cl = and i64 %18, 28
  %n.vec915 = and i64 %18, -32                    ; 4 uses
  %i.cm = shl i64 %n.vec915, 1
  %i.cn = add i64 %i.cm, %i.bs
  %cmp.n967 = icmp eq i64 %18, %n.vec915
  %min.epilog.iters.check975 = icmp eq i64 %i.cl, 0
  %n.vec977 = and i64 %18, -4                     ; 3 uses
  %i.co = shl i64 %n.vec977, 1
  %i.cp = add i64 %i.co, %i.bs
  %cmp.n993 = icmp eq i64 %18, %n.vec977
  %min.iters.check820 = icmp ugt i64 %10, 5
  %or.cond1347 = and i1 %min.iters.check820, %ident.check.not
  %min.iters.check822 = icmp ult i64 %10, 62
  %i.cq = and i64 %12, 28
  %n.vec824 = and i64 %12, -32                    ; 4 uses
  %i.cr = shl i64 %n.vec824, 1
  %i.cs = add i64 %i.cr, %i.bs
  %cmp.n876 = icmp eq i64 %12, %n.vec824
  %min.epilog.iters.check884 = icmp eq i64 %i.cq, 0
  %n.vec886 = and i64 %12, -4                     ; 3 uses
  %i.ct = shl i64 %n.vec886, 1
  %i.cu = add i64 %i.ct, %i.bs
  %cmp.n902 = icmp eq i64 %12, %n.vec886
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ax, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 12 uses
  %broadcast.splatinsert802 = insertelement <4 x float> poison, float %i.ax, i64 0
  %broadcast.splat803 = shufflevector <4 x float> %broadcast.splatinsert802, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %bb.b

._crit_edge501:                                   ; preds = %bb.f
  %indvars.iv.next566 = add nuw nsw i64 %indvars.iv565, 1 ; 2 uses
  %exitcond568.not = icmp eq i64 %indvars.iv.next566, %wide.trip.count
  br i1 %exitcond568.not, label %._crit_edge505.split, label %.lr.ph500

bb.b:                                             ; preds = %.lr.ph500, %bb.f
  %.0424498 = phi i32 [ 0, %.lr.ph500 ], [ %i.agc, %bb.f ] ; 2 uses
  %.0425497 = phi ptr [ %i.aq, %.lr.ph500 ], [ %i.agb, %bb.f ] ; 2 uses
  %i.cv = uitofp nsz nneg i32 %.0424498 to float
  %i.cw = fmul reassoc nsz arcp contract afn float %i.c, %i.cv ; 2 uses
  %i.cx = fptosi float %i.cw to i32
  %i.cy = and i32 %i.cx, -2                       ; 2 uses
  %i.cz = sitofp reassoc nsz arcp contract afn i32 %i.cy to float
  %i.da = fsub reassoc nsz arcp contract afn float %i.cw, %i.cz
  %i.db = fmul reassoc nsz arcp contract afn float %i.da, 5.000000e-01 ; 16 uses
  %.448 = tail call i32 @llvm.umin.i32(i32 %i.af, i32 %i.cy)
  %i.dc = or disjoint i32 %.448, %.1              ; 12 uses
  %i.dd = add nsw i32 %i.dc, %i.bb
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %1, i64 %i.de
  %i.dg = load float, ptr %i.df, align 4, !tbaa !17
  %i.dh = add nsw i32 %i.dc, 1                    ; 7 uses
  %i.di = add nsw i32 %i.dh, %i.bb
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dj
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !17
  %i.dm = add nsw i32 %i.dc, %i.bd
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dn
  %i.dp = load float, ptr %i.do, align 4, !tbaa !17
  %i.dq = fadd reassoc nsz arcp contract afn float %i.dp, %i.dl
  %i.dr = add nsw i32 %i.dh, %i.bd
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !17
  %i.dv = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.db ; 8 uses
  %i.dw = fmul reassoc nsz arcp contract afn float %i.dv, %i.be ; 3 uses
  %i.dx = fmul reassoc nsz arcp contract afn float %i.dw, %i.dg ; 4 uses
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dw, %i.dq ; 4 uses
  %i.dz = fmul reassoc nsz arcp contract afn float %i.dw, %i.du ; 4 uses
  %i.ea = add nsw i32 %i.dc, %i.u                 ; 2 uses
  %i.eb = tail call i32 @llvm.umin.i32(i32 %i.ai, i32 %i.ea) ; 11 uses
  br i1 %.not440457, label %._crit_edge, label %iter.check1320

iter.check1320:                                   ; preds = %bb.b
  %i.ec = sext i32 %i.dc to i64                   ; 2 uses
  %i.ed = sext i32 %i.dh to i64                   ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.ec ; 6 uses
  %invariant.gep683 = getelementptr [4 x i8], ptr %1, i64 %i.ed ; 6 uses
  %invariant.gep685 = getelementptr [4 x i8], ptr %1, i64 %i.ec
  %invariant.gep687 = getelementptr [4 x i8], ptr %1, i64 %i.ed
  br i1 %or.cond1346, label %vector.main.loop.iter.check1260, label %vec.epilog.scalar.ph1321.preheader

vector.main.loop.iter.check1260:                  ; preds = %iter.check1320
  br i1 %min.iters.check1261, label %vec.epilog.ph1324, label %vector.ph1262

vector.ph1262:                                    ; preds = %vector.main.loop.iter.check1260
  %i.ee = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.dy, i64 0
  %i.ef = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.dz, i64 0
  %i.eg = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.dx, i64 0
  %broadcast.splatinsert1264 = insertelement <8 x float> poison, float %i.dv, i64 0
  %broadcast.splat1265 = shufflevector <8 x float> %broadcast.splatinsert1264, <8 x float> poison, <8 x i32> zeroinitializer ; 12 uses
  br label %vector.body1266

vector.body1266:                                  ; preds = %vector.ph1262, %vector.body1266
  %index1267 = phi i64 [ 0, %vector.ph1262 ], [ %index.next1304, %vector.body1266 ] ; 2 uses
  %vec.phi1268.a = phi <8 x float> [ %i.ee, %vector.ph1262 ], [ %i.fk, %vector.body1266 ]
  %vec.phi1269.a = phi <8 x float> [ zeroinitializer, %vector.ph1262 ], [ %i.fl, %vector.body1266 ]
  %vec.phi1270.a = phi <8 x float> [ zeroinitializer, %vector.ph1262 ], [ %i.fm, %vector.body1266 ]
  %vec.phi1271.a = phi <8 x float> [ zeroinitializer, %vector.ph1262 ], [ %i.fn, %vector.body1266 ]
  %vec.phi1272.a = phi <8 x float> [ %i.ef, %vector.ph1262 ], [ %i.fs, %vector.body1266 ]
  %vec.phi1273.a = phi <8 x float> [ zeroinitializer, %vector.ph1262 ], [ %i.ft, %vector.body1266 ]
  %vec.phi1274.a = phi <8 x float> [ zeroinitializer, %vector.ph1262 ], [ %i.fu, %vector.body1266 ]
  %vec.phi1275.a = phi <8 x float> [ zeroinitializer, %vector.ph1262 ], [ %i.fv, %vector.body1266 ]
  %vec.phi1276 = phi <8 x float> [ %i.eg, %vector.ph1262 ], [ %i.fc, %vector.body1266 ]
  %vec.phi1277 = phi <8 x float> [ zeroinitializer, %vector.ph1262 ], [ %i.fd, %vector.body1266 ]
  %vec.phi1278 = phi <8 x float> [ zeroinitializer, %vector.ph1262 ], [ %i.fe, %vector.body1266 ]
  %vec.phi1279 = phi <8 x float> [ zeroinitializer, %vector.ph1262 ], [ %i.ff, %vector.body1266 ]
  %i.eh = shl i64 %index1267, 1
  %i.ei = add i64 %i.eh, %i.bs                    ; 5 uses
  %i.ej = add i64 %i.ei, 16                       ; 2 uses
  %i.ek = add i64 %i.ei, 32                       ; 2 uses
  %i.el = add i64 %i.ei, 48                       ; 2 uses
  %i.em = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ei
  %i.en = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ej
  %i.eo = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ek
  %i.ep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.el
  %wide.vec1280 = load <16 x float>, ptr %i.em, align 4, !tbaa !17 ; 2 uses
  %strided.vec1281.a = shufflevector <16 x float> %wide.vec1280, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1282 = shufflevector <16 x float> %wide.vec1280, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec1283 = load <16 x float>, ptr %i.en, align 4, !tbaa !17 ; 2 uses
  %strided.vec1284.a = shufflevector <16 x float> %wide.vec1283, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1285 = shufflevector <16 x float> %wide.vec1283, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec1286 = load <16 x float>, ptr %i.eo, align 4, !tbaa !17 ; 2 uses
  %strided.vec1287.a = shufflevector <16 x float> %wide.vec1286, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1288 = shufflevector <16 x float> %wide.vec1286, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec1289 = load <16 x float>, ptr %i.ep, align 4, !tbaa !17 ; 2 uses
  %strided.vec1290.a = shufflevector <16 x float> %wide.vec1289, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1291 = shufflevector <16 x float> %wide.vec1289, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.eq = getelementptr [4 x i8], ptr %invariant.gep683, i64 %i.ei
  %i.er = getelementptr [4 x i8], ptr %invariant.gep683, i64 %i.ej
  %i.es = getelementptr [4 x i8], ptr %invariant.gep683, i64 %i.ek
  %i.et = getelementptr [4 x i8], ptr %invariant.gep683, i64 %i.el
  %wide.vec1292 = load <16 x float>, ptr %i.eq, align 4, !tbaa !17 ; 2 uses
  %strided.vec1293.a = shufflevector <16 x float> %wide.vec1292, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1294 = shufflevector <16 x float> %wide.vec1292, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec1295 = load <16 x float>, ptr %i.er, align 4, !tbaa !17 ; 2 uses
  %strided.vec1296.a = shufflevector <16 x float> %wide.vec1295, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1297 = shufflevector <16 x float> %wide.vec1295, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec1298 = load <16 x float>, ptr %i.es, align 4, !tbaa !17 ; 2 uses
  %strided.vec1299.a = shufflevector <16 x float> %wide.vec1298, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1300 = shufflevector <16 x float> %wide.vec1298, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec1301 = load <16 x float>, ptr %i.et, align 4, !tbaa !17 ; 2 uses
  %strided.vec1302 = shufflevector <16 x float> %wide.vec1301, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1303 = shufflevector <16 x float> %wide.vec1301, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.eu = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec1282, %strided.vec1293.a
  %i.ev = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec1285, %strided.vec1296.a
  %i.ew = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec1288, %strided.vec1299.a
  %i.ex = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec1291, %strided.vec1302
  %i.ey = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1281.a, %broadcast.splat1265
  %i.ez = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1284.a, %broadcast.splat1265
  %i.fa = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1287.a, %broadcast.splat1265
  %i.fb = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1290.a, %broadcast.splat1265
  %i.fc = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1276, %i.ey ; 2 uses
  %i.fd = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1277, %i.ez ; 2 uses
  %i.fe = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1278, %i.fa ; 2 uses
  %i.ff = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1279, %i.fb ; 2 uses
  %i.fg = fmul reassoc nsz arcp contract afn <8 x float> %i.eu, %broadcast.splat1265
  %i.fh = fmul reassoc nsz arcp contract afn <8 x float> %i.ev, %broadcast.splat1265
  %i.fi = fmul reassoc nsz arcp contract afn <8 x float> %i.ew, %broadcast.splat1265
  %i.fj = fmul reassoc nsz arcp contract afn <8 x float> %i.ex, %broadcast.splat1265
  %i.fk = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1268.a, %i.fg ; 2 uses
  %i.fl = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1269.a, %i.fh ; 2 uses
  %i.fm = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1270.a, %i.fi ; 2 uses
  %i.fn = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1271.a, %i.fj ; 2 uses
  %i.fo = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1294, %broadcast.splat1265
  %i.fp = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1297, %broadcast.splat1265
  %i.fq = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1300, %broadcast.splat1265
  %i.fr = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1303, %broadcast.splat1265
  %i.fs = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1272.a, %i.fo ; 2 uses
  %i.ft = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1273.a, %i.fp ; 2 uses
  %i.fu = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1274.a, %i.fq ; 2 uses
  %i.fv = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1275.a, %i.fr ; 2 uses
  %index.next1304 = add nuw i64 %index1267, 32    ; 2 uses
  %i.fw = icmp eq i64 %index.next1304, %n.vec1263
  br i1 %i.fw, label %middle.block1305, label %vector.body1266, !llvm.loop !95

middle.block1305:                                 ; preds = %vector.body1266
  %bin.rdx1306.a = fadd reassoc nsz arcp contract afn <8 x float> %i.fl, %i.fk
  %bin.rdx1307.a = fadd reassoc nsz arcp contract afn <8 x float> %i.fm, %bin.rdx1306.a
  %bin.rdx1308.a = fadd reassoc nsz arcp contract afn <8 x float> %i.fn, %bin.rdx1307.a
  %i.fx = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx1308.a) ; 3 uses
  %bin.rdx1309.a = fadd reassoc nsz arcp contract afn <8 x float> %i.ft, %i.fs
  %bin.rdx1310.a = fadd reassoc nsz arcp contract afn <8 x float> %i.fu, %bin.rdx1309.a
  %bin.rdx1311 = fadd reassoc nsz arcp contract afn <8 x float> %i.fv, %bin.rdx1310.a
  %i.fy = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx1311) ; 3 uses
  %bin.rdx1312 = fadd reassoc nsz arcp contract afn <8 x float> %i.fd, %i.fc
  %bin.rdx1313 = fadd reassoc nsz arcp contract afn <8 x float> %i.fe, %bin.rdx1312
  %bin.rdx1314 = fadd reassoc nsz arcp contract afn <8 x float> %i.ff, %bin.rdx1313
  %i.fz = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx1314) ; 3 uses
  br i1 %cmp.n1315, label %._crit_edge, label %vec.epilog.iter.check1322

vec.epilog.iter.check1322:                        ; preds = %middle.block1305
  br i1 %min.epilog.iters.check1323, label %vec.epilog.scalar.ph1321.preheader, label %vec.epilog.ph1324, !prof !25

vec.epilog.ph1324:                                ; preds = %vector.main.loop.iter.check1260, %vec.epilog.iter.check1322
  %vec.epilog.resume.val1316 = phi i64 [ %n.vec1263, %vec.epilog.iter.check1322 ], [ 0, %vector.main.loop.iter.check1260 ]
  %bc.merge.rdx1317 = phi float [ %i.fx, %vec.epilog.iter.check1322 ], [ %i.dy, %vector.main.loop.iter.check1260 ]
  %bc.merge.rdx1318 = phi float [ %i.fy, %vec.epilog.iter.check1322 ], [ %i.dz, %vector.main.loop.iter.check1260 ]
  %bc.merge.rdx1319 = phi float [ %i.fz, %vec.epilog.iter.check1322 ], [ %i.dx, %vector.main.loop.iter.check1260 ]
  %i.ga = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1317, i64 0
  %i.gb = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1318, i64 0
  %i.gc = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1319, i64 0
  %broadcast.splatinsert1326 = insertelement <4 x float> poison, float %i.dv, i64 0
  %broadcast.splat1327 = shufflevector <4 x float> %broadcast.splatinsert1326, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %vec.epilog.vector.body1328

vec.epilog.vector.body1328:                       ; preds = %vec.epilog.vector.body1328, %vec.epilog.ph1324
  %index1329 = phi i64 [ %vec.epilog.resume.val1316, %vec.epilog.ph1324 ], [ %index.next1339, %vec.epilog.vector.body1328 ] ; 2 uses
  %vec.phi1330 = phi <4 x float> [ %i.ga, %vec.epilog.ph1324 ], [ %i.gl, %vec.epilog.vector.body1328 ]
  %vec.phi1331 = phi <4 x float> [ %i.gb, %vec.epilog.ph1324 ], [ %i.gn, %vec.epilog.vector.body1328 ]
  %vec.phi1332 = phi <4 x float> [ %i.gc, %vec.epilog.ph1324 ], [ %i.gj, %vec.epilog.vector.body1328 ]
  %i.gd = shl i64 %index1329, 1
  %i.ge = add i64 %i.gd, %i.bs                    ; 2 uses
  %i.gf = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ge
  %wide.vec1333 = load <8 x float>, ptr %i.gf, align 4, !tbaa !17 ; 2 uses
  %strided.vec1334.a = shufflevector <8 x float> %wide.vec1333, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1335 = shufflevector <8 x float> %wide.vec1333, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.gg = getelementptr [4 x i8], ptr %invariant.gep683, i64 %i.ge
  %wide.vec1336 = load <8 x float>, ptr %i.gg, align 4, !tbaa !17 ; 2 uses
  %strided.vec1337 = shufflevector <8 x float> %wide.vec1336, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1338 = shufflevector <8 x float> %wide.vec1336, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.gh = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec1335, %strided.vec1337
  %i.gi = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec1334.a, %broadcast.splat1327
end_hunk_1
