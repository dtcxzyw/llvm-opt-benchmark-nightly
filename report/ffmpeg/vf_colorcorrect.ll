Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_colorcorrect?download=true
inline.NumInlined: 12
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@median_8:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load float, ptr %i.c, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !35
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load i32, ptr %i.l, align 8, !tbaa !35
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44   ; 5 uses
  %i.w = mul nsw i32 %i.h, %i.f
  %i.x = sdiv i32 %i.w, 2                         ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 3 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !41 ; 2 uses
  %i.aa = fptosi float %i.z to i32                ; 4 uses
  %i.ab = fadd nsz float %i.z, 1.000000e+00
  %i.ac = fmul nsz float %i.ab, 4.000000e+00
  %i.ad = fptoui float %i.ac to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.t, i8 0, i64 %i.ad, i1 false)
  %i.ae = load float, ptr %i.y, align 4, !tbaa !41
  %i.af = fadd nsz float %i.ae, 1.000000e+00
  %i.ag = fmul nsz float %i.af, 4.000000e+00
  %i.ah = fptoui float %i.ag to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.v, i8 0, i64 %i.ah, i1 false)
  %i.ai = icmp sgt i32 %i.h, 0
  %i.aj = icmp sgt i32 %i.f, 0
  %or.cond = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond, label %.preheader76.preheader, label %.preheader

.preheader76.preheader:                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ak = icmp eq i32 %i.f, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod119 = trunc i32 %i.f to i1
  br label %.preheader76

.preheader76:                                     ; preds = %.preheader76.preheader, %._crit_edge
  %.06680 = phi i32 [ %i.bc, %._crit_edge ], [ 0, %.preheader76.preheader ]
  %.07179 = phi ptr [ %i.bb, %._crit_edge ], [ %i.r, %.preheader76.preheader ] ; 4 uses
  %.07278 = phi ptr [ %i.ba, %._crit_edge ], [ %i.p, %.preheader76.preheader ] ; 4 uses
  br i1 %i.ak, label %.epil.preheader, label %.preheader76.new

.preheader:                                       ; preds = %._crit_edge, %bb.a
  %i.al = load float, ptr %i.y, align 4, !tbaa !41
  %i.am = fadd nsz float %i.al, 1.000000e+00      ; 3 uses
  %i.an = fcmp nsz ogt float %i.am, 0.000000e+00
  br i1 %i.an, label %.lr.ph, label %._crit_edge92

._crit_edge.unr-lcssa:                            ; preds = %.preheader76.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader76
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader76 ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod119)
  %i.ao = getelementptr inbounds nuw i8, ptr %.07278, i64 %indvars.iv.epil.init
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !49
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !35
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %.07179, i64 %indvars.iv.epil.init
  %i.av = load i8, ptr %i.au, align 1, !tbaa !49
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !35
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !35
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.ba = getelementptr inbounds i8, ptr %.07278, i64 %i.k
  %i.bb = getelementptr inbounds i8, ptr %.07179, i64 %i.n
  %i.bc = add nuw nsw i32 %.06680, 1              ; 2 uses
  %exitcond97.not = icmp eq i32 %i.bc, %i.h
  br i1 %exitcond97.not, label %.preheader, label %.preheader76, !llvm.loop !105

.preheader76.new:                                 ; preds = %.preheader76, %.preheader76.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader76.new ], [ 0, %.preheader76 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader76.new ], [ 0, %.preheader76 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.07278, i64 %indvars.iv
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !49
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !35
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !35
  %i.bj = getelementptr inbounds nuw i8, ptr %.07179, i64 %indvars.iv
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !49
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bl ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !35
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !35
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.07278, i64 %indvars.iv.next
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !49
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !35
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !35
  %i.bv = getelementptr inbounds nuw i8, ptr %.07179, i64 %indvars.iv.next
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !49
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bx ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !35
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !35
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader76.new, !llvm.loop !106

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %bb.b ], [ 0, %.preheader ] ; 3 uses
  %.06881 = phi i32 [ %i.cd, %bb.b ], [ 0, %.preheader ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv98
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !35
  %i.cd = add i32 %i.cc, %.06881                  ; 2 uses
  %.not = icmp ult i32 %i.cd, %i.x
  br i1 %.not, label %bb.b, label %._crit_edge83.split.loop.exit111

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %i.ce = trunc nuw i64 %indvars.iv.next99 to i32
  %i.cf = uitofp nsz nneg i32 %i.ce to float
  %i.cg = fcmp nsz ogt float %i.am, %i.cf
  br i1 %i.cg, label %.lr.ph, label %._crit_edge83, !llvm.loop !107

._crit_edge83.split.loop.exit111:                 ; preds = %.lr.ph
  %i.ch = trunc nuw nsw i64 %indvars.iv98 to i32
  br label %._crit_edge83

._crit_edge83:                                    ; preds = %bb.b, %._crit_edge83.split.loop.exit111
  %.070 = phi i32 [ %i.ch, %._crit_edge83.split.loop.exit111 ], [ %i.aa, %bb.b ] ; 2 uses
  br label %.lr.ph91

.lr.ph91:                                         ; preds = %._crit_edge83, %bb.c
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %bb.c ], [ 0, %._crit_edge83 ] ; 3 uses
  %.06788 = phi i32 [ %i.ck, %bb.c ], [ 0, %._crit_edge83 ]
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv101
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !35
  %i.ck = add i32 %i.cj, %.06788                  ; 2 uses
  %.not75 = icmp ult i32 %i.ck, %i.x
  br i1 %.not75, label %bb.c, label %._crit_edge92.loopexit.split.loop.exit

bb.c:                                             ; preds = %.lr.ph91
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %i.cl = trunc nuw i64 %indvars.iv.next102 to i32
  %i.cm = uitofp nsz nneg i32 %i.cl to float
  %i.cn = fcmp nsz ogt float %i.am, %i.cm
  br i1 %i.cn, label %.lr.ph91, label %._crit_edge92, !llvm.loop !108

._crit_edge92.loopexit.split.loop.exit:           ; preds = %.lr.ph91
  %i.co = trunc nuw nsw i64 %indvars.iv101 to i32
  br label %._crit_edge92

._crit_edge92:                                    ; preds = %bb.c, %._crit_edge92.loopexit.split.loop.exit, %.preheader
  %.070110 = phi i32 [ %.070, %._crit_edge92.loopexit.split.loop.exit ], [ %i.aa, %.preheader ], [ %.070, %bb.c ]
  %.069 = phi i32 [ %i.co, %._crit_edge92.loopexit.split.loop.exit ], [ %i.aa, %.preheader ], [ %i.aa, %bb.c ]
  %i.cp = insertelement <2 x i32> poison, i32 %.070110, i64 0
  %i.cq = insertelement <2 x i32> %i.cp, i32 %.069, i64 1
  %i.cr = sitofp <2 x i32> %i.cq to <2 x float>
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !36
  %i.cu = insertelement <2 x float> poison, float %i.d, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.cr, <2 x float> splat (float -5.000000e-01))
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x float> %i.cx, ptr %i.ct, align 4, !tbaa !37
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @median_16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, i32 %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load float, ptr %i.c, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 68
  %4 = load i32, ptr %i.i, align 4, !tbaa !35
  %5 = sdiv i32 %4, 2
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %8 = load i32, ptr %7, align 8, !tbaa !35
  %9 = sdiv i32 %8, 2
  %i.j = sext i32 %9 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43   ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !44   ; 5 uses
  %i.s = mul nsw i32 %i.h, %i.f
  %i.t = sdiv i32 %i.s, 2                         ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 3 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !41 ; 2 uses
  %i.w = fptosi float %i.v to i32                 ; 4 uses
  %i.x = fadd nsz float %i.v, 1.000000e+00
  %i.y = fmul nsz float %i.x, 4.000000e+00
  %i.z = fptoui float %i.y to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %i.z, i1 false)
  %i.aa = load float, ptr %i.u, align 4, !tbaa !41
  %i.ab = fadd nsz float %i.aa, 1.000000e+00
  %i.ac = fmul nsz float %i.ab, 4.000000e+00
  %i.ad = fptoui float %i.ac to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.r, i8 0, i64 %i.ad, i1 false)
  %i.ae = icmp sgt i32 %i.h, 0
  %i.af = icmp sgt i32 %i.f, 0
  %or.cond = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond, label %.preheader76.preheader, label %.preheader

.preheader76.preheader:                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ag = icmp eq i32 %i.f, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod119 = trunc i32 %i.f to i1
  br label %.preheader76

.preheader76:                                     ; preds = %.preheader76.preheader, %._crit_edge
  %.06680 = phi i32 [ %i.ay, %._crit_edge ], [ 0, %.preheader76.preheader ]
  %.07179 = phi ptr [ %i.ax, %._crit_edge ], [ %i.n, %.preheader76.preheader ] ; 4 uses
  %.07278 = phi ptr [ %i.aw, %._crit_edge ], [ %i.l, %.preheader76.preheader ] ; 4 uses
  br i1 %i.ag, label %.epil.preheader, label %.preheader76.new

.preheader:                                       ; preds = %._crit_edge, %bb.a
  %i.ah = load float, ptr %i.u, align 4, !tbaa !41
  %i.ai = fadd nsz float %i.ah, 1.000000e+00      ; 3 uses
  %i.aj = fcmp nsz ogt float %i.ai, 0.000000e+00
  br i1 %i.aj, label %.lr.ph, label %._crit_edge92

._crit_edge.unr-lcssa:                            ; preds = %.preheader76.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader76
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader76 ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod119)
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %.07278, i64 %indvars.iv.epil.init
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !53
  %i.am = zext i16 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !35
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !35
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %.07179, i64 %indvars.iv.epil.init
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !53
  %i.as = zext i16 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !35
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.at, align 4, !tbaa !35
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.aw = getelementptr inbounds [2 x i8], ptr %.07278, i64 %6
  %i.ax = getelementptr inbounds [2 x i8], ptr %.07179, i64 %i.j
  %i.ay = add nuw nsw i32 %.06680, 1              ; 2 uses
  %exitcond97.not = icmp eq i32 %i.ay, %i.h
  br i1 %exitcond97.not, label %.preheader, label %.preheader76, !llvm.loop !109

.preheader76.new:                                 ; preds = %.preheader76, %.preheader76.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader76.new ], [ 0, %.preheader76 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader76.new ], [ 0, %.preheader76 ]
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %.07278, i64 %indvars.iv
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !53
  %i.bb = zext i16 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !35
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !35
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %.07179, i64 %indvars.iv
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !53
  %i.bh = zext i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !35
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !35
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %.07278, i64 %indvars.iv.next
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !53
  %i.bn = zext i16 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bn ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !35
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !35
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %.07179, i64 %indvars.iv.next
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !53
  %i.bt = zext i16 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !35
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !35
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader76.new, !llvm.loop !110

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %bb.b ], [ 0, %.preheader ] ; 3 uses
  %.06881 = phi i32 [ %i.bz, %bb.b ], [ 0, %.preheader ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv98
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !35
  %i.bz = add i32 %i.by, %.06881                  ; 2 uses
  %.not = icmp ult i32 %i.bz, %i.t
  br i1 %.not, label %bb.b, label %._crit_edge83.split.loop.exit111

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %i.ca = trunc nuw i64 %indvars.iv.next99 to i32
  %i.cb = uitofp nsz nneg i32 %i.ca to float
  %i.cc = fcmp nsz ogt float %i.ai, %i.cb
  br i1 %i.cc, label %.lr.ph, label %._crit_edge83, !llvm.loop !111

._crit_edge83.split.loop.exit111:                 ; preds = %.lr.ph
  %i.cd = trunc nuw nsw i64 %indvars.iv98 to i32
  br label %._crit_edge83

._crit_edge83:                                    ; preds = %bb.b, %._crit_edge83.split.loop.exit111
  %.070 = phi i32 [ %i.cd, %._crit_edge83.split.loop.exit111 ], [ %i.w, %bb.b ] ; 2 uses
  br label %.lr.ph91

.lr.ph91:                                         ; preds = %._crit_edge83, %bb.c
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %bb.c ], [ 0, %._crit_edge83 ] ; 3 uses
  %.06788 = phi i32 [ %i.cg, %bb.c ], [ 0, %._crit_edge83 ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv101
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !35
  %i.cg = add i32 %i.cf, %.06788                  ; 2 uses
  %.not75 = icmp ult i32 %i.cg, %i.t
  br i1 %.not75, label %bb.c, label %._crit_edge92.loopexit.split.loop.exit

bb.c:                                             ; preds = %.lr.ph91
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %i.ch = trunc nuw i64 %indvars.iv.next102 to i32
  %i.ci = uitofp nsz nneg i32 %i.ch to float
  %i.cj = fcmp nsz ogt float %i.ai, %i.ci
  br i1 %i.cj, label %.lr.ph91, label %._crit_edge92, !llvm.loop !112

._crit_edge92.loopexit.split.loop.exit:           ; preds = %.lr.ph91
  %i.ck = trunc nuw nsw i64 %indvars.iv101 to i32
  br label %._crit_edge92

._crit_edge92:                                    ; preds = %bb.c, %._crit_edge92.loopexit.split.loop.exit, %.preheader
  %.070110 = phi i32 [ %.070, %._crit_edge92.loopexit.split.loop.exit ], [ %i.w, %.preheader ], [ %.070, %bb.c ]
  %.069 = phi i32 [ %i.ck, %._crit_edge92.loopexit.split.loop.exit ], [ %i.w, %.preheader ], [ %i.w, %bb.c ]
  %i.cl = insertelement <2 x i32> poison, i32 %.070110, i64 0
  %i.cm = insertelement <2 x i32> %i.cl, i32 %.069, i64 1
  %i.cn = sitofp <2 x i32> %i.cm to <2 x float>
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !36
  %i.cq = insertelement <2 x float> poison, float %i.d, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %i.cn, <2 x float> splat (float -5.000000e-01))
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x float> %i.ct, ptr %i.cp, align 4, !tbaa !37
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare ptr @av_default_item_name(ptr noundef) #1

declare void @av_freep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fmuladd.v16f32(<16 x float>, <16 x float>, <16 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umin.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

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
!20 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!21 = !{!"AVRational", !6, i64 0, !6, i64 4}
!22 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!23 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!24 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
end_hunk_0
