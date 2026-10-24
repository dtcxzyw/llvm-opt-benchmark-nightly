Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_blend?download=true
inline.NumInlined: 7
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 31
begin_hunk_0_@blend_xor_8bit:bb.a
  %.02734 = phi ptr [ %i.be, %._crit_edge ], [ %0, %.preheader.preheader ] ; 6 uses
  %.02833 = phi ptr [ %i.bf, %._crit_edge ], [ %2, %.preheader.preheader ] ; 6 uses
  %.02932 = phi ptr [ %i.bd, %._crit_edge ], [ %4, %.preheader.preheader ] ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check50, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.02734, i64 %index
  %wide.load = load <16 x i8>, ptr %i.r, align 1, !tbaa !48, !alias.scope !450 ; 3 uses
  %i.s = zext <16 x i8> %wide.load to <16 x i32>
  %i.t = uitofp <16 x i8> %wide.load to <16 x float>
  %i.u = getelementptr inbounds nuw i8, ptr %.02833, i64 %index
  %wide.load51 = load <16 x i8>, ptr %i.u, align 1, !tbaa !48, !alias.scope !451
  %i.v = xor <16 x i8> %wide.load51, %wide.load
  %i.w = zext <16 x i8> %i.v to <16 x i32>
  %i.x = sub nsw <16 x i32> %i.w, %i.s
  %i.y = sitofp nsz <16 x i32> %i.x to <16 x float>
  %i.z = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.y, <16 x float> %broadcast.splat, <16 x float> %i.t)
  %i.aa = fptoui <16 x float> %i.z to <16 x i8>
  %i.ab = getelementptr inbounds nuw i8, ptr %.02932, i64 %index
  store <16 x i8> %i.aa, ptr %i.ab, align 1, !tbaa !48, !alias.scope !452, !noalias !453
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !446

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next58, %vec.epilog.vector.body ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.02734, i64 %index55
  %wide.load56 = load <4 x i8>, ptr %i.ad, align 1, !tbaa !48, !alias.scope !450 ; 3 uses
  %i.ae = zext <4 x i8> %wide.load56 to <4 x i32>
  %i.af = uitofp <4 x i8> %wide.load56 to <4 x float>
  %i.ag = getelementptr inbounds nuw i8, ptr %.02833, i64 %index55
  %wide.load57 = load <4 x i8>, ptr %i.ag, align 1, !tbaa !48, !alias.scope !451
  %i.ah = xor <4 x i8> %wide.load57, %wide.load56
  %i.ai = zext <4 x i8> %i.ah to <4 x i32>
  %i.aj = sub nsw <4 x i32> %i.ai, %i.ae
  %i.ak = sitofp nsz <4 x i32> %i.aj to <4 x float>
  %i.al = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> %broadcast.splat54, <4 x float> %i.af)
  %i.am = fptoui <4 x float> %i.al to <4 x i8>
  %i.an = getelementptr inbounds nuw i8, ptr %.02932, i64 %index55
  store <4 x i8> %i.am, ptr %i.an, align 1, !tbaa !48, !alias.scope !452, !noalias !453
  %index.next58 = add nuw i64 %index55, 4         ; 2 uses
  %i.ao = icmp eq i64 %index.next58, %n.vec52
  br i1 %i.ao, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !447

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n59, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec52, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 6 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ap = getelementptr inbounds nuw i8, ptr %.02734, i64 %indvars.iv.ph
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !48  ; 3 uses
  %i.ar = zext i8 %i.aq to i32
  %i.as = uitofp i8 %i.aq to float
  %i.at = getelementptr inbounds nuw i8, ptr %.02833, i64 %indvars.iv.ph
  %i.au = load i8, ptr %i.at, align 1, !tbaa !48
  %i.av = xor i8 %i.au, %i.aq
  %i.aw = zext i8 %i.av to i32
  %i.ax = sub nsw i32 %i.aw, %i.ar
  %i.ay = sitofp nsz i32 %i.ax to float
  %i.az = tail call nsz float @llvm.fmuladd.f32(float %i.ay, float %i.c, float %i.as)
  %i.ba = fptoui float %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %.02932, i64 %indvars.iv.ph
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !48
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bc = icmp eq i64 %6, %.neg
  br i1 %i.bc, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge36.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.bd = getelementptr inbounds i8, ptr %.02932, i64 %5
  %i.be = getelementptr inbounds i8, ptr %.02734, i64 %1
  %i.bf = getelementptr inbounds i8, ptr %.02833, i64 %3
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next39, %7
  br i1 %exitcond41.not, label %._crit_edge36.split, label %iter.check, !llvm.loop !448

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.02734, i64 %indvars.iv
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !48  ; 3 uses
  %i.bi = zext i8 %i.bh to i32
  %i.bj = uitofp i8 %i.bh to float
  %i.bk = getelementptr inbounds nuw i8, ptr %.02833, i64 %indvars.iv
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !48
  %i.bm = xor i8 %i.bl, %i.bh
  %i.bn = zext i8 %i.bm to i32
  %i.bo = sub nsw i32 %i.bn, %i.bi
  %i.bp = sitofp nsz i32 %i.bo to float
  %i.bq = tail call nsz float @llvm.fmuladd.f32(float %i.bp, float %i.c, float %i.bj)
  %i.br = fptoui float %i.bq to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %.02932, i64 %indvars.iv
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02734, i64 %indvars.iv.next
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !48  ; 3 uses
  %i.bv = zext i8 %i.bu to i32
  %i.bw = uitofp i8 %i.bu to float
  %i.bx = getelementptr inbounds nuw i8, ptr %.02833, i64 %indvars.iv.next
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !48
  %i.bz = xor i8 %i.by, %i.bu
  %i.ca = zext i8 %i.bz to i32
  %i.cb = sub nsw i32 %i.ca, %i.bv
  %i.cc = sitofp nsz i32 %i.cb to float
  %i.cd = tail call nsz float @llvm.fmuladd.f32(float %i.cc, float %i.c, float %i.bw)
  %i.ce = fptoui float %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %.02932, i64 %indvars.iv.next
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !48
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %6
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !449
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_softdifference_8bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 3 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge59.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %5, %i.f
  %i.h = getelementptr i8, ptr %4, i64 %6
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.g ; 2 uses
  %i.i = mul i64 %1, %i.f
  %i.j = getelementptr i8, ptr %0, i64 %6
  %scevgep72 = getelementptr i8, ptr %i.j, i64 %i.i
  %i.k = mul i64 %3, %i.f
  %i.l = getelementptr i8, ptr %2, i64 %6
  %scevgep73 = getelementptr i8, ptr %i.l, i64 %i.k
  %min.iters.check = icmp ult i64 %6, 4
  %bound0 = icmp ult ptr %4, %scevgep72
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.m = or i64 %1, %5
  %i.n = icmp slt i64 %i.m, 0
  %i.o = or i1 %found.conflict, %i.n
  %bound075 = icmp ult ptr %4, %scevgep73
  %bound176 = icmp ult ptr %2, %scevgep
  %found.conflict77 = and i1 %bound075, %bound176
  %stride.check78 = icmp slt i64 %3, 0
  %i.p = or i1 %found.conflict77, %stride.check78
  %conflict.rdx = or i1 %i.o, %i.p
  %min.iters.check79 = icmp ult i64 %6, 16
  %i.q = and i64 %6, 12
  %n.vec = and i64 %6, 9223372036854775792        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  %n.vec83 = and i64 %6, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert84 = insertelement <4 x float> poison, float %i.c, i64 0
  %broadcast.splat85 = shufflevector <4 x float> %broadcast.splatinsert84, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n93 = icmp eq i64 %6, %n.vec83
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.04357 = phi ptr [ %i.bm, %._crit_edge ], [ %0, %.preheader.preheader ] ; 4 uses
  %.04456 = phi ptr [ %i.bn, %._crit_edge ], [ %2, %.preheader.preheader ] ; 4 uses
  %.04555 = phi ptr [ %i.bl, %._crit_edge ], [ %4, %.preheader.preheader ] ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check79, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.04357, i64 %index
  %wide.load = load <16 x i8>, ptr %i.r, align 1, !tbaa !48, !alias.scope !462 ; 3 uses
  %i.s = zext <16 x i8> %wide.load to <16 x i32>  ; 3 uses
  %i.t = uitofp <16 x i8> %wide.load to <16 x float>
  %i.u = getelementptr inbounds nuw i8, ptr %.04456, i64 %index
  %wide.load80 = load <16 x i8>, ptr %i.u, align 1, !tbaa !48, !alias.scope !463 ; 3 uses
  %i.v = zext <16 x i8> %wide.load80 to <16 x i32> ; 4 uses
  %i.w = icmp ugt <16 x i8> %wide.load, %wide.load80 ; 3 uses
  %i.x = icmp ne <16 x i8> %wide.load80, zeroinitializer
  %10 = sub nuw nsw <16 x i32> %i.v, %i.s
  %i.y = sub nuw nsw <16 x i32> %i.s, %i.v
  %i.z = xor <16 x i32> %i.v, splat (i32 255)
  %i.aa = or <16 x i1> %i.x, %i.w                 ; 2 uses
  %predphi = select <16 x i1> %i.w, <16 x i32> %i.y, <16 x i32> %10
  %predphi81 = select <16 x i1> %i.w, <16 x i32> %i.z, <16 x i32> %i.v
  %i.ab = trunc nuw nsw <16 x i32> %predphi to <16 x i16>
  %i.ac = mul nuw <16 x i16> %i.ab, splat (i16 255)
  %i.ad = trunc nuw nsw <16 x i32> %predphi81 to <16 x i16>
  %i.ae = tail call <16 x i16> @llvm.masked.udiv.v16i16(<16 x i16> %i.ac, <16 x i16> %i.ad, <16 x i1> %i.aa)
  %i.af = freeze <16 x i16> %i.ae
  %i.ag = tail call <16 x i16> @llvm.umin.v16i16(<16 x i16> %i.af, <16 x i16> splat (i16 255))
  %i.ah = zext nneg <16 x i16> %i.ag to <16 x i32>
  %predphi82 = select <16 x i1> %i.aa, <16 x i32> %i.ah, <16 x i32> zeroinitializer
  %i.ai = sub nsw <16 x i32> %predphi82, %i.s
  %i.aj = sitofp nsz <16 x i32> %i.ai to <16 x float>
  %i.ak = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.aj, <16 x float> %broadcast.splat, <16 x float> %i.t)
  %i.al = fptoui <16 x float> %i.ak to <16 x i8>
  %i.am = getelementptr inbounds nuw i8, ptr %.04555, i64 %index
  store <16 x i8> %i.al, ptr %i.am, align 1, !tbaa !48, !alias.scope !464, !noalias !465
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !458

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index86 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next92, %vec.epilog.vector.body ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.04357, i64 %index86
  %wide.load87 = load <4 x i8>, ptr %i.ao, align 1, !tbaa !48, !alias.scope !462 ; 3 uses
  %i.ap = zext <4 x i8> %wide.load87 to <4 x i32> ; 3 uses
  %i.aq = uitofp <4 x i8> %wide.load87 to <4 x float>
  %i.ar = getelementptr inbounds nuw i8, ptr %.04456, i64 %index86
  %wide.load88 = load <4 x i8>, ptr %i.ar, align 1, !tbaa !48, !alias.scope !463 ; 3 uses
  %i.as = zext <4 x i8> %wide.load88 to <4 x i32> ; 4 uses
  %i.at = icmp ugt <4 x i8> %wide.load87, %wide.load88 ; 3 uses
  %i.au = icmp ne <4 x i8> %wide.load88, zeroinitializer
  %11 = sub nuw nsw <4 x i32> %i.as, %i.ap
  %i.av = sub nuw nsw <4 x i32> %i.ap, %i.as
  %i.aw = xor <4 x i32> %i.as, splat (i32 255)
  %i.ax = or <4 x i1> %i.au, %i.at                ; 2 uses
  %predphi89 = select <4 x i1> %i.at, <4 x i32> %i.av, <4 x i32> %11
  %predphi90 = select <4 x i1> %i.at, <4 x i32> %i.aw, <4 x i32> %i.as
  %i.ay = trunc nuw nsw <4 x i32> %predphi89 to <4 x i16>
  %i.az = mul nuw <4 x i16> %i.ay, splat (i16 255)
  %i.ba = trunc nuw nsw <4 x i32> %predphi90 to <4 x i16>
  %i.bb = tail call <4 x i16> @llvm.masked.udiv.v4i16(<4 x i16> %i.az, <4 x i16> %i.ba, <4 x i1> %i.ax)
  %i.bc = freeze <4 x i16> %i.bb
  %i.bd = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %i.bc, <4 x i16> splat (i16 255))
  %i.be = zext nneg <4 x i16> %i.bd to <4 x i32>
  %predphi91 = select <4 x i1> %i.ax, <4 x i32> %i.be, <4 x i32> zeroinitializer
  %i.bf = sub nsw <4 x i32> %predphi91, %i.ap
  %i.bg = sitofp nsz <4 x i32> %i.bf to <4 x float>
  %i.bh = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bg, <4 x float> %broadcast.splat85, <4 x float> %i.aq)
  %i.bi = fptoui <4 x float> %i.bh to <4 x i8>
  %i.bj = getelementptr inbounds nuw i8, ptr %.04555, i64 %index86
  store <4 x i8> %i.bi, ptr %i.bj, align 1, !tbaa !48, !alias.scope !464, !noalias !465
  %index.next92 = add nuw i64 %index86, 4         ; 2 uses
  %i.bk = icmp eq i64 %index.next92, %n.vec83
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !459

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n93, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec83, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.scalar.ph

._crit_edge59.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %.thread, %vec.epilog.middle.block, %middle.block
  %i.bl = getelementptr inbounds i8, ptr %.04555, i64 %5
  %i.bm = getelementptr inbounds i8, ptr %.04357, i64 %1
  %i.bn = getelementptr inbounds i8, ptr %.04456, i64 %3
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next62, %7
  br i1 %exitcond64.not, label %._crit_edge59.split, label %iter.check, !llvm.loop !460

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %.thread ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.04357, i64 %indvars.iv
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !48  ; 3 uses
  %i.bq = zext i8 %i.bp to i32                    ; 3 uses
  %i.br = uitofp i8 %i.bp to float
  %i.bs = getelementptr inbounds nuw i8, ptr %.04456, i64 %indvars.iv
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !48  ; 3 uses
  %i.bu = zext i8 %i.bt to i32                    ; 4 uses
  %i.bv = icmp ugt i8 %i.bp, %i.bt
  br i1 %i.bv, label %bb.b, label %bb.c

bb.b:                                             ; preds = %vec.epilog.scalar.ph
  %i.bw = sub nuw nsw i32 %i.bq, %i.bu
  %i.bx = xor i32 %i.bu, 255
  br label %bb.e

bb.c:                                             ; preds = %vec.epilog.scalar.ph
  %i.by = icmp eq i8 %i.bt, 0
  br i1 %i.by, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bz = sub nuw nsw i32 %i.bu, %i.bq
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sink70.in = phi i32 [ %i.bz, %bb.d ], [ %i.bw, %bb.b ]
  %.sink = phi i32 [ %i.bu, %bb.d ], [ %i.bx, %bb.b ]
  %i.ca = trunc nsw i32 %.sink70.in to i16
  %.lhs.trunc67 = mul i16 %i.ca, 255
  %.rhs.trunc68 = trunc nsw i32 %.sink to i16
  %i.cb = udiv i16 %.lhs.trunc67, %.rhs.trunc68
  %.fr71 = freeze i16 %i.cb
  %i.cc = tail call i16 @llvm.umin.i16(i16 %.fr71, i16 255)
  %spec.select53 = zext nneg i16 %i.cc to i32
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.c
  %i.cd = phi i32 [ %spec.select53, %bb.e ], [ 0, %bb.c ]
  %i.ce = sub nsw i32 %i.cd, %i.bq
  %i.cf = sitofp nsz i32 %i.ce to float
  %i.cg = tail call nsz float @llvm.fmuladd.f32(float %i.cf, float %i.c, float %i.br)
  %i.ch = fptoui float %i.cg to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %.04555, i64 %indvars.iv
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !461
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_geometric_8bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 3 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge36.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %5, %i.f
  %i.h = getelementptr i8, ptr %4, i64 %6
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.g ; 2 uses
  %i.i = mul i64 %1, %i.f
  %i.j = getelementptr i8, ptr %0, i64 %6
  %scevgep43 = getelementptr i8, ptr %i.j, i64 %i.i
  %i.k = mul i64 %3, %i.f
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
  %stride.check49 = icmp slt i64 %3, 0
  %i.p = or i1 %found.conflict48, %stride.check49
  %conflict.rdx = or i1 %i.o, %i.p
  %min.iters.check50 = icmp ult i64 %6, 16
  %i.q = and i64 %6, 12
  %n.vec = and i64 %6, 9223372036854775792        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  %n.vec52 = and i64 %6, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert53 = insertelement <4 x float> poison, float %i.c, i64 0
  %broadcast.splat54 = shufflevector <4 x float> %broadcast.splatinsert53, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n59 = icmp eq i64 %6, %n.vec52
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02734 = phi ptr [ %i.ay, %._crit_edge ], [ %0, %.preheader.preheader ] ; 4 uses
  %.02833 = phi ptr [ %i.az, %._crit_edge ], [ %2, %.preheader.preheader ] ; 4 uses
  %.02932 = phi ptr [ %i.ax, %._crit_edge ], [ %4, %.preheader.preheader ] ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check50, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.02734, i64 %index
  %wide.load = load <16 x i8>, ptr %i.r, align 1, !tbaa !48, !alias.scope !474 ; 3 uses
  %i.s = zext <16 x i8> %wide.load to <16 x i32>
  %i.t = uitofp <16 x i8> %wide.load to <16 x float>
  %i.u = getelementptr inbounds nuw i8, ptr %.02833, i64 %index
  %wide.load51 = load <16 x i8>, ptr %i.u, align 1, !tbaa !48, !alias.scope !475
  %i.v = zext <16 x i8> %wide.load51 to <16 x i32>
  %i.w = mul nuw nsw <16 x i32> %i.v, %i.s
  %i.x = uitofp nneg <16 x i32> %i.w to <16 x float>
  %i.y = tail call nsz <16 x float> @llvm.sqrt.v16f32(<16 x float> %i.x)
  %i.z = tail call <16 x i64> @llvm.lrint.v16i64.v16f32(<16 x float> %i.y)
  %i.aa = zext <16 x i8> %wide.load to <16 x i64>
  %i.ab = sub nsw <16 x i64> %i.z, %i.aa
  %i.ac = sitofp nsz <16 x i64> %i.ab to <16 x float>
  %i.ad = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.ac, <16 x float> %broadcast.splat, <16 x float> %i.t)
  %i.ae = fptoui <16 x float> %i.ad to <16 x i8>
  %i.af = getelementptr inbounds nuw i8, ptr %.02932, i64 %index
  store <16 x i8> %i.ae, ptr %i.af, align 1, !tbaa !48, !alias.scope !476, !noalias !477
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !470

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next58, %vec.epilog.vector.body ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.02734, i64 %index55
  %wide.load56 = load <4 x i8>, ptr %i.ah, align 1, !tbaa !48, !alias.scope !474 ; 3 uses
  %i.ai = zext <4 x i8> %wide.load56 to <4 x i32>
  %i.aj = uitofp <4 x i8> %wide.load56 to <4 x float>
  %i.ak = getelementptr inbounds nuw i8, ptr %.02833, i64 %index55
  %wide.load57 = load <4 x i8>, ptr %i.ak, align 1, !tbaa !48, !alias.scope !475
  %i.al = zext <4 x i8> %wide.load57 to <4 x i32>
  %i.am = mul nuw nsw <4 x i32> %i.al, %i.ai
  %i.an = uitofp nneg <4 x i32> %i.am to <4 x float>
  %i.ao = tail call nsz <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.an)
  %i.ap = tail call <4 x i64> @llvm.lrint.v4i64.v4f32(<4 x float> %i.ao)
  %i.aq = zext <4 x i8> %wide.load56 to <4 x i64>
  %i.ar = sub nsw <4 x i64> %i.ap, %i.aq
  %i.as = sitofp nsz <4 x i64> %i.ar to <4 x float>
  %i.at = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.as, <4 x float> %broadcast.splat54, <4 x float> %i.aj)
  %i.au = fptoui <4 x float> %i.at to <4 x i8>
  %i.av = getelementptr inbounds nuw i8, ptr %.02932, i64 %index55
  store <4 x i8> %i.au, ptr %i.av, align 1, !tbaa !48, !alias.scope !476, !noalias !477
  %index.next58 = add nuw i64 %index55, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next58, %n.vec52
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !471
end_hunk_0
