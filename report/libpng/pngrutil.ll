Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngrutil?download=true
inline.NumInlined: 112
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@png_read_filter_row_up:bb.a
  %.0912.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.g, %vec.epilog.iter.check ], [ %i.n, %vec.epilog.middle.block ] ; 2 uses
  %.01011.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec20, %vec.epilog.middle.block ] ; 3 uses
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
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !284

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
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !285

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
  %i.e = lshr i64 %i.d, 3                         ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !54   ; 5 uses
  %i.h = sub i64 %i.g, %i.e                       ; 10 uses
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
  %wide.load = load <16 x i8>, ptr %1, align 1, !tbaa !8, !alias.scope !301, !noalias !302
  %wide.load43 = load <16 x i8>, ptr %2, align 1, !tbaa !8, !alias.scope !302
  %i.m = lshr <16 x i8> %wide.load43, splat (i8 1)
  %i.n = add <16 x i8> %i.m, %wide.load
  store <16 x i8> %i.n, ptr %1, align 1, !tbaa !8, !alias.scope !301, !noalias !302
  %i.o = icmp eq i64 %n.vec, 16
  br i1 %i.o, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %next.gep.1 = getelementptr i8, ptr %2, i64 16
  %next.gep42.1 = getelementptr i8, ptr %1, i64 16 ; 2 uses
  %wide.load.1 = load <16 x i8>, ptr %next.gep42.1, align 1, !tbaa !8, !alias.scope !301, !noalias !302
  %wide.load43.1 = load <16 x i8>, ptr %next.gep.1, align 1, !tbaa !8, !alias.scope !302
  %i.p = lshr <16 x i8> %wide.load43.1, splat (i8 1)
  %i.q = add <16 x i8> %i.p, %wide.load.1
  store <16 x i8> %i.q, ptr %next.gep42.1, align 1, !tbaa !8, !alias.scope !301, !noalias !302
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
  %n.vec44 = and i64 %i.e, 60                     ; 5 uses
  %i.s = getelementptr i8, ptr %2, i64 %n.vec44   ; 2 uses
  %i.t = getelementptr i8, ptr %1, i64 %n.vec44   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index45 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next50, %vec.epilog.vector.body ] ; 3 uses
  %next.gep46 = getelementptr i8, ptr %2, i64 %index45
  %next.gep47 = getelementptr i8, ptr %1, i64 %index45 ; 2 uses
  %wide.load48 = load <4 x i8>, ptr %next.gep47, align 1, !tbaa !8, !alias.scope !301, !noalias !302
  %wide.load49 = load <4 x i8>, ptr %next.gep46, align 1, !tbaa !8, !alias.scope !302
  %i.u = lshr <4 x i8> %wide.load49, splat (i8 1)
  %i.v = add <4 x i8> %i.u, %wide.load48
  store <4 x i8> %i.v, ptr %next.gep47, align 1, !tbaa !8, !alias.scope !301, !noalias !302
  %index.next50 = add nuw i64 %index45, 4         ; 2 uses
  %i.w = icmp eq i64 %index.next50, %n.vec44
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !291

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n51 = icmp eq i64 %i.e, %n.vec44
  br i1 %cmp.n51, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.029.ph = phi ptr [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.k, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ] ; 2 uses
  %.02028.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.l, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ] ; 2 uses
  %.02227.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec44, %vec.epilog.middle.block ] ; 3 uses
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
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !292

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa109.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.y, %.lr.ph.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.ab, %.lr.ph.prol ]
  %.029.unr = phi ptr [ %.029.ph, %.lr.ph.preheader ], [ %i.y, %.lr.ph.prol ]
  %.02028.unr = phi ptr [ %.02028.ph, %.lr.ph.preheader ], [ %i.ab, %.lr.ph.prol ]
  %.02227.unr = phi i64 [ %.02227.ph, %.lr.ph.preheader ], [ %i.ac, %.lr.ph.prol ]
  %i.ad = sub nsw i64 %.02227.ph, %i.e
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.020.lcssa = phi ptr [ %1, %bb.a ], [ %i.t, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.cv, %.lr.ph ] ; 11 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.s, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.lcssa109.unr, %.lr.ph.prol.loopexit ], [ %i.cs, %.lr.ph ] ; 8 uses
  %.not35 = icmp eq i64 %i.g, %i.e
  br i1 %.not35, label %._crit_edge, label %iter.check89

iter.check89:                                     ; preds = %.preheader
  %i.af = sub nsw i64 0, %i.e                     ; 6 uses
  %min.iters.check64 = icmp ult i64 %i.h, 8
  br i1 %min.iters.check64, label %vec.epilog.scalar.ph91.preheader, label %vector.memcheck65

vector.memcheck65:                                ; preds = %iter.check89
  %i.ag = getelementptr i8, ptr %.020.lcssa, i64 %i.h ; 2 uses
  %i.ah = getelementptr i8, ptr %.0.lcssa, i64 %i.h
  %bound066 = icmp ult ptr %.020.lcssa, %i.ah
  %bound167 = icmp ult ptr %.0.lcssa, %i.ag
  %found.conflict68 = and i1 %bound066, %bound167
  %i.ai = getelementptr i8, ptr %.020.lcssa, i64 %i.af
  %3 = shl nuw nsw i64 %i.e, 1
  %4 = sub i64 %i.g, %3
  %5 = getelementptr i8, ptr %.020.lcssa, i64 %4
  %bound069 = icmp ult ptr %.020.lcssa, %5
  %bound170 = icmp ult ptr %i.ai, %i.ag
  %found.conflict71 = and i1 %bound069, %bound170
  %conflict.rdx = or i1 %found.conflict68, %found.conflict71
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph91.preheader, label %vector.main.loop.iter.check72

vector.main.loop.iter.check72:                    ; preds = %vector.memcheck65
  %min.iters.check73 = icmp ult i64 %i.h, 32
  br i1 %min.iters.check73, label %vec.epilog.ph93, label %vector.ph74

vector.ph74:                                      ; preds = %vector.main.loop.iter.check72
  %i.aj = and i64 %i.h, 24
  %n.vec75 = and i64 %i.h, -32                    ; 6 uses
  %i.ak = getelementptr i8, ptr %.0.lcssa, i64 %n.vec75
  %i.al = getelementptr i8, ptr %.020.lcssa, i64 %n.vec75
  br label %vector.body76

vector.body76:                                    ; preds = %vector.ph74, %vector.body76
  %index77 = phi i64 [ 0, %vector.ph74 ], [ %index.next86, %vector.body76 ] ; 3 uses
  %next.gep78 = getelementptr i8, ptr %.0.lcssa, i64 %index77 ; 2 uses
  %next.gep79 = getelementptr i8, ptr %.020.lcssa, i64 %index77 ; 4 uses
  %i.am = getelementptr i8, ptr %next.gep79, i64 16 ; 2 uses
  %wide.load80 = load <16 x i8>, ptr %next.gep79, align 1, !tbaa !8, !alias.scope !303, !noalias !304
  %wide.load81 = load <16 x i8>, ptr %i.am, align 1, !tbaa !8, !alias.scope !303, !noalias !304
  %i.an = getelementptr i8, ptr %next.gep78, i64 16
  %wide.load82 = load <16 x i8>, ptr %next.gep78, align 1, !tbaa !8, !alias.scope !305
  %wide.load83 = load <16 x i8>, ptr %i.an, align 1, !tbaa !8, !alias.scope !305
  %i.ao = zext <16 x i8> %wide.load82 to <16 x i16>
  %i.ap = zext <16 x i8> %wide.load83 to <16 x i16>
  %i.aq = getelementptr inbounds i8, ptr %next.gep79, i64 %i.af ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load84 = load <16 x i8>, ptr %i.aq, align 1, !tbaa !8, !alias.scope !306
  %wide.load85 = load <16 x i8>, ptr %i.ar, align 1, !tbaa !8, !alias.scope !306
  %i.as = zext <16 x i8> %wide.load84 to <16 x i16>
  %i.at = zext <16 x i8> %wide.load85 to <16 x i16>
  %i.au = add nuw nsw <16 x i16> %i.as, %i.ao
  %i.av = add nuw nsw <16 x i16> %i.at, %i.ap
  %i.aw = lshr <16 x i16> %i.au, splat (i16 1)
  %i.ax = lshr <16 x i16> %i.av, splat (i16 1)
  %i.ay = trunc nuw <16 x i16> %i.aw to <16 x i8>
  %i.az = trunc nuw <16 x i16> %i.ax to <16 x i8>
  %i.ba = add <16 x i8> %wide.load80, %i.ay
  %i.bb = add <16 x i8> %wide.load81, %i.az
  store <16 x i8> %i.ba, ptr %next.gep79, align 1, !tbaa !8, !alias.scope !303, !noalias !304
  store <16 x i8> %i.bb, ptr %i.am, align 1, !tbaa !8, !alias.scope !303, !noalias !304
  %index.next86 = add nuw i64 %index77, 32        ; 2 uses
  %i.bc = icmp eq i64 %index.next86, %n.vec75
  br i1 %i.bc, label %middle.block87, label %vector.body76, !llvm.loop !297

middle.block87:                                   ; preds = %vector.body76
  %cmp.n88 = icmp eq i64 %i.h, %n.vec75
  br i1 %cmp.n88, label %._crit_edge, label %vec.epilog.iter.check90

vec.epilog.iter.check90:                          ; preds = %middle.block87
  %min.epilog.iters.check92 = icmp eq i64 %i.aj, 0
  br i1 %min.epilog.iters.check92, label %vec.epilog.scalar.ph91.preheader, label %vec.epilog.ph93, !prof !90

vec.epilog.ph93:                                  ; preds = %vector.main.loop.iter.check72, %vec.epilog.iter.check90
  %vec.epilog.resume.val94 = phi i64 [ %n.vec75, %vec.epilog.iter.check90 ], [ 0, %vector.main.loop.iter.check72 ]
  %n.vec95 = and i64 %i.h, -8                     ; 5 uses
  %i.bd = getelementptr i8, ptr %.0.lcssa, i64 %n.vec95
  %i.be = getelementptr i8, ptr %.020.lcssa, i64 %n.vec95
  br label %vec.epilog.vector.body96

vec.epilog.vector.body96:                         ; preds = %vec.epilog.vector.body96, %vec.epilog.ph93
  %index97 = phi i64 [ %vec.epilog.resume.val94, %vec.epilog.ph93 ], [ %index.next103, %vec.epilog.vector.body96 ] ; 3 uses
  %next.gep98 = getelementptr i8, ptr %.0.lcssa, i64 %index97
  %next.gep99 = getelementptr i8, ptr %.020.lcssa, i64 %index97 ; 3 uses
  %wide.load100 = load <8 x i8>, ptr %next.gep99, align 1, !tbaa !8, !alias.scope !303, !noalias !304
  %wide.load101 = load <8 x i8>, ptr %next.gep98, align 1, !tbaa !8, !alias.scope !305
  %i.bf = zext <8 x i8> %wide.load101 to <8 x i16>
  %i.bg = getelementptr inbounds i8, ptr %next.gep99, i64 %i.af
  %wide.load102 = load <8 x i8>, ptr %i.bg, align 1, !tbaa !8, !alias.scope !306
  %i.bh = zext <8 x i8> %wide.load102 to <8 x i16>
  %i.bi = add nuw nsw <8 x i16> %i.bh, %i.bf
  %i.bj = lshr <8 x i16> %i.bi, splat (i16 1)
  %i.bk = trunc nuw <8 x i16> %i.bj to <8 x i8>
  %i.bl = add <8 x i8> %wide.load100, %i.bk
  store <8 x i8> %i.bl, ptr %next.gep99, align 1, !tbaa !8, !alias.scope !303, !noalias !304
  %index.next103 = add nuw i64 %index97, 8        ; 2 uses
  %i.bm = icmp eq i64 %index.next103, %n.vec95
  br i1 %i.bm, label %vec.epilog.middle.block104, label %vec.epilog.vector.body96, !llvm.loop !298

vec.epilog.middle.block104:                       ; preds = %vec.epilog.vector.body96
  %cmp.n105 = icmp eq i64 %i.h, %n.vec95
  br i1 %cmp.n105, label %._crit_edge, label %vec.epilog.scalar.ph91.preheader

vec.epilog.scalar.ph91.preheader:                 ; preds = %iter.check89, %vector.memcheck65, %vec.epilog.iter.check90, %vec.epilog.middle.block104
  %.133.ph = phi ptr [ %.0.lcssa, %iter.check89 ], [ %.0.lcssa, %vector.memcheck65 ], [ %i.ak, %vec.epilog.iter.check90 ], [ %i.bd, %vec.epilog.middle.block104 ] ; 3 uses
  %.12132.ph = phi ptr [ %.020.lcssa, %iter.check89 ], [ %.020.lcssa, %vector.memcheck65 ], [ %i.al, %vec.epilog.iter.check90 ], [ %i.be, %vec.epilog.middle.block104 ] ; 5 uses
  %.12331.ph = phi i64 [ 0, %iter.check89 ], [ 0, %vector.memcheck65 ], [ %n.vec75, %vec.epilog.iter.check90 ], [ %n.vec95, %vec.epilog.middle.block104 ] ; 3 uses
  %i.bn = sub i64 %i.g, %i.e
  %i.bo = xor i64 %.12331.ph, -1
  %i.bp = add i64 %i.g, %i.bo
  %xtraiter110 = and i64 %i.bn, 1
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %vec.epilog.scalar.ph91.prol.loopexit, label %vec.epilog.scalar.ph91.prol

vec.epilog.scalar.ph91.prol:                      ; preds = %vec.epilog.scalar.ph91.preheader
  %i.bq = load i8, ptr %.12132.ph, align 1, !tbaa !8
  %i.br = getelementptr inbounds nuw i8, ptr %.133.ph, i64 1
  %i.bs = load i8, ptr %.133.ph, align 1, !tbaa !8
  %i.bt = zext i8 %i.bs to i16
  %i.bu = getelementptr inbounds i8, ptr %.12132.ph, i64 %i.af
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !8
  %i.bw = zext i8 %i.bv to i16
  %i.bx = add nuw nsw i16 %i.bw, %i.bt
  %i.by = lshr i16 %i.bx, 1
  %.tr.prol = trunc nuw i16 %i.by to i8
  %.narrow.prol = add i8 %i.bq, %.tr.prol
  store i8 %.narrow.prol, ptr %.12132.ph, align 1, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %.12132.ph, i64 1
  %i.ca = or disjoint i64 %.12331.ph, 1
  br label %vec.epilog.scalar.ph91.prol.loopexit

vec.epilog.scalar.ph91.prol.loopexit:             ; preds = %vec.epilog.scalar.ph91.prol, %vec.epilog.scalar.ph91.preheader
  %.133.unr = phi ptr [ %.133.ph, %vec.epilog.scalar.ph91.preheader ], [ %i.br, %vec.epilog.scalar.ph91.prol ]
  %.12132.unr = phi ptr [ %.12132.ph, %vec.epilog.scalar.ph91.preheader ], [ %i.bz, %vec.epilog.scalar.ph91.prol ]
  %.12331.unr = phi i64 [ %.12331.ph, %vec.epilog.scalar.ph91.preheader ], [ %i.ca, %vec.epilog.scalar.ph91.prol ]
  %i.cb = icmp eq i64 %i.bp, %i.e
  br i1 %i.cb, label %._crit_edge, label %vec.epilog.scalar.ph91

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.029 = phi ptr [ %i.cs, %.lr.ph ], [ %.029.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.02028 = phi ptr [ %i.cv, %.lr.ph ], [ %.02028.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.02227 = phi i64 [ %i.cw, %.lr.ph ], [ %.02227.unr, %.lr.ph.prol.loopexit ]
  %i.cc = load i8, ptr %.02028, align 1, !tbaa !8
  %i.cd = getelementptr inbounds nuw i8, ptr %.029, i64 1
  %i.ce = load i8, ptr %.029, align 1, !tbaa !8
  %i.cf = lshr i8 %i.ce, 1
  %.narrow26 = add i8 %i.cf, %i.cc
  store i8 %.narrow26, ptr %.02028, align 1, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %.02028, i64 1 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !8
  %i.ci = getelementptr inbounds nuw i8, ptr %.029, i64 2
  %i.cj = load i8, ptr %i.cd, align 1, !tbaa !8
  %i.ck = lshr i8 %i.cj, 1
  %.narrow26.1 = add i8 %i.ck, %i.ch
  store i8 %.narrow26.1, ptr %i.cg, align 1, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %.02028, i64 2 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !8
  %i.cn = getelementptr inbounds nuw i8, ptr %.029, i64 3
  %i.co = load i8, ptr %i.ci, align 1, !tbaa !8
  %i.cp = lshr i8 %i.co, 1
  %.narrow26.2 = add i8 %i.cp, %i.cm
  store i8 %.narrow26.2, ptr %i.cl, align 1, !tbaa !8
  %i.cq = getelementptr inbounds nuw i8, ptr %.02028, i64 3 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !8
  %i.cs = getelementptr inbounds nuw i8, ptr %.029, i64 4 ; 2 uses
  %i.ct = load i8, ptr %i.cn, align 1, !tbaa !8
  %i.cu = lshr i8 %i.ct, 1
  %.narrow26.3 = add i8 %i.cu, %i.cr
  store i8 %.narrow26.3, ptr %i.cq, align 1, !tbaa !8
  %i.cv = getelementptr inbounds nuw i8, ptr %.02028, i64 4 ; 2 uses
  %i.cw = add nuw nsw i64 %.02227, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.cw, %i.e
  br i1 %exitcond.not.3, label %.preheader, label %.lr.ph, !llvm.loop !299

vec.epilog.scalar.ph91:                           ; preds = %vec.epilog.scalar.ph91.prol.loopexit, %vec.epilog.scalar.ph91
  %.133 = phi ptr [ %i.di, %vec.epilog.scalar.ph91 ], [ %.133.unr, %vec.epilog.scalar.ph91.prol.loopexit ] ; 3 uses
  %.12132 = phi ptr [ %i.dq, %vec.epilog.scalar.ph91 ], [ %.12132.unr, %vec.epilog.scalar.ph91.prol.loopexit ] ; 5 uses
  %.12331 = phi i64 [ %i.dr, %vec.epilog.scalar.ph91 ], [ %.12331.unr, %vec.epilog.scalar.ph91.prol.loopexit ]
  %i.cx = load i8, ptr %.12132, align 1, !tbaa !8
  %i.cy = getelementptr inbounds nuw i8, ptr %.133, i64 1
  %i.cz = load i8, ptr %.133, align 1, !tbaa !8
  %i.da = zext i8 %i.cz to i16
  %i.db = getelementptr inbounds i8, ptr %.12132, i64 %i.af
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !8
  %i.dd = zext i8 %i.dc to i16
  %i.de = add nuw nsw i16 %i.dd, %i.da
  %i.df = lshr i16 %i.de, 1
  %.tr = trunc nuw i16 %i.df to i8
  %.narrow = add i8 %i.cx, %.tr
  store i8 %.narrow, ptr %.12132, align 1, !tbaa !8
  %i.dg = getelementptr inbounds nuw i8, ptr %.12132, i64 1 ; 3 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !8
  %i.di = getelementptr inbounds nuw i8, ptr %.133, i64 2
  %i.dj = load i8, ptr %i.cy, align 1, !tbaa !8
  %i.dk = zext i8 %i.dj to i16
  %i.dl = getelementptr inbounds i8, ptr %i.dg, i64 %i.af
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !8
  %i.dn = zext i8 %i.dm to i16
  %i.do = add nuw nsw i16 %i.dn, %i.dk
  %i.dp = lshr i16 %i.do, 1
  %.tr.1 = trunc nuw i16 %i.dp to i8
  %.narrow.1 = add i8 %i.dh, %.tr.1
  store i8 %.narrow.1, ptr %i.dg, align 1, !tbaa !8
  %i.dq = getelementptr inbounds nuw i8, ptr %.12132, i64 2
  %i.dr = add nuw i64 %.12331, 2                  ; 2 uses
  %exitcond37.not.1 = icmp eq i64 %i.dr, %i.h
  br i1 %exitcond37.not.1, label %._crit_edge, label %vec.epilog.scalar.ph91, !llvm.loop !300

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph91.prol.loopexit, %vec.epilog.scalar.ph91, %middle.block87, %vec.epilog.middle.block104, %.preheader
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
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !307

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
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 3 uses
  %next.gep71 = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %i.t = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !8, !alias.scope !322, !noalias !323
  %wide.load72 = load <16 x i8>, ptr %i.t, align 1, !tbaa !8, !alias.scope !322, !noalias !323
  %i.u = getelementptr i8, ptr %next.gep71, i64 16
  %wide.load73 = load <16 x i8>, ptr %next.gep71, align 1, !tbaa !8, !alias.scope !323
  %wide.load74 = load <16 x i8>, ptr %i.u, align 1, !tbaa !8, !alias.scope !323
  %i.v = add <16 x i8> %wide.load73, %wide.load
  %i.w = add <16 x i8> %wide.load74, %wide.load72
  store <16 x i8> %i.v, ptr %next.gep, align 1, !tbaa !8, !alias.scope !322, !noalias !323
  store <16 x i8> %i.w, ptr %i.t, align 1, !tbaa !8, !alias.scope !322, !noalias !323
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !311

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !90

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec75 = and i64 %i.j, -8                     ; 4 uses
  %i.y = getelementptr i8, ptr %1, i64 %n.vec75   ; 2 uses
  %i.z = getelementptr i8, ptr %2, i64 %n.vec75   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index76 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next81, %vec.epilog.vector.body ] ; 3 uses
  %next.gep77 = getelementptr i8, ptr %1, i64 %index76 ; 2 uses
  %next.gep78 = getelementptr i8, ptr %2, i64 %index76
  %wide.load79 = load <8 x i8>, ptr %next.gep77, align 1, !tbaa !8, !alias.scope !322, !noalias !323
  %wide.load80 = load <8 x i8>, ptr %next.gep78, align 1, !tbaa !8, !alias.scope !323
  %i.aa = add <8 x i8> %wide.load80, %wide.load79
  store <8 x i8> %i.aa, ptr %next.gep77, align 1, !tbaa !8, !alias.scope !322, !noalias !323
  %index.next81 = add nuw i64 %index76, 8         ; 2 uses
  %i.ab = icmp eq i64 %index.next81, %n.vec75
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !312

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n82 = icmp eq i64 %i.j, %n.vec75
  br i1 %cmp.n82, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04656.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.r, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ]
  %.04855.ph = phi ptr [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.s, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04656 = phi ptr [ %i.ag, %.lr.ph ], [ %.04656.ph, %.lr.ph.preheader ] ; 3 uses
  %.04855 = phi ptr [ %i.ad, %.lr.ph ], [ %.04855.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ac = load i8, ptr %.04656, align 1, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %.04855, i64 1 ; 2 uses
  %i.ae = load i8, ptr %.04855, align 1, !tbaa !8
  %i.af = add i8 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %.04656, i64 1 ; 3 uses
  store i8 %i.af, ptr %.04656, align 1, !tbaa !8
  %i.ah = icmp ult ptr %i.ag, %i.g
  br i1 %i.ah, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !313

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa67 = phi ptr [ %i.z, %vec.epilog.middle.block ], [ %i.s, %middle.block ], [ %i.ad, %.lr.ph ]
  %.lcssa = phi ptr [ %i.y, %vec.epilog.middle.block ], [ %i.r, %middle.block ], [ %i.ag, %.lr.ph ] ; 2 uses
  %.pre = ptrtoaddr ptr %.lcssa to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.046.lcssa64.pre-phi = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  %.048.lcssa = phi ptr [ %.lcssa67, %._crit_edge.loopexit ], [ %2, %bb.a ] ; 10 uses
  %.046.lcssa = phi ptr [ %.lcssa, %._crit_edge.loopexit ], [ %1, %bb.a ] ; 13 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !54 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj
  %i.al = icmp ult ptr %.046.lcssa, %i.ak
  br i1 %i.al, label %iter.check127, label %._crit_edge62

iter.check127:                                    ; preds = %._crit_edge
  %i.am = sub nsw i64 0, %i.f                     ; 8 uses
  %i.an = add i64 %i.aj, %i.a
  %i.ao = sub i64 %i.an, %.046.lcssa64.pre-phi    ; 9 uses
  %scevgep = getelementptr i8, ptr %.046.lcssa, i64 %i.ao ; 4 uses
  %min.iters.check100 = icmp ult i64 %i.ao, 4
  br i1 %min.iters.check100, label %vec.epilog.scalar.ph129.preheader, label %vector.memcheck101

vector.memcheck101:                               ; preds = %iter.check127
  %i.ap = getelementptr i8, ptr %.048.lcssa, i64 %i.ao
  %bound0102 = icmp ult ptr %.046.lcssa, %i.ap
  %bound1103 = icmp ult ptr %.048.lcssa, %scevgep
  %found.conflict104 = and i1 %bound0102, %bound1103
  %i.aq = getelementptr i8, ptr %.048.lcssa, i64 %i.am
  %i.ar = add i64 %i.aj, %i.a
  %i.as = add i64 %.046.lcssa64.pre-phi, %i.f
  %i.at = sub i64 %i.ar, %i.as                    ; 2 uses
  %i.au = getelementptr i8, ptr %.048.lcssa, i64 %i.at
  %bound0102.a = icmp ult ptr %.046.lcssa, %i.au
  %bound1103.a = icmp ult ptr %i.aq, %scevgep
  %found.conflict104.a = and i1 %bound0102.a, %bound1103.a
  %conflict.rdx = or i1 %found.conflict104, %found.conflict104.a
  %3 = getelementptr i8, ptr %.046.lcssa, i64 %i.am
  %4 = getelementptr i8, ptr %.046.lcssa, i64 %i.at
  %bound0108 = icmp ult ptr %.046.lcssa, %4
  %bound1109 = icmp ult ptr %3, %scevgep
  %found.conflict110 = and i1 %bound0108, %bound1109
  %conflict.rdx111 = or i1 %conflict.rdx, %found.conflict110
  br i1 %conflict.rdx111, label %vec.epilog.scalar.ph129.preheader, label %vector.main.loop.iter.check112

vector.main.loop.iter.check112:                   ; preds = %vector.memcheck101
  %min.iters.check113 = icmp ult i64 %i.ao, 16
  br i1 %min.iters.check113, label %vec.epilog.ph131, label %vector.ph114

vector.ph114:                                     ; preds = %vector.main.loop.iter.check112
  %i.av = and i64 %i.ao, 12
  %n.vec115 = and i64 %i.ao, -16                  ; 5 uses
  %i.aw = getelementptr i8, ptr %.046.lcssa, i64 %n.vec115
  %i.ax = getelementptr i8, ptr %.048.lcssa, i64 %n.vec115
  br label %vector.body116

vector.body116:                                   ; preds = %vector.ph114, %vector.body116
  %index117 = phi i64 [ 0, %vector.ph114 ], [ %index.next124, %vector.body116 ] ; 3 uses
  %next.gep118 = getelementptr i8, ptr %.046.lcssa, i64 %index117 ; 3 uses
  %next.gep119 = getelementptr i8, ptr %.048.lcssa, i64 %index117 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %next.gep119, i64 %i.am
  %wide.load120 = load <16 x i8>, ptr %i.ay, align 1, !tbaa !8, !alias.scope !324 ; 2 uses
  %i.az = zext <16 x i8> %wide.load120 to <16 x i32> ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %next.gep118, i64 %i.am
  %wide.load121 = load <16 x i8>, ptr %i.ba, align 1, !tbaa !8, !alias.scope !325 ; 2 uses
  %i.bb = zext <16 x i8> %wide.load121 to <16 x i32>
  %wide.load122 = load <16 x i8>, ptr %next.gep119, align 1, !tbaa !8, !alias.scope !326 ; 2 uses
  %i.bc = zext <16 x i8> %wide.load122 to <16 x i32>
  %i.bd = sub nsw <16 x i32> %i.bc, %i.az         ; 2 uses
  %i.be = sub nsw <16 x i32> %i.bb, %i.az         ; 2 uses
  %i.bf = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.bd, i1 true) ; 2 uses
  %i.bg = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.be, i1 true) ; 2 uses
  %i.bh = add nsw <16 x i32> %i.bd, %i.be
  %i.bi = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.bh, i1 true)
  %i.bj = icmp samesign ult <16 x i32> %i.bg, %i.bf
  %i.bk = select <16 x i1> %i.bj, <16 x i8> %wide.load122, <16 x i8> %wide.load121
  %i.bl = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.bg, <16 x i32> %i.bf)
  %i.bm = icmp samesign ult <16 x i32> %i.bi, %i.bl
  %i.bn = select <16 x i1> %i.bm, <16 x i8> %wide.load120, <16 x i8> %i.bk
  %wide.load123 = load <16 x i8>, ptr %next.gep118, align 1, !tbaa !8, !alias.scope !327, !noalias !328
  %i.bo = add <16 x i8> %i.bn, %wide.load123
  store <16 x i8> %i.bo, ptr %next.gep118, align 1, !tbaa !8, !alias.scope !327, !noalias !328
  %index.next124 = add nuw i64 %index117, 16      ; 2 uses
  %i.bp = icmp eq i64 %index.next124, %n.vec115
  br i1 %i.bp, label %middle.block125, label %vector.body116, !llvm.loop !319

middle.block125:                                  ; preds = %vector.body116
  %cmp.n126 = icmp eq i64 %i.ao, %n.vec115
  br i1 %cmp.n126, label %._crit_edge62, label %vec.epilog.iter.check128

vec.epilog.iter.check128:                         ; preds = %middle.block125
  %min.epilog.iters.check130 = icmp eq i64 %i.av, 0
  br i1 %min.epilog.iters.check130, label %vec.epilog.scalar.ph129.preheader, label %vec.epilog.ph131, !prof !51

vec.epilog.ph131:                                 ; preds = %vector.main.loop.iter.check112, %vec.epilog.iter.check128
  %vec.epilog.resume.val132 = phi i64 [ %n.vec115, %vec.epilog.iter.check128 ], [ 0, %vector.main.loop.iter.check112 ]
  %n.vec133 = and i64 %i.ao, -4                   ; 4 uses
  %i.bq = getelementptr i8, ptr %.046.lcssa, i64 %n.vec133
  %i.br = getelementptr i8, ptr %.048.lcssa, i64 %n.vec133
  br label %vec.epilog.vector.body134

vec.epilog.vector.body134:                        ; preds = %vec.epilog.vector.body134, %vec.epilog.ph131
  %index135 = phi i64 [ %vec.epilog.resume.val132, %vec.epilog.ph131 ], [ %index.next142, %vec.epilog.vector.body134 ] ; 3 uses
  %next.gep136 = getelementptr i8, ptr %.046.lcssa, i64 %index135 ; 3 uses
  %next.gep137 = getelementptr i8, ptr %.048.lcssa, i64 %index135 ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %next.gep137, i64 %i.am
  %wide.load138 = load <4 x i8>, ptr %i.bs, align 1, !tbaa !8, !alias.scope !324 ; 2 uses
  %i.bt = zext <4 x i8> %wide.load138 to <4 x i32> ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %next.gep136, i64 %i.am
  %wide.load139 = load <4 x i8>, ptr %i.bu, align 1, !tbaa !8, !alias.scope !325 ; 2 uses
  %i.bv = zext <4 x i8> %wide.load139 to <4 x i32>
  %wide.load140 = load <4 x i8>, ptr %next.gep137, align 1, !tbaa !8, !alias.scope !326 ; 2 uses
  %i.bw = zext <4 x i8> %wide.load140 to <4 x i32>
  %i.bx = sub nsw <4 x i32> %i.bw, %i.bt          ; 2 uses
  %i.by = sub nsw <4 x i32> %i.bv, %i.bt          ; 2 uses
  %i.bz = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bx, i1 true) ; 2 uses
  %i.ca = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.by, i1 true) ; 2 uses
  %i.cb = add nsw <4 x i32> %i.bx, %i.by
  %i.cc = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.cb, i1 true)
  %i.cd = icmp samesign ult <4 x i32> %i.ca, %i.bz
  %i.ce = select <4 x i1> %i.cd, <4 x i8> %wide.load140, <4 x i8> %wide.load139
  %i.cf = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ca, <4 x i32> %i.bz)
  %i.cg = icmp samesign ult <4 x i32> %i.cc, %i.cf
  %i.ch = select <4 x i1> %i.cg, <4 x i8> %wide.load138, <4 x i8> %i.ce
  %wide.load141 = load <4 x i8>, ptr %next.gep136, align 1, !tbaa !8, !alias.scope !327, !noalias !328
  %i.ci = add <4 x i8> %i.ch, %wide.load141
  store <4 x i8> %i.ci, ptr %next.gep136, align 1, !tbaa !8, !alias.scope !327, !noalias !328
  %index.next142 = add nuw i64 %index135, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next142, %n.vec133
  br i1 %i.cj, label %vec.epilog.middle.block143, label %vec.epilog.vector.body134, !llvm.loop !320

vec.epilog.middle.block143:                       ; preds = %vec.epilog.vector.body134
  %cmp.n144 = icmp eq i64 %i.ao, %n.vec133
  br i1 %cmp.n144, label %._crit_edge62, label %vec.epilog.scalar.ph129.preheader

vec.epilog.scalar.ph129.preheader:                ; preds = %iter.check127, %vector.memcheck101, %vec.epilog.iter.check128, %vec.epilog.middle.block143
  %.14759.ph = phi ptr [ %.046.lcssa, %iter.check127 ], [ %.046.lcssa, %vector.memcheck101 ], [ %i.aw, %vec.epilog.iter.check128 ], [ %i.bq, %vec.epilog.middle.block143 ]
  %.14958.ph = phi ptr [ %.048.lcssa, %iter.check127 ], [ %.048.lcssa, %vector.memcheck101 ], [ %i.ax, %vec.epilog.iter.check128 ], [ %i.br, %vec.epilog.middle.block143 ]
  br label %vec.epilog.scalar.ph129

vec.epilog.scalar.ph129:                          ; preds = %vec.epilog.scalar.ph129.preheader, %vec.epilog.scalar.ph129
  %.14759 = phi ptr [ %i.dd, %vec.epilog.scalar.ph129 ], [ %.14759.ph, %vec.epilog.scalar.ph129.preheader ] ; 4 uses
  %.14958 = phi ptr [ %i.cq, %vec.epilog.scalar.ph129 ], [ %.14958.ph, %vec.epilog.scalar.ph129.preheader ] ; 3 uses
  %i.ck = getelementptr inbounds i8, ptr %.14958, i64 %i.am
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !8   ; 2 uses
  %i.cm = zext i8 %i.cl to i32                    ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.14759, i64 %i.am
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !8   ; 2 uses
  %i.cp = zext i8 %i.co to i32
  %i.cq = getelementptr inbounds nuw i8, ptr %.14958, i64 1
  %i.cr = load i8, ptr %.14958, align 1, !tbaa !8 ; 2 uses
  %i.cs = zext i8 %i.cr to i32
  %i.ct = sub nsw i32 %i.cs, %i.cm                ; 2 uses
  %i.cu = sub nsw i32 %i.cp, %i.cm                ; 2 uses
  %i.cv = tail call i32 @llvm.abs.i32(i32 %i.ct, i1 true) ; 2 uses
  %i.cw = tail call i32 @llvm.abs.i32(i32 %i.cu, i1 true) ; 2 uses
  %i.cx = add nsw i32 %i.ct, %i.cu
  %i.cy = tail call i32 @llvm.abs.i32(i32 %i.cx, i1 true)
  %i.cz = icmp samesign ult i32 %i.cw, %i.cv
  %.045 = select i1 %i.cz, i8 %i.cr, i8 %i.co
  %.0 = tail call i32 @llvm.umin.i32(i32 %i.cw, i32 %i.cv)
  %i.da = icmp samesign ult i32 %i.cy, %.0
  %.1 = select i1 %i.da, i8 %i.cl, i8 %.045
  %i.db = load i8, ptr %.14759, align 1, !tbaa !8
  %i.dc = add i8 %.1, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %.14759, i64 1 ; 2 uses
  store i8 %i.dc, ptr %.14759, align 1, !tbaa !8
  %exitcond.not = icmp eq ptr %i.dd, %scevgep
  br i1 %exitcond.not, label %._crit_edge62, label %vec.epilog.scalar.ph129, !llvm.loop !321

._crit_edge62:                                    ; preds = %vec.epilog.scalar.ph129, %middle.block125, %vec.epilog.middle.block143, %._crit_edge
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
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
end_hunk_0
