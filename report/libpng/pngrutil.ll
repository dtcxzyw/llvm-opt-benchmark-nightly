Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngrutil?download=true
inline.NumInlined: 112
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@png_read_filter_row_sub:bb.a
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !272

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.014.unr = phi ptr [ %.014.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ae, %vec.epilog.scalar.ph.prol ]
  %.01213.unr = phi i64 [ %.01213.ph, %vec.epilog.scalar.ph.preheader ], [ %i.af, %vec.epilog.scalar.ph.prol ]
  %i.ag = sub i64 %.01213.ph, %i.b
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.014 = phi ptr [ %i.ax, %vec.epilog.scalar.ph ], [ %.014.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %.01213 = phi i64 [ %i.ay, %vec.epilog.scalar.ph ], [ %.01213.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.ai = load i8, ptr %.014, align 1, !tbaa !8
  %i.aj = getelementptr inbounds i8, ptr %.014, i64 %i.j
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !8
  %.narrow = add i8 %i.ak, %i.ai
  store i8 %.narrow, ptr %.014, align 1, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %.014, i64 1 ; 3 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !8
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 %i.j
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !8
  %.narrow.1 = add i8 %i.ao, %i.am
  store i8 %.narrow.1, ptr %i.al, align 1, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %.014, i64 2 ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !8
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 %i.j
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !8
  %.narrow.2 = add i8 %i.as, %i.aq
  store i8 %.narrow.2, ptr %i.ap, align 1, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %.014, i64 3 ; 3 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !8
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.j
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !8
  %.narrow.3 = add i8 %i.aw, %i.au
  store i8 %.narrow.3, ptr %i.at, align 1, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %.014, i64 4
  %i.ay = add nuw i64 %.01213, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ay, %i.b
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !273

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @png_read_filter_row_up(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 13 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.b, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %1, i64 %i.b
  %scevgep14 = getelementptr i8, ptr %2, i64 %i.b
  %bound0 = icmp ult ptr %1, %scevgep14
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check15 = icmp ult i64 %i.b, 32
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.c = and i64 %i.b, 28
  %n.vec = and i64 %i.b, -32                      ; 6 uses
  %i.d = getelementptr i8, ptr %2, i64 %n.vec
  %i.e = getelementptr i8, ptr %1, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %next.gep16 = getelementptr i8, ptr %1, i64 %index ; 3 uses
  %i.f = getelementptr i8, ptr %next.gep16, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep16, align 1, !tbaa !8, !alias.scope !283, !noalias !284
  %wide.load17 = load <16 x i8>, ptr %i.f, align 1, !tbaa !8, !alias.scope !283, !noalias !284
  %i.g = getelementptr i8, ptr %next.gep, i64 16
  %wide.load18 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !8, !alias.scope !284
  %wide.load19 = load <16 x i8>, ptr %i.g, align 1, !tbaa !8, !alias.scope !284
  %i.h = add <16 x i8> %wide.load18, %wide.load
  %i.i = add <16 x i8> %wide.load19, %wide.load17
  store <16 x i8> %i.h, ptr %next.gep16, align 1, !tbaa !8, !alias.scope !283, !noalias !284
  store <16 x i8> %i.i, ptr %i.f, align 1, !tbaa !8, !alias.scope !283, !noalias !284
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !279

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.c, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !49

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %i.b, -4                     ; 5 uses
  %i.k = getelementptr i8, ptr %2, i64 %n.vec21
  %i.l = getelementptr i8, ptr %1, i64 %n.vec21
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next27, %vec.epilog.vector.body ] ; 3 uses
  %next.gep23 = getelementptr i8, ptr %2, i64 %index22
  %next.gep24 = getelementptr i8, ptr %1, i64 %index22 ; 2 uses
  %wide.load25 = load <4 x i8>, ptr %next.gep24, align 1, !tbaa !8, !alias.scope !283, !noalias !284
  %wide.load26 = load <4 x i8>, ptr %next.gep23, align 1, !tbaa !8, !alias.scope !284
  %i.m = add <4 x i8> %wide.load26, %wide.load25
  store <4 x i8> %i.m, ptr %next.gep24, align 1, !tbaa !8, !alias.scope !283, !noalias !284
  %index.next27 = add nuw i64 %index22, 4         ; 2 uses
  %i.n = icmp eq i64 %index.next27, %n.vec21
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !280

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n28 = icmp eq i64 %i.b, %n.vec21
  br i1 %cmp.n28, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.013.ph = phi ptr [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.d, %vec.epilog.iter.check ], [ %i.k, %vec.epilog.middle.block ] ; 2 uses
  %.0912.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.e, %vec.epilog.iter.check ], [ %i.l, %vec.epilog.middle.block ] ; 2 uses
  %.01011.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec21, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.013.prol = phi ptr [ %i.p, %.lr.ph.prol ], [ %.013.ph, %.lr.ph.preheader ] ; 2 uses
  %.0912.prol = phi ptr [ %i.r, %.lr.ph.prol ], [ %.0912.ph, %.lr.ph.preheader ] ; 3 uses
  %.01011.prol = phi i64 [ %i.s, %.lr.ph.prol ], [ %.01011.ph, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.o = load i8, ptr %.0912.prol, align 1, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %.013.prol, i64 1 ; 2 uses
  %i.q = load i8, ptr %.013.prol, align 1, !tbaa !8
  %.narrow.prol = add i8 %i.q, %i.o
  store i8 %.narrow.prol, ptr %.0912.prol, align 1, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %.0912.prol, i64 1 ; 2 uses
  %i.s = add nuw i64 %.01011.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !281

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.013.unr = phi ptr [ %.013.ph, %.lr.ph.preheader ], [ %i.p, %.lr.ph.prol ]
  %.0912.unr = phi ptr [ %.0912.ph, %.lr.ph.preheader ], [ %i.r, %.lr.ph.prol ]
  %.01011.unr = phi i64 [ %.01011.ph, %.lr.ph.preheader ], [ %i.s, %.lr.ph.prol ]
  %i.t = sub i64 %.01011.ph, %i.b
  %i.u = icmp ugt i64 %i.t, -4
  br i1 %i.u, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.013 = phi ptr [ %i.ai, %.lr.ph ], [ %.013.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.0912 = phi ptr [ %i.ak, %.lr.ph ], [ %.0912.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.01011 = phi i64 [ %i.al, %.lr.ph ], [ %.01011.unr, %.lr.ph.prol.loopexit ]
  %i.v = load i8, ptr %.0912, align 1, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %.013, i64 1
  %i.x = load i8, ptr %.013, align 1, !tbaa !8
  %.narrow = add i8 %i.x, %i.v
  store i8 %.narrow, ptr %.0912, align 1, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %.0912, i64 1 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %.013, i64 2
  %i.ab = load i8, ptr %i.w, align 1, !tbaa !8
  %.narrow.1 = add i8 %i.ab, %i.z
  store i8 %.narrow.1, ptr %i.y, align 1, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %.0912, i64 2 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %.013, i64 3
  %i.af = load i8, ptr %i.aa, align 1, !tbaa !8
  %.narrow.2 = add i8 %i.af, %i.ad
  store i8 %.narrow.2, ptr %i.ac, align 1, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %.0912, i64 3 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %.013, i64 4
  %i.aj = load i8, ptr %i.ae, align 1, !tbaa !8
  %.narrow.3 = add i8 %i.aj, %i.ah
  store i8 %.narrow.3, ptr %i.ag, align 1, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %.0912, i64 4
  %i.al = add nuw i64 %.01011, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.al, %i.b
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !282

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @png_read_filter_row_avg(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.b = load i8, ptr %i.a, align 1, !tbaa !53    ; 3 uses
  %i.c = zext i8 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 7                  ; 2 uses
  %i.e = lshr i64 %i.d, 3                         ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !54   ; 4 uses
  %i.h = sub i64 %i.g, %i.e                       ; 11 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.preheader, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i8 %i.b, 25
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %1, i64 %i.e
  %scevgep40 = getelementptr i8, ptr %2, i64 %i.e
  %bound0 = icmp ult ptr %1, %scevgep40
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check41 = icmp ult i8 %i.b, 121
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 48                       ; 6 uses
  %i.i = getelementptr i8, ptr %2, i64 %n.vec     ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %wide.load = load <16 x i8>, ptr %1, align 1, !tbaa !8, !alias.scope !298, !noalias !299
  %wide.load43 = load <16 x i8>, ptr %2, align 1, !tbaa !8, !alias.scope !299
  %i.k = lshr <16 x i8> %wide.load43, splat (i8 1)
  %i.l = add <16 x i8> %i.k, %wide.load
  store <16 x i8> %i.l, ptr %1, align 1, !tbaa !8, !alias.scope !298, !noalias !299
  %i.m = icmp eq i64 %n.vec, 16
  br i1 %i.m, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %next.gep.1 = getelementptr i8, ptr %2, i64 16
  %next.gep42.1 = getelementptr i8, ptr %1, i64 16 ; 2 uses
  %wide.load.1 = load <16 x i8>, ptr %next.gep42.1, align 1, !tbaa !8, !alias.scope !298, !noalias !299
  %wide.load43.1 = load <16 x i8>, ptr %next.gep.1, align 1, !tbaa !8, !alias.scope !299
  %i.n = lshr <16 x i8> %wide.load43.1, splat (i8 1)
  %i.o = add <16 x i8> %i.n, %wide.load.1
  store <16 x i8> %i.o, ptr %next.gep42.1, align 1, !tbaa !8, !alias.scope !298, !noalias !299
  br label %middle.block

middle.block:                                     ; preds = %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.p = and i64 %i.d, 96
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !51

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %i.e, 60                     ; 5 uses
  %i.q = getelementptr i8, ptr %2, i64 %n.vec45   ; 2 uses
  %i.r = getelementptr i8, ptr %1, i64 %n.vec45   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next51, %vec.epilog.vector.body ] ; 3 uses
  %next.gep47 = getelementptr i8, ptr %2, i64 %index46
  %next.gep48 = getelementptr i8, ptr %1, i64 %index46 ; 2 uses
  %wide.load49 = load <4 x i8>, ptr %next.gep48, align 1, !tbaa !8, !alias.scope !298, !noalias !299
  %wide.load50 = load <4 x i8>, ptr %next.gep47, align 1, !tbaa !8, !alias.scope !299
  %i.s = lshr <4 x i8> %wide.load50, splat (i8 1)
  %i.t = add <4 x i8> %i.s, %wide.load49
  store <4 x i8> %i.t, ptr %next.gep48, align 1, !tbaa !8, !alias.scope !298, !noalias !299
  %index.next51 = add nuw i64 %index46, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next51, %n.vec45
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !288

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n52 = icmp eq i64 %i.e, %n.vec45
  br i1 %cmp.n52, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.029.ph = phi ptr [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.i, %vec.epilog.iter.check ], [ %i.q, %vec.epilog.middle.block ] ; 2 uses
  %.02028.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.j, %vec.epilog.iter.check ], [ %i.r, %vec.epilog.middle.block ] ; 2 uses
  %.02227.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec45, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.029.prol = phi ptr [ %i.w, %.lr.ph.prol ], [ %.029.ph, %.lr.ph.preheader ] ; 2 uses
  %.02028.prol = phi ptr [ %i.z, %.lr.ph.prol ], [ %.02028.ph, %.lr.ph.preheader ] ; 3 uses
  %.02227.prol = phi i64 [ %i.aa, %.lr.ph.prol ], [ %.02227.ph, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.v = load i8, ptr %.02028.prol, align 1, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %.029.prol, i64 1 ; 3 uses
  %i.x = load i8, ptr %.029.prol, align 1, !tbaa !8
  %i.y = lshr i8 %i.x, 1
  %.narrow26.prol = add i8 %i.y, %i.v
  store i8 %.narrow26.prol, ptr %.02028.prol, align 1, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %.02028.prol, i64 1 ; 3 uses
  %i.aa = add nuw nsw i64 %.02227.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !289

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa106.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.w, %.lr.ph.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %.029.unr = phi ptr [ %.029.ph, %.lr.ph.preheader ], [ %i.w, %.lr.ph.prol ]
  %.02028.unr = phi ptr [ %.02028.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %.02227.unr = phi i64 [ %.02227.ph, %.lr.ph.preheader ], [ %i.aa, %.lr.ph.prol ]
  %i.ab = sub nsw i64 %.02227.ph, %i.e
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.020.lcssa = phi ptr [ %1, %bb.a ], [ %i.r, %vec.epilog.middle.block ], [ %i.j, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.cr, %.lr.ph ] ; 11 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.q, %vec.epilog.middle.block ], [ %i.i, %middle.block ], [ %.lcssa106.unr, %.lr.ph.prol.loopexit ], [ %i.co, %.lr.ph ] ; 8 uses
  %.not35 = icmp eq i64 %i.g, %i.e
  br i1 %.not35, label %._crit_edge, label %iter.check87

iter.check87:                                     ; preds = %.preheader
  %i.ad = sub nsw i64 0, %i.e                     ; 6 uses
  %min.iters.check67 = icmp ult i64 %i.h, 8
  br i1 %min.iters.check67, label %vec.epilog.scalar.ph88.preheader, label %vector.memcheck56

vector.memcheck56:                                ; preds = %iter.check87
  %scevgep57 = getelementptr i8, ptr %.020.lcssa, i64 %i.h ; 2 uses
  %scevgep58 = getelementptr i8, ptr %.0.lcssa, i64 %i.h
  %scevgep59 = getelementptr i8, ptr %.020.lcssa, i64 %i.ad
  %i.ae = shl nuw nsw i64 %i.e, 1
  %i.af = sub i64 %i.g, %i.ae
  %scevgep60 = getelementptr i8, ptr %.020.lcssa, i64 %i.af
  %bound061 = icmp ult ptr %.020.lcssa, %scevgep58
  %bound162 = icmp ult ptr %.0.lcssa, %scevgep57
  %found.conflict63 = and i1 %bound061, %bound162
  %bound064 = icmp ult ptr %.020.lcssa, %scevgep60
  %bound165 = icmp ult ptr %scevgep59, %scevgep57
  %found.conflict66 = and i1 %bound064, %bound165
  %conflict.rdx = or i1 %found.conflict63, %found.conflict66
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph88.preheader, label %vector.main.loop.iter.check68

vector.main.loop.iter.check68:                    ; preds = %vector.memcheck56
  %min.iters.check69 = icmp ult i64 %i.h, 32
  br i1 %min.iters.check69, label %vec.epilog.ph91, label %vector.ph70

vector.ph70:                                      ; preds = %vector.main.loop.iter.check68
  %i.ag = and i64 %i.h, 24
  %n.vec71 = and i64 %i.h, -32                    ; 6 uses
  %i.ah = getelementptr i8, ptr %.0.lcssa, i64 %n.vec71
  %i.ai = getelementptr i8, ptr %.020.lcssa, i64 %n.vec71
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph70
  %index73 = phi i64 [ 0, %vector.ph70 ], [ %index.next82, %vector.body72 ] ; 3 uses
  %next.gep74 = getelementptr i8, ptr %.0.lcssa, i64 %index73 ; 2 uses
  %next.gep75 = getelementptr i8, ptr %.020.lcssa, i64 %index73 ; 4 uses
  %i.aj = getelementptr i8, ptr %next.gep75, i64 16 ; 2 uses
  %wide.load76 = load <16 x i8>, ptr %next.gep75, align 1, !tbaa !8, !alias.scope !300, !noalias !301
  %wide.load77 = load <16 x i8>, ptr %i.aj, align 1, !tbaa !8, !alias.scope !300, !noalias !301
  %i.ak = getelementptr i8, ptr %next.gep74, i64 16
  %wide.load78 = load <16 x i8>, ptr %next.gep74, align 1, !tbaa !8, !alias.scope !302
  %wide.load79 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !8, !alias.scope !302
  %i.al = zext <16 x i8> %wide.load78 to <16 x i16>
  %i.am = zext <16 x i8> %wide.load79 to <16 x i16>
  %i.an = getelementptr inbounds i8, ptr %next.gep75, i64 %i.ad ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load80 = load <16 x i8>, ptr %i.an, align 1, !tbaa !8, !alias.scope !303
  %wide.load81 = load <16 x i8>, ptr %i.ao, align 1, !tbaa !8, !alias.scope !303
  %i.ap = zext <16 x i8> %wide.load80 to <16 x i16>
  %i.aq = zext <16 x i8> %wide.load81 to <16 x i16>
  %i.ar = add nuw nsw <16 x i16> %i.ap, %i.al
  %i.as = add nuw nsw <16 x i16> %i.aq, %i.am
  %i.at = lshr <16 x i16> %i.ar, splat (i16 1)
  %i.au = lshr <16 x i16> %i.as, splat (i16 1)
  %i.av = trunc nuw <16 x i16> %i.at to <16 x i8>
  %i.aw = trunc nuw <16 x i16> %i.au to <16 x i8>
  %i.ax = add <16 x i8> %wide.load76, %i.av
  %i.ay = add <16 x i8> %wide.load77, %i.aw
  store <16 x i8> %i.ax, ptr %next.gep75, align 1, !tbaa !8, !alias.scope !300, !noalias !301
  store <16 x i8> %i.ay, ptr %i.aj, align 1, !tbaa !8, !alias.scope !300, !noalias !301
  %index.next82 = add nuw i64 %index73, 32        ; 2 uses
  %i.az = icmp eq i64 %index.next82, %n.vec71
  br i1 %i.az, label %middle.block83, label %vector.body72, !llvm.loop !294

middle.block83:                                   ; preds = %vector.body72
  %cmp.n84 = icmp eq i64 %i.h, %n.vec71
  br i1 %cmp.n84, label %._crit_edge, label %vec.epilog.iter.check89

vec.epilog.iter.check89:                          ; preds = %middle.block83
  %min.epilog.iters.check90 = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check90, label %vec.epilog.scalar.ph88.preheader, label %vec.epilog.ph91, !prof !90

vec.epilog.ph91:                                  ; preds = %vector.main.loop.iter.check68, %vec.epilog.iter.check89
  %vec.epilog.resume.val85 = phi i64 [ %n.vec71, %vec.epilog.iter.check89 ], [ 0, %vector.main.loop.iter.check68 ]
  %n.vec92 = and i64 %i.h, -8                     ; 5 uses
  %i.ba = getelementptr i8, ptr %.0.lcssa, i64 %n.vec92
  %i.bb = getelementptr i8, ptr %.020.lcssa, i64 %n.vec92
  br label %vec.epilog.vector.body93

vec.epilog.vector.body93:                         ; preds = %vec.epilog.vector.body93, %vec.epilog.ph91
  %index94 = phi i64 [ %vec.epilog.resume.val85, %vec.epilog.ph91 ], [ %index.next100, %vec.epilog.vector.body93 ] ; 3 uses
  %next.gep95 = getelementptr i8, ptr %.0.lcssa, i64 %index94
  %next.gep96 = getelementptr i8, ptr %.020.lcssa, i64 %index94 ; 3 uses
  %wide.load97 = load <8 x i8>, ptr %next.gep96, align 1, !tbaa !8, !alias.scope !300, !noalias !301
  %wide.load98 = load <8 x i8>, ptr %next.gep95, align 1, !tbaa !8, !alias.scope !302
  %i.bc = zext <8 x i8> %wide.load98 to <8 x i16>
  %i.bd = getelementptr inbounds i8, ptr %next.gep96, i64 %i.ad
  %wide.load99 = load <8 x i8>, ptr %i.bd, align 1, !tbaa !8, !alias.scope !303
  %i.be = zext <8 x i8> %wide.load99 to <8 x i16>
  %i.bf = add nuw nsw <8 x i16> %i.be, %i.bc
  %i.bg = lshr <8 x i16> %i.bf, splat (i16 1)
  %i.bh = trunc nuw <8 x i16> %i.bg to <8 x i8>
  %i.bi = add <8 x i8> %wide.load97, %i.bh
  store <8 x i8> %i.bi, ptr %next.gep96, align 1, !tbaa !8, !alias.scope !300, !noalias !301
  %index.next100 = add nuw i64 %index94, 8        ; 2 uses
  %i.bj = icmp eq i64 %index.next100, %n.vec92
  br i1 %i.bj, label %vec.epilog.middle.block101, label %vec.epilog.vector.body93, !llvm.loop !295

vec.epilog.middle.block101:                       ; preds = %vec.epilog.vector.body93
  %cmp.n102 = icmp eq i64 %i.h, %n.vec92
  br i1 %cmp.n102, label %._crit_edge, label %vec.epilog.scalar.ph88.preheader

vec.epilog.scalar.ph88.preheader:                 ; preds = %vector.memcheck56, %iter.check87, %vec.epilog.iter.check89, %vec.epilog.middle.block101
  %.133.ph = phi ptr [ %.0.lcssa, %iter.check87 ], [ %.0.lcssa, %vector.memcheck56 ], [ %i.ah, %vec.epilog.iter.check89 ], [ %i.ba, %vec.epilog.middle.block101 ] ; 3 uses
  %.12132.ph = phi ptr [ %.020.lcssa, %iter.check87 ], [ %.020.lcssa, %vector.memcheck56 ], [ %i.ai, %vec.epilog.iter.check89 ], [ %i.bb, %vec.epilog.middle.block101 ] ; 5 uses
  %.12331.ph = phi i64 [ 0, %iter.check87 ], [ 0, %vector.memcheck56 ], [ %n.vec71, %vec.epilog.iter.check89 ], [ %n.vec92, %vec.epilog.middle.block101 ] ; 3 uses
  %i.bk = xor i64 %.12331.ph, -1
  %i.bl = add i64 %i.g, %i.bk
  %xtraiter107 = and i64 %i.h, 1
  %lcmp.mod108.not = icmp eq i64 %xtraiter107, 0
  br i1 %lcmp.mod108.not, label %vec.epilog.scalar.ph88.prol.loopexit, label %vec.epilog.scalar.ph88.prol

vec.epilog.scalar.ph88.prol:                      ; preds = %vec.epilog.scalar.ph88.preheader
  %i.bm = load i8, ptr %.12132.ph, align 1, !tbaa !8
  %i.bn = getelementptr inbounds nuw i8, ptr %.133.ph, i64 1
  %i.bo = load i8, ptr %.133.ph, align 1, !tbaa !8
  %i.bp = zext i8 %i.bo to i16
  %i.bq = getelementptr inbounds i8, ptr %.12132.ph, i64 %i.ad
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !8
  %i.bs = zext i8 %i.br to i16
  %i.bt = add nuw nsw i16 %i.bs, %i.bp
  %i.bu = lshr i16 %i.bt, 1
  %.tr.prol = trunc nuw i16 %i.bu to i8
  %.narrow.prol = add i8 %i.bm, %.tr.prol
  store i8 %.narrow.prol, ptr %.12132.ph, align 1, !tbaa !8
  %i.bv = getelementptr inbounds nuw i8, ptr %.12132.ph, i64 1
  %i.bw = or disjoint i64 %.12331.ph, 1
  br label %vec.epilog.scalar.ph88.prol.loopexit

vec.epilog.scalar.ph88.prol.loopexit:             ; preds = %vec.epilog.scalar.ph88.prol, %vec.epilog.scalar.ph88.preheader
  %.133.unr = phi ptr [ %.133.ph, %vec.epilog.scalar.ph88.preheader ], [ %i.bn, %vec.epilog.scalar.ph88.prol ]
  %.12132.unr = phi ptr [ %.12132.ph, %vec.epilog.scalar.ph88.preheader ], [ %i.bv, %vec.epilog.scalar.ph88.prol ]
  %.12331.unr = phi i64 [ %.12331.ph, %vec.epilog.scalar.ph88.preheader ], [ %i.bw, %vec.epilog.scalar.ph88.prol ]
  %i.bx = icmp eq i64 %i.bl, %i.e
  br i1 %i.bx, label %._crit_edge, label %vec.epilog.scalar.ph88

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.029 = phi ptr [ %i.co, %.lr.ph ], [ %.029.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.02028 = phi ptr [ %i.cr, %.lr.ph ], [ %.02028.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.02227 = phi i64 [ %i.cs, %.lr.ph ], [ %.02227.unr, %.lr.ph.prol.loopexit ]
  %i.by = load i8, ptr %.02028, align 1, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %.029, i64 1
  %i.ca = load i8, ptr %.029, align 1, !tbaa !8
  %i.cb = lshr i8 %i.ca, 1
  %.narrow26 = add i8 %i.cb, %i.by
  store i8 %.narrow26, ptr %.02028, align 1, !tbaa !8
  %i.cc = getelementptr inbounds nuw i8, ptr %.02028, i64 1 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !8
  %i.ce = getelementptr inbounds nuw i8, ptr %.029, i64 2
  %i.cf = load i8, ptr %i.bz, align 1, !tbaa !8
  %i.cg = lshr i8 %i.cf, 1
  %.narrow26.1 = add i8 %i.cg, %i.cd
  store i8 %.narrow26.1, ptr %i.cc, align 1, !tbaa !8
  %i.ch = getelementptr inbounds nuw i8, ptr %.02028, i64 2 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !8
  %i.cj = getelementptr inbounds nuw i8, ptr %.029, i64 3
  %i.ck = load i8, ptr %i.ce, align 1, !tbaa !8
  %i.cl = lshr i8 %i.ck, 1
  %.narrow26.2 = add i8 %i.cl, %i.ci
  store i8 %.narrow26.2, ptr %i.ch, align 1, !tbaa !8
  %i.cm = getelementptr inbounds nuw i8, ptr %.02028, i64 3 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !8
  %i.co = getelementptr inbounds nuw i8, ptr %.029, i64 4 ; 2 uses
  %i.cp = load i8, ptr %i.cj, align 1, !tbaa !8
  %i.cq = lshr i8 %i.cp, 1
  %.narrow26.3 = add i8 %i.cq, %i.cn
  store i8 %.narrow26.3, ptr %i.cm, align 1, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %.02028, i64 4 ; 2 uses
  %i.cs = add nuw nsw i64 %.02227, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.cs, %i.e
  br i1 %exitcond.not.3, label %.preheader, label %.lr.ph, !llvm.loop !296

vec.epilog.scalar.ph88:                           ; preds = %vec.epilog.scalar.ph88.prol.loopexit, %vec.epilog.scalar.ph88
  %.133 = phi ptr [ %i.de, %vec.epilog.scalar.ph88 ], [ %.133.unr, %vec.epilog.scalar.ph88.prol.loopexit ] ; 3 uses
  %.12132 = phi ptr [ %i.dm, %vec.epilog.scalar.ph88 ], [ %.12132.unr, %vec.epilog.scalar.ph88.prol.loopexit ] ; 5 uses
  %.12331 = phi i64 [ %i.dn, %vec.epilog.scalar.ph88 ], [ %.12331.unr, %vec.epilog.scalar.ph88.prol.loopexit ]
  %i.ct = load i8, ptr %.12132, align 1, !tbaa !8
  %i.cu = getelementptr inbounds nuw i8, ptr %.133, i64 1
  %i.cv = load i8, ptr %.133, align 1, !tbaa !8
  %i.cw = zext i8 %i.cv to i16
  %i.cx = getelementptr inbounds i8, ptr %.12132, i64 %i.ad
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !8
  %i.cz = zext i8 %i.cy to i16
  %i.da = add nuw nsw i16 %i.cz, %i.cw
  %i.db = lshr i16 %i.da, 1
  %.tr = trunc nuw i16 %i.db to i8
  %.narrow = add i8 %i.ct, %.tr
  store i8 %.narrow, ptr %.12132, align 1, !tbaa !8
  %i.dc = getelementptr inbounds nuw i8, ptr %.12132, i64 1 ; 3 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !8
  %i.de = getelementptr inbounds nuw i8, ptr %.133, i64 2
  %i.df = load i8, ptr %i.cu, align 1, !tbaa !8
  %i.dg = zext i8 %i.df to i16
  %i.dh = getelementptr inbounds i8, ptr %i.dc, i64 %i.ad
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !8
  %i.dj = zext i8 %i.di to i16
  %i.dk = add nuw nsw i16 %i.dj, %i.dg
  %i.dl = lshr i16 %i.dk, 1
  %.tr.1 = trunc nuw i16 %i.dl to i8
  %.narrow.1 = add i8 %i.dd, %.tr.1
  store i8 %.narrow.1, ptr %i.dc, align 1, !tbaa !8
  %i.dm = getelementptr inbounds nuw i8, ptr %.12132, i64 2
  %i.dn = add nuw i64 %.12331, 2                  ; 2 uses
  %exitcond37.not.1 = icmp eq i64 %i.dn, %i.h
  br i1 %exitcond37.not.1, label %._crit_edge, label %vec.epilog.scalar.ph88, !llvm.loop !297

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph88.prol.loopexit, %vec.epilog.scalar.ph88, %middle.block83, %vec.epilog.middle.block101, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @png_read_filter_row_paeth_1byte_pixel(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address) %1, ptr nofree noundef readonly captures(none) %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b
  %i.d = load i8, ptr %2, align 1, !tbaa !8
  %i.e = zext i8 %i.d to i32                      ; 2 uses
  %i.f = load i8, ptr %1, align 1, !tbaa !8
  %i.g = zext i8 %i.f to i32
  %i.h = add nuw nsw i32 %i.g, %i.e               ; 2 uses
  %i.i = trunc i32 %i.h to i8
  store i8 %i.i, ptr %1, align 1, !tbaa !8
  %i.j = icmp samesign ugt i64 %i.b, 1
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %.04147 = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04151 = phi ptr [ %.041, %.lr.ph ], [ %.04147, %.lr.ph.preheader ] ; 3 uses
  %.03850 = phi i32 [ %i.m, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 3 uses
  %.03949 = phi i32 [ %i.x, %.lr.ph ], [ %i.h, %.lr.ph.preheader ]
  %.pn48 = phi ptr [ %.040, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %.040 = getelementptr inbounds nuw i8, ptr %.pn48, i64 1 ; 2 uses
  %i.k = and i32 %.03949, 255                     ; 2 uses
  %i.l = load i8, ptr %.040, align 1, !tbaa !8
  %i.m = zext i8 %i.l to i32                      ; 3 uses
  %i.n = sub nsw i32 %i.m, %.03850                ; 2 uses
  %i.o = sub nsw i32 %i.k, %.03850                ; 2 uses
  %i.p = tail call i32 @llvm.abs.i32(i32 %i.n, i1 true) ; 2 uses
  %i.q = tail call i32 @llvm.abs.i32(i32 %i.o, i1 true) ; 2 uses
  %i.r = add nsw i32 %i.n, %i.o
  %i.s = tail call i32 @llvm.abs.i32(i32 %i.r, i1 true)
  %i.t = icmp samesign ult i32 %i.q, %i.p
  %.1 = select i1 %i.t, i32 %i.m, i32 %i.k
  %.0 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.p)
  %i.u = icmp samesign ult i32 %i.s, %.0
  %.2 = select i1 %i.u, i32 %.03850, i32 %.1
  %i.v = load i8, ptr %.04151, align 1, !tbaa !8
  %i.w = zext i8 %i.v to i32
  %i.x = add nuw nsw i32 %.2, %i.w                ; 2 uses
  %i.y = trunc i32 %i.x to i8
  store i8 %i.y, ptr %.04151, align 1, !tbaa !8
  %.041 = getelementptr inbounds nuw i8, ptr %.04151, i64 1 ; 2 uses
  %i.z = icmp ult ptr %.041, %i.c
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !304

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @png_read_filter_row_paeth_multibyte_pixel(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address) %1, ptr nofree noundef readonly captures(none) %2) #5 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.c = load i8, ptr %i.b, align 1, !tbaa !53
  %i.d = zext i8 %i.c to i64
  %i.e = add nuw nsw i64 %i.d, 7
  %i.f = lshr i64 %i.e, 3                         ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.h = add i64 %i.f, %i.a
  %i.i = add i64 %i.a, 1
  %umax70 = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %i.i)
  %i.j = sub i64 %umax70, %i.a                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.j, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.k = add i64 %i.f, %i.a
  %i.l = add i64 %i.a, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %i.l)
  %i.m = sub i64 %umax, %i.a                      ; 2 uses
  %scevgep68 = getelementptr i8, ptr %1, i64 %i.m
  %scevgep69 = getelementptr i8, ptr %2, i64 %i.m
  %bound0 = icmp ult ptr %1, %scevgep69
  %bound1 = icmp ult ptr %2, %scevgep68
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check71 = icmp ult i64 %i.j, 32
  br i1 %min.iters.check71, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.j, 24
  %n.vec = and i64 %i.j, -32                      ; 5 uses
  %i.o = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %i.p = getelementptr i8, ptr %2, i64 %n.vec     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 3 uses
  %next.gep72 = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !8, !alias.scope !319, !noalias !320
  %wide.load73 = load <16 x i8>, ptr %i.q, align 1, !tbaa !8, !alias.scope !319, !noalias !320
  %i.r = getelementptr i8, ptr %next.gep72, i64 16
  %wide.load74 = load <16 x i8>, ptr %next.gep72, align 1, !tbaa !8, !alias.scope !320
  %wide.load75 = load <16 x i8>, ptr %i.r, align 1, !tbaa !8, !alias.scope !320
  %i.s = add <16 x i8> %wide.load74, %wide.load
  %i.t = add <16 x i8> %wide.load75, %wide.load73
  store <16 x i8> %i.s, ptr %next.gep, align 1, !tbaa !8, !alias.scope !319, !noalias !320
  store <16 x i8> %i.t, ptr %i.q, align 1, !tbaa !8, !alias.scope !319, !noalias !320
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !308

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !90

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec77 = and i64 %i.j, -8                     ; 4 uses
  %i.v = getelementptr i8, ptr %1, i64 %n.vec77   ; 2 uses
  %i.w = getelementptr i8, ptr %2, i64 %n.vec77   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index78 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next83, %vec.epilog.vector.body ] ; 3 uses
  %next.gep79 = getelementptr i8, ptr %1, i64 %index78 ; 2 uses
  %next.gep80 = getelementptr i8, ptr %2, i64 %index78
  %wide.load81 = load <8 x i8>, ptr %next.gep79, align 1, !tbaa !8, !alias.scope !319, !noalias !320
  %wide.load82 = load <8 x i8>, ptr %next.gep80, align 1, !tbaa !8, !alias.scope !320
  %i.x = add <8 x i8> %wide.load82, %wide.load81
  store <8 x i8> %i.x, ptr %next.gep79, align 1, !tbaa !8, !alias.scope !319, !noalias !320
  %index.next83 = add nuw i64 %index78, 8         ; 2 uses
  %i.y = icmp eq i64 %index.next83, %n.vec77
  br i1 %i.y, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !309

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n84 = icmp eq i64 %i.j, %n.vec77
  br i1 %cmp.n84, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04656.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.o, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ]
  %.04855.ph = phi ptr [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.p, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04656 = phi ptr [ %i.ad, %.lr.ph ], [ %.04656.ph, %.lr.ph.preheader ] ; 3 uses
  %.04855 = phi ptr [ %i.aa, %.lr.ph ], [ %.04855.ph, %.lr.ph.preheader ] ; 2 uses
  %i.z = load i8, ptr %.04656, align 1, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %.04855, i64 1 ; 2 uses
  %i.ab = load i8, ptr %.04855, align 1, !tbaa !8
  %i.ac = add i8 %i.ab, %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %.04656, i64 1 ; 3 uses
  store i8 %i.ac, ptr %.04656, align 1, !tbaa !8
  %i.ae = icmp ult ptr %i.ad, %i.g
  br i1 %i.ae, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !310

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa67 = phi ptr [ %i.w, %vec.epilog.middle.block ], [ %i.p, %middle.block ], [ %i.aa, %.lr.ph ]
  %.lcssa = phi ptr [ %i.v, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %i.ad, %.lr.ph ] ; 2 uses
  %.pre = ptrtoaddr ptr %.lcssa to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.046.lcssa64.pre-phi = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ]
  %.048.lcssa = phi ptr [ %.lcssa67, %._crit_edge.loopexit ], [ %2, %bb.a ] ; 10 uses
  %.046.lcssa = phi ptr [ %.lcssa, %._crit_edge.loopexit ], [ %1, %bb.a ] ; 13 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !54 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  %i.ai = icmp ult ptr %.046.lcssa, %i.ah
  br i1 %i.ai, label %iter.check121, label %._crit_edge62

iter.check121:                                    ; preds = %._crit_edge
  %i.aj = sub nsw i64 0, %i.f                     ; 8 uses
  %i.ak = add i64 %i.ag, %i.a
  %i.al = sub i64 %i.ak, %.046.lcssa64.pre-phi    ; 10 uses
  %scevgep = getelementptr i8, ptr %.046.lcssa, i64 %i.al ; 4 uses
  %min.iters.check103 = icmp ult i64 %i.al, 4
  br i1 %min.iters.check103, label %vec.epilog.scalar.ph122.preheader, label %vector.memcheck87

vector.memcheck87:                                ; preds = %iter.check121
  %scevgep88 = getelementptr i8, ptr %.048.lcssa, i64 %i.al
  %scevgep89 = getelementptr i8, ptr %.048.lcssa, i64 %i.aj
  %i.am = sub i64 %i.al, %i.f                     ; 2 uses
  %scevgep90 = getelementptr i8, ptr %.048.lcssa, i64 %i.am
  %scevgep91 = getelementptr i8, ptr %.046.lcssa, i64 %i.aj
  %scevgep92 = getelementptr i8, ptr %.046.lcssa, i64 %i.am
  %bound093 = icmp ult ptr %.046.lcssa, %scevgep88
  %bound194 = icmp ult ptr %.048.lcssa, %scevgep
  %found.conflict95 = and i1 %bound093, %bound194
  %bound096 = icmp ult ptr %.046.lcssa, %scevgep90
  %bound197 = icmp ult ptr %scevgep89, %scevgep
  %found.conflict98 = and i1 %bound096, %bound197
  %conflict.rdx = or i1 %found.conflict95, %found.conflict98
  %bound099 = icmp ult ptr %.046.lcssa, %scevgep92
  %bound1100 = icmp ult ptr %scevgep91, %scevgep
  %found.conflict101 = and i1 %bound099, %bound1100
  %conflict.rdx102 = or i1 %conflict.rdx, %found.conflict101
  br i1 %conflict.rdx102, label %vec.epilog.scalar.ph122.preheader, label %vector.main.loop.iter.check104

vector.main.loop.iter.check104:                   ; preds = %vector.memcheck87
  %min.iters.check105 = icmp ult i64 %i.al, 16
  br i1 %min.iters.check105, label %vec.epilog.ph125, label %vector.ph106

vector.ph106:                                     ; preds = %vector.main.loop.iter.check104
  %i.an = and i64 %i.al, 12
  %n.vec107 = and i64 %i.al, -16                  ; 5 uses
  %i.ao = getelementptr i8, ptr %.046.lcssa, i64 %n.vec107
  %i.ap = getelementptr i8, ptr %.048.lcssa, i64 %n.vec107
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph106
  %index109 = phi i64 [ 0, %vector.ph106 ], [ %index.next116, %vector.body108 ] ; 3 uses
  %next.gep110 = getelementptr i8, ptr %.046.lcssa, i64 %index109 ; 3 uses
  %next.gep111 = getelementptr i8, ptr %.048.lcssa, i64 %index109 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %next.gep111, i64 %i.aj
  %wide.load112 = load <16 x i8>, ptr %i.aq, align 1, !tbaa !8, !alias.scope !321 ; 2 uses
  %i.ar = zext <16 x i8> %wide.load112 to <16 x i32> ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %next.gep110, i64 %i.aj
  %wide.load113 = load <16 x i8>, ptr %i.as, align 1, !tbaa !8, !alias.scope !322 ; 2 uses
  %i.at = zext <16 x i8> %wide.load113 to <16 x i32>
  %wide.load114 = load <16 x i8>, ptr %next.gep111, align 1, !tbaa !8, !alias.scope !323 ; 2 uses
  %i.au = zext <16 x i8> %wide.load114 to <16 x i32>
  %i.av = sub nsw <16 x i32> %i.au, %i.ar         ; 2 uses
  %i.aw = sub nsw <16 x i32> %i.at, %i.ar         ; 2 uses
  %i.ax = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.av, i1 true) ; 2 uses
  %i.ay = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.aw, i1 true) ; 2 uses
  %i.az = add nsw <16 x i32> %i.av, %i.aw
  %i.ba = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.az, i1 true)
  %i.bb = icmp samesign ult <16 x i32> %i.ay, %i.ax
  %i.bc = select <16 x i1> %i.bb, <16 x i8> %wide.load114, <16 x i8> %wide.load113
  %i.bd = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.ay, <16 x i32> %i.ax)
  %i.be = icmp samesign ult <16 x i32> %i.ba, %i.bd
  %i.bf = select <16 x i1> %i.be, <16 x i8> %wide.load112, <16 x i8> %i.bc
  %wide.load115 = load <16 x i8>, ptr %next.gep110, align 1, !tbaa !8, !alias.scope !324, !noalias !325
  %i.bg = add <16 x i8> %i.bf, %wide.load115
  store <16 x i8> %i.bg, ptr %next.gep110, align 1, !tbaa !8, !alias.scope !324, !noalias !325
  %index.next116 = add nuw i64 %index109, 16      ; 2 uses
  %i.bh = icmp eq i64 %index.next116, %n.vec107
  br i1 %i.bh, label %middle.block117, label %vector.body108, !llvm.loop !316

middle.block117:                                  ; preds = %vector.body108
  %cmp.n118 = icmp eq i64 %i.al, %n.vec107
  br i1 %cmp.n118, label %._crit_edge62, label %vec.epilog.iter.check123

vec.epilog.iter.check123:                         ; preds = %middle.block117
  %min.epilog.iters.check124 = icmp eq i64 %i.an, 0
  br i1 %min.epilog.iters.check124, label %vec.epilog.scalar.ph122.preheader, label %vec.epilog.ph125, !prof !51

vec.epilog.ph125:                                 ; preds = %vector.main.loop.iter.check104, %vec.epilog.iter.check123
  %vec.epilog.resume.val119 = phi i64 [ %n.vec107, %vec.epilog.iter.check123 ], [ 0, %vector.main.loop.iter.check104 ]
  %n.vec126 = and i64 %i.al, -4                   ; 4 uses
  %i.bi = getelementptr i8, ptr %.046.lcssa, i64 %n.vec126
  %i.bj = getelementptr i8, ptr %.048.lcssa, i64 %n.vec126
  br label %vec.epilog.vector.body127

vec.epilog.vector.body127:                        ; preds = %vec.epilog.vector.body127, %vec.epilog.ph125
  %index128 = phi i64 [ %vec.epilog.resume.val119, %vec.epilog.ph125 ], [ %index.next135, %vec.epilog.vector.body127 ] ; 3 uses
  %next.gep129 = getelementptr i8, ptr %.046.lcssa, i64 %index128 ; 3 uses
  %next.gep130 = getelementptr i8, ptr %.048.lcssa, i64 %index128 ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %next.gep130, i64 %i.aj
  %wide.load131 = load <4 x i8>, ptr %i.bk, align 1, !tbaa !8, !alias.scope !321 ; 2 uses
  %i.bl = zext <4 x i8> %wide.load131 to <4 x i32> ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %next.gep129, i64 %i.aj
  %wide.load132 = load <4 x i8>, ptr %i.bm, align 1, !tbaa !8, !alias.scope !322 ; 2 uses
  %i.bn = zext <4 x i8> %wide.load132 to <4 x i32>
  %wide.load133 = load <4 x i8>, ptr %next.gep130, align 1, !tbaa !8, !alias.scope !323 ; 2 uses
  %i.bo = zext <4 x i8> %wide.load133 to <4 x i32>
  %i.bp = sub nsw <4 x i32> %i.bo, %i.bl          ; 2 uses
  %i.bq = sub nsw <4 x i32> %i.bn, %i.bl          ; 2 uses
  %i.br = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bp, i1 true) ; 2 uses
  %i.bs = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bq, i1 true) ; 2 uses
  %i.bt = add nsw <4 x i32> %i.bp, %i.bq
  %i.bu = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bt, i1 true)
  %i.bv = icmp samesign ult <4 x i32> %i.bs, %i.br
  %i.bw = select <4 x i1> %i.bv, <4 x i8> %wide.load133, <4 x i8> %wide.load132
  %i.bx = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bs, <4 x i32> %i.br)
  %i.by = icmp samesign ult <4 x i32> %i.bu, %i.bx
  %i.bz = select <4 x i1> %i.by, <4 x i8> %wide.load131, <4 x i8> %i.bw
  %wide.load134 = load <4 x i8>, ptr %next.gep129, align 1, !tbaa !8, !alias.scope !324, !noalias !325
  %i.ca = add <4 x i8> %i.bz, %wide.load134
  store <4 x i8> %i.ca, ptr %next.gep129, align 1, !tbaa !8, !alias.scope !324, !noalias !325
  %index.next135 = add nuw i64 %index128, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next135, %n.vec126
  br i1 %i.cb, label %vec.epilog.middle.block136, label %vec.epilog.vector.body127, !llvm.loop !317

vec.epilog.middle.block136:                       ; preds = %vec.epilog.vector.body127
  %cmp.n137 = icmp eq i64 %i.al, %n.vec126
  br i1 %cmp.n137, label %._crit_edge62, label %vec.epilog.scalar.ph122.preheader

vec.epilog.scalar.ph122.preheader:                ; preds = %vector.memcheck87, %iter.check121, %vec.epilog.iter.check123, %vec.epilog.middle.block136
  %.14759.ph = phi ptr [ %.046.lcssa, %iter.check121 ], [ %.046.lcssa, %vector.memcheck87 ], [ %i.ao, %vec.epilog.iter.check123 ], [ %i.bi, %vec.epilog.middle.block136 ]
  %.14958.ph = phi ptr [ %.048.lcssa, %iter.check121 ], [ %.048.lcssa, %vector.memcheck87 ], [ %i.ap, %vec.epilog.iter.check123 ], [ %i.bj, %vec.epilog.middle.block136 ]
  br label %vec.epilog.scalar.ph122

vec.epilog.scalar.ph122:                          ; preds = %vec.epilog.scalar.ph122.preheader, %vec.epilog.scalar.ph122
  %.14759 = phi ptr [ %i.cv, %vec.epilog.scalar.ph122 ], [ %.14759.ph, %vec.epilog.scalar.ph122.preheader ] ; 4 uses
  %.14958 = phi ptr [ %i.ci, %vec.epilog.scalar.ph122 ], [ %.14958.ph, %vec.epilog.scalar.ph122.preheader ] ; 3 uses
  %i.cc = getelementptr inbounds i8, ptr %.14958, i64 %i.aj
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !8   ; 2 uses
  %i.ce = zext i8 %i.cd to i32                    ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %.14759, i64 %i.aj
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !8   ; 2 uses
  %i.ch = zext i8 %i.cg to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %.14958, i64 1
  %i.cj = load i8, ptr %.14958, align 1, !tbaa !8 ; 2 uses
  %i.ck = zext i8 %i.cj to i32
  %i.cl = sub nsw i32 %i.ck, %i.ce                ; 2 uses
  %i.cm = sub nsw i32 %i.ch, %i.ce                ; 2 uses
  %i.cn = tail call i32 @llvm.abs.i32(i32 %i.cl, i1 true) ; 2 uses
  %i.co = tail call i32 @llvm.abs.i32(i32 %i.cm, i1 true) ; 2 uses
  %i.cp = add nsw i32 %i.cl, %i.cm
  %i.cq = tail call i32 @llvm.abs.i32(i32 %i.cp, i1 true)
  %i.cr = icmp samesign ult i32 %i.co, %i.cn
  %.045 = select i1 %i.cr, i8 %i.cj, i8 %i.cg
  %.0 = tail call i32 @llvm.umin.i32(i32 %i.co, i32 %i.cn)
  %i.cs = icmp samesign ult i32 %i.cq, %.0
  %.1 = select i1 %i.cs, i8 %i.cd, i8 %.045
  %i.ct = load i8, ptr %.14759, align 1, !tbaa !8
  %i.cu = add i8 %.1, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %.14759, i64 1 ; 2 uses
  store i8 %i.cu, ptr %.14759, align 1, !tbaa !8
  %exitcond.not = icmp eq ptr %i.cv, %scevgep
  br i1 %exitcond.not, label %._crit_edge62, label %vec.epilog.scalar.ph122, !llvm.loop !318

._crit_edge62:                                    ; preds = %vec.epilog.scalar.ph122, %middle.block117, %vec.epilog.middle.block136, %._crit_edge
  ret void
}

declare void @png_init_filter_functions_sse2(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @png_safecat(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @inflateReset2(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1>, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
