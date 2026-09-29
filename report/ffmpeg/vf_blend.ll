Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_blend?download=true
inline.NumInlined: 7
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 31
begin_hunk_0_@blend_xor_8bit:bb.a
  %.02833 = phi ptr [ %i.bh, %._crit_edge ], [ %2, %.preheader.preheader ] ; 6 uses
  %.02932 = phi ptr [ %i.bf, %._crit_edge ], [ %4, %.preheader.preheader ] ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check51, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.02734, i64 %index
  %wide.load = load <16 x i8>, ptr %i.t, align 1, !tbaa !48, !alias.scope !450 ; 3 uses
  %i.u = zext <16 x i8> %wide.load to <16 x i32>
  %i.v = uitofp <16 x i8> %wide.load to <16 x float>
  %i.w = getelementptr inbounds nuw i8, ptr %.02833, i64 %index
  %wide.load52 = load <16 x i8>, ptr %i.w, align 1, !tbaa !48, !alias.scope !451
  %i.x = xor <16 x i8> %wide.load52, %wide.load
  %i.y = zext <16 x i8> %i.x to <16 x i32>
  %i.z = sub nsw <16 x i32> %i.y, %i.u
  %i.aa = sitofp nsz <16 x i32> %i.z to <16 x float>
  %i.ab = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.aa, <16 x float> %broadcast.splat, <16 x float> %i.v)
  %i.ac = fptoui <16 x float> %i.ab to <16 x i8>
  %i.ad = getelementptr inbounds nuw i8, ptr %.02932, i64 %index
  store <16 x i8> %i.ac, ptr %i.ad, align 1, !tbaa !48, !alias.scope !452, !noalias !453
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !446

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index56 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next59, %vec.epilog.vector.body ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.02734, i64 %index56
  %wide.load57 = load <4 x i8>, ptr %i.af, align 1, !tbaa !48, !alias.scope !450 ; 3 uses
  %i.ag = zext <4 x i8> %wide.load57 to <4 x i32>
  %i.ah = uitofp <4 x i8> %wide.load57 to <4 x float>
  %i.ai = getelementptr inbounds nuw i8, ptr %.02833, i64 %index56
  %wide.load58 = load <4 x i8>, ptr %i.ai, align 1, !tbaa !48, !alias.scope !451
  %i.aj = xor <4 x i8> %wide.load58, %wide.load57
  %i.ak = zext <4 x i8> %i.aj to <4 x i32>
  %i.al = sub nsw <4 x i32> %i.ak, %i.ag
  %i.am = sitofp nsz <4 x i32> %i.al to <4 x float>
  %i.an = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> %broadcast.splat55, <4 x float> %i.ah)
  %i.ao = fptoui <4 x float> %i.an to <4 x i8>
  %i.ap = getelementptr inbounds nuw i8, ptr %.02932, i64 %index56
  store <4 x i8> %i.ao, ptr %i.ap, align 1, !tbaa !48, !alias.scope !452, !noalias !453
  %index.next59 = add nuw i64 %index56, 4         ; 2 uses
  %i.aq = icmp eq i64 %index.next59, %n.vec53
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !447

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n60, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec53, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 6 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ar = getelementptr inbounds nuw i8, ptr %.02734, i64 %indvars.iv.ph
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !48  ; 3 uses
  %i.at = zext i8 %i.as to i32
  %i.au = uitofp i8 %i.as to float
  %i.av = getelementptr inbounds nuw i8, ptr %.02833, i64 %indvars.iv.ph
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !48
  %i.ax = xor i8 %i.aw, %i.as
  %i.ay = zext i8 %i.ax to i32
  %i.az = sub nsw i32 %i.ay, %i.at
  %i.ba = sitofp nsz i32 %i.az to float
  %i.bb = tail call nsz float @llvm.fmuladd.f32(float %i.ba, float %i.c, float %i.au)
  %i.bc = fptoui float %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %.02932, i64 %indvars.iv.ph
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !48
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.be = icmp eq i64 %6, %.neg
  br i1 %i.be, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge36.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.bf = getelementptr inbounds i8, ptr %.02932, i64 %5
  %i.bg = getelementptr inbounds i8, ptr %.02734, i64 %1
  %i.bh = getelementptr inbounds i8, ptr %.02833, i64 %3
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next39, %7
  br i1 %exitcond41.not, label %._crit_edge36.split, label %iter.check, !llvm.loop !448

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.02734, i64 %indvars.iv
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !48  ; 3 uses
  %i.bk = zext i8 %i.bj to i32
  %i.bl = uitofp i8 %i.bj to float
  %i.bm = getelementptr inbounds nuw i8, ptr %.02833, i64 %indvars.iv
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !48
  %i.bo = xor i8 %i.bn, %i.bj
  %i.bp = zext i8 %i.bo to i32
  %i.bq = sub nsw i32 %i.bp, %i.bk
  %i.br = sitofp nsz i32 %i.bq to float
  %i.bs = tail call nsz float @llvm.fmuladd.f32(float %i.br, float %i.c, float %i.bl)
  %i.bt = fptoui float %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %.02932, i64 %indvars.iv
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.02734, i64 %indvars.iv.next
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !48  ; 3 uses
  %i.bx = zext i8 %i.bw to i32
  %i.by = uitofp i8 %i.bw to float
  %i.bz = getelementptr inbounds nuw i8, ptr %.02833, i64 %indvars.iv.next
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !48
  %i.cb = xor i8 %i.ca, %i.bw
  %i.cc = zext i8 %i.cb to i32
  %i.cd = sub nsw i32 %i.cc, %i.bx
  %i.ce = sitofp nsz i32 %i.cd to float
  %i.cf = tail call nsz float @llvm.fmuladd.f32(float %i.ce, float %i.c, float %i.by)
  %i.cg = fptoui float %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %.02932, i64 %indvars.iv.next
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !48
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
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge57.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %5, %i.f
  %i.h = getelementptr i8, ptr %4, i64 %6
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.g ; 2 uses
  %i.i = mul i64 %1, %i.f
  %i.j = getelementptr i8, ptr %0, i64 %6
  %scevgep70 = getelementptr i8, ptr %i.j, i64 %i.i
  %i.k = mul i64 %3, %i.f
  %i.l = getelementptr i8, ptr %2, i64 %6
  %scevgep71 = getelementptr i8, ptr %i.l, i64 %i.k
  %min.iters.check = icmp ult i64 %6, 4
  %bound0 = icmp ult ptr %4, %scevgep70
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.m = or i64 %1, %5
  %i.n = icmp slt i64 %i.m, 0
  %i.o = or i1 %found.conflict, %i.n
  %bound073 = icmp ult ptr %4, %scevgep71
  %bound174 = icmp ult ptr %2, %scevgep
  %found.conflict75 = and i1 %bound073, %bound174
  %i.p = or i64 %3, %5
  %i.q = icmp slt i64 %i.p, 0
  %i.r = or i1 %found.conflict75, %i.q
  %conflict.rdx = or i1 %i.o, %i.r
  %min.iters.check78 = icmp ult i64 %6, 16
  %i.s = and i64 %6, 12
  %n.vec = and i64 %6, 9223372036854775792        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.s, 0
  %n.vec82 = and i64 %6, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert83 = insertelement <4 x float> poison, float %i.c, i64 0
  %broadcast.splat84 = shufflevector <4 x float> %broadcast.splatinsert83, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n92 = icmp eq i64 %6, %n.vec82
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.04355 = phi ptr [ %i.bo, %._crit_edge ], [ %0, %.preheader.preheader ] ; 4 uses
  %.04454 = phi ptr [ %i.bp, %._crit_edge ], [ %2, %.preheader.preheader ] ; 4 uses
  %.04553 = phi ptr [ %i.bn, %._crit_edge ], [ %4, %.preheader.preheader ] ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check78, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.04355, i64 %index
  %wide.load = load <16 x i8>, ptr %i.t, align 1, !tbaa !48, !alias.scope !462 ; 3 uses
  %i.u = zext <16 x i8> %wide.load to <16 x i32>  ; 3 uses
  %i.v = uitofp <16 x i8> %wide.load to <16 x float>
  %i.w = getelementptr inbounds nuw i8, ptr %.04454, i64 %index
  %wide.load79 = load <16 x i8>, ptr %i.w, align 1, !tbaa !48, !alias.scope !463 ; 3 uses
  %i.x = zext <16 x i8> %wide.load79 to <16 x i32> ; 4 uses
  %i.y = icmp ugt <16 x i8> %wide.load, %wide.load79 ; 3 uses
  %i.z = icmp ne <16 x i8> %wide.load79, zeroinitializer
  %10 = sub nuw nsw <16 x i32> %i.x, %i.u
  %i.aa = sub nuw nsw <16 x i32> %i.u, %i.x
  %i.ab = xor <16 x i32> %i.x, splat (i32 255)
  %i.ac = or <16 x i1> %i.z, %i.y                 ; 2 uses
  %predphi = select <16 x i1> %i.y, <16 x i32> %i.aa, <16 x i32> %10
  %predphi80 = select <16 x i1> %i.y, <16 x i32> %i.ab, <16 x i32> %i.x
  %i.ad = trunc nuw nsw <16 x i32> %predphi to <16 x i16>
  %i.ae = mul nuw <16 x i16> %i.ad, splat (i16 255)
  %i.af = trunc nuw nsw <16 x i32> %predphi80 to <16 x i16>
  %i.ag = tail call <16 x i16> @llvm.masked.udiv.v16i16(<16 x i16> %i.ae, <16 x i16> %i.af, <16 x i1> %i.ac)
  %i.ah = freeze <16 x i16> %i.ag
  %i.ai = tail call <16 x i16> @llvm.umin.v16i16(<16 x i16> %i.ah, <16 x i16> splat (i16 255))
  %i.aj = zext nneg <16 x i16> %i.ai to <16 x i32>
  %predphi81 = select <16 x i1> %i.ac, <16 x i32> %i.aj, <16 x i32> zeroinitializer
  %i.ak = sub nsw <16 x i32> %predphi81, %i.u
  %i.al = sitofp nsz <16 x i32> %i.ak to <16 x float>
  %i.am = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.al, <16 x float> %broadcast.splat, <16 x float> %i.v)
  %i.an = fptoui <16 x float> %i.am to <16 x i8>
  %i.ao = getelementptr inbounds nuw i8, ptr %.04553, i64 %index
  store <16 x i8> %i.an, ptr %i.ao, align 1, !tbaa !48, !alias.scope !464, !noalias !465
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !458

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index85 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next91, %vec.epilog.vector.body ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.04355, i64 %index85
  %wide.load86 = load <4 x i8>, ptr %i.aq, align 1, !tbaa !48, !alias.scope !462 ; 3 uses
  %i.ar = zext <4 x i8> %wide.load86 to <4 x i32> ; 3 uses
  %i.as = uitofp <4 x i8> %wide.load86 to <4 x float>
  %i.at = getelementptr inbounds nuw i8, ptr %.04454, i64 %index85
  %wide.load87 = load <4 x i8>, ptr %i.at, align 1, !tbaa !48, !alias.scope !463 ; 3 uses
  %i.au = zext <4 x i8> %wide.load87 to <4 x i32> ; 4 uses
  %i.av = icmp ugt <4 x i8> %wide.load86, %wide.load87 ; 3 uses
  %i.aw = icmp ne <4 x i8> %wide.load87, zeroinitializer
  %11 = sub nuw nsw <4 x i32> %i.au, %i.ar
  %i.ax = sub nuw nsw <4 x i32> %i.ar, %i.au
  %i.ay = xor <4 x i32> %i.au, splat (i32 255)
  %i.az = or <4 x i1> %i.aw, %i.av                ; 2 uses
  %predphi88 = select <4 x i1> %i.av, <4 x i32> %i.ax, <4 x i32> %11
  %predphi89 = select <4 x i1> %i.av, <4 x i32> %i.ay, <4 x i32> %i.au
  %i.ba = trunc nuw nsw <4 x i32> %predphi88 to <4 x i16>
  %i.bb = mul nuw <4 x i16> %i.ba, splat (i16 255)
  %i.bc = trunc nuw nsw <4 x i32> %predphi89 to <4 x i16>
  %i.bd = tail call <4 x i16> @llvm.masked.udiv.v4i16(<4 x i16> %i.bb, <4 x i16> %i.bc, <4 x i1> %i.az)
  %i.be = freeze <4 x i16> %i.bd
  %i.bf = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %i.be, <4 x i16> splat (i16 255))
  %i.bg = zext nneg <4 x i16> %i.bf to <4 x i32>
  %predphi90 = select <4 x i1> %i.az, <4 x i32> %i.bg, <4 x i32> zeroinitializer
  %i.bh = sub nsw <4 x i32> %predphi90, %i.ar
  %i.bi = sitofp nsz <4 x i32> %i.bh to <4 x float>
  %i.bj = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bi, <4 x float> %broadcast.splat84, <4 x float> %i.as)
  %i.bk = fptoui <4 x float> %i.bj to <4 x i8>
  %i.bl = getelementptr inbounds nuw i8, ptr %.04553, i64 %index85
  store <4 x i8> %i.bk, ptr %i.bl, align 1, !tbaa !48, !alias.scope !464, !noalias !465
  %index.next91 = add nuw i64 %index85, 4         ; 2 uses
  %i.bm = icmp eq i64 %index.next91, %n.vec82
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !459

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n92, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec82, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.scalar.ph

._crit_edge57.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %.thread, %vec.epilog.middle.block, %middle.block
  %i.bn = getelementptr inbounds i8, ptr %.04553, i64 %5
  %i.bo = getelementptr inbounds i8, ptr %.04355, i64 %1
  %i.bp = getelementptr inbounds i8, ptr %.04454, i64 %3
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %exitcond62.not = icmp eq i64 %indvars.iv.next60, %7
  br i1 %exitcond62.not, label %._crit_edge57.split, label %iter.check, !llvm.loop !460

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %.thread ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.04355, i64 %indvars.iv
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !48  ; 3 uses
  %i.bs = zext i8 %i.br to i32                    ; 3 uses
  %i.bt = uitofp i8 %i.br to float
  %i.bu = getelementptr inbounds nuw i8, ptr %.04454, i64 %indvars.iv
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !48  ; 3 uses
  %i.bw = zext i8 %i.bv to i32                    ; 4 uses
  %i.bx = icmp ugt i8 %i.br, %i.bv
  br i1 %i.bx, label %bb.b, label %bb.c

bb.b:                                             ; preds = %vec.epilog.scalar.ph
  %i.by = sub nuw nsw i32 %i.bs, %i.bw
  %i.bz = xor i32 %i.bw, 255
  br label %bb.e

bb.c:                                             ; preds = %vec.epilog.scalar.ph
  %i.ca = icmp eq i8 %i.bv, 0
  br i1 %i.ca, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cb = sub nuw nsw i32 %i.bw, %i.bs
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sink68.in = phi i32 [ %i.cb, %bb.d ], [ %i.by, %bb.b ]
  %.sink = phi i32 [ %i.bw, %bb.d ], [ %i.bz, %bb.b ]
  %i.cc = trunc nsw i32 %.sink68.in to i16
  %.lhs.trunc65 = mul i16 %i.cc, 255
  %.rhs.trunc66 = trunc nsw i32 %.sink to i16
  %i.cd = udiv i16 %.lhs.trunc65, %.rhs.trunc66
  %.fr69 = freeze i16 %i.cd
  %i.ce = tail call i16 @llvm.umin.i16(i16 %.fr69, i16 255)
  %i.cf = zext nneg i16 %i.ce to i32
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.c
  %i.cg = phi i32 [ %i.cf, %bb.e ], [ 0, %bb.c ]
  %i.ch = sub nsw i32 %i.cg, %i.bs
  %i.ci = sitofp nsz i32 %i.ch to float
  %i.cj = tail call nsz float @llvm.fmuladd.f32(float %i.ci, float %i.c, float %i.bt)
  %i.ck = fptoui float %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %.04553, i64 %indvars.iv
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !48
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
  %.02734 = phi ptr [ %i.ba, %._crit_edge ], [ %0, %.preheader.preheader ] ; 4 uses
  %.02833 = phi ptr [ %i.bb, %._crit_edge ], [ %2, %.preheader.preheader ] ; 4 uses
  %.02932 = phi ptr [ %i.az, %._crit_edge ], [ %4, %.preheader.preheader ] ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check51, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.02734, i64 %index
  %wide.load = load <16 x i8>, ptr %i.t, align 1, !tbaa !48, !alias.scope !474 ; 3 uses
  %i.u = zext <16 x i8> %wide.load to <16 x i32>
  %i.v = uitofp <16 x i8> %wide.load to <16 x float>
  %i.w = getelementptr inbounds nuw i8, ptr %.02833, i64 %index
  %wide.load52 = load <16 x i8>, ptr %i.w, align 1, !tbaa !48, !alias.scope !475
  %i.x = zext <16 x i8> %wide.load52 to <16 x i32>
  %i.y = mul nuw nsw <16 x i32> %i.x, %i.u
  %i.z = uitofp nneg <16 x i32> %i.y to <16 x float>
  %i.aa = tail call nsz <16 x float> @llvm.sqrt.v16f32(<16 x float> %i.z)
  %i.ab = tail call <16 x i64> @llvm.lrint.v16i64.v16f32(<16 x float> %i.aa)
  %i.ac = zext <16 x i8> %wide.load to <16 x i64>
  %i.ad = sub nsw <16 x i64> %i.ab, %i.ac
  %i.ae = sitofp nsz <16 x i64> %i.ad to <16 x float>
  %i.af = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.ae, <16 x float> %broadcast.splat, <16 x float> %i.v)
  %i.ag = fptoui <16 x float> %i.af to <16 x i8>
  %i.ah = getelementptr inbounds nuw i8, ptr %.02932, i64 %index
  store <16 x i8> %i.ag, ptr %i.ah, align 1, !tbaa !48, !alias.scope !476, !noalias !477
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !470

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index56 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next59, %vec.epilog.vector.body ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.02734, i64 %index56
  %wide.load57 = load <4 x i8>, ptr %i.aj, align 1, !tbaa !48, !alias.scope !474 ; 3 uses
  %i.ak = zext <4 x i8> %wide.load57 to <4 x i32>
  %i.al = uitofp <4 x i8> %wide.load57 to <4 x float>
  %i.am = getelementptr inbounds nuw i8, ptr %.02833, i64 %index56
  %wide.load58 = load <4 x i8>, ptr %i.am, align 1, !tbaa !48, !alias.scope !475
  %i.an = zext <4 x i8> %wide.load58 to <4 x i32>
  %i.ao = mul nuw nsw <4 x i32> %i.an, %i.ak
  %i.ap = uitofp nneg <4 x i32> %i.ao to <4 x float>
  %i.aq = tail call nsz <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.ap)
  %i.ar = tail call <4 x i64> @llvm.lrint.v4i64.v4f32(<4 x float> %i.aq)
  %i.as = zext <4 x i8> %wide.load57 to <4 x i64>
  %i.at = sub nsw <4 x i64> %i.ar, %i.as
  %i.au = sitofp nsz <4 x i64> %i.at to <4 x float>
  %i.av = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> %broadcast.splat55, <4 x float> %i.al)
  %i.aw = fptoui <4 x float> %i.av to <4 x i8>
  %i.ax = getelementptr inbounds nuw i8, ptr %.02932, i64 %index56
  store <4 x i8> %i.aw, ptr %i.ax, align 1, !tbaa !48, !alias.scope !476, !noalias !477
  %index.next59 = add nuw i64 %index56, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next59, %n.vec53
end_hunk_0
