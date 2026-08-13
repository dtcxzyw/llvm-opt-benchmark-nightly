loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@h2v2_fancy_upsample:bb.a

._crit_edge.1:                                    ; preds = %.lr.ph.1, %middle.block, %._crit_edge
  %.pn.lcssa.1 = phi ptr [ %i.cr, %._crit_edge ], [ %i.ec, %middle.block ], [ %.04860.1, %.lr.ph.1 ]
  %.047.lcssa.1 = phi i32 [ %i.df, %._crit_edge ], [ %vector.recur.extract93, %middle.block ], [ %i.fb, %.lr.ph.1 ] ; 2 uses
  %.046.lcssa.1 = phi i32 [ %i.cz, %._crit_edge ], [ %vector.recur.extract.for.phi, %middle.block ], [ %.04757.1, %.lr.ph.1 ]
  %.048.lcssa.1 = phi ptr [ %.04852.1, %._crit_edge ], [ %i.dz, %middle.block ], [ %.048.1, %.lr.ph.1 ]
  %i.fn = mul nuw nsw i32 %.047.lcssa.1, 3
  %i.fo = add nuw nsw i32 %.046.lcssa.1, 8
  %i.fp = add nuw nsw i32 %i.fo, %i.fn
  %i.fq = lshr i32 %i.fp, 4
  %i.fr = trunc nuw i32 %i.fq to i8
  %i.fs = getelementptr inbounds nuw i8, ptr %.pn.lcssa.1, i64 3
  store i8 %i.fr, ptr %.048.lcssa.1, align 1, !tbaa !39
  %i.ft = shl nuw nsw i32 %.047.lcssa.1, 2
  %i.fu = add nuw nsw i32 %i.ft, 4
  %i.fv = lshr i32 %i.fu, 4
  %i.fw = trunc nuw i32 %i.fv to i8
  store i8 %i.fw, ptr %i.fs, align 1, !tbaa !39
  %i.fx = trunc nsw i64 %indvars.iv.next.1 to i32
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv, 1
  %i.fy = load i32, ptr %i.b, align 4, !tbaa !61
  %i.fz = icmp sgt i32 %i.fy, %i.fx
  br i1 %i.fz, label %.preheader, label %._crit_edge68, !llvm.loop !121

._crit_edge68:                                    ; preds = %._crit_edge.1, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @h2v2_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !72     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !61
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph30, label %._crit_edge31

.lr.ph30:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph30, %._crit_edge
  %indvars.iv32 = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next33, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %indvars34 = trunc i64 %indvars.iv to i32       ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !77   ; 11 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 6 uses
  %i.i = load i32, ptr %i.e, align 8, !tbaa !66   ; 2 uses
  %i.j = zext i32 %i.i to i64                     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !77   ; 8 uses
  %i.n = add i64 %i.h, %i.j
  %i.o = add i64 %i.h, 2
  %umax40 = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.o)
  %i.p = xor i64 %i.h, -1
  %i.q = add i64 %umax40, %i.p                    ; 3 uses
  %i.r = lshr i64 %i.q, 1
  %i.s = add nuw i64 %i.r, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.q, 6
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.g, i64 2
  %i.t = add i64 %i.h, %i.j
  %i.u = add i64 %i.h, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %i.u)
  %i.v = xor i64 %i.h, -1
  %i.w = add i64 %umax, %i.v                      ; 2 uses
  %i.x = and i64 %i.w, -2
  %scevgep37 = getelementptr i8, ptr %scevgep, i64 %i.x
  %scevgep38 = getelementptr i8, ptr %i.m, i64 1
  %i.y = lshr i64 %i.w, 1
  %scevgep39 = getelementptr i8, ptr %scevgep38, i64 %i.y
  %bound0 = icmp ult ptr %i.g, %scevgep39
  %bound1 = icmp ult ptr %i.m, %scevgep37
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check41 = icmp ult i64 %i.q, 30
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.z = and i64 %i.s, 12
  %n.vec = and i64 %i.s, -16                      ; 5 uses
  %i.aa = getelementptr i8, ptr %i.m, i64 %n.vec
  %i.ab = shl i64 %n.vec, 1
  %i.ac = getelementptr i8, ptr %i.g, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %i.ad = shl i64 %index, 1                       ; 2 uses
  %next.gep42 = getelementptr i8, ptr %i.g, i64 %i.ad
  %i.ae = getelementptr i8, ptr %i.g, i64 %i.ad
  %next.gep43 = getelementptr i8, ptr %i.ae, i64 16
  %i.af = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep, align 1, !tbaa !39, !alias.scope !122
  %wide.load44 = load <8 x i8>, ptr %i.af, align 1, !tbaa !39, !alias.scope !122
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %interleaved.vec, ptr %next.gep42, align 1, !tbaa !39, !alias.scope !125, !noalias !122
  %interleaved.vec45 = shufflevector <8 x i8> %wide.load44, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %interleaved.vec45, ptr %next.gep43, align 1, !tbaa !39, !alias.scope !125, !noalias !122
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !127

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.z, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !94

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec47 = and i64 %i.s, -4                     ; 4 uses
  %i.ah = getelementptr i8, ptr %i.m, i64 %n.vec47
  %i.ai = shl i64 %n.vec47, 1
  %i.aj = getelementptr i8, ptr %i.g, i64 %i.ai
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index48 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next53, %vec.epilog.vector.body ] ; 3 uses
  %next.gep49 = getelementptr i8, ptr %i.m, i64 %index48
  %i.ak = shl i64 %index48, 1
  %next.gep50 = getelementptr i8, ptr %i.g, i64 %i.ak
  %wide.load51 = load <4 x i8>, ptr %next.gep49, align 1, !tbaa !39, !alias.scope !122
  %interleaved.vec52 = shufflevector <4 x i8> %wide.load51, <4 x i8> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i8> %interleaved.vec52, ptr %next.gep50, align 1, !tbaa !39, !alias.scope !125, !noalias !122
  %index.next53 = add nuw i64 %index48, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next53, %n.vec47
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !128

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n54 = icmp eq i64 %i.s, %n.vec47
  br i1 %cmp.n54, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02326.ph = phi ptr [ %i.m, %iter.check ], [ %i.m, %vector.memcheck ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  %.02425.ph = phi ptr [ %i.g, %iter.check ], [ %i.g, %vector.memcheck ], [ %i.ac, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02326 = phi ptr [ %i.am, %.lr.ph ], [ %.02326.ph, %.lr.ph.preheader ] ; 2 uses
  %.02425 = phi ptr [ %i.ap, %.lr.ph ], [ %.02425.ph, %.lr.ph.preheader ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.02326, i64 1
  %i.an = load i8, ptr %.02326, align 1, !tbaa !39 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.02425, i64 1
  store i8 %i.an, ptr %.02425, align 1, !tbaa !39
  %i.ap = getelementptr inbounds nuw i8, ptr %.02425, i64 2 ; 2 uses
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !39
  %i.aq = icmp ult ptr %i.ap, %i.k
  br i1 %i.aq, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !129

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.pre = load i32, ptr %i.e, align 8, !tbaa !66
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ar = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %bb.b ]
  %i.as = or disjoint i32 %indvars34, 1
  tail call void @jcopy_sample_rows(ptr noundef nonnull %i.a, i32 noundef %indvars34, ptr noundef nonnull %i.a, i32 noundef %i.as, i32 noundef 1, i32 noundef %i.ar) #7
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.at = load i32, ptr %i.b, align 4, !tbaa !61
  %i.au = trunc nuw i64 %indvars.iv.next to i32
  %i.av = icmp sgt i32 %i.at, %i.au
  br i1 %i.av, label %bb.b, label %._crit_edge31, !llvm.loop !130

._crit_edge31:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @int_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !72     ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !131
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !39
  %.fr50 = freeze i8 %i.i                         ; 4 uses
  %i.j = zext i8 %.fr50 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 258
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.g
  %i.m = load i8, ptr %i.l, align 1, !tbaa !39
  %.fr = freeze i8 %i.m                           ; 4 uses
  %i.n = zext i8 %.fr to i32                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !61   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge44

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %.not = icmp eq i8 %.fr50, 0
  %i.s = icmp ugt i8 %.fr, 1                      ; 2 uses
  %i.t = add nsw i32 %i.n, -1                     ; 2 uses
  br i1 %.not, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.u = zext i8 %.fr50 to i64                    ; 2 uses
  br i1 %i.s, label %.lr.ph.split.us.split.us.preheader, label %.lr.ph.split.us.split.preheader

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %i.v = zext i8 %.fr50 to i64
  %i.w = zext nneg i8 %.fr to i64
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph.split.us
  %i.x = add nuw nsw i64 %i.j, 4294967295
  %i.y = and i64 %i.x, 4294967295
  %i.z = zext i8 %.fr to i64
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us.split.us.preheader, %._crit_edge.split.us.us.us
  %indvars.iv67 = phi i64 [ 0, %.lr.ph.split.us.split.us.preheader ], [ %indvars.iv.next68, %._crit_edge.split.us.us.us ] ; 2 uses
  %indvars.iv65 = phi i64 [ 0, %.lr.ph.split.us.split.us.preheader ], [ %indvars.iv.next66, %._crit_edge.split.us.us.us ] ; 3 uses
  %indvars69 = trunc i64 %indvars.iv65 to i32     ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv65
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !77 ; 2 uses
  %i.ac = load i32, ptr %i.r, align 8, !tbaa !66  ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad
  %.not54 = icmp eq i32 %i.ac, 0
  br i1 %.not54, label %._crit_edge.split.us.us.us, label %.lr.ph.us.us.us.preheader

.lr.ph.us.us.us.preheader:                        ; preds = %.lr.ph.split.us.split.us
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv67
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !77
  br label %.lr.ph.us.us.us

._crit_edge.split.us.us.us.loopexit:              ; preds = %.lr.ph.us.us.us
  %.pre72 = load i32, ptr %i.r, align 8, !tbaa !66
  br label %._crit_edge.split.us.us.us

._crit_edge.split.us.us.us:                       ; preds = %._crit_edge.split.us.us.us.loopexit, %.lr.ph.split.us.split.us
  %i.ah = phi i32 [ %.pre72, %._crit_edge.split.us.us.us.loopexit ], [ 0, %.lr.ph.split.us.split.us ]
  %i.ai = add nuw nsw i32 %indvars69, 1
  tail call void @jcopy_sample_rows(ptr noundef nonnull %i.c, i32 noundef %indvars69, ptr noundef nonnull %i.c, i32 noundef %i.ai, i32 noundef %i.t, i32 noundef %i.ah) #7
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, %i.z ; 2 uses
  %i.aj = load i32, ptr %i.o, align 4, !tbaa !61
  %i.ak = trunc nuw i64 %indvars.iv.next66 to i32
  %i.al = icmp sgt i32 %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph.split.us.split.us, label %._crit_edge44, !llvm.loop !132

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %.lr.ph.us.us.us
  %.03239.us.us.us = phi ptr [ %i.an, %.lr.ph.us.us.us ], [ %i.ag, %.lr.ph.us.us.us.preheader ] ; 2 uses
  %.03338.us.us.us = phi ptr [ %scevgep64, %.lr.ph.us.us.us ], [ %i.ab, %.lr.ph.us.us.us.preheader ] ; 2 uses
  %i.am = load i8, ptr %.03239.us.us.us, align 1, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr align 1 %.03338.us.us.us, i8 %i.am, i64 %i.u, i1 false), !tbaa !39
  %i.an = getelementptr inbounds nuw i8, ptr %.03239.us.us.us, i64 1
  %i.ao = getelementptr i8, ptr %.03338.us.us.us, i64 %i.y
  %scevgep64 = getelementptr i8, ptr %i.ao, i64 1 ; 2 uses
  %i.ap = icmp ult ptr %scevgep64, %i.ae
  br i1 %i.ap, label %.lr.ph.us.us.us, label %._crit_edge.split.us.us.us.loopexit, !llvm.loop !133

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.split.preheader, %._crit_edge.split.us.us
  %i.aq = phi i32 [ %i.p, %.lr.ph.split.us.split.preheader ], [ %i.ay, %._crit_edge.split.us.us ]
  %indvars.iv59 = phi i64 [ 0, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next60, %._crit_edge.split.us.us ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next, %._crit_edge.split.us.us ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !77 ; 2 uses
  %i.at = load i32, ptr %i.r, align 8, !tbaa !66  ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.au
  %.not53 = icmp eq i32 %i.at, 0
  br i1 %.not53, label %._crit_edge.split.us.us, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph.split.us.split
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv59
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !77
  br label %.lr.ph.us.us

._crit_edge.split.us.us.loopexit:                 ; preds = %.lr.ph.us.us
  %.pre = load i32, ptr %i.o, align 4, !tbaa !61
  br label %._crit_edge.split.us.us

._crit_edge.split.us.us:                          ; preds = %._crit_edge.split.us.us.loopexit, %.lr.ph.split.us.split
  %i.ay = phi i32 [ %.pre, %._crit_edge.split.us.us.loopexit ], [ %i.aq, %.lr.ph.split.us.split ] ; 2 uses
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.w ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp slt i64 %indvars.iv.next, %i.az
  br i1 %i.ba, label %.lr.ph.split.us.split, label %._crit_edge44, !llvm.loop !132

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %.lr.ph.us.us
  %.03239.us.us = phi ptr [ %i.bc, %.lr.ph.us.us ], [ %i.ax, %.lr.ph.us.us.preheader ] ; 2 uses
  %.03338.us.us = phi ptr [ %scevgep, %.lr.ph.us.us ], [ %i.as, %.lr.ph.us.us.preheader ] ; 2 uses
  %i.bb = load i8, ptr %.03239.us.us, align 1, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr align 1 %.03338.us.us, i8 %i.bb, i64 %i.u, i1 false), !tbaa !39
  %i.bc = getelementptr inbounds nuw i8, ptr %.03239.us.us, i64 1
  %scevgep = getelementptr i8, ptr %.03338.us.us, i64 %i.v ; 2 uses
  %i.bd = icmp ult ptr %scevgep, %i.av
  br i1 %i.bd, label %.lr.ph.us.us, label %._crit_edge.split.us.us.loopexit, !llvm.loop !133

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.s, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.b
  %.042.us45 = phi i32 [ %i.bg, %bb.b ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.be = load i32, ptr %i.r, align 8, !tbaa !66
  %.not52 = icmp eq i32 %i.be, 0
  br i1 %.not52, label %bb.b, label %.loopexit.preheader

bb.b:                                             ; preds = %.lr.ph.split.split.us
  %i.bf = add nuw nsw i32 %.042.us45, 1
  tail call void @jcopy_sample_rows(ptr noundef %i.c, i32 noundef %.042.us45, ptr noundef %i.c, i32 noundef %i.bf, i32 noundef %i.t, i32 noundef 0) #7
  %i.bg = add nuw nsw i32 %.042.us45, %i.n        ; 2 uses
  %i.bh = load i32, ptr %i.o, align 4, !tbaa !61
  %i.bi = icmp slt i32 %i.bg, %i.bh
  br i1 %i.bi, label %.lr.ph.split.split.us, label %._crit_edge44, !llvm.loop !132

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.bj = load i32, ptr %i.r, align 8, !tbaa !66
  %.not51 = icmp eq i32 %i.bj, 0
  br i1 %.not51, label %._crit_edge44, label %.loopexit.preheader

.loopexit.preheader:                              ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.preheader, %.loopexit
  br label %.loopexit

._crit_edge44:                                    ; preds = %._crit_edge.split.us.us, %._crit_edge.split.us.us.us, %bb.b, %.lr.ph.split.split, %bb.a
  ret void
}

declare i64 @jround_up(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @jcopy_sample_rows(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !21, i64 568}
!8 = !{!"jpeg_decompress_struct", !9, i64 0, !11, i64 8, !12, i64 16, !10, i64 24, !4, i64 32, !4, i64 36, !13, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !14, i64 80, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !4, i64 124, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156, !15, i64 160, !4, i64 168, !4, i64 172, !4, i64 176, !4, i64 180, !4, i64 184, !17, i64 192, !5, i64 200, !5, i64 232, !5, i64 264, !4, i64 296, !10, i64 304, !4, i64 312, !4, i64 316, !4, i64 320, !5, i64 324, !5, i64 340, !5, i64 356, !4, i64 372, !4, i64 376, !5, i64 380, !5, i64 381, !5, i64 382, !18, i64 384, !18, i64 386, !4, i64 388, !5, i64 392, !4, i64 396, !19, i64 400, !4, i64 408, !4, i64 412, !4, i64 416, !4, i64 420, !4, i64 424, !20, i64 432, !4, i64 440, !5, i64 448, !4, i64 480, !4, i64 484, !4, i64 488, !5, i64 492, !4, i64 532, !4, i64 536, !4, i64 540, !4, i64 544, !4, i64 548, !17, i64 552, !4, i64 560, !4, i64 564, !21, i64 568, !22, i64 576, !23, i64 584, !24, i64 592, !25, i64 600, !26, i64 608, !27, i64 616, !28, i64 624, !29, i64 632, !30, i64 640, !31, i64 648}
!9 = !{!"p1 _ZTS14jpeg_error_mgr", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS15jpeg_memory_mgr", !10, i64 0}
!12 = !{!"p1 _ZTS17jpeg_progress_mgr", !10, i64 0}
!13 = !{!"p1 _ZTS15jpeg_source_mgr", !10, i64 0}
!14 = !{!"double", !5, i64 0}
!15 = !{!"p2 omnipotent char", !16, i64 0}
!16 = !{!"any p2 pointer", !10, i64 0}
!17 = !{!"p1 int", !10, i64 0}
!18 = !{!"short", !5, i64 0}
!19 = !{!"p1 _ZTS18jpeg_marker_struct", !10, i64 0}
!20 = !{!"p1 omnipotent char", !10, i64 0}
!21 = !{!"p1 _ZTS18jpeg_decomp_master", !10, i64 0}
!22 = !{!"p1 _ZTS22jpeg_d_main_controller", !10, i64 0}
!23 = !{!"p1 _ZTS22jpeg_d_coef_controller", !10, i64 0}
!24 = !{!"p1 _ZTS22jpeg_d_post_controller", !10, i64 0}
!25 = !{!"p1 _ZTS21jpeg_input_controller", !10, i64 0}
!26 = !{!"p1 _ZTS18jpeg_marker_reader", !10, i64 0}
!27 = !{!"p1 _ZTS20jpeg_entropy_decoder", !10, i64 0}
!28 = !{!"p1 _ZTS16jpeg_inverse_dct", !10, i64 0}
!29 = !{!"p1 _ZTS14jpeg_upsampler", !10, i64 0}
!30 = !{!"p1 _ZTS22jpeg_color_deconverter", !10, i64 0}
!31 = !{!"p1 _ZTS20jpeg_color_quantizer", !10, i64 0}
!32 = !{!33, !4, i64 20}
!33 = !{!"jpeg_decomp_master", !10, i64 0, !10, i64 8, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !5, i64 32, !5, i64 72, !4, i64 112, !4, i64 116, !19, i64 120}
!34 = !{!8, !4, i64 296}
!35 = !{!8, !9, i64 0}
!36 = !{!37, !4, i64 40}
!37 = !{!"jpeg_error_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !4, i64 40, !5, i64 44, !4, i64 124, !38, i64 128, !15, i64 136, !4, i64 144, !15, i64 152, !4, i64 160, !4, i64 164}
!38 = !{!"long", !5, i64 0}
!39 = !{!5, !5, i64 0}
!40 = !{!37, !10, i64 0}
!41 = !{!33, !4, i64 112}
!42 = !{!8, !11, i64 8}
!43 = !{!44, !10, i64 0}
!44 = !{!"jpeg_memory_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !38, i64 88, !38, i64 96}
!45 = !{!8, !29, i64 632}
!46 = !{!47, !10, i64 0}
!47 = !{!"", !48, i64 0, !5, i64 40, !5, i64 120, !4, i64 200, !4, i64 204, !5, i64 208, !5, i64 248, !5, i64 258}
!48 = !{!"jpeg_upsampler", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !4, i64 32}
!49 = !{!47, !10, i64 8}
!50 = !{!47, !4, i64 32}
!51 = !{!8, !4, i64 396}
!52 = !{!8, !4, i64 100}
!53 = !{!8, !4, i64 416}
!54 = !{!8, !4, i64 56}
!55 = !{!8, !10, i64 304}
!56 = !{!57, !4, i64 8}
!57 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !10, i64 80, !10, i64 88}
!58 = !{!57, !4, i64 36}
!59 = !{!57, !4, i64 12}
!60 = !{!8, !4, i64 408}
!61 = !{!8, !4, i64 412}
!62 = !{!57, !4, i64 52}
!63 = !{!57, !4, i64 44}
!64 = !{!10, !10, i64 0}
!65 = !{!44, !10, i64 16}
!66 = !{!8, !4, i64 136}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!47, !4, i64 200}
!70 = !{!8, !4, i64 140}
!71 = !{!47, !4, i64 204}
!72 = !{!15, !15, i64 0}
!73 = distinct !{!73, !68}
!74 = !{!8, !30, i64 640}
!75 = !{!76, !10, i64 8}
!76 = !{!"jpeg_color_deconverter", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!77 = !{!20, !20, i64 0}
!78 = !{!79}
!79 = distinct !{!79, !80}
!80 = distinct !{!80, !"LVerDomain"}
!81 = !{!82}
!82 = distinct !{!82, !80}
!83 = distinct !{!83, !68, !84, !85}
!84 = !{!"llvm.loop.isvectorized", i32 1}
!85 = !{!"llvm.loop.unroll.runtime.disable"}
!86 = distinct !{!86, !68, !84}
!87 = distinct !{!87, !68}
!88 = !{!89}
!89 = distinct !{!89, !90}
!90 = distinct !{!90, !"LVerDomain"}
!91 = !{!92}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !68, !84, !85}
!94 = !{!"branch_weights", i32 4, i32 12}
!95 = distinct !{!95, !68, !84, !85}
!96 = distinct !{!96, !68, !84}
!97 = distinct !{!97, !68}
!98 = distinct !{!98, !68}
!99 = distinct !{!99, !68, !100}
!100 = !{!"llvm.loop.unswitch.partial.disable"}
!101 = !{!102}
!102 = distinct !{!102, !103}
!103 = distinct !{!103, !"LVerDomain"}
!104 = !{!105}
!105 = distinct !{!105, !103}
!106 = !{!107}
!107 = distinct !{!107, !103}
!108 = !{!102, !105}
!109 = distinct !{!109, !68, !84, !85}
!110 = distinct !{!110, !68, !84}
!111 = !{!112}
!112 = distinct !{!112, !113}
!113 = distinct !{!113, !"LVerDomain"}
!114 = !{!115}
!115 = distinct !{!115, !113}
!116 = !{!117}
!117 = distinct !{!117, !113}
!118 = !{!112, !115}
!119 = distinct !{!119, !68, !84, !85}
!120 = distinct !{!120, !68, !84}
!121 = distinct !{!121, !68}
!122 = !{!123}
!123 = distinct !{!123, !124}
!124 = distinct !{!124, !"LVerDomain"}
!125 = !{!126}
!126 = distinct !{!126, !124}
!127 = distinct !{!127, !68, !84, !85}
!128 = distinct !{!128, !68, !84, !85}
!129 = distinct !{!129, !68, !84}
!130 = distinct !{!130, !68}
!131 = !{!57, !4, i64 4}
!132 = distinct !{!132, !68}
!133 = distinct !{!133, !68}
end_hunk_0
