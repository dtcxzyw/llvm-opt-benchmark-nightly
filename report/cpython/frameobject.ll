Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/frameobject?download=true
inline.NumInlined: 241
inline.NumDeleted: 78
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@frame_lineno_set:bb.a
  %i.bd = getelementptr [4 x i8], ptr %i.at, i64 %i.bc
  store i32 %i.ax, ptr %i.bd, align 4, !tbaa !12
  %i.be = load i32, ptr %i.aw, align 8, !tbaa !142
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1.i.i = phi i32 [ %i.be, %bb.t ], [ %.01422.i.i, %bb.s ]
  %i.bf = call i32 @_PyLineTable_NextAddressRange(ptr noundef nonnull %3) #12
  %.not.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i, label %marklines.exit.thread143.i, label %bb.s, !llvm.loop !117

marklines.exit.thread.i:                          ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %.critedge.i

marklines.exit.thread143.i:                       ; preds = %bb.u, %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br i1 %.not24.i.i, label %first_line_not_before.exit.thread.i, label %.lr.ph.preheader.i134.i

.lr.ph.preheader.i134.i:                          ; preds = %marklines.exit.thread143.i
  %wide.trip.count.i.i = and i64 %.val.i, 2147483647 ; 2 uses
  %i.bg = add nsw i64 %wide.trip.count.i.i, -1
  %xtraiter = and i64 %.val.i, 3                  ; 3 uses
  %i.bh = icmp ult i64 %i.bg, 3
  br i1 %i.bh, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i134.i.new

.lr.ph.preheader.i134.i.new:                      ; preds = %.lr.ph.preheader.i134.i
  %unroll_iter = and i64 %.val.i, 2147483644
  br label %.lr.ph.i.i

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.preheader.i134.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i134.i ], [ %indvars.iv.next.i.i.3, %._crit_edge.i.i.unr-lcssa ]
  %.01316.i.i.epil.init = phi i32 [ 2147483647, %.lr.ph.preheader.i134.i ], [ %.1.fr.i.i.3, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod25 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod25)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %.01316.i.i.epil = phi i32 [ %.01316.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %.1.fr.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  %i.bi = getelementptr [4 x i8], ptr %i.at, i64 %indvars.iv.i.i.epil
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !12 ; 2 uses
  %.not.i135.i.epil = icmp slt i32 %i.bj, %i.ah
  %i.bk = call i32 @llvm.smin.i32(i32 %i.bj, i32 %.01316.i.i.epil)
  %.1.i136.i.epil = select i1 %.not.i135.i.epil, i32 %.01316.i.i.epil, i32 %i.bk
  %.1.fr.i.i.epil = freeze i32 %.1.i136.i.epil    ; 2 uses
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil, !llvm.loop !118

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.epil, %._crit_edge.i.i.unr-lcssa
  %.1.fr.i.i.lcssa = phi i32 [ %.1.fr.i.i.3, %._crit_edge.i.i.unr-lcssa ], [ %.1.fr.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %or.cond.i = icmp ugt i32 %.1.fr.i.i.lcssa, 2147483646
  br i1 %or.cond.i, label %first_line_not_before.exit.thread.i, label %bb.v

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i134.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i134.i.new ], [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ] ; 5 uses
  %.01316.i.i = phi i32 [ 2147483647, %.lr.ph.preheader.i134.i.new ], [ %.1.fr.i.i.3, %.lr.ph.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i134.i.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.bl = getelementptr [4 x i8], ptr %i.at, i64 %indvars.iv.i.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !12 ; 2 uses
  %.not.i135.i = icmp slt i32 %i.bm, %i.ah
  %i.bn = call i32 @llvm.smin.i32(i32 %i.bm, i32 %.01316.i.i)
  %.1.i136.i = select i1 %.not.i135.i, i32 %.01316.i.i, i32 %i.bn
  %.1.fr.i.i = freeze i32 %.1.i136.i              ; 2 uses
  %i.bo = getelementptr [4 x i8], ptr %i.at, i64 %indvars.iv.i.i
  %i.bp = getelementptr i8, ptr %i.bo, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !12 ; 2 uses
  %.not.i135.i.1 = icmp slt i32 %i.bq, %i.ah
  %i.br = call i32 @llvm.smin.i32(i32 %i.bq, i32 %.1.fr.i.i)
  %.1.i136.i.1 = select i1 %.not.i135.i.1, i32 %.1.fr.i.i, i32 %i.br
  %.1.fr.i.i.1 = freeze i32 %.1.i136.i.1          ; 2 uses
  %i.bs = getelementptr [4 x i8], ptr %i.at, i64 %indvars.iv.i.i
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !12 ; 2 uses
  %.not.i135.i.2 = icmp slt i32 %i.bu, %i.ah
  %i.bv = call i32 @llvm.smin.i32(i32 %i.bu, i32 %.1.fr.i.i.1)
  %.1.i136.i.2 = select i1 %.not.i135.i.2, i32 %.1.fr.i.i.1, i32 %i.bv
  %.1.fr.i.i.2 = freeze i32 %.1.i136.i.2          ; 2 uses
  %i.bw = getelementptr [4 x i8], ptr %i.at, i64 %indvars.iv.i.i
  %i.bx = getelementptr i8, ptr %i.bw, i64 12
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !12 ; 2 uses
  %.not.i135.i.3 = icmp slt i32 %i.by, %i.ah
  %i.bz = call i32 @llvm.smin.i32(i32 %i.by, i32 %.1.fr.i.i.2)
  %.1.i136.i.3 = select i1 %.not.i135.i.3, i32 %.1.fr.i.i.2, i32 %i.bz
  %.1.fr.i.i.3 = freeze i32 %.1.i136.i.3          ; 3 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !119

first_line_not_before.exit.thread.i:              ; preds = %._crit_edge.i.i, %marklines.exit.thread143.i
  %i.ca = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !33
  %i.cb = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ca, ptr noundef nonnull @.str.51, i32 noundef %i.ah) #12 ; 0 uses
  call void @PyMem_Free(ptr noundef nonnull %i.at) #12
  br label %.critedge.i

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.cc = call fastcc ptr @mark_stacks(ptr noundef nonnull %i.e, i32 noundef %i.ao) ; 4 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.w, label %.lr.ph.preheader.i

bb.w:                                             ; preds = %bb.v
  call void @PyMem_Free(ptr noundef nonnull %i.at) #12
  br label %.critedge.i

.lr.ph.preheader.i:                               ; preds = %bb.v
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !38  ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 56
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !69
  %.val133.i = load i64, ptr %i.ce, align 8
  %i.ch = and i64 %.val133.i, 8589934590
  %i.ci = ptrtoint ptr %i.cg to i64
  %.neg151.i = add i64 %i.ci, 8589934384
  %i.cj = sub i64 %.neg151.i, %i.ch
  %i.ck = shl i64 %i.cj, 31
  %i.cl = ashr i64 %i.ck, 32
  %i.cm = getelementptr [8 x i8], ptr %i.cc, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !77 ; 5 uses
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %explain_incompatible_stack.exit.i
  call void @PyMem_Free(ptr noundef nonnull %i.cc) #12
  call void @PyMem_Free(ptr noundef nonnull %i.at) #12
  %.not124.i = icmp eq i32 %.2106.i, 0
  br i1 %.not124.i, label %.preheader152.i, label %bb.ai

.preheader152.i:                                  ; preds = %._crit_edge.i
  %i.co = getelementptr i8, ptr %i.e, i64 72      ; 3 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !60 ; 3 uses
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph172.i, label %.loopexit.i

.lr.ph172.i:                                      ; preds = %.preheader152.i
  %i.cr = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.cs = getelementptr i8, ptr %i.cr, i64 80     ; 2 uses
  %wide.trip.count187.i = zext nneg i32 %i.cp to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.cp, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph172.i
  %n.vec = and i64 %wide.trip.count187.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.cz, %vector.body ]
  %vec.phi18 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.da, %vector.body ]
  %i.ct = getelementptr [8 x i8], ptr %i.cs, i64 %index ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 16
  %wide.load = load <2 x i64>, ptr %i.ct, align 8, !tbaa !16
  %wide.load19 = load <2 x i64>, ptr %i.cu, align 8, !tbaa !16
  %i.cv = icmp eq <2 x i64> %wide.load, splat (i64 1)
  %i.cw = icmp eq <2 x i64> %wide.load19, splat (i64 1)
  %i.cx = zext <2 x i1> %i.cv to <2 x i32>
  %i.cy = zext <2 x i1> %i.cw to <2 x i32>
  %i.cz = add <2 x i32> %vec.phi, %i.cx           ; 2 uses
  %i.da = add <2 x i32> %vec.phi18, %i.cy         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.da, %i.cz
  %i.dc = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count187.i
  br i1 %cmp.n, label %._crit_edge173.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph172.i, %middle.block
  %indvars.iv184.i.ph = phi i64 [ 0, %.lr.ph172.i ], [ %n.vec, %middle.block ]
  %.097170.i.ph = phi i32 [ 0, %.lr.ph172.i ], [ %i.dc, %middle.block ]
  br label %scalar.ph

.lr.ph.i:                                         ; preds = %explain_incompatible_stack.exit.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %explain_incompatible_stack.exit.i ] ; 4 uses
  %.0101162.i = phi ptr [ @.str.52, %.lr.ph.preheader.i ], [ %.2103.i, %explain_incompatible_stack.exit.i ] ; 3 uses
  %.0104161.i = phi i32 [ -1, %.lr.ph.preheader.i ], [ %.2106.i, %explain_incompatible_stack.exit.i ] ; 3 uses
  %.0109160.i = phi i32 [ -1, %.lr.ph.preheader.i ], [ %.2111.i, %explain_incompatible_stack.exit.i ] ; 11 uses
  %.0112158.i = phi i64 [ -1, %.lr.ph.preheader.i ], [ %.2114.i, %explain_incompatible_stack.exit.i ] ; 12 uses
  %i.dd = getelementptr [4 x i8], ptr %i.at, i64 %indvars.iv.i
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !12
  %i.df = icmp eq i32 %i.de, %.1.fr.i.i.lcssa
  br i1 %i.df, label %bb.x, label %explain_incompatible_stack.exit.i

bb.x:                                             ; preds = %.lr.ph.i
  %i.dg = getelementptr [8 x i8], ptr %i.cc, i64 %indvars.iv.i
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !77 ; 8 uses
  %i.di = or i64 %i.dh, %i.cn
  %or.cond.not.i.i = icmp sgt i64 %i.di, -1
  br i1 %or.cond.not.i.i, label %.preheader37.i.i, label %compatible_stack.exit.thread.i

.preheader37.i.i:                                 ; preds = %bb.x, %.preheader37.i.i
  %.017.i.i = phi i64 [ %4, %.preheader37.i.i ], [ %i.cn, %bb.x ] ; 4 uses
  %i.dj = icmp sgt i64 %.017.i.i, %i.dh
  %4 = lshr i64 %.017.i.i, 3
  br i1 %i.dj, label %.preheader37.i.i, label %.preheader.i137.i, !llvm.loop !121

.preheader.i137.i:                                ; preds = %.preheader37.i.i
  %.not39.i.i = icmp eq i64 %.017.i.i, 0
  br i1 %.not39.i.i, label %compatible_stack.exit.i, label %.lr.ph.i138.i

.lr.ph.i138.i:                                    ; preds = %.preheader.i137.i, %compatible_kind.exit.thread29.i.i
  %.01641.i.i = phi i64 [ %6, %compatible_kind.exit.thread29.i.i ], [ %i.dh, %.preheader.i137.i ] ; 2 uses
  %.11840.i.i = phi i64 [ %5, %compatible_kind.exit.thread29.i.i ], [ %.017.i.i, %.preheader.i137.i ] ; 2 uses
  %i.dk = trunc i64 %.11840.i.i to i32
  %i.dl = and i32 %i.dk, 7                        ; 2 uses
  %i.dm = trunc i64 %.01641.i.i to i32
  %i.dn = and i32 %i.dm, 7                        ; 2 uses
  switch i32 %i.dn, label %.split.i.i [
    i32 0, label %compatible_stack.exit.thread.i
    i32 3, label %compatible_kind.exit.i.i
    i32 4, label %compatible_kind.exit.thread29.i.i
  ]

.split.i.i:                                       ; preds = %.lr.ph.i138.i
  %i.do = icmp eq i32 %i.dl, %i.dn
  br i1 %i.do, label %compatible_kind.exit.thread29.i.i, label %compatible_stack.exit.thread.i

compatible_kind.exit.i.i:                         ; preds = %.lr.ph.i138.i
  %.not43.i.i = icmp eq i32 %i.dl, 4
  br i1 %.not43.i.i, label %compatible_stack.exit.thread.i, label %compatible_kind.exit.thread29.i.i

compatible_kind.exit.thread29.i.i:                ; preds = %compatible_kind.exit.i.i, %.split.i.i, %.lr.ph.i138.i
  %5 = lshr i64 %.11840.i.i, 3                    ; 2 uses
  %6 = lshr i64 %.01641.i.i, 3                    ; 2 uses
  %.not.i139.i = icmp eq i64 %5, 0
  br i1 %.not.i139.i, label %compatible_stack.exit.i, label %.lr.ph.i138.i

compatible_stack.exit.i:                          ; preds = %compatible_kind.exit.thread29.i.i, %.preheader.i137.i
  %.016.lcssa.i.i = phi i64 [ %i.dh, %.preheader.i137.i ], [ %6, %compatible_kind.exit.thread29.i.i ]
  %.not150.i = icmp eq i64 %.016.lcssa.i.i, 0
  br i1 %.not150.i, label %bb.y, label %compatible_stack.exit.thread.i

bb.y:                                             ; preds = %compatible_stack.exit.i
  %i.dp = icmp sgt i64 %i.dh, %.0112158.i
  %spec.select.i = call i64 @llvm.smax.i64(i64 %i.dh, i64 %.0112158.i)
  %i.dq = trunc nuw nsw i64 %indvars.iv.i to i32
  %spec.select128.i = select i1 %i.dp, i32 %i.dq, i32 %.0109160.i
  br label %explain_incompatible_stack.exit.i

compatible_stack.exit.thread.i:                   ; preds = %compatible_kind.exit.i.i, %.split.i.i, %.lr.ph.i138.i, %compatible_stack.exit.i, %bb.x
  %i.dr = icmp slt i32 %.0104161.i, 0
  br i1 %i.dr, label %bb.z, label %explain_incompatible_stack.exit.i

bb.z:                                             ; preds = %compatible_stack.exit.thread.i
  switch i64 %i.cn, label %bb.ab [
    i64 -1, label %explain_incompatible_stack.exit.i
    i64 -2, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  br label %explain_incompatible_stack.exit.i

bb.ab:                                            ; preds = %bb.z
  switch i64 %i.dh, label %bb.ad [
    i64 -1, label %explain_incompatible_stack.exit.i
    i64 -2, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  br label %explain_incompatible_stack.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.ds = trunc i64 %i.dh to i32
  %i.dt = and i32 %i.ds, 7
  switch i32 %i.dt, label %bb.ah [
    i32 2, label %explain_incompatible_stack.exit.i
    i32 5, label %bb.ae
    i32 3, label %bb.af
    i32 4, label %bb.af
    i32 1, label %bb.ag
  ]

bb.ae:                                            ; preds = %bb.ad
  br label %explain_incompatible_stack.exit.i

bb.af:                                            ; preds = %bb.ad, %bb.ad
  br label %explain_incompatible_stack.exit.i

bb.ag:                                            ; preds = %bb.ad
  br label %explain_incompatible_stack.exit.i

bb.ah:                                            ; preds = %bb.ad
  unreachable

explain_incompatible_stack.exit.i:                ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %compatible_stack.exit.thread.i, %bb.y, %.lr.ph.i
  %.2114.i = phi i64 [ %.0112158.i, %.lr.ph.i ], [ %.0112158.i, %compatible_stack.exit.thread.i ], [ %.0112158.i, %bb.z ], [ %spec.select.i, %bb.y ], [ %.0112158.i, %bb.aa ], [ %.0112158.i, %bb.ab ], [ %.0112158.i, %bb.ac ], [ %.0112158.i, %bb.ad ], [ %.0112158.i, %bb.ae ], [ %.0112158.i, %bb.af ], [ %.0112158.i, %bb.ag ] ; 3 uses
  %.2111.i = phi i32 [ %.0109160.i, %.lr.ph.i ], [ %.0109160.i, %compatible_stack.exit.thread.i ], [ %.0109160.i, %bb.z ], [ %spec.select128.i, %bb.y ], [ %.0109160.i, %bb.aa ], [ %.0109160.i, %bb.ab ], [ %.0109160.i, %bb.ac ], [ %.0109160.i, %bb.ad ], [ %.0109160.i, %bb.ae ], [ %.0109160.i, %bb.af ], [ %.0109160.i, %bb.ag ] ; 2 uses
  %.2106.i = phi i32 [ %.0104161.i, %.lr.ph.i ], [ %.0104161.i, %compatible_stack.exit.thread.i ], [ -1, %bb.z ], [ 0, %bb.y ], [ -1, %bb.aa ], [ 1, %bb.ab ], [ 1, %bb.ac ], [ 1, %bb.ad ], [ 1, %bb.ae ], [ 1, %bb.af ], [ 1, %bb.ag ] ; 2 uses
  %.2103.i = phi ptr [ %.0101162.i, %.lr.ph.i ], [ %.0101162.i, %compatible_stack.exit.thread.i ], [ @.str.53, %bb.z ], [ %.0101162.i, %bb.y ], [ @.str.54, %bb.aa ], [ @.str.58, %bb.ab ], [ @.str.59, %bb.ac ], [ @.str.60, %bb.ad ], [ @.str.61, %bb.ae ], [ @.str.62, %bb.af ], [ @.str.63, %bb.ag ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !122

bb.ai:                                            ; preds = %._crit_edge.i
  %i.du = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !33
  call void @PyErr_SetString(ptr noundef %i.du, ptr noundef %.2103.i) #12
  br label %.critedge.i

._crit_edge173.i:                                 ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.dc, %middle.block ], [ %i.dz, %scalar.ph ] ; 3 uses
  %.not125.i = icmp eq i32 %.lcssa, 0
  br i1 %.not125.i, label %.loopexit.i, label %bb.aj

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv184.i = phi i64 [ %indvars.iv.next185.i, %scalar.ph ], [ %indvars.iv184.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.097170.i = phi i32 [ %i.dz, %scalar.ph ], [ %.097170.i.ph, %scalar.ph.preheader ]
  %i.dv = getelementptr [8 x i8], ptr %i.cs, i64 %indvars.iv184.i
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !16
  %i.dx = icmp eq i64 %i.dw, 1
  %i.dy = zext i1 %i.dx to i32
  %i.dz = add i32 %.097170.i, %i.dy               ; 2 uses
  %indvars.iv.next185.i = add nuw nsw i64 %indvars.iv184.i, 1 ; 2 uses
  %exitcond188.not.i = icmp eq i64 %indvars.iv.next185.i, %wide.trip.count187.i
  br i1 %exitcond188.not.i, label %._crit_edge173.i, label %scalar.ph, !llvm.loop !123

bb.aj:                                            ; preds = %._crit_edge173.i
  %i.ea = icmp eq i32 %.lcssa, 1
  %i.eb = select i1 %i.ea, ptr @.str.56, ptr @.str.57
  %i.ec = load ptr, ptr @PyExc_RuntimeWarning, align 8, !tbaa !33
  %i.ed = call i32 (ptr, i64, ptr, ...) @PyErr_WarnFormat(ptr noundef %i.ec, i64 noundef 0, ptr noundef nonnull @.str.55, i32 noundef %.lcssa, ptr noundef nonnull %i.eb) #12
  %.not126.i = icmp eq i32 %i.ed, 0
  br i1 %.not126.i, label %.preheader.i, label %.critedge.i

.preheader.i:                                     ; preds = %bb.aj
  %i.ee = load i32, ptr %i.co, align 8, !tbaa !60 ; 2 uses
  %i.ef = icmp sgt i32 %i.ee, 0
  br i1 %i.ef, label %.lr.ph177.i, label %.loopexit.i

.lr.ph177.i:                                      ; preds = %.preheader.i
  %i.eg = or disjoint i64 ptrtoint (ptr @_Py_NoneStruct to i64), 1
  %.pre192.i = load ptr, ptr %i.b, align 8, !tbaa !38
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %.lr.ph177.i
  %i.eh = phi i32 [ %i.ee, %.lr.ph177.i ], [ %i.en, %bb.am ]
  %i.ei = phi ptr [ %.pre192.i, %.lr.ph177.i ], [ %i.eo, %bb.am ] ; 2 uses
  %indvars.iv189.i = phi i64 [ 0, %.lr.ph177.i ], [ %indvars.iv.next190.i, %bb.am ] ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 80
  %i.ek = getelementptr [8 x i8], ptr %i.ej, i64 %indvars.iv189.i ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !16
  %i.em = icmp eq i64 %i.el, 1
  br i1 %i.em, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i64 %i.eg, ptr %i.ek, align 8, !tbaa !16
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !38
  %.pre193.i = load i32, ptr %i.co, align 8, !tbaa !60
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.en = phi i32 [ %.pre193.i, %bb.al ], [ %i.eh, %bb.ak ] ; 2 uses
  %i.eo = phi ptr [ %.pre.i, %bb.al ], [ %i.ei, %bb.ak ]
  %indvars.iv.next190.i = add nuw nsw i64 %indvars.iv189.i, 1 ; 2 uses
  %i.ep = sext i32 %i.en to i64
  %i.eq = icmp slt i64 %indvars.iv.next190.i, %i.ep
  br i1 %i.eq, label %bb.ak, label %.loopexit.i, !llvm.loop !124

.loopexit.i:                                      ; preds = %bb.am, %.preheader.i, %._crit_edge173.i, %.preheader152.i
  %i.er = ashr i64 %i.cn, 3
  %spec.select148.i = select i1 %.0.i.i, i64 %i.er, i64 %i.cn ; 2 uses
  %i.es = icmp sgt i64 %spec.select148.i, %.2114.i
  br i1 %i.es, label %.lr.ph180.i, label %._crit_edge181.i

.lr.ph180.i:                                      ; preds = %.loopexit.i
  %i.et = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  br label %bb.an

bb.an:                                            ; preds = %PyStackRef_XCLOSE.exit.i, %.lr.ph180.i
  %.1108178.i = phi i64 [ %spec.select148.i, %.lr.ph180.i ], [ %i.fn, %PyStackRef_XCLOSE.exit.i ] ; 2 uses
  %i.eu = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.ev = getelementptr i8, ptr %i.eu, i64 64     ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !51
  %i.ex = getelementptr i8, ptr %i.ew, i64 -8     ; 2 uses
  store ptr %i.ex, ptr %i.ev, align 8, !tbaa !51
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ex, align 8, !tbaa !16 ; 3 uses
  %i.ey = and i64 %.1108178.i, 7
  %i.ez = icmp eq i64 %i.ey, 2
  br i1 %i.ez, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fa = and i64 %.sroa.0.0.copyload.i.i, -2     ; 2 uses
  %i.fb = inttoptr i64 %i.fa to ptr
  %i.fc = load ptr, ptr %i.et, align 8, !tbaa !144
  %i.fd = getelementptr i8, ptr %i.fc, i64 136
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !145 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !33
  %i.fg = icmp eq i64 %i.fa, ptrtoint (ptr @_Py_NoneStruct to i64)
  %i.fh = select i1 %i.fg, ptr null, ptr %i.fb
  store ptr %i.fh, ptr %i.fe, align 8, !tbaa !33
  call fastcc void @Py_XDECREF(ptr noundef %i.ff)
  br label %PyStackRef_XCLOSE.exit.i

bb.ap:                                            ; preds = %bb.an
  %i.fi = and i64 %.sroa.0.0.copyload.i.i, 1
  %.not.not.i.i = icmp eq i64 %i.fi, 0
  br i1 %.not.not.i.i, label %bb.aq, label %PyStackRef_XCLOSE.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.fj = inttoptr i64 %.sroa.0.0.copyload.i.i to ptr ; 3 uses
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !16
  %i.fl = add i32 %i.fk, -1                       ; 2 uses
  store i32 %i.fl, ptr %i.fj, align 8, !tbaa !16
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.ar, label %PyStackRef_XCLOSE.exit.i

bb.ar:                                            ; preds = %bb.aq
  call void @_Py_Dealloc(ptr noundef nonnull %i.fj) #12
  br label %PyStackRef_XCLOSE.exit.i

PyStackRef_XCLOSE.exit.i:                         ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %i.fn = lshr i64 %.1108178.i, 3                 ; 2 uses
  %i.fo = icmp sgt i64 %i.fn, %.2114.i
  br i1 %i.fo, label %bb.an, label %._crit_edge181.i, !llvm.loop !125

._crit_edge181.i:                                 ; preds = %PyStackRef_XCLOSE.exit.i, %.loopexit.i
  %i.fp = getelementptr i8, ptr %0, i64 40
  store i32 0, ptr %i.fp, align 8, !tbaa !37
  %i.fq = load ptr, ptr %i.b, align 8, !tbaa !38  ; 2 uses
  %.val132.i = load i64, ptr %i.fq, align 8
  %i.fr = and i64 %.val132.i, -2
  %i.fs = inttoptr i64 %i.fr to ptr
  %i.ft = getelementptr i8, ptr %i.fs, i64 208
  %i.fu = sext i32 %.2111.i to i64
  %i.fv = getelementptr [2 x i8], ptr %i.ft, i64 %i.fu
end_hunk_0
