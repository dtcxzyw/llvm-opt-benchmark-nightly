Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/imageop_math?download=true
inline.NumInlined: 19
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 44
begin_hunk_0_@dt_iop_clip_and_zoom_mosaic_half_size:.preheader130
  %bin.rdx243 = add <8 x i32> %i.ke, %bin.rdx242
  %i.kg = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx243) ; 2 uses
  %bin.rdx = add <8 x i32> %i.jy, %i.jx
  %bin.rdx239 = add <8 x i32> %i.jz, %bin.rdx
  %bin.rdx240 = add <8 x i32> %i.ka, %bin.rdx239
  %i.kh = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx240) ; 2 uses
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.kh, %vec.epilog.iter.check ], [ %.0100141.us.us.us.us, %vector.main.loop.iter.check ]
  %bc.merge.rdx244 = phi i32 [ %i.kg, %vec.epilog.iter.check ], [ %.0101140.us.us.us.us, %vector.main.loop.iter.check ]
  %i.ki = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %i.kj = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx244, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index246 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next253, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi247 = phi <8 x i32> [ %i.ki, %vec.epilog.ph ], [ %i.kz, %vec.epilog.vector.body ]
  %vec.phi248 = phi <8 x i32> [ %i.kj, %vec.epilog.ph ], [ %i.la, %vec.epilog.vector.body ]
  %index246.tr = trunc i64 %index246 to i32
  %i.kk = shl i32 %index246.tr, 1
  %i.kl = add i32 %i.kk, %i.cn                    ; 2 uses
  %i.km = add i32 %invariant.op.us.us.us.us, %i.kl
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds [2 x i8], ptr %1, i64 %i.kn
  %wide.vec249 = load <16 x i16>, ptr %i.ko, align 2, !tbaa !20
  %i.kp = freeze <16 x i16> %wide.vec249
  %i.kq = bitcast <16 x i16> %i.kp to <8 x i32>
  %i.kr = and <8 x i32> %i.kq, splat (i32 65535)
  %i.ks = add <8 x i32> %vec.phi247, %i.kr
  %i.kt = add i32 %invariant.op138.us.us.us.us, %i.kl
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ku
  %wide.vec251 = load <16 x i16>, ptr %i.kv, align 2, !tbaa !20
  %i.kw = freeze <16 x i16> %wide.vec251
  %i.kx = bitcast <16 x i16> %i.kw to <8 x i32>
  %i.ky = and <8 x i32> %i.kx, splat (i32 65535)
  %i.kz = add <8 x i32> %i.ks, %i.ky              ; 2 uses
  %i.la = add <8 x i32> %vec.phi248, splat (i32 2) ; 2 uses
  %index.next253 = add nuw i64 %index246, 8       ; 2 uses
  %i.lb = icmp eq i64 %index.next253, %n.vec245
  br i1 %i.lb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !31

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.lc = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.kz)
  %i.ld = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.la)
  br label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv189.ph = phi i64 [ %i.gm, %iter.check ], [ %i.gm, %vector.scevcheck ], [ %i.hb, %vec.epilog.iter.check ], [ %i.hg, %vec.epilog.middle.block ]
  %.1134.us.us.us.us.us.ph = phi i32 [ %.0100141.us.us.us.us, %iter.check ], [ %.0100141.us.us.us.us, %vector.scevcheck ], [ %i.kh, %vec.epilog.iter.check ], [ %i.lc, %vec.epilog.middle.block ]
  %.1102133.us.us.us.us.us.ph = phi i32 [ %.0101140.us.us.us.us, %iter.check ], [ %.0101140.us.us.us.us, %vector.scevcheck ], [ %i.kg, %vec.epilog.iter.check ], [ %i.ld, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv189 = phi i64 [ %indvars.iv.next190, %vec.epilog.scalar.ph ], [ %indvars.iv189.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.1134.us.us.us.us.us = phi i32 [ %i.lo, %vec.epilog.scalar.ph ], [ %.1134.us.us.us.us.us.ph, %vec.epilog.scalar.ph.preheader ]
  %.1102133.us.us.us.us.us = phi i32 [ %i.lp, %vec.epilog.scalar.ph ], [ %.1102133.us.us.us.us.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.le = trunc nsw i64 %indvars.iv189 to i32     ; 2 uses
  %.reass.us.us.us.us.us = add i32 %invariant.op.us.us.us.us, %i.le
  %i.lf = sext i32 %.reass.us.us.us.us.us to i64
  %i.lg = getelementptr inbounds [2 x i8], ptr %1, i64 %i.lf
  %i.lh = load i16, ptr %i.lg, align 2, !tbaa !20
  %i.li = zext i16 %i.lh to i32
  %i.lj = add i32 %.1134.us.us.us.us.us, %i.li
  %.reass139.us.us.us.us = add i32 %invariant.op138.us.us.us.us, %i.le
  %i.lk = sext i32 %.reass139.us.us.us.us to i64
  %i.ll = getelementptr inbounds [2 x i8], ptr %1, i64 %i.lk
  %i.lm = load i16, ptr %i.ll, align 2, !tbaa !20
  %i.ln = zext i16 %i.lm to i32
  %i.lo = add i32 %i.lj, %i.ln                    ; 3 uses
  %i.lp = add nsw i32 %.1102133.us.us.us.us.us, 2 ; 3 uses
  %indvars.iv.next190 = add nsw i64 %indvars.iv189, 2 ; 2 uses
  %i.lq = icmp slt i64 %indvars.iv.next190, %i.gn
  br i1 %i.lq, label %vec.epilog.scalar.ph, label %._crit_edge.split.us.us.us.us.us, !llvm.loop !32

._crit_edge.split.us.us.us.us.us:                 ; preds = %vec.epilog.scalar.ph
  %i.lr = add nsw i32 %.099142.us.us.us.us, 2     ; 2 uses
  %i.ls = icmp slt i32 %i.lr, %i.cc
  %indvar.next = add i32 %indvar, 1
  br i1 %i.ls, label %iter.check, label %._crit_edge143.us.us

._crit_edge143.us.us:                             ; preds = %._crit_edge.split.us151.us.us, %._crit_edge.split.us.us.us.us.us
  %.us-phi154.us.us = phi i32 [ %i.lp, %._crit_edge.split.us.us.us.us.us ], [ %i.gh, %._crit_edge.split.us151.us.us ] ; 2 uses
  %.us-phi155.us.us = phi i32 [ %i.lo, %._crit_edge.split.us.us.us.us.us ], [ %i.gg, %._crit_edge.split.us151.us.us ]
  %.not124.us.us = icmp eq i32 %.us-phi154.us.us, 0
  br i1 %.not124.us.us, label %._crit_edge143.us.us.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge143.us.us
  %i.lt = udiv i32 %.us-phi155.us.us, %.us-phi154.us.us
  %i.lu = trunc i32 %i.lt to i16
  store i16 %i.lu, ptr %.0106157.us.us, align 2, !tbaa !20
  br label %._crit_edge143.us.us.thread

._crit_edge143.us.us.thread:                      ; preds = %.preheader.lr.ph.us.us, %bb.d, %._crit_edge143.us.us
  %i.lv = add nuw nsw i32 %.0104159.us.us, 1      ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.0106157.us.us, i64 2
  %exitcond.not = icmp eq i32 %i.lv, %i.bd
  br i1 %exitcond.not, label %._crit_edge.us, label %.lr.ph.split.us.us

._crit_edge.us:                                   ; preds = %._crit_edge143.us.us.thread, %.lr.ph.us
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next193, %wide.trip.count
  br i1 %exitcond195.not, label %._crit_edge175, label %bb.a

._crit_edge175:                                   ; preds = %._crit_edge.us, %.lr.ph174, %.preheader130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @dt_iop_clip_and_zoom_mosaic_half_size_f(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
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
  %i.ab = uitofp nneg i32 %i.aa to float
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
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 4 uses
  %i.aq = or disjoint i32 %i.u, %.0428
  %i.ar = or disjoint i32 %i.s, %.0428            ; 3 uses
  %i.as = insertelement <2 x i32> poison, i32 %5, i64 0
  %i.at = shufflevector <2 x i32> %i.as, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %ident.check1312.not = icmp eq i32 %5, 1
  %ident.check924.not = icmp eq i32 %5, 1
  %ident.check.not = icmp eq i32 %5, 1
  br label %.lr.ph501

._crit_edge506.split:                             ; preds = %._crit_edge502, %.lr.ph505, %bb.a
  ret void

.lr.ph501:                                        ; preds = %.lr.ph505.split, %._crit_edge502
  %indvars.iv566 = phi i64 [ 0, %.lr.ph505.split ], [ %indvars.iv.next567, %._crit_edge502 ] ; 4 uses
  %i.au = mul nsw i64 %indvars.iv566, %i.al
  %i.av = getelementptr inbounds [4 x i8], ptr %0, i64 %i.au
  %i.aw = trunc nuw nsw i64 %indvars.iv566 to i32
  %i.ax = uitofp nneg i32 %i.aw to float
  %i.ay = fmul reassoc nsz arcp contract afn float %i.d, %i.ax ; 2 uses
  %i.az = fptosi float %i.ay to i32
  %i.ba = and i32 %i.az, -2                       ; 2 uses
  %i.bb = sitofp reassoc nsz arcp contract afn i32 %i.ba to float
  %i.bc = fsub reassoc nsz arcp contract afn float %i.ay, %i.bb
  %i.bd = fmul reassoc nsz arcp contract afn float %i.bc, 5.000000e-01 ; 16 uses
  %. = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.ba) ; 3 uses
  %i.be = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bd ; 9 uses
  %i.bf = or disjoint i32 %., %.0428              ; 4 uses
  %i.bg = add nsw i32 %i.bf, %i.u                 ; 2 uses
  %i.bh = tail call i32 @llvm.umin.i32(i32 %i.t, i32 %i.bg) ; 4 uses
  %i.bi = insertelement <2 x i32> poison, i32 %i.bf, i64 0
  %i.bj = shufflevector <2 x i32> %i.bi, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bk = add nsw <2 x i32> %i.bj, <i32 0, i32 1>
  %i.bl = mul nsw <2 x i32> %i.bk, %i.at          ; 3 uses
  %i.bm = shufflevector <2 x i32> %i.bl, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.bn = add nsw i32 %i.bf, 2
  %.not441458 = icmp sgt i32 %i.bn, %i.bh         ; 4 uses
  %i.bo = icmp ule i32 %i.bg, %i.t                ; 2 uses
  %i.bp = sub nsw i32 %i.bh, %i.bf
  %i.bq = sdiv i32 %i.bp, 2
  %i.br = add nsw i32 %i.bq, 1
  %i.bs = sitofp reassoc nsz arcp contract afn i32 %i.br to float
  %i.bt = fsub reassoc nsz arcp contract afn float %i.bs, %i.bd ; 2 uses
  %i.bu = insertelement <2 x i32> poison, i32 %i.bh, i64 0
  %i.bv = shufflevector <2 x i32> %i.bu, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bw = add nsw <2 x i32> %i.bv, <i32 2, i32 3>
  %i.bx = mul nsw <2 x i32> %i.bw, %i.at          ; 3 uses
  %i.by = shufflevector <2 x i32> %i.bx, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.bz = fmul reassoc nsz arcp contract afn float %i.bt, %i.z
  %i.ca = add nuw nsw i64 %indvars.iv566, %i.am
  %.tr = trunc nuw i64 %i.ca to i32
  %i.cb = shl nuw i32 %.tr, 1
  %i.cc = and i32 %i.cb, 2
  %i.cd = add i32 %i.aj, %.
  %i.ce = sext i32 %i.cd to i64                   ; 20 uses
  %i.cf = sext i32 %i.bh to i64                   ; 4 uses
  %i.cg = extractelement <2 x i32> %i.bl, i64 0   ; 3 uses
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  %i.ci = extractelement <2 x i32> %i.bl, i64 1   ; 3 uses
  %i.cj = sext i32 %i.ci to i64                   ; 2 uses
  %i.ck = extractelement <2 x i32> %i.bx, i64 0   ; 3 uses
  %i.cl = sext i32 %i.ck to i64                   ; 4 uses
  %i.cm = extractelement <2 x i32> %i.bx, i64 1   ; 3 uses
  %i.cn = sext i32 %i.cm to i64                   ; 3 uses
  %invariant.gep670 = getelementptr [4 x i8], ptr %1, i64 %i.ch ; 6 uses
  %invariant.gep672 = getelementptr [4 x i8], ptr %1, i64 %i.ch
  %invariant.gep674 = getelementptr [4 x i8], ptr %1, i64 %i.cj ; 6 uses
  %invariant.gep676 = getelementptr [4 x i8], ptr %1, i64 %i.cj
  %invariant.gep694 = getelementptr [4 x i8], ptr %1, i64 %i.cl ; 6 uses
  %invariant.gep696 = getelementptr [4 x i8], ptr %1, i64 %i.cl
  %invariant.gep698 = getelementptr [4 x i8], ptr %1, i64 %i.cn ; 6 uses
  %invariant.gep700 = getelementptr [4 x i8], ptr %1, i64 %i.cn
  %invariant.gep718 = getelementptr [4 x i8], ptr %1, i64 %i.cl ; 6 uses
  %invariant.gep720 = getelementptr [4 x i8], ptr %1, i64 %i.cl
  %invariant.gep722 = getelementptr [4 x i8], ptr %1, i64 %i.cn ; 6 uses
  %i.co = add nsw i64 %i.ce, 2                    ; 3 uses
  %i.cp = add i32 %i.aq, %.                       ; 3 uses
  %umin = tail call i32 @llvm.umin.i32(i32 %i.cp, i32 %i.ar)
  %i.cq = sext i32 %umin to i64
  %i.cr = add nsw i64 %i.cq, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.co, i64 %i.cr)
  %i.cs = xor i64 %i.ce, -1
  %i.ct = add i64 %smax, %i.cs                    ; 3 uses
  %i.cu = lshr i64 %i.ct, 1
  %i.cv = add nuw i64 %i.cu, 1                    ; 5 uses
  %umin925 = tail call i32 @llvm.umin.i32(i32 %i.cp, i32 %i.ar)
  %i.cw = sext i32 %umin925 to i64
  %i.cx = add nsw i64 %i.cw, 1
  %smax926 = tail call i64 @llvm.smax.i64(i64 %i.co, i64 %i.cx)
  %i.cy = xor i64 %i.ce, -1
  %i.cz = add i64 %smax926, %i.cy                 ; 3 uses
  %i.da = lshr i64 %i.cz, 1
  %i.db = add nuw i64 %i.da, 1                    ; 5 uses
  %umin1313 = tail call i32 @llvm.umin.i32(i32 %i.cp, i32 %i.ar)
  %i.dc = sext i32 %umin1313 to i64
  %i.dd = add nsw i64 %i.dc, 1
  %smax1314 = tail call i64 @llvm.smax.i64(i64 %i.co, i64 %i.dd)
  %i.de = xor i64 %i.ce, -1
  %i.df = add i64 %smax1314, %i.de                ; 3 uses
  %i.dg = lshr i64 %i.df, 1
  %i.dh = add nuw i64 %i.dg, 1                    ; 5 uses
  %invariant.op = add <4 x i32> <i32 0, i32 1, i32 0, i32 1>, %i.bm
  %min.iters.check1315 = icmp ugt i64 %i.df, 5
  %or.cond1412 = and i1 %min.iters.check1315, %ident.check1312.not
  %min.iters.check1317 = icmp ult i64 %i.df, 62
  %i.di = and i64 %i.dh, 28
  %n.vec1319 = and i64 %i.dh, -32                 ; 4 uses
  %i.dj = shl i64 %n.vec1319, 1
  %i.dk = add i64 %i.dj, %i.ce
  %cmp.n1378 = icmp eq i64 %i.dh, %n.vec1319
  %min.epilog.iters.check1387 = icmp eq i64 %i.di, 0
  %n.vec1389 = and i64 %i.dh, -4                  ; 3 uses
  %i.dl = shl i64 %n.vec1389, 1
  %i.dm = add i64 %i.dl, %i.ce
  %cmp.n1406 = icmp eq i64 %i.dh, %n.vec1389
  %broadcast.splatinsert1219 = insertelement <8 x float> poison, float %i.be, i64 0
  %broadcast.splat1220 = shufflevector <8 x float> %broadcast.splatinsert1219, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  %broadcast.splatinsert1289 = insertelement <4 x float> poison, float %i.be, i64 0
  %broadcast.splat1290 = shufflevector <4 x float> %broadcast.splatinsert1289, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1029 = insertelement <8 x float> poison, float %i.bd, i64 0
  %broadcast.splat1030 = shufflevector <8 x float> %broadcast.splatinsert1029, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  %broadcast.splatinsert1099 = insertelement <4 x float> poison, float %i.bd, i64 0
  %broadcast.splat1100 = shufflevector <4 x float> %broadcast.splatinsert1099, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %min.iters.check927 = icmp ugt i64 %i.cz, 5
  %or.cond1414 = and i1 %min.iters.check927, %ident.check924.not
  %min.iters.check929 = icmp ult i64 %i.cz, 62
  %i.dn = and i64 %i.db, 28
  %n.vec931 = and i64 %i.db, -32                  ; 4 uses
  %i.do = shl i64 %n.vec931, 1
  %i.dp = add i64 %i.do, %i.ce
  %cmp.n990 = icmp eq i64 %i.db, %n.vec931
  %min.epilog.iters.check999 = icmp eq i64 %i.dn, 0
  %n.vec1001 = and i64 %i.db, -4                  ; 3 uses
  %i.dq = shl i64 %n.vec1001, 1
  %i.dr = add i64 %i.dq, %i.ce
  %cmp.n1018 = icmp eq i64 %i.db, %n.vec1001
  %min.iters.check826 = icmp ugt i64 %i.ct, 5
  %or.cond1413 = and i1 %min.iters.check826, %ident.check.not
  %min.iters.check828 = icmp ult i64 %i.ct, 62
  %i.ds = and i64 %i.cv, 28
  %n.vec830 = and i64 %i.cv, -32                  ; 4 uses
  %i.dt = shl i64 %n.vec830, 1
  %i.du = add i64 %i.dt, %i.ce
  %cmp.n889 = icmp eq i64 %i.cv, %n.vec830
  %min.epilog.iters.check898 = icmp eq i64 %i.ds, 0
  %n.vec900 = and i64 %i.cv, -4                   ; 3 uses
  %i.dv = shl i64 %n.vec900, 1
  %i.dw = add i64 %i.dv, %i.ce
  %cmp.n917 = icmp eq i64 %i.cv, %n.vec900
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.bd, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  %broadcast.splatinsert806 = insertelement <4 x float> poison, float %i.bd, i64 0
  %broadcast.splat807 = shufflevector <4 x float> %broadcast.splatinsert806, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %7 = insertelement <2 x float> poison, float %i.bd, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

._crit_edge502:                                   ; preds = %bb.h
  %indvars.iv.next567 = add nuw nsw i64 %indvars.iv566, 1 ; 2 uses
  %exitcond569.not = icmp eq i64 %indvars.iv.next567, %wide.trip.count
  br i1 %exitcond569.not, label %._crit_edge506.split, label %.lr.ph501

bb.b:                                             ; preds = %.lr.ph501, %bb.h
  %.0425499 = phi i32 [ 0, %.lr.ph501 ], [ %i.akk, %bb.h ] ; 3 uses
  %.0426498 = phi ptr [ %i.av, %.lr.ph501 ], [ %i.akj, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.dx = uitofp nneg i32 %.0425499 to float
  %i.dy = fmul reassoc nsz arcp contract afn float %i.d, %i.dx ; 2 uses
  %i.dz = fptosi float %i.dy to i32
  %i.ea = and i32 %i.dz, -2                       ; 2 uses
  %i.eb = sitofp reassoc nsz arcp contract afn i32 %i.ea to float
  %i.ec = fsub reassoc nsz arcp contract afn float %i.dy, %i.eb
  %.449 = tail call i32 @llvm.umin.i32(i32 %i.af, i32 %i.ea)
  %i.ed = fmul reassoc nsz arcp contract afn float %i.ec, 5.000000e-01 ; 18 uses
  %i.ee = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ed ; 9 uses
  %i.ef = fmul reassoc nsz arcp contract afn float %i.ee, %i.be
  %i.eg = or disjoint i32 %.449, %.1              ; 9 uses
  %i.eh = add nsw i32 %i.eg, 1                    ; 3 uses
  %i.ei = insertelement <4 x i32> poison, i32 %i.eg, i64 0 ; 2 uses
  %i.ej = shufflevector <4 x i32> %i.ei, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ek = add nsw <4 x i32> %i.ej, <i32 0, i32 1, i32 0, i32 1>
  %.reass = add <4 x i32> %i.ej, %invariant.op
  %i.el = sext <4 x i32> %.reass to <4 x i64>
  %i.em = getelementptr inbounds [4 x i8], ptr %1, <4 x i64> %i.el
  %i.en = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.em, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !17
  %i.eo = insertelement <4 x float> poison, float %i.ef, i64 0
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eq = fmul reassoc nsz arcp contract afn <4 x float> %i.ep, %i.en ; 6 uses
  store <4 x float> %i.eq, ptr %i.a, align 16, !tbaa !17
  %i.er = add nsw i32 %i.eg, %i.u                 ; 2 uses
  %i.es = tail call i32 @llvm.umin.i32(i32 %i.ai, i32 %i.er) ; 9 uses
  %i.et = extractelement <4 x float> %i.eq, i64 0 ; 3 uses
  %i.eu = extractelement <4 x float> %i.eq, i64 1 ; 3 uses
  %i.ev = extractelement <4 x float> %i.eq, i64 2 ; 3 uses
  %i.ew = extractelement <4 x float> %i.eq, i64 3 ; 3 uses
  br i1 %.not441458, label %._crit_edge, label %iter.check1384

iter.check1384:                                   ; preds = %bb.b
  %i.ex = sext i32 %i.eg to i64                   ; 2 uses
  %i.ey = sext i32 %i.eh to i64                   ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.ex ; 6 uses
  %invariant.gep660 = getelementptr [4 x i8], ptr %1, i64 %i.ey ; 6 uses
  %invariant.gep662 = getelementptr [4 x i8], ptr %1, i64 %i.ex
  %invariant.gep664 = getelementptr [4 x i8], ptr %1, i64 %i.ey
  br i1 %or.cond1412, label %vector.main.loop.iter.check1316, label %vec.epilog.scalar.ph1385.preheader

vector.main.loop.iter.check1316:                  ; preds = %iter.check1384
  br i1 %min.iters.check1317, label %vec.epilog.ph1388, label %vector.ph1318

vector.ph1318:                                    ; preds = %vector.main.loop.iter.check1316
  %i.ez = shufflevector <4 x float> %i.eq, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison> ; 4 uses
  %i.fa = shufflevector <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x float> %i.ez, <8 x i32> <i32 11, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fb = shufflevector <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x float> %i.ez, <8 x i32> <i32 10, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fc = shufflevector <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x float> %i.ez, <8 x i32> <i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fd = shufflevector <8 x float> %i.ez, <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %broadcast.splatinsert1320 = insertelement <8 x float> poison, float %i.ee, i64 0
  %broadcast.splat1321 = shufflevector <8 x float> %broadcast.splatinsert1320, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  br label %vector.body1322

vector.body1322:                                  ; preds = %vector.body1322, %vector.ph1318
  %index1323 = phi i64 [ 0, %vector.ph1318 ], [ %index.next1364, %vector.body1322 ] ; 2 uses
  %vec.phi1324 = phi <8 x float> [ %i.fa, %vector.ph1318 ], [ %i.gt, %vector.body1322 ]
  %vec.phi1325 = phi <8 x float> [ zeroinitializer, %vector.ph1318 ], [ %i.gu, %vector.body1322 ]
  %vec.phi1326 = phi <8 x float> [ zeroinitializer, %vector.ph1318 ], [ %i.gv, %vector.body1322 ]
  %vec.phi1327 = phi <8 x float> [ zeroinitializer, %vector.ph1318 ], [ %i.gw, %vector.body1322 ]
  %vec.phi1328 = phi <8 x float> [ %i.fb, %vector.ph1318 ], [ %i.gl, %vector.body1322 ]
  %vec.phi1329 = phi <8 x float> [ zeroinitializer, %vector.ph1318 ], [ %i.gm, %vector.body1322 ]
  %vec.phi1330 = phi <8 x float> [ zeroinitializer, %vector.ph1318 ], [ %i.gn, %vector.body1322 ]
  %vec.phi1331 = phi <8 x float> [ zeroinitializer, %vector.ph1318 ], [ %i.go, %vector.body1322 ]
  %vec.phi1332 = phi <8 x float> [ %i.fc, %vector.ph1318 ], [ %i.gd, %vector.body1322 ]
  %vec.phi1333 = phi <8 x float> [ zeroinitializer, %vector.ph1318 ], [ %i.ge, %vector.body1322 ]
  %vec.phi1334 = phi <8 x float> [ zeroinitializer, %vector.ph1318 ], [ %i.gf, %vector.body1322 ]
  %vec.phi1335 = phi <8 x float> [ zeroinitializer, %vector.ph1318 ], [ %i.gg, %vector.body1322 ]
  %vec.phi1336 = phi <8 x float> [ %i.fd, %vector.ph1318 ], [ %i.fv, %vector.body1322 ]
  %vec.phi1337 = phi <8 x float> [ zeroinitializer, %vector.ph1318 ], [ %i.fw, %vector.body1322 ]
  %vec.phi1338 = phi <8 x float> [ zeroinitializer, %vector.ph1318 ], [ %i.fx, %vector.body1322 ]
  %vec.phi1339 = phi <8 x float> [ zeroinitializer, %vector.ph1318 ], [ %i.fy, %vector.body1322 ]
  %i.fe = shl i64 %index1323, 1
  %i.ff = add i64 %i.fe, %i.ce                    ; 5 uses
  %i.fg = add i64 %i.ff, 16                       ; 2 uses
  %i.fh = add i64 %i.ff, 32                       ; 2 uses
  %i.fi = add i64 %i.ff, 48                       ; 2 uses
  %i.fj = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ff
  %i.fk = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.fg
  %i.fl = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.fh
  %i.fm = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.fi
  %wide.vec1340 = load <16 x float>, ptr %i.fj, align 4, !tbaa !17 ; 2 uses
  %strided.vec1341 = shufflevector <16 x float> %wide.vec1340, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1342 = shufflevector <16 x float> %wide.vec1340, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec1343 = load <16 x float>, ptr %i.fk, align 4, !tbaa !17 ; 2 uses
  %strided.vec1344 = shufflevector <16 x float> %wide.vec1343, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1345 = shufflevector <16 x float> %wide.vec1343, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec1346 = load <16 x float>, ptr %i.fl, align 4, !tbaa !17 ; 2 uses
  %strided.vec1347 = shufflevector <16 x float> %wide.vec1346, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1348 = shufflevector <16 x float> %wide.vec1346, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec1349 = load <16 x float>, ptr %i.fm, align 4, !tbaa !17 ; 2 uses
  %strided.vec1350 = shufflevector <16 x float> %wide.vec1349, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1351 = shufflevector <16 x float> %wide.vec1349, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.fn = getelementptr [4 x i8], ptr %invariant.gep660, i64 %i.ff
  %i.fo = getelementptr [4 x i8], ptr %invariant.gep660, i64 %i.fg
  %i.fp = getelementptr [4 x i8], ptr %invariant.gep660, i64 %i.fh
  %i.fq = getelementptr [4 x i8], ptr %invariant.gep660, i64 %i.fi
  %wide.vec1352 = load <16 x float>, ptr %i.fn, align 4, !tbaa !17 ; 2 uses
  %strided.vec1353 = shufflevector <16 x float> %wide.vec1352, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1354 = shufflevector <16 x float> %wide.vec1352, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec1355 = load <16 x float>, ptr %i.fo, align 4, !tbaa !17 ; 2 uses
  %strided.vec1356 = shufflevector <16 x float> %wide.vec1355, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1357 = shufflevector <16 x float> %wide.vec1355, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec1358 = load <16 x float>, ptr %i.fp, align 4, !tbaa !17 ; 2 uses
  %strided.vec1359 = shufflevector <16 x float> %wide.vec1358, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1360 = shufflevector <16 x float> %wide.vec1358, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec1361 = load <16 x float>, ptr %i.fq, align 4, !tbaa !17 ; 2 uses
  %strided.vec1362 = shufflevector <16 x float> %wide.vec1361, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1363 = shufflevector <16 x float> %wide.vec1361, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.fr = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1341, %broadcast.splat1321
  %i.fs = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1344, %broadcast.splat1321
  %i.ft = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1347, %broadcast.splat1321
  %i.fu = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1350, %broadcast.splat1321
  %i.fv = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1336, %i.fr ; 2 uses
  %i.fw = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1337, %i.fs ; 2 uses
  %i.fx = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1338, %i.ft ; 2 uses
  %i.fy = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1339, %i.fu ; 2 uses
  %i.fz = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1353, %broadcast.splat1321
  %i.ga = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1356, %broadcast.splat1321
  %i.gb = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1359, %broadcast.splat1321
  %i.gc = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1362, %broadcast.splat1321
  %i.gd = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1332, %i.fz ; 2 uses
  %i.ge = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1333, %i.ga ; 2 uses
  %i.gf = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1334, %i.gb ; 2 uses
  %i.gg = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1335, %i.gc ; 2 uses
  %i.gh = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1342, %broadcast.splat1321
  %i.gi = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1345, %broadcast.splat1321
  %i.gj = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1348, %broadcast.splat1321
  %i.gk = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1351, %broadcast.splat1321
  %i.gl = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1328, %i.gh ; 2 uses
  %i.gm = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1329, %i.gi ; 2 uses
  %i.gn = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1330, %i.gj ; 2 uses
  %i.go = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1331, %i.gk ; 2 uses
  %i.gp = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1354, %broadcast.splat1321
  %i.gq = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1357, %broadcast.splat1321
  %i.gr = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1360, %broadcast.splat1321
  %i.gs = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1363, %broadcast.splat1321
  %i.gt = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1324, %i.gp ; 2 uses
  %i.gu = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1325, %i.gq ; 2 uses
  %i.gv = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1326, %i.gr ; 2 uses
  %i.gw = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1327, %i.gs ; 2 uses
  %index.next1364 = add nuw i64 %index1323, 32    ; 2 uses
  %i.gx = icmp eq i64 %index.next1364, %n.vec1319
  br i1 %i.gx, label %middle.block1365, label %vector.body1322, !llvm.loop !33

middle.block1365:                                 ; preds = %vector.body1322
  %bin.rdx1366 = fadd reassoc nsz arcp contract afn <8 x float> %i.gu, %i.gt
  %bin.rdx1367 = fadd reassoc nsz arcp contract afn <8 x float> %i.gv, %bin.rdx1366
  %bin.rdx1368 = fadd reassoc nsz arcp contract afn <8 x float> %i.gw, %bin.rdx1367
  %i.gy = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx1368) ; 3 uses
  %bin.rdx1369 = fadd reassoc nsz arcp contract afn <8 x float> %i.gm, %i.gl
  %bin.rdx1370 = fadd reassoc nsz arcp contract afn <8 x float> %i.gn, %bin.rdx1369
  %bin.rdx1371 = fadd reassoc nsz arcp contract afn <8 x float> %i.go, %bin.rdx1370
  %i.gz = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx1371) ; 3 uses
  %bin.rdx1372 = fadd reassoc nsz arcp contract afn <8 x float> %i.ge, %i.gd
  %bin.rdx1373 = fadd reassoc nsz arcp contract afn <8 x float> %i.gf, %bin.rdx1372
  %bin.rdx1374 = fadd reassoc nsz arcp contract afn <8 x float> %i.gg, %bin.rdx1373
  %i.ha = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx1374) ; 3 uses
  %bin.rdx1375 = fadd reassoc nsz arcp contract afn <8 x float> %i.fw, %i.fv
  %bin.rdx1376 = fadd reassoc nsz arcp contract afn <8 x float> %i.fx, %bin.rdx1375
  %bin.rdx1377 = fadd reassoc nsz arcp contract afn <8 x float> %i.fy, %bin.rdx1376
  %i.hb = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx1377) ; 3 uses
  br i1 %cmp.n1378, label %._crit_edge.loopexit, label %vec.epilog.iter.check1386

vec.epilog.iter.check1386:                        ; preds = %middle.block1365
  br i1 %min.epilog.iters.check1387, label %vec.epilog.scalar.ph1385.preheader, label %vec.epilog.ph1388, !prof !24

vec.epilog.ph1388:                                ; preds = %vector.main.loop.iter.check1316, %vec.epilog.iter.check1386
  %vec.epilog.resume.val1379 = phi i64 [ %n.vec1319, %vec.epilog.iter.check1386 ], [ 0, %vector.main.loop.iter.check1316 ]
  %bc.merge.rdx1380 = phi float [ %i.gy, %vec.epilog.iter.check1386 ], [ %i.ew, %vector.main.loop.iter.check1316 ]
  %bc.merge.rdx1381 = phi float [ %i.gz, %vec.epilog.iter.check1386 ], [ %i.ev, %vector.main.loop.iter.check1316 ]
  %bc.merge.rdx1382 = phi float [ %i.ha, %vec.epilog.iter.check1386 ], [ %i.eu, %vector.main.loop.iter.check1316 ]
  %bc.merge.rdx1383 = phi float [ %i.hb, %vec.epilog.iter.check1386 ], [ %i.et, %vector.main.loop.iter.check1316 ]
  %i.hc = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1380, i64 0
  %i.hd = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1381, i64 0
  %i.he = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1382, i64 0
  %i.hf = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1383, i64 0
  %broadcast.splatinsert1390 = insertelement <4 x float> poison, float %i.ee, i64 0
  %broadcast.splat1391 = shufflevector <4 x float> %broadcast.splatinsert1390, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vec.epilog.vector.body1392

vec.epilog.vector.body1392:                       ; preds = %vec.epilog.vector.body1392, %vec.epilog.ph1388
  %index1393 = phi i64 [ %vec.epilog.resume.val1379, %vec.epilog.ph1388 ], [ %index.next1404, %vec.epilog.vector.body1392 ] ; 2 uses
  %vec.phi1394 = phi <4 x float> [ %i.hc, %vec.epilog.ph1388 ], [ %i.hr, %vec.epilog.vector.body1392 ]
  %vec.phi1395 = phi <4 x float> [ %i.hd, %vec.epilog.ph1388 ], [ %i.hp, %vec.epilog.vector.body1392 ]
  %vec.phi1396 = phi <4 x float> [ %i.he, %vec.epilog.ph1388 ], [ %i.hn, %vec.epilog.vector.body1392 ]
  %vec.phi1397 = phi <4 x float> [ %i.hf, %vec.epilog.ph1388 ], [ %i.hl, %vec.epilog.vector.body1392 ]
  %i.hg = shl i64 %index1393, 1
  %i.hh = add i64 %i.hg, %i.ce                    ; 2 uses
  %i.hi = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.hh
end_hunk_0
begin_hunk_1_@dt_iop_clip_and_zoom_mosaic_half_size_f:bb.a
  %i.vj = sub nsw i64 %i.vi, %i.vh                ; 3 uses
  %i.vk = lshr i64 %i.vj, 1
  %i.vl = add nuw i64 %i.vk, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.vj, 6
  br i1 %min.iters.check, label %.lr.ph494.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check753 = icmp ult i64 %i.vj, 62
  br i1 %min.iters.check753, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.vm = and i64 %i.vl, 28
  %n.vec = and i64 %i.vl, -32                     ; 4 uses
  %i.vn = shl i64 %n.vec, 1
  %i.vo = add i64 %i.vn, %i.vh
  %i.vp = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.un, i64 0
  %i.vq = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.um, i64 0
  %i.vr = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ul, i64 0
  %i.vs = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.uk, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x float> [ %i.vp, %vector.ph ], [ %i.xi, %vector.body ]
  %vec.phi754 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.xj, %vector.body ]
  %vec.phi755 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.xk, %vector.body ]
  %vec.phi756 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.xl, %vector.body ]
  %vec.phi757 = phi <8 x float> [ %i.vq, %vector.ph ], [ %i.xa, %vector.body ]
  %vec.phi758 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.xb, %vector.body ]
  %vec.phi759 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.xc, %vector.body ]
  %vec.phi760 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.xd, %vector.body ]
  %vec.phi761 = phi <8 x float> [ %i.vr, %vector.ph ], [ %i.ws, %vector.body ]
  %vec.phi762 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.wt, %vector.body ]
  %vec.phi763 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.wu, %vector.body ]
  %vec.phi764 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.wv, %vector.body ]
  %vec.phi765 = phi <8 x float> [ %i.vs, %vector.ph ], [ %i.wk, %vector.body ]
  %vec.phi766 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.wl, %vector.body ]
  %vec.phi767 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.wm, %vector.body ]
  %vec.phi768 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.wn, %vector.body ]
  %i.vt = shl i64 %index, 1
  %i.vu = add i64 %i.vt, %i.vh                    ; 5 uses
  %i.vv = add i64 %i.vu, 16                       ; 2 uses
  %i.vw = add i64 %i.vu, 32                       ; 2 uses
  %i.vx = add i64 %i.vu, 48                       ; 2 uses
  %i.vy = getelementptr [4 x i8], ptr %invariant.gep718, i64 %i.vu
  %i.vz = getelementptr [4 x i8], ptr %invariant.gep718, i64 %i.vv
  %i.wa = getelementptr [4 x i8], ptr %invariant.gep718, i64 %i.vw
  %i.wb = getelementptr [4 x i8], ptr %invariant.gep718, i64 %i.vx
  %wide.vec = load <16 x float>, ptr %i.vy, align 4, !tbaa !17 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec769 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec770 = load <16 x float>, ptr %i.vz, align 4, !tbaa !17 ; 2 uses
  %strided.vec771 = shufflevector <16 x float> %wide.vec770, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec772 = shufflevector <16 x float> %wide.vec770, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec773 = load <16 x float>, ptr %i.wa, align 4, !tbaa !17 ; 2 uses
  %strided.vec774 = shufflevector <16 x float> %wide.vec773, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec775 = shufflevector <16 x float> %wide.vec773, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec776 = load <16 x float>, ptr %i.wb, align 4, !tbaa !17 ; 2 uses
  %strided.vec777 = shufflevector <16 x float> %wide.vec776, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec778 = shufflevector <16 x float> %wide.vec776, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.wc = getelementptr [4 x i8], ptr %invariant.gep722, i64 %i.vu
  %i.wd = getelementptr [4 x i8], ptr %invariant.gep722, i64 %i.vv
  %i.we = getelementptr [4 x i8], ptr %invariant.gep722, i64 %i.vw
  %i.wf = getelementptr [4 x i8], ptr %invariant.gep722, i64 %i.vx
  %wide.vec779 = load <16 x float>, ptr %i.wc, align 4, !tbaa !17 ; 2 uses
  %strided.vec780 = shufflevector <16 x float> %wide.vec779, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec781 = shufflevector <16 x float> %wide.vec779, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec782 = load <16 x float>, ptr %i.wd, align 4, !tbaa !17 ; 2 uses
  %strided.vec783 = shufflevector <16 x float> %wide.vec782, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec784 = shufflevector <16 x float> %wide.vec782, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec785 = load <16 x float>, ptr %i.we, align 4, !tbaa !17 ; 2 uses
  %strided.vec786 = shufflevector <16 x float> %wide.vec785, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec787 = shufflevector <16 x float> %wide.vec785, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec788 = load <16 x float>, ptr %i.wf, align 4, !tbaa !17 ; 2 uses
  %strided.vec789 = shufflevector <16 x float> %wide.vec788, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec790 = shufflevector <16 x float> %wide.vec788, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.wg = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat
  %i.wh = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec771, %broadcast.splat
  %i.wi = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec774, %broadcast.splat
  %i.wj = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec777, %broadcast.splat
  %i.wk = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi765, %i.wg ; 2 uses
  %i.wl = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi766, %i.wh ; 2 uses
  %i.wm = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi767, %i.wi ; 2 uses
  %i.wn = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi768, %i.wj ; 2 uses
  %i.wo = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec769, %broadcast.splat
  %i.wp = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec772, %broadcast.splat
  %i.wq = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec775, %broadcast.splat
  %i.wr = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec778, %broadcast.splat
  %i.ws = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi761, %i.wo ; 2 uses
  %i.wt = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi762, %i.wp ; 2 uses
  %i.wu = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi763, %i.wq ; 2 uses
  %i.wv = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi764, %i.wr ; 2 uses
  %i.ww = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec780, %broadcast.splat
  %i.wx = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec783, %broadcast.splat
  %i.wy = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec786, %broadcast.splat
  %i.wz = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec789, %broadcast.splat
  %i.xa = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi757, %i.ww ; 2 uses
  %i.xb = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi758, %i.wx ; 2 uses
  %i.xc = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi759, %i.wy ; 2 uses
  %i.xd = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi760, %i.wz ; 2 uses
  %i.xe = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec781, %broadcast.splat
  %i.xf = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec784, %broadcast.splat
  %i.xg = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec787, %broadcast.splat
  %i.xh = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec790, %broadcast.splat
  %i.xi = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi, %i.xe ; 2 uses
  %i.xj = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi754, %i.xf ; 2 uses
  %i.xk = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi755, %i.xg ; 2 uses
  %i.xl = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi756, %i.xh ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.xm = icmp eq i64 %index.next, %n.vec
  br i1 %i.xm, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd reassoc nsz arcp contract afn <8 x float> %i.xj, %i.xi
  %bin.rdx791 = fadd reassoc nsz arcp contract afn <8 x float> %i.xk, %bin.rdx
  %bin.rdx792 = fadd reassoc nsz arcp contract afn <8 x float> %i.xl, %bin.rdx791
  %i.xn = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx792) ; 3 uses
  %bin.rdx793 = fadd reassoc nsz arcp contract afn <8 x float> %i.xb, %i.xa
  %bin.rdx794 = fadd reassoc nsz arcp contract afn <8 x float> %i.xc, %bin.rdx793
  %bin.rdx795 = fadd reassoc nsz arcp contract afn <8 x float> %i.xd, %bin.rdx794
  %i.xo = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx795) ; 3 uses
  %bin.rdx796 = fadd reassoc nsz arcp contract afn <8 x float> %i.wt, %i.ws
  %bin.rdx797 = fadd reassoc nsz arcp contract afn <8 x float> %i.wu, %bin.rdx796
  %bin.rdx798 = fadd reassoc nsz arcp contract afn <8 x float> %i.wv, %bin.rdx797
  %i.xp = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx798) ; 3 uses
  %bin.rdx799 = fadd reassoc nsz arcp contract afn <8 x float> %i.wl, %i.wk
  %bin.rdx800 = fadd reassoc nsz arcp contract afn <8 x float> %i.wm, %bin.rdx799
  %bin.rdx801 = fadd reassoc nsz arcp contract afn <8 x float> %i.wn, %bin.rdx800
  %i.xq = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx801) ; 3 uses
  %cmp.n = icmp eq i64 %i.vl, %n.vec
  br i1 %cmp.n, label %._crit_edge495, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.vm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph494.preheader, label %vec.epilog.ph, !prof !24

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.xn, %vec.epilog.iter.check ], [ %i.un, %vector.main.loop.iter.check ]
  %bc.merge.rdx802 = phi float [ %i.xo, %vec.epilog.iter.check ], [ %i.um, %vector.main.loop.iter.check ]
  %bc.merge.rdx803 = phi float [ %i.xp, %vec.epilog.iter.check ], [ %i.ul, %vector.main.loop.iter.check ]
  %bc.merge.rdx804 = phi float [ %i.xq, %vec.epilog.iter.check ], [ %i.uk, %vector.main.loop.iter.check ]
  %n.vec805 = and i64 %i.vl, -4                   ; 3 uses
  %i.xr = shl i64 %n.vec805, 1
  %i.xs = add i64 %i.xr, %i.vh
  %i.xt = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  %i.xu = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx802, i64 0
  %i.xv = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx803, i64 0
  %i.xw = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx804, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index808 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next819, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi809 = phi <4 x float> [ %i.xt, %vec.epilog.ph ], [ %i.yi, %vec.epilog.vector.body ]
  %vec.phi810 = phi <4 x float> [ %i.xu, %vec.epilog.ph ], [ %i.yg, %vec.epilog.vector.body ]
  %vec.phi811 = phi <4 x float> [ %i.xv, %vec.epilog.ph ], [ %i.ye, %vec.epilog.vector.body ]
  %vec.phi812 = phi <4 x float> [ %i.xw, %vec.epilog.ph ], [ %i.yc, %vec.epilog.vector.body ]
  %i.xx = shl i64 %index808, 1
  %i.xy = add i64 %i.xx, %i.vh                    ; 2 uses
  %i.xz = getelementptr [4 x i8], ptr %invariant.gep718, i64 %i.xy
  %wide.vec813 = load <8 x float>, ptr %i.xz, align 4, !tbaa !17 ; 2 uses
  %strided.vec814 = shufflevector <8 x float> %wide.vec813, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec815 = shufflevector <8 x float> %wide.vec813, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ya = getelementptr [4 x i8], ptr %invariant.gep722, i64 %i.xy
  %wide.vec816 = load <8 x float>, ptr %i.ya, align 4, !tbaa !17 ; 2 uses
  %strided.vec817 = shufflevector <8 x float> %wide.vec816, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec818 = shufflevector <8 x float> %wide.vec816, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.yb = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec814, %broadcast.splat807
  %i.yc = fadd reassoc nsz arcp contract afn <4 x float> %vec.phi812, %i.yb ; 2 uses
  %i.yd = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec815, %broadcast.splat807
  %i.ye = fadd reassoc nsz arcp contract afn <4 x float> %vec.phi811, %i.yd ; 2 uses
  %i.yf = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec817, %broadcast.splat807
  %i.yg = fadd reassoc nsz arcp contract afn <4 x float> %vec.phi810, %i.yf ; 2 uses
  %i.yh = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec818, %broadcast.splat807
  %i.yi = fadd reassoc nsz arcp contract afn <4 x float> %vec.phi809, %i.yh ; 2 uses
  %index.next819 = add nuw i64 %index808, 4       ; 2 uses
  %i.yj = icmp eq i64 %index.next819, %n.vec805
  br i1 %i.yj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !46

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.yk = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.yi) ; 2 uses
  %i.yl = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.yg) ; 2 uses
  %i.ym = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ye) ; 2 uses
  %i.yn = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.yc) ; 2 uses
  %cmp.n820 = icmp eq i64 %i.vl, %n.vec805
  br i1 %cmp.n820, label %._crit_edge495, label %.lr.ph494.preheader

.lr.ph494.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph1418 = phi float [ %i.un, %iter.check ], [ %i.xn, %vec.epilog.iter.check ], [ %i.yk, %vec.epilog.middle.block ]
  %.ph1419 = phi float [ %i.um, %iter.check ], [ %i.xo, %vec.epilog.iter.check ], [ %i.yl, %vec.epilog.middle.block ]
  %.ph1420 = phi float [ %i.ul, %iter.check ], [ %i.xp, %vec.epilog.iter.check ], [ %i.ym, %vec.epilog.middle.block ]
  %.ph1421 = phi float [ %i.uk, %iter.check ], [ %i.xq, %vec.epilog.iter.check ], [ %i.yn, %vec.epilog.middle.block ]
  %indvars.iv557.ph = phi i64 [ %i.vh, %iter.check ], [ %i.vo, %vec.epilog.iter.check ], [ %i.xs, %vec.epilog.middle.block ]
  br label %.lr.ph494

._crit_edge495:                                   ; preds = %.lr.ph494, %middle.block, %vec.epilog.middle.block, %._crit_edge489
  %i.yo = phi float [ %i.un, %._crit_edge489 ], [ %i.yk, %vec.epilog.middle.block ], [ %i.xn, %middle.block ], [ %i.zz, %.lr.ph494 ]
  %i.yp = phi float [ %i.um, %._crit_edge489 ], [ %i.yl, %vec.epilog.middle.block ], [ %i.xo, %middle.block ], [ %i.zx, %.lr.ph494 ]
  %i.yq = phi float [ %i.ul, %._crit_edge489 ], [ %i.ym, %vec.epilog.middle.block ], [ %i.xp, %middle.block ], [ %i.zt, %.lr.ph494 ]
  %i.yr = phi float [ %i.uk, %._crit_edge489 ], [ %i.yn, %vec.epilog.middle.block ], [ %i.xq, %middle.block ], [ %i.zr, %.lr.ph494 ]
  %9 = fmul reassoc nsz arcp contract afn float %i.ee, %i.bd
  %10 = add nsw <4 x i32> %i.pu, %i.by
  %11 = fmul reassoc nsz arcp contract afn float %i.ed, %i.bd
  %i.ys = shufflevector <4 x i32> %i.ei, <4 x i32> %i.ek, <4 x i32> <i32 0, i32 5, i32 0, i32 5>
  %i.yt = add nsw <4 x i32> %i.ys, %i.by
  %i.yu = sext <4 x i32> %i.yt to <4 x i64>
  %i.yv = getelementptr inbounds [4 x i8], ptr %1, <4 x i64> %i.yu
  %i.yw = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.yv, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !17
  %12 = insertelement <4 x float> poison, float %9, i64 0
  %i.yx = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yy = fmul reassoc nsz arcp contract afn <4 x float> %i.yx, %i.yw
  %i.yz = insertelement <4 x float> poison, float %i.yr, i64 0
  %i.za = insertelement <4 x float> %i.yz, float %i.yq, i64 1
  %i.zb = insertelement <4 x float> %i.za, float %i.yp, i64 2
  %i.zc = insertelement <4 x float> %i.zb, float %i.yo, i64 3
  %i.zd = fadd reassoc nsz arcp contract afn <4 x float> %i.zc, %i.yy
  %i.ze = sext <4 x i32> %10 to <4 x i64>
  %i.zf = getelementptr inbounds [4 x i8], ptr %1, <4 x i64> %i.ze
  %i.zg = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.zf, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !17
  %13 = insertelement <4 x float> poison, float %11, i64 0
  %14 = shufflevector <4 x float> %13, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zh = fmul reassoc nsz arcp contract afn <4 x float> %14, %i.zg
  %i.zi = fadd reassoc nsz arcp contract afn <4 x float> %i.zd, %i.zh
  store <4 x float> %i.zi, ptr %i.a, align 16, !tbaa !17
  br label %bb.f

.lr.ph494:                                        ; preds = %.lr.ph494.preheader, %.lr.ph494
  %i.zj = phi float [ %i.zz, %.lr.ph494 ], [ %.ph1418, %.lr.ph494.preheader ]
  %i.zk = phi float [ %i.zx, %.lr.ph494 ], [ %.ph1419, %.lr.ph494.preheader ]
  %i.zl = phi float [ %i.zt, %.lr.ph494 ], [ %.ph1420, %.lr.ph494.preheader ]
  %i.zm = phi float [ %i.zr, %.lr.ph494 ], [ %.ph1421, %.lr.ph494.preheader ]
  %indvars.iv557 = phi i64 [ %indvars.iv.next558, %.lr.ph494 ], [ %indvars.iv557.ph, %.lr.ph494.preheader ] ; 4 uses
  %gep719 = getelementptr [4 x i8], ptr %invariant.gep718, i64 %indvars.iv557
  %i.zn = load float, ptr %gep719, align 4, !tbaa !17
  %i.zo = getelementptr [4 x i8], ptr %invariant.gep720, i64 %indvars.iv557
  %gep721 = getelementptr i8, ptr %i.zo, i64 4
  %i.zp = load float, ptr %gep721, align 4, !tbaa !17
  %gep723 = getelementptr [4 x i8], ptr %invariant.gep722, i64 %indvars.iv557
  %i.zq = fmul reassoc nsz arcp contract afn float %i.zn, %i.bd
  %i.zr = fadd reassoc nsz arcp contract afn float %i.zm, %i.zq ; 2 uses
  %i.zs = fmul reassoc nsz arcp contract afn float %i.zp, %i.bd
  %i.zt = fadd reassoc nsz arcp contract afn float %i.zl, %i.zs ; 2 uses
  %i.zu = load <2 x float>, ptr %gep723, align 4, !tbaa !17
  %i.zv = fmul reassoc nsz arcp contract afn <2 x float> %i.zu, %8 ; 2 uses
  %i.zw = extractelement <2 x float> %i.zv, i64 0
  %i.zx = fadd reassoc nsz arcp contract afn float %i.zk, %i.zw ; 2 uses
  %i.zy = extractelement <2 x float> %i.zv, i64 1
  %i.zz = fadd reassoc nsz arcp contract afn float %i.zj, %i.zy ; 2 uses
  %indvars.iv.next558 = add nsw i64 %indvars.iv557, 2 ; 2 uses
  %.not447 = icmp sgt i64 %indvars.iv.next558, %i.vi
  br i1 %.not447, label %._crit_edge495, label %.lr.ph494, !llvm.loop !47

bb.c:                                             ; preds = %._crit_edge472.split
  br i1 %i.pr, label %.preheader453, label %bb.d

.preheader453:                                    ; preds = %bb.c
  %i.aaa = insertelement <2 x i32> poison, i32 %i.es, i64 0
  %i.aab = shufflevector <2 x i32> %i.aaa, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.aac = add nsw <4 x i32> %i.aab, <i32 2, i32 3, i32 2, i32 3> ; 3 uses
  br i1 %.not441458, label %._crit_edge483, label %iter.check996

iter.check996:                                    ; preds = %.preheader453
  %i.aad = extractelement <4 x i32> %i.aac, i64 0
  %i.aae = sext i32 %i.aad to i64                 ; 2 uses
  %i.aaf = extractelement <4 x i32> %i.aac, i64 1
  %i.aag = sext i32 %i.aaf to i64                 ; 2 uses
  %invariant.gep702 = getelementptr [4 x i8], ptr %1, i64 %i.aae ; 6 uses
  %invariant.gep704 = getelementptr [4 x i8], ptr %1, i64 %i.aag ; 6 uses
  %invariant.gep706 = getelementptr [4 x i8], ptr %1, i64 %i.aae
  %invariant.gep708 = getelementptr [4 x i8], ptr %1, i64 %i.aag
  br i1 %or.cond1414, label %vector.main.loop.iter.check928, label %vec.epilog.scalar.ph997.preheader

vector.main.loop.iter.check928:                   ; preds = %iter.check996
  br i1 %min.iters.check929, label %vec.epilog.ph1000, label %vector.ph930

vector.ph930:                                     ; preds = %vector.main.loop.iter.check928
  %i.aah = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.pn, i64 0
  %i.aai = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.po, i64 0
  %i.aaj = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.pp, i64 0
  %i.aak = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.pq, i64 0
  %broadcast.splatinsert932 = insertelement <8 x float> poison, float %i.ed, i64 0
  %broadcast.splat933 = shufflevector <8 x float> %broadcast.splatinsert932, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  br label %vector.body934

vector.body934:                                   ; preds = %vector.body934, %vector.ph930
  %index935 = phi i64 [ 0, %vector.ph930 ], [ %index.next976, %vector.body934 ] ; 2 uses
  %vec.phi936 = phi <8 x float> [ %i.aah, %vector.ph930 ], [ %i.aca, %vector.body934 ]
  %vec.phi937 = phi <8 x float> [ zeroinitializer, %vector.ph930 ], [ %i.acb, %vector.body934 ]
  %vec.phi938 = phi <8 x float> [ zeroinitializer, %vector.ph930 ], [ %i.acc, %vector.body934 ]
  %vec.phi939 = phi <8 x float> [ zeroinitializer, %vector.ph930 ], [ %i.acd, %vector.body934 ]
  %vec.phi940 = phi <8 x float> [ %i.aai, %vector.ph930 ], [ %i.abs, %vector.body934 ]
  %vec.phi941 = phi <8 x float> [ zeroinitializer, %vector.ph930 ], [ %i.abt, %vector.body934 ]
  %vec.phi942 = phi <8 x float> [ zeroinitializer, %vector.ph930 ], [ %i.abu, %vector.body934 ]
  %vec.phi943 = phi <8 x float> [ zeroinitializer, %vector.ph930 ], [ %i.abv, %vector.body934 ]
  %vec.phi944 = phi <8 x float> [ %i.aaj, %vector.ph930 ], [ %i.abk, %vector.body934 ]
  %vec.phi945 = phi <8 x float> [ zeroinitializer, %vector.ph930 ], [ %i.abl, %vector.body934 ]
  %vec.phi946 = phi <8 x float> [ zeroinitializer, %vector.ph930 ], [ %i.abm, %vector.body934 ]
  %vec.phi947 = phi <8 x float> [ zeroinitializer, %vector.ph930 ], [ %i.abn, %vector.body934 ]
  %vec.phi948 = phi <8 x float> [ %i.aak, %vector.ph930 ], [ %i.abc, %vector.body934 ]
  %vec.phi949 = phi <8 x float> [ zeroinitializer, %vector.ph930 ], [ %i.abd, %vector.body934 ]
  %vec.phi950 = phi <8 x float> [ zeroinitializer, %vector.ph930 ], [ %i.abe, %vector.body934 ]
  %vec.phi951 = phi <8 x float> [ zeroinitializer, %vector.ph930 ], [ %i.abf, %vector.body934 ]
  %i.aal = shl i64 %index935, 1
  %i.aam = add i64 %i.aal, %i.ce                  ; 5 uses
  %i.aan = add i64 %i.aam, 16                     ; 2 uses
  %i.aao = add i64 %i.aam, 32                     ; 2 uses
  %i.aap = add i64 %i.aam, 48                     ; 2 uses
  %i.aaq = getelementptr [4 x i8], ptr %invariant.gep702, i64 %i.aam
  %i.aar = getelementptr [4 x i8], ptr %invariant.gep702, i64 %i.aan
  %i.aas = getelementptr [4 x i8], ptr %invariant.gep702, i64 %i.aao
  %i.aat = getelementptr [4 x i8], ptr %invariant.gep702, i64 %i.aap
  %wide.vec952 = load <16 x float>, ptr %i.aaq, align 4, !tbaa !17 ; 2 uses
  %strided.vec953 = shufflevector <16 x float> %wide.vec952, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec954 = shufflevector <16 x float> %wide.vec952, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec955 = load <16 x float>, ptr %i.aar, align 4, !tbaa !17 ; 2 uses
  %strided.vec956 = shufflevector <16 x float> %wide.vec955, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec957 = shufflevector <16 x float> %wide.vec955, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec958 = load <16 x float>, ptr %i.aas, align 4, !tbaa !17 ; 2 uses
  %strided.vec959 = shufflevector <16 x float> %wide.vec958, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec960 = shufflevector <16 x float> %wide.vec958, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec961 = load <16 x float>, ptr %i.aat, align 4, !tbaa !17 ; 2 uses
  %strided.vec962 = shufflevector <16 x float> %wide.vec961, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec963 = shufflevector <16 x float> %wide.vec961, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.aau = getelementptr [4 x i8], ptr %invariant.gep704, i64 %i.aam
  %i.aav = getelementptr [4 x i8], ptr %invariant.gep704, i64 %i.aan
  %i.aaw = getelementptr [4 x i8], ptr %invariant.gep704, i64 %i.aao
  %i.aax = getelementptr [4 x i8], ptr %invariant.gep704, i64 %i.aap
  %wide.vec964 = load <16 x float>, ptr %i.aau, align 4, !tbaa !17 ; 2 uses
  %strided.vec965 = shufflevector <16 x float> %wide.vec964, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec966 = shufflevector <16 x float> %wide.vec964, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec967 = load <16 x float>, ptr %i.aav, align 4, !tbaa !17 ; 2 uses
  %strided.vec968 = shufflevector <16 x float> %wide.vec967, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec969 = shufflevector <16 x float> %wide.vec967, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec970 = load <16 x float>, ptr %i.aaw, align 4, !tbaa !17 ; 2 uses
  %strided.vec971 = shufflevector <16 x float> %wide.vec970, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec972 = shufflevector <16 x float> %wide.vec970, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec973 = load <16 x float>, ptr %i.aax, align 4, !tbaa !17 ; 2 uses
  %strided.vec974 = shufflevector <16 x float> %wide.vec973, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec975 = shufflevector <16 x float> %wide.vec973, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.aay = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec953, %broadcast.splat933
  %i.aaz = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec956, %broadcast.splat933
  %i.aba = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec959, %broadcast.splat933
  %i.abb = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec962, %broadcast.splat933
  %i.abc = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi948, %i.aay ; 2 uses
  %i.abd = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi949, %i.aaz ; 2 uses
  %i.abe = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi950, %i.aba ; 2 uses
  %i.abf = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi951, %i.abb ; 2 uses
  %i.abg = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec965, %broadcast.splat933
  %i.abh = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec968, %broadcast.splat933
  %i.abi = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec971, %broadcast.splat933
  %i.abj = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec974, %broadcast.splat933
  %i.abk = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi944, %i.abg ; 2 uses
  %i.abl = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi945, %i.abh ; 2 uses
  %i.abm = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi946, %i.abi ; 2 uses
  %i.abn = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi947, %i.abj ; 2 uses
  %i.abo = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec954, %broadcast.splat933
  %i.abp = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec957, %broadcast.splat933
  %i.abq = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec960, %broadcast.splat933
  %i.abr = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec963, %broadcast.splat933
  %i.abs = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi940, %i.abo ; 2 uses
  %i.abt = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi941, %i.abp ; 2 uses
  %i.abu = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi942, %i.abq ; 2 uses
  %i.abv = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi943, %i.abr ; 2 uses
  %i.abw = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec966, %broadcast.splat933
  %i.abx = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec969, %broadcast.splat933
  %i.aby = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec972, %broadcast.splat933
  %i.abz = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec975, %broadcast.splat933
  %i.aca = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi936, %i.abw ; 2 uses
  %i.acb = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi937, %i.abx ; 2 uses
  %i.acc = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi938, %i.aby ; 2 uses
  %i.acd = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi939, %i.abz ; 2 uses
  %index.next976 = add nuw i64 %index935, 32      ; 2 uses
  %i.ace = icmp eq i64 %index.next976, %n.vec931
  br i1 %i.ace, label %middle.block977, label %vector.body934, !llvm.loop !48

middle.block977:                                  ; preds = %vector.body934
  %bin.rdx978 = fadd reassoc nsz arcp contract afn <8 x float> %i.acb, %i.aca
  %bin.rdx979 = fadd reassoc nsz arcp contract afn <8 x float> %i.acc, %bin.rdx978
  %bin.rdx980 = fadd reassoc nsz arcp contract afn <8 x float> %i.acd, %bin.rdx979
  %i.acf = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx980) ; 3 uses
  %bin.rdx981 = fadd reassoc nsz arcp contract afn <8 x float> %i.abt, %i.abs
  %bin.rdx982 = fadd reassoc nsz arcp contract afn <8 x float> %i.abu, %bin.rdx981
  %bin.rdx983 = fadd reassoc nsz arcp contract afn <8 x float> %i.abv, %bin.rdx982
  %i.acg = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx983) ; 3 uses
  %bin.rdx984 = fadd reassoc nsz arcp contract afn <8 x float> %i.abl, %i.abk
  %bin.rdx985 = fadd reassoc nsz arcp contract afn <8 x float> %i.abm, %bin.rdx984
  %bin.rdx986 = fadd reassoc nsz arcp contract afn <8 x float> %i.abn, %bin.rdx985
  %i.ach = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx986) ; 3 uses
  %bin.rdx987 = fadd reassoc nsz arcp contract afn <8 x float> %i.abd, %i.abc
  %bin.rdx988 = fadd reassoc nsz arcp contract afn <8 x float> %i.abe, %bin.rdx987
  %bin.rdx989 = fadd reassoc nsz arcp contract afn <8 x float> %i.abf, %bin.rdx988
  %i.aci = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx989) ; 3 uses
  br i1 %cmp.n990, label %._crit_edge483, label %vec.epilog.iter.check998

vec.epilog.iter.check998:                         ; preds = %middle.block977
  br i1 %min.epilog.iters.check999, label %vec.epilog.scalar.ph997.preheader, label %vec.epilog.ph1000, !prof !24

vec.epilog.ph1000:                                ; preds = %vector.main.loop.iter.check928, %vec.epilog.iter.check998
  %vec.epilog.resume.val991 = phi i64 [ %n.vec931, %vec.epilog.iter.check998 ], [ 0, %vector.main.loop.iter.check928 ]
  %bc.merge.rdx992 = phi float [ %i.acf, %vec.epilog.iter.check998 ], [ %i.pn, %vector.main.loop.iter.check928 ]
  %bc.merge.rdx993 = phi float [ %i.acg, %vec.epilog.iter.check998 ], [ %i.po, %vector.main.loop.iter.check928 ]
  %bc.merge.rdx994 = phi float [ %i.ach, %vec.epilog.iter.check998 ], [ %i.pp, %vector.main.loop.iter.check928 ]
  %bc.merge.rdx995 = phi float [ %i.aci, %vec.epilog.iter.check998 ], [ %i.pq, %vector.main.loop.iter.check928 ]
  %i.acj = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx992, i64 0
  %i.ack = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx993, i64 0
  %i.acl = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx994, i64 0
  %i.acm = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx995, i64 0
  %broadcast.splatinsert1002 = insertelement <4 x float> poison, float %i.ed, i64 0
  %broadcast.splat1003 = shufflevector <4 x float> %broadcast.splatinsert1002, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vec.epilog.vector.body1004

vec.epilog.vector.body1004:                       ; preds = %vec.epilog.vector.body1004, %vec.epilog.ph1000
  %index1005 = phi i64 [ %vec.epilog.resume.val991, %vec.epilog.ph1000 ], [ %index.next1016, %vec.epilog.vector.body1004 ] ; 2 uses
  %vec.phi1006 = phi <4 x float> [ %i.acj, %vec.epilog.ph1000 ], [ %i.acy, %vec.epilog.vector.body1004 ]
  %vec.phi1007 = phi <4 x float> [ %i.ack, %vec.epilog.ph1000 ], [ %i.acw, %vec.epilog.vector.body1004 ]
  %vec.phi1008 = phi <4 x float> [ %i.acl, %vec.epilog.ph1000 ], [ %i.acu, %vec.epilog.vector.body1004 ]
  %vec.phi1009 = phi <4 x float> [ %i.acm, %vec.epilog.ph1000 ], [ %i.acs, %vec.epilog.vector.body1004 ]
  %i.acn = shl i64 %index1005, 1
  %i.aco = add i64 %i.acn, %i.ce                  ; 2 uses
  %i.acp = getelementptr [4 x i8], ptr %invariant.gep702, i64 %i.aco
  %wide.vec1010 = load <8 x float>, ptr %i.acp, align 4, !tbaa !17 ; 2 uses
  %strided.vec1011 = shufflevector <8 x float> %wide.vec1010, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
end_hunk_1
