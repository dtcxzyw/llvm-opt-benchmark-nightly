Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/mct?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@opj_mct_decode_real:bb.a
  %i.es = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.et = insertelement <2 x float> %i.es, float %i.ek, i64 1
  %i.eu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.er, <2 x float> <float f0x3F36D1E1, float 1.772000e+00>, <2 x float> %i.et) ; 2 uses
  %i.ev = extractelement <2 x float> %i.ep, i64 0
  store float %i.ev, ptr %i.ed, align 4, !tbaa !16
  %i.ew = extractelement <2 x float> %i.eu, i64 0
  store float %i.ew, ptr %i.ee, align 4, !tbaa !16
  %i.ex = extractelement <2 x float> %i.eu, i64 1
  store float %i.ex, ptr %i.eg, align 4, !tbaa !16
  %exitcond90.not.5 = icmp eq i64 %i.ae, 6
  br i1 %exitcond90.not.5, label %._crit_edge86, label %.lr.ph85.6

.lr.ph85.6:                                       ; preds = %.lr.ph85.5
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 24 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 24 ; 2 uses
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !16 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 24 ; 2 uses
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !16 ; 2 uses
  %i.fd = fneg float %i.fa
  %i.fe = fneg float %i.fc
  %i.ff = load float, ptr %i.ey, align 4, !tbaa !16 ; 2 uses
  %i.fg = insertelement <2 x float> poison, float %i.fc, i64 0
  %i.fh = insertelement <2 x float> %i.fg, float %i.fd, i64 1
  %i.fi = insertelement <2 x float> poison, float %i.ff, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fh, <2 x float> <float 1.402000e+00, float 3.441300e-01>, <2 x float> %i.fj) ; 2 uses
  %i.fl = insertelement <2 x float> poison, float %i.fe, i64 0
  %i.fm = insertelement <2 x float> %i.fl, float %i.fa, i64 1
  %i.fn = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fo = insertelement <2 x float> %i.fn, float %i.ff, i64 1
  %i.fp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> <float f0x3F36D1E1, float 1.772000e+00>, <2 x float> %i.fo) ; 2 uses
  %i.fq = extractelement <2 x float> %i.fk, i64 0
  store float %i.fq, ptr %i.ey, align 4, !tbaa !16
  %i.fr = extractelement <2 x float> %i.fp, i64 0
  store float %i.fr, ptr %i.ez, align 4, !tbaa !16
  %i.fs = extractelement <2 x float> %i.fp, i64 1
  store float %i.fs, ptr %i.fb, align 4, !tbaa !16
  br label %._crit_edge86

._crit_edge86:                                    ; preds = %.lr.ph85, %.lr.ph85.1, %.lr.ph85.2, %.lr.ph85.3, %.lr.ph85.4, %.lr.ph85.5, %.lr.ph85.6, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define double @opj_mct_getnorm_real(i32 noundef %0) local_unnamed_addr #0 !guid !34 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @opj_mct_norms_real, i64 %i.a
  %i.c = load double, ptr %i.b, align 8, !tbaa !14
  ret double %i.c
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @opj_mct_encode_custom(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 !guid !47 {
bb.a:
  %i.a = mul i32 %3, %3                           ; 4 uses
  %i.b = add i32 %i.a, %3
  %i.c = zext i32 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 2
  %i.e = tail call ptr @opj_malloc(i64 noundef %i.d) #8 ; 13 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext i32 %3 to i64                       ; 10 uses
  %i.g = getelementptr [4 x i8], ptr %i.e, i64 %i.f ; 4 uses
  %i.h = zext i32 %i.a to i64                     ; 3 uses
  %.not66 = icmp eq i32 %i.a, 0
  br i1 %.not66, label %.preheader54, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %min.iters.check = icmp ult i32 %i.a, 8
  br i1 %min.iters.check, label %.lr.ph.preheader112, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.h, 4294967288               ; 4 uses
  %i.i = shl nuw nsw i64 %n.vec, 2
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.k  ; 2 uses
  %i.l = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !16
  %wide.load83 = load <4 x float>, ptr %i.l, align 4, !tbaa !16
  %i.m = fmul <4 x float> %wide.load, splat (float 8.192000e+03)
  %i.n = fmul <4 x float> %wide.load83, splat (float 8.192000e+03)
  %i.o = fptosi <4 x float> %i.m to <4 x i32>
  %i.p = fptosi <4 x float> %i.n to <4 x i32>
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <4 x i32> %i.o, ptr %i.q, align 4, !tbaa !6
  store <4 x i32> %i.p, ptr %i.r, align 4, !tbaa !6
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %.preheader54, label %.lr.ph.preheader112

.lr.ph.preheader112:                              ; preds = %.lr.ph.preheader, %middle.block
  %.04756.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.04955.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.j, %middle.block ]
  br label %.lr.ph

.preheader54:                                     ; preds = %.lr.ph, %middle.block, %bb.b
  %i.t = icmp ne i64 %1, 0
  %i.u = icmp ne i32 %3, 0
  %or.cond = and i1 %i.t, %i.u
  br i1 %or.cond, label %.preheader53.us.us.preheader, label %._crit_edge65

.preheader53.us.us.preheader:                     ; preds = %.preheader54
  %i.v = shl nuw nsw i64 %i.f, 2
  %xtraiter = and i64 %i.f, 3                     ; 3 uses
  %i.w = icmp ult i32 %3, 4
  %unroll_iter = and i64 %i.f, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod113 = icmp ne i64 %xtraiter, 0
  %min.iters.check90 = icmp ult i32 %3, 8
  %n.vec95 = and i64 %i.f, 4294967288             ; 4 uses
  %i.x = shl nuw nsw i64 %n.vec95, 2
  %cmp.n106 = icmp eq i64 %n.vec95, %i.f
  %xtraiter114 = and i64 %i.f, 1
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  %i.y = add nsw i64 %i.f, -1
  br label %.preheader53.us.us

.preheader53.us.us:                               ; preds = %.preheader53.us.us.preheader, %._crit_edge.us.us
  %.14864.us.us = phi i64 [ %i.dd, %._crit_edge.us.us ], [ 0, %.preheader53.us.us.preheader ]
  br i1 %i.w, label %.epil.preheader, label %.preheader53.us.us.new

.preheader53.us.us.new:                           ; preds = %.preheader53.us.us, %.preheader53.us.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader53.us.us.new ], [ 0, %.preheader53.us.us ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader53.us.us.new ], [ 0, %.preheader53.us.us ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !49
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !6
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !6
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !49
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !6
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !6
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !49
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !6
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.1
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !6
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !49
  %i.an = load i32, ptr %i.am, align 4, !tbaa !6
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.2
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !6
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..preheader_crit_edge.us.us.preheader.unr-lcssa, label %.preheader53.us.us.new, !llvm.loop !36

..preheader_crit_edge.us.us.preheader.unr-lcssa:  ; preds = %.preheader53.us.us.new
  br i1 %lcmp.mod.not, label %..preheader_crit_edge.us.us.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.us.preheader.unr-lcssa, %.preheader53.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader53.us.us ], [ %indvars.iv.next.3, %..preheader_crit_edge.us.us.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod113)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %bb.c ], [ %indvars.iv.epil.init, %.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.c ], [ 0, %.epil.preheader ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !49
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !6
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.epil
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !6
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..preheader_crit_edge.us.us.preheader, label %bb.c, !llvm.loop !37

..preheader_crit_edge.us.us.preheader:            ; preds = %bb.c, %..preheader_crit_edge.us.us.preheader.unr-lcssa
  br label %..preheader_crit_edge.us.us

..preheader_crit_edge.us.us:                      ; preds = %..preheader_crit_edge.us.us.preheader, %.loopexit
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %.loopexit ], [ 0, %..preheader_crit_edge.us.us.preheader ] ; 2 uses
  %.062.us.us = phi ptr [ %.lcssa, %.loopexit ], [ %i.g, %..preheader_crit_edge.us.us.preheader ] ; 6 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv74 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !49 ; 9 uses
  store i32 0, ptr %i.au, align 4, !tbaa !6
  br i1 %min.iters.check90, label %scalar.ph89.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %..preheader_crit_edge.us.us
  %i.av = getelementptr i8, ptr %i.au, i64 4      ; 2 uses
  %i.aw = getelementptr i8, ptr %.062.us.us, i64 %i.v
  %bound0 = icmp ult ptr %i.au, %i.g
  %bound1 = icmp ult ptr %i.e, %i.av
  %found.conflict = and i1 %bound0, %bound1
  %bound091 = icmp ult ptr %i.au, %i.aw
  %bound192 = icmp ult ptr %.062.us.us, %i.av
  %found.conflict93 = and i1 %bound091, %bound192
  %conflict.rdx = or i1 %found.conflict, %found.conflict93
  br i1 %conflict.rdx, label %scalar.ph89.preheader, label %vector.ph94

vector.ph94:                                      ; preds = %vector.memcheck
  %i.ax = getelementptr i8, ptr %.062.us.us, i64 %i.x ; 2 uses
  br label %vector.body96

vector.body96:                                    ; preds = %vector.body96, %vector.ph94
  %index97 = phi i64 [ 0, %vector.ph94 ], [ %index.next104, %vector.body96 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph94 ], [ %i.bo, %vector.body96 ]
  %vec.phi98 = phi <4 x i32> [ zeroinitializer, %vector.ph94 ], [ %i.bp, %vector.body96 ]
  %i.ay = shl i64 %index97, 2
  %next.gep99 = getelementptr i8, ptr %.062.us.us, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep99, i64 16
  %wide.load100 = load <4 x i32>, ptr %next.gep99, align 4, !tbaa !6, !alias.scope !50
  %wide.load101 = load <4 x i32>, ptr %i.az, align 4, !tbaa !6, !alias.scope !50
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index97 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load102 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !6, !alias.scope !51
  %wide.load103 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !6, !alias.scope !51
  %i.bc = sext <4 x i32> %wide.load100 to <4 x i64>
  %i.bd = sext <4 x i32> %wide.load101 to <4 x i64>
  %i.be = sext <4 x i32> %wide.load102 to <4 x i64>
  %i.bf = sext <4 x i32> %wide.load103 to <4 x i64>
  %i.bg = mul nsw <4 x i64> %i.be, %i.bc
  %i.bh = mul nsw <4 x i64> %i.bf, %i.bd
  %i.bi = add nsw <4 x i64> %i.bg, splat (i64 4096)
  %i.bj = add nsw <4 x i64> %i.bh, splat (i64 4096)
  %i.bk = lshr <4 x i64> %i.bi, splat (i64 13)
  %i.bl = lshr <4 x i64> %i.bj, splat (i64 13)
  %i.bm = trunc <4 x i64> %i.bk to <4 x i32>
  %i.bn = trunc <4 x i64> %i.bl to <4 x i32>
  %i.bo = add <4 x i32> %vec.phi, %i.bm           ; 2 uses
  %i.bp = add <4 x i32> %vec.phi98, %i.bn         ; 2 uses
  %index.next104 = add nuw i64 %index97, 8        ; 2 uses
  %i.bq = icmp eq i64 %index.next104, %n.vec95
  br i1 %i.bq, label %middle.block105, label %vector.body96, !llvm.loop !41

middle.block105:                                  ; preds = %vector.body96
  %bin.rdx = add <4 x i32> %i.bp, %i.bo
  %i.br = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.br, ptr %i.au, align 4, !tbaa !6, !alias.scope !52, !noalias !53
  br i1 %cmp.n106, label %.loopexit, label %scalar.ph89.preheader

scalar.ph89.preheader:                            ; preds = %vector.memcheck, %..preheader_crit_edge.us.us, %middle.block105
  %indvars.iv69.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %..preheader_crit_edge.us.us ], [ %n.vec95, %middle.block105 ] ; 4 uses
  %.160.us.us.ph = phi ptr [ %.062.us.us, %vector.memcheck ], [ %.062.us.us, %..preheader_crit_edge.us.us ], [ %i.ax, %middle.block105 ] ; 3 uses
  %.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %..preheader_crit_edge.us.us ], [ %i.br, %middle.block105 ] ; 2 uses
  br i1 %lcmp.mod115.not, label %scalar.ph89.prol.loopexit, label %scalar.ph89.prol

scalar.ph89.prol:                                 ; preds = %scalar.ph89.preheader
  %i.bs = load i32, ptr %.160.us.us.ph, align 4, !tbaa !6
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv69.ph
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !6
  %i.bv = sext i32 %i.bs to i64
  %i.bw = sext i32 %i.bu to i64
  %i.bx = mul nsw i64 %i.bw, %i.bv
  %i.by = add nsw i64 %i.bx, 4096
  %i.bz = lshr i64 %i.by, 13
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = add nsw i32 %.ph, %i.ca                 ; 2 uses
  store i32 %i.cb, ptr %i.au, align 4, !tbaa !6
  %i.cc = getelementptr inbounds nuw i8, ptr %.160.us.us.ph, i64 4 ; 2 uses
  %indvars.iv.next70.prol = or disjoint i64 %indvars.iv69.ph, 1
  br label %scalar.ph89.prol.loopexit

scalar.ph89.prol.loopexit:                        ; preds = %scalar.ph89.prol, %scalar.ph89.preheader
  %.lcssa111.unr = phi ptr [ poison, %scalar.ph89.preheader ], [ %i.cc, %scalar.ph89.prol ]
  %indvars.iv69.unr = phi i64 [ %indvars.iv69.ph, %scalar.ph89.preheader ], [ %indvars.iv.next70.prol, %scalar.ph89.prol ]
  %.160.us.us.unr = phi ptr [ %.160.us.us.ph, %scalar.ph89.preheader ], [ %i.cc, %scalar.ph89.prol ]
  %.unr = phi i32 [ %.ph, %scalar.ph89.preheader ], [ %i.cb, %scalar.ph89.prol ]
  %i.cd = icmp eq i64 %indvars.iv69.ph, %i.y
  br i1 %i.cd, label %.loopexit, label %scalar.ph89

scalar.ph89:                                      ; preds = %scalar.ph89.prol.loopexit, %scalar.ph89
  %indvars.iv69 = phi i64 [ %indvars.iv.next70.1, %scalar.ph89 ], [ %indvars.iv69.unr, %scalar.ph89.prol.loopexit ] ; 3 uses
  %.160.us.us = phi ptr [ %i.db, %scalar.ph89 ], [ %.160.us.us.unr, %scalar.ph89.prol.loopexit ] ; 3 uses
  %i.ce = phi i32 [ %i.da, %scalar.ph89 ], [ %.unr, %scalar.ph89.prol.loopexit ]
  %i.cf = load i32, ptr %.160.us.us, align 4, !tbaa !6
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv69
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !6
  %i.ci = sext i32 %i.cf to i64
  %i.cj = sext i32 %i.ch to i64
  %i.ck = mul nsw i64 %i.cj, %i.ci
  %i.cl = add nsw i64 %i.ck, 4096
  %i.cm = lshr i64 %i.cl, 13
  %i.cn = trunc i64 %i.cm to i32
  %i.co = add nsw i32 %i.ce, %i.cn                ; 2 uses
  store i32 %i.co, ptr %i.au, align 4, !tbaa !6
  %i.cp = getelementptr inbounds nuw i8, ptr %.160.us.us, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !6
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv69
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !6
  %i.cu = sext i32 %i.cq to i64
  %i.cv = sext i32 %i.ct to i64
  %i.cw = mul nsw i64 %i.cv, %i.cu
  %i.cx = add nsw i64 %i.cw, 4096
  %i.cy = lshr i64 %i.cx, 13
  %i.cz = trunc i64 %i.cy to i32
  %i.da = add nsw i32 %i.co, %i.cz                ; 2 uses
  store i32 %i.da, ptr %i.au, align 4, !tbaa !6
  %i.db = getelementptr inbounds nuw i8, ptr %.160.us.us, i64 8 ; 2 uses
  %indvars.iv.next70.1 = add nuw nsw i64 %indvars.iv69, 2 ; 2 uses
  %exitcond73.not.1 = icmp eq i64 %indvars.iv.next70.1, %i.f
  br i1 %exitcond73.not.1, label %.loopexit, label %scalar.ph89, !llvm.loop !43

.loopexit:                                        ; preds = %scalar.ph89.prol.loopexit, %scalar.ph89, %middle.block105
  %.lcssa = phi ptr [ %i.ax, %middle.block105 ], [ %.lcssa111.unr, %scalar.ph89.prol.loopexit ], [ %i.db, %scalar.ph89 ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store ptr %i.dc, ptr %i.at, align 8, !tbaa !49
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %i.f
  br i1 %exitcond78.not, label %._crit_edge.us.us, label %..preheader_crit_edge.us.us, !llvm.loop !44

._crit_edge.us.us:                                ; preds = %.loopexit
  %i.dd = add nuw i64 %.14864.us.us, 1            ; 2 uses
  %exitcond79.not = icmp eq i64 %i.dd, %1
  br i1 %exitcond79.not, label %._crit_edge65, label %.preheader53.us.us, !llvm.loop !45

.lr.ph:                                           ; preds = %.lr.ph.preheader112, %.lr.ph
  %.04756 = phi i64 [ %i.dj, %.lr.ph ], [ %.04756.ph, %.lr.ph.preheader112 ] ; 2 uses
  %.04955 = phi ptr [ %i.de, %.lr.ph ], [ %.04955.ph, %.lr.ph.preheader112 ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.04955, i64 4
  %i.df = load float, ptr %.04955, align 4, !tbaa !16
  %i.dg = fmul float %i.df, 8.192000e+03
  %i.dh = fptosi float %i.dg to i32
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.04756
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !6
  %i.dj = add nuw nsw i64 %.04756, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dj, %i.h
  br i1 %exitcond.not, label %.preheader54, label %.lr.ph, !llvm.loop !46

._crit_edge65:                                    ; preds = %._crit_edge.us.us, %.preheader54
  tail call void @opj_free(ptr noundef nonnull %i.e) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %._crit_edge65
  %.050 = phi i32 [ 1, %._crit_edge65 ], [ 0, %bb.a ]
  ret i32 %.050
}

declare ptr @opj_malloc(i64 noundef) local_unnamed_addr #4

declare void @opj_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @opj_mct_decode_custom(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 !guid !59 {
bb.a:
  %i.a = shl i32 %3, 1
  %i.b = zext i32 %i.a to i64
  %i.c = shl nuw nsw i64 %i.b, 2
  %i.d = tail call ptr @opj_malloc(i64 noundef %i.c) #8 ; 11 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i32 %3 to i64                       ; 6 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e
  %i.g = icmp ne i64 %1, 0
  %i.h = icmp ne i32 %3, 0
  %or.cond = and i1 %i.g, %i.h
  br i1 %or.cond, label %.preheader41.us.us.preheader, label %._crit_edge49

.preheader41.us.us.preheader:                     ; preds = %bb.b
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.i = icmp ult i32 %3, 4
  %unroll_iter = and i64 %i.e, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod68 = icmp ne i64 %xtraiter, 0
  %xtraiter70 = and i64 %i.e, 1
  %i.j = icmp eq i32 %3, 1
  %unroll_iter76 = and i64 %i.e, 4294967294
  %lcmp.mod72.not = icmp eq i64 %xtraiter70, 0
  %lcmp.mod75 = trunc i32 %3 to i1
  br label %.preheader41.us.us

.preheader41.us.us:                               ; preds = %.preheader41.us.us.preheader, %._crit_edge.us.us
  %.03548.us.us = phi i64 [ %i.az, %._crit_edge.us.us ], [ 0, %.preheader41.us.us.preheader ]
  br i1 %i.i, label %.epil.preheader, label %.preheader41.us.us.new

.preheader41.us.us.new:                           ; preds = %.preheader41.us.us, %.preheader41.us.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader41.us.us.new ], [ 0, %.preheader41.us.us ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader41.us.us.new ], [ 0, %.preheader41.us.us ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  %i.m = load float, ptr %i.l, align 4, !tbaa !16
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store float %i.m, ptr %i.n, align 4, !tbaa !16
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !61
  %i.q = load float, ptr %i.p, align 4, !tbaa !16
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  store float %i.q, ptr %i.r, align 4, !tbaa !16
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !61
  %i.u = load float, ptr %i.t, align 4, !tbaa !16
end_hunk_0
begin_hunk_1_@opj_mct_decode_custom:bb.a
  %i.av = tail call float @llvm.fmuladd.f32(float %i.as, float %i.au, float %.epil.init) ; 2 uses
  store float %i.av, ptr %i.ae, align 4, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %.unr-lcssa, %.epil.preheader69
  %.lcssa67 = phi ptr [ %i.al, %.unr-lcssa ], [ %i.ar, %.epil.preheader69 ]
  %.lcssa = phi float [ %i.aq, %.unr-lcssa ], [ %i.av, %.epil.preheader69 ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv56 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !61 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !61
  store float %.lcssa, ptr %i.ax, align 4, !tbaa !16
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %i.e
  br i1 %exitcond60.not, label %._crit_edge.us.us, label %..preheader_crit_edge.us.us, !llvm.loop !57

._crit_edge.us.us:                                ; preds = %bb.d
  %i.az = add nuw i64 %.03548.us.us, 1            ; 2 uses
  %exitcond61.not = icmp eq i64 %i.az, %1
  br i1 %exitcond61.not, label %._crit_edge49, label %.preheader41.us.us, !llvm.loop !58

._crit_edge49:                                    ; preds = %._crit_edge.us.us, %bb.b
  tail call void @opj_free(ptr noundef nonnull %i.d) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %._crit_edge49
  %.038 = phi i32 [ 1, %._crit_edge49 ], [ 0, %bb.a ]
  ret i32 %.038
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define void @opj_calculate_norms(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 !guid !65 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64
  %xtraiter = and i32 %1, 3                       ; 3 uses
  %i.a = icmp ult i32 %1, 4
  %unroll_iter = and i32 %1, -4
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod31 = icmp ne i32 %xtraiter, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.epilog-lcssa
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.epilog-lcssa ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.c = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  br i1 %i.a, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %.026 = phi i32 [ %i.z, %.lr.ph.new ], [ %i.c, %.lr.ph ] ; 2 uses
  %i.d = phi double [ %i.ab, %.lr.ph.new ], [ 0.000000e+00, %.lr.ph ]
  %niter = phi i32 [ %niter.next.3, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.e = zext i32 %.026 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.e
  %i.g = load float, ptr %i.f, align 4, !tbaa !16
  %i.h = add i32 %.026, %1                        ; 2 uses
  %i.i = fpext float %i.g to double               ; 2 uses
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double %i.i, double %i.d)
  %i.k = zext i32 %i.h to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.k
  %i.m = load float, ptr %i.l, align 4, !tbaa !16
  %i.n = add i32 %i.h, %1                         ; 2 uses
  %i.o = fpext float %i.m to double               ; 2 uses
  %i.p = tail call double @llvm.fmuladd.f64(double %i.o, double %i.o, double %i.j)
  %i.q = zext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.q
  %i.s = load float, ptr %i.r, align 4, !tbaa !16
  %i.t = add i32 %i.n, %1                         ; 2 uses
  %i.u = fpext float %i.s to double               ; 2 uses
  %i.v = tail call double @llvm.fmuladd.f64(double %i.u, double %i.u, double %i.p)
  %i.w = zext i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.w
  %i.y = load float, ptr %i.x, align 4, !tbaa !16
  %i.z = add i32 %i.t, %1                         ; 2 uses
  %i.aa = fpext float %i.y to double              ; 2 uses
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.aa, double %i.v) ; 3 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.lr.ph.new, !llvm.loop !62

.unr-lcssa:                                       ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph
  %.026.epil.init = phi i32 [ %i.c, %.lr.ph ], [ %i.z, %.unr-lcssa ]
  %.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ab, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod31)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.026.epil = phi i32 [ %.026.epil.init, %.epil.preheader ], [ %i.ag, %bb.b ] ; 2 uses
  %i.ac = phi double [ %.epil.init, %.epil.preheader ], [ %i.ai, %bb.b ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ad = zext i32 %.026.epil to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ad
  %i.af = load float, ptr %i.ae, align 4, !tbaa !16
  %i.ag = add i32 %.026.epil, %1
  %i.ah = fpext float %i.af to double             ; 2 uses
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.ah, double %i.ac) ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.b, !llvm.loop !63

.epilog-lcssa:                                    ; preds = %bb.b, %.unr-lcssa
  %.lcssa = phi double [ %i.ab, %.unr-lcssa ], [ %i.ai, %bb.b ]
  %i.aj = tail call double @sqrt(double noundef %.lcssa) #8, !tbaa !6
  store double %i.aj, ptr %i.b, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond29.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond29.not, label %._crit_edge, label %.lr.ph, !llvm.loop !64

._crit_edge:                                      ; preds = %.epilog-lcssa, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{i64 6458946428364884599}
!8 = !{i64 2459270311030466197}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = !{!4, !4, i64 0}
!13 = !{!"double", !4, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"float", !4, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"any pointer", !4, i64 0}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{i64 -7996307159305777973}
!20 = !{i64 -6383644709749732128}
!21 = distinct !{!21, !9, !10, !11}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9, !11, !10}
!24 = !{i64 8745526046378262560}
!25 = distinct !{!25, !9, !10, !11}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9, !11, !10}
!28 = !{i64 -2720890474372441627}
!29 = !{i64 -8549818228553378771}
!30 = distinct !{!30, !9}
!31 = !{i64 -3805607879529905868}
!32 = distinct !{!32, !9}
!33 = !{i64 3845988283068374347}
!34 = !{i64 -8557691930849739607}
!35 = distinct !{!35, !9, !10, !11}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !18}
!38 = distinct !{!38, i1 false, !"LVerDomain"}
!39 = distinct !{!39, !38}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !9, !10, !11}
!42 = distinct !{!42, !38}
!43 = distinct !{!43, !9, !10}
!44 = distinct !{!44, !9}
!45 = distinct !{!45, !9}
!46 = distinct !{!46, !9, !11, !10}
!47 = !{i64 6754935304728824645}
!48 = !{!"p1 int", !17, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!39}
!51 = !{!40}
!52 = !{!42}
!53 = !{!40, !39}
!54 = distinct !{!54, !9}
!55 = distinct !{!55, !18}
!56 = distinct !{!56, !9}
!57 = distinct !{!57, !9}
!58 = distinct !{!58, !9}
!59 = !{i64 -6663430853970189673}
!60 = !{!"p1 float", !17, i64 0}
!61 = !{!60, !60, i64 0}
!62 = distinct !{!62, !9}
!63 = distinct !{!63, !18}
!64 = distinct !{!64, !9}
!65 = !{i64 5158413513813964523}
end_hunk_1
