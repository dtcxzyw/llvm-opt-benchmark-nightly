Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_xfade?download=true
inline.NumInlined: 179
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 54
begin_hunk_0_@zoomin8_transition:bb.a
  %i.bq = trunc nuw nsw i64 %indvars.iv to i32
  %i.br = uitofp nsz nneg i32 %i.bq to float
  %i.bs = fdiv nsz float %i.br, %i.e
  %i.bt = fadd nsz float %i.bs, -5.000000e-01
  %i.bu = tail call nsz float @llvm.fmuladd.f32(float %i.bt, float %i.p, float 5.000000e-01)
  %i.bv = fmul nsz float %i.x, %i.bu
  %i.bw = tail call nsz float @llvm.ceil.f32(float %i.bv)
  %i.bx = fptosi float %i.bw to i32
  %i.by = load i32, ptr %i.ay, align 4, !tbaa !29
  %i.bz = mul nsw i32 %i.by, %i.bf
  %i.ca = add nsw i32 %i.bz, %i.bx
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds i8, ptr %i.aj, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !65
  %i.ce = uitofp nsz i8 %i.cd to float
  %i.cf = getelementptr inbounds nuw i8, ptr %.05259, i64 %indvars.iv
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !65
  %i.ch = uitofp nsz i8 %i.cg to float
  %i.ci = fmul nsz float %i.ah, %i.ch
  %i.cj = tail call nsz noundef float @llvm.fmuladd.f32(float %i.ce, float %i.ag, float %i.ci)
  %i.ck = fptoui float %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %.05160, i64 %indvars.iv
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !520
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @zoomin16_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !61   ; 3 uses
  %i.e = sitofp nsz i32 %i.d to float             ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.g = load i32, ptr %i.f, align 4, !tbaa !70
  %i.h = sitofp nsz i32 %i.g to float             ; 2 uses
  %i.i = fadd nsz float %4, -5.000000e-01
  %i.j = fmul nsz float %i.i, 2.000000e+00        ; 2 uses
  %i.k = fcmp nsz ogt float %i.j, 0.000000e+00
  %i.l = select nsz i1 %i.k, float %i.j, float 0.000000e+00 ; 2 uses
  %i.m = fcmp nsz ogt float %i.l, 1.000000e+00
  %..i.i = select nsz i1 %i.m, float 1.000000e+00, float %i.l ; 3 uses
  %i.n = fmul nsz float %..i.i, %..i.i
  %i.o = tail call nsz float @llvm.fmuladd.f32(float %..i.i, float -2.000000e+00, float 3.000000e+00)
  %i.p = fmul nsz float %i.n, %i.o                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !56   ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge65.split

.lr.ph:                                           ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.v = icmp sge i32 %5, %6
  %i.w = icmp slt i32 %i.d, 1
  %i.x = fadd nnan nsz float %i.e, -1.000000e+00
  %i.y = fadd nnan nsz float %i.h, -1.000000e+00
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aa = fmul nsz float %4, 2.000000e+00         ; 2 uses
  %i.ab = fcmp nsz ogt float %i.aa, 0.000000e+00
  %i.ac = select nsz i1 %i.ab, float %i.aa, float 0.000000e+00 ; 2 uses
  %i.ad = fcmp nsz ogt float %i.ac, 1.000000e+00
  %..i.i54 = select nsz i1 %i.ad, float 1.000000e+00, float %i.ac ; 3 uses
  %i.ae = fmul nnan nsz float %..i.i54, %..i.i54
  %i.af = tail call nnan nsz float @llvm.fmuladd.f32(float %..i.i54, float -2.000000e+00, float 3.000000e+00)
  %i.ag = fmul nsz float %i.ae, %i.af             ; 2 uses
  %i.ah = fsub nsz float 1.000000e+00, %i.ag
  %brmerge = select i1 %i.v, i1 true, i1 %i.w
  br i1 %brmerge, label %._crit_edge65.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %wide.trip.count73 = zext nneg i32 %i.r to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.preheader.lr.ph

._crit_edge65.split:                              ; preds = %._crit_edge62, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge62
  %indvars.iv70 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next71, %._crit_edge62 ] ; 7 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv70
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv70
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv70
  %i.an = load i32, ptr %i.am, align 4, !tbaa !29 ; 2 uses
  %i.ao = mul nsw i32 %i.an, %5
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds i8, ptr %i.al, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv70
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv70
  %i.au = load i32, ptr %i.at, align 4, !tbaa !29 ; 2 uses
  %i.av = mul nsw i32 %i.au, %5
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.as, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv70
  %i.az = sdiv i32 %i.au, 2
  %i.ba = sext i32 %i.az to i64
  %i.bb = sdiv i32 %i.an, 2
  %i.bc = sext i32 %i.bb to i64
  %i.bd = load i32, ptr %i.ay, align 4, !tbaa !29
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.05061 = phi i32 [ %5, %.preheader.lr.ph ], [ %i.bp, %._crit_edge ] ; 2 uses
  %.05160 = phi ptr [ %i.ax, %.preheader.lr.ph ], [ %i.bn, %._crit_edge ] ; 2 uses
  %.05259 = phi ptr [ %i.aq, %.preheader.lr.ph ], [ %i.bo, %._crit_edge ] ; 2 uses
  %i.be = sitofp nsz i32 %.05061 to float
  %i.bf = fdiv nsz float %i.be, %i.h
  %i.bg = fadd nsz float %i.bf, -5.000000e-01
  %i.bh = tail call nsz float @llvm.fmuladd.f32(float %i.bg, float %i.p, float 5.000000e-01)
  %i.bi = fmul nsz float %i.y, %i.bh
  %i.bj = tail call nsz float @llvm.ceil.f32(float %i.bi)
  %i.bk = fptosi float %i.bj to i32
  %i.bl = mul nsw i32 %i.bd, %i.bk
  %i.bm = sdiv i32 %i.bl, 2
  br label %bb.b

._crit_edge62:                                    ; preds = %._crit_edge
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count73
  br i1 %exitcond74.not, label %._crit_edge65.split, label %.preheader.lr.ph, !llvm.loop !521

._crit_edge:                                      ; preds = %bb.b
  %i.bn = getelementptr inbounds [2 x i8], ptr %.05160, i64 %i.ba
  %i.bo = getelementptr inbounds [2 x i8], ptr %.05259, i64 %i.bc
  %i.bp = add nsw i32 %.05061, 1                  ; 2 uses
  %exitcond69.not = icmp eq i32 %i.bp, %6
  br i1 %exitcond69.not, label %._crit_edge62, label %.preheader, !llvm.loop !522

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.bq = trunc nuw nsw i64 %indvars.iv to i32
  %i.br = uitofp nsz nneg i32 %i.bq to float
  %i.bs = fdiv nsz float %i.br, %i.e
  %i.bt = fadd nsz float %i.bs, -5.000000e-01
  %i.bu = tail call nsz float @llvm.fmuladd.f32(float %i.bt, float %i.p, float 5.000000e-01)
  %i.bv = fmul nsz float %i.x, %i.bu
  %i.bw = tail call nsz float @llvm.ceil.f32(float %i.bv)
  %i.bx = fptosi float %i.bw to i32
  %i.by = add nsw i32 %i.bm, %i.bx
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [2 x i8], ptr %i.aj, i64 %i.bz
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !59
  %i.cc = uitofp nsz i16 %i.cb to float
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %.05259, i64 %indvars.iv
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !59
  %i.cf = uitofp nsz i16 %i.ce to float
  %i.cg = fmul nsz float %i.ah, %i.cf
  %i.ch = tail call nsz noundef float @llvm.fmuladd.f32(float %i.cc, float %i.ag, float %i.cg)
  %i.ci = fptoui float %i.ch to i16
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %.05160, i64 %indvars.iv
  store i16 %i.ci, ptr %i.cj, align 2, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !523
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @fadefast8_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = sub i32 %6, %5                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.g = load i32, ptr %i.f, align 8, !tbaa !57
  %i.h = sitofp nsz i32 %i.g to float
  %i.i = fdiv nsz float 1.000000e+00, %i.h        ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !56
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge71.split

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = icmp slt i32 %i.c, 1
  %i.q = icmp slt i32 %i.e, 1
  %brmerge = select i1 %i.p, i1 true, i1 %i.q
  br i1 %brmerge, label %._crit_edge71.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.e, 4
  %min.iters.check85 = icmp ult i32 %i.e, 16
  %i.r = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.i, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  %i.s = insertelement <8 x float> poison, float %4, i64 0
  %i.t = shufflevector <8 x float> %i.s, <8 x float> poison, <8 x i32> zeroinitializer
  %i.u = insertelement <4 x float> poison, float %4, i64 0 ; 2 uses
  %i.v = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> zeroinitializer
  %8 = shufflevector <4 x float> %i.u, <4 x float> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.r, 0
  %n.vec87 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert88 = insertelement <4 x float> poison, float %i.i, i64 0
  %broadcast.splat89 = shufflevector <4 x float> %broadcast.splatinsert88, <4 x float> poison, <4 x i32> zeroinitializer
  %i.w = insertelement <2 x float> poison, float %4, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> zeroinitializer
  %cmp.n94 = icmp eq i64 %n.vec87, %wide.trip.count
  br label %.preheader.lr.ph

._crit_edge71.split:                              ; preds = %._crit_edge68, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge68
  %indvars.iv76 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next77, %._crit_edge68 ] ; 7 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv76
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv76 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !29
  %i.ac = mul nsw i32 %i.ab, %5
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.z, i64 %i.ad
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv76
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv76 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !29
  %i.aj = mul nsw i32 %i.ai, %5
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ag, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv76
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv76 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !29
  %i.aq = mul nsw i32 %i.ap, %5
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.an, i64 %i.ar
  br label %iter.check

iter.check:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.05767 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.db, %._crit_edge ]
  %.05866 = phi ptr [ %i.as, %.preheader.lr.ph ], [ %i.cu, %._crit_edge ] ; 5 uses
  %.05965 = phi ptr [ %i.al, %.preheader.lr.ph ], [ %i.da, %._crit_edge ] ; 5 uses
  %.06064 = phi ptr [ %i.ae, %.preheader.lr.ph ], [ %i.cx, %._crit_edge ] ; 5 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.0596583 = ptrtoaddr ptr %.05965 to i64
  %.0606482 = ptrtoaddr ptr %.06064 to i64
  %.0586681 = ptrtoaddr ptr %.05866 to i64        ; 2 uses
  %i.at = sub i64 %.0606482, %.0586681
  %diff.check = icmp ugt i64 %i.at, -16
  %i.au = sub i64 %.0596583, %.0586681
  %diff.check84 = icmp ugt i64 %i.au, -16
  %conflict.rdx = or i1 %diff.check, %diff.check84
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check85, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.06064, i64 %index
  %wide.load = load <16 x i8>, ptr %i.av, align 1, !tbaa !65 ; 2 uses
  %i.aw = uitofp <16 x i8> %wide.load to <16 x float>
  %i.ax = getelementptr inbounds nuw i8, ptr %.05965, i64 %index
  %wide.load86 = load <16 x i8>, ptr %i.ax, align 1, !tbaa !65 ; 2 uses
  %i.ay = uitofp <16 x i8> %wide.load86 to <16 x float>
  %i.az = zext <16 x i8> %wide.load to <16 x i32>
  %i.ba = zext <16 x i8> %wide.load86 to <16 x i32>
  %i.bb = sub nsw <16 x i32> %i.az, %i.ba
  %i.bc = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.bb, i1 true)
  %i.bd = uitofp nneg <16 x i32> %i.bc to <16 x float>
  %i.be = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.bd, <16 x float> %broadcast.splat, <16 x float> splat (float 1.000000e+00))
  %i.bf = tail call nsz <16 x float> @llvm.log.v16f32(<16 x float> %i.be)
  %i.bg = fadd nsz <16 x float> %i.bf, splat (float 1.000000e+00) ; 3 uses
  %i.bh = shufflevector <16 x float> %i.bg, <16 x float> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.bi = tail call nsz <8 x float> @llvm.pow.v8f32(<8 x float> %i.t, <8 x float> %i.bh)
  %i.bj = shufflevector <16 x float> %i.bg, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.bk = tail call nsz <4 x float> @llvm.pow.v4f32(<4 x float> %i.v, <4 x float> %i.bj)
  %i.bl = tail call nsz <16 x float> @llvm.pow.v16f32(<16 x float> %8, <16 x float> %i.bg)
  %i.bm = shufflevector <8 x float> %i.bi, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bn = shufflevector <16 x float> %i.bl, <16 x float> %i.bm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bo = shufflevector <4 x float> %i.bk, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bp = shufflevector <16 x float> %i.bn, <16 x float> %i.bo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.bq = fsub nsz <16 x float> splat (float 1.000000e+00), %i.bp
  %i.br = fmul nsz <16 x float> %i.bq, %i.ay
  %i.bs = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.aw, <16 x float> %i.bp, <16 x float> %i.br)
  %i.bt = fptoui <16 x float> %i.bs to <16 x i8>
  %i.bu = getelementptr inbounds nuw i8, ptr %.05866, i64 %index
  store <16 x i8> %i.bt, ptr %i.bu, align 1, !tbaa !65
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !524

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next93, %vec.epilog.vector.body ] ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.06064, i64 %index90
  %wide.load91 = load <4 x i8>, ptr %i.bw, align 1, !tbaa !65 ; 2 uses
  %i.bx = uitofp <4 x i8> %wide.load91 to <4 x float>
  %i.by = getelementptr inbounds nuw i8, ptr %.05965, i64 %index90
  %wide.load92 = load <4 x i8>, ptr %i.by, align 1, !tbaa !65 ; 2 uses
  %i.bz = uitofp <4 x i8> %wide.load92 to <4 x float>
  %i.ca = zext <4 x i8> %wide.load91 to <4 x i32>
  %i.cb = zext <4 x i8> %wide.load92 to <4 x i32>
  %i.cc = sub nsw <4 x i32> %i.ca, %i.cb
  %i.cd = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.cc, i1 true)
  %i.ce = uitofp nneg <4 x i32> %i.cd to <4 x float>
  %i.cf = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ce, <4 x float> %broadcast.splat89, <4 x float> splat (float 1.000000e+00))
  %i.cg = tail call nsz <4 x float> @llvm.log.v4f32(<4 x float> %i.cf)
  %i.ch = fadd nsz <4 x float> %i.cg, splat (float 1.000000e+00)
  %i.ci = tail call nsz <4 x float> @llvm.pow.v4f32(<4 x float> %i.x, <4 x float> %i.ch) ; 2 uses
  %i.cj = fsub nsz <4 x float> splat (float 1.000000e+00), %i.ci
  %i.ck = fmul nsz <4 x float> %i.cj, %i.bz
  %i.cl = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bx, <4 x float> %i.ci, <4 x float> %i.ck)
  %i.cm = fptoui <4 x float> %i.cl to <4 x i8>
  %i.cn = getelementptr inbounds nuw i8, ptr %.05866, i64 %index90
  store <4 x i8> %i.cm, ptr %i.cn, align 1, !tbaa !65
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.co = icmp eq i64 %index.next93, %n.vec87
  br i1 %i.co, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !525

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n94, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec87, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge68:                                    ; preds = %._crit_edge
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %i.cp = load i32, ptr %i.j, align 8, !tbaa !56
  %i.cq = sext i32 %i.cp to i64
  %i.cr = icmp slt i64 %indvars.iv.next77, %i.cq
  br i1 %i.cr, label %.preheader.lr.ph, label %._crit_edge71.split, !llvm.loop !526

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.cs = load i32, ptr %i.ao, align 4, !tbaa !29
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds i8, ptr %.05866, i64 %i.ct
  %i.cv = load i32, ptr %i.aa, align 4, !tbaa !29
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds i8, ptr %.06064, i64 %i.cw
  %i.cy = load i32, ptr %i.ah, align 4, !tbaa !29
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds i8, ptr %.05965, i64 %i.cz
  %i.db = add nuw nsw i32 %.05767, 1              ; 2 uses
  %exitcond75.not = icmp eq i32 %i.db, %i.c
  br i1 %exitcond75.not, label %._crit_edge68, label %iter.check, !llvm.loop !527

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.06064, i64 %indvars.iv
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !65  ; 2 uses
  %i.de = uitofp nsz i8 %i.dd to float
  %i.df = getelementptr inbounds nuw i8, ptr %.05965, i64 %indvars.iv
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !65  ; 2 uses
  %i.dh = uitofp nsz i8 %i.dg to float
  %i.di = zext i8 %i.dd to i32
  %i.dj = zext i8 %i.dg to i32
  %i.dk = sub nsw i32 %i.di, %i.dj
  %i.dl = tail call i32 @llvm.abs.i32(i32 %i.dk, i1 true)
  %i.dm = uitofp nneg i32 %i.dl to float
  %i.dn = tail call nsz float @llvm.fmuladd.f32(float %i.dm, float %i.i, float 1.000000e+00)
  %i.do = tail call nsz float @llvm.log.f32(float %i.dn)
  %i.dp = fadd nsz float %i.do, 1.000000e+00
  %i.dq = tail call nsz float @llvm.pow.f32(float %4, float %i.dp) ; 2 uses
  %i.dr = fsub nsz float 1.000000e+00, %i.dq
  %i.ds = fmul nsz float %i.dr, %i.dh
  %i.dt = tail call nsz noundef float @llvm.fmuladd.f32(float %i.de, float %i.dq, float %i.ds)
  %i.du = fptoui float %i.dt to i8
  %i.dv = getelementptr inbounds nuw i8, ptr %.05866, i64 %indvars.iv
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !528
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @fadefast16_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = sub i32 %6, %5                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.g = load i32, ptr %i.f, align 8, !tbaa !57
  %i.h = sitofp nsz i32 %i.g to float
  %i.i = fdiv nsz float 1.000000e+00, %i.h        ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !56   ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge71.split

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = icmp slt i32 %i.c, 1
  %i.q = icmp slt i32 %i.e, 1
  %brmerge = select i1 %i.p, i1 true, i1 %i.q
  br i1 %brmerge, label %._crit_edge71.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %wide.trip.count79 = zext nneg i32 %i.k to i64
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 4 uses
  %i.r = shl nuw nsw i64 %wide.trip.count, 1      ; 3 uses
  %i.s = xor i32 %5, -1
  %i.t = add i32 %6, %i.s
  %i.u = zext i32 %i.t to i64                     ; 3 uses
  %i.v = shl nuw nsw i64 %i.u, 1
  %i.w = shl nuw nsw i64 %i.u, 1
  %i.x = shl nuw nsw i64 %i.u, 1
  %min.iters.check = icmp ult i32 %i.e, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.i, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %i.y = insertelement <4 x float> poison, float %4, i64 0
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aa = insertelement <2 x float> poison, float %4, i64 0
  %8 = shufflevector <2 x float> %i.aa, <2 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader.lr.ph

._crit_edge71.split:                              ; preds = %._crit_edge68, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge68
  %indvars.iv76 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next77, %._crit_edge68 ] ; 7 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv76
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !64 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv76
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !29 ; 3 uses
  %i.af = mul i32 %i.ae, %5
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ac, i64 %i.ag  ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv76
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !64 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv76
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !29 ; 3 uses
  %i.am = mul i32 %i.al, %5
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = getelementptr i8, ptr %i.aj, i64 %i.an  ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv76
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !64 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv76
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !29 ; 3 uses
  %i.at = mul i32 %i.as, %5
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr i8, ptr %i.aq, i64 %i.au  ; 3 uses
  %i.aw = sdiv i32 %i.as, 2
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = sdiv i32 %i.ae, 2
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = sdiv i32 %i.al, 2
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aq, i64 %i.r
  %i.bc = mul nsw i64 %i.v, %i.ax
  %i.bd = getelementptr i8, ptr %scevgep, i64 %i.bc
  %scevgep84 = getelementptr i8, ptr %i.bd, i64 %i.au ; 2 uses
  %scevgep85 = getelementptr i8, ptr %i.ac, i64 %i.r
  %i.be = mul nsw i64 %i.w, %i.az
  %i.bf = getelementptr i8, ptr %scevgep85, i64 %i.be
  %scevgep86 = getelementptr i8, ptr %i.bf, i64 %i.ag
  %scevgep87 = getelementptr i8, ptr %i.aj, i64 %i.r
  %i.bg = mul nsw i64 %i.x, %i.bb
  %i.bh = getelementptr i8, ptr %scevgep87, i64 %i.bg
  %scevgep88 = getelementptr i8, ptr %i.bh, i64 %i.an
  %i.bi = insertelement <4 x i32> poison, i32 %i.as, i64 0
  %i.bj = insertelement <4 x i32> %i.bi, i32 %i.ae, i64 1
  %i.bk = insertelement <4 x i32> %i.bj, i32 %i.al, i64 2
  %i.bl = shufflevector <4 x i32> %i.bk, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %bound0 = icmp ult ptr %i.av, %scevgep86
  %bound1 = icmp ult ptr %i.ah, %scevgep84
  %found.conflict = and i1 %bound0, %bound1
  %i.bm = icmp slt <4 x i32> %i.bl, splat (i32 -1)
  %bound090 = icmp ult ptr %i.av, %scevgep88
  %bound191 = icmp ult ptr %i.ao, %scevgep84
  %found.conflict92 = and i1 %bound090, %bound191
  %i.bn = bitcast <4 x i1> %i.bm to i4
  %i.bo = icmp ne i4 %i.bn, 0
  %op.rdx = or i1 %i.bo, %found.conflict
  %op.rdx96 = or i1 %op.rdx, %found.conflict92
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.05767 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.cp, %._crit_edge ]
  %.05866 = phi ptr [ %i.av, %.preheader.lr.ph ], [ %i.cm, %._crit_edge ] ; 3 uses
  %.05965 = phi ptr [ %i.ao, %.preheader.lr.ph ], [ %i.co, %._crit_edge ] ; 3 uses
  %.06064 = phi ptr [ %i.ah, %.preheader.lr.ph ], [ %i.cn, %._crit_edge ] ; 3 uses
  %brmerge97 = select i1 %min.iters.check, i1 true, i1 %op.rdx96
  br i1 %brmerge97, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %.06064, i64 %index
  %wide.load = load <8 x i16>, ptr %i.bp, align 2, !tbaa !59, !alias.scope !537 ; 2 uses
  %i.bq = uitofp <8 x i16> %wide.load to <8 x float>
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %.05965, i64 %index
  %wide.load95 = load <8 x i16>, ptr %i.br, align 2, !tbaa !59, !alias.scope !538 ; 2 uses
  %i.bs = uitofp <8 x i16> %wide.load95 to <8 x float>
  %i.bt = zext <8 x i16> %wide.load to <8 x i32>
  %i.bu = zext <8 x i16> %wide.load95 to <8 x i32>
  %i.bv = sub nsw <8 x i32> %i.bt, %i.bu
  %i.bw = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.bv, i1 true)
  %i.bx = uitofp nneg <8 x i32> %i.bw to <8 x float>
  %i.by = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.bx, <8 x float> %broadcast.splat, <8 x float> splat (float 1.000000e+00))
  %i.bz = tail call nsz <8 x float> @llvm.log.v8f32(<8 x float> %i.by)
  %i.ca = fadd nsz <8 x float> %i.bz, splat (float 1.000000e+00) ; 2 uses
  %i.cb = shufflevector <8 x float> %i.ca, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cc = tail call nsz <4 x float> @llvm.pow.v4f32(<4 x float> %i.z, <4 x float> %i.cb)
  %i.cd = tail call nsz <8 x float> @llvm.pow.v8f32(<8 x float> %8, <8 x float> %i.ca)
  %i.ce = shufflevector <4 x float> %i.cc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cf = shufflevector <8 x float> %i.cd, <8 x float> %i.ce, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.cg = fsub nsz <8 x float> splat (float 1.000000e+00), %i.cf
  %i.ch = fmul nsz <8 x float> %i.cg, %i.bs
  %i.ci = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.bq, <8 x float> %i.cf, <8 x float> %i.ch)
  %i.cj = fptoui <8 x float> %i.ci to <8 x i16>
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.05866, i64 %index
  store <8 x i16> %i.cj, ptr %i.ck, align 2, !tbaa !59, !alias.scope !539, !noalias !540
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !533

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge68:                                    ; preds = %._crit_edge
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count79
  br i1 %exitcond80.not, label %._crit_edge71.split, label %.preheader.lr.ph, !llvm.loop !534

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.cm = getelementptr inbounds [2 x i8], ptr %.05866, i64 %i.ax
  %i.cn = getelementptr inbounds [2 x i8], ptr %.06064, i64 %i.az
  %i.co = getelementptr inbounds [2 x i8], ptr %.05965, i64 %i.bb
  %i.cp = add nuw nsw i32 %.05767, 1              ; 2 uses
  %exitcond75.not = icmp eq i32 %i.cp, %i.c
  br i1 %exitcond75.not, label %._crit_edge68, label %.preheader, !llvm.loop !535

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %.06064, i64 %indvars.iv
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !59 ; 2 uses
  %i.cs = uitofp nsz i16 %i.cr to float
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %.05965, i64 %indvars.iv
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !59 ; 2 uses
  %i.cv = uitofp nsz i16 %i.cu to float
  %i.cw = zext i16 %i.cr to i32
  %i.cx = zext i16 %i.cu to i32
  %i.cy = sub nsw i32 %i.cw, %i.cx
  %i.cz = tail call i32 @llvm.abs.i32(i32 %i.cy, i1 true)
  %i.da = uitofp nneg i32 %i.cz to float
  %i.db = tail call nsz float @llvm.fmuladd.f32(float %i.da, float %i.i, float 1.000000e+00)
  %i.dc = tail call nsz float @llvm.log.f32(float %i.db)
  %i.dd = fadd nsz float %i.dc, 1.000000e+00
  %i.de = tail call nsz float @llvm.pow.f32(float %4, float %i.dd) ; 2 uses
  %i.df = fsub nsz float 1.000000e+00, %i.de
  %i.dg = fmul nsz float %i.df, %i.cv
  %i.dh = tail call nsz noundef float @llvm.fmuladd.f32(float %i.cs, float %i.de, float %i.dg)
  %i.di = fptoui float %i.dh to i16
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %.05866, i64 %indvars.iv
  store i16 %i.di, ptr %i.dj, align 2, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !536
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @fadeslow8_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = sub i32 %6, %5                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.g = load i32, ptr %i.f, align 8, !tbaa !57
  %i.h = sitofp nsz i32 %i.g to float
  %i.i = fdiv nsz float 1.000000e+00, %i.h        ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !56
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge71.split

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = icmp slt i32 %i.c, 1
  %i.q = icmp slt i32 %i.e, 1
  %brmerge = select i1 %i.p, i1 true, i1 %i.q
  br i1 %brmerge, label %._crit_edge71.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.e, 4
  %min.iters.check85 = icmp ult i32 %i.e, 16
  %i.r = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.i, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  %i.s = insertelement <8 x float> poison, float %4, i64 0
  %i.t = shufflevector <8 x float> %i.s, <8 x float> poison, <8 x i32> zeroinitializer
  %i.u = insertelement <4 x float> poison, float %4, i64 0 ; 2 uses
  %i.v = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> zeroinitializer
  %8 = shufflevector <4 x float> %i.u, <4 x float> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.r, 0
  %n.vec87 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert88 = insertelement <4 x float> poison, float %i.i, i64 0
  %broadcast.splat89 = shufflevector <4 x float> %broadcast.splatinsert88, <4 x float> poison, <4 x i32> zeroinitializer
  %i.w = insertelement <2 x float> poison, float %4, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> zeroinitializer
  %cmp.n94 = icmp eq i64 %n.vec87, %wide.trip.count
  br label %.preheader.lr.ph

._crit_edge71.split:                              ; preds = %._crit_edge68, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge68
  %indvars.iv76 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next77, %._crit_edge68 ] ; 7 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv76
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv76 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !29
  %i.ac = mul nsw i32 %i.ab, %5
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.z, i64 %i.ad
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv76
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv76 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !29
  %i.aj = mul nsw i32 %i.ai, %5
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ag, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv76
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv76 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !29
  %i.aq = mul nsw i32 %i.ap, %5
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.an, i64 %i.ar
  br label %iter.check

iter.check:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.05767 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.dd, %._crit_edge ]
  %.05866 = phi ptr [ %i.as, %.preheader.lr.ph ], [ %i.cw, %._crit_edge ] ; 5 uses
  %.05965 = phi ptr [ %i.al, %.preheader.lr.ph ], [ %i.dc, %._crit_edge ] ; 5 uses
  %.06064 = phi ptr [ %i.ae, %.preheader.lr.ph ], [ %i.cz, %._crit_edge ] ; 5 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.0596583 = ptrtoaddr ptr %.05965 to i64
  %.0606482 = ptrtoaddr ptr %.06064 to i64
  %.0586681 = ptrtoaddr ptr %.05866 to i64        ; 2 uses
  %i.at = sub i64 %.0606482, %.0586681
  %diff.check = icmp ugt i64 %i.at, -16
  %i.au = sub i64 %.0596583, %.0586681
  %diff.check84 = icmp ugt i64 %i.au, -16
  %conflict.rdx = or i1 %diff.check, %diff.check84
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check85, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.06064, i64 %index
  %wide.load = load <16 x i8>, ptr %i.av, align 1, !tbaa !65 ; 2 uses
  %i.aw = uitofp <16 x i8> %wide.load to <16 x float>
  %i.ax = getelementptr inbounds nuw i8, ptr %.05965, i64 %index
  %wide.load86 = load <16 x i8>, ptr %i.ax, align 1, !tbaa !65 ; 2 uses
  %i.ay = uitofp <16 x i8> %wide.load86 to <16 x float>
  %i.az = zext <16 x i8> %wide.load to <16 x i32>
  %i.ba = zext <16 x i8> %wide.load86 to <16 x i32>
  %i.bb = sub nsw <16 x i32> %i.az, %i.ba
  %i.bc = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.bb, i1 true)
  %i.bd = uitofp nneg <16 x i32> %i.bc to <16 x float>
  %i.be = fneg nsz <16 x float> %i.bd
  %i.bf = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.be, <16 x float> %broadcast.splat, <16 x float> splat (float 2.000000e+00))
  %i.bg = tail call nsz <16 x float> @llvm.log.v16f32(<16 x float> %i.bf)
  %i.bh = fadd nsz <16 x float> %i.bg, splat (float 1.000000e+00) ; 3 uses
  %i.bi = shufflevector <16 x float> %i.bh, <16 x float> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.bj = tail call nsz <8 x float> @llvm.pow.v8f32(<8 x float> %i.t, <8 x float> %i.bi)
  %i.bk = shufflevector <16 x float> %i.bh, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.bl = tail call nsz <4 x float> @llvm.pow.v4f32(<4 x float> %i.v, <4 x float> %i.bk)
  %i.bm = tail call nsz <16 x float> @llvm.pow.v16f32(<16 x float> %8, <16 x float> %i.bh)
  %i.bn = shufflevector <8 x float> %i.bj, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bo = shufflevector <16 x float> %i.bm, <16 x float> %i.bn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bp = shufflevector <4 x float> %i.bl, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bq = shufflevector <16 x float> %i.bo, <16 x float> %i.bp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.br = fsub nsz <16 x float> splat (float 1.000000e+00), %i.bq
  %i.bs = fmul nsz <16 x float> %i.br, %i.ay
  %i.bt = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.aw, <16 x float> %i.bq, <16 x float> %i.bs)
  %i.bu = fptoui <16 x float> %i.bt to <16 x i8>
  %i.bv = getelementptr inbounds nuw i8, ptr %.05866, i64 %index
  store <16 x i8> %i.bu, ptr %i.bv, align 1, !tbaa !65
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !541

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next93, %vec.epilog.vector.body ] ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.06064, i64 %index90
  %wide.load91 = load <4 x i8>, ptr %i.bx, align 1, !tbaa !65 ; 2 uses
  %i.by = uitofp <4 x i8> %wide.load91 to <4 x float>
  %i.bz = getelementptr inbounds nuw i8, ptr %.05965, i64 %index90
  %wide.load92 = load <4 x i8>, ptr %i.bz, align 1, !tbaa !65 ; 2 uses
  %i.ca = uitofp <4 x i8> %wide.load92 to <4 x float>
  %i.cb = zext <4 x i8> %wide.load91 to <4 x i32>
  %i.cc = zext <4 x i8> %wide.load92 to <4 x i32>
  %i.cd = sub nsw <4 x i32> %i.cb, %i.cc
  %i.ce = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.cd, i1 true)
  %i.cf = uitofp nneg <4 x i32> %i.ce to <4 x float>
  %i.cg = fneg nsz <4 x float> %i.cf
  %i.ch = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cg, <4 x float> %broadcast.splat89, <4 x float> splat (float 2.000000e+00))
  %i.ci = tail call nsz <4 x float> @llvm.log.v4f32(<4 x float> %i.ch)
  %i.cj = fadd nsz <4 x float> %i.ci, splat (float 1.000000e+00)
  %i.ck = tail call nsz <4 x float> @llvm.pow.v4f32(<4 x float> %i.x, <4 x float> %i.cj) ; 2 uses
  %i.cl = fsub nsz <4 x float> splat (float 1.000000e+00), %i.ck
  %i.cm = fmul nsz <4 x float> %i.cl, %i.ca
  %i.cn = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.by, <4 x float> %i.ck, <4 x float> %i.cm)
  %i.co = fptoui <4 x float> %i.cn to <4 x i8>
  %i.cp = getelementptr inbounds nuw i8, ptr %.05866, i64 %index90
  store <4 x i8> %i.co, ptr %i.cp, align 1, !tbaa !65
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.cq = icmp eq i64 %index.next93, %n.vec87
  br i1 %i.cq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !542

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n94, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec87, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge68:                                    ; preds = %._crit_edge
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %i.cr = load i32, ptr %i.j, align 8, !tbaa !56
  %i.cs = sext i32 %i.cr to i64
  %i.ct = icmp slt i64 %indvars.iv.next77, %i.cs
  br i1 %i.ct, label %.preheader.lr.ph, label %._crit_edge71.split, !llvm.loop !543

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.cu = load i32, ptr %i.ao, align 4, !tbaa !29
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds i8, ptr %.05866, i64 %i.cv
  %i.cx = load i32, ptr %i.aa, align 4, !tbaa !29
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds i8, ptr %.06064, i64 %i.cy
  %i.da = load i32, ptr %i.ah, align 4, !tbaa !29
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds i8, ptr %.05965, i64 %i.db
  %i.dd = add nuw nsw i32 %.05767, 1              ; 2 uses
  %exitcond75.not = icmp eq i32 %i.dd, %i.c
  br i1 %exitcond75.not, label %._crit_edge68, label %iter.check, !llvm.loop !544

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.06064, i64 %indvars.iv
  %i.df = load i8, ptr %i.de, align 1, !tbaa !65  ; 2 uses
  %i.dg = uitofp nsz i8 %i.df to float
  %i.dh = getelementptr inbounds nuw i8, ptr %.05965, i64 %indvars.iv
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !65  ; 2 uses
  %i.dj = uitofp nsz i8 %i.di to float
  %i.dk = zext i8 %i.df to i32
  %i.dl = zext i8 %i.di to i32
  %i.dm = sub nsw i32 %i.dk, %i.dl
  %i.dn = tail call i32 @llvm.abs.i32(i32 %i.dm, i1 true)
  %i.do = uitofp nneg i32 %i.dn to float
  %i.dp = fneg nsz float %i.do
  %i.dq = tail call nsz float @llvm.fmuladd.f32(float %i.dp, float %i.i, float 2.000000e+00)
  %i.dr = tail call nsz float @llvm.log.f32(float %i.dq)
  %i.ds = fadd nsz float %i.dr, 1.000000e+00
  %i.dt = tail call nsz float @llvm.pow.f32(float %4, float %i.ds) ; 2 uses
  %i.du = fsub nsz float 1.000000e+00, %i.dt
  %i.dv = fmul nsz float %i.du, %i.dj
  %i.dw = tail call nsz noundef float @llvm.fmuladd.f32(float %i.dg, float %i.dt, float %i.dv)
  %i.dx = fptoui float %i.dw to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %.05866, i64 %indvars.iv
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !545
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @fadeslow16_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = sub i32 %6, %5                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.g = load i32, ptr %i.f, align 8, !tbaa !57
  %i.h = sitofp nsz i32 %i.g to float
  %i.i = fdiv nsz float 1.000000e+00, %i.h        ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !56   ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge71.split

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = icmp slt i32 %i.c, 1
  %i.q = icmp slt i32 %i.e, 1
  %brmerge = select i1 %i.p, i1 true, i1 %i.q
  br i1 %brmerge, label %._crit_edge71.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %wide.trip.count79 = zext nneg i32 %i.k to i64
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 4 uses
  %i.r = shl nuw nsw i64 %wide.trip.count, 1      ; 3 uses
  %i.s = xor i32 %5, -1
  %i.t = add i32 %6, %i.s
  %i.u = zext i32 %i.t to i64                     ; 3 uses
  %i.v = shl nuw nsw i64 %i.u, 1
  %i.w = shl nuw nsw i64 %i.u, 1
  %i.x = shl nuw nsw i64 %i.u, 1
  %min.iters.check = icmp ult i32 %i.e, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.i, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %i.y = insertelement <4 x float> poison, float %4, i64 0
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aa = insertelement <2 x float> poison, float %4, i64 0
  %8 = shufflevector <2 x float> %i.aa, <2 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader.lr.ph

._crit_edge71.split:                              ; preds = %._crit_edge68, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge68
  %indvars.iv76 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next77, %._crit_edge68 ] ; 7 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv76
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !64 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv76
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !29 ; 3 uses
  %i.af = mul i32 %i.ae, %5
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ac, i64 %i.ag  ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv76
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !64 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv76
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !29 ; 3 uses
  %i.am = mul i32 %i.al, %5
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = getelementptr i8, ptr %i.aj, i64 %i.an  ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv76
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !64 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv76
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !29 ; 3 uses
  %i.at = mul i32 %i.as, %5
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr i8, ptr %i.aq, i64 %i.au  ; 3 uses
  %i.aw = sdiv i32 %i.as, 2
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = sdiv i32 %i.ae, 2
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = sdiv i32 %i.al, 2
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aq, i64 %i.r
  %i.bc = mul nsw i64 %i.v, %i.ax
  %i.bd = getelementptr i8, ptr %scevgep, i64 %i.bc
  %scevgep84 = getelementptr i8, ptr %i.bd, i64 %i.au ; 2 uses
  %scevgep85 = getelementptr i8, ptr %i.ac, i64 %i.r
  %i.be = mul nsw i64 %i.w, %i.az
  %i.bf = getelementptr i8, ptr %scevgep85, i64 %i.be
  %scevgep86 = getelementptr i8, ptr %i.bf, i64 %i.ag
  %scevgep87 = getelementptr i8, ptr %i.aj, i64 %i.r
  %i.bg = mul nsw i64 %i.x, %i.bb
  %i.bh = getelementptr i8, ptr %scevgep87, i64 %i.bg
  %scevgep88 = getelementptr i8, ptr %i.bh, i64 %i.an
  %i.bi = insertelement <4 x i32> poison, i32 %i.as, i64 0
  %i.bj = insertelement <4 x i32> %i.bi, i32 %i.ae, i64 1
  %i.bk = insertelement <4 x i32> %i.bj, i32 %i.al, i64 2
  %i.bl = shufflevector <4 x i32> %i.bk, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %bound0 = icmp ult ptr %i.av, %scevgep86
  %bound1 = icmp ult ptr %i.ah, %scevgep84
  %found.conflict = and i1 %bound0, %bound1
  %i.bm = icmp slt <4 x i32> %i.bl, splat (i32 -1)
  %bound090 = icmp ult ptr %i.av, %scevgep88
  %bound191 = icmp ult ptr %i.ao, %scevgep84
  %found.conflict92 = and i1 %bound090, %bound191
  %i.bn = bitcast <4 x i1> %i.bm to i4
  %i.bo = icmp ne i4 %i.bn, 0
  %op.rdx = or i1 %i.bo, %found.conflict
  %op.rdx96 = or i1 %op.rdx, %found.conflict92
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.05767 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.cq, %._crit_edge ]
  %.05866 = phi ptr [ %i.av, %.preheader.lr.ph ], [ %i.cn, %._crit_edge ] ; 3 uses
  %.05965 = phi ptr [ %i.ao, %.preheader.lr.ph ], [ %i.cp, %._crit_edge ] ; 3 uses
  %.06064 = phi ptr [ %i.ah, %.preheader.lr.ph ], [ %i.co, %._crit_edge ] ; 3 uses
  %brmerge97 = select i1 %min.iters.check, i1 true, i1 %op.rdx96
  br i1 %brmerge97, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %.06064, i64 %index
  %wide.load = load <8 x i16>, ptr %i.bp, align 2, !tbaa !59, !alias.scope !554 ; 2 uses
  %i.bq = uitofp <8 x i16> %wide.load to <8 x float>
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %.05965, i64 %index
  %wide.load95 = load <8 x i16>, ptr %i.br, align 2, !tbaa !59, !alias.scope !555 ; 2 uses
  %i.bs = uitofp <8 x i16> %wide.load95 to <8 x float>
  %i.bt = zext <8 x i16> %wide.load to <8 x i32>
  %i.bu = zext <8 x i16> %wide.load95 to <8 x i32>
  %i.bv = sub nsw <8 x i32> %i.bt, %i.bu
  %i.bw = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.bv, i1 true)
  %i.bx = uitofp nneg <8 x i32> %i.bw to <8 x float>
  %i.by = fneg nsz <8 x float> %i.bx
  %i.bz = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.by, <8 x float> %broadcast.splat, <8 x float> splat (float 2.000000e+00))
  %i.ca = tail call nsz <8 x float> @llvm.log.v8f32(<8 x float> %i.bz)
  %i.cb = fadd nsz <8 x float> %i.ca, splat (float 1.000000e+00) ; 2 uses
  %i.cc = shufflevector <8 x float> %i.cb, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cd = tail call nsz <4 x float> @llvm.pow.v4f32(<4 x float> %i.z, <4 x float> %i.cc)
  %i.ce = tail call nsz <8 x float> @llvm.pow.v8f32(<8 x float> %8, <8 x float> %i.cb)
  %i.cf = shufflevector <4 x float> %i.cd, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cg = shufflevector <8 x float> %i.ce, <8 x float> %i.cf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ch = fsub nsz <8 x float> splat (float 1.000000e+00), %i.cg
  %i.ci = fmul nsz <8 x float> %i.ch, %i.bs
  %i.cj = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.bq, <8 x float> %i.cg, <8 x float> %i.ci)
  %i.ck = fptoui <8 x float> %i.cj to <8 x i16>
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %.05866, i64 %index
  store <8 x i16> %i.ck, ptr %i.cl, align 2, !tbaa !59, !alias.scope !556, !noalias !557
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !550

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge68:                                    ; preds = %._crit_edge
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count79
  br i1 %exitcond80.not, label %._crit_edge71.split, label %.preheader.lr.ph, !llvm.loop !551

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.cn = getelementptr inbounds [2 x i8], ptr %.05866, i64 %i.ax
  %i.co = getelementptr inbounds [2 x i8], ptr %.06064, i64 %i.az
  %i.cp = getelementptr inbounds [2 x i8], ptr %.05965, i64 %i.bb
  %i.cq = add nuw nsw i32 %.05767, 1              ; 2 uses
  %exitcond75.not = icmp eq i32 %i.cq, %i.c
  br i1 %exitcond75.not, label %._crit_edge68, label %.preheader, !llvm.loop !552

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %.06064, i64 %indvars.iv
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !59 ; 2 uses
  %i.ct = uitofp nsz i16 %i.cs to float
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %.05965, i64 %indvars.iv
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !59 ; 2 uses
  %i.cw = uitofp nsz i16 %i.cv to float
  %i.cx = zext i16 %i.cs to i32
  %i.cy = zext i16 %i.cv to i32
  %i.cz = sub nsw i32 %i.cx, %i.cy
  %i.da = tail call i32 @llvm.abs.i32(i32 %i.cz, i1 true)
  %i.db = uitofp nneg i32 %i.da to float
  %i.dc = fneg nsz float %i.db
  %i.dd = tail call nsz float @llvm.fmuladd.f32(float %i.dc, float %i.i, float 2.000000e+00)
  %i.de = tail call nsz float @llvm.log.f32(float %i.dd)
  %i.df = fadd nsz float %i.de, 1.000000e+00
  %i.dg = tail call nsz float @llvm.pow.f32(float %4, float %i.df) ; 2 uses
  %i.dh = fsub nsz float 1.000000e+00, %i.dg
  %i.di = fmul nsz float %i.dh, %i.cw
  %i.dj = tail call nsz noundef float @llvm.fmuladd.f32(float %i.ct, float %i.dg, float %i.di)
  %i.dk = fptoui float %i.dj to i16
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %.05866, i64 %indvars.iv
  store i16 %i.dk, ptr %i.dl, align 2, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !553
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @hlwind8_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.b = load i32, ptr %i.a, align 8, !tbaa !61   ; 3 uses
  %i.c = icmp slt i32 %5, %6
  br i1 %i.c, label %.lr.ph49, label %._crit_edge50.split

.lr.ph49:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = icmp sgt i32 %i.b, 0
  %i.g = sitofp nsz i32 %i.b to float
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.l = fadd nsz float %4, -1.000000e+00
  br i1 %i.f, label %.lr.ph49.split, label %._crit_edge50.split

.lr.ph49.split:                                   ; preds = %.lr.ph49
  %i.m = load i32, ptr %i.h, align 8, !tbaa !56   ; 3 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph44.preheader, label %._crit_edge50.split

.lr.ph44.preheader:                               ; preds = %.lr.ph49.split
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.lr.ph44

._crit_edge50.split:                              ; preds = %._crit_edge45, %.lr.ph49.split, %.lr.ph49, %bb.a
  ret void

.lr.ph44:                                         ; preds = %.lr.ph44.preheader, %._crit_edge45
  %i.o = phi i32 [ %i.y, %._crit_edge45 ], [ %i.m, %.lr.ph44.preheader ] ; 2 uses
  %i.p = phi i32 [ %i.z, %._crit_edge45 ], [ %i.m, %.lr.ph44.preheader ] ; 2 uses
  %.046 = phi i32 [ %i.aa, %._crit_edge45 ], [ %5, %.lr.ph44.preheader ] ; 5 uses
  %i.q = sitofp nsz i32 %.046 to float
  %i.r = fmul nnan nsz float %i.q, 7.823300e+01
  %i.s = tail call nsz float @llvm.sin.f32(float %i.r)
  %i.t = fmul nsz float %i.s, f0x472AEE8C         ; 2 uses
  %i.u = tail call nsz float @llvm.floor.f32(float %i.t)
  %i.v = fsub nsz float %i.t, %i.u
  %i.w = fmul nsz float %i.v, 2.000000e-01
  %i.x = icmp sgt i32 %i.p, 0
  br i1 %i.x, label %.lr.ph44.split, label %._crit_edge45

._crit_edge45:                                    ; preds = %._crit_edge, %.lr.ph44
end_hunk_0
