Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/cio?download=true
inline.NumInlined: 5
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@opj_write_bytes_LE:bb.a
  %.05 = getelementptr inbounds i8, ptr %.pn8, i64 -1 ; 2 uses
  %i.u = load i8, ptr %.05, align 1, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %.067, i64 1
  store i8 %i.u, ptr %.067, align 1, !tbaa !8
  %i.w = add nuw i32 %.09, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.w, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !35

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @opj_read_bytes_BE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  store i32 0, ptr %1, align 4, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = zext i32 %2 to i64                       ; 2 uses
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr align 1 %0, i64 %i.b, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @opj_read_bytes_LE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  store i32 0, ptr %1, align 4, !tbaa !7
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.a = zext i32 %2 to i64                       ; 7 uses
  %i.b = getelementptr i8, ptr %1, i64 %i.a       ; 7 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.c = add i32 %2, -1
  %i.d = zext i32 %i.c to i64
  %i.e = xor i64 %i.d, -1
  %i.f = getelementptr i8, ptr %1, i64 %i.e
  %scevgep = getelementptr i8, ptr %i.f, i64 %i.a
  %i.g = zext i32 %2 to i64
  %scevgep12 = getelementptr i8, ptr %0, i64 %i.g
  %bound0 = icmp ult ptr %scevgep, %scevgep12
  %bound1 = icmp ult ptr %0, %i.b
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check13 = icmp ult i32 %2, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.h = and i64 %i.a, 24
  %n.vec = and i64 %i.a, 4294967264               ; 6 uses
  %i.i = trunc nuw i64 %n.vec to i32
  %i.j = sub nsw i64 0, %n.vec
  %i.k = getelementptr i8, ptr %i.b, i64 %i.j
  %i.l = getelementptr i8, ptr %0, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.m ; 2 uses
  %next.gep14 = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.n = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep14, align 1, !tbaa !8, !alias.scope !43
  %wide.load15 = load <16 x i8>, ptr %i.n, align 1, !tbaa !8, !alias.scope !43
  %i.o = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.p = getelementptr inbounds i8, ptr %next.gep, i64 -32
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse16 = shufflevector <16 x i8> %wide.load15, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.o, align 1, !tbaa !8, !alias.scope !44, !noalias !43
  store <16 x i8> %reverse16, ptr %i.p, align 1, !tbaa !8, !alias.scope !44, !noalias !43
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.h, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec19 = and i64 %i.a, 4294967288             ; 5 uses
  %i.r = trunc nuw i64 %n.vec19 to i32
  %i.s = sub nsw i64 0, %n.vec19
  %i.t = getelementptr i8, ptr %i.b, i64 %i.s
  %i.u = getelementptr i8, ptr %0, i64 %n.vec19
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index20 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 3 uses
  %i.v = sub i64 0, %index20
  %next.gep21 = getelementptr i8, ptr %i.b, i64 %i.v
  %next.gep22 = getelementptr i8, ptr %0, i64 %index20
  %wide.load23 = load <8 x i8>, ptr %next.gep22, align 1, !tbaa !8, !alias.scope !43
  %i.w = getelementptr inbounds i8, ptr %next.gep21, i64 -8
  %reverse24 = shufflevector <8 x i8> %wide.load23, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse24, ptr %i.w, align 1, !tbaa !8, !alias.scope !44, !noalias !43
  %index.next25 = add nuw i64 %index20, 8         ; 2 uses
  %i.x = icmp eq i64 %index.next25, %n.vec19
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !40

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %n.vec19, %i.a
  br i1 %cmp.n26, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.i, %vec.epilog.iter.check ], [ %i.r, %vec.epilog.middle.block ] ; 4 uses
  %.pn10.ph = phi ptr [ %i.b, %iter.check ], [ %i.b, %vector.memcheck ], [ %i.k, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ] ; 2 uses
  %.089.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.l, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ] ; 2 uses
  %i.y = sub i32 %2, %.011.ph
  %xtraiter = and i32 %i.y, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.011.prol = phi i32 [ %i.ab, %.lr.ph.prol ], [ %.011.ph, %.lr.ph.preheader ]
  %.pn10.prol = phi ptr [ %.07.prol, %.lr.ph.prol ], [ %.pn10.ph, %.lr.ph.preheader ]
  %.089.prol = phi ptr [ %i.z, %.lr.ph.prol ], [ %.089.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %.07.prol = getelementptr inbounds i8, ptr %.pn10.prol, i64 -1 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.089.prol, i64 1 ; 2 uses
  %i.aa = load i8, ptr %.089.prol, align 1, !tbaa !8
  store i8 %i.aa, ptr %.07.prol, align 1, !tbaa !8
  %i.ab = add nuw i32 %.011.prol, 1               ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !41

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.011.unr = phi i32 [ %.011.ph, %.lr.ph.preheader ], [ %i.ab, %.lr.ph.prol ]
  %.pn10.unr = phi ptr [ %.pn10.ph, %.lr.ph.preheader ], [ %.07.prol, %.lr.ph.prol ]
  %.089.unr = phi ptr [ %.089.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.ac = sub i32 %.011.ph, %2
  %i.ad = icmp ugt i32 %i.ac, -8
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.011 = phi i32 [ %i.au, %.lr.ph ], [ %.011.unr, %.lr.ph.prol.loopexit ]
  %.pn10 = phi ptr [ %.07.7, %.lr.ph ], [ %.pn10.unr, %.lr.ph.prol.loopexit ] ; 8 uses
  %.089 = phi ptr [ %i.as, %.lr.ph ], [ %.089.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.07 = getelementptr inbounds i8, ptr %.pn10, i64 -1
  %i.ae = getelementptr inbounds nuw i8, ptr %.089, i64 1
  %i.af = load i8, ptr %.089, align 1, !tbaa !8
  store i8 %i.af, ptr %.07, align 1, !tbaa !8
  %.07.1 = getelementptr inbounds i8, ptr %.pn10, i64 -2
  %i.ag = getelementptr inbounds nuw i8, ptr %.089, i64 2
  %i.ah = load i8, ptr %i.ae, align 1, !tbaa !8
  store i8 %i.ah, ptr %.07.1, align 1, !tbaa !8
  %.07.2 = getelementptr inbounds i8, ptr %.pn10, i64 -3
  %i.ai = getelementptr inbounds nuw i8, ptr %.089, i64 3
  %i.aj = load i8, ptr %i.ag, align 1, !tbaa !8
  store i8 %i.aj, ptr %.07.2, align 1, !tbaa !8
  %.07.3 = getelementptr inbounds i8, ptr %.pn10, i64 -4
  %i.ak = getelementptr inbounds nuw i8, ptr %.089, i64 4
  %i.al = load i8, ptr %i.ai, align 1, !tbaa !8
  store i8 %i.al, ptr %.07.3, align 1, !tbaa !8
  %.07.4 = getelementptr inbounds i8, ptr %.pn10, i64 -5
  %i.am = getelementptr inbounds nuw i8, ptr %.089, i64 5
  %i.an = load i8, ptr %i.ak, align 1, !tbaa !8
  store i8 %i.an, ptr %.07.4, align 1, !tbaa !8
  %.07.5 = getelementptr inbounds i8, ptr %.pn10, i64 -6
  %i.ao = getelementptr inbounds nuw i8, ptr %.089, i64 6
  %i.ap = load i8, ptr %i.am, align 1, !tbaa !8
  store i8 %i.ap, ptr %.07.5, align 1, !tbaa !8
  %.07.6 = getelementptr inbounds i8, ptr %.pn10, i64 -7
  %i.aq = getelementptr inbounds nuw i8, ptr %.089, i64 7
  %i.ar = load i8, ptr %i.ao, align 1, !tbaa !8
  store i8 %i.ar, ptr %.07.6, align 1, !tbaa !8
  %.07.7 = getelementptr inbounds i8, ptr %.pn10, i64 -8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.089, i64 8
  %i.at = load i8, ptr %i.aq, align 1, !tbaa !8
  store i8 %i.at, ptr %.07.7, align 1, !tbaa !8
  %i.au = add nuw i32 %.011, 8                    ; 2 uses
  %exitcond.not.7 = icmp eq i32 %i.au, %2
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @opj_write_double_BE(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, double noundef %1) local_unnamed_addr #4 {
bb.a:
  store double %1, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @opj_write_double_LE(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, double noundef %1) local_unnamed_addr #4 {
bb.a:
  %2 = bitcast double %1 to <8 x i8>
  %3 = shufflevector <8 x i8> %2, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %3, ptr %0, align 1, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @opj_read_double_BE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 1
  store i64 %i.a, ptr %1, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @opj_read_double_LE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %0, align 1, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.c, ptr %i.a, align 1, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i8, ptr %i.b, align 1, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.f, ptr %i.d, align 1, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.i = load i8, ptr %i.e, align 1, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.i, ptr %i.g, align 1, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i8, ptr %i.h, align 1, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.l, ptr %i.j, align 1, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.o = load i8, ptr %i.k, align 1, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.o, ptr %i.m, align 1, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.r = load i8, ptr %i.n, align 1, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.r, ptr %i.p, align 1, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.u = load i8, ptr %i.q, align 1, !tbaa !8
  store i8 %i.u, ptr %i.s, align 1, !tbaa !8
  %i.v = load i8, ptr %i.t, align 1, !tbaa !8
  store i8 %i.v, ptr %1, align 1, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @opj_write_float_BE(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, float noundef %1) local_unnamed_addr #4 {
bb.a:
  store float %1, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @opj_write_float_LE(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, float noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = bitcast float %1 to i32                  ; 4 uses
  %.3.extract.shift = lshr i32 %i.a, 24
  %.3.extract.trunc = trunc nuw i32 %.3.extract.shift to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.3.extract.trunc, ptr %0, align 1, !tbaa !8
  %.2.extract.shift = lshr i32 %i.a, 16
  %.2.extract.trunc = trunc i32 %.2.extract.shift to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.2.extract.trunc, ptr %i.b, align 1, !tbaa !8
  %.1.extract.shift = lshr i32 %i.a, 8
  %.1.extract.trunc = trunc i32 %.1.extract.shift to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %.1.extract.trunc, ptr %i.c, align 1, !tbaa !8
  %.0.extract.trunc = trunc i32 %i.a to i8
  store i8 %.0.extract.trunc, ptr %i.d, align 1, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @opj_read_float_BE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 1
  store i32 %i.a, ptr %1, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @opj_read_float_LE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %0, align 1, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.c, ptr %i.a, align 1, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i8, ptr %i.b, align 1, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.f, ptr %i.d, align 1, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.i = load i8, ptr %i.e, align 1, !tbaa !8
  store i8 %i.i, ptr %i.g, align 1, !tbaa !8
  %i.j = load i8, ptr %i.h, align 1, !tbaa !8
  store i8 %i.j, ptr %1, align 1, !tbaa !8
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @opj_stream_create(i64 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @opj_calloc(i64 noundef 1, i64 noundef 120) #9 ; 13 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 %0, ptr %i.b, align 8, !tbaa !17
  %i.c = tail call ptr @opj_malloc(i64 noundef %0) #9 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.c, ptr %i.d, align 8, !tbaa !18
  %.not23 = icmp eq ptr %i.c, null
  br i1 %.not23, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @opj_free(ptr noundef nonnull %i.a) #9
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.c, ptr %i.e, align 8, !tbaa !19
  %.not24 = icmp eq i32 %1, 0                     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !20
  %. = select i1 %.not24, i32 1, i32 2
  %opj_stream_write_skip.opj_stream_read_skip = select i1 %.not24, ptr @opj_stream_write_skip, ptr @opj_stream_read_skip
  %opj_stream_write_seek.opj_stream_read_seek = select i1 %.not24, ptr @opj_stream_write_seek, ptr @opj_stream_read_seek
  %i.h = or i32 %i.g, %.
  store i32 %i.h, ptr %i.f, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %opj_stream_write_skip.opj_stream_read_skip, ptr %i.i, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %opj_stream_write_seek.opj_stream_read_seek, ptr %i.j, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @opj_stream_default_read, ptr %i.k, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @opj_stream_default_write, ptr %i.l, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @opj_stream_default_skip, ptr %i.m, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @opj_stream_default_seek, ptr %i.n, align 8, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi ptr [ %i.a, %bb.d ], [ null, %bb.c ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @opj_calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

declare ptr @opj_malloc(i64 noundef) local_unnamed_addr #6

declare void @opj_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define i64 @opj_stream_read_skip(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr noundef %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27   ; 10 uses
  %.not = icmp ult i64 %i.b, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 %1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !19
  %i.f = sub nuw i64 %i.b, %1
  store i64 %i.f, ptr %i.a, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !28
  %i.i = add nsw i64 %i.h, %1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !28
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !20
  %i.l = and i32 %i.k, 4
  %.not69 = icmp eq i32 %i.l, 0
  br i1 %.not69, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.b
  store ptr %i.o, ptr %i.m, align 8, !tbaa !19
  store i64 0, ptr %i.a, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !28
  %i.r = add nsw i64 %i.q, %i.b
  store i64 %i.r, ptr %i.p, align 8, !tbaa !28
  %.not73 = icmp eq i64 %i.b, 0
  %i.s = select i1 %.not73, i64 -1, i64 %i.b
  br label %bb.n
end_hunk_0
