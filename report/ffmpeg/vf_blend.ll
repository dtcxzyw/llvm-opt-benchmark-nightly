Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_blend?download=true
inline.NumInlined: 7
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 31
begin_hunk_0_@blend_interpolate_8bit:bb.a
  %i.l = getelementptr i8, ptr %2, i64 %6
  %scevgep44 = getelementptr i8, ptr %i.l, i64 %i.k
  %min.iters.check = icmp ult i64 %6, 4
  %bound0 = icmp ult ptr %4, %scevgep43
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.m = or i64 %1, %5
  %i.n = icmp slt i64 %i.m, 0
  %i.o = or i1 %found.conflict, %i.n
  %bound046 = icmp ult ptr %4, %scevgep44
  %bound147 = icmp ult ptr %2, %scevgep
  %found.conflict48 = and i1 %bound046, %bound147
  %i.p = or i64 %3, %5
  %i.q = icmp slt i64 %i.p, 0
  %i.r = or i1 %found.conflict48, %i.q
  %conflict.rdx = or i1 %i.o, %i.r
  %min.iters.check51 = icmp ult i64 %6, 16
  %i.s = and i64 %6, 12
  %n.vec = and i64 %6, 9223372036854775792        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.s, 0
  %n.vec53 = and i64 %6, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert54 = insertelement <4 x float> poison, float %i.c, i64 0
  %broadcast.splat55 = shufflevector <4 x float> %broadcast.splatinsert54, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n60 = icmp eq i64 %6, %n.vec53
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02734 = phi ptr [ %i.bs, %._crit_edge ], [ %0, %.preheader.preheader ] ; 4 uses
  %.02833 = phi ptr [ %i.bt, %._crit_edge ], [ %2, %.preheader.preheader ] ; 4 uses
  %.02932 = phi ptr [ %i.br, %._crit_edge ], [ %4, %.preheader.preheader ] ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check51, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.02734, i64 %index
  %wide.load = load <16 x i8>, ptr %i.t, align 1, !tbaa !47, !alias.scope !523 ; 3 uses
  %i.u = uitofp <16 x i8> %wide.load to <16 x float>
  %i.v = uitofp <16 x i8> %wide.load to <16 x double>
  %i.w = fmul nnan nsz <16 x double> %i.v, splat (double f0x400921FB54442D18)
  %i.x = fdiv nsz <16 x double> %i.w, splat (double 2.550000e+02)
  %i.y = fptrunc nsz <16 x double> %i.x to <16 x float>
  %i.z = tail call nsz <16 x float> @llvm.cos.v16f32(<16 x float> %i.y)
  %i.aa = fsub nsz <16 x float> splat (float 2.000000e+00), %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %.02833, i64 %index
  %wide.load52 = load <16 x i8>, ptr %i.ab, align 1, !tbaa !47, !alias.scope !524
  %i.ac = uitofp <16 x i8> %wide.load52 to <16 x double>
  %i.ad = fmul nnan nsz <16 x double> %i.ac, splat (double f0x400921FB54442D18)
  %i.ae = fdiv nsz <16 x double> %i.ad, splat (double 2.550000e+02)
  %i.af = fptrunc nsz <16 x double> %i.ae to <16 x float>
  %i.ag = tail call nsz <16 x float> @llvm.cos.v16f32(<16 x float> %i.af)
  %i.ah = fsub nsz <16 x float> %i.aa, %i.ag
  %i.ai = fmul nsz <16 x float> %i.ah, splat (float 2.550000e+02)
  %i.aj = fmul nsz <16 x float> %i.ai, splat (float 2.500000e-01)
  %i.ak = tail call <16 x i64> @llvm.lrint.v16i64.v16f32(<16 x float> %i.aj)
  %i.al = zext <16 x i8> %wide.load to <16 x i64>
  %i.am = sub nsw <16 x i64> %i.ak, %i.al
  %i.an = sitofp nsz <16 x i64> %i.am to <16 x float>
  %i.ao = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.an, <16 x float> %broadcast.splat, <16 x float> %i.u)
  %i.ap = fptoui <16 x float> %i.ao to <16 x i8>
  %i.aq = getelementptr inbounds nuw i8, ptr %.02932, i64 %index
  store <16 x i8> %i.ap, ptr %i.aq, align 1, !tbaa !47, !alias.scope !525, !noalias !526
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !519

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index56 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next59, %vec.epilog.vector.body ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.02734, i64 %index56
  %wide.load57 = load <4 x i8>, ptr %i.as, align 1, !tbaa !47, !alias.scope !523 ; 3 uses
  %i.at = uitofp <4 x i8> %wide.load57 to <4 x float>
  %i.au = uitofp <4 x i8> %wide.load57 to <4 x double>
  %i.av = fmul nnan nsz <4 x double> %i.au, splat (double f0x400921FB54442D18)
  %i.aw = fdiv nsz <4 x double> %i.av, splat (double 2.550000e+02)
  %i.ax = fptrunc nsz <4 x double> %i.aw to <4 x float>
  %i.ay = tail call nsz <4 x float> @llvm.cos.v4f32(<4 x float> %i.ax)
  %i.az = fsub nsz <4 x float> splat (float 2.000000e+00), %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.02833, i64 %index56
  %wide.load58 = load <4 x i8>, ptr %i.ba, align 1, !tbaa !47, !alias.scope !524
  %i.bb = uitofp <4 x i8> %wide.load58 to <4 x double>
  %i.bc = fmul nnan nsz <4 x double> %i.bb, splat (double f0x400921FB54442D18)
  %i.bd = fdiv nsz <4 x double> %i.bc, splat (double 2.550000e+02)
  %i.be = fptrunc nsz <4 x double> %i.bd to <4 x float>
  %i.bf = tail call nsz <4 x float> @llvm.cos.v4f32(<4 x float> %i.be)
  %i.bg = fsub nsz <4 x float> %i.az, %i.bf
  %i.bh = fmul nsz <4 x float> %i.bg, splat (float 2.550000e+02)
  %i.bi = fmul nsz <4 x float> %i.bh, splat (float 2.500000e-01)
  %i.bj = tail call <4 x i64> @llvm.lrint.v4i64.v4f32(<4 x float> %i.bi)
  %i.bk = zext <4 x i8> %wide.load57 to <4 x i64>
  %i.bl = sub nsw <4 x i64> %i.bj, %i.bk
  %i.bm = sitofp nsz <4 x i64> %i.bl to <4 x float>
  %i.bn = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %broadcast.splat55, <4 x float> %i.at)
  %i.bo = fptoui <4 x float> %i.bn to <4 x i8>
  %i.bp = getelementptr inbounds nuw i8, ptr %.02932, i64 %index56
  store <4 x i8> %i.bo, ptr %i.bp, align 1, !tbaa !47, !alias.scope !525, !noalias !526
  %index.next59 = add nuw i64 %index56, 4         ; 2 uses
  %i.bq = icmp eq i64 %index.next59, %n.vec53
  br i1 %i.bq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !520

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n60, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec53, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.scalar.ph

._crit_edge36.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.br = getelementptr inbounds i8, ptr %.02932, i64 %5
  %i.bs = getelementptr inbounds i8, ptr %.02734, i64 %1
  %i.bt = getelementptr inbounds i8, ptr %.02833, i64 %3
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next39, %7
  br i1 %exitcond41.not, label %._crit_edge36.split, label %iter.check, !llvm.loop !521

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.02734, i64 %indvars.iv
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !47  ; 3 uses
  %i.bw = uitofp i8 %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %.02833, i64 %indvars.iv
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !47
  %i.bz = insertelement <2 x i8> poison, i8 %i.bv, i64 0
  %i.ca = insertelement <2 x i8> %i.bz, i8 %i.by, i64 1
  %i.cb = uitofp <2 x i8> %i.ca to <2 x double>
  %i.cc = fmul nnan nsz <2 x double> %i.cb, splat (double f0x400921FB54442D18)
  %i.cd = fdiv nsz <2 x double> %i.cc, splat (double 2.550000e+02)
  %i.ce = fptrunc <2 x double> %i.cd to <2 x float> ; 2 uses
  %i.cf = extractelement <2 x float> %i.ce, i64 0
  %i.cg = tail call nsz float @llvm.cos.f32(float %i.cf)
  %i.ch = fsub nsz float 2.000000e+00, %i.cg
  %i.ci = extractelement <2 x float> %i.ce, i64 1
  %i.cj = tail call nsz float @llvm.cos.f32(float %i.ci)
  %i.ck = fsub nsz float %i.ch, %i.cj
  %i.cl = fmul nsz float %i.ck, 2.550000e+02
  %i.cm = fmul nsz float %i.cl, 2.500000e-01
  %i.cn = tail call i64 @llvm.lrint.i64.f32(float %i.cm)
  %i.co = zext i8 %i.bv to i64
  %i.cp = sub nsw i64 %i.cn, %i.co
  %i.cq = sitofp nsz i64 %i.cp to float
  %i.cr = tail call nsz float @llvm.fmuladd.f32(float %i.cq, float %i.c, float %i.bw)
  %i.cs = fptoui float %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %.02932, i64 %indvars.iv
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !522
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_hardoverlay_8bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader, label %._crit_edge60.split

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %._crit_edge ], [ 0, %bb.a ]
  %.04958 = phi ptr [ %i.g, %._crit_edge ], [ %0, %bb.a ] ; 2 uses
  %.05057 = phi ptr [ %i.h, %._crit_edge ], [ %2, %bb.a ] ; 2 uses
  %.05156 = phi ptr [ %i.f, %._crit_edge ], [ %4, %bb.a ] ; 2 uses
  br label %bb.b

._crit_edge60.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %._crit_edge66
  %i.f = getelementptr inbounds i8, ptr %.05156, i64 %5
  %i.g = getelementptr inbounds i8, ptr %.04958, i64 %1
  %i.h = getelementptr inbounds i8, ptr %.05057, i64 %3
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next63, %7
  br i1 %exitcond65.not, label %._crit_edge60.split, label %.preheader, !llvm.loop !527

bb.b:                                             ; preds = %.preheader, %._crit_edge66
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge66 ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.04958, i64 %indvars.iv
  %i.j = load i8, ptr %i.i, align 1, !tbaa !47    ; 5 uses
  %i.k = uitofp i8 %i.j to float
  %i.l = icmp eq i8 %i.j, -1
  br i1 %i.l, label %._crit_edge66, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = zext i8 %i.j to i32                      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05057, i64 %indvars.iv
  %i.o = load i8, ptr %i.n, align 1, !tbaa !47    ; 2 uses
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.m, 1                  ; 2 uses
  %i.r = zext i8 %i.o to i16
  %.lhs.trunc = mul nuw i16 %i.r, 255
  %i.s = trunc nuw nsw i32 %i.q to i16
  %.rhs.trunc = sub nuw nsw i16 510, %i.s
  %i.t = udiv i16 %.lhs.trunc, %.rhs.trunc
  %.zext = zext nneg i16 %i.t to i32
  %i.u = icmp ugt i8 %i.j, -128
  %10 = select i1 %i.u, i32 %.zext, i32 0
  %i.v = mul nuw nsw i32 %i.q, %i.p
  %i.w = udiv i32 %i.v, 255
  %11 = icmp ult i8 %i.j, -127
  %i.x = select i1 %11, i32 %i.w, i32 0
  %12 = add nuw nsw i32 %i.x, %10
  %spec.select = tail call i32 @llvm.umin.i32(i32 %12, i32 255)
  %i.y = sub nsw i32 %spec.select, %i.m
  %i.z = sitofp nsz i32 %i.y to float
  br label %._crit_edge66

._crit_edge66:                                    ; preds = %bb.b, %bb.c
  %i.aa = phi float [ %i.z, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.ab = tail call nsz float @llvm.fmuladd.f32(float %i.aa, float %i.c, float %i.k)
  %i.ac = fptoui float %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %.05156, i64 %indvars.iv
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !528
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.cos.f32(float) #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_addition_9bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 2 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge41.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %5, %i.f
  %i.h = shl nuw i64 %6, 1                        ; 3 uses
  %i.i = getelementptr i8, ptr %4, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h ; 2 uses
  %i.j = mul i64 %1, %i.f
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep48 = getelementptr i8, ptr %i.k, i64 %i.h
  %i.l = mul i64 %3, %i.f
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %scevgep49 = getelementptr i8, ptr %i.m, i64 %i.h
  %min.iters.check = icmp ult i64 %6, 8
  %bound0 = icmp ult ptr %4, %scevgep48
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound051 = icmp ult ptr %4, %scevgep49
  %bound152 = icmp ult ptr %2, %scevgep
  %found.conflict53 = and i1 %bound051, %bound152
  %i.q = or i64 %3, %5
  %i.r = icmp slt i64 %i.q, 0
  %i.s = or i1 %found.conflict53, %i.r
  %conflict.rdx = or i1 %i.p, %i.s
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.03139 = phi ptr [ %i.ah, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.03238 = phi ptr [ %i.ai, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.03337 = phi ptr [ %i.ag, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.03139, i64 %index
  %wide.load = load <8 x i16>, ptr %i.t, align 2, !tbaa !63, !alias.scope !536 ; 2 uses
  %i.u = zext <8 x i16> %wide.load to <8 x i32>   ; 2 uses
  %i.v = uitofp <8 x i16> %wide.load to <8 x float>
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %.03238, i64 %index
  %wide.load56 = load <8 x i16>, ptr %i.w, align 2, !tbaa !63, !alias.scope !537
  %i.x = zext <8 x i16> %wide.load56 to <8 x i32>
  %i.y = add nuw nsw <8 x i32> %i.x, %i.u
  %i.z = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.y, <8 x i32> splat (i32 511))
  %i.aa = sub nsw <8 x i32> %i.z, %i.u
  %i.ab = sitofp nsz <8 x i32> %i.aa to <8 x float>
  %i.ac = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ab, <8 x float> %broadcast.splat, <8 x float> %i.v)
  %i.ad = fptoui <8 x float> %i.ac to <8 x i16>
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.03337, i64 %index
  store <8 x i16> %i.ad, ptr %i.ae, align 2, !tbaa !63, !alias.scope !538, !noalias !539
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !533

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge41.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ag = getelementptr inbounds i8, ptr %.03337, i64 %5
  %i.ah = getelementptr inbounds i8, ptr %.03139, i64 %1
  %i.ai = getelementptr inbounds i8, ptr %.03238, i64 %3
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next44, %7
  br i1 %exitcond46.not, label %._crit_edge41.split, label %.preheader, !llvm.loop !534

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %.03139, i64 %indvars.iv
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !63 ; 2 uses
  %i.al = zext i16 %i.ak to i32                   ; 2 uses
  %i.am = uitofp i16 %i.ak to float
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.03238, i64 %indvars.iv
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !63
  %i.ap = zext i16 %i.ao to i32
  %i.aq = add nuw nsw i32 %i.ap, %i.al
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.aq, i32 511)
  %i.ar = sub nsw i32 %spec.select, %i.al
  %i.as = sitofp nsz i32 %i.ar to float
  %i.at = tail call nsz float @llvm.fmuladd.f32(float %i.as, float %i.c, float %i.am)
  %i.au = fptoui float %i.at to i16
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.03337, i64 %indvars.iv
  store i16 %i.au, ptr %i.av, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !535
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_grainmerge_9bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 2 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge36.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %5, %i.f
  %i.h = shl nuw i64 %6, 1                        ; 3 uses
  %i.i = getelementptr i8, ptr %4, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h ; 2 uses
  %i.j = mul i64 %1, %i.f
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep43 = getelementptr i8, ptr %i.k, i64 %i.h
  %i.l = mul i64 %3, %i.f
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %scevgep44 = getelementptr i8, ptr %i.m, i64 %i.h
  %min.iters.check = icmp ult i64 %6, 8
  %bound0 = icmp ult ptr %4, %scevgep43
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound046 = icmp ult ptr %4, %scevgep44
  %bound147 = icmp ult ptr %2, %scevgep
  %found.conflict48 = and i1 %bound046, %bound147
  %i.q = or i64 %3, %5
  %i.r = icmp slt i64 %i.q, 0
  %i.s = or i1 %found.conflict48, %i.r
  %conflict.rdx = or i1 %i.p, %i.s
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02734 = phi ptr [ %i.al, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.02833 = phi ptr [ %i.am, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.02932 = phi ptr [ %i.ak, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.02734, i64 %index
  %wide.load = load <8 x i16>, ptr %i.t, align 2, !tbaa !63, !alias.scope !547 ; 2 uses
  %i.u = zext <8 x i16> %wide.load to <8 x i32>   ; 2 uses
  %i.v = uitofp <8 x i16> %wide.load to <8 x float>
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %.02833, i64 %index
  %wide.load51 = load <8 x i16>, ptr %i.w, align 2, !tbaa !63, !alias.scope !548
  %i.x = zext <8 x i16> %wide.load51 to <8 x i32>
  %i.y = add nuw nsw <8 x i32> %i.x, %i.u         ; 2 uses
end_hunk_0
begin_hunk_1_@blend_stain_9bit:bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ag = getelementptr inbounds i8, ptr %.02933, i64 %5
  %i.ah = getelementptr inbounds i8, ptr %.02735, i64 %1
  %i.ai = getelementptr inbounds i8, ptr %.02834, i64 %3
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next40, %7
  br i1 %exitcond42.not, label %._crit_edge37.split, label %.preheader, !llvm.loop !896

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %.02735, i64 %indvars.iv
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !63 ; 2 uses
  %i.al = zext i16 %i.ak to i32
  %i.am = uitofp i16 %i.ak to float
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.02834, i64 %indvars.iv
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !63
  %i.ap = zext i16 %i.ao to i32
  %reass.add.neg = mul nsw i32 %i.al, -2
  %reass.sub = sub nsw i32 %reass.add.neg, %i.ap
  %i.aq = add nsw i32 %reass.sub, 1022
  %i.ar = sitofp nsz i32 %i.aq to float
  %i.as = tail call nsz float @llvm.fmuladd.f32(float %i.ar, float %i.c, float %i.am)
  %i.at = fptoui float %i.as to i16
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %.02933, i64 %indvars.iv
  store i16 %i.at, ptr %i.au, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !897
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_interpolate_9bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 2 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge36.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %5, %i.f
  %i.h = shl nuw i64 %6, 1                        ; 3 uses
  %i.i = getelementptr i8, ptr %4, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h ; 2 uses
  %i.j = mul i64 %1, %i.f
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep43 = getelementptr i8, ptr %i.k, i64 %i.h
  %i.l = mul i64 %3, %i.f
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %scevgep44 = getelementptr i8, ptr %i.m, i64 %i.h
  %min.iters.check = icmp ult i64 %6, 8
  %bound0 = icmp ult ptr %4, %scevgep43
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound046 = icmp ult ptr %4, %scevgep44
  %bound147 = icmp ult ptr %2, %scevgep
  %found.conflict48 = and i1 %bound046, %bound147
  %i.q = or i64 %3, %5
  %i.r = icmp slt i64 %i.q, 0
  %i.s = or i1 %found.conflict48, %i.r
  %conflict.rdx = or i1 %i.p, %i.s
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02734 = phi ptr [ %i.at, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.02833 = phi ptr [ %i.au, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.02932 = phi ptr [ %i.as, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.02734, i64 %index
  %wide.load = load <8 x i16>, ptr %i.t, align 2, !tbaa !63, !alias.scope !909 ; 3 uses
  %i.u = uitofp <8 x i16> %wide.load to <8 x float>
  %i.v = uitofp <8 x i16> %wide.load to <8 x double>
  %i.w = fmul nnan nsz <8 x double> %i.v, splat (double f0x400921FB54442D18)
  %i.x = fdiv nsz <8 x double> %i.w, splat (double 5.110000e+02)
  %i.y = fptrunc nsz <8 x double> %i.x to <8 x float>
  %i.z = tail call nsz <8 x float> @llvm.cos.v8f32(<8 x float> %i.y)
  %i.aa = fsub nsz <8 x float> splat (float 2.000000e+00), %i.z
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %.02833, i64 %index
  %wide.load51 = load <8 x i16>, ptr %i.ab, align 2, !tbaa !63, !alias.scope !910
  %i.ac = uitofp <8 x i16> %wide.load51 to <8 x double>
  %i.ad = fmul nnan nsz <8 x double> %i.ac, splat (double f0x400921FB54442D18)
  %i.ae = fdiv nsz <8 x double> %i.ad, splat (double 5.110000e+02)
  %i.af = fptrunc nsz <8 x double> %i.ae to <8 x float>
  %i.ag = tail call nsz <8 x float> @llvm.cos.v8f32(<8 x float> %i.af)
  %i.ah = fsub nsz <8 x float> %i.aa, %i.ag
  %i.ai = fmul nsz <8 x float> %i.ah, splat (float 5.110000e+02)
  %i.aj = fmul nsz <8 x float> %i.ai, splat (float 2.500000e-01)
  %i.ak = tail call <8 x i64> @llvm.lrint.v8i64.v8f32(<8 x float> %i.aj)
  %i.al = zext <8 x i16> %wide.load to <8 x i64>
  %i.am = sub nsw <8 x i64> %i.ak, %i.al
  %i.an = sitofp nsz <8 x i64> %i.am to <8 x float>
  %i.ao = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.an, <8 x float> %broadcast.splat, <8 x float> %i.u)
  %i.ap = fptoui <8 x float> %i.ao to <8 x i16>
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %.02932, i64 %index
  store <8 x i16> %i.ap, ptr %i.aq, align 2, !tbaa !63, !alias.scope !911, !noalias !912
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !906

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge36.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.as = getelementptr inbounds i8, ptr %.02932, i64 %5
  %i.at = getelementptr inbounds i8, ptr %.02734, i64 %1
  %i.au = getelementptr inbounds i8, ptr %.02833, i64 %3
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next39, %7
  br i1 %exitcond41.not, label %._crit_edge36.split, label %.preheader, !llvm.loop !907

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.02734, i64 %indvars.iv
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !63 ; 3 uses
  %i.ax = uitofp i16 %i.aw to float
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %.02833, i64 %indvars.iv
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !63
  %i.ba = insertelement <2 x i16> poison, i16 %i.aw, i64 0
  %i.bb = insertelement <2 x i16> %i.ba, i16 %i.az, i64 1
  %i.bc = uitofp <2 x i16> %i.bb to <2 x double>
  %i.bd = fmul nnan nsz <2 x double> %i.bc, splat (double f0x400921FB54442D18)
  %i.be = fdiv nsz <2 x double> %i.bd, splat (double 5.110000e+02)
  %i.bf = fptrunc <2 x double> %i.be to <2 x float> ; 2 uses
  %i.bg = extractelement <2 x float> %i.bf, i64 0
  %i.bh = tail call nsz float @llvm.cos.f32(float %i.bg)
  %i.bi = fsub nsz float 2.000000e+00, %i.bh
  %i.bj = extractelement <2 x float> %i.bf, i64 1
  %i.bk = tail call nsz float @llvm.cos.f32(float %i.bj)
  %i.bl = fsub nsz float %i.bi, %i.bk
  %i.bm = fmul nsz float %i.bl, 5.110000e+02
  %i.bn = fmul nsz float %i.bm, 2.500000e-01
  %i.bo = tail call i64 @llvm.lrint.i64.f32(float %i.bn)
  %i.bp = zext i16 %i.aw to i64
  %i.bq = sub nsw i64 %i.bo, %i.bp
  %i.br = sitofp nsz i64 %i.bq to float
  %i.bs = tail call nsz float @llvm.fmuladd.f32(float %i.br, float %i.c, float %i.ax)
  %i.bt = fptoui float %i.bs to i16
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.02932, i64 %indvars.iv
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !908
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_hardoverlay_9bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader, label %._crit_edge60.split

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %._crit_edge ], [ 0, %bb.a ]
  %.04958 = phi ptr [ %i.g, %._crit_edge ], [ %0, %bb.a ] ; 2 uses
  %.05057 = phi ptr [ %i.h, %._crit_edge ], [ %2, %bb.a ] ; 2 uses
  %.05156 = phi ptr [ %i.f, %._crit_edge ], [ %4, %bb.a ] ; 2 uses
  br label %bb.b

._crit_edge60.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %._crit_edge66
  %i.f = getelementptr inbounds i8, ptr %.05156, i64 %5
  %i.g = getelementptr inbounds i8, ptr %.04958, i64 %1
  %i.h = getelementptr inbounds i8, ptr %.05057, i64 %3
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next63, %7
  br i1 %exitcond65.not, label %._crit_edge60.split, label %.preheader, !llvm.loop !913

bb.b:                                             ; preds = %.preheader, %._crit_edge66
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge66 ] ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %.04958, i64 %indvars.iv
  %i.j = load i16, ptr %i.i, align 2, !tbaa !63   ; 5 uses
  %i.k = uitofp i16 %i.j to float
  %i.l = icmp eq i16 %i.j, 511
  br i1 %i.l, label %._crit_edge66, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = zext i16 %i.j to i32                     ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %.05057, i64 %indvars.iv
  %i.o = load i16, ptr %i.n, align 2, !tbaa !63
  %i.p = zext i16 %i.o to i32                     ; 2 uses
  %i.q = mul nuw nsw i32 %i.p, 511
  %i.r = shl nuw nsw i32 %i.m, 1                  ; 2 uses
  %i.s = sub nsw i32 1022, %i.r
  %i.t = sdiv i32 %i.q, %i.s
  %i.u = icmp ugt i16 %i.j, 256
  %10 = select i1 %i.u, i32 %i.t, i32 0
  %i.v = mul nuw nsw i32 %i.r, %i.p
  %i.w = udiv i32 %i.v, 511
  %11 = icmp ult i16 %i.j, 257
  %i.x = select i1 %11, i32 %i.w, i32 0
  %12 = add nsw i32 %i.x, %10
  %spec.select = tail call i32 @llvm.smin.i32(i32 %12, i32 511)
  %i.y = sub nsw i32 %spec.select, %i.m
  %i.z = sitofp nsz i32 %i.y to float
  br label %._crit_edge66

._crit_edge66:                                    ; preds = %bb.b, %bb.c
  %i.aa = phi float [ %i.z, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.ab = tail call nsz float @llvm.fmuladd.f32(float %i.aa, float %i.c, float %i.k)
  %i.ac = fptoui float %i.ab to i16
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.05156, i64 %indvars.iv
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !914
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_addition_10bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 2 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge41.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %5, %i.f
  %i.h = shl nuw i64 %6, 1                        ; 3 uses
  %i.i = getelementptr i8, ptr %4, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h ; 2 uses
  %i.j = mul i64 %1, %i.f
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep48 = getelementptr i8, ptr %i.k, i64 %i.h
  %i.l = mul i64 %3, %i.f
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %scevgep49 = getelementptr i8, ptr %i.m, i64 %i.h
  %min.iters.check = icmp ult i64 %6, 8
  %bound0 = icmp ult ptr %4, %scevgep48
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound051 = icmp ult ptr %4, %scevgep49
  %bound152 = icmp ult ptr %2, %scevgep
  %found.conflict53 = and i1 %bound051, %bound152
  %i.q = or i64 %3, %5
  %i.r = icmp slt i64 %i.q, 0
  %i.s = or i1 %found.conflict53, %i.r
  %conflict.rdx = or i1 %i.p, %i.s
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.03139 = phi ptr [ %i.ah, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.03238 = phi ptr [ %i.ai, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.03337 = phi ptr [ %i.ag, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.03139, i64 %index
  %wide.load = load <8 x i16>, ptr %i.t, align 2, !tbaa !63, !alias.scope !922 ; 2 uses
  %i.u = zext <8 x i16> %wide.load to <8 x i32>   ; 2 uses
  %i.v = uitofp <8 x i16> %wide.load to <8 x float>
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %.03238, i64 %index
  %wide.load56 = load <8 x i16>, ptr %i.w, align 2, !tbaa !63, !alias.scope !923
  %i.x = zext <8 x i16> %wide.load56 to <8 x i32>
  %i.y = add nuw nsw <8 x i32> %i.x, %i.u
  %i.z = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.y, <8 x i32> splat (i32 1023))
  %i.aa = sub nsw <8 x i32> %i.z, %i.u
  %i.ab = sitofp nsz <8 x i32> %i.aa to <8 x float>
  %i.ac = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ab, <8 x float> %broadcast.splat, <8 x float> %i.v)
  %i.ad = fptoui <8 x float> %i.ac to <8 x i16>
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.03337, i64 %index
  store <8 x i16> %i.ad, ptr %i.ae, align 2, !tbaa !63, !alias.scope !924, !noalias !925
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !919

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge41.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ag = getelementptr inbounds i8, ptr %.03337, i64 %5
  %i.ah = getelementptr inbounds i8, ptr %.03139, i64 %1
  %i.ai = getelementptr inbounds i8, ptr %.03238, i64 %3
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next44, %7
  br i1 %exitcond46.not, label %._crit_edge41.split, label %.preheader, !llvm.loop !920

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %.03139, i64 %indvars.iv
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !63 ; 2 uses
  %i.al = zext i16 %i.ak to i32                   ; 2 uses
  %i.am = uitofp i16 %i.ak to float
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.03238, i64 %indvars.iv
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !63
  %i.ap = zext i16 %i.ao to i32
  %i.aq = add nuw nsw i32 %i.ap, %i.al
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.aq, i32 1023)
  %i.ar = sub nsw i32 %spec.select, %i.al
  %i.as = sitofp nsz i32 %i.ar to float
  %i.at = tail call nsz float @llvm.fmuladd.f32(float %i.as, float %i.c, float %i.am)
  %i.au = fptoui float %i.at to i16
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.03337, i64 %indvars.iv
  store i16 %i.au, ptr %i.av, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !921
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_grainmerge_10bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 2 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge36.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %5, %i.f
  %i.h = shl nuw i64 %6, 1                        ; 3 uses
  %i.i = getelementptr i8, ptr %4, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h ; 2 uses
  %i.j = mul i64 %1, %i.f
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep43 = getelementptr i8, ptr %i.k, i64 %i.h
  %i.l = mul i64 %3, %i.f
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %scevgep44 = getelementptr i8, ptr %i.m, i64 %i.h
  %min.iters.check = icmp ult i64 %6, 8
  %bound0 = icmp ult ptr %4, %scevgep43
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound046 = icmp ult ptr %4, %scevgep44
  %bound147 = icmp ult ptr %2, %scevgep
  %found.conflict48 = and i1 %bound046, %bound147
  %i.q = or i64 %3, %5
  %i.r = icmp slt i64 %i.q, 0
  %i.s = or i1 %found.conflict48, %i.r
  %conflict.rdx = or i1 %i.p, %i.s
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02734 = phi ptr [ %i.al, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.02833 = phi ptr [ %i.am, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.02932 = phi ptr [ %i.ak, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.02734, i64 %index
  %wide.load = load <8 x i16>, ptr %i.t, align 2, !tbaa !63, !alias.scope !933 ; 2 uses
  %i.u = zext <8 x i16> %wide.load to <8 x i32>   ; 2 uses
  %i.v = uitofp <8 x i16> %wide.load to <8 x float>
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %.02833, i64 %index
  %wide.load51 = load <8 x i16>, ptr %i.w, align 2, !tbaa !63, !alias.scope !934
  %i.x = zext <8 x i16> %wide.load51 to <8 x i32>
  %i.y = add nuw nsw <8 x i32> %i.x, %i.u         ; 2 uses
  %i.z = add nsw <8 x i32> %i.y, splat (i32 -512) ; 2 uses
  %i.aa = icmp ult <8 x i32> %i.z, splat (i32 1024)
  %i.ab = icmp samesign ult <8 x i32> %i.y, splat (i32 512)
  %i.ac = select <8 x i1> %i.ab, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1023)
  %i.ad = select <8 x i1> %i.aa, <8 x i32> %i.z, <8 x i32> %i.ac
  %i.ae = sub nsw <8 x i32> %i.ad, %i.u
  %i.af = sitofp nsz <8 x i32> %i.ae to <8 x float>
  %i.ag = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.af, <8 x float> %broadcast.splat, <8 x float> %i.v)
  %i.ah = fptoui <8 x float> %i.ag to <8 x i16>
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %.02932, i64 %index
  store <8 x i16> %i.ah, ptr %i.ai, align 2, !tbaa !63, !alias.scope !935, !noalias !936
  %index.next = add nuw i64 %index, 8             ; 2 uses
end_hunk_1
begin_hunk_2_@blend_stain_10bit:bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ag = getelementptr inbounds i8, ptr %.02933, i64 %5
  %i.ah = getelementptr inbounds i8, ptr %.02735, i64 %1
  %i.ai = getelementptr inbounds i8, ptr %.02834, i64 %3
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next40, %7
  br i1 %exitcond42.not, label %._crit_edge37.split, label %.preheader, !llvm.loop !1161

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %.02735, i64 %indvars.iv
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !63 ; 2 uses
  %i.al = zext i16 %i.ak to i32
  %i.am = uitofp i16 %i.ak to float
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.02834, i64 %indvars.iv
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !63
  %i.ap = zext i16 %i.ao to i32
  %reass.add.neg = mul nsw i32 %i.al, -2
  %reass.sub = sub nsw i32 %reass.add.neg, %i.ap
  %i.aq = add nsw i32 %reass.sub, 2046
  %i.ar = sitofp nsz i32 %i.aq to float
  %i.as = tail call nsz float @llvm.fmuladd.f32(float %i.ar, float %i.c, float %i.am)
  %i.at = fptoui float %i.as to i16
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %.02933, i64 %indvars.iv
  store i16 %i.at, ptr %i.au, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1162
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_interpolate_10bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 2 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge36.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %5, %i.f
  %i.h = shl nuw i64 %6, 1                        ; 3 uses
  %i.i = getelementptr i8, ptr %4, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h ; 2 uses
  %i.j = mul i64 %1, %i.f
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep43 = getelementptr i8, ptr %i.k, i64 %i.h
  %i.l = mul i64 %3, %i.f
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %scevgep44 = getelementptr i8, ptr %i.m, i64 %i.h
  %min.iters.check = icmp ult i64 %6, 8
  %bound0 = icmp ult ptr %4, %scevgep43
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound046 = icmp ult ptr %4, %scevgep44
  %bound147 = icmp ult ptr %2, %scevgep
  %found.conflict48 = and i1 %bound046, %bound147
  %i.q = or i64 %3, %5
  %i.r = icmp slt i64 %i.q, 0
  %i.s = or i1 %found.conflict48, %i.r
  %conflict.rdx = or i1 %i.p, %i.s
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02734 = phi ptr [ %i.at, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.02833 = phi ptr [ %i.au, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.02932 = phi ptr [ %i.as, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.02734, i64 %index
  %wide.load = load <8 x i16>, ptr %i.t, align 2, !tbaa !63, !alias.scope !1174 ; 3 uses
  %i.u = uitofp <8 x i16> %wide.load to <8 x float>
  %i.v = uitofp <8 x i16> %wide.load to <8 x double>
  %i.w = fmul nnan nsz <8 x double> %i.v, splat (double f0x400921FB54442D18)
  %i.x = fdiv nsz <8 x double> %i.w, splat (double 1.023000e+03)
  %i.y = fptrunc nsz <8 x double> %i.x to <8 x float>
  %i.z = tail call nsz <8 x float> @llvm.cos.v8f32(<8 x float> %i.y)
  %i.aa = fsub nsz <8 x float> splat (float 2.000000e+00), %i.z
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %.02833, i64 %index
  %wide.load51 = load <8 x i16>, ptr %i.ab, align 2, !tbaa !63, !alias.scope !1175
  %i.ac = uitofp <8 x i16> %wide.load51 to <8 x double>
  %i.ad = fmul nnan nsz <8 x double> %i.ac, splat (double f0x400921FB54442D18)
  %i.ae = fdiv nsz <8 x double> %i.ad, splat (double 1.023000e+03)
  %i.af = fptrunc nsz <8 x double> %i.ae to <8 x float>
  %i.ag = tail call nsz <8 x float> @llvm.cos.v8f32(<8 x float> %i.af)
  %i.ah = fsub nsz <8 x float> %i.aa, %i.ag
  %i.ai = fmul nsz <8 x float> %i.ah, splat (float 1.023000e+03)
  %i.aj = fmul nsz <8 x float> %i.ai, splat (float 2.500000e-01)
  %i.ak = tail call <8 x i64> @llvm.lrint.v8i64.v8f32(<8 x float> %i.aj)
  %i.al = zext <8 x i16> %wide.load to <8 x i64>
  %i.am = sub nsw <8 x i64> %i.ak, %i.al
  %i.an = sitofp nsz <8 x i64> %i.am to <8 x float>
  %i.ao = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.an, <8 x float> %broadcast.splat, <8 x float> %i.u)
  %i.ap = fptoui <8 x float> %i.ao to <8 x i16>
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %.02932, i64 %index
  store <8 x i16> %i.ap, ptr %i.aq, align 2, !tbaa !63, !alias.scope !1176, !noalias !1177
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !1171

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge36.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.as = getelementptr inbounds i8, ptr %.02932, i64 %5
  %i.at = getelementptr inbounds i8, ptr %.02734, i64 %1
  %i.au = getelementptr inbounds i8, ptr %.02833, i64 %3
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next39, %7
  br i1 %exitcond41.not, label %._crit_edge36.split, label %.preheader, !llvm.loop !1172

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.02734, i64 %indvars.iv
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !63 ; 3 uses
  %i.ax = uitofp i16 %i.aw to float
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %.02833, i64 %indvars.iv
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !63
  %i.ba = insertelement <2 x i16> poison, i16 %i.aw, i64 0
  %i.bb = insertelement <2 x i16> %i.ba, i16 %i.az, i64 1
  %i.bc = uitofp <2 x i16> %i.bb to <2 x double>
  %i.bd = fmul nnan nsz <2 x double> %i.bc, splat (double f0x400921FB54442D18)
  %i.be = fdiv nsz <2 x double> %i.bd, splat (double 1.023000e+03)
  %i.bf = fptrunc <2 x double> %i.be to <2 x float> ; 2 uses
  %i.bg = extractelement <2 x float> %i.bf, i64 0
  %i.bh = tail call nsz float @llvm.cos.f32(float %i.bg)
  %i.bi = fsub nsz float 2.000000e+00, %i.bh
  %i.bj = extractelement <2 x float> %i.bf, i64 1
  %i.bk = tail call nsz float @llvm.cos.f32(float %i.bj)
  %i.bl = fsub nsz float %i.bi, %i.bk
  %i.bm = fmul nsz float %i.bl, 1.023000e+03
  %i.bn = fmul nsz float %i.bm, 2.500000e-01
  %i.bo = tail call i64 @llvm.lrint.i64.f32(float %i.bn)
  %i.bp = zext i16 %i.aw to i64
  %i.bq = sub nsw i64 %i.bo, %i.bp
  %i.br = sitofp nsz i64 %i.bq to float
  %i.bs = tail call nsz float @llvm.fmuladd.f32(float %i.br, float %i.c, float %i.ax)
  %i.bt = fptoui float %i.bs to i16
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.02932, i64 %indvars.iv
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1173
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_hardoverlay_10bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader, label %._crit_edge60.split

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %._crit_edge ], [ 0, %bb.a ]
  %.04958 = phi ptr [ %i.g, %._crit_edge ], [ %0, %bb.a ] ; 2 uses
  %.05057 = phi ptr [ %i.h, %._crit_edge ], [ %2, %bb.a ] ; 2 uses
  %.05156 = phi ptr [ %i.f, %._crit_edge ], [ %4, %bb.a ] ; 2 uses
  br label %bb.b

._crit_edge60.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %._crit_edge66
  %i.f = getelementptr inbounds i8, ptr %.05156, i64 %5
  %i.g = getelementptr inbounds i8, ptr %.04958, i64 %1
  %i.h = getelementptr inbounds i8, ptr %.05057, i64 %3
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next63, %7
  br i1 %exitcond65.not, label %._crit_edge60.split, label %.preheader, !llvm.loop !1178

bb.b:                                             ; preds = %.preheader, %._crit_edge66
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge66 ] ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %.04958, i64 %indvars.iv
  %i.j = load i16, ptr %i.i, align 2, !tbaa !63   ; 5 uses
  %i.k = uitofp i16 %i.j to float
  %i.l = icmp eq i16 %i.j, 1023
  br i1 %i.l, label %._crit_edge66, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = zext i16 %i.j to i32                     ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %.05057, i64 %indvars.iv
  %i.o = load i16, ptr %i.n, align 2, !tbaa !63
  %i.p = zext i16 %i.o to i32                     ; 2 uses
  %i.q = mul nuw nsw i32 %i.p, 1023
  %i.r = shl nuw nsw i32 %i.m, 1                  ; 2 uses
  %i.s = sub nsw i32 2046, %i.r
  %i.t = sdiv i32 %i.q, %i.s
  %i.u = icmp ugt i16 %i.j, 512
  %10 = select i1 %i.u, i32 %i.t, i32 0
  %i.v = mul nuw nsw i32 %i.r, %i.p
  %i.w = udiv i32 %i.v, 1023
  %11 = icmp ult i16 %i.j, 513
  %i.x = select i1 %11, i32 %i.w, i32 0
  %12 = add nsw i32 %i.x, %10
  %spec.select = tail call i32 @llvm.smin.i32(i32 %12, i32 1023)
  %i.y = sub nsw i32 %spec.select, %i.m
  %i.z = sitofp nsz i32 %i.y to float
  br label %._crit_edge66

._crit_edge66:                                    ; preds = %bb.b, %bb.c
  %i.aa = phi float [ %i.z, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.ab = tail call nsz float @llvm.fmuladd.f32(float %i.aa, float %i.c, float %i.k)
  %i.ac = fptoui float %i.ab to i16
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.05156, i64 %indvars.iv
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1179
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_addition_12bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 2 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge41.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %5, %i.f
  %i.h = shl nuw i64 %6, 1                        ; 3 uses
  %i.i = getelementptr i8, ptr %4, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h ; 2 uses
  %i.j = mul i64 %1, %i.f
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep48 = getelementptr i8, ptr %i.k, i64 %i.h
  %i.l = mul i64 %3, %i.f
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %scevgep49 = getelementptr i8, ptr %i.m, i64 %i.h
  %min.iters.check = icmp ult i64 %6, 8
  %bound0 = icmp ult ptr %4, %scevgep48
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound051 = icmp ult ptr %4, %scevgep49
  %bound152 = icmp ult ptr %2, %scevgep
  %found.conflict53 = and i1 %bound051, %bound152
  %i.q = or i64 %3, %5
  %i.r = icmp slt i64 %i.q, 0
  %i.s = or i1 %found.conflict53, %i.r
  %conflict.rdx = or i1 %i.p, %i.s
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.03139 = phi ptr [ %i.ah, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.03238 = phi ptr [ %i.ai, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.03337 = phi ptr [ %i.ag, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.03139, i64 %index
  %wide.load = load <8 x i16>, ptr %i.t, align 2, !tbaa !63, !alias.scope !1187 ; 2 uses
  %i.u = zext <8 x i16> %wide.load to <8 x i32>   ; 2 uses
  %i.v = uitofp <8 x i16> %wide.load to <8 x float>
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %.03238, i64 %index
  %wide.load56 = load <8 x i16>, ptr %i.w, align 2, !tbaa !63, !alias.scope !1188
  %i.x = zext <8 x i16> %wide.load56 to <8 x i32>
  %i.y = add nuw nsw <8 x i32> %i.x, %i.u
  %i.z = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.y, <8 x i32> splat (i32 4095))
  %i.aa = sub nsw <8 x i32> %i.z, %i.u
  %i.ab = sitofp nsz <8 x i32> %i.aa to <8 x float>
  %i.ac = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ab, <8 x float> %broadcast.splat, <8 x float> %i.v)
  %i.ad = fptoui <8 x float> %i.ac to <8 x i16>
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.03337, i64 %index
  store <8 x i16> %i.ad, ptr %i.ae, align 2, !tbaa !63, !alias.scope !1189, !noalias !1190
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1184

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge41.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ag = getelementptr inbounds i8, ptr %.03337, i64 %5
  %i.ah = getelementptr inbounds i8, ptr %.03139, i64 %1
  %i.ai = getelementptr inbounds i8, ptr %.03238, i64 %3
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next44, %7
  br i1 %exitcond46.not, label %._crit_edge41.split, label %.preheader, !llvm.loop !1185

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %.03139, i64 %indvars.iv
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !63 ; 2 uses
  %i.al = zext i16 %i.ak to i32                   ; 2 uses
  %i.am = uitofp i16 %i.ak to float
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.03238, i64 %indvars.iv
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !63
  %i.ap = zext i16 %i.ao to i32
  %i.aq = add nuw nsw i32 %i.ap, %i.al
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.aq, i32 4095)
  %i.ar = sub nsw i32 %spec.select, %i.al
  %i.as = sitofp nsz i32 %i.ar to float
  %i.at = tail call nsz float @llvm.fmuladd.f32(float %i.as, float %i.c, float %i.am)
  %i.au = fptoui float %i.at to i16
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.03337, i64 %indvars.iv
  store i16 %i.au, ptr %i.av, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1186
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_grainmerge_12bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 2 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge36.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %5, %i.f
  %i.h = shl nuw i64 %6, 1                        ; 3 uses
  %i.i = getelementptr i8, ptr %4, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h ; 2 uses
  %i.j = mul i64 %1, %i.f
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep43 = getelementptr i8, ptr %i.k, i64 %i.h
  %i.l = mul i64 %3, %i.f
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %scevgep44 = getelementptr i8, ptr %i.m, i64 %i.h
  %min.iters.check = icmp ult i64 %6, 8
  %bound0 = icmp ult ptr %4, %scevgep43
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound046 = icmp ult ptr %4, %scevgep44
  %bound147 = icmp ult ptr %2, %scevgep
  %found.conflict48 = and i1 %bound046, %bound147
  %i.q = or i64 %3, %5
  %i.r = icmp slt i64 %i.q, 0
  %i.s = or i1 %found.conflict48, %i.r
  %conflict.rdx = or i1 %i.p, %i.s
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02734 = phi ptr [ %i.al, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.02833 = phi ptr [ %i.am, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.02932 = phi ptr [ %i.ak, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.02734, i64 %index
  %wide.load = load <8 x i16>, ptr %i.t, align 2, !tbaa !63, !alias.scope !1198 ; 2 uses
  %i.u = zext <8 x i16> %wide.load to <8 x i32>   ; 2 uses
  %i.v = uitofp <8 x i16> %wide.load to <8 x float>
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %.02833, i64 %index
  %wide.load51 = load <8 x i16>, ptr %i.w, align 2, !tbaa !63, !alias.scope !1199
  %i.x = zext <8 x i16> %wide.load51 to <8 x i32>
  %i.y = add nuw nsw <8 x i32> %i.x, %i.u         ; 2 uses
  %i.z = add nsw <8 x i32> %i.y, splat (i32 -2048) ; 2 uses
  %i.aa = icmp ult <8 x i32> %i.z, splat (i32 4096)
  %i.ab = icmp samesign ult <8 x i32> %i.y, splat (i32 2048)
  %i.ac = select <8 x i1> %i.ab, <8 x i32> zeroinitializer, <8 x i32> splat (i32 4095)
  %i.ad = select <8 x i1> %i.aa, <8 x i32> %i.z, <8 x i32> %i.ac
  %i.ae = sub nsw <8 x i32> %i.ad, %i.u
  %i.af = sitofp nsz <8 x i32> %i.ae to <8 x float>
  %i.ag = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.af, <8 x float> %broadcast.splat, <8 x float> %i.v)
  %i.ah = fptoui <8 x float> %i.ag to <8 x i16>
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %.02932, i64 %index
  store <8 x i16> %i.ah, ptr %i.ai, align 2, !tbaa !63, !alias.scope !1200, !noalias !1201
  %index.next = add nuw i64 %index, 8             ; 2 uses
end_hunk_2
begin_hunk_3_@blend_stain_12bit:bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ag = getelementptr inbounds i8, ptr %.02933, i64 %5
  %i.ah = getelementptr inbounds i8, ptr %.02735, i64 %1
  %i.ai = getelementptr inbounds i8, ptr %.02834, i64 %3
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next40, %7
  br i1 %exitcond42.not, label %._crit_edge37.split, label %.preheader, !llvm.loop !1426

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %.02735, i64 %indvars.iv
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !63 ; 2 uses
  %i.al = zext i16 %i.ak to i32
  %i.am = uitofp i16 %i.ak to float
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.02834, i64 %indvars.iv
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !63
  %i.ap = zext i16 %i.ao to i32
  %reass.add.neg = mul nsw i32 %i.al, -2
  %reass.sub = sub nsw i32 %reass.add.neg, %i.ap
  %i.aq = add nsw i32 %reass.sub, 8190
  %i.ar = sitofp nsz i32 %i.aq to float
  %i.as = tail call nsz float @llvm.fmuladd.f32(float %i.ar, float %i.c, float %i.am)
  %i.at = fptoui float %i.as to i16
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %.02933, i64 %indvars.iv
  store i16 %i.at, ptr %i.au, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1427
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_interpolate_12bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 2 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge36.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %5, %i.f
  %i.h = shl nuw i64 %6, 1                        ; 3 uses
  %i.i = getelementptr i8, ptr %4, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h ; 2 uses
  %i.j = mul i64 %1, %i.f
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep43 = getelementptr i8, ptr %i.k, i64 %i.h
  %i.l = mul i64 %3, %i.f
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %scevgep44 = getelementptr i8, ptr %i.m, i64 %i.h
  %min.iters.check = icmp ult i64 %6, 8
  %bound0 = icmp ult ptr %4, %scevgep43
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound046 = icmp ult ptr %4, %scevgep44
  %bound147 = icmp ult ptr %2, %scevgep
  %found.conflict48 = and i1 %bound046, %bound147
  %i.q = or i64 %3, %5
  %i.r = icmp slt i64 %i.q, 0
  %i.s = or i1 %found.conflict48, %i.r
  %conflict.rdx = or i1 %i.p, %i.s
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02734 = phi ptr [ %i.at, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.02833 = phi ptr [ %i.au, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.02932 = phi ptr [ %i.as, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.02734, i64 %index
  %wide.load = load <8 x i16>, ptr %i.t, align 2, !tbaa !63, !alias.scope !1439 ; 3 uses
  %i.u = uitofp <8 x i16> %wide.load to <8 x float>
  %i.v = uitofp <8 x i16> %wide.load to <8 x double>
  %i.w = fmul nnan nsz <8 x double> %i.v, splat (double f0x400921FB54442D18)
  %i.x = fdiv nsz <8 x double> %i.w, splat (double 4.095000e+03)
  %i.y = fptrunc nsz <8 x double> %i.x to <8 x float>
  %i.z = tail call nsz <8 x float> @llvm.cos.v8f32(<8 x float> %i.y)
  %i.aa = fsub nsz <8 x float> splat (float 2.000000e+00), %i.z
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %.02833, i64 %index
  %wide.load51 = load <8 x i16>, ptr %i.ab, align 2, !tbaa !63, !alias.scope !1440
  %i.ac = uitofp <8 x i16> %wide.load51 to <8 x double>
  %i.ad = fmul nnan nsz <8 x double> %i.ac, splat (double f0x400921FB54442D18)
  %i.ae = fdiv nsz <8 x double> %i.ad, splat (double 4.095000e+03)
  %i.af = fptrunc nsz <8 x double> %i.ae to <8 x float>
  %i.ag = tail call nsz <8 x float> @llvm.cos.v8f32(<8 x float> %i.af)
  %i.ah = fsub nsz <8 x float> %i.aa, %i.ag
  %i.ai = fmul nsz <8 x float> %i.ah, splat (float 4.095000e+03)
  %i.aj = fmul nsz <8 x float> %i.ai, splat (float 2.500000e-01)
  %i.ak = tail call <8 x i64> @llvm.lrint.v8i64.v8f32(<8 x float> %i.aj)
  %i.al = zext <8 x i16> %wide.load to <8 x i64>
  %i.am = sub nsw <8 x i64> %i.ak, %i.al
  %i.an = sitofp nsz <8 x i64> %i.am to <8 x float>
  %i.ao = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.an, <8 x float> %broadcast.splat, <8 x float> %i.u)
  %i.ap = fptoui <8 x float> %i.ao to <8 x i16>
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %.02932, i64 %index
  store <8 x i16> %i.ap, ptr %i.aq, align 2, !tbaa !63, !alias.scope !1441, !noalias !1442
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !1436

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge36.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.as = getelementptr inbounds i8, ptr %.02932, i64 %5
  %i.at = getelementptr inbounds i8, ptr %.02734, i64 %1
  %i.au = getelementptr inbounds i8, ptr %.02833, i64 %3
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next39, %7
  br i1 %exitcond41.not, label %._crit_edge36.split, label %.preheader, !llvm.loop !1437

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.02734, i64 %indvars.iv
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !63 ; 3 uses
  %i.ax = uitofp i16 %i.aw to float
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %.02833, i64 %indvars.iv
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !63
  %i.ba = insertelement <2 x i16> poison, i16 %i.aw, i64 0
  %i.bb = insertelement <2 x i16> %i.ba, i16 %i.az, i64 1
  %i.bc = uitofp <2 x i16> %i.bb to <2 x double>
  %i.bd = fmul nnan nsz <2 x double> %i.bc, splat (double f0x400921FB54442D18)
  %i.be = fdiv nsz <2 x double> %i.bd, splat (double 4.095000e+03)
  %i.bf = fptrunc <2 x double> %i.be to <2 x float> ; 2 uses
  %i.bg = extractelement <2 x float> %i.bf, i64 0
  %i.bh = tail call nsz float @llvm.cos.f32(float %i.bg)
  %i.bi = fsub nsz float 2.000000e+00, %i.bh
  %i.bj = extractelement <2 x float> %i.bf, i64 1
  %i.bk = tail call nsz float @llvm.cos.f32(float %i.bj)
  %i.bl = fsub nsz float %i.bi, %i.bk
  %i.bm = fmul nsz float %i.bl, 4.095000e+03
  %i.bn = fmul nsz float %i.bm, 2.500000e-01
  %i.bo = tail call i64 @llvm.lrint.i64.f32(float %i.bn)
  %i.bp = zext i16 %i.aw to i64
  %i.bq = sub nsw i64 %i.bo, %i.bp
  %i.br = sitofp nsz i64 %i.bq to float
  %i.bs = tail call nsz float @llvm.fmuladd.f32(float %i.br, float %i.c, float %i.ax)
  %i.bt = fptoui float %i.bs to i16
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.02932, i64 %indvars.iv
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1438
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_hardoverlay_12bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader, label %._crit_edge60.split

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %._crit_edge ], [ 0, %bb.a ]
  %.04958 = phi ptr [ %i.g, %._crit_edge ], [ %0, %bb.a ] ; 2 uses
  %.05057 = phi ptr [ %i.h, %._crit_edge ], [ %2, %bb.a ] ; 2 uses
  %.05156 = phi ptr [ %i.f, %._crit_edge ], [ %4, %bb.a ] ; 2 uses
  br label %bb.b

._crit_edge60.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %._crit_edge66
  %i.f = getelementptr inbounds i8, ptr %.05156, i64 %5
  %i.g = getelementptr inbounds i8, ptr %.04958, i64 %1
  %i.h = getelementptr inbounds i8, ptr %.05057, i64 %3
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next63, %7
  br i1 %exitcond65.not, label %._crit_edge60.split, label %.preheader, !llvm.loop !1443

bb.b:                                             ; preds = %.preheader, %._crit_edge66
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge66 ] ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %.04958, i64 %indvars.iv
  %i.j = load i16, ptr %i.i, align 2, !tbaa !63   ; 5 uses
  %i.k = uitofp i16 %i.j to float
  %i.l = icmp eq i16 %i.j, 4095
  br i1 %i.l, label %._crit_edge66, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = zext i16 %i.j to i32                     ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %.05057, i64 %indvars.iv
  %i.o = load i16, ptr %i.n, align 2, !tbaa !63
  %i.p = zext i16 %i.o to i32                     ; 2 uses
  %i.q = mul nuw nsw i32 %i.p, 4095
  %i.r = shl nuw nsw i32 %i.m, 1                  ; 2 uses
  %i.s = sub nsw i32 8190, %i.r
  %i.t = sdiv i32 %i.q, %i.s
  %i.u = icmp ugt i16 %i.j, 2048
  %10 = select i1 %i.u, i32 %i.t, i32 0
  %i.v = mul nuw nsw i32 %i.r, %i.p
  %i.w = udiv i32 %i.v, 4095
  %11 = icmp ult i16 %i.j, 2049
  %i.x = select i1 %11, i32 %i.w, i32 0
  %12 = add nsw i32 %i.x, %10
  %spec.select = tail call i32 @llvm.smin.i32(i32 %12, i32 4095)
  %i.y = sub nsw i32 %spec.select, %i.m
  %i.z = sitofp nsz i32 %i.y to float
  br label %._crit_edge66

._crit_edge66:                                    ; preds = %bb.b, %bb.c
  %i.aa = phi float [ %i.z, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.ab = tail call nsz float @llvm.fmuladd.f32(float %i.aa, float %i.c, float %i.k)
  %i.ac = fptoui float %i.ab to i16
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.05156, i64 %indvars.iv
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1444
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_addition_14bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 2 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge41.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %5, %i.f
  %i.h = shl nuw i64 %6, 1                        ; 3 uses
  %i.i = getelementptr i8, ptr %4, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h ; 2 uses
  %i.j = mul i64 %1, %i.f
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep48 = getelementptr i8, ptr %i.k, i64 %i.h
  %i.l = mul i64 %3, %i.f
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %scevgep49 = getelementptr i8, ptr %i.m, i64 %i.h
  %min.iters.check = icmp ult i64 %6, 8
  %bound0 = icmp ult ptr %4, %scevgep48
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound051 = icmp ult ptr %4, %scevgep49
  %bound152 = icmp ult ptr %2, %scevgep
  %found.conflict53 = and i1 %bound051, %bound152
  %i.q = or i64 %3, %5
  %i.r = icmp slt i64 %i.q, 0
  %i.s = or i1 %found.conflict53, %i.r
  %conflict.rdx = or i1 %i.p, %i.s
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.03139 = phi ptr [ %i.ah, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.03238 = phi ptr [ %i.ai, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.03337 = phi ptr [ %i.ag, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.03139, i64 %index
  %wide.load = load <8 x i16>, ptr %i.t, align 2, !tbaa !63, !alias.scope !1452 ; 2 uses
  %i.u = zext <8 x i16> %wide.load to <8 x i32>   ; 2 uses
  %i.v = uitofp <8 x i16> %wide.load to <8 x float>
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %.03238, i64 %index
  %wide.load56 = load <8 x i16>, ptr %i.w, align 2, !tbaa !63, !alias.scope !1453
  %i.x = zext <8 x i16> %wide.load56 to <8 x i32>
  %i.y = add nuw nsw <8 x i32> %i.x, %i.u
  %i.z = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.y, <8 x i32> splat (i32 16383))
  %i.aa = sub nsw <8 x i32> %i.z, %i.u
  %i.ab = sitofp nsz <8 x i32> %i.aa to <8 x float>
  %i.ac = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ab, <8 x float> %broadcast.splat, <8 x float> %i.v)
  %i.ad = fptoui <8 x float> %i.ac to <8 x i16>
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.03337, i64 %index
  store <8 x i16> %i.ad, ptr %i.ae, align 2, !tbaa !63, !alias.scope !1454, !noalias !1455
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1449

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge41.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ag = getelementptr inbounds i8, ptr %.03337, i64 %5
  %i.ah = getelementptr inbounds i8, ptr %.03139, i64 %1
  %i.ai = getelementptr inbounds i8, ptr %.03238, i64 %3
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next44, %7
  br i1 %exitcond46.not, label %._crit_edge41.split, label %.preheader, !llvm.loop !1450

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %.03139, i64 %indvars.iv
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !63 ; 2 uses
  %i.al = zext i16 %i.ak to i32                   ; 2 uses
  %i.am = uitofp i16 %i.ak to float
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.03238, i64 %indvars.iv
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !63
  %i.ap = zext i16 %i.ao to i32
  %i.aq = add nuw nsw i32 %i.ap, %i.al
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.aq, i32 16383)
  %i.ar = sub nsw i32 %spec.select, %i.al
  %i.as = sitofp nsz i32 %i.ar to float
  %i.at = tail call nsz float @llvm.fmuladd.f32(float %i.as, float %i.c, float %i.am)
  %i.au = fptoui float %i.at to i16
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.03337, i64 %indvars.iv
  store i16 %i.au, ptr %i.av, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1451
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_grainmerge_14bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 2 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge36.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %5, %i.f
  %i.h = shl nuw i64 %6, 1                        ; 3 uses
  %i.i = getelementptr i8, ptr %4, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h ; 2 uses
  %i.j = mul i64 %1, %i.f
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep43 = getelementptr i8, ptr %i.k, i64 %i.h
  %i.l = mul i64 %3, %i.f
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %scevgep44 = getelementptr i8, ptr %i.m, i64 %i.h
  %min.iters.check = icmp ult i64 %6, 8
  %bound0 = icmp ult ptr %4, %scevgep43
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound046 = icmp ult ptr %4, %scevgep44
  %bound147 = icmp ult ptr %2, %scevgep
  %found.conflict48 = and i1 %bound046, %bound147
  %i.q = or i64 %3, %5
  %i.r = icmp slt i64 %i.q, 0
  %i.s = or i1 %found.conflict48, %i.r
  %conflict.rdx = or i1 %i.p, %i.s
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02734 = phi ptr [ %i.al, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.02833 = phi ptr [ %i.am, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.02932 = phi ptr [ %i.ak, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.02734, i64 %index
  %wide.load = load <8 x i16>, ptr %i.t, align 2, !tbaa !63, !alias.scope !1463 ; 2 uses
  %i.u = zext <8 x i16> %wide.load to <8 x i32>   ; 2 uses
  %i.v = uitofp <8 x i16> %wide.load to <8 x float>
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %.02833, i64 %index
  %wide.load51 = load <8 x i16>, ptr %i.w, align 2, !tbaa !63, !alias.scope !1464
  %i.x = zext <8 x i16> %wide.load51 to <8 x i32>
  %i.y = add nuw nsw <8 x i32> %i.x, %i.u         ; 2 uses
  %i.z = add nsw <8 x i32> %i.y, splat (i32 -8192) ; 2 uses
  %i.aa = icmp ult <8 x i32> %i.z, splat (i32 16384)
  %i.ab = icmp samesign ult <8 x i32> %i.y, splat (i32 8192)
  %i.ac = select <8 x i1> %i.ab, <8 x i32> zeroinitializer, <8 x i32> splat (i32 16383)
  %i.ad = select <8 x i1> %i.aa, <8 x i32> %i.z, <8 x i32> %i.ac
  %i.ae = sub nsw <8 x i32> %i.ad, %i.u
  %i.af = sitofp nsz <8 x i32> %i.ae to <8 x float>
  %i.ag = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.af, <8 x float> %broadcast.splat, <8 x float> %i.v)
  %i.ah = fptoui <8 x float> %i.ag to <8 x i16>
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %.02932, i64 %index
  store <8 x i16> %i.ah, ptr %i.ai, align 2, !tbaa !63, !alias.scope !1465, !noalias !1466
  %index.next = add nuw i64 %index, 8             ; 2 uses
end_hunk_3
begin_hunk_4_@blend_stain_14bit:bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ag = getelementptr inbounds i8, ptr %.02933, i64 %5
  %i.ah = getelementptr inbounds i8, ptr %.02735, i64 %1
  %i.ai = getelementptr inbounds i8, ptr %.02834, i64 %3
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next40, %7
  br i1 %exitcond42.not, label %._crit_edge37.split, label %.preheader, !llvm.loop !1691

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %.02735, i64 %indvars.iv
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !63 ; 2 uses
  %i.al = zext i16 %i.ak to i32
  %i.am = uitofp i16 %i.ak to float
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.02834, i64 %indvars.iv
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !63
  %i.ap = zext i16 %i.ao to i32
  %reass.add.neg = mul nsw i32 %i.al, -2
  %reass.sub = sub nsw i32 %reass.add.neg, %i.ap
  %i.aq = add nsw i32 %reass.sub, 32766
  %i.ar = sitofp nsz i32 %i.aq to float
  %i.as = tail call nsz float @llvm.fmuladd.f32(float %i.ar, float %i.c, float %i.am)
  %i.at = fptoui float %i.as to i16
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %.02933, i64 %indvars.iv
  store i16 %i.at, ptr %i.au, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1692
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_interpolate_14bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 2 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge36.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %5, %i.f
  %i.h = shl nuw i64 %6, 1                        ; 3 uses
  %i.i = getelementptr i8, ptr %4, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h ; 2 uses
  %i.j = mul i64 %1, %i.f
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep43 = getelementptr i8, ptr %i.k, i64 %i.h
  %i.l = mul i64 %3, %i.f
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %scevgep44 = getelementptr i8, ptr %i.m, i64 %i.h
  %min.iters.check = icmp ult i64 %6, 8
  %bound0 = icmp ult ptr %4, %scevgep43
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound046 = icmp ult ptr %4, %scevgep44
  %bound147 = icmp ult ptr %2, %scevgep
  %found.conflict48 = and i1 %bound046, %bound147
  %i.q = or i64 %3, %5
  %i.r = icmp slt i64 %i.q, 0
  %i.s = or i1 %found.conflict48, %i.r
  %conflict.rdx = or i1 %i.p, %i.s
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02734 = phi ptr [ %i.at, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.02833 = phi ptr [ %i.au, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.02932 = phi ptr [ %i.as, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.02734, i64 %index
  %wide.load = load <8 x i16>, ptr %i.t, align 2, !tbaa !63, !alias.scope !1704 ; 3 uses
  %i.u = uitofp <8 x i16> %wide.load to <8 x float>
  %i.v = uitofp <8 x i16> %wide.load to <8 x double>
  %i.w = fmul nnan nsz <8 x double> %i.v, splat (double f0x400921FB54442D18)
  %i.x = fdiv nsz <8 x double> %i.w, splat (double 1.638300e+04)
  %i.y = fptrunc nsz <8 x double> %i.x to <8 x float>
  %i.z = tail call nsz <8 x float> @llvm.cos.v8f32(<8 x float> %i.y)
  %i.aa = fsub nsz <8 x float> splat (float 2.000000e+00), %i.z
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %.02833, i64 %index
  %wide.load51 = load <8 x i16>, ptr %i.ab, align 2, !tbaa !63, !alias.scope !1705
  %i.ac = uitofp <8 x i16> %wide.load51 to <8 x double>
  %i.ad = fmul nnan nsz <8 x double> %i.ac, splat (double f0x400921FB54442D18)
  %i.ae = fdiv nsz <8 x double> %i.ad, splat (double 1.638300e+04)
  %i.af = fptrunc nsz <8 x double> %i.ae to <8 x float>
  %i.ag = tail call nsz <8 x float> @llvm.cos.v8f32(<8 x float> %i.af)
  %i.ah = fsub nsz <8 x float> %i.aa, %i.ag
  %i.ai = fmul nsz <8 x float> %i.ah, splat (float 1.638300e+04)
  %i.aj = fmul nsz <8 x float> %i.ai, splat (float 2.500000e-01)
  %i.ak = tail call <8 x i64> @llvm.lrint.v8i64.v8f32(<8 x float> %i.aj)
  %i.al = zext <8 x i16> %wide.load to <8 x i64>
  %i.am = sub nsw <8 x i64> %i.ak, %i.al
  %i.an = sitofp nsz <8 x i64> %i.am to <8 x float>
  %i.ao = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.an, <8 x float> %broadcast.splat, <8 x float> %i.u)
  %i.ap = fptoui <8 x float> %i.ao to <8 x i16>
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %.02932, i64 %index
  store <8 x i16> %i.ap, ptr %i.aq, align 2, !tbaa !63, !alias.scope !1706, !noalias !1707
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !1701

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge36.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.as = getelementptr inbounds i8, ptr %.02932, i64 %5
  %i.at = getelementptr inbounds i8, ptr %.02734, i64 %1
  %i.au = getelementptr inbounds i8, ptr %.02833, i64 %3
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next39, %7
  br i1 %exitcond41.not, label %._crit_edge36.split, label %.preheader, !llvm.loop !1702

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.02734, i64 %indvars.iv
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !63 ; 3 uses
  %i.ax = uitofp i16 %i.aw to float
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %.02833, i64 %indvars.iv
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !63
  %i.ba = insertelement <2 x i16> poison, i16 %i.aw, i64 0
  %i.bb = insertelement <2 x i16> %i.ba, i16 %i.az, i64 1
  %i.bc = uitofp <2 x i16> %i.bb to <2 x double>
  %i.bd = fmul nnan nsz <2 x double> %i.bc, splat (double f0x400921FB54442D18)
  %i.be = fdiv nsz <2 x double> %i.bd, splat (double 1.638300e+04)
  %i.bf = fptrunc <2 x double> %i.be to <2 x float> ; 2 uses
  %i.bg = extractelement <2 x float> %i.bf, i64 0
  %i.bh = tail call nsz float @llvm.cos.f32(float %i.bg)
  %i.bi = fsub nsz float 2.000000e+00, %i.bh
  %i.bj = extractelement <2 x float> %i.bf, i64 1
  %i.bk = tail call nsz float @llvm.cos.f32(float %i.bj)
  %i.bl = fsub nsz float %i.bi, %i.bk
  %i.bm = fmul nsz float %i.bl, 1.638300e+04
  %i.bn = fmul nsz float %i.bm, 2.500000e-01
  %i.bo = tail call i64 @llvm.lrint.i64.f32(float %i.bn)
  %i.bp = zext i16 %i.aw to i64
  %i.bq = sub nsw i64 %i.bo, %i.bp
  %i.br = sitofp nsz i64 %i.bq to float
  %i.bs = tail call nsz float @llvm.fmuladd.f32(float %i.br, float %i.c, float %i.ax)
  %i.bt = fptoui float %i.bs to i16
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.02932, i64 %indvars.iv
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1703
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_hardoverlay_14bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader, label %._crit_edge60.split

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %._crit_edge ], [ 0, %bb.a ]
  %.04958 = phi ptr [ %i.g, %._crit_edge ], [ %0, %bb.a ] ; 2 uses
  %.05057 = phi ptr [ %i.h, %._crit_edge ], [ %2, %bb.a ] ; 2 uses
  %.05156 = phi ptr [ %i.f, %._crit_edge ], [ %4, %bb.a ] ; 2 uses
  br label %bb.b

._crit_edge60.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %._crit_edge66
  %i.f = getelementptr inbounds i8, ptr %.05156, i64 %5
  %i.g = getelementptr inbounds i8, ptr %.04958, i64 %1
  %i.h = getelementptr inbounds i8, ptr %.05057, i64 %3
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next63, %7
  br i1 %exitcond65.not, label %._crit_edge60.split, label %.preheader, !llvm.loop !1708

bb.b:                                             ; preds = %.preheader, %._crit_edge66
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge66 ] ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %.04958, i64 %indvars.iv
  %i.j = load i16, ptr %i.i, align 2, !tbaa !63   ; 5 uses
  %i.k = uitofp i16 %i.j to float
  %i.l = icmp eq i16 %i.j, 16383
  br i1 %i.l, label %._crit_edge66, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = zext i16 %i.j to i32                     ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %.05057, i64 %indvars.iv
  %i.o = load i16, ptr %i.n, align 2, !tbaa !63
  %i.p = zext i16 %i.o to i32                     ; 2 uses
  %i.q = mul nuw nsw i32 %i.p, 16383
  %i.r = shl nuw nsw i32 %i.m, 1                  ; 2 uses
  %i.s = sub nsw i32 32766, %i.r
  %i.t = sdiv i32 %i.q, %i.s
  %i.u = icmp ugt i16 %i.j, 8192
  %10 = select i1 %i.u, i32 %i.t, i32 0
  %i.v = mul nuw nsw i32 %i.r, %i.p
  %i.w = udiv i32 %i.v, 16383
  %11 = icmp ult i16 %i.j, 8193
  %i.x = select i1 %11, i32 %i.w, i32 0
  %12 = add nsw i32 %i.x, %10
  %spec.select = tail call i32 @llvm.smin.i32(i32 %12, i32 16383)
  %i.y = sub nsw i32 %spec.select, %i.m
  %i.z = sitofp nsz i32 %i.y to float
  br label %._crit_edge66

._crit_edge66:                                    ; preds = %bb.b, %bb.c
  %i.aa = phi float [ %i.z, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.ab = tail call nsz float @llvm.fmuladd.f32(float %i.aa, float %i.c, float %i.k)
  %i.ac = fptoui float %i.ab to i16
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.05156, i64 %indvars.iv
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1709
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_addition_16bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 2 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge41.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %5, %i.f
  %i.h = shl nuw i64 %6, 1                        ; 3 uses
  %i.i = getelementptr i8, ptr %4, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h ; 2 uses
  %i.j = mul i64 %1, %i.f
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep48 = getelementptr i8, ptr %i.k, i64 %i.h
  %i.l = mul i64 %3, %i.f
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %scevgep49 = getelementptr i8, ptr %i.m, i64 %i.h
  %min.iters.check = icmp ult i64 %6, 8
  %bound0 = icmp ult ptr %4, %scevgep48
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound051 = icmp ult ptr %4, %scevgep49
  %bound152 = icmp ult ptr %2, %scevgep
  %found.conflict53 = and i1 %bound051, %bound152
  %i.q = or i64 %3, %5
  %i.r = icmp slt i64 %i.q, 0
  %i.s = or i1 %found.conflict53, %i.r
  %conflict.rdx = or i1 %i.p, %i.s
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.03139 = phi ptr [ %i.ah, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.03238 = phi ptr [ %i.ai, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.03337 = phi ptr [ %i.ag, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.03139, i64 %index
  %wide.load = load <8 x i16>, ptr %i.t, align 2, !tbaa !63, !alias.scope !1717 ; 2 uses
  %i.u = zext <8 x i16> %wide.load to <8 x i32>   ; 2 uses
  %i.v = uitofp <8 x i16> %wide.load to <8 x float>
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %.03238, i64 %index
  %wide.load56 = load <8 x i16>, ptr %i.w, align 2, !tbaa !63, !alias.scope !1718
  %i.x = zext <8 x i16> %wide.load56 to <8 x i32>
  %i.y = add nuw nsw <8 x i32> %i.x, %i.u
  %i.z = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.y, <8 x i32> splat (i32 65535))
  %i.aa = sub nsw <8 x i32> %i.z, %i.u
  %i.ab = sitofp nsz <8 x i32> %i.aa to <8 x float>
  %i.ac = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ab, <8 x float> %broadcast.splat, <8 x float> %i.v)
  %i.ad = fptoui <8 x float> %i.ac to <8 x i16>
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.03337, i64 %index
  store <8 x i16> %i.ad, ptr %i.ae, align 2, !tbaa !63, !alias.scope !1719, !noalias !1720
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1714

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge41.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ag = getelementptr inbounds i8, ptr %.03337, i64 %5
  %i.ah = getelementptr inbounds i8, ptr %.03139, i64 %1
  %i.ai = getelementptr inbounds i8, ptr %.03238, i64 %3
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next44, %7
  br i1 %exitcond46.not, label %._crit_edge41.split, label %.preheader, !llvm.loop !1715

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %.03139, i64 %indvars.iv
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !63 ; 2 uses
  %i.al = zext i16 %i.ak to i32                   ; 2 uses
  %i.am = uitofp i16 %i.ak to float
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.03238, i64 %indvars.iv
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !63
  %i.ap = zext i16 %i.ao to i32
  %i.aq = add nuw nsw i32 %i.ap, %i.al
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.aq, i32 65535)
  %i.ar = sub nsw i32 %spec.select, %i.al
  %i.as = sitofp nsz i32 %i.ar to float
  %i.at = tail call nsz float @llvm.fmuladd.f32(float %i.as, float %i.c, float %i.am)
  %i.au = fptoui float %i.at to i16
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.03337, i64 %indvars.iv
  store i16 %i.au, ptr %i.av, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1716
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_grainmerge_16bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 2 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge36.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %5, %i.f
  %i.h = shl nuw i64 %6, 1                        ; 3 uses
  %i.i = getelementptr i8, ptr %4, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h ; 2 uses
  %i.j = mul i64 %1, %i.f
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep43 = getelementptr i8, ptr %i.k, i64 %i.h
  %i.l = mul i64 %3, %i.f
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %scevgep44 = getelementptr i8, ptr %i.m, i64 %i.h
  %min.iters.check = icmp ult i64 %6, 8
  %bound0 = icmp ult ptr %4, %scevgep43
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound046 = icmp ult ptr %4, %scevgep44
  %bound147 = icmp ult ptr %2, %scevgep
  %found.conflict48 = and i1 %bound046, %bound147
  %i.q = or i64 %3, %5
  %i.r = icmp slt i64 %i.q, 0
  %i.s = or i1 %found.conflict48, %i.r
  %conflict.rdx = or i1 %i.p, %i.s
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02734 = phi ptr [ %i.al, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.02833 = phi ptr [ %i.am, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.02932 = phi ptr [ %i.ak, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.02734, i64 %index
  %wide.load = load <8 x i16>, ptr %i.t, align 2, !tbaa !63, !alias.scope !1728 ; 2 uses
  %i.u = zext <8 x i16> %wide.load to <8 x i32>   ; 2 uses
  %i.v = uitofp <8 x i16> %wide.load to <8 x float>
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %.02833, i64 %index
  %wide.load51 = load <8 x i16>, ptr %i.w, align 2, !tbaa !63, !alias.scope !1729
  %i.x = zext <8 x i16> %wide.load51 to <8 x i32>
  %i.y = add nuw nsw <8 x i32> %i.x, %i.u         ; 2 uses
  %i.z = add nsw <8 x i32> %i.y, splat (i32 -32768) ; 2 uses
  %i.aa = icmp ult <8 x i32> %i.z, splat (i32 65536)
  %i.ab = icmp samesign ult <8 x i32> %i.y, splat (i32 32768)
  %i.ac = select <8 x i1> %i.ab, <8 x i32> zeroinitializer, <8 x i32> splat (i32 65535)
  %i.ad = select <8 x i1> %i.aa, <8 x i32> %i.z, <8 x i32> %i.ac
  %i.ae = sub nsw <8 x i32> %i.ad, %i.u
  %i.af = sitofp nsz <8 x i32> %i.ae to <8 x float>
  %i.ag = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.af, <8 x float> %broadcast.splat, <8 x float> %i.v)
  %i.ah = fptoui <8 x float> %i.ag to <8 x i16>
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %.02932, i64 %index
  store <8 x i16> %i.ah, ptr %i.ai, align 2, !tbaa !63, !alias.scope !1730, !noalias !1731
  %index.next = add nuw i64 %index, 8             ; 2 uses
end_hunk_4
begin_hunk_5_@blend_stain_16bit:bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ag = getelementptr inbounds i8, ptr %.02933, i64 %5
  %i.ah = getelementptr inbounds i8, ptr %.02735, i64 %1
  %i.ai = getelementptr inbounds i8, ptr %.02834, i64 %3
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next40, %7
  br i1 %exitcond42.not, label %._crit_edge37.split, label %.preheader, !llvm.loop !1956

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %.02735, i64 %indvars.iv
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !63 ; 2 uses
  %i.al = zext i16 %i.ak to i32
  %i.am = uitofp i16 %i.ak to float
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.02834, i64 %indvars.iv
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !63
  %i.ap = zext i16 %i.ao to i32
  %reass.add.neg = mul nsw i32 %i.al, -2
  %reass.sub = sub nsw i32 %reass.add.neg, %i.ap
  %i.aq = add nsw i32 %reass.sub, 131070
  %i.ar = sitofp nsz i32 %i.aq to float
  %i.as = tail call nsz float @llvm.fmuladd.f32(float %i.ar, float %i.c, float %i.am)
  %i.at = fptoui float %i.as to i16
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %.02933, i64 %indvars.iv
  store i16 %i.at, ptr %i.au, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1957
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_interpolate_16bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 2 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge36.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %5, %i.f
  %i.h = shl nuw i64 %6, 1                        ; 3 uses
  %i.i = getelementptr i8, ptr %4, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h ; 2 uses
  %i.j = mul i64 %1, %i.f
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep43 = getelementptr i8, ptr %i.k, i64 %i.h
  %i.l = mul i64 %3, %i.f
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %scevgep44 = getelementptr i8, ptr %i.m, i64 %i.h
  %min.iters.check = icmp ult i64 %6, 8
  %bound0 = icmp ult ptr %4, %scevgep43
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound046 = icmp ult ptr %4, %scevgep44
  %bound147 = icmp ult ptr %2, %scevgep
  %found.conflict48 = and i1 %bound046, %bound147
  %i.q = or i64 %3, %5
  %i.r = icmp slt i64 %i.q, 0
  %i.s = or i1 %found.conflict48, %i.r
  %conflict.rdx = or i1 %i.p, %i.s
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02734 = phi ptr [ %i.at, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.02833 = phi ptr [ %i.au, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.02932 = phi ptr [ %i.as, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.02734, i64 %index
  %wide.load = load <8 x i16>, ptr %i.t, align 2, !tbaa !63, !alias.scope !1969 ; 3 uses
  %i.u = uitofp <8 x i16> %wide.load to <8 x float>
  %i.v = uitofp <8 x i16> %wide.load to <8 x double>
  %i.w = fmul nnan nsz <8 x double> %i.v, splat (double f0x400921FB54442D18)
  %i.x = fdiv nsz <8 x double> %i.w, splat (double 6.553500e+04)
  %i.y = fptrunc nsz <8 x double> %i.x to <8 x float>
  %i.z = tail call nsz <8 x float> @llvm.cos.v8f32(<8 x float> %i.y)
  %i.aa = fsub nsz <8 x float> splat (float 2.000000e+00), %i.z
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %.02833, i64 %index
  %wide.load51 = load <8 x i16>, ptr %i.ab, align 2, !tbaa !63, !alias.scope !1970
  %i.ac = uitofp <8 x i16> %wide.load51 to <8 x double>
  %i.ad = fmul nnan nsz <8 x double> %i.ac, splat (double f0x400921FB54442D18)
  %i.ae = fdiv nsz <8 x double> %i.ad, splat (double 6.553500e+04)
  %i.af = fptrunc nsz <8 x double> %i.ae to <8 x float>
  %i.ag = tail call nsz <8 x float> @llvm.cos.v8f32(<8 x float> %i.af)
  %i.ah = fsub nsz <8 x float> %i.aa, %i.ag
  %i.ai = fmul nsz <8 x float> %i.ah, splat (float 6.553500e+04)
  %i.aj = fmul nsz <8 x float> %i.ai, splat (float 2.500000e-01)
  %i.ak = tail call <8 x i64> @llvm.lrint.v8i64.v8f32(<8 x float> %i.aj)
  %i.al = zext <8 x i16> %wide.load to <8 x i64>
  %i.am = sub nsw <8 x i64> %i.ak, %i.al
  %i.an = sitofp nsz <8 x i64> %i.am to <8 x float>
  %i.ao = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.an, <8 x float> %broadcast.splat, <8 x float> %i.u)
  %i.ap = fptoui <8 x float> %i.ao to <8 x i16>
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %.02932, i64 %index
  store <8 x i16> %i.ap, ptr %i.aq, align 2, !tbaa !63, !alias.scope !1971, !noalias !1972
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !1966

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge36.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.as = getelementptr inbounds i8, ptr %.02932, i64 %5
  %i.at = getelementptr inbounds i8, ptr %.02734, i64 %1
  %i.au = getelementptr inbounds i8, ptr %.02833, i64 %3
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next39, %7
  br i1 %exitcond41.not, label %._crit_edge36.split, label %.preheader, !llvm.loop !1967

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.02734, i64 %indvars.iv
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !63 ; 3 uses
  %i.ax = uitofp i16 %i.aw to float
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %.02833, i64 %indvars.iv
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !63
  %i.ba = insertelement <2 x i16> poison, i16 %i.aw, i64 0
  %i.bb = insertelement <2 x i16> %i.ba, i16 %i.az, i64 1
  %i.bc = uitofp <2 x i16> %i.bb to <2 x double>
  %i.bd = fmul nnan nsz <2 x double> %i.bc, splat (double f0x400921FB54442D18)
  %i.be = fdiv nsz <2 x double> %i.bd, splat (double 6.553500e+04)
  %i.bf = fptrunc <2 x double> %i.be to <2 x float> ; 2 uses
  %i.bg = extractelement <2 x float> %i.bf, i64 0
  %i.bh = tail call nsz float @llvm.cos.f32(float %i.bg)
  %i.bi = fsub nsz float 2.000000e+00, %i.bh
  %i.bj = extractelement <2 x float> %i.bf, i64 1
  %i.bk = tail call nsz float @llvm.cos.f32(float %i.bj)
  %i.bl = fsub nsz float %i.bi, %i.bk
  %i.bm = fmul nsz float %i.bl, 6.553500e+04
  %i.bn = fmul nsz float %i.bm, 2.500000e-01
  %i.bo = tail call i64 @llvm.lrint.i64.f32(float %i.bn)
  %i.bp = zext i16 %i.aw to i64
  %i.bq = sub nsw i64 %i.bo, %i.bp
  %i.br = sitofp nsz i64 %i.bq to float
  %i.bs = tail call nsz float @llvm.fmuladd.f32(float %i.br, float %i.c, float %i.ax)
  %i.bt = fptoui float %i.bs to i16
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.02932, i64 %indvars.iv
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1968
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_hardoverlay_16bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader, label %._crit_edge60.split

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %._crit_edge ], [ 0, %bb.a ]
  %.04958 = phi ptr [ %i.g, %._crit_edge ], [ %0, %bb.a ] ; 2 uses
  %.05057 = phi ptr [ %i.h, %._crit_edge ], [ %2, %bb.a ] ; 2 uses
  %.05156 = phi ptr [ %i.f, %._crit_edge ], [ %4, %bb.a ] ; 2 uses
  br label %bb.b

._crit_edge60.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %._crit_edge66
  %i.f = getelementptr inbounds i8, ptr %.05156, i64 %5
  %i.g = getelementptr inbounds i8, ptr %.04958, i64 %1
  %i.h = getelementptr inbounds i8, ptr %.05057, i64 %3
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next63, %7
  br i1 %exitcond65.not, label %._crit_edge60.split, label %.preheader, !llvm.loop !1973

bb.b:                                             ; preds = %.preheader, %._crit_edge66
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge66 ] ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %.04958, i64 %indvars.iv
  %i.j = load i16, ptr %i.i, align 2, !tbaa !63   ; 5 uses
  %i.k = uitofp i16 %i.j to float
  %i.l = icmp eq i16 %i.j, -1
  br i1 %i.l, label %._crit_edge66, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = zext i16 %i.j to i32                     ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %.05057, i64 %indvars.iv
  %i.o = load i16, ptr %i.n, align 2, !tbaa !63
  %i.p = zext i16 %i.o to i32                     ; 2 uses
  %i.q = mul nuw nsw i32 %i.p, 65535
  %i.r = shl nuw nsw i32 %i.m, 1                  ; 2 uses
  %i.s = sub nuw nsw i32 131070, %i.r
  %i.t = udiv i32 %i.q, %i.s
  %i.u = icmp ugt i16 %i.j, -32768
  %10 = select i1 %i.u, i32 %i.t, i32 0
  %i.v = mul nuw nsw i32 %i.r, %i.p
  %i.w = udiv i32 %i.v, 65535
  %11 = icmp ult i16 %i.j, -32767
  %i.x = select i1 %11, i32 %i.w, i32 0
  %12 = add nuw nsw i32 %i.x, %10
  %spec.select = tail call i32 @llvm.umin.i32(i32 %12, i32 65535)
  %i.y = sub nsw i32 %spec.select, %i.m
  %i.z = sitofp nsz i32 %i.y to float
  br label %._crit_edge66

._crit_edge66:                                    ; preds = %bb.b, %bb.c
  %i.aa = phi float [ %i.z, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.ab = tail call nsz float @llvm.fmuladd.f32(float %i.aa, float %i.c, float %i.k)
  %i.ac = fptoui float %i.ab to i16
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.05156, i64 %indvars.iv
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1974
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_addition_32bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 4 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge41.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %5, %i.f
  %i.h = shl i64 %6, 2                            ; 3 uses
  %i.i = getelementptr i8, ptr %4, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h ; 2 uses
  %i.j = mul i64 %1, %i.f
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep48 = getelementptr i8, ptr %i.k, i64 %i.h
  %i.l = mul i64 %3, %i.f
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %scevgep49 = getelementptr i8, ptr %i.m, i64 %i.h
  %min.iters.check = icmp ult i64 %6, 8
  %bound0 = icmp ult ptr %4, %scevgep48
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound051 = icmp ult ptr %4, %scevgep49
  %bound152 = icmp ult ptr %2, %scevgep
  %found.conflict53 = and i1 %bound051, %bound152
  %i.q = or i64 %3, %5
  %i.r = icmp slt i64 %i.q, 0
  %i.s = or i1 %found.conflict53, %i.r
  %conflict.rdx = or i1 %i.p, %i.s
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %6, %n.vec
  %xtraiter = and i64 %6, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.03139 = phi ptr [ %i.aw, %._crit_edge ], [ %0, %.preheader.preheader ] ; 5 uses
  %.03238 = phi ptr [ %i.ax, %._crit_edge ], [ %2, %.preheader.preheader ] ; 5 uses
  %.03337 = phi ptr [ %i.av, %._crit_edge ], [ %4, %.preheader.preheader ] ; 5 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.03139, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <4 x float>, ptr %i.t, align 4, !tbaa !61, !alias.scope !1982 ; 3 uses
  %wide.load56 = load <4 x float>, ptr %i.u, align 4, !tbaa !61, !alias.scope !1982 ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.03238, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load57 = load <4 x float>, ptr %i.v, align 4, !tbaa !61, !alias.scope !1983
  %wide.load58 = load <4 x float>, ptr %i.w, align 4, !tbaa !61, !alias.scope !1983
  %i.x = fadd nsz <4 x float> %wide.load, %wide.load57 ; 2 uses
  %i.y = fadd nsz <4 x float> %wide.load56, %wide.load58 ; 2 uses
  %i.z = fcmp nsz olt <4 x float> %i.x, splat (float 1.000000e+00)
  %i.aa = fcmp nsz olt <4 x float> %i.y, splat (float 1.000000e+00)
  %i.ab = select nsz <4 x i1> %i.z, <4 x float> %i.x, <4 x float> splat (float 1.000000e+00)
  %i.ac = select nsz <4 x i1> %i.aa, <4 x float> %i.y, <4 x float> splat (float 1.000000e+00)
  %i.ad = fsub nsz <4 x float> %i.ab, %wide.load
  %i.ae = fsub nsz <4 x float> %i.ac, %wide.load56
  %i.af = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.ag = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %broadcast.splat, <4 x float> %wide.load56)
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.03337, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <4 x float> %i.af, ptr %i.ah, align 4, !tbaa !61, !alias.scope !1984, !noalias !1985
  store <4 x float> %i.ag, ptr %i.ai, align 4, !tbaa !61, !alias.scope !1984, !noalias !1985
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !1979

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ] ; 6 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.03139, i64 %indvars.iv.ph
  %i.al = load float, ptr %i.ak, align 4, !tbaa !61 ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.03238, i64 %indvars.iv.ph
  %i.an = load float, ptr %i.am, align 4, !tbaa !61
  %i.ao = fadd nsz float %i.al, %i.an             ; 2 uses
  %i.ap = fcmp nsz olt float %i.ao, 1.000000e+00
  %i.aq = select nsz i1 %i.ap, float %i.ao, float 1.000000e+00
  %i.ar = fsub nsz float %i.aq, %i.al
  %i.as = tail call nsz float @llvm.fmuladd.f32(float %i.ar, float %i.c, float %i.al)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.03337, i64 %indvars.iv.ph
  store float %i.as, ptr %i.at, align 4, !tbaa !61
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.au = icmp eq i64 %6, %.neg
  br i1 %i.au, label %._crit_edge, label %scalar.ph

._crit_edge41.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.av = getelementptr inbounds i8, ptr %.03337, i64 %5
  %i.aw = getelementptr inbounds i8, ptr %.03139, i64 %1
  %i.ax = getelementptr inbounds i8, ptr %.03238, i64 %3
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next44, %7
  br i1 %exitcond46.not, label %._crit_edge41.split, label %.preheader, !llvm.loop !1980

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.03139, i64 %indvars.iv
  %i.az = load float, ptr %i.ay, align 4, !tbaa !61 ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.03238, i64 %indvars.iv
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !61
  %i.bc = fadd nsz float %i.az, %i.bb             ; 2 uses
  %i.bd = fcmp nsz olt float %i.bc, 1.000000e+00
  %i.be = select nsz i1 %i.bd, float %i.bc, float 1.000000e+00
  %i.bf = fsub nsz float %i.be, %i.az
  %i.bg = tail call nsz float @llvm.fmuladd.f32(float %i.bf, float %i.c, float %i.az)
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.03337, i64 %indvars.iv
  store float %i.bg, ptr %i.bh, align 4, !tbaa !61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.03139, i64 %indvars.iv.next
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !61 ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.03238, i64 %indvars.iv.next
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !61
  %i.bm = fadd nsz float %i.bj, %i.bl             ; 2 uses
  %i.bn = fcmp nsz olt float %i.bm, 1.000000e+00
  %i.bo = select nsz i1 %i.bn, float %i.bm, float 1.000000e+00
  %i.bp = fsub nsz float %i.bo, %i.bj
  %i.bq = tail call nsz float @llvm.fmuladd.f32(float %i.bp, float %i.c, float %i.bj)
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.03337, i64 %indvars.iv.next
  store float %i.bq, ptr %i.br, align 4, !tbaa !61
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %6
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !1981
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_grainmerge_32bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 4 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge36.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %5, %i.f
  %i.h = shl i64 %6, 2                            ; 3 uses
  %i.i = getelementptr i8, ptr %4, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h ; 2 uses
  %i.j = mul i64 %1, %i.f
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep43 = getelementptr i8, ptr %i.k, i64 %i.h
  %i.l = mul i64 %3, %i.f
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %scevgep44 = getelementptr i8, ptr %i.m, i64 %i.h
  %min.iters.check = icmp ult i64 %6, 8
  %bound0 = icmp ult ptr %4, %scevgep43
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound046 = icmp ult ptr %4, %scevgep44
  %bound147 = icmp ult ptr %2, %scevgep
  %found.conflict48 = and i1 %bound046, %bound147
  %i.q = or i64 %3, %5
  %i.r = icmp slt i64 %i.q, 0
end_hunk_5
