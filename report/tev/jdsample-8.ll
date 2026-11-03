Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/jdsample-8?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@h2v2_fancy_upsample:bb.a
  %.046.lcssa.1 = phi i32 [ %i.de, %._crit_edge ], [ %vector.recur.extract.for.phi, %middle.block ], [ %.04757.1, %.lr.ph.1 ]
  %.048.lcssa.1 = phi ptr [ %.04852.1, %._crit_edge ], [ %i.ej, %middle.block ], [ %.048.1, %.lr.ph.1 ]
  %i.fx = mul nuw nsw i32 %.047.lcssa.1, 3
  %i.fy = add nuw nsw i32 %.046.lcssa.1, 8
  %i.fz = add nuw nsw i32 %i.fy, %i.fx
  %i.ga = lshr i32 %i.fz, 4
  %i.gb = trunc nuw i32 %i.ga to i8
  %i.gc = getelementptr inbounds nuw i8, ptr %.pn.lcssa.1, i64 3
  store i8 %i.gb, ptr %.048.lcssa.1, align 1, !tbaa !33
  %i.gd = shl nuw nsw i32 %.047.lcssa.1, 2
  %i.ge = add nuw nsw i32 %i.gd, 4
  %i.gf = lshr i32 %i.ge, 4
  %i.gg = trunc nuw i32 %i.gf to i8
  store i8 %i.gg, ptr %i.gc, align 1, !tbaa !33
  %i.gh = trunc nsw i64 %indvars.iv.next.1 to i32
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv, 1
  %i.gi = load i32, ptr %i.b, align 4, !tbaa !40
  %i.gj = icmp sgt i32 %i.gi, %i.gh
  br i1 %i.gj, label %.preheader, label %._crit_edge68, !llvm.loop !116

._crit_edge68:                                    ; preds = %._crit_edge.1, %bb.a
  ret void
}

declare i32 @jsimd_set_h2v2_upsample(ptr noundef) local_unnamed_addr #3

declare void @jsimd_h2v2_upsample(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @h2v2_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !48     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !40
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
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49   ; 11 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 6 uses
  %i.i = load i32, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  %i.j = zext i32 %i.i to i64                     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49   ; 8 uses
  %i.n = add i64 %i.h, %i.j
  %i.o = add i64 %i.h, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.o)
  %i.p = xor i64 %i.h, -1
  %i.q = add i64 %umax, %i.p                      ; 3 uses
  %i.r = lshr i64 %i.q, 1
  %i.s = add nuw i64 %i.r, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.q, 6
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.t = add i64 %i.h, %i.j
  %i.u = add i64 %i.h, 2
  %i.v = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %i.u)
  %i.w = xor i64 %i.h, -1
  %i.x = add i64 %i.v, %i.w                       ; 2 uses
  %i.y = lshr i64 %i.x, 1
  %i.z = and i64 %i.x, -2
  %i.aa = getelementptr i8, ptr %i.g, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 2
  %i.ac = getelementptr i8, ptr %i.m, i64 %i.y
  %i.ad = getelementptr i8, ptr %i.ac, i64 1
  %bound0 = icmp ult ptr %i.g, %i.ad
  %bound1 = icmp ult ptr %i.m, %i.ab
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check40 = icmp ult i64 %i.q, 30
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %i.s, 12
  %n.vec = and i64 %i.s, -16                      ; 5 uses
  %i.af = shl i64 %n.vec, 1
  %i.ag = getelementptr i8, ptr %i.g, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.m, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ai = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.g, i64 %i.ai
  %i.aj = getelementptr i8, ptr %i.g, i64 %i.ai
  %next.gep41 = getelementptr i8, ptr %i.aj, i64 16
  %next.gep42 = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep42, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep42, align 1, !tbaa !33, !alias.scope !132
  %wide.load43 = load <8 x i8>, ptr %i.ak, align 1, !tbaa !33, !alias.scope !132
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !33, !alias.scope !133, !noalias !132
  %interleaved.vec44 = shufflevector <8 x i8> %wide.load43, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %interleaved.vec44, ptr %next.gep41, align 1, !tbaa !33, !alias.scope !133, !noalias !132
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %i.s, -4                     ; 4 uses
  %i.am = shl i64 %n.vec45, 1
  %i.an = getelementptr i8, ptr %i.g, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.m, i64 %n.vec45
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next51, %vec.epilog.vector.body ] ; 3 uses
  %i.ap = shl i64 %index46, 1
  %next.gep47 = getelementptr i8, ptr %i.g, i64 %i.ap
  %next.gep48 = getelementptr i8, ptr %i.m, i64 %index46
  %wide.load49 = load <4 x i8>, ptr %next.gep48, align 1, !tbaa !33, !alias.scope !132
  %interleaved.vec50 = shufflevector <4 x i8> %wide.load49, <4 x i8> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i8> %interleaved.vec50, ptr %next.gep47, align 1, !tbaa !33, !alias.scope !133, !noalias !132
  %index.next51 = add nuw i64 %index46, 4         ; 2 uses
  %i.aq = icmp eq i64 %index.next51, %n.vec45
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !129

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n52 = icmp eq i64 %i.s, %n.vec45
  br i1 %cmp.n52, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02326.ph = phi ptr [ %i.g, %iter.check ], [ %i.g, %vector.memcheck ], [ %i.ag, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  %.02425.ph = phi ptr [ %i.m, %iter.check ], [ %i.m, %vector.memcheck ], [ %i.ah, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02326 = phi ptr [ %i.au, %.lr.ph ], [ %.02326.ph, %.lr.ph.preheader ] ; 3 uses
  %.02425 = phi ptr [ %i.ar, %.lr.ph ], [ %.02425.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.02425, i64 1
  %i.as = load i8, ptr %.02425, align 1, !tbaa !33 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.02326, i64 1
  store i8 %i.as, ptr %.02326, align 1, !tbaa !33
  %i.au = getelementptr inbounds nuw i8, ptr %.02326, i64 2 ; 2 uses
  store i8 %i.as, ptr %i.at, align 1, !tbaa !33
  %i.av = icmp ult ptr %i.au, %i.k
  br i1 %i.av, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !130

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.pre = load i32, ptr %i.e, align 8, !tbaa !44
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.aw = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %bb.b ]
  %i.ax = or disjoint i32 %indvars34, 1
  tail call void @jcopy_sample_rows(ptr noundef nonnull %i.a, i32 noundef %indvars34, ptr noundef nonnull %i.a, i32 noundef %i.ax, i32 noundef 1, i32 noundef %i.aw) #7
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ay = load i32, ptr %i.b, align 4, !tbaa !40
  %i.az = trunc nuw i64 %indvars.iv.next to i32
  %i.ba = icmp sgt i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.b, label %._crit_edge31, !llvm.loop !131

._crit_edge31:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @int_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !48     ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !136
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !33
  %.fr50 = freeze i8 %i.i                         ; 4 uses
  %i.j = zext i8 %.fr50 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 290
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.g
  %i.m = load i8, ptr %i.l, align 1, !tbaa !33
  %.fr = freeze i8 %i.m                           ; 4 uses
  %i.n = zext i8 %.fr to i32                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !40   ; 2 uses
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
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !49 ; 2 uses
  %i.ac = load i32, ptr %i.r, align 8, !tbaa !44  ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad
  %.not54 = icmp eq i32 %i.ac, 0
  br i1 %.not54, label %._crit_edge.split.us.us.us, label %.lr.ph.us.us.us.preheader

.lr.ph.us.us.us.preheader:                        ; preds = %.lr.ph.split.us.split.us
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv67
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !49
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %.lr.ph.us.us.us
  %.03339.us.us.us = phi ptr [ %scevgep64, %.lr.ph.us.us.us ], [ %i.ab, %.lr.ph.us.us.us.preheader ] ; 2 uses
  %.03438.us.us.us = phi ptr [ %i.ai, %.lr.ph.us.us.us ], [ %i.ag, %.lr.ph.us.us.us.preheader ] ; 2 uses
  %i.ah = load i8, ptr %.03438.us.us.us, align 1, !tbaa !33
  tail call void @llvm.memset.p0.i64(ptr align 1 %.03339.us.us.us, i8 %i.ah, i64 %i.u, i1 false), !tbaa !33
  %i.ai = getelementptr inbounds nuw i8, ptr %.03438.us.us.us, i64 1
  %i.aj = getelementptr i8, ptr %.03339.us.us.us, i64 %i.y
  %scevgep64 = getelementptr i8, ptr %i.aj, i64 1 ; 2 uses
  %i.ak = icmp ult ptr %scevgep64, %i.ae
  br i1 %i.ak, label %.lr.ph.us.us.us, label %._crit_edge.split.us.us.us.loopexit, !llvm.loop !134

._crit_edge.split.us.us.us.loopexit:              ; preds = %.lr.ph.us.us.us
  %.pre72 = load i32, ptr %i.r, align 8, !tbaa !44
  br label %._crit_edge.split.us.us.us

._crit_edge.split.us.us.us:                       ; preds = %._crit_edge.split.us.us.us.loopexit, %.lr.ph.split.us.split.us
  %i.al = phi i32 [ %.pre72, %._crit_edge.split.us.us.us.loopexit ], [ 0, %.lr.ph.split.us.split.us ]
  %i.am = add nuw nsw i32 %indvars69, 1
  tail call void @jcopy_sample_rows(ptr noundef nonnull %i.c, i32 noundef %indvars69, ptr noundef nonnull %i.c, i32 noundef %i.am, i32 noundef %i.t, i32 noundef %i.al) #7
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, %i.z ; 2 uses
  %i.an = load i32, ptr %i.o, align 4, !tbaa !40
  %i.ao = trunc nuw i64 %indvars.iv.next66 to i32
  %i.ap = icmp sgt i32 %i.an, %i.ao
  br i1 %i.ap, label %.lr.ph.split.us.split.us, label %._crit_edge44, !llvm.loop !135

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.split.preheader, %._crit_edge.split.us.us
  %i.aq = phi i32 [ %i.p, %.lr.ph.split.us.split.preheader ], [ %i.bb, %._crit_edge.split.us.us ]
  %indvars.iv59 = phi i64 [ 0, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next60, %._crit_edge.split.us.us ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next, %._crit_edge.split.us.us ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !49 ; 2 uses
  %i.at = load i32, ptr %i.r, align 8, !tbaa !44  ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.au
  %.not53 = icmp eq i32 %i.at, 0
  br i1 %.not53, label %._crit_edge.split.us.us, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph.split.us.split
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv59
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !49
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %.lr.ph.us.us
  %.03339.us.us = phi ptr [ %scevgep, %.lr.ph.us.us ], [ %i.as, %.lr.ph.us.us.preheader ] ; 2 uses
  %.03438.us.us = phi ptr [ %i.az, %.lr.ph.us.us ], [ %i.ax, %.lr.ph.us.us.preheader ] ; 2 uses
  %i.ay = load i8, ptr %.03438.us.us, align 1, !tbaa !33
  tail call void @llvm.memset.p0.i64(ptr align 1 %.03339.us.us, i8 %i.ay, i64 %i.u, i1 false), !tbaa !33
  %i.az = getelementptr inbounds nuw i8, ptr %.03438.us.us, i64 1
  %scevgep = getelementptr i8, ptr %.03339.us.us, i64 %i.v ; 2 uses
  %i.ba = icmp ult ptr %scevgep, %i.av
  br i1 %i.ba, label %.lr.ph.us.us, label %._crit_edge.split.us.us.loopexit, !llvm.loop !134

._crit_edge.split.us.us.loopexit:                 ; preds = %.lr.ph.us.us
  %.pre = load i32, ptr %i.o, align 4, !tbaa !40
  br label %._crit_edge.split.us.us

._crit_edge.split.us.us:                          ; preds = %._crit_edge.split.us.us.loopexit, %.lr.ph.split.us.split
  %i.bb = phi i32 [ %.pre, %._crit_edge.split.us.us.loopexit ], [ %i.aq, %.lr.ph.split.us.split ] ; 2 uses
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.w ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp slt i64 %indvars.iv.next, %i.bc
  br i1 %i.bd, label %.lr.ph.split.us.split, label %._crit_edge44, !llvm.loop !135

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.s, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.b
  %.042.us45 = phi i32 [ %i.bg, %bb.b ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.be = load i32, ptr %i.r, align 8, !tbaa !44
  %.not52 = icmp eq i32 %i.be, 0
  br i1 %.not52, label %bb.b, label %.loopexit.preheader

bb.b:                                             ; preds = %.lr.ph.split.split.us
  %i.bf = add nuw nsw i32 %.042.us45, 1
  tail call void @jcopy_sample_rows(ptr noundef %i.c, i32 noundef %.042.us45, ptr noundef %i.c, i32 noundef %i.bf, i32 noundef %i.t, i32 noundef 0) #7
  %i.bg = add nuw nsw i32 %.042.us45, %i.n        ; 2 uses
  %i.bh = load i32, ptr %i.o, align 4, !tbaa !40
  %i.bi = icmp slt i32 %i.bg, %i.bh
  br i1 %i.bi, label %.lr.ph.split.split.us, label %._crit_edge44, !llvm.loop !135

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.bj = load i32, ptr %i.r, align 8, !tbaa !44
  %.not51 = icmp eq i32 %i.bj, 0
  br i1 %.not51, label %._crit_edge44, label %.loopexit.preheader

.loopexit.preheader:                              ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.preheader, %.loopexit
  br label %.loopexit

._crit_edge44:                                    ; preds = %._crit_edge.split.us.us, %._crit_edge.split.us.us.us, %bb.b, %.lr.ph.split.split, %bb.a
  ret void
}

declare i64 @jround_up(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @jcopy_sample_rows(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS14jpeg_error_mgr", !9, i64 0}
!11 = !{!"p1 _ZTS15jpeg_memory_mgr", !9, i64 0}
!12 = !{!"p1 _ZTS17jpeg_progress_mgr", !9, i64 0}
!13 = !{!"p1 _ZTS15jpeg_source_mgr", !9, i64 0}
!14 = !{!"double", !5, i64 0}
!15 = !{!"any p2 pointer", !9, i64 0}
!16 = !{!"p2 omnipotent char", !15, i64 0}
!17 = !{!"p1 int", !9, i64 0}
!18 = !{!"short", !5, i64 0}
!19 = !{!"p1 _ZTS18jpeg_marker_struct", !9, i64 0}
!20 = !{!"p1 omnipotent char", !9, i64 0}
!21 = !{!"p1 _ZTS18jpeg_decomp_master", !9, i64 0}
!22 = !{!"p1 _ZTS22jpeg_d_main_controller", !9, i64 0}
!23 = !{!"p1 _ZTS22jpeg_d_coef_controller", !9, i64 0}
!24 = !{!"p1 _ZTS22jpeg_d_post_controller", !9, i64 0}
!25 = !{!"p1 _ZTS21jpeg_input_controller", !9, i64 0}
!26 = !{!"p1 _ZTS18jpeg_marker_reader", !9, i64 0}
!27 = !{!"p1 _ZTS20jpeg_entropy_decoder", !9, i64 0}
!28 = !{!"p1 _ZTS16jpeg_inverse_dct", !9, i64 0}
!29 = !{!"p1 _ZTS14jpeg_upsampler", !9, i64 0}
!30 = !{!"p1 _ZTS22jpeg_color_deconverter", !9, i64 0}
!31 = !{!"p1 _ZTS20jpeg_color_quantizer", !9, i64 0}
!32 = !{!"jpeg_decompress_struct", !10, i64 0, !11, i64 8, !12, i64 16, !9, i64 24, !6, i64 32, !6, i64 36, !13, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !14, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !16, i64 160, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !17, i64 192, !5, i64 200, !5, i64 232, !5, i64 264, !6, i64 296, !9, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !5, i64 324, !5, i64 340, !5, i64 356, !6, i64 372, !6, i64 376, !5, i64 380, !5, i64 381, !5, i64 382, !18, i64 384, !18, i64 386, !6, i64 388, !5, i64 392, !6, i64 396, !19, i64 400, !6, i64 408, !6, i64 412, !6, i64 416, !6, i64 420, !6, i64 424, !20, i64 432, !6, i64 440, !5, i64 448, !6, i64 480, !6, i64 484, !6, i64 488, !5, i64 492, !6, i64 532, !6, i64 536, !6, i64 540, !6, i64 544, !6, i64 548, !17, i64 552, !6, i64 560, !6, i64 564, !21, i64 568, !22, i64 576, !23, i64 584, !24, i64 592, !25, i64 600, !26, i64 608, !27, i64 616, !28, i64 624, !29, i64 632, !30, i64 640, !31, i64 648}
!33 = !{!5, !5, i64 0}
!34 = !{!32, !29, i64 632}
!35 = !{!"jpeg_upsampler", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !6, i64 64}
!36 = !{!"", !35, i64 0, !5, i64 72, !5, i64 152, !6, i64 232, !6, i64 236, !5, i64 240, !5, i64 280, !5, i64 290}
!37 = !{!32, !6, i64 56}
!38 = !{!32, !9, i64 304}
!39 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !9, i64 80, !9, i64 88}
!40 = !{!32, !6, i64 412}
!41 = !{!6, !6, i64 0}
!42 = !{!39, !6, i64 44}
!43 = !{!9, !9, i64 0}
!44 = !{!32, !6, i64 136}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!36, !6, i64 232}
!47 = !{!36, !6, i64 236}
!48 = !{!16, !16, i64 0}
!49 = !{!20, !20, i64 0}
!50 = !{!"llvm.loop.isvectorized", i32 1}
!51 = !{!"llvm.loop.unroll.runtime.disable"}
!52 = !{!"branch_weights", i32 4, i32 12}
!53 = distinct !{!53, !45}
!54 = !{!32, !21, i64 568}
!55 = !{!"jpeg_decomp_master", !9, i64 0, !9, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !5, i64 32, !5, i64 72, !6, i64 112, !6, i64 116, !19, i64 120, !6, i64 128, !6, i64 132, !6, i64 136}
!56 = !{!55, !6, i64 20}
!57 = !{!32, !6, i64 296}
!58 = !{!32, !10, i64 0}
!59 = !{!"long", !5, i64 0}
!60 = !{!"jpeg_error_mgr", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !6, i64 40, !5, i64 44, !6, i64 124, !59, i64 128, !16, i64 136, !6, i64 144, !16, i64 152, !6, i64 160, !6, i64 164}
!61 = !{!60, !6, i64 40}
!62 = !{!60, !9, i64 0}
!63 = !{!55, !6, i64 112}
!64 = !{!32, !11, i64 8}
!65 = !{!"jpeg_memory_mgr", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !59, i64 88, !59, i64 96}
!66 = !{!65, !9, i64 0}
!67 = !{!36, !9, i64 0}
!68 = !{!36, !9, i64 8}
!69 = !{!36, !6, i64 64}
!70 = !{!32, !6, i64 396}
!71 = !{!32, !6, i64 100}
!72 = !{!32, !6, i64 416}
!73 = !{!39, !6, i64 8}
!74 = !{!39, !6, i64 36}
!75 = !{!39, !6, i64 12}
!76 = !{!32, !6, i64 408}
!77 = !{!39, !6, i64 52}
!78 = !{!65, !9, i64 16}
!79 = !{!32, !6, i64 140}
!80 = distinct !{!80, !45}
!81 = !{!32, !30, i64 640}
!82 = !{!"jpeg_color_deconverter", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32}
!83 = !{!82, !9, i64 8}
!84 = distinct !{!84, i1 false, !"LVerDomain"}
!85 = distinct !{!85, !84}
!86 = distinct !{!86, !84}
!87 = distinct !{!87, !45, !50, !51}
!88 = distinct !{!88, !45, !50}
!89 = distinct !{!89, !45}
!90 = !{!85}
!91 = !{!86}
!92 = distinct !{!92, i1 false, !"LVerDomain"}
!93 = distinct !{!93, !92}
!94 = distinct !{!94, !92}
!95 = distinct !{!95, !45, !50, !51}
!96 = distinct !{!96, !45, !50, !51}
!97 = distinct !{!97, !45, !50}
!98 = distinct !{!98, !45}
!99 = !{!93}
!100 = !{!94}
!101 = distinct !{!101, !45}
!102 = distinct !{!102, !45, !103}
!103 = !{!"llvm.loop.unswitch.partial.disable"}
!104 = distinct !{!104, i1 false, !"LVerDomain"}
!105 = distinct !{!105, !104}
!106 = distinct !{!106, !104}
!107 = distinct !{!107, !104}
!108 = distinct !{!108, !45, !50, !51}
!109 = distinct !{!109, !45, !50}
!110 = distinct !{!110, i1 false, !"LVerDomain"}
!111 = distinct !{!111, !110}
!112 = distinct !{!112, !110}
!113 = distinct !{!113, !110}
!114 = distinct !{!114, !45, !50, !51}
!115 = distinct !{!115, !45, !50}
!116 = distinct !{!116, !45}
!117 = !{!105}
!118 = !{!106}
!119 = !{!107}
!120 = !{!105, !106}
!121 = !{!111}
!122 = !{!112}
!123 = !{!113}
!124 = !{!111, !112}
!125 = distinct !{!125, i1 false, !"LVerDomain"}
!126 = distinct !{!126, !125}
!127 = distinct !{!127, !125}
!128 = distinct !{!128, !45, !50, !51}
!129 = distinct !{!129, !45, !50, !51}
!130 = distinct !{!130, !45, !50}
!131 = distinct !{!131, !45}
!132 = !{!126}
!133 = !{!127}
!134 = distinct !{!134, !45}
!135 = distinct !{!135, !45}
!136 = !{!39, !6, i64 4}
end_hunk_0
