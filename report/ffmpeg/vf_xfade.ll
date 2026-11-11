Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_xfade?download=true
inline.NumInlined: 179
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 54
begin_hunk_0_@fade16_transition:bb.a
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !56   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge56.split

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.l = icmp slt i32 %i.c, 1
  %i.m = icmp slt i32 %i.e, 1
  %i.n = fsub nsz float 1.000000e+00, %4          ; 4 uses
  %brmerge = select i1 %i.l, i1 true, i1 %i.m
  br i1 %brmerge, label %._crit_edge56.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %wide.trip.count64 = zext nneg i32 %i.g to i64
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 6 uses
  %i.o = shl nuw nsw i64 %wide.trip.count, 1      ; 3 uses
  %i.p = xor i32 %5, -1
  %i.q = add i32 %6, %i.p
  %i.r = zext i32 %i.q to i64                     ; 3 uses
  %i.s = shl nuw nsw i64 %i.r, 1
  %i.t = shl nuw nsw i64 %i.r, 1
  %i.u = shl nuw nsw i64 %i.r, 1
  %min.iters.check = icmp ult i32 %i.e, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.n, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert89 = insertelement <8 x float> poison, float %4, i64 0
  %broadcast.splat90 = shufflevector <8 x float> %broadcast.splatinsert89, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.v = add nsw i64 %wide.trip.count, -1
  br label %.preheader.lr.ph

._crit_edge56.split:                              ; preds = %._crit_edge53, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge53
  %indvars.iv61 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next62, %._crit_edge53 ] ; 7 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv61
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !64   ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv61
  %i.z = load i32, ptr %i.y, align 4, !tbaa !29   ; 3 uses
  %i.aa = mul i32 %i.z, %5
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.x, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv61
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !64 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv61
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !29 ; 3 uses
  %i.ah = mul i32 %i.ag, %5
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ae, i64 %i.ai  ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv61
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !64 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv61
  %i.an = load i32, ptr %i.am, align 4, !tbaa !29 ; 3 uses
  %i.ao = mul i32 %i.an, %5
  %i.ap = sext i32 %i.ao to i64                   ; 2 uses
  %i.aq = getelementptr i8, ptr %i.al, i64 %i.ap  ; 3 uses
  %i.ar = sdiv i32 %i.an, 2
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = sdiv i32 %i.z, 2
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = sdiv i32 %i.ag, 2
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ae, i64 %i.o
  %i.ax = mul nsw i64 %i.s, %i.aw
  %i.ay = getelementptr i8, ptr %scevgep, i64 %i.ax
  %scevgep79 = getelementptr i8, ptr %i.ay, i64 %i.ai
  %scevgep80 = getelementptr i8, ptr %i.x, i64 %i.o
  %i.az = mul nsw i64 %i.t, %i.au
  %i.ba = getelementptr i8, ptr %scevgep80, i64 %i.az
  %scevgep81 = getelementptr i8, ptr %i.ba, i64 %i.ab
  %scevgep82 = getelementptr i8, ptr %i.al, i64 %i.o
  %i.bb = mul nsw i64 %i.u, %i.as
  %i.bc = getelementptr i8, ptr %scevgep82, i64 %i.bb
  %scevgep83 = getelementptr i8, ptr %i.bc, i64 %i.ap ; 2 uses
  %bound0 = icmp ult ptr %i.aq, %scevgep81
  %bound1 = icmp ult ptr %i.ac, %scevgep83
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.an, -1
  %i.bd = or i1 %found.conflict, %stride.check
  %stride.check84 = icmp slt i32 %i.z, -1
  %i.be = or i1 %i.bd, %stride.check84
  %bound085 = icmp ult ptr %i.aq, %scevgep79
  %bound186 = icmp ult ptr %i.aj, %scevgep83
  %found.conflict87 = and i1 %bound085, %bound186
  %stride.check88 = icmp slt i32 %i.ag, -1
  %i.bf = or i1 %found.conflict87, %stride.check88
  %conflict.rdx = or i1 %i.be, %i.bf
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.04352 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.cd, %._crit_edge ]
  %.04451 = phi ptr [ %i.aq, %.preheader.lr.ph ], [ %i.ca, %._crit_edge ] ; 5 uses
  %.04550 = phi ptr [ %i.aj, %.preheader.lr.ph ], [ %i.cc, %._crit_edge ] ; 5 uses
  %.04649 = phi ptr [ %i.ac, %.preheader.lr.ph ], [ %i.cb, %._crit_edge ] ; 5 uses
  %brmerge92 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge92, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %.04649, i64 %index
  %wide.load = load <8 x i16>, ptr %i.bg, align 2, !tbaa !59, !alias.scope !117
  %i.bh = uitofp <8 x i16> %wide.load to <8 x float>
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %.04550, i64 %index
  %wide.load91 = load <8 x i16>, ptr %i.bi, align 2, !tbaa !59, !alias.scope !118
  %i.bj = uitofp <8 x i16> %wide.load91 to <8 x float>
  %i.bk = fmul nsz <8 x float> %broadcast.splat, %i.bj
  %i.bl = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.bh, <8 x float> %broadcast.splat90, <8 x float> %i.bk)
  %i.bm = fptoui <8 x float> %i.bl to <8 x i16>
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %.04451, i64 %index
  store <8 x i16> %i.bm, ptr %i.bn, align 2, !tbaa !59, !alias.scope !119, !noalias !120
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %.04649, i64 %indvars.iv.ph
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !59
  %i.br = uitofp nsz i16 %i.bq to float
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.04550, i64 %indvars.iv.ph
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !59
  %i.bu = uitofp nsz i16 %i.bt to float
  %i.bv = fmul nsz float %i.n, %i.bu
  %i.bw = tail call nsz noundef float @llvm.fmuladd.f32(float %i.br, float %4, float %i.bv)
  %i.bx = fptoui float %i.bw to i16
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %.04451, i64 %indvars.iv.ph
  store i16 %i.bx, ptr %i.by, align 2, !tbaa !59
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bz = icmp eq i64 %indvars.iv.ph, %i.v
  br i1 %i.bz, label %._crit_edge, label %scalar.ph

._crit_edge53:                                    ; preds = %._crit_edge
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count64
  br i1 %exitcond65.not, label %._crit_edge56.split, label %.preheader.lr.ph, !llvm.loop !114

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ca = getelementptr inbounds [2 x i8], ptr %.04451, i64 %i.as
  %i.cb = getelementptr inbounds [2 x i8], ptr %.04649, i64 %i.au
  %i.cc = getelementptr inbounds [2 x i8], ptr %.04550, i64 %i.aw
  %i.cd = add nuw nsw i32 %.04352, 1              ; 2 uses
  %exitcond60.not = icmp eq i32 %i.cd, %i.c
  br i1 %exitcond60.not, label %._crit_edge53, label %.preheader, !llvm.loop !115

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %.04649, i64 %indvars.iv
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !59
  %i.cg = uitofp nsz i16 %i.cf to float
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %.04550, i64 %indvars.iv
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !59
  %i.cj = uitofp nsz i16 %i.ci to float
  %i.ck = fmul nsz float %i.n, %i.cj
  %i.cl = tail call nsz noundef float @llvm.fmuladd.f32(float %i.cg, float %4, float %i.ck)
  %i.cm = fptoui float %i.cl to i16
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %.04451, i64 %indvars.iv
  store i16 %i.cm, ptr %i.cn, align 2, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %.04649, i64 %indvars.iv.next
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !59
  %i.cq = uitofp nsz i16 %i.cp to float
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %.04550, i64 %indvars.iv.next
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !59
  %i.ct = uitofp nsz i16 %i.cs to float
  %i.cu = fmul nsz float %i.n, %i.ct
  %i.cv = tail call nsz noundef float @llvm.fmuladd.f32(float %i.cq, float %4, float %i.cu)
  %i.cw = fptoui float %i.cv to i16
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %.04451, i64 %indvars.iv.next
  store i16 %i.cw, ptr %i.cx, align 2, !tbaa !59
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !116
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @wipeleft8_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sub i32 %6, %5                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 4 uses
  %8 = uitofp nneg i32 %i.e to float
  %i.f = fmul nsz float %4, %8
  %i.g = fptosi float %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !56
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge59.split

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = icmp slt i32 %i.c, 1
  %i.o = icmp slt i32 %i.e, 1
  %brmerge = select i1 %i.n, i1 true, i1 %i.o
  br i1 %brmerge, label %._crit_edge59.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %i.p = sext i32 %i.g to i64                     ; 5 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.q = add nsw i32 %i.e, -1
  %i.r = icmp ult i32 %i.q, 3
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod69 = icmp ne i64 %xtraiter, 0
  br label %.preheader.lr.ph

._crit_edge59.split:                              ; preds = %._crit_edge56, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge56
  %indvars.iv64 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next65, %._crit_edge56 ] ; 7 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv64 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !29
  %i.w = mul nsw i32 %i.v, %5
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.t, i64 %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv64 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !29
  %i.ad = mul nsw i32 %i.ac, %5
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv64 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !29
  %i.ak = mul nsw i32 %i.aj, %5
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %i.al
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.04655 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.bb, %._crit_edge ]
  %.04754 = phi ptr [ %i.am, %.preheader.lr.ph ], [ %i.au, %._crit_edge ] ; 6 uses
  %.04853 = phi ptr [ %i.af, %.preheader.lr.ph ], [ %i.ba, %._crit_edge ] ; 6 uses
  %.04952 = phi ptr [ %i.y, %.preheader.lr.ph ], [ %i.ax, %._crit_edge ] ; 6 uses
  br i1 %i.r, label %.epil.preheader, label %.preheader.new

._crit_edge56:                                    ; preds = %._crit_edge
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %i.an = load i32, ptr %i.h, align 8, !tbaa !56
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next65, %i.ao
  br i1 %i.ap, label %.preheader.lr.ph, label %._crit_edge59.split, !llvm.loop !121

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod69)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.aq = icmp sgt i64 %indvars.iv.epil, %i.p
  %.in.in.v.epil = select i1 %i.aq, ptr %.04853, ptr %.04952
  %.in.in.epil = getelementptr inbounds nuw i8, ptr %.in.in.v.epil, i64 %indvars.iv.epil
  %.in.epil = load i8, ptr %.in.in.epil, align 1, !tbaa !65
  %i.ar = getelementptr inbounds nuw i8, ptr %.04754, i64 %indvars.iv.epil
  store i8 %.in.epil, ptr %i.ar, align 1, !tbaa !65
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !122

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.unr-lcssa
  %i.as = load i32, ptr %i.ai, align 4, !tbaa !29
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %.04754, i64 %i.at
  %i.av = load i32, ptr %i.u, align 4, !tbaa !29
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %.04952, i64 %i.aw
  %i.ay = load i32, ptr %i.ab, align 4, !tbaa !29
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %.04853, i64 %i.az
  %i.bb = add nuw nsw i32 %.04655, 1              ; 2 uses
  %exitcond63.not = icmp eq i32 %i.bb, %i.c
  br i1 %exitcond63.not, label %._crit_edge56, label %.preheader, !llvm.loop !123

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.new ], [ 0, %.preheader ] ; 8 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.bc = icmp sgt i64 %indvars.iv, %i.p
  %.in.in.v = select i1 %i.bc, ptr %.04853, ptr %.04952
  %.in.in = getelementptr inbounds nuw i8, ptr %.in.in.v, i64 %indvars.iv
  %.in = load i8, ptr %.in.in, align 1, !tbaa !65
  %i.bd = getelementptr inbounds nuw i8, ptr %.04754, i64 %indvars.iv
  store i8 %.in, ptr %i.bd, align 1, !tbaa !65
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp slt i64 %indvars.iv, %i.p
  %.in.in.v.1 = select i1 %.not, ptr %.04952, ptr %.04853
  %.in.in.1 = getelementptr inbounds nuw i8, ptr %.in.in.v.1, i64 %indvars.iv.next
  %.in.1 = load i8, ptr %.in.in.1, align 1, !tbaa !65
  %i.be = getelementptr inbounds nuw i8, ptr %.04754, i64 %indvars.iv.next
  store i8 %.in.1, ptr %i.be, align 1, !tbaa !65
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 3 uses
  %i.bf = icmp sgt i64 %indvars.iv.next.1, %i.p
  %.in.in.v.2 = select i1 %i.bf, ptr %.04853, ptr %.04952
  %.in.in.2 = getelementptr inbounds nuw i8, ptr %.in.in.v.2, i64 %indvars.iv.next.1
  %.in.2 = load i8, ptr %.in.in.2, align 1, !tbaa !65
  %i.bg = getelementptr inbounds nuw i8, ptr %.04754, i64 %indvars.iv.next.1
  store i8 %.in.2, ptr %i.bg, align 1, !tbaa !65
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 3 uses
  %i.bh = icmp sgt i64 %indvars.iv.next.2, %i.p
  %.in.in.v.3 = select i1 %i.bh, ptr %.04853, ptr %.04952
  %.in.in.3 = getelementptr inbounds nuw i8, ptr %.in.in.v.3, i64 %indvars.iv.next.2
  %.in.3 = load i8, ptr %.in.in.3, align 1, !tbaa !65
  %i.bi = getelementptr inbounds nuw i8, ptr %.04754, i64 %indvars.iv.next.2
  store i8 %.in.3, ptr %i.bi, align 1, !tbaa !65
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !124
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @wipeleft16_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sub i32 %6, %5                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 4 uses
  %8 = uitofp nneg i32 %i.e to float
  %i.f = fmul nsz float %4, %8
  %i.g = fptosi float %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !56   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge59.split

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = icmp slt i32 %i.c, 1
  %i.o = icmp slt i32 %i.e, 1
  %brmerge = select i1 %i.n, i1 true, i1 %i.o
  br i1 %brmerge, label %._crit_edge59.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %i.p = sext i32 %i.g to i64                     ; 5 uses
  %wide.trip.count67 = zext nneg i32 %i.i to i64
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.q = add nsw i32 %i.e, -1
  %i.r = icmp ult i32 %i.q, 3
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod72 = icmp ne i64 %xtraiter, 0
  br label %.preheader.lr.ph

._crit_edge59.split:                              ; preds = %._crit_edge56, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge56
  %indvars.iv64 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next65, %._crit_edge56 ] ; 7 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv64
  %i.v = load i32, ptr %i.u, align 4, !tbaa !29   ; 2 uses
  %i.w = mul nsw i32 %i.v, %5
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.t, i64 %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv64
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !29 ; 2 uses
  %i.ad = mul nsw i32 %i.ac, %5
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv64
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !29 ; 2 uses
  %i.ak = mul nsw i32 %i.aj, %5
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %i.al
  %i.an = sdiv i32 %i.aj, 2
  %i.ao = sext i32 %i.an to i64
  %i.ap = sdiv i32 %i.v, 2
  %i.aq = sext i32 %i.ap to i64
  %i.ar = sdiv i32 %i.ac, 2
  %i.as = sext i32 %i.ar to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.04655 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ay, %._crit_edge ]
  %.04754 = phi ptr [ %i.am, %.preheader.lr.ph ], [ %i.av, %._crit_edge ] ; 6 uses
  %.04853 = phi ptr [ %i.af, %.preheader.lr.ph ], [ %i.ax, %._crit_edge ] ; 6 uses
  %.04952 = phi ptr [ %i.y, %.preheader.lr.ph ], [ %i.aw, %._crit_edge ] ; 6 uses
  br i1 %i.r, label %.epil.preheader, label %.preheader.new

._crit_edge56:                                    ; preds = %._crit_edge
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count67
  br i1 %exitcond68.not, label %._crit_edge59.split, label %.preheader.lr.ph, !llvm.loop !125

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod72)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.at = icmp sgt i64 %indvars.iv.epil, %i.p
  %.in.in.v.epil = select i1 %i.at, ptr %.04853, ptr %.04952
  %.in.in.epil = getelementptr inbounds nuw [2 x i8], ptr %.in.in.v.epil, i64 %indvars.iv.epil
  %.in.epil = load i16, ptr %.in.in.epil, align 2, !tbaa !59
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %.04754, i64 %indvars.iv.epil
  store i16 %.in.epil, ptr %i.au, align 2, !tbaa !59
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !126

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.unr-lcssa
  %i.av = getelementptr inbounds [2 x i8], ptr %.04754, i64 %i.ao
  %i.aw = getelementptr inbounds [2 x i8], ptr %.04952, i64 %i.aq
  %i.ax = getelementptr inbounds [2 x i8], ptr %.04853, i64 %i.as
  %i.ay = add nuw nsw i32 %.04655, 1              ; 2 uses
  %exitcond63.not = icmp eq i32 %i.ay, %i.c
  br i1 %exitcond63.not, label %._crit_edge56, label %.preheader, !llvm.loop !127

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.new ], [ 0, %.preheader ] ; 8 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.az = icmp sgt i64 %indvars.iv, %i.p
  %.in.in.v = select i1 %i.az, ptr %.04853, ptr %.04952
  %.in.in = getelementptr inbounds nuw [2 x i8], ptr %.in.in.v, i64 %indvars.iv
  %.in = load i16, ptr %.in.in, align 2, !tbaa !59
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %.04754, i64 %indvars.iv
  store i16 %.in, ptr %i.ba, align 2, !tbaa !59
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp slt i64 %indvars.iv, %i.p
  %.in.in.v.1 = select i1 %.not, ptr %.04952, ptr %.04853
  %.in.in.1 = getelementptr inbounds nuw [2 x i8], ptr %.in.in.v.1, i64 %indvars.iv.next
  %.in.1 = load i16, ptr %.in.in.1, align 2, !tbaa !59
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %.04754, i64 %indvars.iv.next
  store i16 %.in.1, ptr %i.bb, align 2, !tbaa !59
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 3 uses
  %i.bc = icmp sgt i64 %indvars.iv.next.1, %i.p
  %.in.in.v.2 = select i1 %i.bc, ptr %.04853, ptr %.04952
  %.in.in.2 = getelementptr inbounds nuw [2 x i8], ptr %.in.in.v.2, i64 %indvars.iv.next.1
  %.in.2 = load i16, ptr %.in.in.2, align 2, !tbaa !59
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %.04754, i64 %indvars.iv.next.1
  store i16 %.in.2, ptr %i.bd, align 2, !tbaa !59
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 3 uses
  %i.be = icmp sgt i64 %indvars.iv.next.2, %i.p
  %.in.in.v.3 = select i1 %i.be, ptr %.04853, ptr %.04952
  %.in.in.3 = getelementptr inbounds nuw [2 x i8], ptr %.in.in.v.3, i64 %indvars.iv.next.2
  %.in.3 = load i16, ptr %.in.in.3, align 2, !tbaa !59
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %.04754, i64 %indvars.iv.next.2
  store i16 %.in.3, ptr %i.bf, align 2, !tbaa !59
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !128
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @wiperight8_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sub i32 %6, %5                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 4 uses
  %8 = uitofp nneg i32 %i.e to float
  %i.f = fsub nsz float 1.000000e+00, %4
  %i.g = fmul nsz float %i.f, %8
  %i.h = fptosi float %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !56
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge59.split

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.o = icmp slt i32 %i.c, 1
  %i.p = icmp slt i32 %i.e, 1
  %brmerge = select i1 %i.o, i1 true, i1 %i.p
  br i1 %brmerge, label %._crit_edge59.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %i.q = sext i32 %i.h to i64                     ; 5 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.r = add nsw i32 %i.e, -1
  %i.s = icmp ult i32 %i.r, 3
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod69 = icmp ne i64 %xtraiter, 0
  br label %.preheader.lr.ph

._crit_edge59.split:                              ; preds = %._crit_edge56, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge56
  %indvars.iv64 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next65, %._crit_edge56 ] ; 7 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv64 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !29
  %i.x = mul nsw i32 %i.w, %5
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %i.u, i64 %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv64 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !29
  %i.ae = mul nsw i32 %i.ad, %5
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr %i.ab, i64 %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv64
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv64 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !29
  %i.al = mul nsw i32 %i.ak, %5
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds i8, ptr %i.ai, i64 %i.am
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.04655 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.bc, %._crit_edge ]
  %.04754 = phi ptr [ %i.an, %.preheader.lr.ph ], [ %i.av, %._crit_edge ] ; 6 uses
  %.04853 = phi ptr [ %i.ag, %.preheader.lr.ph ], [ %i.bb, %._crit_edge ] ; 6 uses
  %.04952 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %i.ay, %._crit_edge ] ; 6 uses
  br i1 %i.s, label %.epil.preheader, label %.preheader.new

._crit_edge56:                                    ; preds = %._crit_edge
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %i.ao = load i32, ptr %i.i, align 8, !tbaa !56
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp slt i64 %indvars.iv.next65, %i.ap
  br i1 %i.aq, label %.preheader.lr.ph, label %._crit_edge59.split, !llvm.loop !129

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod69)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ar = icmp sgt i64 %indvars.iv.epil, %i.q
  %.in.in.v.epil = select i1 %i.ar, ptr %.04952, ptr %.04853
  %.in.in.epil = getelementptr inbounds nuw i8, ptr %.in.in.v.epil, i64 %indvars.iv.epil
  %.in.epil = load i8, ptr %.in.in.epil, align 1, !tbaa !65
  %i.as = getelementptr inbounds nuw i8, ptr %.04754, i64 %indvars.iv.epil
  store i8 %.in.epil, ptr %i.as, align 1, !tbaa !65
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !130

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.unr-lcssa
  %i.at = load i32, ptr %i.aj, align 4, !tbaa !29
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %.04754, i64 %i.au
  %i.aw = load i32, ptr %i.v, align 4, !tbaa !29
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %.04952, i64 %i.ax
  %i.az = load i32, ptr %i.ac, align 4, !tbaa !29
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %.04853, i64 %i.ba
  %i.bc = add nuw nsw i32 %.04655, 1              ; 2 uses
  %exitcond63.not = icmp eq i32 %i.bc, %i.c
  br i1 %exitcond63.not, label %._crit_edge56, label %.preheader, !llvm.loop !131

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.new ], [ 0, %.preheader ] ; 8 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.bd = icmp sgt i64 %indvars.iv, %i.q
  %.in.in.v = select i1 %i.bd, ptr %.04952, ptr %.04853
  %.in.in = getelementptr inbounds nuw i8, ptr %.in.in.v, i64 %indvars.iv
  %.in = load i8, ptr %.in.in, align 1, !tbaa !65
  %i.be = getelementptr inbounds nuw i8, ptr %.04754, i64 %indvars.iv
  store i8 %.in, ptr %i.be, align 1, !tbaa !65
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp slt i64 %indvars.iv, %i.q
  %.in.in.v.1 = select i1 %.not, ptr %.04853, ptr %.04952
  %.in.in.1 = getelementptr inbounds nuw i8, ptr %.in.in.v.1, i64 %indvars.iv.next
  %.in.1 = load i8, ptr %.in.in.1, align 1, !tbaa !65
  %i.bf = getelementptr inbounds nuw i8, ptr %.04754, i64 %indvars.iv.next
  store i8 %.in.1, ptr %i.bf, align 1, !tbaa !65
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 3 uses
  %i.bg = icmp sgt i64 %indvars.iv.next.1, %i.q
  %.in.in.v.2 = select i1 %i.bg, ptr %.04952, ptr %.04853
  %.in.in.2 = getelementptr inbounds nuw i8, ptr %.in.in.v.2, i64 %indvars.iv.next.1
  %.in.2 = load i8, ptr %.in.in.2, align 1, !tbaa !65
  %i.bh = getelementptr inbounds nuw i8, ptr %.04754, i64 %indvars.iv.next.1
  store i8 %.in.2, ptr %i.bh, align 1, !tbaa !65
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 3 uses
  %i.bi = icmp sgt i64 %indvars.iv.next.2, %i.q
  %.in.in.v.3 = select i1 %i.bi, ptr %.04952, ptr %.04853
  %.in.in.3 = getelementptr inbounds nuw i8, ptr %.in.in.v.3, i64 %indvars.iv.next.2
  %.in.3 = load i8, ptr %.in.in.3, align 1, !tbaa !65
  %i.bj = getelementptr inbounds nuw i8, ptr %.04754, i64 %indvars.iv.next.2
  store i8 %.in.3, ptr %i.bj, align 1, !tbaa !65
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !132
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @wiperight16_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sub i32 %6, %5                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 4 uses
  %8 = uitofp nneg i32 %i.e to float
  %i.f = fsub nsz float 1.000000e+00, %4
  %i.g = fmul nsz float %i.f, %8
  %i.h = fptosi float %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !56   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge59.split

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.o = icmp slt i32 %i.c, 1
  %i.p = icmp slt i32 %i.e, 1
  %brmerge = select i1 %i.o, i1 true, i1 %i.p
  br i1 %brmerge, label %._crit_edge59.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %i.q = sext i32 %i.h to i64                     ; 5 uses
  %wide.trip.count67 = zext nneg i32 %i.j to i64
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.r = add nsw i32 %i.e, -1
  %i.s = icmp ult i32 %i.r, 3
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod72 = icmp ne i64 %xtraiter, 0
  br label %.preheader.lr.ph

._crit_edge59.split:                              ; preds = %._crit_edge56, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge56
  %indvars.iv64 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next65, %._crit_edge56 ] ; 7 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv64
  %i.w = load i32, ptr %i.v, align 4, !tbaa !29   ; 2 uses
  %i.x = mul nsw i32 %i.w, %5
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %i.u, i64 %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv64
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !29 ; 2 uses
  %i.ae = mul nsw i32 %i.ad, %5
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr %i.ab, i64 %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv64
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv64
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !29 ; 2 uses
  %i.al = mul nsw i32 %i.ak, %5
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds i8, ptr %i.ai, i64 %i.am
  %i.ao = sdiv i32 %i.ak, 2
  %i.ap = sext i32 %i.ao to i64
  %i.aq = sdiv i32 %i.w, 2
  %i.ar = sext i32 %i.aq to i64
  %i.as = sdiv i32 %i.ad, 2
  %i.at = sext i32 %i.as to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.04655 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.az, %._crit_edge ]
  %.04754 = phi ptr [ %i.an, %.preheader.lr.ph ], [ %i.aw, %._crit_edge ] ; 6 uses
  %.04853 = phi ptr [ %i.ag, %.preheader.lr.ph ], [ %i.ay, %._crit_edge ] ; 6 uses
  %.04952 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %i.ax, %._crit_edge ] ; 6 uses
  br i1 %i.s, label %.epil.preheader, label %.preheader.new

._crit_edge56:                                    ; preds = %._crit_edge
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count67
  br i1 %exitcond68.not, label %._crit_edge59.split, label %.preheader.lr.ph, !llvm.loop !133

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod72)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.au = icmp sgt i64 %indvars.iv.epil, %i.q
  %.in.in.v.epil = select i1 %i.au, ptr %.04952, ptr %.04853
  %.in.in.epil = getelementptr inbounds nuw [2 x i8], ptr %.in.in.v.epil, i64 %indvars.iv.epil
  %.in.epil = load i16, ptr %.in.in.epil, align 2, !tbaa !59
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.04754, i64 %indvars.iv.epil
  store i16 %.in.epil, ptr %i.av, align 2, !tbaa !59
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !134

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.unr-lcssa
  %i.aw = getelementptr inbounds [2 x i8], ptr %.04754, i64 %i.ap
  %i.ax = getelementptr inbounds [2 x i8], ptr %.04952, i64 %i.ar
  %i.ay = getelementptr inbounds [2 x i8], ptr %.04853, i64 %i.at
  %i.az = add nuw nsw i32 %.04655, 1              ; 2 uses
  %exitcond63.not = icmp eq i32 %i.az, %i.c
  br i1 %exitcond63.not, label %._crit_edge56, label %.preheader, !llvm.loop !135

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.new ], [ 0, %.preheader ] ; 8 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.ba = icmp sgt i64 %indvars.iv, %i.q
  %.in.in.v = select i1 %i.ba, ptr %.04952, ptr %.04853
  %.in.in = getelementptr inbounds nuw [2 x i8], ptr %.in.in.v, i64 %indvars.iv
  %.in = load i16, ptr %.in.in, align 2, !tbaa !59
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %.04754, i64 %indvars.iv
  store i16 %.in, ptr %i.bb, align 2, !tbaa !59
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp slt i64 %indvars.iv, %i.q
  %.in.in.v.1 = select i1 %.not, ptr %.04853, ptr %.04952
  %.in.in.1 = getelementptr inbounds nuw [2 x i8], ptr %.in.in.v.1, i64 %indvars.iv.next
  %.in.1 = load i16, ptr %.in.in.1, align 2, !tbaa !59
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %.04754, i64 %indvars.iv.next
  store i16 %.in.1, ptr %i.bc, align 2, !tbaa !59
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 3 uses
  %i.bd = icmp sgt i64 %indvars.iv.next.1, %i.q
  %.in.in.v.2 = select i1 %i.bd, ptr %.04952, ptr %.04853
  %.in.in.2 = getelementptr inbounds nuw [2 x i8], ptr %.in.in.v.2, i64 %indvars.iv.next.1
  %.in.2 = load i16, ptr %.in.in.2, align 2, !tbaa !59
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %.04754, i64 %indvars.iv.next.1
  store i16 %.in.2, ptr %i.be, align 2, !tbaa !59
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 3 uses
  %i.bf = icmp sgt i64 %indvars.iv.next.2, %i.q
  %.in.in.v.3 = select i1 %i.bf, ptr %.04952, ptr %.04853
  %.in.in.3 = getelementptr inbounds nuw [2 x i8], ptr %.in.in.v.3, i64 %indvars.iv.next.2
  %.in.3 = load i16, ptr %.in.in.3, align 2, !tbaa !59
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %.04754, i64 %indvars.iv.next.2
  store i16 %.in.3, ptr %i.bg, align 2, !tbaa !59
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !136
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @wipeup8_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sub i32 %6, %5                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.g = load i32, ptr %i.f, align 4, !tbaa !70
  %i.h = sitofp nsz i32 %i.g to float
  %i.i = fmul nsz float %4, %i.h
  %i.j = fptosi float %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !56
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge60.split

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.q = icmp slt i32 %i.c, 1
  %i.r = icmp slt i32 %i.e, 1
  %brmerge = select i1 %i.q, i1 true, i1 %i.r
  br i1 %brmerge, label %._crit_edge60.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 8 uses
  %min.iters.check = icmp ult i32 %i.e, 4
  %min.iters.check74 = icmp ult i32 %i.e, 32
  %i.s = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.s, 0
  %n.vec76 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n80 = icmp eq i64 %n.vec76, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.lr.ph

._crit_edge60.split:                              ; preds = %._crit_edge57, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge57
  %indvars.iv65 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next66, %._crit_edge57 ] ; 7 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv65
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv65 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !29
  %i.x = mul nsw i32 %i.w, %5
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %i.u, i64 %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv65
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv65 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !29
  %i.ae = mul nsw i32 %i.ad, %5
  %i.af = sext i32 %i.ae to i64
end_hunk_0
begin_hunk_1_@wipedown16_transition:bb.a
  %i.h = sitofp nsz i32 %i.g to float
  %i.i = fsub nsz float 1.000000e+00, %4
  %i.j = fmul nsz float %i.i, %i.h
  %i.k = fptosi float %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !56   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge60.split

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.r = icmp slt i32 %i.c, 1
  %i.s = icmp slt i32 %i.e, 1
  %brmerge = select i1 %i.r, i1 true, i1 %i.s
  br i1 %brmerge, label %._crit_edge60.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %wide.trip.count68 = zext nneg i32 %i.m to i64
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 8 uses
  %min.iters.check = icmp ult i32 %i.e, 4
  %min.iters.check75 = icmp ult i32 %i.e, 16
  %i.t = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  %n.vec77 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n81 = icmp eq i64 %n.vec77, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.lr.ph

._crit_edge60.split:                              ; preds = %._crit_edge57, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge57
  %indvars.iv65 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next66, %._crit_edge57 ] ; 7 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv65
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv65
  %i.x = load i32, ptr %i.w, align 4, !tbaa !29   ; 2 uses
  %i.y = mul nsw i32 %i.x, %5
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 %i.z
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv65
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv65
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !29 ; 2 uses
  %i.af = mul nsw i32 %i.ae, %5
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %i.ac, i64 %i.ag
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv65
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !64 ; 2 uses
  %i.ak = ptrtoaddr ptr %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv65
  %i.am = load i32, ptr %i.al, align 4, !tbaa !29 ; 2 uses
  %i.an = mul i32 %i.am, %5
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.aj, i64 %i.ao
  %i.aq = sdiv i32 %i.am, 2
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = sdiv i32 %i.x, 2
  %i.at = sext i32 %i.as to i64
  %i.au = sdiv i32 %i.ae, 2
  %i.av = sext i32 %i.au to i64
  %i.aw = shl nsw i64 %i.ar, 1
  %i.ax = add i64 %i.ak, %i.ao
  br label %iter.check

iter.check:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %indvar = phi i64 [ 0, %.preheader.lr.ph ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.04756 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.br, %._crit_edge ] ; 2 uses
  %.04855 = phi ptr [ %i.ap, %.preheader.lr.ph ], [ %i.bo, %._crit_edge ] ; 8 uses
  %.04954 = phi ptr [ %i.ah, %.preheader.lr.ph ], [ %i.bq, %._crit_edge ] ; 2 uses
  %.05053 = phi ptr [ %i.aa, %.preheader.lr.ph ], [ %i.bp, %._crit_edge ] ; 2 uses
  %i.ay = add nsw i32 %.04756, %5
  %i.az = icmp sgt i32 %i.ay, %i.k
  %.in.in.v = select i1 %i.az, ptr %.05053, ptr %.04954 ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.in.in.v74 = ptrtoaddr ptr %.in.in.v to i64
  %i.ba = mul i64 %indvar, %i.aw
  %i.bb = add i64 %i.ax, %i.ba
  %i.bc = sub i64 %.in.in.v74, %i.bb
  %diff.check = icmp ugt i64 %i.bc, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check75, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %.in.in.v, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load = load <8 x i16>, ptr %i.bd, align 2, !tbaa !59
  %wide.load76 = load <8 x i16>, ptr %i.be, align 2, !tbaa !59
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %.04855, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <8 x i16> %wide.load, ptr %i.bf, align 2, !tbaa !59
  store <8 x i16> %wide.load76, ptr %i.bg, align 2, !tbaa !59
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !155

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index78 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next80, %vec.epilog.vector.body ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %.in.in.v, i64 %index78
  %wide.load79 = load <4 x i16>, ptr %i.bi, align 2, !tbaa !59
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %.04855, i64 %index78
  store <4 x i16> %wide.load79, ptr %i.bj, align 2, !tbaa !59
  %index.next80 = add nuw i64 %index78, 4         ; 2 uses
  %i.bk = icmp eq i64 %index.next80, %n.vec77
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !156

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n81, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec77, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %.in.in.prol = getelementptr inbounds nuw [2 x i8], ptr %.in.in.v, i64 %indvars.iv.prol
  %.in.prol = load i16, ptr %.in.in.prol, align 2, !tbaa !59
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %.04855, i64 %indvars.iv.prol
  store i16 %.in.prol, ptr %i.bl, align 2, !tbaa !59
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !157

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bm = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge57:                                    ; preds = %._crit_edge
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count68
  br i1 %exitcond69.not, label %._crit_edge60.split, label %.preheader.lr.ph, !llvm.loop !158

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.bo = getelementptr inbounds [2 x i8], ptr %.04855, i64 %i.ar
  %i.bp = getelementptr inbounds [2 x i8], ptr %.05053, i64 %i.at
  %i.bq = getelementptr inbounds [2 x i8], ptr %.04954, i64 %i.av
  %i.br = add nuw nsw i32 %.04756, 1              ; 2 uses
  %exitcond64.not = icmp eq i32 %i.br, %i.c
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond64.not, label %._crit_edge57, label %iter.check, !llvm.loop !159

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %.in.in = getelementptr inbounds nuw [2 x i8], ptr %.in.in.v, i64 %indvars.iv
  %.in = load i16, ptr %.in.in, align 2, !tbaa !59
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.04855, i64 %indvars.iv
  store i16 %.in, ptr %i.bs, align 2, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.in.in.1 = getelementptr inbounds nuw [2 x i8], ptr %.in.in.v, i64 %indvars.iv.next
  %.in.1 = load i16, ptr %.in.in.1, align 2, !tbaa !59
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %.04855, i64 %indvars.iv.next
  store i16 %.in.1, ptr %i.bt, align 2, !tbaa !59
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.in.in.2 = getelementptr inbounds nuw [2 x i8], ptr %.in.in.v, i64 %indvars.iv.next.1
  %.in.2 = load i16, ptr %.in.in.2, align 2, !tbaa !59
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.04855, i64 %indvars.iv.next.1
  store i16 %.in.2, ptr %i.bu, align 2, !tbaa !59
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %.in.in.3 = getelementptr inbounds nuw [2 x i8], ptr %.in.in.v, i64 %indvars.iv.next.2
  %.in.3 = load i16, ptr %.in.in.3, align 2, !tbaa !59
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %.04855, i64 %indvars.iv.next.2
  store i16 %.in.3, ptr %i.bv, align 2, !tbaa !59
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !160
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @slideleft8_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sub i32 %6, %5                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 6 uses
  %i.f = fneg nsz float %4
  %8 = uitofp nneg i32 %i.e to float
  %i.g = fmul nsz float %i.f, %8
  %i.h = fptosi float %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !56
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge68.split

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.o = icmp slt i32 %i.c, 1
  %i.p = icmp slt i32 %i.e, 1
  %brmerge = select i1 %i.o, i1 true, i1 %i.p
  br i1 %brmerge, label %._crit_edge68.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %i.q = sext i32 %i.h to i64
  %i.r = zext nneg i32 %i.e to i64
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.preheader.lr.ph

._crit_edge68.split:                              ; preds = %._crit_edge65, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge65
  %indvars.iv73 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next74, %._crit_edge65 ] ; 7 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv73
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv73 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !29
  %i.w = mul nsw i32 %i.v, %5
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.t, i64 %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv73
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv73 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !29
  %i.ad = mul nsw i32 %i.ac, %5
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv73
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv73 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !29
  %i.ak = mul nsw i32 %i.aj, %5
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %i.al
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.05364 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.az, %._crit_edge ]
  %.05463 = phi ptr [ %i.am, %.preheader.lr.ph ], [ %i.as, %._crit_edge ] ; 2 uses
  %.05562 = phi ptr [ %i.af, %.preheader.lr.ph ], [ %i.ay, %._crit_edge ] ; 2 uses
  %.05661 = phi ptr [ %i.y, %.preheader.lr.ph ], [ %i.av, %._crit_edge ] ; 2 uses
  br label %bb.b

._crit_edge65:                                    ; preds = %._crit_edge
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %i.an = load i32, ptr %i.i, align 8, !tbaa !56
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next74, %i.ao
  br i1 %i.ap, label %.preheader.lr.ph, label %._crit_edge68.split, !llvm.loop !161

._crit_edge:                                      ; preds = %bb.b
  %i.aq = load i32, ptr %i.ai, align 4, !tbaa !29
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %.05463, i64 %i.ar
  %i.at = load i32, ptr %i.u, align 4, !tbaa !29
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %.05661, i64 %i.au
  %i.aw = load i32, ptr %i.ab, align 4, !tbaa !29
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %.05562, i64 %i.ax
  %i.az = add nuw nsw i32 %.05364, 1              ; 2 uses
  %exitcond72.not = icmp eq i32 %i.az, %i.c
  br i1 %exitcond72.not, label %._crit_edge65, label %.preheader, !llvm.loop !162

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.ba = add nsw i64 %indvars.iv, %i.q           ; 4 uses
  %i.bb = trunc nsw i64 %i.ba to i32
  %i.bc = srem i32 %i.bb, %i.e
  %isneg = icmp slt i64 %i.ba, 0
  %i.bd = select i1 %isneg, i32 %i.e, i32 0
  %i.be = add nsw i32 %i.bc, %i.bd
  %i.bf = icmp sgt i64 %i.ba, -1
  %i.bg = icmp slt i64 %i.ba, %i.r
  %or.cond = select i1 %i.bf, i1 %i.bg, i1 false
  %i.bh = sext i32 %i.be to i64
  %.in.in.v = select i1 %or.cond, ptr %.05562, ptr %.05661
  %.in.in = getelementptr inbounds i8, ptr %.in.in.v, i64 %i.bh
  %.in = load i8, ptr %.in.in, align 1, !tbaa !65
  %i.bi = getelementptr inbounds nuw i8, ptr %.05463, i64 %indvars.iv
  store i8 %.in, ptr %i.bi, align 1, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !163
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @slideleft16_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sub i32 %6, %5                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 6 uses
  %i.f = fneg nsz float %4
  %8 = uitofp nneg i32 %i.e to float
  %i.g = fmul nsz float %i.f, %8
  %i.h = fptosi float %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !56   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge68.split

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.o = icmp slt i32 %i.c, 1
  %i.p = icmp slt i32 %i.e, 1
  %brmerge = select i1 %i.o, i1 true, i1 %i.p
  br i1 %brmerge, label %._crit_edge68.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %i.q = sext i32 %i.h to i64
  %i.r = zext nneg i32 %i.e to i64
  %wide.trip.count76 = zext nneg i32 %i.j to i64
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.preheader.lr.ph

._crit_edge68.split:                              ; preds = %._crit_edge65, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge65
  %indvars.iv73 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next74, %._crit_edge65 ] ; 7 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv73
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv73
  %i.v = load i32, ptr %i.u, align 4, !tbaa !29   ; 2 uses
  %i.w = mul nsw i32 %i.v, %5
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.t, i64 %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv73
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv73
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !29 ; 2 uses
  %i.ad = mul nsw i32 %i.ac, %5
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv73
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv73
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !29 ; 2 uses
  %i.ak = mul nsw i32 %i.aj, %5
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %i.al
  %i.an = sdiv i32 %i.aj, 2
  %i.ao = sext i32 %i.an to i64
  %i.ap = sdiv i32 %i.v, 2
  %i.aq = sext i32 %i.ap to i64
  %i.ar = sdiv i32 %i.ac, 2
  %i.as = sext i32 %i.ar to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.05364 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.aw, %._crit_edge ]
  %.05463 = phi ptr [ %i.am, %.preheader.lr.ph ], [ %i.at, %._crit_edge ] ; 2 uses
  %.05562 = phi ptr [ %i.af, %.preheader.lr.ph ], [ %i.av, %._crit_edge ] ; 2 uses
  %.05661 = phi ptr [ %i.y, %.preheader.lr.ph ], [ %i.au, %._crit_edge ] ; 2 uses
  br label %bb.b

._crit_edge65:                                    ; preds = %._crit_edge
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond77.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count76
  br i1 %exitcond77.not, label %._crit_edge68.split, label %.preheader.lr.ph, !llvm.loop !164

._crit_edge:                                      ; preds = %bb.b
  %i.at = getelementptr inbounds [2 x i8], ptr %.05463, i64 %i.ao
  %i.au = getelementptr inbounds [2 x i8], ptr %.05661, i64 %i.aq
  %i.av = getelementptr inbounds [2 x i8], ptr %.05562, i64 %i.as
  %i.aw = add nuw nsw i32 %.05364, 1              ; 2 uses
  %exitcond72.not = icmp eq i32 %i.aw, %i.c
  br i1 %exitcond72.not, label %._crit_edge65, label %.preheader, !llvm.loop !165

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.ax = add nsw i64 %indvars.iv, %i.q           ; 4 uses
  %i.ay = trunc nsw i64 %i.ax to i32
  %i.az = srem i32 %i.ay, %i.e
  %isneg = icmp slt i64 %i.ax, 0
  %i.ba = select i1 %isneg, i32 %i.e, i32 0
  %i.bb = add nsw i32 %i.az, %i.ba
  %i.bc = icmp sgt i64 %i.ax, -1
  %i.bd = icmp slt i64 %i.ax, %i.r
  %or.cond = select i1 %i.bc, i1 %i.bd, i1 false
  %i.be = sext i32 %i.bb to i64
  %.in.in.v = select i1 %or.cond, ptr %.05562, ptr %.05661
  %.in.in = getelementptr inbounds [2 x i8], ptr %.in.in.v, i64 %i.be
  %.in = load i16, ptr %.in.in, align 2, !tbaa !59
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %.05463, i64 %indvars.iv
  store i16 %.in, ptr %i.bf, align 2, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !166
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @slideright8_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sub i32 %6, %5                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 6 uses
  %8 = uitofp nneg i32 %i.e to float
  %i.f = fmul nsz float %4, %8
  %i.g = fptosi float %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !56
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge68.split

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = icmp slt i32 %i.c, 1
  %i.o = icmp slt i32 %i.e, 1
  %brmerge = select i1 %i.n, i1 true, i1 %i.o
  br i1 %brmerge, label %._crit_edge68.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %i.p = sext i32 %i.g to i64
  %i.q = zext nneg i32 %i.e to i64
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.preheader.lr.ph

._crit_edge68.split:                              ; preds = %._crit_edge65, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge65
  %indvars.iv73 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next74, %._crit_edge65 ] ; 7 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv73
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv73 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !29
  %i.v = mul nsw i32 %i.u, %5
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 %i.w
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv73
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv73 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !29
  %i.ac = mul nsw i32 %i.ab, %5
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.z, i64 %i.ad
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv73
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv73 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !29
  %i.aj = mul nsw i32 %i.ai, %5
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ag, i64 %i.ak
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.05364 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ay, %._crit_edge ]
  %.05463 = phi ptr [ %i.al, %.preheader.lr.ph ], [ %i.ar, %._crit_edge ] ; 2 uses
  %.05562 = phi ptr [ %i.ae, %.preheader.lr.ph ], [ %i.ax, %._crit_edge ] ; 2 uses
  %.05661 = phi ptr [ %i.x, %.preheader.lr.ph ], [ %i.au, %._crit_edge ] ; 2 uses
  br label %bb.b

._crit_edge65:                                    ; preds = %._crit_edge
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %i.am = load i32, ptr %i.h, align 8, !tbaa !56
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next74, %i.an
  br i1 %i.ao, label %.preheader.lr.ph, label %._crit_edge68.split, !llvm.loop !167

._crit_edge:                                      ; preds = %bb.b
  %i.ap = load i32, ptr %i.ah, align 4, !tbaa !29
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %.05463, i64 %i.aq
  %i.as = load i32, ptr %i.t, align 4, !tbaa !29
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %.05661, i64 %i.at
  %i.av = load i32, ptr %i.aa, align 4, !tbaa !29
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %.05562, i64 %i.aw
  %i.ay = add nuw nsw i32 %.05364, 1              ; 2 uses
  %exitcond72.not = icmp eq i32 %i.ay, %i.c
  br i1 %exitcond72.not, label %._crit_edge65, label %.preheader, !llvm.loop !168

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.az = add nsw i64 %indvars.iv, %i.p           ; 4 uses
  %i.ba = trunc nsw i64 %i.az to i32
  %i.bb = srem i32 %i.ba, %i.e
  %isneg = icmp slt i64 %i.az, 0
  %i.bc = select i1 %isneg, i32 %i.e, i32 0
  %i.bd = add nsw i32 %i.bb, %i.bc
  %i.be = icmp sgt i64 %i.az, -1
  %i.bf = icmp slt i64 %i.az, %i.q
  %or.cond = select i1 %i.be, i1 %i.bf, i1 false
  %i.bg = sext i32 %i.bd to i64
  %.in.in.v = select i1 %or.cond, ptr %.05562, ptr %.05661
  %.in.in = getelementptr inbounds i8, ptr %.in.in.v, i64 %i.bg
  %.in = load i8, ptr %.in.in, align 1, !tbaa !65
  %i.bh = getelementptr inbounds nuw i8, ptr %.05463, i64 %indvars.iv
  store i8 %.in, ptr %i.bh, align 1, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !169
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @slideright16_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sub i32 %6, %5                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 6 uses
  %8 = uitofp nneg i32 %i.e to float
  %i.f = fmul nsz float %4, %8
  %i.g = fptosi float %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !56   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge68.split

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = icmp slt i32 %i.c, 1
  %i.o = icmp slt i32 %i.e, 1
  %brmerge = select i1 %i.n, i1 true, i1 %i.o
  br i1 %brmerge, label %._crit_edge68.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %i.p = sext i32 %i.g to i64
  %i.q = zext nneg i32 %i.e to i64
  %wide.trip.count76 = zext nneg i32 %i.i to i64
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.preheader.lr.ph

._crit_edge68.split:                              ; preds = %._crit_edge65, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge65
  %indvars.iv73 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next74, %._crit_edge65 ] ; 7 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv73
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv73
  %i.u = load i32, ptr %i.t, align 4, !tbaa !29   ; 2 uses
  %i.v = mul nsw i32 %i.u, %5
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 %i.w
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv73
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv73
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !29 ; 2 uses
  %i.ac = mul nsw i32 %i.ab, %5
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.z, i64 %i.ad
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv73
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv73
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !29 ; 2 uses
  %i.aj = mul nsw i32 %i.ai, %5
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ag, i64 %i.ak
  %i.am = sdiv i32 %i.ai, 2
  %i.an = sext i32 %i.am to i64
  %i.ao = sdiv i32 %i.u, 2
  %i.ap = sext i32 %i.ao to i64
  %i.aq = sdiv i32 %i.ab, 2
  %i.ar = sext i32 %i.aq to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.05364 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.av, %._crit_edge ]
  %.05463 = phi ptr [ %i.al, %.preheader.lr.ph ], [ %i.as, %._crit_edge ] ; 2 uses
  %.05562 = phi ptr [ %i.ae, %.preheader.lr.ph ], [ %i.au, %._crit_edge ] ; 2 uses
  %.05661 = phi ptr [ %i.x, %.preheader.lr.ph ], [ %i.at, %._crit_edge ] ; 2 uses
  br label %bb.b

._crit_edge65:                                    ; preds = %._crit_edge
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond77.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count76
  br i1 %exitcond77.not, label %._crit_edge68.split, label %.preheader.lr.ph, !llvm.loop !170

._crit_edge:                                      ; preds = %bb.b
  %i.as = getelementptr inbounds [2 x i8], ptr %.05463, i64 %i.an
  %i.at = getelementptr inbounds [2 x i8], ptr %.05661, i64 %i.ap
  %i.au = getelementptr inbounds [2 x i8], ptr %.05562, i64 %i.ar
  %i.av = add nuw nsw i32 %.05364, 1              ; 2 uses
  %exitcond72.not = icmp eq i32 %i.av, %i.c
  br i1 %exitcond72.not, label %._crit_edge65, label %.preheader, !llvm.loop !171

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.aw = add nsw i64 %indvars.iv, %i.p           ; 4 uses
  %i.ax = trunc nsw i64 %i.aw to i32
  %i.ay = srem i32 %i.ax, %i.e
  %isneg = icmp slt i64 %i.aw, 0
  %i.az = select i1 %isneg, i32 %i.e, i32 0
  %i.ba = add nsw i32 %i.ay, %i.az
  %i.bb = icmp sgt i64 %i.aw, -1
  %i.bc = icmp slt i64 %i.aw, %i.q
  %or.cond = select i1 %i.bb, i1 %i.bc, i1 false
  %i.bd = sext i32 %i.ba to i64
  %.in.in.v = select i1 %or.cond, ptr %.05562, ptr %.05661
  %.in.in = getelementptr inbounds [2 x i8], ptr %.in.in.v, i64 %i.bd
  %.in = load i16, ptr %.in.in, align 2, !tbaa !59
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %.05463, i64 %indvars.iv
  store i16 %.in, ptr %i.be, align 2, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !172
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @slideup8_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.d = load i32, ptr %i.c, align 4, !tbaa !70   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !61   ; 4 uses
  %i.g = fneg nsz float %4
  %i.h = sitofp nsz i32 %i.d to float
  %i.i = fmul nsz float %i.g, %i.h
  %i.j = fptosi float %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !56
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph59, label %._crit_edge60.split

.lr.ph59:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.o = icmp sge i32 %5, %6
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.r = icmp slt i32 %i.f, 1
  %brmerge = select i1 %i.o, i1 true, i1 %i.r
  br i1 %brmerge, label %._crit_edge60.split, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %.lr.ph59
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 8 uses
  %min.iters.check = icmp ult i32 %i.f, 4
  %min.iters.check75 = icmp ult i32 %i.f, 32
  %i.s = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.s, 0
  %n.vec77 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n81 = icmp eq i64 %n.vec77, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph55

._crit_edge60.split:                              ; preds = %._crit_edge56, %.lr.ph59, %bb.a
  ret void

.lr.ph55:                                         ; preds = %.lr.ph55.preheader, %._crit_edge56
  %indvars.iv65 = phi i64 [ 0, %.lr.ph55.preheader ], [ %indvars.iv.next66, %._crit_edge56 ] ; 7 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv65
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv65 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !29
  %i.x = mul nsw i32 %i.w, %5
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %i.u, i64 %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv65
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv65
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv65
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv65
  br label %iter.check

._crit_edge56:                                    ; preds = %._crit_edge
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %i.ae = load i32, ptr %i.k, align 8, !tbaa !56
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next66, %i.af
  br i1 %i.ag, label %.lr.ph55, label %._crit_edge60.split, !llvm.loop !173

iter.check:                                       ; preds = %.lr.ph55, %._crit_edge
  %.04753 = phi i32 [ %5, %.lr.ph55 ], [ %i.bm, %._crit_edge ] ; 2 uses
  %.04852 = phi ptr [ %i.z, %.lr.ph55 ], [ %i.bl, %._crit_edge ] ; 9 uses
  %i.ah = add nsw i32 %.04753, %i.j               ; 4 uses
  %i.ai = srem i32 %i.ah, %i.d
  %isneg = icmp slt i32 %i.ah, 0
  %i.aj = select i1 %isneg, i32 %i.d, i32 0
  %i.ak = add nsw i32 %i.ai, %i.aj                ; 2 uses
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !64
  %i.am = load i32, ptr %i.ab, align 4, !tbaa !29
  %i.an = mul nsw i32 %i.am, %i.ak
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %i.al, i64 %i.ao
  %i.aq = load ptr, ptr %i.ac, align 8, !tbaa !64
  %i.ar = load i32, ptr %i.ad, align 4, !tbaa !29
  %i.as = mul nsw i32 %i.ar, %i.ak
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 %i.at
  %i.av = icmp sgt i32 %i.ah, -1
  %i.aw = icmp slt i32 %i.ah, %i.d
  %or.cond = select i1 %i.av, i1 %i.aw, i1 false
  %.in.in.v = select i1 %or.cond, ptr %i.au, ptr %i.ap ; 8 uses
  %.in.in.v73 = ptrtoaddr ptr %.in.in.v to i64
  %.0485274 = ptrtoaddr ptr %.04852 to i64
  %i.ax = sub i64 %.in.in.v73, %.0485274
  %diff.check = icmp ugt i64 %i.ax, -32
  %or.cond82 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond82, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check75, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.in.in.v, i64 %index ; 2 uses
end_hunk_1
begin_hunk_2_@fadegrays16_transition:bb.a
  %i.mm = sext i32 %i.ml to i64
  %i.mn = getelementptr inbounds i8, ptr %i.mj, i64 %i.mm
  %i.mo = load ptr, ptr %i.u, align 8, !tbaa !64
  %i.mp = load i32, ptr %i.kb, align 4, !tbaa !29
  %i.mq = mul nsw i32 %i.mp, %.087110.us
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds i8, ptr %i.mo, i64 %i.mr
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %i.ms, i64 %indvars.iv151
  %i.mu = load i16, ptr %i.mt, align 2, !tbaa !59
  %i.mv = zext i16 %i.mu to i32                   ; 3 uses
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %i.mn, i64 %indvars.iv151
  %i.mx = load i16, ptr %i.mw, align 2, !tbaa !59
  %i.my = zext i16 %i.mx to i32                   ; 3 uses
  switch i32 %i.aq, label %.peel.next142 [
    i32 4, label %._crit_edge.us
    i32 5, label %.peel.next142.epil.preheader
  ]

.peel.next142:                                    ; preds = %bb.g, %.peel.next142
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.peel.next142 ], [ 4, %bb.g ] ; 6 uses
  %i.mz = phi i32 [ %i.oo, %.peel.next142 ], [ %i.me, %bb.g ]
  %i.na = phi i32 [ %i.os, %.peel.next142 ], [ %i.mi, %bb.g ]
  %niter = phi i64 [ %niter.next.1, %.peel.next142 ], [ 0, %bb.g ] ; 2 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !64
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !29
  %i.nf = mul nsw i32 %i.ne, %.087110.us
  %i.ng = sext i32 %i.nf to i64
  %i.nh = getelementptr inbounds i8, ptr %i.nc, i64 %i.ng
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !64
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !29
  %i.nm = mul nsw i32 %i.nl, %.087110.us
  %i.nn = sext i32 %i.nm to i64
  %i.no = getelementptr inbounds i8, ptr %i.nj, i64 %i.nn
  %i.np = getelementptr inbounds nuw [2 x i8], ptr %i.no, i64 %indvars.iv151
  %i.nq = load i16, ptr %i.np, align 2, !tbaa !59
  %i.nr = zext i16 %i.nq to i32
  %i.ns = add nuw nsw i32 %i.mz, %i.nr
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %i.nh, i64 %indvars.iv151
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !59
  %i.nv = zext i16 %i.nu to i32
  %i.nw = add nuw nsw i32 %i.na, %i.nv
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !64
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !29
  %i.ob = mul nsw i32 %i.oa, %.087110.us
  %i.oc = sext i32 %i.ob to i64
  %i.od = getelementptr inbounds i8, ptr %i.ny, i64 %i.oc
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !64
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !29
  %i.oi = mul nsw i32 %i.oh, %.087110.us
  %i.oj = sext i32 %i.oi to i64
  %i.ok = getelementptr inbounds i8, ptr %i.of, i64 %i.oj
  %i.ol = getelementptr inbounds nuw [2 x i8], ptr %i.ok, i64 %indvars.iv151
  %i.om = load i16, ptr %i.ol, align 2, !tbaa !59
  %i.on = zext i16 %i.om to i32
  %i.oo = add nuw nsw i32 %i.ns, %i.on            ; 3 uses
  %i.op = getelementptr inbounds nuw [2 x i8], ptr %i.od, i64 %indvars.iv151
  %i.oq = load i16, ptr %i.op, align 2, !tbaa !59
  %i.or = zext i16 %i.oq to i32
  %i.os = add nuw nsw i32 %i.nw, %i.or            ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.ke
  br i1 %niter.ncmp.1, label %._crit_edge.us.loopexit.unr-lcssa, label %.peel.next142, !llvm.loop !402

._crit_edge.us.loopexit.unr-lcssa:                ; preds = %.peel.next142
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.peel.next142.epil.preheader

.peel.next142.epil.preheader:                     ; preds = %bb.g, %._crit_edge.us.loopexit.unr-lcssa
  %indvars.iv.epil.init = phi i64 [ 4, %bb.g ], [ %indvars.iv.next.1, %._crit_edge.us.loopexit.unr-lcssa ] ; 4 uses
  %.epil.init = phi i32 [ %i.me, %bb.g ], [ %i.oo, %._crit_edge.us.loopexit.unr-lcssa ]
  %.epil.init232 = phi i32 [ %i.mi, %bb.g ], [ %i.os, %._crit_edge.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod235)
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil.init
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !64
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.epil.init
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !29
  %i.ox = mul nsw i32 %i.ow, %.087110.us
  %i.oy = sext i32 %i.ox to i64
  %i.oz = getelementptr inbounds i8, ptr %i.ou, i64 %i.oy
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !64
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.epil.init
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !29
  %i.pe = mul nsw i32 %i.pd, %.087110.us
  %i.pf = sext i32 %i.pe to i64
  %i.pg = getelementptr inbounds i8, ptr %i.pb, i64 %i.pf
  %i.ph = getelementptr inbounds nuw [2 x i8], ptr %i.pg, i64 %indvars.iv151
  %i.pi = load i16, ptr %i.ph, align 2, !tbaa !59
  %i.pj = zext i16 %i.pi to i32
  %i.pk = add nuw nsw i32 %.epil.init, %i.pj
  %i.pl = getelementptr inbounds nuw [2 x i8], ptr %i.oz, i64 %indvars.iv151
  %i.pm = load i16, ptr %i.pl, align 2, !tbaa !59
  %i.pn = zext i16 %i.pm to i32
  %i.po = add nuw nsw i32 %.epil.init232, %i.pn
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.peel.next142.epil.preheader, %._crit_edge.us.loopexit.unr-lcssa, %bb.g, %bb.f, %bb.e, %bb.d
  %.lcssa134 = phi i32 [ %i.my, %bb.g ], [ %i.kh, %bb.d ], [ %i.kh, %bb.e ], [ %i.kh, %bb.f ], [ %i.my, %._crit_edge.us.loopexit.unr-lcssa ], [ %i.my, %.peel.next142.epil.preheader ] ; 2 uses
  %.lcssa133 = phi i32 [ %i.mv, %bb.g ], [ %i.ki, %bb.d ], [ %i.ki, %bb.e ], [ %i.ki, %bb.f ], [ %i.mv, %._crit_edge.us.loopexit.unr-lcssa ], [ %i.mv, %.peel.next142.epil.preheader ] ; 2 uses
  %.lcssa132 = phi i32 [ %i.mi, %bb.g ], [ %i.ky, %bb.d ], [ %i.lq, %bb.e ], [ %i.mi, %bb.f ], [ %i.os, %._crit_edge.us.loopexit.unr-lcssa ], [ %i.po, %.peel.next142.epil.preheader ]
  %.lcssa131 = phi i32 [ %i.me, %bb.g ], [ %i.kv, %bb.d ], [ %i.lm, %bb.e ], [ %i.me, %bb.f ], [ %i.oo, %._crit_edge.us.loopexit.unr-lcssa ], [ %i.pk, %.peel.next142.epil.preheader ]
  store i32 %.lcssa133, ptr %i.o, align 4
  store i32 %.lcssa134, ptr %i.p, align 4
  %i.pp = sdiv i32 %.lcssa131, 3
  %i.pq = sdiv i32 %.lcssa132, 3
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.us, %bb.c
  %i.pr = phi i32 [ %.lcssa134, %._crit_edge.us ], [ %i.kh, %bb.c ] ; 2 uses
  %i.ps = phi i32 [ %.lcssa133, %._crit_edge.us ], [ %i.ki, %bb.c ] ; 2 uses
  %.lcssa89.us = phi i32 [ %i.pq, %._crit_edge.us ], [ 0, %bb.c ] ; 3 uses
  %.lcssa.us = phi i32 [ %i.pp, %._crit_edge.us ], [ 0, %bb.c ] ; 3 uses
  store i32 %.lcssa.us, ptr %i.a, align 16, !tbaa !29
  store i32 %.lcssa89.us, ptr %i.l, align 16, !tbaa !29
  store i32 %.lcssa.us, ptr %i.q, align 8, !tbaa !29
  store i32 %.lcssa.us, ptr %i.r, align 4, !tbaa !29
  store i32 %.lcssa89.us, ptr %i.s, align 8, !tbaa !29
  store i32 %.lcssa89.us, ptr %i.t, align 4, !tbaa !29
  br i1 %i.ar, label %.lr.ph103.us, label %._crit_edge104.us

.lr.ph103.us:                                     ; preds = %bb.h, %.lr.ph103.us
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %.lr.ph103.us ], [ 0, %bb.h ] ; 9 uses
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv146
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !64
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv146
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !29
  %i.px = mul nsw i32 %i.pw, %.087110.us
  %i.py = sext i32 %i.px to i64
  %i.pz = getelementptr inbounds i8, ptr %i.pu, i64 %i.py
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv146
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !64
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv146
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !29
  %i.qe = mul nsw i32 %i.qd, %.087110.us
  %i.qf = sext i32 %i.qe to i64
  %i.qg = getelementptr inbounds i8, ptr %i.qb, i64 %i.qf
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv146
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !64
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv146
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !29
  %i.ql = mul nsw i32 %i.qk, %.087110.us
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr inbounds i8, ptr %i.qi, i64 %i.qm
  %i.qo = getelementptr inbounds nuw [2 x i8], ptr %i.pz, i64 %indvars.iv151
  %i.qp = load i16, ptr %i.qo, align 2, !tbaa !59
  %i.qq = uitofp nsz i16 %i.qp to float
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv146
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !29
  %i.qt = sitofp nsz i32 %i.qs to float
  %i.qu = fmul nsz float %i.aj, %i.qt
  %i.qv = tail call nsz noundef float @llvm.fmuladd.f32(float %i.qq, float %i.ai, float %i.qu)
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv146
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !29
  %i.qy = sitofp nsz i32 %i.qx to float
  %i.qz = getelementptr inbounds nuw [2 x i8], ptr %i.qg, i64 %indvars.iv151
  %i.ra = load i16, ptr %i.qz, align 2, !tbaa !59
  %i.rb = uitofp nsz i16 %i.ra to float
  %i.rc = fmul nsz float %i.al, %i.rb
  %i.rd = tail call nsz noundef float @llvm.fmuladd.f32(float %i.qy, float %i.ak, float %i.rc)
  %i.re = fmul nsz float %i.am, %i.rd
  %i.rf = tail call nsz noundef float @llvm.fmuladd.f32(float %i.qv, float %4, float %i.re)
  %i.rg = fptoui float %i.rf to i16
  %i.rh = getelementptr inbounds nuw [2 x i8], ptr %i.qn, i64 %indvars.iv151
  store i16 %i.rg, ptr %i.rh, align 2, !tbaa !59
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count149
  br i1 %exitcond150.not, label %._crit_edge104.us, label %.lr.ph103.us, !llvm.loop !401

._crit_edge104.us:                                ; preds = %.lr.ph103.us, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge108.split.us117, label %bb.c, !llvm.loop !399

._crit_edge108.split.us117:                       ; preds = %._crit_edge104.us
  %i.ri = add nsw i32 %.087110.us, 1              ; 2 uses
  %exitcond156.not = icmp eq i32 %i.ri, %6
  br i1 %exitcond156.not, label %._crit_edge114, label %.preheader.us, !llvm.loop !400

._crit_edge114:                                   ; preds = %._crit_edge108.split.us117, %._crit_edge108.split.us.split.us.us.us.us.split, %._crit_edge108.split.us.split.us.us.us.us.split.us.us, %.preheader.lr.ph.split.us.split.us, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @wipetl8_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sub i32 %6, %5                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 7 uses
  %8 = uitofp nneg i32 %i.e to float
  %i.f = fmul nsz float %4, %8
  %i.g = fptosi float %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.i = load i32, ptr %i.h, align 4, !tbaa !70
  %i.j = sitofp nsz i32 %i.i to float
  %i.k = fmul nsz float %4, %i.j
  %i.l = fptosi float %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !56
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge68.split

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.s = icmp slt i32 %i.c, 1
  %i.t = icmp slt i32 %i.e, 1
  %brmerge = select i1 %i.s, i1 true, i1 %i.t
  br i1 %brmerge, label %._crit_edge68.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %i.u = sext i32 %i.g to i64                     ; 5 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 9 uses
  %wide.trip.count78 = zext nneg i32 %i.e to i64
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.v = add nsw i32 %i.e, -1
  %i.w = icmp ult i32 %i.v, 3
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod100 = icmp ne i64 %xtraiter, 0
  %min.iters.check = icmp ult i32 %i.e, 4
  %min.iters.check92 = icmp ult i32 %i.e, 32
  %i.x = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  %n.vec94 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n98 = icmp eq i64 %n.vec94, %wide.trip.count
  %xtraiter101 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod102.not = icmp eq i64 %xtraiter101, 0
  br label %.preheader.lr.ph

._crit_edge68.split:                              ; preds = %._crit_edge65, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge65
  %indvars.iv81 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next82, %._crit_edge65 ] ; 7 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv81
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv81 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !29
  %i.ac = mul nsw i32 %i.ab, %5
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.z, i64 %i.ad
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv81
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv81 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !29
  %i.aj = mul nsw i32 %i.ai, %5
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ag, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv81
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv81 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !29
  %i.aq = mul nsw i32 %i.ap, %5
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.an, i64 %i.ar
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.05164 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.bx, %._crit_edge ] ; 2 uses
  %.05262 = phi ptr [ %i.as, %.preheader.lr.ph ], [ %i.bq, %._crit_edge ] ; 14 uses
  %.05360 = phi ptr [ %i.al, %.preheader.lr.ph ], [ %i.bw, %._crit_edge ] ; 14 uses
  %.05458 = phi ptr [ %i.ae, %.preheader.lr.ph ], [ %i.bt, %._crit_edge ] ; 6 uses
  %i.at = add nsw i32 %.05164, %5
  %.not = icmp sgt i32 %i.at, %i.l
  %.not.fr = freeze i1 %.not
  br i1 %.not.fr, label %iter.check, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.preheader
  br i1 %i.w, label %.lr.ph.split.epil.preheader, label %.lr.ph.split

iter.check:                                       ; preds = %.preheader
  %.0526291 = ptrtoaddr ptr %.05262 to i64
  %.0536090 = ptrtoaddr ptr %.05360 to i64
  %i.au = sub i64 %.0536090, %.0526291
  %diff.check = icmp ugt i64 %i.au, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check92, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.05360, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load = load <16 x i8>, ptr %i.av, align 1, !tbaa !65
  %wide.load93 = load <16 x i8>, ptr %i.aw, align 1, !tbaa !65
  %i.ax = getelementptr inbounds nuw i8, ptr %.05262, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <16 x i8> %wide.load, ptr %i.ax, align 1, !tbaa !65
  store <16 x i8> %wide.load93, ptr %i.ay, align 1, !tbaa !65
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !403

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.preheader, label %vec.epilog.ph, !prof !71

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index95 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next97, %vec.epilog.vector.body ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.05360, i64 %index95
  %wide.load96 = load <4 x i8>, ptr %i.ba, align 1, !tbaa !65
  %i.bb = getelementptr inbounds nuw i8, ptr %.05262, i64 %index95
  store <4 x i8> %wide.load96, ptr %i.bb, align 1, !tbaa !65
  %index.next97 = add nuw i64 %index95, 4         ; 2 uses
  %i.bc = icmp eq i64 %index.next97, %n.vec94
  br i1 %i.bc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !404

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n98, label %._crit_edge, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv75.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec94, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod102.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us.prol
  %indvars.iv75.prol = phi i64 [ %indvars.iv.next76.prol, %.lr.ph.split.us.prol ], [ %indvars.iv75.ph, %.lr.ph.split.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader ]
  %.in.in.us.prol = getelementptr inbounds nuw i8, ptr %.05360, i64 %indvars.iv75.prol
  %.in.us.prol = load i8, ptr %.in.in.us.prol, align 1, !tbaa !65
  %i.bd = getelementptr inbounds nuw i8, ptr %.05262, i64 %indvars.iv75.prol
  store i8 %.in.us.prol, ptr %i.bd, align 1, !tbaa !65
  %indvars.iv.next76.prol = add nuw nsw i64 %indvars.iv75.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter101
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !405

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader
  %indvars.iv75.unr = phi i64 [ %indvars.iv75.ph, %.lr.ph.split.us.preheader ], [ %indvars.iv.next76.prol, %.lr.ph.split.us.prol ]
  %i.be = sub nsw i64 %indvars.iv75.ph, %wide.trip.count
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %indvars.iv75 = phi i64 [ %indvars.iv.next76.3, %.lr.ph.split.us ], [ %indvars.iv75.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %.in.in.us = getelementptr inbounds nuw i8, ptr %.05360, i64 %indvars.iv75
  %.in.us = load i8, ptr %.in.in.us, align 1, !tbaa !65
  %i.bg = getelementptr inbounds nuw i8, ptr %.05262, i64 %indvars.iv75
  store i8 %.in.us, ptr %i.bg, align 1, !tbaa !65
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %.in.in.us.1 = getelementptr inbounds nuw i8, ptr %.05360, i64 %indvars.iv.next76
  %.in.us.1 = load i8, ptr %.in.in.us.1, align 1, !tbaa !65
  %i.bh = getelementptr inbounds nuw i8, ptr %.05262, i64 %indvars.iv.next76
  store i8 %.in.us.1, ptr %i.bh, align 1, !tbaa !65
  %indvars.iv.next76.1 = add nuw nsw i64 %indvars.iv75, 2 ; 2 uses
  %.in.in.us.2 = getelementptr inbounds nuw i8, ptr %.05360, i64 %indvars.iv.next76.1
  %.in.us.2 = load i8, ptr %.in.in.us.2, align 1, !tbaa !65
  %i.bi = getelementptr inbounds nuw i8, ptr %.05262, i64 %indvars.iv.next76.1
  store i8 %.in.us.2, ptr %i.bi, align 1, !tbaa !65
  %indvars.iv.next76.2 = add nuw nsw i64 %indvars.iv75, 3 ; 2 uses
  %.in.in.us.3 = getelementptr inbounds nuw i8, ptr %.05360, i64 %indvars.iv.next76.2
  %.in.us.3 = load i8, ptr %.in.in.us.3, align 1, !tbaa !65
  %i.bj = getelementptr inbounds nuw i8, ptr %.05262, i64 %indvars.iv.next76.2
  store i8 %.in.us.3, ptr %i.bj, align 1, !tbaa !65
  %indvars.iv.next76.3 = add nuw nsw i64 %indvars.iv75, 4 ; 2 uses
  %exitcond79.not.3 = icmp eq i64 %indvars.iv.next76.3, %wide.trip.count78
  br i1 %exitcond79.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !406

._crit_edge65:                                    ; preds = %._crit_edge
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.bk = load i32, ptr %i.m, align 8, !tbaa !56
  %i.bl = sext i32 %i.bk to i64
  %i.bm = icmp slt i64 %indvars.iv.next82, %i.bl
  br i1 %i.bm, label %.preheader.lr.ph, label %._crit_edge68.split, !llvm.loop !407

._crit_edge.loopexit99.unr-lcssa:                 ; preds = %.lr.ph.split
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit99.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit99.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod100)
  br label %.lr.ph.split.epil

.lr.ph.split.epil:                                ; preds = %.lr.ph.split.epil, %.lr.ph.split.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.split.epil ], [ %indvars.iv.epil.init, %.lr.ph.split.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.epil ], [ 0, %.lr.ph.split.epil.preheader ]
  %.not56.epil = icmp sgt i64 %indvars.iv.epil, %i.u
  %spec.select.epil = select i1 %.not56.epil, ptr %.05360, ptr %.05458
  %.in.in.epil = getelementptr inbounds nuw i8, ptr %spec.select.epil, i64 %indvars.iv.epil
  %.in.epil = load i8, ptr %.in.in.epil, align 1, !tbaa !65
  %i.bn = getelementptr inbounds nuw i8, ptr %.05262, i64 %indvars.iv.epil
  store i8 %.in.epil, ptr %i.bn, align 1, !tbaa !65
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.epil, !llvm.loop !408

._crit_edge:                                      ; preds = %._crit_edge.loopexit99.unr-lcssa, %.lr.ph.split.epil, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block, %vec.epilog.middle.block
  %i.bo = load i32, ptr %i.ao, align 4, !tbaa !29
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds i8, ptr %.05262, i64 %i.bp
  %i.br = load i32, ptr %i.aa, align 4, !tbaa !29
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %.05458, i64 %i.bs
  %i.bu = load i32, ptr %i.ah, align 4, !tbaa !29
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds i8, ptr %.05360, i64 %i.bv
  %i.bx = add nuw nsw i32 %.05164, 1              ; 2 uses
  %exitcond80.not = icmp eq i32 %i.bx, %i.c
  br i1 %exitcond80.not, label %._crit_edge65, label %.preheader, !llvm.loop !409

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.split ], [ 0, %.lr.ph.split.preheader ] ; 8 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.split ], [ 0, %.lr.ph.split.preheader ]
  %.not56 = icmp sgt i64 %indvars.iv, %i.u
  %spec.select = select i1 %.not56, ptr %.05360, ptr %.05458
  %.in.in = getelementptr inbounds nuw i8, ptr %spec.select, i64 %indvars.iv
  %.in = load i8, ptr %.in.in, align 1, !tbaa !65
  %i.by = getelementptr inbounds nuw i8, ptr %.05262, i64 %indvars.iv
  store i8 %.in, ptr %i.by, align 1, !tbaa !65
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %.not56.1.not = icmp slt i64 %indvars.iv, %i.u
  %spec.select.1 = select i1 %.not56.1.not, ptr %.05458, ptr %.05360
  %.in.in.1 = getelementptr inbounds nuw i8, ptr %spec.select.1, i64 %indvars.iv.next
  %.in.1 = load i8, ptr %.in.in.1, align 1, !tbaa !65
  %i.bz = getelementptr inbounds nuw i8, ptr %.05262, i64 %indvars.iv.next
  store i8 %.in.1, ptr %i.bz, align 1, !tbaa !65
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 3 uses
  %.not56.2 = icmp sgt i64 %indvars.iv.next.1, %i.u
  %spec.select.2 = select i1 %.not56.2, ptr %.05360, ptr %.05458
  %.in.in.2 = getelementptr inbounds nuw i8, ptr %spec.select.2, i64 %indvars.iv.next.1
  %.in.2 = load i8, ptr %.in.in.2, align 1, !tbaa !65
  %i.ca = getelementptr inbounds nuw i8, ptr %.05262, i64 %indvars.iv.next.1
  store i8 %.in.2, ptr %i.ca, align 1, !tbaa !65
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 3 uses
  %.not56.3 = icmp sgt i64 %indvars.iv.next.2, %i.u
  %spec.select.3 = select i1 %.not56.3, ptr %.05360, ptr %.05458
  %.in.in.3 = getelementptr inbounds nuw i8, ptr %spec.select.3, i64 %indvars.iv.next.2
  %.in.3 = load i8, ptr %.in.in.3, align 1, !tbaa !65
  %i.cb = getelementptr inbounds nuw i8, ptr %.05262, i64 %indvars.iv.next.2
  store i8 %.in.3, ptr %i.cb, align 1, !tbaa !65
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit99.unr-lcssa, label %.lr.ph.split, !llvm.loop !410
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @wipetl16_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sub i32 %6, %5                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 7 uses
  %8 = uitofp nneg i32 %i.e to float
  %i.f = fmul nsz float %4, %8
  %i.g = fptosi float %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.i = load i32, ptr %i.h, align 4, !tbaa !70
  %i.j = sitofp nsz i32 %i.i to float
  %i.k = fmul nsz float %4, %i.j
  %i.l = fptosi float %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !56   ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge68.split

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.s = icmp slt i32 %i.c, 1
  %i.t = icmp slt i32 %i.e, 1
  %brmerge = select i1 %i.s, i1 true, i1 %i.t
  br i1 %brmerge, label %._crit_edge68.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %i.u = sext i32 %i.g to i64                     ; 5 uses
  %wide.trip.count84 = zext nneg i32 %i.n to i64
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 10 uses
  %wide.trip.count78 = zext nneg i32 %i.e to i64
  %i.v = shl nuw nsw i64 %wide.trip.count, 1      ; 2 uses
  %i.w = xor i32 %5, -1
  %i.x = add i32 %6, %i.w
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = shl nuw nsw i64 %i.y, 1
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ab = add nsw i32 %i.e, -1
  %i.ac = icmp ult i32 %i.ab, 3
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod107 = icmp ne i64 %xtraiter, 0
  %min.iters.check = icmp ult i32 %i.e, 4
  %min.iters.check99 = icmp ult i32 %i.e, 16
  %i.ad = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  %n.vec101 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n105 = icmp eq i64 %n.vec101, %wide.trip.count
  %xtraiter108 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod109.not = icmp eq i64 %xtraiter108, 0
  br label %.preheader.lr.ph

._crit_edge68.split:                              ; preds = %._crit_edge65, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge65
  %indvars.iv81 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next82, %._crit_edge65 ] ; 7 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv81
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv81
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !29 ; 2 uses
  %i.ai = mul nsw i32 %i.ah, %5
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %i.af, i64 %i.aj
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv81
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !64 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv81
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !29 ; 3 uses
  %i.ap = mul i32 %i.ao, %5
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  %i.ar = getelementptr i8, ptr %i.am, i64 %i.aq  ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv81
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !64 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv81
  %i.av = load i32, ptr %i.au, align 4, !tbaa !29 ; 3 uses
  %i.aw = mul i32 %i.av, %5
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr i8, ptr %i.at, i64 %i.ax  ; 2 uses
  %i.az = sdiv i32 %i.av, 2
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %i.bb = sdiv i32 %i.ah, 2
  %i.bc = sext i32 %i.bb to i64
  %i.bd = sdiv i32 %i.ao, 2
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.am, i64 %i.v
  %i.bf = mul nsw i64 %i.z, %i.be
  %i.bg = getelementptr i8, ptr %scevgep, i64 %i.bf
  %scevgep95 = getelementptr i8, ptr %i.bg, i64 %i.aq
  %scevgep96 = getelementptr i8, ptr %i.at, i64 %i.v
  %i.bh = mul nsw i64 %i.aa, %i.ba
  %i.bi = getelementptr i8, ptr %scevgep96, i64 %i.bh
  %scevgep97 = getelementptr i8, ptr %i.bi, i64 %i.ax
  %bound0 = icmp ult ptr %i.ay, %scevgep95
  %bound1 = icmp ult ptr %i.ar, %scevgep97
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.av, -1
  %i.bj = or i1 %found.conflict, %stride.check
  %stride.check98 = icmp slt i32 %i.ao, -1
  %i.bk = or i1 %i.bj, %stride.check98
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.05164 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.cf, %._crit_edge ] ; 2 uses
  %.05262 = phi ptr [ %i.ay, %.preheader.lr.ph ], [ %i.cc, %._crit_edge ] ; 13 uses
  %.05360 = phi ptr [ %i.ar, %.preheader.lr.ph ], [ %i.ce, %._crit_edge ] ; 13 uses
  %.05458 = phi ptr [ %i.ak, %.preheader.lr.ph ], [ %i.cd, %._crit_edge ] ; 6 uses
  %i.bl = add nsw i32 %.05164, %5
  %.not = icmp sgt i32 %i.bl, %i.l
  %.not.fr = freeze i1 %.not
  br i1 %.not.fr, label %iter.check, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.preheader
  br i1 %i.ac, label %.lr.ph.split.epil.preheader, label %.lr.ph.split

iter.check:                                       ; preds = %.preheader
  %brmerge110 = select i1 %min.iters.check, i1 true, i1 %i.bk
  br i1 %brmerge110, label %.lr.ph.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check99, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %.05360, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load = load <8 x i16>, ptr %i.bm, align 2, !tbaa !59, !alias.scope !422
  %wide.load100 = load <8 x i16>, ptr %i.bn, align 2, !tbaa !59, !alias.scope !422
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %.05262, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <8 x i16> %wide.load, ptr %i.bo, align 2, !tbaa !59, !alias.scope !423, !noalias !422
  store <8 x i16> %wide.load100, ptr %i.bp, align 2, !tbaa !59, !alias.scope !423, !noalias !422
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !414

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index102 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next104, %vec.epilog.vector.body ] ; 3 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %.05360, i64 %index102
  %wide.load103 = load <4 x i16>, ptr %i.br, align 2, !tbaa !59, !alias.scope !422
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.05262, i64 %index102
  store <4 x i16> %wide.load103, ptr %i.bs, align 2, !tbaa !59, !alias.scope !423, !noalias !422
  %index.next104 = add nuw i64 %index102, 4       ; 2 uses
  %i.bt = icmp eq i64 %index.next104, %n.vec101
  br i1 %i.bt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !415

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n105, label %._crit_edge, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv75.ph = phi i64 [ 0, %iter.check ], [ %n.vec101, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod109.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us.prol
  %indvars.iv75.prol = phi i64 [ %indvars.iv.next76.prol, %.lr.ph.split.us.prol ], [ %indvars.iv75.ph, %.lr.ph.split.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader ]
  %.in.in.us.prol = getelementptr inbounds nuw [2 x i8], ptr %.05360, i64 %indvars.iv75.prol
  %.in.us.prol = load i16, ptr %.in.in.us.prol, align 2, !tbaa !59
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.05262, i64 %indvars.iv75.prol
  store i16 %.in.us.prol, ptr %i.bu, align 2, !tbaa !59
  %indvars.iv.next76.prol = add nuw nsw i64 %indvars.iv75.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter108
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !416

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader
  %indvars.iv75.unr = phi i64 [ %indvars.iv75.ph, %.lr.ph.split.us.preheader ], [ %indvars.iv.next76.prol, %.lr.ph.split.us.prol ]
  %i.bv = sub nsw i64 %indvars.iv75.ph, %wide.trip.count
  %i.bw = icmp ugt i64 %i.bv, -4
  br i1 %i.bw, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %indvars.iv75 = phi i64 [ %indvars.iv.next76.3, %.lr.ph.split.us ], [ %indvars.iv75.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %.in.in.us = getelementptr inbounds nuw [2 x i8], ptr %.05360, i64 %indvars.iv75
  %.in.us = load i16, ptr %.in.in.us, align 2, !tbaa !59
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %.05262, i64 %indvars.iv75
  store i16 %.in.us, ptr %i.bx, align 2, !tbaa !59
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %.in.in.us.1 = getelementptr inbounds nuw [2 x i8], ptr %.05360, i64 %indvars.iv.next76
  %.in.us.1 = load i16, ptr %.in.in.us.1, align 2, !tbaa !59
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %.05262, i64 %indvars.iv.next76
  store i16 %.in.us.1, ptr %i.by, align 2, !tbaa !59
  %indvars.iv.next76.1 = add nuw nsw i64 %indvars.iv75, 2 ; 2 uses
  %.in.in.us.2 = getelementptr inbounds nuw [2 x i8], ptr %.05360, i64 %indvars.iv.next76.1
  %.in.us.2 = load i16, ptr %.in.in.us.2, align 2, !tbaa !59
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %.05262, i64 %indvars.iv.next76.1
  store i16 %.in.us.2, ptr %i.bz, align 2, !tbaa !59
  %indvars.iv.next76.2 = add nuw nsw i64 %indvars.iv75, 3 ; 2 uses
  %.in.in.us.3 = getelementptr inbounds nuw [2 x i8], ptr %.05360, i64 %indvars.iv.next76.2
  %.in.us.3 = load i16, ptr %.in.in.us.3, align 2, !tbaa !59
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %.05262, i64 %indvars.iv.next76.2
  store i16 %.in.us.3, ptr %i.ca, align 2, !tbaa !59
  %indvars.iv.next76.3 = add nuw nsw i64 %indvars.iv75, 4 ; 2 uses
  %exitcond79.not.3 = icmp eq i64 %indvars.iv.next76.3, %wide.trip.count78
  br i1 %exitcond79.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !417

._crit_edge65:                                    ; preds = %._crit_edge
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count84
  br i1 %exitcond85.not, label %._crit_edge68.split, label %.preheader.lr.ph, !llvm.loop !418

._crit_edge.loopexit106.unr-lcssa:                ; preds = %.lr.ph.split
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit106.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit106.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod107)
  br label %.lr.ph.split.epil

.lr.ph.split.epil:                                ; preds = %.lr.ph.split.epil, %.lr.ph.split.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.split.epil ], [ %indvars.iv.epil.init, %.lr.ph.split.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.epil ], [ 0, %.lr.ph.split.epil.preheader ]
  %.not56.epil = icmp sgt i64 %indvars.iv.epil, %i.u
  %spec.select.epil = select i1 %.not56.epil, ptr %.05360, ptr %.05458
  %.in.in.epil = getelementptr inbounds nuw [2 x i8], ptr %spec.select.epil, i64 %indvars.iv.epil
  %.in.epil = load i16, ptr %.in.in.epil, align 2, !tbaa !59
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %.05262, i64 %indvars.iv.epil
  store i16 %.in.epil, ptr %i.cb, align 2, !tbaa !59
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.epil, !llvm.loop !419

._crit_edge:                                      ; preds = %._crit_edge.loopexit106.unr-lcssa, %.lr.ph.split.epil, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block, %vec.epilog.middle.block
  %i.cc = getelementptr inbounds [2 x i8], ptr %.05262, i64 %i.ba
  %i.cd = getelementptr inbounds [2 x i8], ptr %.05458, i64 %i.bc
  %i.ce = getelementptr inbounds [2 x i8], ptr %.05360, i64 %i.be
  %i.cf = add nuw nsw i32 %.05164, 1              ; 2 uses
  %exitcond80.not = icmp eq i32 %i.cf, %i.c
  br i1 %exitcond80.not, label %._crit_edge65, label %.preheader, !llvm.loop !420

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.split ], [ 0, %.lr.ph.split.preheader ] ; 8 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.split ], [ 0, %.lr.ph.split.preheader ]
  %.not56 = icmp sgt i64 %indvars.iv, %i.u
  %spec.select = select i1 %.not56, ptr %.05360, ptr %.05458
  %.in.in = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %indvars.iv
  %.in = load i16, ptr %.in.in, align 2, !tbaa !59
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %.05262, i64 %indvars.iv
  store i16 %.in, ptr %i.cg, align 2, !tbaa !59
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %.not56.1.not = icmp slt i64 %indvars.iv, %i.u
  %spec.select.1 = select i1 %.not56.1.not, ptr %.05458, ptr %.05360
  %.in.in.1 = getelementptr inbounds nuw [2 x i8], ptr %spec.select.1, i64 %indvars.iv.next
  %.in.1 = load i16, ptr %.in.in.1, align 2, !tbaa !59
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %.05262, i64 %indvars.iv.next
  store i16 %.in.1, ptr %i.ch, align 2, !tbaa !59
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 3 uses
  %.not56.2 = icmp sgt i64 %indvars.iv.next.1, %i.u
  %spec.select.2 = select i1 %.not56.2, ptr %.05360, ptr %.05458
  %.in.in.2 = getelementptr inbounds nuw [2 x i8], ptr %spec.select.2, i64 %indvars.iv.next.1
  %.in.2 = load i16, ptr %.in.in.2, align 2, !tbaa !59
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %.05262, i64 %indvars.iv.next.1
  store i16 %.in.2, ptr %i.ci, align 2, !tbaa !59
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 3 uses
  %.not56.3 = icmp sgt i64 %indvars.iv.next.2, %i.u
  %spec.select.3 = select i1 %.not56.3, ptr %.05360, ptr %.05458
  %.in.in.3 = getelementptr inbounds nuw [2 x i8], ptr %spec.select.3, i64 %indvars.iv.next.2
  %.in.3 = load i16, ptr %.in.in.3, align 2, !tbaa !59
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %.05262, i64 %indvars.iv.next.2
  store i16 %.in.3, ptr %i.cj, align 2, !tbaa !59
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit106.unr-lcssa, label %.lr.ph.split, !llvm.loop !421
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @wipetr8_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sub i32 %6, %5                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 5 uses
  %8 = uitofp nneg i32 %i.e to float
  %i.f = fsub nsz float 1.000000e+00, %4
  %i.g = fmul nsz float %i.f, %8
  %i.h = fptosi float %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.j = load i32, ptr %i.i, align 4, !tbaa !70
  %i.k = sitofp nsz i32 %i.j to float
  %i.l = fmul nsz float %4, %i.k
  %i.m = fptosi float %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !56
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge67.split

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.t = icmp slt i32 %i.c, 1
  %i.u = icmp slt i32 %i.e, 1
  %brmerge = select i1 %i.t, i1 true, i1 %i.u
  br i1 %brmerge, label %._crit_edge67.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %i.v = sext i32 %i.h to i64                     ; 5 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 10 uses
  %i.w = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %min.iters.check = icmp ult i32 %i.e, 4
  %min.iters.check91 = icmp ult i32 %i.e, 32
  %i.x = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  %n.vec93 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n97 = icmp eq i64 %n.vec93, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %xtraiter99 = and i64 %wide.trip.count, 3       ; 3 uses
  %i.y = icmp ult i64 %i.w, 3
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod100.not = icmp eq i64 %xtraiter99, 0
  %lcmp.mod101 = icmp ne i64 %xtraiter99, 0
  br label %.preheader.lr.ph

._crit_edge67.split:                              ; preds = %._crit_edge64, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge64
  %indvars.iv80 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next81, %._crit_edge64 ] ; 7 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv80 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !29
  %i.ad = mul nsw i32 %i.ac, %5
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv80 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !29
  %i.ak = mul nsw i32 %i.aj, %5
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv80
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv80 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !29
  %i.ar = mul nsw i32 %i.aq, %5
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %i.ao, i64 %i.as
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.05163 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.bz, %._crit_edge ] ; 2 uses
  %.05261 = phi ptr [ %i.at, %.preheader.lr.ph ], [ %i.bs, %._crit_edge ] ; 14 uses
  %.05359 = phi ptr [ %i.am, %.preheader.lr.ph ], [ %i.by, %._crit_edge ] ; 14 uses
  %.05457 = phi ptr [ %i.af, %.preheader.lr.ph ], [ %i.bv, %._crit_edge ] ; 6 uses
  %i.au = add nsw i32 %.05163, %5
  %.not = icmp sle i32 %i.au, %i.m
  %.not.fr = freeze i1 %.not
  br i1 %.not.fr, label %.lr.ph.split.preheader, label %iter.check

.lr.ph.split.preheader:                           ; preds = %.preheader
  br i1 %i.y, label %.lr.ph.split.epil.preheader, label %.lr.ph.split

iter.check:                                       ; preds = %.preheader
  %.0526190 = ptrtoaddr ptr %.05261 to i64
  %.0535989 = ptrtoaddr ptr %.05359 to i64
  %i.av = sub i64 %.0535989, %.0526190
  %diff.check = icmp ugt i64 %i.av, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check91, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.05359, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load = load <16 x i8>, ptr %i.aw, align 1, !tbaa !65
  %wide.load92 = load <16 x i8>, ptr %i.ax, align 1, !tbaa !65
  %i.ay = getelementptr inbounds nuw i8, ptr %.05261, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <16 x i8> %wide.load, ptr %i.ay, align 1, !tbaa !65
  store <16 x i8> %wide.load92, ptr %i.az, align 1, !tbaa !65
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !424

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.preheader, label %vec.epilog.ph, !prof !71

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index94 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next96, %vec.epilog.vector.body ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.05359, i64 %index94
  %wide.load95 = load <4 x i8>, ptr %i.bb, align 1, !tbaa !65
  %i.bc = getelementptr inbounds nuw i8, ptr %.05261, i64 %index94
  store <4 x i8> %wide.load95, ptr %i.bc, align 1, !tbaa !65
  %index.next96 = add nuw i64 %index94, 4         ; 2 uses
  %i.bd = icmp eq i64 %index.next96, %n.vec93
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !425

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n97, label %._crit_edge, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec93, %vec.epilog.middle.block ] ; 3 uses
  %i.be = sub nsw i64 %i.w, %indvars.iv.ph
  br i1 %lcmp.mod.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.split.us.prol ], [ %indvars.iv.ph, %.lr.ph.split.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader ]
  %.in.in.us.prol = getelementptr inbounds nuw i8, ptr %.05359, i64 %indvars.iv.prol
  %.in.us.prol = load i8, ptr %.in.in.us.prol, align 1, !tbaa !65
  %i.bf = getelementptr inbounds nuw i8, ptr %.05261, i64 %indvars.iv.prol
  store i8 %.in.us.prol, ptr %i.bf, align 1, !tbaa !65
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !426

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.split.us.preheader ], [ %indvars.iv.next.prol, %.lr.ph.split.us.prol ]
  %i.bg = icmp ult i64 %i.be, 3
  br i1 %i.bg, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.split.us ], [ %indvars.iv.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %.in.in.us = getelementptr inbounds nuw i8, ptr %.05359, i64 %indvars.iv
  %.in.us = load i8, ptr %.in.in.us, align 1, !tbaa !65
  %i.bh = getelementptr inbounds nuw i8, ptr %.05261, i64 %indvars.iv
  store i8 %.in.us, ptr %i.bh, align 1, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.in.in.us.1 = getelementptr inbounds nuw i8, ptr %.05359, i64 %indvars.iv.next
  %.in.us.1 = load i8, ptr %.in.in.us.1, align 1, !tbaa !65
  %i.bi = getelementptr inbounds nuw i8, ptr %.05261, i64 %indvars.iv.next
  store i8 %.in.us.1, ptr %i.bi, align 1, !tbaa !65
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.in.in.us.2 = getelementptr inbounds nuw i8, ptr %.05359, i64 %indvars.iv.next.1
  %.in.us.2 = load i8, ptr %.in.in.us.2, align 1, !tbaa !65
  %i.bj = getelementptr inbounds nuw i8, ptr %.05261, i64 %indvars.iv.next.1
  store i8 %.in.us.2, ptr %i.bj, align 1, !tbaa !65
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %.in.in.us.3 = getelementptr inbounds nuw i8, ptr %.05359, i64 %indvars.iv.next.2
  %.in.us.3 = load i8, ptr %.in.in.us.3, align 1, !tbaa !65
  %i.bk = getelementptr inbounds nuw i8, ptr %.05261, i64 %indvars.iv.next.2
  store i8 %.in.us.3, ptr %i.bk, align 1, !tbaa !65
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !427

._crit_edge64:                                    ; preds = %._crit_edge
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.bl = load i32, ptr %i.n, align 8, !tbaa !56
  %i.bm = sext i32 %i.bl to i64
  %i.bn = icmp slt i64 %indvars.iv.next81, %i.bm
  br i1 %i.bn, label %.preheader.lr.ph, label %._crit_edge67.split, !llvm.loop !428

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.split
  br i1 %lcmp.mod100.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv74.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next75.3, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod101)
  br label %.lr.ph.split.epil

.lr.ph.split.epil:                                ; preds = %.lr.ph.split.epil, %.lr.ph.split.epil.preheader
  %indvars.iv74.epil = phi i64 [ %indvars.iv.next75.epil, %.lr.ph.split.epil ], [ %indvars.iv74.epil.init, %.lr.ph.split.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.epil ], [ 0, %.lr.ph.split.epil.preheader ]
  %i.bo = icmp sgt i64 %indvars.iv74.epil, %i.v
  %spec.select.epil = select i1 %i.bo, ptr %.05457, ptr %.05359
  %.in.in.epil = getelementptr inbounds nuw i8, ptr %spec.select.epil, i64 %indvars.iv74.epil
  %.in.epil = load i8, ptr %.in.in.epil, align 1, !tbaa !65
  %i.bp = getelementptr inbounds nuw i8, ptr %.05261, i64 %indvars.iv74.epil
  store i8 %.in.epil, ptr %i.bp, align 1, !tbaa !65
  %indvars.iv.next75.epil = add nuw nsw i64 %indvars.iv74.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter99
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.epil, !llvm.loop !429

._crit_edge:                                      ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.epil, %middle.block, %vec.epilog.middle.block
  %i.bq = load i32, ptr %i.ap, align 4, !tbaa !29
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds i8, ptr %.05261, i64 %i.br
  %i.bt = load i32, ptr %i.ab, align 4, !tbaa !29
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %.05457, i64 %i.bu
  %i.bw = load i32, ptr %i.ai, align 4, !tbaa !29
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds i8, ptr %.05359, i64 %i.bx
  %i.bz = add nuw nsw i32 %.05163, 1              ; 2 uses
  %exitcond79.not = icmp eq i32 %i.bz, %i.c
  br i1 %exitcond79.not, label %._crit_edge64, label %.preheader, !llvm.loop !430

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %indvars.iv74 = phi i64 [ %indvars.iv.next75.3, %.lr.ph.split ], [ 0, %.lr.ph.split.preheader ] ; 8 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.split ], [ 0, %.lr.ph.split.preheader ]
  %i.ca = icmp sgt i64 %indvars.iv74, %i.v
  %spec.select = select i1 %i.ca, ptr %.05457, ptr %.05359
  %.in.in = getelementptr inbounds nuw i8, ptr %spec.select, i64 %indvars.iv74
  %.in = load i8, ptr %.in.in, align 1, !tbaa !65
  %i.cb = getelementptr inbounds nuw i8, ptr %.05261, i64 %indvars.iv74
  store i8 %.in, ptr %i.cb, align 1, !tbaa !65
  %indvars.iv.next75 = or disjoint i64 %indvars.iv74, 1 ; 2 uses
  %.not102 = icmp slt i64 %indvars.iv74, %i.v
  %spec.select.1 = select i1 %.not102, ptr %.05359, ptr %.05457
  %.in.in.1 = getelementptr inbounds nuw i8, ptr %spec.select.1, i64 %indvars.iv.next75
  %.in.1 = load i8, ptr %.in.in.1, align 1, !tbaa !65
  %i.cc = getelementptr inbounds nuw i8, ptr %.05261, i64 %indvars.iv.next75
  store i8 %.in.1, ptr %i.cc, align 1, !tbaa !65
  %indvars.iv.next75.1 = or disjoint i64 %indvars.iv74, 2 ; 3 uses
  %i.cd = icmp sgt i64 %indvars.iv.next75.1, %i.v
  %spec.select.2 = select i1 %i.cd, ptr %.05457, ptr %.05359
  %.in.in.2 = getelementptr inbounds nuw i8, ptr %spec.select.2, i64 %indvars.iv.next75.1
  %.in.2 = load i8, ptr %.in.in.2, align 1, !tbaa !65
  %i.ce = getelementptr inbounds nuw i8, ptr %.05261, i64 %indvars.iv.next75.1
  store i8 %.in.2, ptr %i.ce, align 1, !tbaa !65
  %indvars.iv.next75.2 = or disjoint i64 %indvars.iv74, 3 ; 3 uses
  %i.cf = icmp sgt i64 %indvars.iv.next75.2, %i.v
  %spec.select.3 = select i1 %i.cf, ptr %.05457, ptr %.05359
  %.in.in.3 = getelementptr inbounds nuw i8, ptr %spec.select.3, i64 %indvars.iv.next75.2
  %.in.3 = load i8, ptr %.in.in.3, align 1, !tbaa !65
  %i.cg = getelementptr inbounds nuw i8, ptr %.05261, i64 %indvars.iv.next75.2
  store i8 %.in.3, ptr %i.cg, align 1, !tbaa !65
  %indvars.iv.next75.3 = add nuw nsw i64 %indvars.iv74, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split, !llvm.loop !431
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @wipetr16_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sub i32 %6, %5                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 5 uses
  %8 = uitofp nneg i32 %i.e to float
  %i.f = fsub nsz float 1.000000e+00, %4
  %i.g = fmul nsz float %i.f, %8
  %i.h = fptosi float %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.j = load i32, ptr %i.i, align 4, !tbaa !70
  %i.k = sitofp nsz i32 %i.j to float
  %i.l = fmul nsz float %4, %i.k
  %i.m = fptosi float %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !56   ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge67.split

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.t = icmp slt i32 %i.c, 1
  %i.u = icmp slt i32 %i.e, 1
  %brmerge = select i1 %i.t, i1 true, i1 %i.u
  br i1 %brmerge, label %._crit_edge67.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %i.v = sext i32 %i.h to i64                     ; 5 uses
  %wide.trip.count83 = zext nneg i32 %i.o to i64
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 11 uses
  %i.w = shl nuw nsw i64 %wide.trip.count, 1      ; 2 uses
  %i.x = xor i32 %5, -1
  %i.y = add i32 %6, %i.x
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 1
  %i.ab = shl nuw nsw i64 %i.z, 1
  %i.ac = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %min.iters.check = icmp ult i32 %i.e, 4
  %min.iters.check98 = icmp ult i32 %i.e, 16
  %i.ad = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  %n.vec100 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n104 = icmp eq i64 %n.vec100, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %xtraiter106 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.ae = icmp ult i64 %i.ac, 3
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  %lcmp.mod108 = icmp ne i64 %xtraiter106, 0
  br label %.preheader.lr.ph

._crit_edge67.split:                              ; preds = %._crit_edge64, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge64
  %indvars.iv80 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next81, %._crit_edge64 ] ; 7 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv80
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv80
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !29 ; 2 uses
  %i.aj = mul nsw i32 %i.ai, %5
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ag, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv80
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !64 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv80
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !29 ; 3 uses
  %i.aq = mul i32 %i.ap, %5
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr i8, ptr %i.an, i64 %i.ar  ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv80
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !64 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv80
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !29 ; 3 uses
  %i.ax = mul i32 %i.aw, %5
  %i.ay = sext i32 %i.ax to i64                   ; 2 uses
  %i.az = getelementptr i8, ptr %i.au, i64 %i.ay  ; 2 uses
  %i.ba = sdiv i32 %i.aw, 2
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = sdiv i32 %i.ai, 2
  %i.bd = sext i32 %i.bc to i64
  %i.be = sdiv i32 %i.ap, 2
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.an, i64 %i.w
  %i.bg = mul nsw i64 %i.aa, %i.bf
  %i.bh = getelementptr i8, ptr %scevgep, i64 %i.bg
  %scevgep94 = getelementptr i8, ptr %i.bh, i64 %i.ar
  %scevgep95 = getelementptr i8, ptr %i.au, i64 %i.w
  %i.bi = mul nsw i64 %i.ab, %i.bb
  %i.bj = getelementptr i8, ptr %scevgep95, i64 %i.bi
  %scevgep96 = getelementptr i8, ptr %i.bj, i64 %i.ay
  %bound0 = icmp ult ptr %i.az, %scevgep94
  %bound1 = icmp ult ptr %i.as, %scevgep96
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.aw, -1
  %i.bk = or i1 %found.conflict, %stride.check
  %stride.check97 = icmp slt i32 %i.ap, -1
  %i.bl = or i1 %i.bk, %stride.check97
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.05163 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ch, %._crit_edge ] ; 2 uses
  %.05261 = phi ptr [ %i.az, %.preheader.lr.ph ], [ %i.ce, %._crit_edge ] ; 13 uses
  %.05359 = phi ptr [ %i.as, %.preheader.lr.ph ], [ %i.cg, %._crit_edge ] ; 13 uses
  %.05457 = phi ptr [ %i.al, %.preheader.lr.ph ], [ %i.cf, %._crit_edge ] ; 6 uses
  %i.bm = add nsw i32 %.05163, %5
  %.not = icmp sle i32 %i.bm, %i.m
  %.not.fr = freeze i1 %.not
  br i1 %.not.fr, label %.lr.ph.split.preheader, label %iter.check

.lr.ph.split.preheader:                           ; preds = %.preheader
  br i1 %i.ae, label %.lr.ph.split.epil.preheader, label %.lr.ph.split

iter.check:                                       ; preds = %.preheader
  %brmerge110 = select i1 %min.iters.check, i1 true, i1 %i.bl
  br i1 %brmerge110, label %.lr.ph.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check98, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %.05359, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load = load <8 x i16>, ptr %i.bn, align 2, !tbaa !59, !alias.scope !443
  %wide.load99 = load <8 x i16>, ptr %i.bo, align 2, !tbaa !59, !alias.scope !443
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %.05261, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store <8 x i16> %wide.load, ptr %i.bp, align 2, !tbaa !59, !alias.scope !444, !noalias !443
  store <8 x i16> %wide.load99, ptr %i.bq, align 2, !tbaa !59, !alias.scope !444, !noalias !443
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !435

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index101 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next103, %vec.epilog.vector.body ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.05359, i64 %index101
  %wide.load102 = load <4 x i16>, ptr %i.bs, align 2, !tbaa !59, !alias.scope !443
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %.05261, i64 %index101
  store <4 x i16> %wide.load102, ptr %i.bt, align 2, !tbaa !59, !alias.scope !444, !noalias !443
  %index.next103 = add nuw i64 %index101, 4       ; 2 uses
  %i.bu = icmp eq i64 %index.next103, %n.vec100
  br i1 %i.bu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !436

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n104, label %._crit_edge, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec100, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  %i.bv = sub nsw i64 %i.ac, %indvars.iv.ph
  br i1 %lcmp.mod.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.split.us.prol ], [ %indvars.iv.ph, %.lr.ph.split.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader ]
  %.in.in.us.prol = getelementptr inbounds nuw [2 x i8], ptr %.05359, i64 %indvars.iv.prol
  %.in.us.prol = load i16, ptr %.in.in.us.prol, align 2, !tbaa !59
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.05261, i64 %indvars.iv.prol
  store i16 %.in.us.prol, ptr %i.bw, align 2, !tbaa !59
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !437

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.split.us.preheader ], [ %indvars.iv.next.prol, %.lr.ph.split.us.prol ]
  %i.bx = icmp ult i64 %i.bv, 3
  br i1 %i.bx, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.split.us ], [ %indvars.iv.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %.in.in.us = getelementptr inbounds nuw [2 x i8], ptr %.05359, i64 %indvars.iv
  %.in.us = load i16, ptr %.in.in.us, align 2, !tbaa !59
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %.05261, i64 %indvars.iv
  store i16 %.in.us, ptr %i.by, align 2, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.in.in.us.1 = getelementptr inbounds nuw [2 x i8], ptr %.05359, i64 %indvars.iv.next
  %.in.us.1 = load i16, ptr %.in.in.us.1, align 2, !tbaa !59
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %.05261, i64 %indvars.iv.next
  store i16 %.in.us.1, ptr %i.bz, align 2, !tbaa !59
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.in.in.us.2 = getelementptr inbounds nuw [2 x i8], ptr %.05359, i64 %indvars.iv.next.1
  %.in.us.2 = load i16, ptr %.in.in.us.2, align 2, !tbaa !59
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %.05261, i64 %indvars.iv.next.1
  store i16 %.in.us.2, ptr %i.ca, align 2, !tbaa !59
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %.in.in.us.3 = getelementptr inbounds nuw [2 x i8], ptr %.05359, i64 %indvars.iv.next.2
  %.in.us.3 = load i16, ptr %.in.in.us.3, align 2, !tbaa !59
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %.05261, i64 %indvars.iv.next.2
  store i16 %.in.us.3, ptr %i.cb, align 2, !tbaa !59
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !438

._crit_edge64:                                    ; preds = %._crit_edge
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %._crit_edge67.split, label %.preheader.lr.ph, !llvm.loop !439

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.split
  br i1 %lcmp.mod107.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv74.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next75.3, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod108)
  br label %.lr.ph.split.epil

.lr.ph.split.epil:                                ; preds = %.lr.ph.split.epil, %.lr.ph.split.epil.preheader
  %indvars.iv74.epil = phi i64 [ %indvars.iv.next75.epil, %.lr.ph.split.epil ], [ %indvars.iv74.epil.init, %.lr.ph.split.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.epil ], [ 0, %.lr.ph.split.epil.preheader ]
  %i.cc = icmp sgt i64 %indvars.iv74.epil, %i.v
  %spec.select.epil = select i1 %i.cc, ptr %.05457, ptr %.05359
  %.in.in.epil = getelementptr inbounds nuw [2 x i8], ptr %spec.select.epil, i64 %indvars.iv74.epil
  %.in.epil = load i16, ptr %.in.in.epil, align 2, !tbaa !59
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %.05261, i64 %indvars.iv74.epil
  store i16 %.in.epil, ptr %i.cd, align 2, !tbaa !59
  %indvars.iv.next75.epil = add nuw nsw i64 %indvars.iv74.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter106
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.epil, !llvm.loop !440

._crit_edge:                                      ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.epil, %middle.block, %vec.epilog.middle.block
  %i.ce = getelementptr inbounds [2 x i8], ptr %.05261, i64 %i.bb
  %i.cf = getelementptr inbounds [2 x i8], ptr %.05457, i64 %i.bd
  %i.cg = getelementptr inbounds [2 x i8], ptr %.05359, i64 %i.bf
  %i.ch = add nuw nsw i32 %.05163, 1              ; 2 uses
  %exitcond79.not = icmp eq i32 %i.ch, %i.c
  br i1 %exitcond79.not, label %._crit_edge64, label %.preheader, !llvm.loop !441

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %indvars.iv74 = phi i64 [ %indvars.iv.next75.3, %.lr.ph.split ], [ 0, %.lr.ph.split.preheader ] ; 8 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.split ], [ 0, %.lr.ph.split.preheader ]
  %i.ci = icmp sgt i64 %indvars.iv74, %i.v
  %spec.select = select i1 %i.ci, ptr %.05457, ptr %.05359
  %.in.in = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %indvars.iv74
  %.in = load i16, ptr %.in.in, align 2, !tbaa !59
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %.05261, i64 %indvars.iv74
  store i16 %.in, ptr %i.cj, align 2, !tbaa !59
  %indvars.iv.next75 = or disjoint i64 %indvars.iv74, 1 ; 2 uses
  %.not109 = icmp slt i64 %indvars.iv74, %i.v
  %spec.select.1 = select i1 %.not109, ptr %.05359, ptr %.05457
  %.in.in.1 = getelementptr inbounds nuw [2 x i8], ptr %spec.select.1, i64 %indvars.iv.next75
  %.in.1 = load i16, ptr %.in.in.1, align 2, !tbaa !59
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.05261, i64 %indvars.iv.next75
  store i16 %.in.1, ptr %i.ck, align 2, !tbaa !59
  %indvars.iv.next75.1 = or disjoint i64 %indvars.iv74, 2 ; 3 uses
  %i.cl = icmp sgt i64 %indvars.iv.next75.1, %i.v
  %spec.select.2 = select i1 %i.cl, ptr %.05457, ptr %.05359
  %.in.in.2 = getelementptr inbounds nuw [2 x i8], ptr %spec.select.2, i64 %indvars.iv.next75.1
  %.in.2 = load i16, ptr %.in.in.2, align 2, !tbaa !59
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %.05261, i64 %indvars.iv.next75.1
  store i16 %.in.2, ptr %i.cm, align 2, !tbaa !59
  %indvars.iv.next75.2 = or disjoint i64 %indvars.iv74, 3 ; 3 uses
  %i.cn = icmp sgt i64 %indvars.iv.next75.2, %i.v
  %spec.select.3 = select i1 %i.cn, ptr %.05457, ptr %.05359
  %.in.in.3 = getelementptr inbounds nuw [2 x i8], ptr %spec.select.3, i64 %indvars.iv.next75.2
  %.in.3 = load i16, ptr %.in.in.3, align 2, !tbaa !59
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %.05261, i64 %indvars.iv.next75.2
  store i16 %.in.3, ptr %i.co, align 2, !tbaa !59
  %indvars.iv.next75.3 = add nuw nsw i64 %indvars.iv74, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split, !llvm.loop !442
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @wipebl8_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sub i32 %6, %5                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 7 uses
  %8 = uitofp nneg i32 %i.e to float
  %i.f = fmul nsz float %4, %8
  %i.g = fptosi float %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.i = load i32, ptr %i.h, align 4, !tbaa !70
  %i.j = sitofp nsz i32 %i.i to float
  %i.k = fsub nsz float 1.000000e+00, %4
  %i.l = fmul nsz float %i.k, %i.j
  %i.m = fptosi float %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !56
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge67.split

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.t = icmp slt i32 %i.c, 1
  %i.u = icmp slt i32 %i.e, 1
  %brmerge = select i1 %i.t, i1 true, i1 %i.u
  br i1 %brmerge, label %._crit_edge67.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %i.v = sext i32 %i.g to i64                     ; 5 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 9 uses
  %wide.trip.count77 = zext nneg i32 %i.e to i64
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.w = add nsw i32 %i.e, -1
  %i.x = icmp ult i32 %i.w, 3
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod99 = icmp ne i64 %xtraiter, 0
  %min.iters.check = icmp ult i32 %i.e, 4
  %min.iters.check91 = icmp ult i32 %i.e, 32
  %i.y = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.y, 0
  %n.vec93 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n97 = icmp eq i64 %n.vec93, %wide.trip.count
  %xtraiter100 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br label %.preheader.lr.ph

._crit_edge67.split:                              ; preds = %._crit_edge64, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge64
  %indvars.iv80 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next81, %._crit_edge64 ] ; 7 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv80 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !29
  %i.ad = mul nsw i32 %i.ac, %5
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv80 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !29
  %i.ak = mul nsw i32 %i.aj, %5
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv80
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv80 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !29
  %i.ar = mul nsw i32 %i.aq, %5
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %i.ao, i64 %i.as
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.05163 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.bz, %._crit_edge ] ; 2 uses
  %.05261 = phi ptr [ %i.at, %.preheader.lr.ph ], [ %i.bs, %._crit_edge ] ; 14 uses
  %.05359 = phi ptr [ %i.am, %.preheader.lr.ph ], [ %i.by, %._crit_edge ] ; 14 uses
  %.05457 = phi ptr [ %i.af, %.preheader.lr.ph ], [ %i.bv, %._crit_edge ] ; 6 uses
  %i.au = add nsw i32 %.05163, %5
  %i.av = icmp sle i32 %i.au, %i.m
  %.fr = freeze i1 %i.av
  br i1 %.fr, label %iter.check, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.preheader
  br i1 %i.x, label %.lr.ph.split.epil.preheader, label %.lr.ph.split

iter.check:                                       ; preds = %.preheader
  %.0526190 = ptrtoaddr ptr %.05261 to i64
  %.0535989 = ptrtoaddr ptr %.05359 to i64
  %i.aw = sub i64 %.0535989, %.0526190
  %diff.check = icmp ugt i64 %i.aw, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check91, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.05359, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load = load <16 x i8>, ptr %i.ax, align 1, !tbaa !65
  %wide.load92 = load <16 x i8>, ptr %i.ay, align 1, !tbaa !65
  %i.az = getelementptr inbounds nuw i8, ptr %.05261, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <16 x i8> %wide.load, ptr %i.az, align 1, !tbaa !65
  store <16 x i8> %wide.load92, ptr %i.ba, align 1, !tbaa !65
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !445

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.preheader, label %vec.epilog.ph, !prof !71

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index94 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next96, %vec.epilog.vector.body ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.05359, i64 %index94
  %wide.load95 = load <4 x i8>, ptr %i.bc, align 1, !tbaa !65
  %i.bd = getelementptr inbounds nuw i8, ptr %.05261, i64 %index94
  store <4 x i8> %wide.load95, ptr %i.bd, align 1, !tbaa !65
  %index.next96 = add nuw i64 %index94, 4         ; 2 uses
  %i.be = icmp eq i64 %index.next96, %n.vec93
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !446

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n97, label %._crit_edge, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv74.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec93, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod101.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us.prol
  %indvars.iv74.prol = phi i64 [ %indvars.iv.next75.prol, %.lr.ph.split.us.prol ], [ %indvars.iv74.ph, %.lr.ph.split.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader ]
  %.in.in.us.prol = getelementptr inbounds nuw i8, ptr %.05359, i64 %indvars.iv74.prol
  %.in.us.prol = load i8, ptr %.in.in.us.prol, align 1, !tbaa !65
  %i.bf = getelementptr inbounds nuw i8, ptr %.05261, i64 %indvars.iv74.prol
  store i8 %.in.us.prol, ptr %i.bf, align 1, !tbaa !65
  %indvars.iv.next75.prol = add nuw nsw i64 %indvars.iv74.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter100
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !447

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader
  %indvars.iv74.unr = phi i64 [ %indvars.iv74.ph, %.lr.ph.split.us.preheader ], [ %indvars.iv.next75.prol, %.lr.ph.split.us.prol ]
  %i.bg = sub nsw i64 %indvars.iv74.ph, %wide.trip.count
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %indvars.iv74 = phi i64 [ %indvars.iv.next75.3, %.lr.ph.split.us ], [ %indvars.iv74.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %.in.in.us = getelementptr inbounds nuw i8, ptr %.05359, i64 %indvars.iv74
  %.in.us = load i8, ptr %.in.in.us, align 1, !tbaa !65
  %i.bi = getelementptr inbounds nuw i8, ptr %.05261, i64 %indvars.iv74
  store i8 %.in.us, ptr %i.bi, align 1, !tbaa !65
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %.in.in.us.1 = getelementptr inbounds nuw i8, ptr %.05359, i64 %indvars.iv.next75
  %.in.us.1 = load i8, ptr %.in.in.us.1, align 1, !tbaa !65
  %i.bj = getelementptr inbounds nuw i8, ptr %.05261, i64 %indvars.iv.next75
  store i8 %.in.us.1, ptr %i.bj, align 1, !tbaa !65
  %indvars.iv.next75.1 = add nuw nsw i64 %indvars.iv74, 2 ; 2 uses
  %.in.in.us.2 = getelementptr inbounds nuw i8, ptr %.05359, i64 %indvars.iv.next75.1
  %.in.us.2 = load i8, ptr %.in.in.us.2, align 1, !tbaa !65
  %i.bk = getelementptr inbounds nuw i8, ptr %.05261, i64 %indvars.iv.next75.1
  store i8 %.in.us.2, ptr %i.bk, align 1, !tbaa !65
  %indvars.iv.next75.2 = add nuw nsw i64 %indvars.iv74, 3 ; 2 uses
  %.in.in.us.3 = getelementptr inbounds nuw i8, ptr %.05359, i64 %indvars.iv.next75.2
  %.in.us.3 = load i8, ptr %.in.in.us.3, align 1, !tbaa !65
  %i.bl = getelementptr inbounds nuw i8, ptr %.05261, i64 %indvars.iv.next75.2
  store i8 %.in.us.3, ptr %i.bl, align 1, !tbaa !65
  %indvars.iv.next75.3 = add nuw nsw i64 %indvars.iv74, 4 ; 2 uses
  %exitcond78.not.3 = icmp eq i64 %indvars.iv.next75.3, %wide.trip.count77
  br i1 %exitcond78.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !448

._crit_edge64:                                    ; preds = %._crit_edge
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.bm = load i32, ptr %i.n, align 8, !tbaa !56
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %indvars.iv.next81, %i.bn
  br i1 %i.bo, label %.preheader.lr.ph, label %._crit_edge67.split, !llvm.loop !449

._crit_edge.loopexit98.unr-lcssa:                 ; preds = %.lr.ph.split
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit98.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit98.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod99)
  br label %.lr.ph.split.epil

.lr.ph.split.epil:                                ; preds = %.lr.ph.split.epil, %.lr.ph.split.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.split.epil ], [ %indvars.iv.epil.init, %.lr.ph.split.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.epil ], [ 0, %.lr.ph.split.epil.preheader ]
  %.not.epil = icmp sgt i64 %indvars.iv.epil, %i.v
  %spec.select.epil = select i1 %.not.epil, ptr %.05359, ptr %.05457
  %.in.in.epil = getelementptr inbounds nuw i8, ptr %spec.select.epil, i64 %indvars.iv.epil
  %.in.epil = load i8, ptr %.in.in.epil, align 1, !tbaa !65
  %i.bp = getelementptr inbounds nuw i8, ptr %.05261, i64 %indvars.iv.epil
  store i8 %.in.epil, ptr %i.bp, align 1, !tbaa !65
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.epil, !llvm.loop !450

._crit_edge:                                      ; preds = %._crit_edge.loopexit98.unr-lcssa, %.lr.ph.split.epil, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block, %vec.epilog.middle.block
  %i.bq = load i32, ptr %i.ap, align 4, !tbaa !29
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds i8, ptr %.05261, i64 %i.br
  %i.bt = load i32, ptr %i.ab, align 4, !tbaa !29
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %.05457, i64 %i.bu
  %i.bw = load i32, ptr %i.ai, align 4, !tbaa !29
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds i8, ptr %.05359, i64 %i.bx
  %i.bz = add nuw nsw i32 %.05163, 1              ; 2 uses
  %exitcond79.not = icmp eq i32 %i.bz, %i.c
  br i1 %exitcond79.not, label %._crit_edge64, label %.preheader, !llvm.loop !451

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.split ], [ 0, %.lr.ph.split.preheader ] ; 8 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.split ], [ 0, %.lr.ph.split.preheader ]
  %.not = icmp sgt i64 %indvars.iv, %i.v
  %spec.select = select i1 %.not, ptr %.05359, ptr %.05457
  %.in.in = getelementptr inbounds nuw i8, ptr %spec.select, i64 %indvars.iv
  %.in = load i8, ptr %.in.in, align 1, !tbaa !65
  %i.ca = getelementptr inbounds nuw i8, ptr %.05261, i64 %indvars.iv
  store i8 %.in, ptr %i.ca, align 1, !tbaa !65
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %.not.1.not = icmp slt i64 %indvars.iv, %i.v
  %spec.select.1 = select i1 %.not.1.not, ptr %.05457, ptr %.05359
  %.in.in.1 = getelementptr inbounds nuw i8, ptr %spec.select.1, i64 %indvars.iv.next
  %.in.1 = load i8, ptr %.in.in.1, align 1, !tbaa !65
  %i.cb = getelementptr inbounds nuw i8, ptr %.05261, i64 %indvars.iv.next
  store i8 %.in.1, ptr %i.cb, align 1, !tbaa !65
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 3 uses
  %.not.2 = icmp sgt i64 %indvars.iv.next.1, %i.v
  %spec.select.2 = select i1 %.not.2, ptr %.05359, ptr %.05457
  %.in.in.2 = getelementptr inbounds nuw i8, ptr %spec.select.2, i64 %indvars.iv.next.1
  %.in.2 = load i8, ptr %.in.in.2, align 1, !tbaa !65
  %i.cc = getelementptr inbounds nuw i8, ptr %.05261, i64 %indvars.iv.next.1
  store i8 %.in.2, ptr %i.cc, align 1, !tbaa !65
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 3 uses
  %.not.3 = icmp sgt i64 %indvars.iv.next.2, %i.v
  %spec.select.3 = select i1 %.not.3, ptr %.05359, ptr %.05457
  %.in.in.3 = getelementptr inbounds nuw i8, ptr %spec.select.3, i64 %indvars.iv.next.2
  %.in.3 = load i8, ptr %.in.in.3, align 1, !tbaa !65
  %i.cd = getelementptr inbounds nuw i8, ptr %.05261, i64 %indvars.iv.next.2
  store i8 %.in.3, ptr %i.cd, align 1, !tbaa !65
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit98.unr-lcssa, label %.lr.ph.split, !llvm.loop !452
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @wipebl16_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sub i32 %6, %5                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 7 uses
  %8 = uitofp nneg i32 %i.e to float
  %i.f = fmul nsz float %4, %8
  %i.g = fptosi float %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.i = load i32, ptr %i.h, align 4, !tbaa !70
  %i.j = sitofp nsz i32 %i.i to float
  %i.k = fsub nsz float 1.000000e+00, %4
  %i.l = fmul nsz float %i.k, %i.j
  %i.m = fptosi float %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !56   ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge67.split

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.t = icmp slt i32 %i.c, 1
  %i.u = icmp slt i32 %i.e, 1
  %brmerge = select i1 %i.t, i1 true, i1 %i.u
  br i1 %brmerge, label %._crit_edge67.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %i.v = sext i32 %i.g to i64                     ; 5 uses
  %wide.trip.count83 = zext nneg i32 %i.o to i64
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 10 uses
  %wide.trip.count77 = zext nneg i32 %i.e to i64
  %i.w = shl nuw nsw i64 %wide.trip.count, 1      ; 2 uses
  %i.x = xor i32 %5, -1
  %i.y = add i32 %6, %i.x
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 1
  %i.ab = shl nuw nsw i64 %i.z, 1
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ac = add nsw i32 %i.e, -1
  %i.ad = icmp ult i32 %i.ac, 3
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod106 = icmp ne i64 %xtraiter, 0
  %min.iters.check = icmp ult i32 %i.e, 4
  %min.iters.check98 = icmp ult i32 %i.e, 16
  %i.ae = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  %n.vec100 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n104 = icmp eq i64 %n.vec100, %wide.trip.count
  %xtraiter107 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod108.not = icmp eq i64 %xtraiter107, 0
  br label %.preheader.lr.ph

._crit_edge67.split:                              ; preds = %._crit_edge64, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge64
  %indvars.iv80 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next81, %._crit_edge64 ] ; 7 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv80
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv80
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !29 ; 2 uses
  %i.aj = mul nsw i32 %i.ai, %5
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ag, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv80
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !64 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv80
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !29 ; 3 uses
  %i.aq = mul i32 %i.ap, %5
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr i8, ptr %i.an, i64 %i.ar  ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv80
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !64 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv80
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !29 ; 3 uses
  %i.ax = mul i32 %i.aw, %5
  %i.ay = sext i32 %i.ax to i64                   ; 2 uses
  %i.az = getelementptr i8, ptr %i.au, i64 %i.ay  ; 2 uses
  %i.ba = sdiv i32 %i.aw, 2
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = sdiv i32 %i.ai, 2
  %i.bd = sext i32 %i.bc to i64
  %i.be = sdiv i32 %i.ap, 2
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.an, i64 %i.w
  %i.bg = mul nsw i64 %i.aa, %i.bf
  %i.bh = getelementptr i8, ptr %scevgep, i64 %i.bg
  %scevgep94 = getelementptr i8, ptr %i.bh, i64 %i.ar
  %scevgep95 = getelementptr i8, ptr %i.au, i64 %i.w
  %i.bi = mul nsw i64 %i.ab, %i.bb
  %i.bj = getelementptr i8, ptr %scevgep95, i64 %i.bi
  %scevgep96 = getelementptr i8, ptr %i.bj, i64 %i.ay
  %bound0 = icmp ult ptr %i.az, %scevgep94
  %bound1 = icmp ult ptr %i.as, %scevgep96
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.aw, -1
  %i.bk = or i1 %found.conflict, %stride.check
  %stride.check97 = icmp slt i32 %i.ap, -1
  %i.bl = or i1 %i.bk, %stride.check97
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.05163 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ch, %._crit_edge ] ; 2 uses
  %.05261 = phi ptr [ %i.az, %.preheader.lr.ph ], [ %i.ce, %._crit_edge ] ; 13 uses
  %.05359 = phi ptr [ %i.as, %.preheader.lr.ph ], [ %i.cg, %._crit_edge ] ; 13 uses
  %.05457 = phi ptr [ %i.al, %.preheader.lr.ph ], [ %i.cf, %._crit_edge ] ; 6 uses
  %i.bm = add nsw i32 %.05163, %5
  %i.bn = icmp sle i32 %i.bm, %i.m
  %.fr = freeze i1 %i.bn
  br i1 %.fr, label %iter.check, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.preheader
  br i1 %i.ad, label %.lr.ph.split.epil.preheader, label %.lr.ph.split

iter.check:                                       ; preds = %.preheader
  %brmerge109 = select i1 %min.iters.check, i1 true, i1 %i.bl
  br i1 %brmerge109, label %.lr.ph.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check98, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %.05359, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load = load <8 x i16>, ptr %i.bo, align 2, !tbaa !59, !alias.scope !464
  %wide.load99 = load <8 x i16>, ptr %i.bp, align 2, !tbaa !59, !alias.scope !464
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %.05261, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <8 x i16> %wide.load, ptr %i.bq, align 2, !tbaa !59, !alias.scope !465, !noalias !464
  store <8 x i16> %wide.load99, ptr %i.br, align 2, !tbaa !59, !alias.scope !465, !noalias !464
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !456

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index101 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next103, %vec.epilog.vector.body ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %.05359, i64 %index101
  %wide.load102 = load <4 x i16>, ptr %i.bt, align 2, !tbaa !59, !alias.scope !464
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.05261, i64 %index101
  store <4 x i16> %wide.load102, ptr %i.bu, align 2, !tbaa !59, !alias.scope !465, !noalias !464
  %index.next103 = add nuw i64 %index101, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next103, %n.vec100
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !457

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n104, label %._crit_edge, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv74.ph = phi i64 [ 0, %iter.check ], [ %n.vec100, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod108.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us.prol
  %indvars.iv74.prol = phi i64 [ %indvars.iv.next75.prol, %.lr.ph.split.us.prol ], [ %indvars.iv74.ph, %.lr.ph.split.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader ]
  %.in.in.us.prol = getelementptr inbounds nuw [2 x i8], ptr %.05359, i64 %indvars.iv74.prol
  %.in.us.prol = load i16, ptr %.in.in.us.prol, align 2, !tbaa !59
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.05261, i64 %indvars.iv74.prol
  store i16 %.in.us.prol, ptr %i.bw, align 2, !tbaa !59
  %indvars.iv.next75.prol = add nuw nsw i64 %indvars.iv74.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter107
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !458

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader
  %indvars.iv74.unr = phi i64 [ %indvars.iv74.ph, %.lr.ph.split.us.preheader ], [ %indvars.iv.next75.prol, %.lr.ph.split.us.prol ]
  %i.bx = sub nsw i64 %indvars.iv74.ph, %wide.trip.count
  %i.by = icmp ugt i64 %i.bx, -4
  br i1 %i.by, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %indvars.iv74 = phi i64 [ %indvars.iv.next75.3, %.lr.ph.split.us ], [ %indvars.iv74.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %.in.in.us = getelementptr inbounds nuw [2 x i8], ptr %.05359, i64 %indvars.iv74
  %.in.us = load i16, ptr %.in.in.us, align 2, !tbaa !59
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %.05261, i64 %indvars.iv74
  store i16 %.in.us, ptr %i.bz, align 2, !tbaa !59
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %.in.in.us.1 = getelementptr inbounds nuw [2 x i8], ptr %.05359, i64 %indvars.iv.next75
  %.in.us.1 = load i16, ptr %.in.in.us.1, align 2, !tbaa !59
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %.05261, i64 %indvars.iv.next75
  store i16 %.in.us.1, ptr %i.ca, align 2, !tbaa !59
  %indvars.iv.next75.1 = add nuw nsw i64 %indvars.iv74, 2 ; 2 uses
  %.in.in.us.2 = getelementptr inbounds nuw [2 x i8], ptr %.05359, i64 %indvars.iv.next75.1
  %.in.us.2 = load i16, ptr %.in.in.us.2, align 2, !tbaa !59
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %.05261, i64 %indvars.iv.next75.1
  store i16 %.in.us.2, ptr %i.cb, align 2, !tbaa !59
  %indvars.iv.next75.2 = add nuw nsw i64 %indvars.iv74, 3 ; 2 uses
  %.in.in.us.3 = getelementptr inbounds nuw [2 x i8], ptr %.05359, i64 %indvars.iv.next75.2
  %.in.us.3 = load i16, ptr %.in.in.us.3, align 2, !tbaa !59
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %.05261, i64 %indvars.iv.next75.2
  store i16 %.in.us.3, ptr %i.cc, align 2, !tbaa !59
  %indvars.iv.next75.3 = add nuw nsw i64 %indvars.iv74, 4 ; 2 uses
  %exitcond78.not.3 = icmp eq i64 %indvars.iv.next75.3, %wide.trip.count77
  br i1 %exitcond78.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !459

._crit_edge64:                                    ; preds = %._crit_edge
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %._crit_edge67.split, label %.preheader.lr.ph, !llvm.loop !460

._crit_edge.loopexit105.unr-lcssa:                ; preds = %.lr.ph.split
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit105.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit105.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod106)
  br label %.lr.ph.split.epil

.lr.ph.split.epil:                                ; preds = %.lr.ph.split.epil, %.lr.ph.split.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.split.epil ], [ %indvars.iv.epil.init, %.lr.ph.split.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.epil ], [ 0, %.lr.ph.split.epil.preheader ]
  %.not.epil = icmp sgt i64 %indvars.iv.epil, %i.v
  %spec.select.epil = select i1 %.not.epil, ptr %.05359, ptr %.05457
  %.in.in.epil = getelementptr inbounds nuw [2 x i8], ptr %spec.select.epil, i64 %indvars.iv.epil
  %.in.epil = load i16, ptr %.in.in.epil, align 2, !tbaa !59
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %.05261, i64 %indvars.iv.epil
  store i16 %.in.epil, ptr %i.cd, align 2, !tbaa !59
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.epil, !llvm.loop !461

._crit_edge:                                      ; preds = %._crit_edge.loopexit105.unr-lcssa, %.lr.ph.split.epil, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block, %vec.epilog.middle.block
  %i.ce = getelementptr inbounds [2 x i8], ptr %.05261, i64 %i.bb
  %i.cf = getelementptr inbounds [2 x i8], ptr %.05457, i64 %i.bd
  %i.cg = getelementptr inbounds [2 x i8], ptr %.05359, i64 %i.bf
  %i.ch = add nuw nsw i32 %.05163, 1              ; 2 uses
  %exitcond79.not = icmp eq i32 %i.ch, %i.c
  br i1 %exitcond79.not, label %._crit_edge64, label %.preheader, !llvm.loop !462

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.split ], [ 0, %.lr.ph.split.preheader ] ; 8 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.split ], [ 0, %.lr.ph.split.preheader ]
  %.not = icmp sgt i64 %indvars.iv, %i.v
  %spec.select = select i1 %.not, ptr %.05359, ptr %.05457
  %.in.in = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %indvars.iv
  %.in = load i16, ptr %.in.in, align 2, !tbaa !59
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %.05261, i64 %indvars.iv
  store i16 %.in, ptr %i.ci, align 2, !tbaa !59
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %.not.1.not = icmp slt i64 %indvars.iv, %i.v
  %spec.select.1 = select i1 %.not.1.not, ptr %.05457, ptr %.05359
  %.in.in.1 = getelementptr inbounds nuw [2 x i8], ptr %spec.select.1, i64 %indvars.iv.next
  %.in.1 = load i16, ptr %.in.in.1, align 2, !tbaa !59
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %.05261, i64 %indvars.iv.next
  store i16 %.in.1, ptr %i.cj, align 2, !tbaa !59
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 3 uses
  %.not.2 = icmp sgt i64 %indvars.iv.next.1, %i.v
  %spec.select.2 = select i1 %.not.2, ptr %.05359, ptr %.05457
  %.in.in.2 = getelementptr inbounds nuw [2 x i8], ptr %spec.select.2, i64 %indvars.iv.next.1
  %.in.2 = load i16, ptr %.in.in.2, align 2, !tbaa !59
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.05261, i64 %indvars.iv.next.1
  store i16 %.in.2, ptr %i.ck, align 2, !tbaa !59
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 3 uses
  %.not.3 = icmp sgt i64 %indvars.iv.next.2, %i.v
  %spec.select.3 = select i1 %.not.3, ptr %.05359, ptr %.05457
  %.in.in.3 = getelementptr inbounds nuw [2 x i8], ptr %spec.select.3, i64 %indvars.iv.next.2
  %.in.3 = load i16, ptr %.in.in.3, align 2, !tbaa !59
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %.05261, i64 %indvars.iv.next.2
  store i16 %.in.3, ptr %i.cl, align 2, !tbaa !59
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit105.unr-lcssa, label %.lr.ph.split, !llvm.loop !463
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @wipebr8_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sub i32 %6, %5                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.e = load i32, ptr %i.d, align 4, !tbaa !70
  %i.f = sitofp nsz i32 %i.e to float
  %i.g = fsub nsz float 1.000000e+00, %4          ; 2 uses
  %i.h = fmul nsz float %i.g, %i.f
  %i.i = fptosi float %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.k = load i32, ptr %i.j, align 8, !tbaa !61   ; 5 uses
  %8 = uitofp nneg i32 %i.k to float
  %i.l = fmul nsz float %i.g, %8
  %i.m = fptosi float %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !56
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge67.split

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.t = icmp slt i32 %i.c, 1
  %i.u = icmp slt i32 %i.k, 1
  %brmerge = select i1 %i.t, i1 true, i1 %i.u
  br i1 %brmerge, label %._crit_edge67.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %i.v = sext i32 %i.m to i64                     ; 5 uses
  %wide.trip.count = zext nneg i32 %i.k to i64    ; 10 uses
  %i.w = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %min.iters.check = icmp ult i32 %i.k, 4
  %min.iters.check90 = icmp ult i32 %i.k, 32
  %i.x = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  %n.vec92 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n96 = icmp eq i64 %n.vec92, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %xtraiter98 = and i64 %wide.trip.count, 3       ; 3 uses
  %i.y = icmp ult i64 %i.w, 3
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod99.not = icmp eq i64 %xtraiter98, 0
  %lcmp.mod100 = icmp ne i64 %xtraiter98, 0
  br label %.preheader.lr.ph

._crit_edge67.split:                              ; preds = %._crit_edge64, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge64
  %indvars.iv79 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next80, %._crit_edge64 ] ; 7 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv79
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv79 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !29
  %i.ad = mul nsw i32 %i.ac, %5
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv79
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv79 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !29
  %i.ak = mul nsw i32 %i.aj, %5
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv79
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv79 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !29
  %i.ar = mul nsw i32 %i.aq, %5
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %i.ao, i64 %i.as
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.05163 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ca, %._crit_edge ] ; 2 uses
  %.05261 = phi ptr [ %i.at, %.preheader.lr.ph ], [ %i.bt, %._crit_edge ] ; 14 uses
  %.05359 = phi ptr [ %i.am, %.preheader.lr.ph ], [ %i.bz, %._crit_edge ] ; 14 uses
  %.05457 = phi ptr [ %i.af, %.preheader.lr.ph ], [ %i.bw, %._crit_edge ] ; 6 uses
  %i.au = add nsw i32 %.05163, %5
  %i.av = icmp sgt i32 %i.au, %i.i
  %.fr = freeze i1 %i.av
  br i1 %.fr, label %.lr.ph.split.preheader, label %iter.check

.lr.ph.split.preheader:                           ; preds = %.preheader
  br i1 %i.y, label %.lr.ph.split.epil.preheader, label %.lr.ph.split

iter.check:                                       ; preds = %.preheader
  %.0526189 = ptrtoaddr ptr %.05261 to i64
  %.0535988 = ptrtoaddr ptr %.05359 to i64
  %i.aw = sub i64 %.0535988, %.0526189
  %diff.check = icmp ugt i64 %i.aw, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check90, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.05359, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load = load <16 x i8>, ptr %i.ax, align 1, !tbaa !65
  %wide.load91 = load <16 x i8>, ptr %i.ay, align 1, !tbaa !65
  %i.az = getelementptr inbounds nuw i8, ptr %.05261, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <16 x i8> %wide.load, ptr %i.az, align 1, !tbaa !65
  store <16 x i8> %wide.load91, ptr %i.ba, align 1, !tbaa !65
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !466

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.preheader, label %vec.epilog.ph, !prof !71

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index93 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next95, %vec.epilog.vector.body ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.05359, i64 %index93
  %wide.load94 = load <4 x i8>, ptr %i.bc, align 1, !tbaa !65
  %i.bd = getelementptr inbounds nuw i8, ptr %.05261, i64 %index93
  store <4 x i8> %wide.load94, ptr %i.bd, align 1, !tbaa !65
  %index.next95 = add nuw i64 %index93, 4         ; 2 uses
  %i.be = icmp eq i64 %index.next95, %n.vec92
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !467

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n96, label %._crit_edge, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec92, %vec.epilog.middle.block ] ; 3 uses
  %i.bf = sub nsw i64 %i.w, %indvars.iv.ph
  br i1 %lcmp.mod.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.split.us.prol ], [ %indvars.iv.ph, %.lr.ph.split.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader ]
  %.in.in.us.prol = getelementptr inbounds nuw i8, ptr %.05359, i64 %indvars.iv.prol
  %.in.us.prol = load i8, ptr %.in.in.us.prol, align 1, !tbaa !65
  %i.bg = getelementptr inbounds nuw i8, ptr %.05261, i64 %indvars.iv.prol
  store i8 %.in.us.prol, ptr %i.bg, align 1, !tbaa !65
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !468

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.split.us.preheader ], [ %indvars.iv.next.prol, %.lr.ph.split.us.prol ]
  %i.bh = icmp ult i64 %i.bf, 3
  br i1 %i.bh, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.split.us ], [ %indvars.iv.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %.in.in.us = getelementptr inbounds nuw i8, ptr %.05359, i64 %indvars.iv
  %.in.us = load i8, ptr %.in.in.us, align 1, !tbaa !65
  %i.bi = getelementptr inbounds nuw i8, ptr %.05261, i64 %indvars.iv
  store i8 %.in.us, ptr %i.bi, align 1, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.in.in.us.1 = getelementptr inbounds nuw i8, ptr %.05359, i64 %indvars.iv.next
  %.in.us.1 = load i8, ptr %.in.in.us.1, align 1, !tbaa !65
  %i.bj = getelementptr inbounds nuw i8, ptr %.05261, i64 %indvars.iv.next
  store i8 %.in.us.1, ptr %i.bj, align 1, !tbaa !65
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.in.in.us.2 = getelementptr inbounds nuw i8, ptr %.05359, i64 %indvars.iv.next.1
  %.in.us.2 = load i8, ptr %.in.in.us.2, align 1, !tbaa !65
  %i.bk = getelementptr inbounds nuw i8, ptr %.05261, i64 %indvars.iv.next.1
  store i8 %.in.us.2, ptr %i.bk, align 1, !tbaa !65
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %.in.in.us.3 = getelementptr inbounds nuw i8, ptr %.05359, i64 %indvars.iv.next.2
  %.in.us.3 = load i8, ptr %.in.in.us.3, align 1, !tbaa !65
  %i.bl = getelementptr inbounds nuw i8, ptr %.05261, i64 %indvars.iv.next.2
  store i8 %.in.us.3, ptr %i.bl, align 1, !tbaa !65
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !469

._crit_edge64:                                    ; preds = %._crit_edge
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %i.bm = load i32, ptr %i.n, align 8, !tbaa !56
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %indvars.iv.next80, %i.bn
  br i1 %i.bo, label %.preheader.lr.ph, label %._crit_edge67.split, !llvm.loop !470

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.split
  br i1 %lcmp.mod99.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv73.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next74.3, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod100)
  br label %.lr.ph.split.epil

.lr.ph.split.epil:                                ; preds = %.lr.ph.split.epil, %.lr.ph.split.epil.preheader
  %indvars.iv73.epil = phi i64 [ %indvars.iv.next74.epil, %.lr.ph.split.epil ], [ %indvars.iv73.epil.init, %.lr.ph.split.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.epil ], [ 0, %.lr.ph.split.epil.preheader ]
  %i.bp = icmp sgt i64 %indvars.iv73.epil, %i.v
  %spec.select.epil = select i1 %i.bp, ptr %.05457, ptr %.05359
  %.in.in.epil = getelementptr inbounds nuw i8, ptr %spec.select.epil, i64 %indvars.iv73.epil
  %.in.epil = load i8, ptr %.in.in.epil, align 1, !tbaa !65
  %i.bq = getelementptr inbounds nuw i8, ptr %.05261, i64 %indvars.iv73.epil
  store i8 %.in.epil, ptr %i.bq, align 1, !tbaa !65
  %indvars.iv.next74.epil = add nuw nsw i64 %indvars.iv73.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter98
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.epil, !llvm.loop !471

._crit_edge:                                      ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.epil, %middle.block, %vec.epilog.middle.block
  %i.br = load i32, ptr %i.ap, align 4, !tbaa !29
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %.05261, i64 %i.bs
  %i.bu = load i32, ptr %i.ab, align 4, !tbaa !29
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds i8, ptr %.05457, i64 %i.bv
  %i.bx = load i32, ptr %i.ai, align 4, !tbaa !29
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds i8, ptr %.05359, i64 %i.by
  %i.ca = add nuw nsw i32 %.05163, 1              ; 2 uses
  %exitcond78.not = icmp eq i32 %i.ca, %i.c
  br i1 %exitcond78.not, label %._crit_edge64, label %.preheader, !llvm.loop !472

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %indvars.iv73 = phi i64 [ %indvars.iv.next74.3, %.lr.ph.split ], [ 0, %.lr.ph.split.preheader ] ; 8 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.split ], [ 0, %.lr.ph.split.preheader ]
  %i.cb = icmp sgt i64 %indvars.iv73, %i.v
  %spec.select = select i1 %i.cb, ptr %.05457, ptr %.05359
  %.in.in = getelementptr inbounds nuw i8, ptr %spec.select, i64 %indvars.iv73
  %.in = load i8, ptr %.in.in, align 1, !tbaa !65
  %i.cc = getelementptr inbounds nuw i8, ptr %.05261, i64 %indvars.iv73
  store i8 %.in, ptr %i.cc, align 1, !tbaa !65
  %indvars.iv.next74 = or disjoint i64 %indvars.iv73, 1 ; 2 uses
  %.not = icmp slt i64 %indvars.iv73, %i.v
  %spec.select.1 = select i1 %.not, ptr %.05359, ptr %.05457
  %.in.in.1 = getelementptr inbounds nuw i8, ptr %spec.select.1, i64 %indvars.iv.next74
  %.in.1 = load i8, ptr %.in.in.1, align 1, !tbaa !65
  %i.cd = getelementptr inbounds nuw i8, ptr %.05261, i64 %indvars.iv.next74
  store i8 %.in.1, ptr %i.cd, align 1, !tbaa !65
  %indvars.iv.next74.1 = or disjoint i64 %indvars.iv73, 2 ; 3 uses
  %i.ce = icmp sgt i64 %indvars.iv.next74.1, %i.v
  %spec.select.2 = select i1 %i.ce, ptr %.05457, ptr %.05359
  %.in.in.2 = getelementptr inbounds nuw i8, ptr %spec.select.2, i64 %indvars.iv.next74.1
  %.in.2 = load i8, ptr %.in.in.2, align 1, !tbaa !65
  %i.cf = getelementptr inbounds nuw i8, ptr %.05261, i64 %indvars.iv.next74.1
  store i8 %.in.2, ptr %i.cf, align 1, !tbaa !65
  %indvars.iv.next74.2 = or disjoint i64 %indvars.iv73, 3 ; 3 uses
  %i.cg = icmp sgt i64 %indvars.iv.next74.2, %i.v
  %spec.select.3 = select i1 %i.cg, ptr %.05457, ptr %.05359
  %.in.in.3 = getelementptr inbounds nuw i8, ptr %spec.select.3, i64 %indvars.iv.next74.2
  %.in.3 = load i8, ptr %.in.in.3, align 1, !tbaa !65
  %i.ch = getelementptr inbounds nuw i8, ptr %.05261, i64 %indvars.iv.next74.2
  store i8 %.in.3, ptr %i.ch, align 1, !tbaa !65
  %indvars.iv.next74.3 = add nuw nsw i64 %indvars.iv73, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split, !llvm.loop !473
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @wipebr16_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sub i32 %6, %5                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.e = load i32, ptr %i.d, align 4, !tbaa !70
  %i.f = sitofp nsz i32 %i.e to float
  %i.g = fsub nsz float 1.000000e+00, %4          ; 2 uses
  %i.h = fmul nsz float %i.g, %i.f
  %i.i = fptosi float %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.k = load i32, ptr %i.j, align 8, !tbaa !61   ; 5 uses
  %8 = uitofp nneg i32 %i.k to float
  %i.l = fmul nsz float %i.g, %8
  %i.m = fptosi float %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !56   ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge67.split

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.t = icmp slt i32 %i.c, 1
  %i.u = icmp slt i32 %i.k, 1
  %brmerge = select i1 %i.t, i1 true, i1 %i.u
  br i1 %brmerge, label %._crit_edge67.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %i.v = sext i32 %i.m to i64                     ; 5 uses
  %wide.trip.count82 = zext nneg i32 %i.o to i64
  %wide.trip.count = zext nneg i32 %i.k to i64    ; 11 uses
  %i.w = shl nuw nsw i64 %wide.trip.count, 1      ; 2 uses
  %i.x = xor i32 %5, -1
  %i.y = add i32 %6, %i.x
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 1
  %i.ab = shl nuw nsw i64 %i.z, 1
  %i.ac = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %min.iters.check = icmp ult i32 %i.k, 4
  %min.iters.check97 = icmp ult i32 %i.k, 16
  %i.ad = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  %n.vec99 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n103 = icmp eq i64 %n.vec99, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %xtraiter105 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.ae = icmp ult i64 %i.ac, 3
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod106.not = icmp eq i64 %xtraiter105, 0
  %lcmp.mod107 = icmp ne i64 %xtraiter105, 0
  br label %.preheader.lr.ph

._crit_edge67.split:                              ; preds = %._crit_edge64, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge64
  %indvars.iv79 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next80, %._crit_edge64 ] ; 7 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv79
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv79
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !29 ; 2 uses
  %i.aj = mul nsw i32 %i.ai, %5
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ag, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv79
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !64 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv79
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !29 ; 3 uses
  %i.aq = mul i32 %i.ap, %5
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr i8, ptr %i.an, i64 %i.ar  ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv79
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !64 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv79
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !29 ; 3 uses
  %i.ax = mul i32 %i.aw, %5
  %i.ay = sext i32 %i.ax to i64                   ; 2 uses
  %i.az = getelementptr i8, ptr %i.au, i64 %i.ay  ; 2 uses
  %i.ba = sdiv i32 %i.aw, 2
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = sdiv i32 %i.ai, 2
  %i.bd = sext i32 %i.bc to i64
  %i.be = sdiv i32 %i.ap, 2
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.an, i64 %i.w
  %i.bg = mul nsw i64 %i.aa, %i.bf
  %i.bh = getelementptr i8, ptr %scevgep, i64 %i.bg
  %scevgep93 = getelementptr i8, ptr %i.bh, i64 %i.ar
  %scevgep94 = getelementptr i8, ptr %i.au, i64 %i.w
  %i.bi = mul nsw i64 %i.ab, %i.bb
  %i.bj = getelementptr i8, ptr %scevgep94, i64 %i.bi
  %scevgep95 = getelementptr i8, ptr %i.bj, i64 %i.ay
  %bound0 = icmp ult ptr %i.az, %scevgep93
  %bound1 = icmp ult ptr %i.as, %scevgep95
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.aw, -1
  %i.bk = or i1 %found.conflict, %stride.check
  %stride.check96 = icmp slt i32 %i.ap, -1
  %i.bl = or i1 %i.bk, %stride.check96
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.05163 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ci, %._crit_edge ] ; 2 uses
  %.05261 = phi ptr [ %i.az, %.preheader.lr.ph ], [ %i.cf, %._crit_edge ] ; 13 uses
  %.05359 = phi ptr [ %i.as, %.preheader.lr.ph ], [ %i.ch, %._crit_edge ] ; 13 uses
  %.05457 = phi ptr [ %i.al, %.preheader.lr.ph ], [ %i.cg, %._crit_edge ] ; 6 uses
  %i.bm = add nsw i32 %.05163, %5
  %i.bn = icmp sgt i32 %i.bm, %i.i
  %.fr = freeze i1 %i.bn
  br i1 %.fr, label %.lr.ph.split.preheader, label %iter.check

.lr.ph.split.preheader:                           ; preds = %.preheader
  br i1 %i.ae, label %.lr.ph.split.epil.preheader, label %.lr.ph.split

iter.check:                                       ; preds = %.preheader
  %brmerge108 = select i1 %min.iters.check, i1 true, i1 %i.bl
  br i1 %brmerge108, label %.lr.ph.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check97, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %.05359, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load = load <8 x i16>, ptr %i.bo, align 2, !tbaa !59, !alias.scope !485
  %wide.load98 = load <8 x i16>, ptr %i.bp, align 2, !tbaa !59, !alias.scope !485
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %.05261, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <8 x i16> %wide.load, ptr %i.bq, align 2, !tbaa !59, !alias.scope !486, !noalias !485
  store <8 x i16> %wide.load98, ptr %i.br, align 2, !tbaa !59, !alias.scope !486, !noalias !485
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !477

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index100 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next102, %vec.epilog.vector.body ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %.05359, i64 %index100
  %wide.load101 = load <4 x i16>, ptr %i.bt, align 2, !tbaa !59, !alias.scope !485
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.05261, i64 %index100
  store <4 x i16> %wide.load101, ptr %i.bu, align 2, !tbaa !59, !alias.scope !486, !noalias !485
  %index.next102 = add nuw i64 %index100, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next102, %n.vec99
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !478

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n103, label %._crit_edge, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec99, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  %i.bw = sub nsw i64 %i.ac, %indvars.iv.ph
  br i1 %lcmp.mod.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.split.us.prol ], [ %indvars.iv.ph, %.lr.ph.split.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader ]
  %.in.in.us.prol = getelementptr inbounds nuw [2 x i8], ptr %.05359, i64 %indvars.iv.prol
  %.in.us.prol = load i16, ptr %.in.in.us.prol, align 2, !tbaa !59
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %.05261, i64 %indvars.iv.prol
  store i16 %.in.us.prol, ptr %i.bx, align 2, !tbaa !59
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !479

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.split.us.preheader ], [ %indvars.iv.next.prol, %.lr.ph.split.us.prol ]
  %i.by = icmp ult i64 %i.bw, 3
  br i1 %i.by, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.split.us ], [ %indvars.iv.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %.in.in.us = getelementptr inbounds nuw [2 x i8], ptr %.05359, i64 %indvars.iv
  %.in.us = load i16, ptr %.in.in.us, align 2, !tbaa !59
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %.05261, i64 %indvars.iv
  store i16 %.in.us, ptr %i.bz, align 2, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.in.in.us.1 = getelementptr inbounds nuw [2 x i8], ptr %.05359, i64 %indvars.iv.next
  %.in.us.1 = load i16, ptr %.in.in.us.1, align 2, !tbaa !59
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %.05261, i64 %indvars.iv.next
  store i16 %.in.us.1, ptr %i.ca, align 2, !tbaa !59
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.in.in.us.2 = getelementptr inbounds nuw [2 x i8], ptr %.05359, i64 %indvars.iv.next.1
  %.in.us.2 = load i16, ptr %.in.in.us.2, align 2, !tbaa !59
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %.05261, i64 %indvars.iv.next.1
  store i16 %.in.us.2, ptr %i.cb, align 2, !tbaa !59
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %.in.in.us.3 = getelementptr inbounds nuw [2 x i8], ptr %.05359, i64 %indvars.iv.next.2
  %.in.us.3 = load i16, ptr %.in.in.us.3, align 2, !tbaa !59
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %.05261, i64 %indvars.iv.next.2
  store i16 %.in.us.3, ptr %i.cc, align 2, !tbaa !59
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !480

._crit_edge64:                                    ; preds = %._crit_edge
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count82
end_hunk_2
begin_hunk_3_@vdwind8_transition:bb.a
  %exitcond58.not = icmp eq i32 %i.x, %6
  br i1 %exitcond58.not, label %._crit_edge49.split, label %.lr.ph43, !llvm.loop !576

.lr.ph43.split:                                   ; preds = %.lr.ph43, %._crit_edge
  %i.y = phi i32 [ %i.as, %._crit_edge ], [ %i.o, %.lr.ph43 ] ; 2 uses
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %._crit_edge ], [ 0, %.lr.ph43 ] ; 5 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph43.split
  %i.aa = trunc nuw nsw i64 %indvars.iv55 to i32
  %i.ab = uitofp nsz nneg i32 %i.aa to float
  %i.ac = fmul nnan nsz float %i.ab, 1.298980e+01
  %i.ad = tail call nsz float @llvm.sin.f32(float %i.ac)
  %i.ae = fmul nsz float %i.ad, f0x472AEE8C       ; 2 uses
  %i.af = tail call nsz float @llvm.floor.f32(float %i.ae)
  %i.ag = fsub nsz float %i.ae, %i.af
  %i.ah = fmul nsz float %i.ag, 2.000000e-01
  %i.ai = tail call nsz float @llvm.fmuladd.f32(float %i.t, float 8.000000e-01, float %i.ah)
  %i.aj = tail call nsz float @llvm.fmuladd.f32(float %i.l, float 1.200000e+00, float %i.ai)
  %i.ak = fdiv nsz float %i.aj, -2.000000e-01     ; 2 uses
  %i.al = fcmp nsz ogt float %i.ak, 0.000000e+00
  %i.am = select nsz i1 %i.al, float %i.ak, float 0.000000e+00 ; 2 uses
  %i.an = fcmp nsz ogt float %i.am, 1.000000e+00
  %..i.i = select nsz i1 %i.an, float 1.000000e+00, float %i.am ; 3 uses
  %i.ao = fmul nsz float %..i.i, %..i.i
  %i.ap = tail call nsz float @llvm.fmuladd.f32(float %..i.i, float -2.000000e+00, float 3.000000e+00)
  %i.aq = fmul nsz float %i.ao, %i.ap             ; 2 uses
  %i.ar = fsub nsz float 1.000000e+00, %i.aq
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.lr.ph43.split
  %i.as = phi i32 [ %i.y, %.lr.ph43.split ], [ %i.by, %bb.b ] ; 3 uses
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge44, label %.lr.ph43.split, !llvm.loop !577

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 7 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !29
  %i.ax = mul nsw i32 %i.aw, %.045
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %i.au, i64 %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !29
  %i.be = mul nsw i32 %i.bd, %.045
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds i8, ptr %i.bb, i64 %i.bf
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !29
  %i.bl = mul nsw i32 %i.bk, %.045
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds i8, ptr %i.bi, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv55
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !65
  %i.bq = uitofp nsz i8 %i.bp to float
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv55
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !65
  %i.bt = uitofp nsz i8 %i.bs to float
  %i.bu = fmul nsz float %i.ar, %i.bt
  %i.bv = tail call nsz noundef float @llvm.fmuladd.f32(float %i.bq, float %i.aq, float %i.bu)
  %i.bw = fptoui float %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv55
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.by = load i32, ptr %i.h, align 8, !tbaa !56  ; 2 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = icmp slt i64 %indvars.iv.next, %i.bz
  br i1 %i.ca, label %bb.b, label %._crit_edge, !llvm.loop !578
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @vdwind16_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.b = load i32, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = icmp slt i32 %5, %6
  br i1 %i.c, label %.lr.ph48, label %._crit_edge49.split

.lr.ph48:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.e = load i32, ptr %i.d, align 4, !tbaa !70
  %i.f = sitofp nsz i32 %i.e to float
  %i.g = icmp sgt i32 %i.b, 0
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.k = fadd nsz float %4, -1.000000e+00
  br i1 %i.g, label %.lr.ph48.split, label %._crit_edge49.split

.lr.ph48.split:                                   ; preds = %.lr.ph48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !56   ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph43.preheader, label %._crit_edge49.split

.lr.ph43.preheader:                               ; preds = %.lr.ph48.split
  %wide.trip.count55 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.o to i64
  br label %.lr.ph43

._crit_edge49.split:                              ; preds = %._crit_edge44, %.lr.ph48, %.lr.ph48.split, %bb.a
  ret void

.lr.ph43:                                         ; preds = %.lr.ph43.preheader, %._crit_edge44
  %.045 = phi i32 [ %i.s, %._crit_edge44 ], [ %5, %.lr.ph43.preheader ] ; 5 uses
  %i.q = sitofp nsz i32 %.045 to float
  %i.r = fdiv nsz float %i.q, %i.f
  br label %.lr.ph

._crit_edge44:                                    ; preds = %._crit_edge
  %i.s = add nsw i32 %.045, 1                     ; 2 uses
  %exitcond57.not = icmp eq i32 %i.s, %6
  br i1 %exitcond57.not, label %._crit_edge49.split, label %.lr.ph43, !llvm.loop !579

.lr.ph:                                           ; preds = %.lr.ph43, %._crit_edge
  %indvars.iv52 = phi i64 [ 0, %.lr.ph43 ], [ %indvars.iv.next53, %._crit_edge ] ; 5 uses
  %i.t = trunc nuw nsw i64 %indvars.iv52 to i32
  %i.u = uitofp nsz nneg i32 %i.t to float
  %i.v = fmul nnan nsz float %i.u, 1.298980e+01
  %i.w = tail call nsz float @llvm.sin.f32(float %i.v)
  %i.x = fmul nsz float %i.w, f0x472AEE8C         ; 2 uses
  %i.y = tail call nsz float @llvm.floor.f32(float %i.x)
  %i.z = fsub nsz float %i.x, %i.y
  %i.aa = fmul nsz float %i.z, 2.000000e-01
  %i.ab = tail call nsz float @llvm.fmuladd.f32(float %i.r, float 8.000000e-01, float %i.aa)
  %i.ac = tail call nsz float @llvm.fmuladd.f32(float %i.k, float 1.200000e+00, float %i.ab)
  %i.ad = fdiv nsz float %i.ac, -2.000000e-01     ; 2 uses
  %i.ae = fcmp nsz ogt float %i.ad, 0.000000e+00
  %i.af = select nsz i1 %i.ae, float %i.ad, float 0.000000e+00 ; 2 uses
  %i.ag = fcmp nsz ogt float %i.af, 1.000000e+00
  %..i.i = select nsz i1 %i.ag, float 1.000000e+00, float %i.af ; 3 uses
  %i.ah = fmul nsz float %..i.i, %..i.i
  %i.ai = tail call nsz float @llvm.fmuladd.f32(float %..i.i, float -2.000000e+00, float 3.000000e+00)
  %i.aj = fmul nsz float %i.ah, %i.ai             ; 2 uses
  %i.ak = fsub nsz float 1.000000e+00, %i.aj
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count55
  br i1 %exitcond56.not, label %._crit_edge44, label %.lr.ph, !llvm.loop !580

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 7 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !29
  %i.ap = mul nsw i32 %i.ao, %.045
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.am, i64 %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.av = load i32, ptr %i.au, align 4, !tbaa !29
  %i.aw = mul nsw i32 %i.av, %.045
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.at, i64 %i.ax
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !29
  %i.bd = mul nsw i32 %i.bc, %.045
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %i.ba, i64 %i.be
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %indvars.iv52
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !59
  %i.bi = uitofp nsz i16 %i.bh to float
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv52
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !59
  %i.bl = uitofp nsz i16 %i.bk to float
  %i.bm = fmul nsz float %i.ak, %i.bl
  %i.bn = tail call nsz noundef float @llvm.fmuladd.f32(float %i.bi, float %i.aj, float %i.bm)
  %i.bo = fptoui float %i.bn to i16
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv52
  store i16 %i.bo, ptr %i.bp, align 2, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !581
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @coverleft8_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sub i32 %6, %5                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 6 uses
  %i.f = fneg nsz float %4
  %8 = uitofp nneg i32 %i.e to float
  %i.g = fmul nsz float %i.f, %8
  %i.h = fptosi float %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !56
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge68.split

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.o = icmp slt i32 %i.c, 1
  %i.p = icmp slt i32 %i.e, 1
  %brmerge = select i1 %i.o, i1 true, i1 %i.p
  br i1 %brmerge, label %._crit_edge68.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %i.q = sext i32 %i.h to i64
  %i.r = zext nneg i32 %i.e to i64
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.preheader.lr.ph

._crit_edge68.split:                              ; preds = %._crit_edge65, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge65
  %indvars.iv73 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next74, %._crit_edge65 ] ; 7 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv73
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv73 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !29
  %i.w = mul nsw i32 %i.v, %5
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.t, i64 %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv73
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv73 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !29
  %i.ad = mul nsw i32 %i.ac, %5
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv73
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv73 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !29
  %i.ak = mul nsw i32 %i.aj, %5
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %i.al
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.05364 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.az, %._crit_edge ]
  %.05463 = phi ptr [ %i.am, %.preheader.lr.ph ], [ %i.as, %._crit_edge ] ; 2 uses
  %.05562 = phi ptr [ %i.af, %.preheader.lr.ph ], [ %i.ay, %._crit_edge ] ; 2 uses
  %.05661 = phi ptr [ %i.y, %.preheader.lr.ph ], [ %i.av, %._crit_edge ] ; 2 uses
  br label %bb.b

._crit_edge65:                                    ; preds = %._crit_edge
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %i.an = load i32, ptr %i.i, align 8, !tbaa !56
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next74, %i.ao
  br i1 %i.ap, label %.preheader.lr.ph, label %._crit_edge68.split, !llvm.loop !582

._crit_edge:                                      ; preds = %bb.b
  %i.aq = load i32, ptr %i.ai, align 4, !tbaa !29
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %.05463, i64 %i.ar
  %i.at = load i32, ptr %i.u, align 4, !tbaa !29
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %.05661, i64 %i.au
  %i.aw = load i32, ptr %i.ab, align 4, !tbaa !29
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %.05562, i64 %i.ax
  %i.az = add nuw nsw i32 %.05364, 1              ; 2 uses
  %exitcond72.not = icmp eq i32 %i.az, %i.c
  br i1 %exitcond72.not, label %._crit_edge65, label %.preheader, !llvm.loop !583

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.ba = add nsw i64 %indvars.iv, %i.q           ; 4 uses
  %i.bb = trunc nsw i64 %i.ba to i32
  %i.bc = srem i32 %i.bb, %i.e
  %isneg = icmp slt i64 %i.ba, 0
  %i.bd = select i1 %isneg, i32 %i.e, i32 0
  %i.be = add nsw i32 %i.bc, %i.bd
  %i.bf = icmp sgt i64 %i.ba, -1
  %i.bg = icmp slt i64 %i.ba, %i.r
  %or.cond = select i1 %i.bf, i1 %i.bg, i1 false
  %i.bh = sext i32 %i.be to i64
  %i.bi = getelementptr inbounds i8, ptr %.05562, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %.05661, i64 %indvars.iv
  %.in.in = select i1 %or.cond, ptr %i.bi, ptr %i.bj
  %.in = load i8, ptr %.in.in, align 1, !tbaa !65
  %i.bk = getelementptr inbounds nuw i8, ptr %.05463, i64 %indvars.iv
  store i8 %.in, ptr %i.bk, align 1, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !584
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @coverleft16_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sub i32 %6, %5                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 6 uses
  %i.f = fneg nsz float %4
  %8 = uitofp nneg i32 %i.e to float
  %i.g = fmul nsz float %i.f, %8
  %i.h = fptosi float %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !56   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge68.split

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.o = icmp slt i32 %i.c, 1
  %i.p = icmp slt i32 %i.e, 1
  %brmerge = select i1 %i.o, i1 true, i1 %i.p
  br i1 %brmerge, label %._crit_edge68.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %i.q = sext i32 %i.h to i64
  %i.r = zext nneg i32 %i.e to i64
  %wide.trip.count76 = zext nneg i32 %i.j to i64
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.preheader.lr.ph

._crit_edge68.split:                              ; preds = %._crit_edge65, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge65
  %indvars.iv73 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next74, %._crit_edge65 ] ; 7 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv73
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv73
  %i.v = load i32, ptr %i.u, align 4, !tbaa !29   ; 2 uses
  %i.w = mul nsw i32 %i.v, %5
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.t, i64 %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv73
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv73
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !29 ; 2 uses
  %i.ad = mul nsw i32 %i.ac, %5
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv73
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv73
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !29 ; 2 uses
  %i.ak = mul nsw i32 %i.aj, %5
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %i.al
  %i.an = sdiv i32 %i.aj, 2
  %i.ao = sext i32 %i.an to i64
  %i.ap = sdiv i32 %i.v, 2
  %i.aq = sext i32 %i.ap to i64
  %i.ar = sdiv i32 %i.ac, 2
  %i.as = sext i32 %i.ar to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.05364 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.aw, %._crit_edge ]
  %.05463 = phi ptr [ %i.am, %.preheader.lr.ph ], [ %i.at, %._crit_edge ] ; 2 uses
  %.05562 = phi ptr [ %i.af, %.preheader.lr.ph ], [ %i.av, %._crit_edge ] ; 2 uses
  %.05661 = phi ptr [ %i.y, %.preheader.lr.ph ], [ %i.au, %._crit_edge ] ; 2 uses
  br label %bb.b

._crit_edge65:                                    ; preds = %._crit_edge
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond77.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count76
  br i1 %exitcond77.not, label %._crit_edge68.split, label %.preheader.lr.ph, !llvm.loop !585

._crit_edge:                                      ; preds = %bb.b
  %i.at = getelementptr inbounds [2 x i8], ptr %.05463, i64 %i.ao
  %i.au = getelementptr inbounds [2 x i8], ptr %.05661, i64 %i.aq
  %i.av = getelementptr inbounds [2 x i8], ptr %.05562, i64 %i.as
  %i.aw = add nuw nsw i32 %.05364, 1              ; 2 uses
  %exitcond72.not = icmp eq i32 %i.aw, %i.c
  br i1 %exitcond72.not, label %._crit_edge65, label %.preheader, !llvm.loop !586

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.ax = add nsw i64 %indvars.iv, %i.q           ; 4 uses
  %i.ay = trunc nsw i64 %i.ax to i32
  %i.az = srem i32 %i.ay, %i.e
  %isneg = icmp slt i64 %i.ax, 0
  %i.ba = select i1 %isneg, i32 %i.e, i32 0
  %i.bb = add nsw i32 %i.az, %i.ba
  %i.bc = icmp sgt i64 %i.ax, -1
  %i.bd = icmp slt i64 %i.ax, %i.r
  %or.cond = select i1 %i.bc, i1 %i.bd, i1 false
  %i.be = sext i32 %i.bb to i64
  %i.bf = getelementptr inbounds [2 x i8], ptr %.05562, i64 %i.be
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %.05661, i64 %indvars.iv
  %.in.in = select i1 %or.cond, ptr %i.bf, ptr %i.bg
  %.in = load i16, ptr %.in.in, align 2, !tbaa !59
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %.05463, i64 %indvars.iv
  store i16 %.in, ptr %i.bh, align 2, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !587
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @coverright8_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sub i32 %6, %5                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 6 uses
  %8 = uitofp nneg i32 %i.e to float
  %i.f = fmul nsz float %4, %8
  %i.g = fptosi float %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !56
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge68.split

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = icmp slt i32 %i.c, 1
  %i.o = icmp slt i32 %i.e, 1
  %brmerge = select i1 %i.n, i1 true, i1 %i.o
  br i1 %brmerge, label %._crit_edge68.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %i.p = sext i32 %i.g to i64
  %i.q = zext nneg i32 %i.e to i64
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.preheader.lr.ph

._crit_edge68.split:                              ; preds = %._crit_edge65, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge65
  %indvars.iv73 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next74, %._crit_edge65 ] ; 7 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv73
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv73 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !29
  %i.v = mul nsw i32 %i.u, %5
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 %i.w
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv73
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv73 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !29
  %i.ac = mul nsw i32 %i.ab, %5
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.z, i64 %i.ad
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv73
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv73 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !29
  %i.aj = mul nsw i32 %i.ai, %5
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ag, i64 %i.ak
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.05364 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ay, %._crit_edge ]
  %.05463 = phi ptr [ %i.al, %.preheader.lr.ph ], [ %i.ar, %._crit_edge ] ; 2 uses
  %.05562 = phi ptr [ %i.ae, %.preheader.lr.ph ], [ %i.ax, %._crit_edge ] ; 2 uses
  %.05661 = phi ptr [ %i.x, %.preheader.lr.ph ], [ %i.au, %._crit_edge ] ; 2 uses
  br label %bb.b

._crit_edge65:                                    ; preds = %._crit_edge
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %i.am = load i32, ptr %i.h, align 8, !tbaa !56
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next74, %i.an
  br i1 %i.ao, label %.preheader.lr.ph, label %._crit_edge68.split, !llvm.loop !588

._crit_edge:                                      ; preds = %bb.b
  %i.ap = load i32, ptr %i.ah, align 4, !tbaa !29
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %.05463, i64 %i.aq
  %i.as = load i32, ptr %i.t, align 4, !tbaa !29
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %.05661, i64 %i.at
  %i.av = load i32, ptr %i.aa, align 4, !tbaa !29
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %.05562, i64 %i.aw
  %i.ay = add nuw nsw i32 %.05364, 1              ; 2 uses
  %exitcond72.not = icmp eq i32 %i.ay, %i.c
  br i1 %exitcond72.not, label %._crit_edge65, label %.preheader, !llvm.loop !589

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.az = add nsw i64 %indvars.iv, %i.p           ; 4 uses
  %i.ba = trunc nsw i64 %i.az to i32
  %i.bb = srem i32 %i.ba, %i.e
  %isneg = icmp slt i64 %i.az, 0
  %i.bc = select i1 %isneg, i32 %i.e, i32 0
  %i.bd = add nsw i32 %i.bb, %i.bc
  %i.be = icmp sgt i64 %i.az, -1
  %i.bf = icmp slt i64 %i.az, %i.q
  %or.cond = select i1 %i.be, i1 %i.bf, i1 false
  %i.bg = sext i32 %i.bd to i64
  %i.bh = getelementptr inbounds i8, ptr %.05562, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %.05661, i64 %indvars.iv
  %.in.in = select i1 %or.cond, ptr %i.bh, ptr %i.bi
  %.in = load i8, ptr %.in.in, align 1, !tbaa !65
  %i.bj = getelementptr inbounds nuw i8, ptr %.05463, i64 %indvars.iv
  store i8 %.in, ptr %i.bj, align 1, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !590
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @coverright16_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sub i32 %6, %5                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 6 uses
  %8 = uitofp nneg i32 %i.e to float
  %i.f = fmul nsz float %4, %8
  %i.g = fptosi float %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !56   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge68.split

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = icmp slt i32 %i.c, 1
  %i.o = icmp slt i32 %i.e, 1
  %brmerge = select i1 %i.n, i1 true, i1 %i.o
  br i1 %brmerge, label %._crit_edge68.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %i.p = sext i32 %i.g to i64
  %i.q = zext nneg i32 %i.e to i64
  %wide.trip.count76 = zext nneg i32 %i.i to i64
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.preheader.lr.ph

._crit_edge68.split:                              ; preds = %._crit_edge65, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge65
  %indvars.iv73 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next74, %._crit_edge65 ] ; 7 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv73
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv73
  %i.u = load i32, ptr %i.t, align 4, !tbaa !29   ; 2 uses
  %i.v = mul nsw i32 %i.u, %5
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 %i.w
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv73
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv73
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !29 ; 2 uses
  %i.ac = mul nsw i32 %i.ab, %5
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.z, i64 %i.ad
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv73
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv73
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !29 ; 2 uses
  %i.aj = mul nsw i32 %i.ai, %5
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ag, i64 %i.ak
  %i.am = sdiv i32 %i.ai, 2
  %i.an = sext i32 %i.am to i64
  %i.ao = sdiv i32 %i.u, 2
  %i.ap = sext i32 %i.ao to i64
  %i.aq = sdiv i32 %i.ab, 2
  %i.ar = sext i32 %i.aq to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.05364 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.av, %._crit_edge ]
  %.05463 = phi ptr [ %i.al, %.preheader.lr.ph ], [ %i.as, %._crit_edge ] ; 2 uses
  %.05562 = phi ptr [ %i.ae, %.preheader.lr.ph ], [ %i.au, %._crit_edge ] ; 2 uses
  %.05661 = phi ptr [ %i.x, %.preheader.lr.ph ], [ %i.at, %._crit_edge ] ; 2 uses
  br label %bb.b

._crit_edge65:                                    ; preds = %._crit_edge
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond77.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count76
  br i1 %exitcond77.not, label %._crit_edge68.split, label %.preheader.lr.ph, !llvm.loop !591

._crit_edge:                                      ; preds = %bb.b
  %i.as = getelementptr inbounds [2 x i8], ptr %.05463, i64 %i.an
  %i.at = getelementptr inbounds [2 x i8], ptr %.05661, i64 %i.ap
  %i.au = getelementptr inbounds [2 x i8], ptr %.05562, i64 %i.ar
  %i.av = add nuw nsw i32 %.05364, 1              ; 2 uses
  %exitcond72.not = icmp eq i32 %i.av, %i.c
  br i1 %exitcond72.not, label %._crit_edge65, label %.preheader, !llvm.loop !592

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.aw = add nsw i64 %indvars.iv, %i.p           ; 4 uses
  %i.ax = trunc nsw i64 %i.aw to i32
  %i.ay = srem i32 %i.ax, %i.e
  %isneg = icmp slt i64 %i.aw, 0
  %i.az = select i1 %isneg, i32 %i.e, i32 0
  %i.ba = add nsw i32 %i.ay, %i.az
  %i.bb = icmp sgt i64 %i.aw, -1
  %i.bc = icmp slt i64 %i.aw, %i.q
  %or.cond = select i1 %i.bb, i1 %i.bc, i1 false
  %i.bd = sext i32 %i.ba to i64
  %i.be = getelementptr inbounds [2 x i8], ptr %.05562, i64 %i.bd
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %.05661, i64 %indvars.iv
  %.in.in = select i1 %or.cond, ptr %i.be, ptr %i.bf
  %.in = load i16, ptr %.in.in, align 2, !tbaa !59
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %.05463, i64 %indvars.iv
  store i16 %.in, ptr %i.bg, align 2, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !593
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @coverup8_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.d = load i32, ptr %i.c, align 4, !tbaa !70   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !61   ; 4 uses
  %i.g = fneg nsz float %4
  %i.h = sitofp nsz i32 %i.d to float
  %i.i = fmul nsz float %i.g, %i.h
  %i.j = fptosi float %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !56
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph59, label %._crit_edge60.split

.lr.ph59:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.o = icmp sge i32 %5, %6
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.r = icmp slt i32 %i.f, 1
  %brmerge = select i1 %i.o, i1 true, i1 %i.r
  br i1 %brmerge, label %._crit_edge60.split, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %.lr.ph59
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 8 uses
  %min.iters.check = icmp ult i32 %i.f, 4
  %min.iters.check75 = icmp ult i32 %i.f, 32
  %i.s = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.s, 0
  %n.vec77 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n81 = icmp eq i64 %n.vec77, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph55

._crit_edge60.split:                              ; preds = %._crit_edge56, %.lr.ph59, %bb.a
  ret void

.lr.ph55:                                         ; preds = %.lr.ph55.preheader, %._crit_edge56
  %indvars.iv65 = phi i64 [ 0, %.lr.ph55.preheader ], [ %indvars.iv.next66, %._crit_edge56 ] ; 7 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv65
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv65 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !29
  %i.x = mul nsw i32 %i.w, %5
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %i.u, i64 %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv65
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv65
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv65
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv65
  br label %iter.check

._crit_edge56:                                    ; preds = %._crit_edge
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %i.ae = load i32, ptr %i.k, align 8, !tbaa !56
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next66, %i.af
  br i1 %i.ag, label %.lr.ph55, label %._crit_edge60.split, !llvm.loop !594

iter.check:                                       ; preds = %.lr.ph55, %._crit_edge
  %.04753 = phi i32 [ %5, %.lr.ph55 ], [ %i.bm, %._crit_edge ] ; 3 uses
  %.04852 = phi ptr [ %i.z, %.lr.ph55 ], [ %i.bl, %._crit_edge ] ; 9 uses
  %i.ah = add nsw i32 %.04753, %i.j               ; 4 uses
  %i.ai = srem i32 %i.ah, %i.d
  %isneg = icmp slt i32 %i.ah, 0
  %i.aj = select i1 %isneg, i32 %i.d, i32 0
  %i.ak = add nsw i32 %i.ai, %i.aj
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !64
  %i.am = load i32, ptr %i.ab, align 4, !tbaa !29
  %i.an = mul nsw i32 %i.am, %.04753
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %i.al, i64 %i.ao
  %i.aq = load ptr, ptr %i.ac, align 8, !tbaa !64
  %i.ar = load i32, ptr %i.ad, align 4, !tbaa !29
  %i.as = mul nsw i32 %i.ar, %i.ak
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 %i.at
  %i.av = icmp sgt i32 %i.ah, -1
  %i.aw = icmp slt i32 %i.ah, %i.d
  %or.cond = select i1 %i.av, i1 %i.aw, i1 false
  %.in.in.v = select i1 %or.cond, ptr %i.au, ptr %i.ap ; 8 uses
  %.in.in.v73 = ptrtoaddr ptr %.in.in.v to i64
  %.0485274 = ptrtoaddr ptr %.04852 to i64
  %i.ax = sub i64 %.in.in.v73, %.0485274
  %diff.check = icmp ugt i64 %i.ax, -32
  %or.cond82 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond82, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check75, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
end_hunk_3
begin_hunk_4_@coverdown16_transition:bb.a
  %i.i = fptosi float %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !56   ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph59, label %._crit_edge60.split

.lr.ph59:                                         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = icmp sge i32 %5, %6
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.q = icmp slt i32 %i.f, 1
  %brmerge = select i1 %i.n, i1 true, i1 %i.q
  br i1 %brmerge, label %._crit_edge60.split, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %.lr.ph59
  %i.r = sext i32 %5 to i64
  %i.s = sext i32 %i.i to i64
  %i.t = sext i32 %i.d to i64
  %wide.trip.count72 = zext nneg i32 %i.k to i64
  %wide.trip.count67 = sext i32 %6 to i64
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 8 uses
  %min.iters.check = icmp ult i32 %i.f, 4
  %min.iters.check79 = icmp ult i32 %i.f, 16
  %i.u = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  %n.vec81 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n85 = icmp eq i64 %n.vec81, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph55

._crit_edge60.split:                              ; preds = %._crit_edge56, %.lr.ph59, %bb.a
  ret void

.lr.ph55:                                         ; preds = %.lr.ph55.preheader, %._crit_edge56
  %indvars.iv69 = phi i64 [ 0, %.lr.ph55.preheader ], [ %indvars.iv.next70, %._crit_edge56 ] ; 7 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv69
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !64   ; 2 uses
  %i.x = ptrtoaddr ptr %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv69
  %i.z = load i32, ptr %i.y, align 4, !tbaa !29   ; 2 uses
  %i.aa = mul i32 %i.z, %5
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.w, i64 %i.ab
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv69
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv69
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !29
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv69
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv69
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !29
  %i.al = sdiv i32 %i.z, 2
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = sext i32 %i.ag to i64
  %i.ao = shl nsw i64 %i.am, 1
  %i.ap = add i64 %i.x, %i.ab
  br label %iter.check

._crit_edge56:                                    ; preds = %._crit_edge
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond73.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count72
  br i1 %exitcond73.not, label %._crit_edge60.split, label %.lr.ph55, !llvm.loop !612

iter.check:                                       ; preds = %.lr.ph55, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph55 ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %indvars.iv64 = phi i64 [ %i.r, %.lr.ph55 ], [ %indvars.iv.next65, %._crit_edge ] ; 3 uses
  %.04852 = phi ptr [ %i.ac, %.lr.ph55 ], [ %i.bq, %._crit_edge ] ; 8 uses
  %i.aq = add nsw i64 %indvars.iv64, %i.s         ; 4 uses
  %i.ar = trunc nsw i64 %i.aq to i32
  %i.as = srem i32 %i.ar, %i.d
  %isneg = icmp slt i64 %i.aq, 0
  %i.at = select i1 %isneg, i32 %i.d, i32 0
  %i.au = add nsw i32 %i.as, %i.at
  %i.av = mul nsw i64 %indvars.iv64, %i.an
  %i.aw = getelementptr inbounds i8, ptr %i.ae, i64 %i.av
  %i.ax = mul nsw i32 %i.ak, %i.au
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %i.ai, i64 %i.ay
  %i.ba = icmp sgt i64 %i.aq, -1
  %i.bb = icmp slt i64 %i.aq, %i.t
  %or.cond = select i1 %i.ba, i1 %i.bb, i1 false
  %.in.in.v = select i1 %or.cond, ptr %i.az, ptr %i.aw ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.in.in.v78 = ptrtoaddr ptr %.in.in.v to i64
  %i.bc = mul i64 %indvar, %i.ao
  %i.bd = add i64 %i.ap, %i.bc
  %i.be = sub i64 %.in.in.v78, %i.bd
  %diff.check = icmp ugt i64 %i.be, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check79, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %.in.in.v, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <8 x i16>, ptr %i.bf, align 2, !tbaa !59
  %wide.load80 = load <8 x i16>, ptr %i.bg, align 2, !tbaa !59
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %.04852, i64 %index ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store <8 x i16> %wide.load, ptr %i.bh, align 2, !tbaa !59
  store <8 x i16> %wide.load80, ptr %i.bi, align 2, !tbaa !59
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !613

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index82 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next84, %vec.epilog.vector.body ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %.in.in.v, i64 %index82
  %wide.load83 = load <4 x i16>, ptr %i.bk, align 2, !tbaa !59
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %.04852, i64 %index82
  store <4 x i16> %wide.load83, ptr %i.bl, align 2, !tbaa !59
  %index.next84 = add nuw i64 %index82, 4         ; 2 uses
  %i.bm = icmp eq i64 %index.next84, %n.vec81
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !614

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n85, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec81, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %.in.in.prol = getelementptr inbounds nuw [2 x i8], ptr %.in.in.v, i64 %indvars.iv.prol
  %.in.prol = load i16, ptr %.in.in.prol, align 2, !tbaa !59
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %.04852, i64 %indvars.iv.prol
  store i16 %.in.prol, ptr %i.bn, align 2, !tbaa !59
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !615

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bo = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.bq = getelementptr inbounds [2 x i8], ptr %.04852, i64 %i.am
  %indvars.iv.next65 = add nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count67
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond68.not, label %._crit_edge56, label %iter.check, !llvm.loop !616

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %.in.in = getelementptr inbounds nuw [2 x i8], ptr %.in.in.v, i64 %indvars.iv
  %.in = load i16, ptr %.in.in, align 2, !tbaa !59
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %.04852, i64 %indvars.iv
  store i16 %.in, ptr %i.br, align 2, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.in.in.1 = getelementptr inbounds nuw [2 x i8], ptr %.in.in.v, i64 %indvars.iv.next
  %.in.1 = load i16, ptr %.in.in.1, align 2, !tbaa !59
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.04852, i64 %indvars.iv.next
  store i16 %.in.1, ptr %i.bs, align 2, !tbaa !59
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.in.in.2 = getelementptr inbounds nuw [2 x i8], ptr %.in.in.v, i64 %indvars.iv.next.1
  %.in.2 = load i16, ptr %.in.in.2, align 2, !tbaa !59
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %.04852, i64 %indvars.iv.next.1
  store i16 %.in.2, ptr %i.bt, align 2, !tbaa !59
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %.in.in.3 = getelementptr inbounds nuw [2 x i8], ptr %.in.in.v, i64 %indvars.iv.next.2
  %.in.3 = load i16, ptr %.in.in.3, align 2, !tbaa !59
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.04852, i64 %indvars.iv.next.2
  store i16 %.in.3, ptr %i.bu, align 2, !tbaa !59
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !617
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @revealleft8_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sub i32 %6, %5                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 6 uses
  %i.f = fneg nsz float %4
  %8 = uitofp nneg i32 %i.e to float
  %i.g = fmul nsz float %i.f, %8
  %i.h = fptosi float %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !56
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge68.split

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.o = icmp slt i32 %i.c, 1
  %i.p = icmp slt i32 %i.e, 1
  %brmerge = select i1 %i.o, i1 true, i1 %i.p
  br i1 %brmerge, label %._crit_edge68.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %i.q = sext i32 %i.h to i64
  %i.r = zext nneg i32 %i.e to i64
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.preheader.lr.ph

._crit_edge68.split:                              ; preds = %._crit_edge65, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge65
  %indvars.iv73 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next74, %._crit_edge65 ] ; 7 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv73
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv73 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !29
  %i.w = mul nsw i32 %i.v, %5
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.t, i64 %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv73
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv73 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !29
  %i.ad = mul nsw i32 %i.ac, %5
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv73
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv73 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !29
  %i.ak = mul nsw i32 %i.aj, %5
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %i.al
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.05364 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.az, %._crit_edge ]
  %.05463 = phi ptr [ %i.am, %.preheader.lr.ph ], [ %i.as, %._crit_edge ] ; 2 uses
  %.05562 = phi ptr [ %i.af, %.preheader.lr.ph ], [ %i.ay, %._crit_edge ] ; 2 uses
  %.05661 = phi ptr [ %i.y, %.preheader.lr.ph ], [ %i.av, %._crit_edge ] ; 2 uses
  br label %bb.b

._crit_edge65:                                    ; preds = %._crit_edge
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %i.an = load i32, ptr %i.i, align 8, !tbaa !56
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next74, %i.ao
  br i1 %i.ap, label %.preheader.lr.ph, label %._crit_edge68.split, !llvm.loop !618

._crit_edge:                                      ; preds = %bb.b
  %i.aq = load i32, ptr %i.ai, align 4, !tbaa !29
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %.05463, i64 %i.ar
  %i.at = load i32, ptr %i.u, align 4, !tbaa !29
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %.05661, i64 %i.au
  %i.aw = load i32, ptr %i.ab, align 4, !tbaa !29
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %.05562, i64 %i.ax
  %i.az = add nuw nsw i32 %.05364, 1              ; 2 uses
  %exitcond72.not = icmp eq i32 %i.az, %i.c
  br i1 %exitcond72.not, label %._crit_edge65, label %.preheader, !llvm.loop !619

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.ba = add nsw i64 %indvars.iv, %i.q           ; 4 uses
  %i.bb = trunc nsw i64 %i.ba to i32
  %i.bc = srem i32 %i.bb, %i.e
  %isneg = icmp slt i64 %i.ba, 0
  %i.bd = select i1 %isneg, i32 %i.e, i32 0
  %i.be = add nsw i32 %i.bc, %i.bd
  %i.bf = icmp sgt i64 %i.ba, -1
  %i.bg = icmp slt i64 %i.ba, %i.r
  %or.cond = select i1 %i.bf, i1 %i.bg, i1 false
  %i.bh = getelementptr inbounds nuw i8, ptr %.05562, i64 %indvars.iv
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds i8, ptr %.05661, i64 %i.bi
  %.in.in = select i1 %or.cond, ptr %i.bh, ptr %i.bj
  %.in = load i8, ptr %.in.in, align 1, !tbaa !65
  %i.bk = getelementptr inbounds nuw i8, ptr %.05463, i64 %indvars.iv
  store i8 %.in, ptr %i.bk, align 1, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !620
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @revealleft16_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sub i32 %6, %5                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 6 uses
  %i.f = fneg nsz float %4
  %8 = uitofp nneg i32 %i.e to float
  %i.g = fmul nsz float %i.f, %8
  %i.h = fptosi float %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !56   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge68.split

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.o = icmp slt i32 %i.c, 1
  %i.p = icmp slt i32 %i.e, 1
  %brmerge = select i1 %i.o, i1 true, i1 %i.p
  br i1 %brmerge, label %._crit_edge68.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %i.q = sext i32 %i.h to i64
  %i.r = zext nneg i32 %i.e to i64
  %wide.trip.count76 = zext nneg i32 %i.j to i64
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.preheader.lr.ph

._crit_edge68.split:                              ; preds = %._crit_edge65, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge65
  %indvars.iv73 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next74, %._crit_edge65 ] ; 7 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv73
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv73
  %i.v = load i32, ptr %i.u, align 4, !tbaa !29   ; 2 uses
  %i.w = mul nsw i32 %i.v, %5
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.t, i64 %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv73
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv73
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !29 ; 2 uses
  %i.ad = mul nsw i32 %i.ac, %5
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv73
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv73
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !29 ; 2 uses
  %i.ak = mul nsw i32 %i.aj, %5
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %i.al
  %i.an = sdiv i32 %i.aj, 2
  %i.ao = sext i32 %i.an to i64
  %i.ap = sdiv i32 %i.v, 2
  %i.aq = sext i32 %i.ap to i64
  %i.ar = sdiv i32 %i.ac, 2
  %i.as = sext i32 %i.ar to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.05364 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.aw, %._crit_edge ]
  %.05463 = phi ptr [ %i.am, %.preheader.lr.ph ], [ %i.at, %._crit_edge ] ; 2 uses
  %.05562 = phi ptr [ %i.af, %.preheader.lr.ph ], [ %i.av, %._crit_edge ] ; 2 uses
  %.05661 = phi ptr [ %i.y, %.preheader.lr.ph ], [ %i.au, %._crit_edge ] ; 2 uses
  br label %bb.b

._crit_edge65:                                    ; preds = %._crit_edge
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond77.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count76
  br i1 %exitcond77.not, label %._crit_edge68.split, label %.preheader.lr.ph, !llvm.loop !621

._crit_edge:                                      ; preds = %bb.b
  %i.at = getelementptr inbounds [2 x i8], ptr %.05463, i64 %i.ao
  %i.au = getelementptr inbounds [2 x i8], ptr %.05661, i64 %i.aq
  %i.av = getelementptr inbounds [2 x i8], ptr %.05562, i64 %i.as
  %i.aw = add nuw nsw i32 %.05364, 1              ; 2 uses
  %exitcond72.not = icmp eq i32 %i.aw, %i.c
  br i1 %exitcond72.not, label %._crit_edge65, label %.preheader, !llvm.loop !622

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.ax = add nsw i64 %indvars.iv, %i.q           ; 4 uses
  %i.ay = trunc nsw i64 %i.ax to i32
  %i.az = srem i32 %i.ay, %i.e
  %isneg = icmp slt i64 %i.ax, 0
  %i.ba = select i1 %isneg, i32 %i.e, i32 0
  %i.bb = add nsw i32 %i.az, %i.ba
  %i.bc = icmp sgt i64 %i.ax, -1
  %i.bd = icmp slt i64 %i.ax, %i.r
  %or.cond = select i1 %i.bc, i1 %i.bd, i1 false
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %.05562, i64 %indvars.iv
  %i.bf = sext i32 %i.bb to i64
  %i.bg = getelementptr inbounds [2 x i8], ptr %.05661, i64 %i.bf
  %.in.in = select i1 %or.cond, ptr %i.be, ptr %i.bg
  %.in = load i16, ptr %.in.in, align 2, !tbaa !59
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %.05463, i64 %indvars.iv
  store i16 %.in, ptr %i.bh, align 2, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !623
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @revealright8_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sub i32 %6, %5                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 6 uses
  %8 = uitofp nneg i32 %i.e to float
  %i.f = fmul nsz float %4, %8
  %i.g = fptosi float %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !56
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge68.split

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = icmp slt i32 %i.c, 1
  %i.o = icmp slt i32 %i.e, 1
  %brmerge = select i1 %i.n, i1 true, i1 %i.o
  br i1 %brmerge, label %._crit_edge68.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %i.p = sext i32 %i.g to i64
  %i.q = zext nneg i32 %i.e to i64
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.preheader.lr.ph

._crit_edge68.split:                              ; preds = %._crit_edge65, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge65
  %indvars.iv73 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next74, %._crit_edge65 ] ; 7 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv73
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv73 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !29
  %i.v = mul nsw i32 %i.u, %5
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 %i.w
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv73
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv73 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !29
  %i.ac = mul nsw i32 %i.ab, %5
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.z, i64 %i.ad
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv73
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv73 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !29
  %i.aj = mul nsw i32 %i.ai, %5
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ag, i64 %i.ak
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.05364 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ay, %._crit_edge ]
  %.05463 = phi ptr [ %i.al, %.preheader.lr.ph ], [ %i.ar, %._crit_edge ] ; 2 uses
  %.05562 = phi ptr [ %i.ae, %.preheader.lr.ph ], [ %i.ax, %._crit_edge ] ; 2 uses
  %.05661 = phi ptr [ %i.x, %.preheader.lr.ph ], [ %i.au, %._crit_edge ] ; 2 uses
  br label %bb.b

._crit_edge65:                                    ; preds = %._crit_edge
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %i.am = load i32, ptr %i.h, align 8, !tbaa !56
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next74, %i.an
  br i1 %i.ao, label %.preheader.lr.ph, label %._crit_edge68.split, !llvm.loop !624

._crit_edge:                                      ; preds = %bb.b
  %i.ap = load i32, ptr %i.ah, align 4, !tbaa !29
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %.05463, i64 %i.aq
  %i.as = load i32, ptr %i.t, align 4, !tbaa !29
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %.05661, i64 %i.at
  %i.av = load i32, ptr %i.aa, align 4, !tbaa !29
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %.05562, i64 %i.aw
  %i.ay = add nuw nsw i32 %.05364, 1              ; 2 uses
  %exitcond72.not = icmp eq i32 %i.ay, %i.c
  br i1 %exitcond72.not, label %._crit_edge65, label %.preheader, !llvm.loop !625

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.az = add nsw i64 %indvars.iv, %i.p           ; 4 uses
  %i.ba = trunc nsw i64 %i.az to i32
  %i.bb = srem i32 %i.ba, %i.e
  %isneg = icmp slt i64 %i.az, 0
  %i.bc = select i1 %isneg, i32 %i.e, i32 0
  %i.bd = add nsw i32 %i.bb, %i.bc
  %i.be = icmp sgt i64 %i.az, -1
  %i.bf = icmp slt i64 %i.az, %i.q
  %or.cond = select i1 %i.be, i1 %i.bf, i1 false
  %i.bg = getelementptr inbounds nuw i8, ptr %.05562, i64 %indvars.iv
  %i.bh = sext i32 %i.bd to i64
  %i.bi = getelementptr inbounds i8, ptr %.05661, i64 %i.bh
  %.in.in = select i1 %or.cond, ptr %i.bg, ptr %i.bi
  %.in = load i8, ptr %.in.in, align 1, !tbaa !65
  %i.bj = getelementptr inbounds nuw i8, ptr %.05463, i64 %indvars.iv
  store i8 %.in, ptr %i.bj, align 1, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !626
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @revealright16_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sub i32 %6, %5                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 6 uses
  %8 = uitofp nneg i32 %i.e to float
  %i.f = fmul nsz float %4, %8
  %i.g = fptosi float %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !56   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge68.split

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = icmp slt i32 %i.c, 1
  %i.o = icmp slt i32 %i.e, 1
  %brmerge = select i1 %i.n, i1 true, i1 %i.o
  br i1 %brmerge, label %._crit_edge68.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %i.p = sext i32 %i.g to i64
  %i.q = zext nneg i32 %i.e to i64
  %wide.trip.count76 = zext nneg i32 %i.i to i64
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.preheader.lr.ph

._crit_edge68.split:                              ; preds = %._crit_edge65, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge65
  %indvars.iv73 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next74, %._crit_edge65 ] ; 7 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv73
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv73
  %i.u = load i32, ptr %i.t, align 4, !tbaa !29   ; 2 uses
  %i.v = mul nsw i32 %i.u, %5
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 %i.w
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv73
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv73
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !29 ; 2 uses
  %i.ac = mul nsw i32 %i.ab, %5
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.z, i64 %i.ad
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv73
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv73
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !29 ; 2 uses
  %i.aj = mul nsw i32 %i.ai, %5
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ag, i64 %i.ak
  %i.am = sdiv i32 %i.ai, 2
  %i.an = sext i32 %i.am to i64
  %i.ao = sdiv i32 %i.u, 2
  %i.ap = sext i32 %i.ao to i64
  %i.aq = sdiv i32 %i.ab, 2
  %i.ar = sext i32 %i.aq to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.05364 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.av, %._crit_edge ]
  %.05463 = phi ptr [ %i.al, %.preheader.lr.ph ], [ %i.as, %._crit_edge ] ; 2 uses
  %.05562 = phi ptr [ %i.ae, %.preheader.lr.ph ], [ %i.au, %._crit_edge ] ; 2 uses
  %.05661 = phi ptr [ %i.x, %.preheader.lr.ph ], [ %i.at, %._crit_edge ] ; 2 uses
  br label %bb.b

._crit_edge65:                                    ; preds = %._crit_edge
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond77.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count76
  br i1 %exitcond77.not, label %._crit_edge68.split, label %.preheader.lr.ph, !llvm.loop !627

._crit_edge:                                      ; preds = %bb.b
  %i.as = getelementptr inbounds [2 x i8], ptr %.05463, i64 %i.an
  %i.at = getelementptr inbounds [2 x i8], ptr %.05661, i64 %i.ap
  %i.au = getelementptr inbounds [2 x i8], ptr %.05562, i64 %i.ar
  %i.av = add nuw nsw i32 %.05364, 1              ; 2 uses
  %exitcond72.not = icmp eq i32 %i.av, %i.c
  br i1 %exitcond72.not, label %._crit_edge65, label %.preheader, !llvm.loop !628

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.aw = add nsw i64 %indvars.iv, %i.p           ; 4 uses
  %i.ax = trunc nsw i64 %i.aw to i32
  %i.ay = srem i32 %i.ax, %i.e
  %isneg = icmp slt i64 %i.aw, 0
  %i.az = select i1 %isneg, i32 %i.e, i32 0
  %i.ba = add nsw i32 %i.ay, %i.az
  %i.bb = icmp sgt i64 %i.aw, -1
  %i.bc = icmp slt i64 %i.aw, %i.q
  %or.cond = select i1 %i.bb, i1 %i.bc, i1 false
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %.05562, i64 %indvars.iv
  %i.be = sext i32 %i.ba to i64
  %i.bf = getelementptr inbounds [2 x i8], ptr %.05661, i64 %i.be
  %.in.in = select i1 %or.cond, ptr %i.bd, ptr %i.bf
  %.in = load i16, ptr %.in.in, align 2, !tbaa !59
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %.05463, i64 %indvars.iv
  store i16 %.in, ptr %i.bg, align 2, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !629
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @revealup8_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.d = load i32, ptr %i.c, align 4, !tbaa !70   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !61   ; 4 uses
  %i.g = fneg nsz float %4
  %i.h = sitofp nsz i32 %i.d to float
  %i.i = fmul nsz float %i.g, %i.h
  %i.j = fptosi float %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !56
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph59, label %._crit_edge60.split

.lr.ph59:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.o = icmp sge i32 %5, %6
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.r = icmp slt i32 %i.f, 1
  %brmerge = select i1 %i.o, i1 true, i1 %i.r
  br i1 %brmerge, label %._crit_edge60.split, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %.lr.ph59
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 8 uses
  %min.iters.check = icmp ult i32 %i.f, 4
  %min.iters.check75 = icmp ult i32 %i.f, 32
  %i.s = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.s, 0
  %n.vec77 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n81 = icmp eq i64 %n.vec77, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph55

._crit_edge60.split:                              ; preds = %._crit_edge56, %.lr.ph59, %bb.a
  ret void

.lr.ph55:                                         ; preds = %.lr.ph55.preheader, %._crit_edge56
  %indvars.iv65 = phi i64 [ 0, %.lr.ph55.preheader ], [ %indvars.iv.next66, %._crit_edge56 ] ; 7 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv65
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv65 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !29
  %i.x = mul nsw i32 %i.w, %5
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %i.u, i64 %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv65
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv65
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv65
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv65
  br label %iter.check

._crit_edge56:                                    ; preds = %._crit_edge
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %i.ae = load i32, ptr %i.k, align 8, !tbaa !56
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next66, %i.af
  br i1 %i.ag, label %.lr.ph55, label %._crit_edge60.split, !llvm.loop !630

iter.check:                                       ; preds = %.lr.ph55, %._crit_edge
  %.04753 = phi i32 [ %5, %.lr.ph55 ], [ %i.bm, %._crit_edge ] ; 3 uses
  %.04852 = phi ptr [ %i.z, %.lr.ph55 ], [ %i.bl, %._crit_edge ] ; 9 uses
  %i.ah = add nsw i32 %.04753, %i.j               ; 4 uses
  %i.ai = srem i32 %i.ah, %i.d
  %isneg = icmp slt i32 %i.ah, 0
  %i.aj = select i1 %isneg, i32 %i.d, i32 0
  %i.ak = add nsw i32 %i.ai, %i.aj
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !64
  %i.am = load i32, ptr %i.ab, align 4, !tbaa !29
  %i.an = mul nsw i32 %i.am, %i.ak
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %i.al, i64 %i.ao
  %i.aq = load ptr, ptr %i.ac, align 8, !tbaa !64
  %i.ar = load i32, ptr %i.ad, align 4, !tbaa !29
  %i.as = mul nsw i32 %i.ar, %.04753
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 %i.at
  %i.av = icmp sgt i32 %i.ah, -1
  %i.aw = icmp slt i32 %i.ah, %i.d
  %or.cond = select i1 %i.av, i1 %i.aw, i1 false
  %.in.in.v = select i1 %or.cond, ptr %i.au, ptr %i.ap ; 8 uses
  %.in.in.v73 = ptrtoaddr ptr %.in.in.v to i64
  %.0485274 = ptrtoaddr ptr %.04852 to i64
  %i.ax = sub i64 %.in.in.v73, %.0485274
  %diff.check = icmp ugt i64 %i.ax, -32
  %or.cond82 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond82, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check75, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
end_hunk_4
