Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/path?download=true
inline.NumInlined: 240
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_path_get_mask_roi:bb.a
  %i.ar = sitofp reassoc nsz arcp contract afn i64 %i.aq to double
  %i.as = fmul reassoc nnan nsz arcp contract afn double %i.ar, f0x3EB0C6F7A0B5ED8D
  %i.at = fadd reassoc nsz arcp contract afn double %i.as, %i.ao ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.au = fsub reassoc nsz arcp contract afn double %i.at, %i.p
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.35, ptr noundef nonnull %i.ak, double noundef %i.au) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0385 = phi nsz double [ %i.p, %bb.e ], [ %i.at, %bb.f ] ; 4 uses
  store double %.0385, ptr %i.a, align 8, !tbaa !137
  %i.av = load ptr, ptr %2, align 8, !tbaa !22
  %i.aw = call i32 @g_list_length(ptr noundef %i.av) #25 ; 2 uses
  %i.ax = mul nsw i32 %i.aw, 3                    ; 12 uses
  %i.ay = load i32, ptr %i.e, align 4, !tbaa !28  ; 6 uses
  %i.az = icmp slt i32 %i.ax, %i.ay               ; 4 uses
  br i1 %i.az, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !128
  %i.bb = sitofp <2 x i32> %i.q to <2 x float>
  %i.bc = insertelement <2 x float> poison, float %i.u, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.l
  %.0277418 = phi i32 [ %i.ax, %.lr.ph ], [ %i.bq, %bb.l ] ; 2 uses
  %i.be = shl nsw i32 %.0277418, 1
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr [4 x i8], ptr %i.ba, i64 %i.bf ; 2 uses
  %i.bh = load <2 x float>, ptr %i.bg, align 4, !tbaa !12 ; 3 uses
  %i.bi = extractelement <2 x float> %i.bh, i64 0
  %i.bj = fcmp reassoc nsz arcp contract afn oeq float %i.bi, f0xFF7FFFFF
  br i1 %i.bj, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bk = extractelement <2 x float> %i.bh, i64 1 ; 2 uses
  %i.bl = fcmp reassoc nsz arcp contract afn oeq float %i.bk, f0xFF7FFFFF
  br i1 %i.bl, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = fadd reassoc nsz arcp contract afn float %i.bk, -1.000000e+00
  %i.bn = fptosi float %i.bm to i32
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.bo = fmul reassoc nsz arcp contract afn <2 x float> %i.bh, %i.bd
  %i.bp = fsub reassoc nsz arcp contract afn <2 x float> %i.bo, %i.bb
  store <2 x float> %i.bp, ptr %i.bg, align 4, !tbaa !12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1278.ph = phi i32 [ %i.bn, %bb.j ], [ %.0277418, %bb.k ]
  %i.bq = add nsw i32 %.1278.ph, 1                ; 2 uses
  %i.br = icmp slt i32 %i.bq, %i.ay
  br i1 %i.br, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l, %bb.i, %bb.g
  %i.bs = icmp slt i32 %i.ax, %i.ae               ; 3 uses
  br i1 %i.bs, label %.lr.ph423, label %._crit_edge436

.lr.ph423:                                        ; preds = %._crit_edge
  %i.bt = load ptr, ptr %i.b, align 8, !tbaa !128 ; 8 uses
  %i.bu = sitofp <2 x i32> %i.q to <2 x float>    ; 7 uses
  %i.bv = sext i32 %i.ax to i64                   ; 8 uses
  %wide.trip.count = zext nneg i32 %i.ae to i64   ; 6 uses
  %i.bw = sub nsw i64 %wide.trip.count, %i.bv     ; 3 uses
  %min.iters.check = icmp ult i64 %i.bw, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph423
  %i.bx = xor i64 %i.bv, -1
  %i.by = add nsw i64 %i.bx, %wide.trip.count     ; 2 uses
  %i.bz = shl nsw i64 %i.bv, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bt, i64 %i.bz ; 2 uses
  %mul.result = shl nsw i64 %i.by, 3              ; 2 uses
  %mul.overflow = icmp ugt i64 %i.by, 2305843009213693951
  %i.ca = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.cb = icmp ult ptr %i.ca, %scevgep
  %i.cc = getelementptr i8, ptr %i.bt, i64 %i.bz
  %scevgep627 = getelementptr i8, ptr %i.cc, i64 4 ; 2 uses
  %i.cd = getelementptr i8, ptr %scevgep627, i64 %mul.result
  %i.ce = icmp ult ptr %i.cd, %scevgep627
  %i.cf = or i1 %i.ce, %mul.overflow
  %i.cg = or i1 %i.cb, %i.cf
  br i1 %i.cg, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.bw, -8                      ; 3 uses
  %i.ch = add nsw i64 %n.vec, %i.bv
  %broadcast.splat = shufflevector <2 x float> %i.bu, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat629 = shufflevector <2 x float> %i.bu, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert630 = insertelement <8 x float> poison, float %i.u, i64 0
  %broadcast.splat631 = shufflevector <8 x float> %broadcast.splatinsert630, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ci = add i64 %index, %i.bv
  %i.cj = shl i64 %i.ci, 3
  %i.ck = getelementptr i8, ptr %i.bt, i64 %i.cj  ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.ck, align 4, !tbaa !12 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec632 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.cl = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat631
  %i.cm = fsub reassoc nsz arcp contract afn <8 x float> %i.cl, %broadcast.splat
  %i.cn = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec632, %broadcast.splat631
  %i.co = fsub reassoc nsz arcp contract afn <8 x float> %i.cn, %broadcast.splat629
  %interleaved.vec = shufflevector <8 x float> %i.cm, <8 x float> %i.co, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.ck, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !204

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %.lr.ph426, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph423, %middle.block
  %indvars.iv.ph = phi i64 [ %i.bv, %vector.scevcheck ], [ %i.bv, %.lr.ph423 ], [ %i.ch, %middle.block ] ; 4 uses
  %i.cq = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.cq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol.preheader

scalar.ph.prol.preheader:                         ; preds = %scalar.ph.preheader
  %i.cr = insertelement <2 x float> poison, float %i.u, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.prol, %scalar.ph.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.prol.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.prol.preheader ]
  %.idx.prol = shl i64 %indvars.iv.prol, 3
  %i.ct = getelementptr i8, ptr %i.bt, i64 %.idx.prol ; 2 uses
  %i.cu = load <2 x float>, ptr %i.ct, align 4, !tbaa !12
  %i.cv = fmul reassoc nsz arcp contract afn <2 x float> %i.cu, %i.cs
  %i.cw = fsub reassoc nsz arcp contract afn <2 x float> %i.cv, %i.bu
  store <2 x float> %i.cw, ptr %i.ct, align 4, !tbaa !12
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !205

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cx = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.cy = icmp ugt i64 %i.cx, -4
  br i1 %i.cy, label %.lr.ph426, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %i.cz = insertelement <2 x float> poison, float %i.u, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = insertelement <2 x float> poison, float %i.u, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = insertelement <2 x float> poison, float %i.u, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = insertelement <2 x float> poison, float %i.u, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph

.lr.ph426:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.dh = load ptr, ptr %i.b, align 8, !tbaa !128
  %i.di = add nsw <2 x i32> %i.s, splat (i32 -2)
  %i.dj = sext i32 %i.ax to i64
  br label %bb.m

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.3, %scalar.ph ] ; 5 uses
  %.idx = shl i64 %indvars.iv, 3
  %i.dk = getelementptr i8, ptr %i.bt, i64 %.idx  ; 2 uses
  %i.dl = load <2 x float>, ptr %i.dk, align 4, !tbaa !12
  %i.dm = fmul reassoc nsz arcp contract afn <2 x float> %i.dl, %i.da
  %i.dn = fsub reassoc nsz arcp contract afn <2 x float> %i.dm, %i.bu
  store <2 x float> %i.dn, ptr %i.dk, align 4, !tbaa !12
  %indvars.iv.next = shl i64 %indvars.iv, 3
  %i.do = getelementptr i8, ptr %i.bt, i64 %indvars.iv.next
  %i.dp = getelementptr i8, ptr %i.do, i64 8      ; 2 uses
  %i.dq = load <2 x float>, ptr %i.dp, align 4, !tbaa !12
  %i.dr = fmul reassoc nsz arcp contract afn <2 x float> %i.dq, %i.dc
  %i.ds = fsub reassoc nsz arcp contract afn <2 x float> %i.dr, %i.bu
  store <2 x float> %i.ds, ptr %i.dp, align 4, !tbaa !12
  %indvars.iv.next.1 = shl i64 %indvars.iv, 3
  %i.dt = getelementptr i8, ptr %i.bt, i64 %indvars.iv.next.1
  %i.du = getelementptr i8, ptr %i.dt, i64 16     ; 2 uses
  %i.dv = load <2 x float>, ptr %i.du, align 4, !tbaa !12
  %i.dw = fmul reassoc nsz arcp contract afn <2 x float> %i.dv, %i.de
  %i.dx = fsub reassoc nsz arcp contract afn <2 x float> %i.dw, %i.bu
  store <2 x float> %i.dx, ptr %i.du, align 4, !tbaa !12
  %indvars.iv.next.2 = shl i64 %indvars.iv, 3
  %i.dy = getelementptr i8, ptr %i.bt, i64 %indvars.iv.next.2
  %i.dz = getelementptr i8, ptr %i.dy, i64 24     ; 2 uses
  %i.ea = load <2 x float>, ptr %i.dz, align 4, !tbaa !12
  %i.eb = fmul reassoc nsz arcp contract afn <2 x float> %i.ea, %i.dg
  %i.ec = fsub reassoc nsz arcp contract afn <2 x float> %i.eb, %i.bu
  store <2 x float> %i.ec, ptr %i.dz, align 4, !tbaa !12
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.lr.ph426, label %scalar.ph, !llvm.loop !206

bb.m:                                             ; preds = %bb.m, %.lr.ph426
  %indvars.iv503 = phi i64 [ %i.dj, %.lr.ph426 ], [ %indvars.iv.next504, %bb.m ] ; 2 uses
  %.idx600 = shl nsw i64 %indvars.iv503, 3
  %i.ed = getelementptr inbounds i8, ptr %i.dh, i64 %.idx600
  %i.ee = load <2 x float>, ptr %i.ed, align 4, !tbaa !12
  %i.ef = fptosi <2 x float> %i.ee to <2 x i32>   ; 2 uses
  %i.eg = shufflevector <2 x i32> %i.ef, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.eh = shufflevector <2 x i32> %i.ef, <2 x i32> %i.di, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %11 = shufflevector <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>, <4 x i32> %i.eg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %12 = icmp sgt <4 x i32> %i.eh, %11
  %13 = freeze <4 x i1> %12
  %14 = bitcast <4 x i1> %13 to i4
  %15 = icmp eq i4 %14, -1                        ; 2 uses
  %indvars.iv.next504 = add nsw i64 %indvars.iv503, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next504 to i32
  %exitcond506.not.a = icmp eq i32 %i.ae, %lftr.wideiv
  %or.cond612 = select i1 %15, i1 true, i1 %exitcond506.not.a
  br i1 %or.cond612, label %._crit_edge427, label %bb.m

._crit_edge427:                                   ; preds = %bb.m
  br i1 %15, label %bb.p, label %.lr.ph435

.lr.ph435:                                        ; preds = %._crit_edge427
  %i.ei = sdiv <2 x i32> %i.s, splat (i32 2)      ; 3 uses
  %i.ej = load ptr, ptr %i.b, align 8, !tbaa !128 ; 5 uses
  %i.ek = extractelement <2 x i32> %i.ei, i64 0
  %i.el = sitofp reassoc nsz arcp contract afn i32 %i.ek to float ; 2 uses
  %i.em = sext i32 %i.ax to i64                   ; 3 uses
  %wide.trip.count510 = zext nneg i32 %i.ae to i64
  %i.en = sub nsw i64 %wide.trip.count, %i.bv     ; 3 uses
  %min.iters.check634 = icmp ult i64 %i.en, 32
  br i1 %min.iters.check634, label %scalar.ph633.preheader, label %vector.ph635

vector.ph635:                                     ; preds = %.lr.ph435
  %n.vec636 = and i64 %i.en, -32                  ; 3 uses
  %i.eo = add nsw i64 %n.vec636, %i.em
  %broadcast.splatinsert637 = insertelement <8 x float> poison, float %i.el, i64 0
  %broadcast.splat638 = shufflevector <8 x float> %broadcast.splatinsert637, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat640 = shufflevector <2 x i32> %i.ei, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %broadcast.splatinsert641 = insertelement <8 x i64> poison, i64 %i.em, i64 0
  %broadcast.splat642 = shufflevector <8 x i64> %broadcast.splatinsert641, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat642, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body643

vector.body643:                                   ; preds = %vector.body643, %vector.ph635
  %index644 = phi i64 [ 0, %vector.ph635 ], [ %index.next665, %vector.body643 ]
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph635 ], [ %vec.ind.next, %vector.body643 ] ; 5 uses
  %vector.recur = phi <8 x i32> [ <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 -9999>, %vector.ph635 ], [ %i.ew, %vector.body643 ]
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph635 ], [ %predphi, %vector.body643 ]
  %vec.phi645 = phi <8 x i32> [ zeroinitializer, %vector.ph635 ], [ %predphi662, %vector.body643 ]
  %vec.phi646 = phi <8 x i32> [ zeroinitializer, %vector.ph635 ], [ %predphi663, %vector.body643 ]
  %vec.phi647 = phi <8 x i32> [ zeroinitializer, %vector.ph635 ], [ %predphi664, %vector.body643 ]
  %i.ep = shl <8 x i64> %vec.ind, splat (i64 3)
  %step.add = shl <8 x i64> %vec.ind, splat (i64 3)
  %i.eq = add <8 x i64> %step.add, splat (i64 64)
  %step.add.2 = shl <8 x i64> %vec.ind, splat (i64 3)
  %i.er = add <8 x i64> %step.add.2, splat (i64 128)
  %step.add.3 = shl <8 x i64> %vec.ind, splat (i64 3)
  %i.es = add <8 x i64> %step.add.3, splat (i64 192)
  %wide.gep = getelementptr i8, ptr %i.ej, <8 x i64> %i.ep ; 2 uses
  %wide.gep648 = getelementptr i8, ptr %i.ej, <8 x i64> %i.eq ; 2 uses
  %wide.gep649 = getelementptr i8, ptr %i.ej, <8 x i64> %i.er ; 2 uses
  %wide.gep650 = getelementptr i8, ptr %i.ej, <8 x i64> %i.es ; 2 uses
  %wide.gep651 = getelementptr i8, <8 x ptr> %wide.gep, i64 4
  %wide.gep652 = getelementptr i8, <8 x ptr> %wide.gep648, i64 4
  %wide.gep653 = getelementptr i8, <8 x ptr> %wide.gep649, i64 4
  %wide.gep654 = getelementptr i8, <8 x ptr> %wide.gep650, i64 4
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep651, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.masked.gather655 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep652, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.masked.gather656 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep653, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.masked.gather657 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep654, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %i.et = fptosi <8 x float> %wide.masked.gather to <8 x i32> ; 4 uses
  %i.eu = fptosi <8 x float> %wide.masked.gather655 to <8 x i32> ; 4 uses
  %i.ev = fptosi <8 x float> %wide.masked.gather656 to <8 x i32> ; 4 uses
  %i.ew = fptosi <8 x float> %wide.masked.gather657 to <8 x i32> ; 5 uses
  %i.ex = shufflevector <8 x i32> %vector.recur, <8 x i32> %i.et, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ey = shufflevector <8 x i32> %i.et, <8 x i32> %i.eu, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ez = shufflevector <8 x i32> %i.eu, <8 x i32> %i.ev, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.fa = shufflevector <8 x i32> %i.ev, <8 x i32> %i.ew, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.fb = icmp ne <8 x i32> %i.ex, %i.et
  %i.fc = icmp ne <8 x i32> %i.ey, %i.eu
  %i.fd = icmp ne <8 x i32> %i.ez, %i.ev
  %i.fe = icmp ne <8 x i32> %i.fa, %i.ew
  %i.ff = icmp eq <8 x i32> %broadcast.splat640, %i.et
  %i.fg = icmp eq <8 x i32> %broadcast.splat640, %i.eu
  %i.fh = icmp eq <8 x i32> %broadcast.splat640, %i.ev
  %i.fi = icmp eq <8 x i32> %broadcast.splat640, %i.ew
  %i.fj = select <8 x i1> %i.fb, <8 x i1> %i.ff, <8 x i1> zeroinitializer ; 2 uses
  %i.fk = select <8 x i1> %i.fc, <8 x i1> %i.fg, <8 x i1> zeroinitializer ; 2 uses
  %i.fl = select <8 x i1> %i.fd, <8 x i1> %i.fh, <8 x i1> zeroinitializer ; 2 uses
  %i.fm = select <8 x i1> %i.fe, <8 x i1> %i.fi, <8 x i1> zeroinitializer ; 2 uses
  %wide.masked.gather658 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> %i.fj, <8 x float> poison), !tbaa !12
  %wide.masked.gather659 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep648, <8 x i1> %i.fk, <8 x float> poison), !tbaa !12
  %wide.masked.gather660 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep649, <8 x i1> %i.fl, <8 x float> poison), !tbaa !12
  %wide.masked.gather661 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep650, <8 x i1> %i.fm, <8 x float> poison), !tbaa !12
  %i.fn = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.gather658, %broadcast.splat638
  %i.fo = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.gather659, %broadcast.splat638
  %i.fp = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.gather660, %broadcast.splat638
  %i.fq = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.gather661, %broadcast.splat638
  %narrow = select <8 x i1> %i.fj, <8 x i1> %i.fn, <8 x i1> zeroinitializer
  %i.fr = zext <8 x i1> %narrow to <8 x i32>
  %predphi = add <8 x i32> %vec.phi, %i.fr        ; 2 uses
  %narrow686 = select <8 x i1> %i.fk, <8 x i1> %i.fo, <8 x i1> zeroinitializer
  %i.fs = zext <8 x i1> %narrow686 to <8 x i32>
  %predphi662 = add <8 x i32> %vec.phi645, %i.fs  ; 2 uses
  %narrow687 = select <8 x i1> %i.fl, <8 x i1> %i.fp, <8 x i1> zeroinitializer
  %i.ft = zext <8 x i1> %narrow687 to <8 x i32>
  %predphi663 = add <8 x i32> %vec.phi646, %i.ft  ; 2 uses
  %narrow688 = select <8 x i1> %i.fm, <8 x i1> %i.fq, <8 x i1> zeroinitializer
  %i.fu = zext <8 x i1> %narrow688 to <8 x i32>
  %predphi664 = add <8 x i32> %vec.phi647, %i.fu  ; 2 uses
  %index.next665 = add nuw i64 %index644, 32      ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, splat (i64 32)
  %i.fv = icmp eq i64 %index.next665, %n.vec636
  br i1 %i.fv, label %middle.block666, label %vector.body643, !llvm.loop !207

middle.block666:                                  ; preds = %vector.body643
  %bin.rdx = add <8 x i32> %predphi662, %predphi
  %bin.rdx667 = add <8 x i32> %predphi663, %bin.rdx
  %bin.rdx668 = add <8 x i32> %predphi664, %bin.rdx667
  %i.fw = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx668) ; 2 uses
  %vector.recur.extract = extractelement <8 x i32> %i.ew, i64 7
  %cmp.n669 = icmp eq i64 %i.en, %n.vec636
  br i1 %cmp.n669, label %._crit_edge436, label %scalar.ph633.preheader

scalar.ph633.preheader:                           ; preds = %.lr.ph435, %middle.block666
  %indvars.iv507.ph = phi i64 [ %i.em, %.lr.ph435 ], [ %i.eo, %middle.block666 ]
  %.0272432.ph = phi i32 [ -9999, %.lr.ph435 ], [ %vector.recur.extract, %middle.block666 ]
  %.0273431.ph = phi i32 [ 0, %.lr.ph435 ], [ %i.fw, %middle.block666 ]
  %i.fx = extractelement <2 x i32> %i.ei, i64 1
  br label %scalar.ph633

._crit_edge436:                                   ; preds = %bb.o, %middle.block666, %._crit_edge
  %.0273.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.fw, %middle.block666 ], [ %.1274, %bb.o ] ; 2 uses
  %.not314 = trunc i32 %.0273.lcssa to i1
  %spec.select = and i32 %.0273.lcssa, 1
  br label %bb.p

scalar.ph633:                                     ; preds = %scalar.ph633.preheader, %bb.o
  %indvars.iv507 = phi i64 [ %indvars.iv.next508, %bb.o ], [ %indvars.iv507.ph, %scalar.ph633.preheader ] ; 2 uses
  %.0272432 = phi i32 [ %i.gb, %bb.o ], [ %.0272432.ph, %scalar.ph633.preheader ]
  %.0273431 = phi i32 [ %.1274, %bb.o ], [ %.0273431.ph, %scalar.ph633.preheader ] ; 2 uses
  %.idx601 = shl i64 %indvars.iv507, 3
  %i.fy = getelementptr i8, ptr %i.ej, i64 %.idx601 ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 4
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !12
  %i.gb = fptosi float %i.ga to i32               ; 3 uses
  %.not315 = icmp ne i32 %.0272432, %i.gb
  %i.gc = icmp eq i32 %i.fx, %i.gb
  %or.cond349 = select i1 %.not315, i1 %i.gc, i1 false
  br i1 %or.cond349, label %bb.n, label %bb.o

bb.n:                                             ; preds = %scalar.ph633
  %i.gd = load float, ptr %i.fy, align 4, !tbaa !12
  %i.ge = fcmp reassoc nsz arcp contract afn ogt float %i.gd, %i.el
  %i.gf = zext i1 %i.ge to i32
  %spec.select350 = add nsw i32 %.0273431, %i.gf
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %scalar.ph633
  %.1274 = phi i32 [ %.0273431, %scalar.ph633 ], [ %spec.select350, %bb.n ] ; 2 uses
  %indvars.iv.next508 = add nsw i64 %indvars.iv507, 1 ; 2 uses
  %exitcond511.not = icmp eq i64 %indvars.iv.next508, %wide.trip.count510
  br i1 %exitcond511.not, label %._crit_edge436, label %scalar.ph633, !llvm.loop !208

bb.p:                                             ; preds = %._crit_edge436, %._crit_edge427
  %.4295 = phi i1 [ true, %._crit_edge427 ], [ %.not314, %._crit_edge436 ] ; 2 uses
  %.1285 = phi i32 [ 0, %._crit_edge427 ], [ %spec.select, %._crit_edge436 ] ; 2 uses
  %.pre537.pre = load ptr, ptr %i.c, align 8, !tbaa !128 ; 10 uses
  br i1 %i.az, label %.lr.ph440, label %.thread390

.lr.ph440:                                        ; preds = %bb.p
  %i.gg = add nsw <2 x i32> %i.s, splat (i32 -2)
  %i.gh = shufflevector <2 x i32> %i.gg, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gi = sitofp <4 x i32> %i.gh to <4 x float>
  %i.gj = shufflevector <4 x float> %i.gi, <4 x float> <float poison, float poison, float 1.000000e+00, float 1.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph440, %bb.u
  %.0269438 = phi i32 [ %i.ax, %.lr.ph440 ], [ %i.hb, %bb.u ] ; 2 uses
  %i.gk = shl nsw i32 %.0269438, 1
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds [4 x i8], ptr %.pre537.pre, i64 %i.gl
  %i.gn = load <2 x float>, ptr %i.gm, align 4, !tbaa !12 ; 3 uses
  %i.go = extractelement <2 x float> %i.gn, i64 0
  %i.gp = fcmp reassoc nsz arcp contract afn oeq float %i.go, f0xFF7FFFFF
  br i1 %i.gp, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.gq = extractelement <2 x float> %i.gn, i64 1 ; 2 uses
  %i.gr = fcmp reassoc nsz arcp contract afn oeq float %i.gq, f0xFF7FFFFF
  br i1 %i.gr, label %.thread390, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gs = fadd reassoc nsz arcp contract afn float %i.gq, -1.000000e+00
  %i.gt = fptosi float %i.gs to i32
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.gu = shufflevector <2 x float> %i.gn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.gv = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.gu, %i.gj
  %i.gw = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.gu, %i.gj
  %i.gx = shufflevector <4 x i1> %i.gv, <4 x i1> %i.gw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gy = freeze <4 x i1> %i.gx
  %i.gz = bitcast <4 x i1> %i.gy to i4
  %i.ha = icmp eq i4 %i.gz, -1
  br i1 %i.ha, label %.thread390.thread.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1270 = phi i32 [ %i.gt, %bb.s ], [ %.0269438, %bb.t ]
  %i.hb = add nsw i32 %.1270, 1                   ; 2 uses
  %i.hc = icmp slt i32 %i.hb, %i.ay
  br i1 %i.hc, label %bb.q, label %.thread390

.thread390:                                       ; preds = %bb.u, %bb.r, %bb.p
  %.pre536 = load ptr, ptr %i.b, align 8, !tbaa !128 ; 2 uses
  br i1 %.4295, label %.thread390.thread, label %bb.v

bb.v:                                             ; preds = %.thread390
  call void @free(ptr noundef %.pre536) #25
  call void @free(ptr noundef %.pre537.pre) #25
  br label %bb.cu

.thread390.thread.loopexit:                       ; preds = %bb.t
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !128
  br label %.thread390.thread

.thread390.thread:                                ; preds = %.thread390.thread.loopexit, %.thread390
  %i.hd = phi ptr [ %.pre, %.thread390.thread.loopexit ], [ %.pre536, %.thread390 ] ; 11 uses
  br i1 %i.az, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.thread390.thread, %bb.z
  %.06590.i = phi i32 [ %i.hw, %bb.z ], [ %i.ax, %.thread390.thread ] ; 2 uses
  %i.he = phi <2 x float> [ %i.hu, %bb.z ], [ splat (float f0x00800000), %.thread390.thread ] ; 4 uses
  %i.hf = phi <2 x float> [ %i.hv, %bb.z ], [ splat (float f0x7F7FFFFF), %.thread390.thread ] ; 4 uses
  %i.hg = shl nsw i32 %.06590.i, 1
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds [4 x i8], ptr %.pre537.pre, i64 %i.hh
  %i.hj = load <2 x float>, ptr %i.hi, align 4, !tbaa !12 ; 6 uses
  %i.hk = extractelement <2 x float> %i.hj, i64 0
  %i.hl = fcmp reassoc nsz arcp contract afn oeq float %i.hk, f0xFF7FFFFF
  br i1 %i.hl, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.lr.ph.i
  %i.hm = extractelement <2 x float> %i.hj, i64 1 ; 2 uses
  %i.hn = fcmp reassoc nsz arcp contract afn oeq float %i.hm, f0xFF7FFFFF
  br i1 %i.hn, label %._crit_edge.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ho = fadd reassoc nsz arcp contract afn float %i.hm, -1.000000e+00
  %i.hp = fptosi float %i.ho to i32
  br label %bb.z

bb.y:                                             ; preds = %.lr.ph.i
  %i.hq = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.hj, %i.he
  %i.hr = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.hj, %i.hf
  %i.hs = select <2 x i1> %i.hr, <2 x float> %i.hj, <2 x float> %i.hf
  %i.ht = select <2 x i1> %i.hq, <2 x float> %i.hj, <2 x float> %i.he
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.166.ph.i = phi i32 [ %i.hp, %bb.x ], [ %.06590.i, %bb.y ]
  %i.hu = phi <2 x float> [ %i.he, %bb.x ], [ %i.ht, %bb.y ] ; 2 uses
  %i.hv = phi <2 x float> [ %i.hf, %bb.x ], [ %i.hs, %bb.y ] ; 2 uses
  %i.hw = add nsw i32 %.166.ph.i, 1               ; 2 uses
  %i.hx = icmp slt i32 %i.hw, %i.ay
  br i1 %i.hx, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.z, %bb.w, %.thread390.thread
  %i.hy = phi <2 x float> [ splat (float f0x00800000), %.thread390.thread ], [ %i.hu, %bb.z ], [ %i.he, %bb.w ] ; 3 uses
  %i.hz = phi <2 x float> [ splat (float f0x7F7FFFFF), %.thread390.thread ], [ %i.hv, %bb.z ], [ %i.hf, %bb.w ] ; 3 uses
  br i1 %i.bs, label %.lr.ph107.preheader.i, label %_path_bounding_box_raw.exit

.lr.ph107.preheader.i:                            ; preds = %._crit_edge.i
  %i.ia = sext i32 %i.ax to i64                   ; 4 uses
  %wide.trip.count.i = zext nneg i32 %i.ae to i64 ; 3 uses
  %i.ib = sub nsw i64 %wide.trip.count.i, %i.ia
  %xtraiter698 = and i64 %i.ib, 3                 ; 2 uses
  %lcmp.mod699.not = icmp eq i64 %xtraiter698, 0
  br i1 %lcmp.mod699.not, label %.lr.ph107.i.prol.loopexit, label %.lr.ph107.i.prol

.lr.ph107.i.prol:                                 ; preds = %.lr.ph107.preheader.i, %.lr.ph107.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph107.i.prol ], [ %i.ia, %.lr.ph107.preheader.i ] ; 2 uses
  %i.ic = phi <2 x float> [ %i.ih, %.lr.ph107.i.prol ], [ %i.hz, %.lr.ph107.preheader.i ] ; 2 uses
  %i.id = phi <2 x float> [ %i.ij, %.lr.ph107.i.prol ], [ %i.hy, %.lr.ph107.preheader.i ] ; 2 uses
  %prol.iter700 = phi i64 [ %prol.iter700.next, %.lr.ph107.i.prol ], [ 0, %.lr.ph107.preheader.i ]
  %.idx.i.prol = shl nsw i64 %indvars.iv.i.prol, 3
  %i.ie = getelementptr inbounds i8, ptr %i.hd, i64 %.idx.i.prol
  %i.if = load <2 x float>, ptr %i.ie, align 4, !tbaa !12 ; 4 uses
  %i.ig = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.if, %i.ic
  %i.ih = select <2 x i1> %i.ig, <2 x float> %i.if, <2 x float> %i.ic ; 3 uses
  %i.ii = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.if, %i.id
  %i.ij = select <2 x i1> %i.ii, <2 x float> %i.if, <2 x float> %i.id ; 3 uses
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter700.next = add i64 %prol.iter700, 1   ; 2 uses
  %prol.iter700.cmp.not = icmp eq i64 %prol.iter700.next, %xtraiter698
  br i1 %prol.iter700.cmp.not, label %.lr.ph107.i.prol.loopexit, label %.lr.ph107.i.prol, !llvm.loop !209

.lr.ph107.i.prol.loopexit:                        ; preds = %.lr.ph107.i.prol, %.lr.ph107.preheader.i
  %.lcssa694.unr = phi <2 x float> [ poison, %.lr.ph107.preheader.i ], [ %i.ih, %.lr.ph107.i.prol ]
  %.lcssa.unr = phi <2 x float> [ poison, %.lr.ph107.preheader.i ], [ %i.ij, %.lr.ph107.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %i.ia, %.lr.ph107.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph107.i.prol ]
  %.unr = phi <2 x float> [ %i.hz, %.lr.ph107.preheader.i ], [ %i.ih, %.lr.ph107.i.prol ]
  %.unr701 = phi <2 x float> [ %i.hy, %.lr.ph107.preheader.i ], [ %i.ij, %.lr.ph107.i.prol ]
  %i.ik = sub nsw i64 %i.ia, %wide.trip.count.i
  %i.il = icmp ugt i64 %i.ik, -4
  br i1 %i.il, label %_path_bounding_box_raw.exit, label %.lr.ph107.i

.lr.ph107.i:                                      ; preds = %.lr.ph107.i.prol.loopexit, %.lr.ph107.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph107.i ], [ %indvars.iv.i.unr, %.lr.ph107.i.prol.loopexit ] ; 5 uses
  %i.im = phi <2 x float> [ %i.jm, %.lr.ph107.i ], [ %.unr, %.lr.ph107.i.prol.loopexit ] ; 2 uses
  %i.in = phi <2 x float> [ %i.jo, %.lr.ph107.i ], [ %.unr701, %.lr.ph107.i.prol.loopexit ] ; 2 uses
  %.idx.i = shl nsw i64 %indvars.iv.i, 3
  %i.io = getelementptr inbounds i8, ptr %i.hd, i64 %.idx.i
  %i.ip = load <2 x float>, ptr %i.io, align 4, !tbaa !12 ; 4 uses
  %i.iq = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ip, %i.im
  %i.ir = select <2 x i1> %i.iq, <2 x float> %i.ip, <2 x float> %i.im ; 2 uses
  %i.is = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ip, %i.in
  %i.it = select <2 x i1> %i.is, <2 x float> %i.ip, <2 x float> %i.in ; 2 uses
  %indvars.iv.next.i = shl i64 %indvars.iv.i, 3
  %i.iu = getelementptr i8, ptr %i.hd, i64 %indvars.iv.next.i
  %i.iv = getelementptr i8, ptr %i.iu, i64 8
  %i.iw = load <2 x float>, ptr %i.iv, align 4, !tbaa !12 ; 4 uses
  %i.ix = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.iw, %i.ir
  %i.iy = select <2 x i1> %i.ix, <2 x float> %i.iw, <2 x float> %i.ir ; 2 uses
  %i.iz = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.iw, %i.it
  %i.ja = select <2 x i1> %i.iz, <2 x float> %i.iw, <2 x float> %i.it ; 2 uses
  %indvars.iv.next.i.1 = shl i64 %indvars.iv.i, 3
  %i.jb = getelementptr i8, ptr %i.hd, i64 %indvars.iv.next.i.1
  %i.jc = getelementptr i8, ptr %i.jb, i64 16
  %i.jd = load <2 x float>, ptr %i.jc, align 4, !tbaa !12 ; 4 uses
  %i.je = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.jd, %i.iy
  %i.jf = select <2 x i1> %i.je, <2 x float> %i.jd, <2 x float> %i.iy ; 2 uses
  %i.jg = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.jd, %i.ja
  %i.jh = select <2 x i1> %i.jg, <2 x float> %i.jd, <2 x float> %i.ja ; 2 uses
  %indvars.iv.next.i.2 = shl i64 %indvars.iv.i, 3
  %i.ji = getelementptr i8, ptr %i.hd, i64 %indvars.iv.next.i.2
  %i.jj = getelementptr i8, ptr %i.ji, i64 24
  %i.jk = load <2 x float>, ptr %i.jj, align 4, !tbaa !12 ; 4 uses
  %i.jl = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.jk, %i.jf
  %i.jm = select <2 x i1> %i.jl, <2 x float> %i.jk, <2 x float> %i.jf ; 2 uses
  %i.jn = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.jk, %i.jh
  %i.jo = select <2 x i1> %i.jn, <2 x float> %i.jk, <2 x float> %i.jh ; 2 uses
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_path_bounding_box_raw.exit, label %.lr.ph107.i

_path_bounding_box_raw.exit:                      ; preds = %.lr.ph107.i.prol.loopexit, %.lr.ph107.i, %._crit_edge.i
  %i.jp = phi <2 x float> [ %i.hz, %._crit_edge.i ], [ %.lcssa694.unr, %.lr.ph107.i.prol.loopexit ], [ %i.jm, %.lr.ph107.i ] ; 2 uses
  %i.jq = phi <2 x float> [ %i.hy, %._crit_edge.i ], [ %.lcssa.unr, %.lr.ph107.i.prol.loopexit ], [ %i.jo, %.lr.ph107.i ] ; 3 uses
  %i.jr = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !124 ; 2 uses
  %i.js = and i32 %i.jr, 4112
  %or.cond351.not = icmp eq i32 %i.js, 4112
  br i1 %or.cond351.not, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_path_bounding_box_raw.exit
  %i.jt = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.ju = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #25 ; 0 uses
  %i.jv = load i64, ptr %8, align 8, !tbaa !126
  %i.jw = add nsw i64 %i.jv, -1290608000
  %i.jx = sitofp reassoc nsz arcp contract afn i64 %i.jw to double
  %i.jy = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !127
  %i.ka = sitofp reassoc nsz arcp contract afn i64 %i.jz to double
  %i.kb = fmul reassoc nnan nsz arcp contract afn double %i.ka, f0x3EB0C6F7A0B5ED8D
  %i.kc = fadd reassoc nsz arcp contract afn double %i.kb, %i.jx ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
end_hunk_0
