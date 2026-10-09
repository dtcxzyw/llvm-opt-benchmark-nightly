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
  %.014.unr = phi ptr [ %.014.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ag, %vec.epilog.scalar.ph.prol ]
  %.01213.unr = phi i64 [ %.01213.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ah, %vec.epilog.scalar.ph.prol ]
  %i.ai = sub i64 %.01213.ph, %i.b
  %i.aj = icmp ugt i64 %i.ai, -4
  br i1 %i.aj, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.014 = phi ptr [ %i.az, %vec.epilog.scalar.ph ], [ %.014.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %.01213 = phi i64 [ %i.ba, %vec.epilog.scalar.ph ], [ %.01213.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.ak = load i8, ptr %.014, align 1, !tbaa !8
  %i.al = getelementptr inbounds i8, ptr %.014, i64 %i.j
  %i.am = load i8, ptr %i.al, align 1, !tbaa !8
  %.narrow = add i8 %i.am, %i.ak
  store i8 %.narrow, ptr %.014, align 1, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %.014, i64 1 ; 3 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !8
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 %i.j
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !8
  %.narrow.1 = add i8 %i.aq, %i.ao
  store i8 %.narrow.1, ptr %i.an, align 1, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %.014, i64 2 ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !8
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 %i.j
  %i.au = load i8, ptr %i.at, align 1, !tbaa !8
  %.narrow.2 = add i8 %i.au, %i.as
  store i8 %.narrow.2, ptr %i.ar, align 1, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %.014, i64 3 ; 3 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !8
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 %i.j
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !8
  %.narrow.3 = add i8 %i.ay, %i.aw
  store i8 %.narrow.3, ptr %i.av, align 1, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %.014, i64 4
  %i.ba = add nuw i64 %.01213, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ba, %i.b
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
  %i.c = getelementptr i8, ptr %1, i64 %i.b
  %i.d = getelementptr i8, ptr %2, i64 %i.b
  %bound0 = icmp ult ptr %1, %i.d
  %bound1 = icmp ult ptr %2, %i.c
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check15 = icmp ult i64 %i.b, 32
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %i.b, 28
  %n.vec = and i64 %i.b, -32                      ; 6 uses
  %i.f = getelementptr i8, ptr %2, i64 %n.vec
  %i.g = getelementptr i8, ptr %1, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %next.gep16 = getelementptr i8, ptr %1, i64 %index ; 3 uses
  %i.h = getelementptr i8, ptr %next.gep16, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep16, align 1, !tbaa !8, !alias.scope !283, !noalias !284
  %wide.load17 = load <16 x i8>, ptr %i.h, align 1, !tbaa !8, !alias.scope !283, !noalias !284
  %i.i = getelementptr i8, ptr %next.gep, i64 16
  %wide.load18 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !8, !alias.scope !284
  %wide.load19 = load <16 x i8>, ptr %i.i, align 1, !tbaa !8, !alias.scope !284
  %i.j = add <16 x i8> %wide.load18, %wide.load
  %i.k = add <16 x i8> %wide.load19, %wide.load17
  store <16 x i8> %i.j, ptr %next.gep16, align 1, !tbaa !8, !alias.scope !283, !noalias !284
  store <16 x i8> %i.k, ptr %i.h, align 1, !tbaa !8, !alias.scope !283, !noalias !284
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !279

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !49

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %i.b, -4                     ; 5 uses
  %i.m = getelementptr i8, ptr %2, i64 %n.vec21
  %i.n = getelementptr i8, ptr %1, i64 %n.vec21
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next27, %vec.epilog.vector.body ] ; 3 uses
  %next.gep23 = getelementptr i8, ptr %2, i64 %index22
  %next.gep24 = getelementptr i8, ptr %1, i64 %index22 ; 2 uses
  %wide.load25 = load <4 x i8>, ptr %next.gep24, align 1, !tbaa !8, !alias.scope !283, !noalias !284
  %wide.load26 = load <4 x i8>, ptr %next.gep23, align 1, !tbaa !8, !alias.scope !284
  %i.o = add <4 x i8> %wide.load26, %wide.load25
  store <4 x i8> %i.o, ptr %next.gep24, align 1, !tbaa !8, !alias.scope !283, !noalias !284
  %index.next27 = add nuw i64 %index22, 4         ; 2 uses
  %i.p = icmp eq i64 %index.next27, %n.vec21
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !280

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n28 = icmp eq i64 %i.b, %n.vec21
  br i1 %cmp.n28, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.013.ph = phi ptr [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.f, %vec.epilog.iter.check ], [ %i.m, %vec.epilog.middle.block ] ; 2 uses
  %.0912.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.g, %vec.epilog.iter.check ], [ %i.n, %vec.epilog.middle.block ] ; 2 uses
  %.01011.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec21, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.013.prol = phi ptr [ %i.r, %.lr.ph.prol ], [ %.013.ph, %.lr.ph.preheader ] ; 2 uses
  %.0912.prol = phi ptr [ %i.t, %.lr.ph.prol ], [ %.0912.ph, %.lr.ph.preheader ] ; 3 uses
  %.01011.prol = phi i64 [ %i.u, %.lr.ph.prol ], [ %.01011.ph, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.q = load i8, ptr %.0912.prol, align 1, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %.013.prol, i64 1 ; 2 uses
  %i.s = load i8, ptr %.013.prol, align 1, !tbaa !8
  %.narrow.prol = add i8 %i.s, %i.q
  store i8 %.narrow.prol, ptr %.0912.prol, align 1, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %.0912.prol, i64 1 ; 2 uses
  %i.u = add nuw i64 %.01011.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !281

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.013.unr = phi ptr [ %.013.ph, %.lr.ph.preheader ], [ %i.r, %.lr.ph.prol ]
  %.0912.unr = phi ptr [ %.0912.ph, %.lr.ph.preheader ], [ %i.t, %.lr.ph.prol ]
  %.01011.unr = phi i64 [ %.01011.ph, %.lr.ph.preheader ], [ %i.u, %.lr.ph.prol ]
  %i.v = sub i64 %.01011.ph, %i.b
  %i.w = icmp ugt i64 %i.v, -4
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.013 = phi ptr [ %i.ak, %.lr.ph ], [ %.013.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.0912 = phi ptr [ %i.am, %.lr.ph ], [ %.0912.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.01011 = phi i64 [ %i.an, %.lr.ph ], [ %.01011.unr, %.lr.ph.prol.loopexit ]
  %i.x = load i8, ptr %.0912, align 1, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %.013, i64 1
  %i.z = load i8, ptr %.013, align 1, !tbaa !8
  %.narrow = add i8 %i.z, %i.x
  store i8 %.narrow, ptr %.0912, align 1, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %.0912, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %.013, i64 2
  %i.ad = load i8, ptr %i.y, align 1, !tbaa !8
  %.narrow.1 = add i8 %i.ad, %i.ab
  store i8 %.narrow.1, ptr %i.aa, align 1, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %.0912, i64 2 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %.013, i64 3
  %i.ah = load i8, ptr %i.ac, align 1, !tbaa !8
  %.narrow.2 = add i8 %i.ah, %i.af
  store i8 %.narrow.2, ptr %i.ae, align 1, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %.0912, i64 3 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %.013, i64 4
  %i.al = load i8, ptr %i.ag, align 1, !tbaa !8
  %.narrow.3 = add i8 %i.al, %i.aj
  store i8 %.narrow.3, ptr %i.ai, align 1, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %.0912, i64 4
  %i.an = add nuw i64 %.01011, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.an, %i.b
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
  %i.i = getelementptr i8, ptr %1, i64 %i.e
  %i.j = getelementptr i8, ptr %2, i64 %i.e
  %bound0 = icmp ult ptr %1, %i.j
  %bound1 = icmp ult ptr %2, %i.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check41 = icmp ult i8 %i.b, 121
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 48                       ; 6 uses
  %i.k = getelementptr i8, ptr %2, i64 %n.vec     ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %wide.load = load <16 x i8>, ptr %1, align 1, !tbaa !8, !alias.scope !298, !noalias !299
  %wide.load43 = load <16 x i8>, ptr %2, align 1, !tbaa !8, !alias.scope !299
  %i.m = lshr <16 x i8> %wide.load43, splat (i8 1)
  %i.n = add <16 x i8> %i.m, %wide.load
  store <16 x i8> %i.n, ptr %1, align 1, !tbaa !8, !alias.scope !298, !noalias !299
  %i.o = icmp eq i64 %n.vec, 16
  br i1 %i.o, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %next.gep.1 = getelementptr i8, ptr %2, i64 16
  %next.gep42.1 = getelementptr i8, ptr %1, i64 16 ; 2 uses
  %wide.load.1 = load <16 x i8>, ptr %next.gep42.1, align 1, !tbaa !8, !alias.scope !298, !noalias !299
  %wide.load43.1 = load <16 x i8>, ptr %next.gep.1, align 1, !tbaa !8, !alias.scope !299
  %i.p = lshr <16 x i8> %wide.load43.1, splat (i8 1)
  %i.q = add <16 x i8> %i.p, %wide.load.1
  store <16 x i8> %i.q, ptr %next.gep42.1, align 1, !tbaa !8, !alias.scope !298, !noalias !299
  br label %middle.block

middle.block:                                     ; preds = %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.r = and i64 %i.d, 96
  %min.epilog.iters.check = icmp eq i64 %i.r, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !51

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %i.e, 60                     ; 5 uses
  %i.s = getelementptr i8, ptr %2, i64 %n.vec45   ; 2 uses
  %i.t = getelementptr i8, ptr %1, i64 %n.vec45   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next51, %vec.epilog.vector.body ] ; 3 uses
  %next.gep47 = getelementptr i8, ptr %2, i64 %index46
  %next.gep48 = getelementptr i8, ptr %1, i64 %index46 ; 2 uses
  %wide.load49 = load <4 x i8>, ptr %next.gep48, align 1, !tbaa !8, !alias.scope !298, !noalias !299
  %wide.load50 = load <4 x i8>, ptr %next.gep47, align 1, !tbaa !8, !alias.scope !299
  %i.u = lshr <4 x i8> %wide.load50, splat (i8 1)
  %i.v = add <4 x i8> %i.u, %wide.load49
  store <4 x i8> %i.v, ptr %next.gep48, align 1, !tbaa !8, !alias.scope !298, !noalias !299
  %index.next51 = add nuw i64 %index46, 4         ; 2 uses
  %i.w = icmp eq i64 %index.next51, %n.vec45
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !288

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n52 = icmp eq i64 %i.e, %n.vec45
  br i1 %cmp.n52, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.029.ph = phi ptr [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.k, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ] ; 2 uses
  %.02028.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.l, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ] ; 2 uses
  %.02227.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec45, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.029.prol = phi ptr [ %i.y, %.lr.ph.prol ], [ %.029.ph, %.lr.ph.preheader ] ; 2 uses
  %.02028.prol = phi ptr [ %i.ab, %.lr.ph.prol ], [ %.02028.ph, %.lr.ph.preheader ] ; 3 uses
  %.02227.prol = phi i64 [ %i.ac, %.lr.ph.prol ], [ %.02227.ph, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.x = load i8, ptr %.02028.prol, align 1, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %.029.prol, i64 1 ; 3 uses
  %i.z = load i8, ptr %.029.prol, align 1, !tbaa !8
  %i.aa = lshr i8 %i.z, 1
  %.narrow26.prol = add i8 %i.aa, %i.x
  store i8 %.narrow26.prol, ptr %.02028.prol, align 1, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %.02028.prol, i64 1 ; 3 uses
  %i.ac = add nuw nsw i64 %.02227.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !289

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa112.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.y, %.lr.ph.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.ab, %.lr.ph.prol ]
  %.029.unr = phi ptr [ %.029.ph, %.lr.ph.preheader ], [ %i.y, %.lr.ph.prol ]
  %.02028.unr = phi ptr [ %.02028.ph, %.lr.ph.preheader ], [ %i.ab, %.lr.ph.prol ]
  %.02227.unr = phi i64 [ %.02227.ph, %.lr.ph.preheader ], [ %i.ac, %.lr.ph.prol ]
  %i.ad = sub nsw i64 %.02227.ph, %i.e
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.020.lcssa = phi ptr [ %1, %bb.a ], [ %i.t, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.cx, %.lr.ph ] ; 11 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.s, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.lcssa112.unr, %.lr.ph.prol.loopexit ], [ %i.cu, %.lr.ph ] ; 8 uses
  %.not35 = icmp eq i64 %i.g, %i.e
  br i1 %.not35, label %._crit_edge, label %iter.check93

iter.check93:                                     ; preds = %.preheader
  %i.af = sub nsw i64 0, %i.e                     ; 6 uses
  %min.iters.check66 = icmp ult i64 %i.h, 8
  br i1 %min.iters.check66, label %vec.epilog.scalar.ph94.preheader, label %vector.memcheck67

vector.memcheck67:                                ; preds = %iter.check93
  %i.ag = getelementptr i8, ptr %.020.lcssa, i64 %i.h ; 2 uses
  %i.ah = getelementptr i8, ptr %.0.lcssa, i64 %i.h
  %i.ai = getelementptr i8, ptr %.020.lcssa, i64 %i.af
  %i.aj = shl nuw nsw i64 %i.e, 1
  %i.ak = sub i64 %i.g, %i.aj
  %i.al = getelementptr i8, ptr %.020.lcssa, i64 %i.ak
  %bound068 = icmp ult ptr %.020.lcssa, %i.ah
  %bound169 = icmp ult ptr %.0.lcssa, %i.ag
  %found.conflict70 = and i1 %bound068, %bound169
  %bound071 = icmp ult ptr %.020.lcssa, %i.al
  %bound172 = icmp ult ptr %i.ai, %i.ag
  %found.conflict73 = and i1 %bound071, %bound172
  %conflict.rdx = or i1 %found.conflict70, %found.conflict73
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph94.preheader, label %vector.main.loop.iter.check74

vector.main.loop.iter.check74:                    ; preds = %vector.memcheck67
  %min.iters.check75 = icmp ult i64 %i.h, 32
  br i1 %min.iters.check75, label %vec.epilog.ph97, label %vector.ph76

vector.ph76:                                      ; preds = %vector.main.loop.iter.check74
  %i.am = and i64 %i.h, 24
  %n.vec77 = and i64 %i.h, -32                    ; 6 uses
  %i.an = getelementptr i8, ptr %.0.lcssa, i64 %n.vec77
  %i.ao = getelementptr i8, ptr %.020.lcssa, i64 %n.vec77
  br label %vector.body78

vector.body78:                                    ; preds = %vector.ph76, %vector.body78
  %index79 = phi i64 [ 0, %vector.ph76 ], [ %index.next88, %vector.body78 ] ; 3 uses
  %next.gep80 = getelementptr i8, ptr %.0.lcssa, i64 %index79 ; 2 uses
  %next.gep81 = getelementptr i8, ptr %.020.lcssa, i64 %index79 ; 4 uses
  %i.ap = getelementptr i8, ptr %next.gep81, i64 16 ; 2 uses
  %wide.load82 = load <16 x i8>, ptr %next.gep81, align 1, !tbaa !8, !alias.scope !300, !noalias !301
  %wide.load83 = load <16 x i8>, ptr %i.ap, align 1, !tbaa !8, !alias.scope !300, !noalias !301
  %i.aq = getelementptr i8, ptr %next.gep80, i64 16
  %wide.load84 = load <16 x i8>, ptr %next.gep80, align 1, !tbaa !8, !alias.scope !302
  %wide.load85 = load <16 x i8>, ptr %i.aq, align 1, !tbaa !8, !alias.scope !302
  %i.ar = zext <16 x i8> %wide.load84 to <16 x i16>
  %i.as = zext <16 x i8> %wide.load85 to <16 x i16>
  %i.at = getelementptr inbounds i8, ptr %next.gep81, i64 %i.af ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load86 = load <16 x i8>, ptr %i.at, align 1, !tbaa !8, !alias.scope !303
  %wide.load87 = load <16 x i8>, ptr %i.au, align 1, !tbaa !8, !alias.scope !303
  %i.av = zext <16 x i8> %wide.load86 to <16 x i16>
  %i.aw = zext <16 x i8> %wide.load87 to <16 x i16>
  %i.ax = add nuw nsw <16 x i16> %i.av, %i.ar
  %i.ay = add nuw nsw <16 x i16> %i.aw, %i.as
  %i.az = lshr <16 x i16> %i.ax, splat (i16 1)
  %i.ba = lshr <16 x i16> %i.ay, splat (i16 1)
  %i.bb = trunc nuw <16 x i16> %i.az to <16 x i8>
  %i.bc = trunc nuw <16 x i16> %i.ba to <16 x i8>
  %i.bd = add <16 x i8> %wide.load82, %i.bb
  %i.be = add <16 x i8> %wide.load83, %i.bc
  store <16 x i8> %i.bd, ptr %next.gep81, align 1, !tbaa !8, !alias.scope !300, !noalias !301
  store <16 x i8> %i.be, ptr %i.ap, align 1, !tbaa !8, !alias.scope !300, !noalias !301
  %index.next88 = add nuw i64 %index79, 32        ; 2 uses
  %i.bf = icmp eq i64 %index.next88, %n.vec77
  br i1 %i.bf, label %middle.block89, label %vector.body78, !llvm.loop !294

middle.block89:                                   ; preds = %vector.body78
  %cmp.n90 = icmp eq i64 %i.h, %n.vec77
  br i1 %cmp.n90, label %._crit_edge, label %vec.epilog.iter.check95

vec.epilog.iter.check95:                          ; preds = %middle.block89
  %min.epilog.iters.check96 = icmp eq i64 %i.am, 0
  br i1 %min.epilog.iters.check96, label %vec.epilog.scalar.ph94.preheader, label %vec.epilog.ph97, !prof !90

vec.epilog.ph97:                                  ; preds = %vector.main.loop.iter.check74, %vec.epilog.iter.check95
  %vec.epilog.resume.val91 = phi i64 [ %n.vec77, %vec.epilog.iter.check95 ], [ 0, %vector.main.loop.iter.check74 ]
  %n.vec98 = and i64 %i.h, -8                     ; 5 uses
  %i.bg = getelementptr i8, ptr %.0.lcssa, i64 %n.vec98
  %i.bh = getelementptr i8, ptr %.020.lcssa, i64 %n.vec98
  br label %vec.epilog.vector.body99

vec.epilog.vector.body99:                         ; preds = %vec.epilog.vector.body99, %vec.epilog.ph97
  %index100 = phi i64 [ %vec.epilog.resume.val91, %vec.epilog.ph97 ], [ %index.next106, %vec.epilog.vector.body99 ] ; 3 uses
  %next.gep101 = getelementptr i8, ptr %.0.lcssa, i64 %index100
  %next.gep102 = getelementptr i8, ptr %.020.lcssa, i64 %index100 ; 3 uses
  %wide.load103 = load <8 x i8>, ptr %next.gep102, align 1, !tbaa !8, !alias.scope !300, !noalias !301
  %wide.load104 = load <8 x i8>, ptr %next.gep101, align 1, !tbaa !8, !alias.scope !302
  %i.bi = zext <8 x i8> %wide.load104 to <8 x i16>
  %i.bj = getelementptr inbounds i8, ptr %next.gep102, i64 %i.af
  %wide.load105 = load <8 x i8>, ptr %i.bj, align 1, !tbaa !8, !alias.scope !303
  %i.bk = zext <8 x i8> %wide.load105 to <8 x i16>
  %i.bl = add nuw nsw <8 x i16> %i.bk, %i.bi
  %i.bm = lshr <8 x i16> %i.bl, splat (i16 1)
  %i.bn = trunc nuw <8 x i16> %i.bm to <8 x i8>
  %i.bo = add <8 x i8> %wide.load103, %i.bn
  store <8 x i8> %i.bo, ptr %next.gep102, align 1, !tbaa !8, !alias.scope !300, !noalias !301
  %index.next106 = add nuw i64 %index100, 8       ; 2 uses
  %i.bp = icmp eq i64 %index.next106, %n.vec98
  br i1 %i.bp, label %vec.epilog.middle.block107, label %vec.epilog.vector.body99, !llvm.loop !295

vec.epilog.middle.block107:                       ; preds = %vec.epilog.vector.body99
  %cmp.n108 = icmp eq i64 %i.h, %n.vec98
  br i1 %cmp.n108, label %._crit_edge, label %vec.epilog.scalar.ph94.preheader

vec.epilog.scalar.ph94.preheader:                 ; preds = %iter.check93, %vector.memcheck67, %vec.epilog.iter.check95, %vec.epilog.middle.block107
  %.133.ph = phi ptr [ %.0.lcssa, %iter.check93 ], [ %.0.lcssa, %vector.memcheck67 ], [ %i.an, %vec.epilog.iter.check95 ], [ %i.bg, %vec.epilog.middle.block107 ] ; 3 uses
  %.12132.ph = phi ptr [ %.020.lcssa, %iter.check93 ], [ %.020.lcssa, %vector.memcheck67 ], [ %i.ao, %vec.epilog.iter.check95 ], [ %i.bh, %vec.epilog.middle.block107 ] ; 5 uses
  %.12331.ph = phi i64 [ 0, %iter.check93 ], [ 0, %vector.memcheck67 ], [ %n.vec77, %vec.epilog.iter.check95 ], [ %n.vec98, %vec.epilog.middle.block107 ] ; 3 uses
  %i.bq = xor i64 %.12331.ph, -1
  %i.br = add i64 %i.g, %i.bq
  %xtraiter113 = and i64 %i.h, 1
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %vec.epilog.scalar.ph94.prol.loopexit, label %vec.epilog.scalar.ph94.prol

vec.epilog.scalar.ph94.prol:                      ; preds = %vec.epilog.scalar.ph94.preheader
  %i.bs = load i8, ptr %.12132.ph, align 1, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %.133.ph, i64 1
  %i.bu = load i8, ptr %.133.ph, align 1, !tbaa !8
  %i.bv = zext i8 %i.bu to i16
  %i.bw = getelementptr inbounds i8, ptr %.12132.ph, i64 %i.af
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !8
  %i.by = zext i8 %i.bx to i16
  %i.bz = add nuw nsw i16 %i.by, %i.bv
  %i.ca = lshr i16 %i.bz, 1
  %.tr.prol = trunc nuw i16 %i.ca to i8
  %.narrow.prol = add i8 %i.bs, %.tr.prol
  store i8 %.narrow.prol, ptr %.12132.ph, align 1, !tbaa !8
  %i.cb = getelementptr inbounds nuw i8, ptr %.12132.ph, i64 1
  %i.cc = or disjoint i64 %.12331.ph, 1
  br label %vec.epilog.scalar.ph94.prol.loopexit

vec.epilog.scalar.ph94.prol.loopexit:             ; preds = %vec.epilog.scalar.ph94.prol, %vec.epilog.scalar.ph94.preheader
  %.133.unr = phi ptr [ %.133.ph, %vec.epilog.scalar.ph94.preheader ], [ %i.bt, %vec.epilog.scalar.ph94.prol ]
  %.12132.unr = phi ptr [ %.12132.ph, %vec.epilog.scalar.ph94.preheader ], [ %i.cb, %vec.epilog.scalar.ph94.prol ]
  %.12331.unr = phi i64 [ %.12331.ph, %vec.epilog.scalar.ph94.preheader ], [ %i.cc, %vec.epilog.scalar.ph94.prol ]
  %i.cd = icmp eq i64 %i.br, %i.e
  br i1 %i.cd, label %._crit_edge, label %vec.epilog.scalar.ph94

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.029 = phi ptr [ %i.cu, %.lr.ph ], [ %.029.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.02028 = phi ptr [ %i.cx, %.lr.ph ], [ %.02028.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.02227 = phi i64 [ %i.cy, %.lr.ph ], [ %.02227.unr, %.lr.ph.prol.loopexit ]
  %i.ce = load i8, ptr %.02028, align 1, !tbaa !8
  %i.cf = getelementptr inbounds nuw i8, ptr %.029, i64 1
  %i.cg = load i8, ptr %.029, align 1, !tbaa !8
  %i.ch = lshr i8 %i.cg, 1
  %.narrow26 = add i8 %i.ch, %i.ce
  store i8 %.narrow26, ptr %.02028, align 1, !tbaa !8
  %i.ci = getelementptr inbounds nuw i8, ptr %.02028, i64 1 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !8
  %i.ck = getelementptr inbounds nuw i8, ptr %.029, i64 2
  %i.cl = load i8, ptr %i.cf, align 1, !tbaa !8
  %i.cm = lshr i8 %i.cl, 1
  %.narrow26.1 = add i8 %i.cm, %i.cj
  store i8 %.narrow26.1, ptr %i.ci, align 1, !tbaa !8
  %i.cn = getelementptr inbounds nuw i8, ptr %.02028, i64 2 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !8
  %i.cp = getelementptr inbounds nuw i8, ptr %.029, i64 3
  %i.cq = load i8, ptr %i.ck, align 1, !tbaa !8
  %i.cr = lshr i8 %i.cq, 1
  %.narrow26.2 = add i8 %i.cr, %i.co
  store i8 %.narrow26.2, ptr %i.cn, align 1, !tbaa !8
  %i.cs = getelementptr inbounds nuw i8, ptr %.02028, i64 3 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !8
  %i.cu = getelementptr inbounds nuw i8, ptr %.029, i64 4 ; 2 uses
  %i.cv = load i8, ptr %i.cp, align 1, !tbaa !8
  %i.cw = lshr i8 %i.cv, 1
  %.narrow26.3 = add i8 %i.cw, %i.ct
  store i8 %.narrow26.3, ptr %i.cs, align 1, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %.02028, i64 4 ; 2 uses
  %i.cy = add nuw nsw i64 %.02227, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.cy, %i.e
  br i1 %exitcond.not.3, label %.preheader, label %.lr.ph, !llvm.loop !296

vec.epilog.scalar.ph94:                           ; preds = %vec.epilog.scalar.ph94.prol.loopexit, %vec.epilog.scalar.ph94
  %.133 = phi ptr [ %i.dk, %vec.epilog.scalar.ph94 ], [ %.133.unr, %vec.epilog.scalar.ph94.prol.loopexit ] ; 3 uses
  %.12132 = phi ptr [ %i.ds, %vec.epilog.scalar.ph94 ], [ %.12132.unr, %vec.epilog.scalar.ph94.prol.loopexit ] ; 5 uses
  %.12331 = phi i64 [ %i.dt, %vec.epilog.scalar.ph94 ], [ %.12331.unr, %vec.epilog.scalar.ph94.prol.loopexit ]
  %i.cz = load i8, ptr %.12132, align 1, !tbaa !8
  %i.da = getelementptr inbounds nuw i8, ptr %.133, i64 1
  %i.db = load i8, ptr %.133, align 1, !tbaa !8
  %i.dc = zext i8 %i.db to i16
  %i.dd = getelementptr inbounds i8, ptr %.12132, i64 %i.af
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !8
  %i.df = zext i8 %i.de to i16
  %i.dg = add nuw nsw i16 %i.df, %i.dc
  %i.dh = lshr i16 %i.dg, 1
  %.tr = trunc nuw i16 %i.dh to i8
  %.narrow = add i8 %i.cz, %.tr
  store i8 %.narrow, ptr %.12132, align 1, !tbaa !8
  %i.di = getelementptr inbounds nuw i8, ptr %.12132, i64 1 ; 3 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !8
  %i.dk = getelementptr inbounds nuw i8, ptr %.133, i64 2
  %i.dl = load i8, ptr %i.da, align 1, !tbaa !8
  %i.dm = zext i8 %i.dl to i16
  %i.dn = getelementptr inbounds i8, ptr %i.di, i64 %i.af
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !8
  %i.dp = zext i8 %i.do to i16
  %i.dq = add nuw nsw i16 %i.dp, %i.dm
  %i.dr = lshr i16 %i.dq, 1
  %.tr.1 = trunc nuw i16 %i.dr to i8
  %.narrow.1 = add i8 %i.dj, %.tr.1
  store i8 %.narrow.1, ptr %i.di, align 1, !tbaa !8
  %i.ds = getelementptr inbounds nuw i8, ptr %.12132, i64 2
  %i.dt = add nuw i64 %.12331, 2                  ; 2 uses
  %exitcond37.not.1 = icmp eq i64 %i.dt, %i.h
  br i1 %exitcond37.not.1, label %._crit_edge, label %vec.epilog.scalar.ph94, !llvm.loop !297

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph94.prol.loopexit, %vec.epilog.scalar.ph94, %middle.block89, %vec.epilog.middle.block107, %.preheader
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
  %i.a = ptrtoaddr ptr %1 to i64                  ; 9 uses
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
  %umax = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %i.i)
  %i.j = sub i64 %umax, %i.a                      ; 7 uses
  %min.iters.check = icmp ult i64 %i.j, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.k = add i64 %i.f, %i.a
  %i.l = add i64 %i.a, 1
  %i.m = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %i.l)
  %i.n = sub i64 %i.m, %i.a                       ; 2 uses
  %i.o = getelementptr i8, ptr %1, i64 %i.n
  %i.p = getelementptr i8, ptr %2, i64 %i.n
  %bound0 = icmp ult ptr %1, %i.p
  %bound1 = icmp ult ptr %2, %i.o
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check70 = icmp ult i64 %i.j, 32
  br i1 %min.iters.check70, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.j, 24
  %n.vec = and i64 %i.j, -32                      ; 5 uses
  %i.r = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %i.s = getelementptr i8, ptr %2, i64 %n.vec     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
end_hunk_0
