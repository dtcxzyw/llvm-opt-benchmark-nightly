Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/cio?download=true
inline.NumInlined: 5
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@opj_write_bytes_LE:bb.a
  %.05 = getelementptr inbounds i8, ptr %.pn8, i64 -1 ; 2 uses
  %i.u = load i8, ptr %.05, align 1, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %.067, i64 1
  store i8 %i.u, ptr %.067, align 1, !tbaa !11
  %i.w = add nuw i32 %.09, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.w, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !39

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @opj_read_bytes_BE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, i32 noundef %2) local_unnamed_addr #0 !guid !41 {
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
define void @opj_read_bytes_LE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, i32 noundef %2) local_unnamed_addr #3 !guid !49 {
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
  %i.g = getelementptr i8, ptr %i.f, i64 %i.a
  %i.h = zext i32 %2 to i64
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  %bound0 = icmp ult ptr %i.g, %i.i
  %bound1 = icmp ult ptr %0, %i.b
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check13 = icmp ult i32 %2, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %i.a, 24
  %n.vec = and i64 %i.a, 4294967264               ; 6 uses
  %i.k = trunc nuw i64 %n.vec to i32
  %i.l = sub nsw i64 0, %n.vec
  %i.m = getelementptr i8, ptr %i.b, i64 %i.l
  %i.n = getelementptr i8, ptr %0, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.o ; 2 uses
  %next.gep14 = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep14, align 1, !tbaa !11, !alias.scope !50
  %wide.load15 = load <16 x i8>, ptr %i.p, align 1, !tbaa !11, !alias.scope !50
  %i.q = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.r = getelementptr inbounds i8, ptr %next.gep, i64 -32
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse16 = shufflevector <16 x i8> %wide.load15, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.q, align 1, !tbaa !11, !alias.scope !51, !noalias !50
  store <16 x i8> %reverse16, ptr %i.r, align 1, !tbaa !11, !alias.scope !51, !noalias !50
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec17 = and i64 %i.a, 4294967288             ; 5 uses
  %i.t = trunc nuw i64 %n.vec17 to i32
  %i.u = sub nsw i64 0, %n.vec17
  %i.v = getelementptr i8, ptr %i.b, i64 %i.u
  %i.w = getelementptr i8, ptr %0, i64 %n.vec17
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 3 uses
  %i.x = sub i64 0, %index18
  %next.gep19 = getelementptr i8, ptr %i.b, i64 %i.x
  %next.gep20 = getelementptr i8, ptr %0, i64 %index18
  %wide.load21 = load <8 x i8>, ptr %next.gep20, align 1, !tbaa !11, !alias.scope !50
  %i.y = getelementptr inbounds i8, ptr %next.gep19, i64 -8
  %reverse22 = shufflevector <8 x i8> %wide.load21, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse22, ptr %i.y, align 1, !tbaa !11, !alias.scope !51, !noalias !50
  %index.next23 = add nuw i64 %index18, 8         ; 2 uses
  %i.z = icmp eq i64 %index.next23, %n.vec17
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !46

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %n.vec17, %i.a
  br i1 %cmp.n24, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.k, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ] ; 4 uses
  %.pn10.ph = phi ptr [ %i.b, %iter.check ], [ %i.b, %vector.memcheck ], [ %i.m, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ] ; 2 uses
  %.089.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.n, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ] ; 2 uses
  %i.aa = sub i32 %2, %.011.ph
  %xtraiter = and i32 %i.aa, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.011.prol = phi i32 [ %i.ad, %.lr.ph.prol ], [ %.011.ph, %.lr.ph.preheader ]
  %.pn10.prol = phi ptr [ %.07.prol, %.lr.ph.prol ], [ %.pn10.ph, %.lr.ph.preheader ]
  %.089.prol = phi ptr [ %i.ab, %.lr.ph.prol ], [ %.089.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %.07.prol = getelementptr inbounds i8, ptr %.pn10.prol, i64 -1 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.089.prol, i64 1 ; 2 uses
  %i.ac = load i8, ptr %.089.prol, align 1, !tbaa !11
  store i8 %i.ac, ptr %.07.prol, align 1, !tbaa !11
  %i.ad = add nuw i32 %.011.prol, 1               ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !47

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.011.unr = phi i32 [ %.011.ph, %.lr.ph.preheader ], [ %i.ad, %.lr.ph.prol ]
  %.pn10.unr = phi ptr [ %.pn10.ph, %.lr.ph.preheader ], [ %.07.prol, %.lr.ph.prol ]
  %.089.unr = phi ptr [ %.089.ph, %.lr.ph.preheader ], [ %i.ab, %.lr.ph.prol ]
  %i.ae = sub i32 %.011.ph, %2
  %i.af = icmp ugt i32 %i.ae, -8
  br i1 %i.af, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.011 = phi i32 [ %i.aw, %.lr.ph ], [ %.011.unr, %.lr.ph.prol.loopexit ]
  %.pn10 = phi ptr [ %.07.7, %.lr.ph ], [ %.pn10.unr, %.lr.ph.prol.loopexit ] ; 8 uses
  %.089 = phi ptr [ %i.au, %.lr.ph ], [ %.089.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.07 = getelementptr inbounds i8, ptr %.pn10, i64 -1
  %i.ag = getelementptr inbounds nuw i8, ptr %.089, i64 1
  %i.ah = load i8, ptr %.089, align 1, !tbaa !11
  store i8 %i.ah, ptr %.07, align 1, !tbaa !11
  %.07.1 = getelementptr inbounds i8, ptr %.pn10, i64 -2
  %i.ai = getelementptr inbounds nuw i8, ptr %.089, i64 2
  %i.aj = load i8, ptr %i.ag, align 1, !tbaa !11
  store i8 %i.aj, ptr %.07.1, align 1, !tbaa !11
  %.07.2 = getelementptr inbounds i8, ptr %.pn10, i64 -3
  %i.ak = getelementptr inbounds nuw i8, ptr %.089, i64 3
  %i.al = load i8, ptr %i.ai, align 1, !tbaa !11
  store i8 %i.al, ptr %.07.2, align 1, !tbaa !11
  %.07.3 = getelementptr inbounds i8, ptr %.pn10, i64 -4
  %i.am = getelementptr inbounds nuw i8, ptr %.089, i64 4
  %i.an = load i8, ptr %i.ak, align 1, !tbaa !11
  store i8 %i.an, ptr %.07.3, align 1, !tbaa !11
  %.07.4 = getelementptr inbounds i8, ptr %.pn10, i64 -5
  %i.ao = getelementptr inbounds nuw i8, ptr %.089, i64 5
  %i.ap = load i8, ptr %i.am, align 1, !tbaa !11
  store i8 %i.ap, ptr %.07.4, align 1, !tbaa !11
  %.07.5 = getelementptr inbounds i8, ptr %.pn10, i64 -6
  %i.aq = getelementptr inbounds nuw i8, ptr %.089, i64 6
  %i.ar = load i8, ptr %i.ao, align 1, !tbaa !11
  store i8 %i.ar, ptr %.07.5, align 1, !tbaa !11
  %.07.6 = getelementptr inbounds i8, ptr %.pn10, i64 -7
  %i.as = getelementptr inbounds nuw i8, ptr %.089, i64 7
  %i.at = load i8, ptr %i.aq, align 1, !tbaa !11
  store i8 %i.at, ptr %.07.6, align 1, !tbaa !11
  %.07.7 = getelementptr inbounds i8, ptr %.pn10, i64 -8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.089, i64 8
  %i.av = load i8, ptr %i.as, align 1, !tbaa !11
  store i8 %i.av, ptr %.07.7, align 1, !tbaa !11
  %i.aw = add nuw i32 %.011, 8                    ; 2 uses
  %exitcond.not.7 = icmp eq i32 %i.aw, %2
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !48

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @opj_write_double_BE(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, double noundef %1) local_unnamed_addr #4 !guid !53 {
bb.a:
  store double %1, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @opj_write_double_LE(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, double noundef %1) local_unnamed_addr #4 !guid !54 {
bb.a:
  %2 = bitcast double %1 to i64
  %3 = tail call i64 @llvm.bswap.i64(i64 %2)
  store i64 %3, ptr %0, align 1, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @opj_read_double_BE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #0 !guid !55 {
bb.a:
  %i.a = load i64, ptr %0, align 1
  store i64 %i.a, ptr %1, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @opj_read_double_LE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #0 !guid !56 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %0, align 1, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.c, ptr %i.a, align 1, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i8, ptr %i.b, align 1, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.f, ptr %i.d, align 1, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.i = load i8, ptr %i.e, align 1, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.i, ptr %i.g, align 1, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i8, ptr %i.h, align 1, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.l, ptr %i.j, align 1, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.o = load i8, ptr %i.k, align 1, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.o, ptr %i.m, align 1, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.r = load i8, ptr %i.n, align 1, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.r, ptr %i.p, align 1, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.u = load i8, ptr %i.q, align 1, !tbaa !11
  store i8 %i.u, ptr %i.s, align 1, !tbaa !11
  %i.v = load i8, ptr %i.t, align 1, !tbaa !11
  store i8 %i.v, ptr %1, align 1, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @opj_write_float_BE(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, float noundef %1) local_unnamed_addr #4 !guid !57 {
bb.a:
  store float %1, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @opj_write_float_LE(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, float noundef %1) local_unnamed_addr #4 !guid !58 {
bb.a:
  %i.a = bitcast float %1 to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %i.a)
  store i32 %2, ptr %0, align 1, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @opj_read_float_BE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #0 !guid !59 {
bb.a:
  %i.a = load i32, ptr %0, align 1
  store i32 %i.a, ptr %1, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @opj_read_float_LE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #0 !guid !60 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %0, align 1, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.c, ptr %i.a, align 1, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i8, ptr %i.b, align 1, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.f, ptr %i.d, align 1, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.i = load i8, ptr %i.e, align 1, !tbaa !11
  store i8 %i.i, ptr %i.g, align 1, !tbaa !11
  %i.j = load i8, ptr %i.h, align 1, !tbaa !11
  store i8 %i.j, ptr %1, align 1, !tbaa !11
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @opj_stream_create(i64 noundef %0, i32 noundef %1) local_unnamed_addr #5 !guid !61 {
bb.a:
  %i.a = tail call ptr @opj_calloc(i64 noundef 1, i64 noundef 120) #10 ; 13 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 %0, ptr %i.b, align 8, !tbaa !20
  %i.c = tail call ptr @opj_malloc(i64 noundef %0) #10 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.c, ptr %i.d, align 8, !tbaa !21
  %.not23 = icmp eq ptr %i.c, null
  br i1 %.not23, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @opj_free(ptr noundef nonnull %i.a) #10
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.c, ptr %i.e, align 8, !tbaa !22
  %.not24 = icmp eq i32 %1, 0                     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !23
  %. = select i1 %.not24, i32 1, i32 2
  %opj_stream_write_skip.opj_stream_read_skip = select i1 %.not24, ptr @opj_stream_write_skip, ptr @opj_stream_read_skip
  %opj_stream_write_seek.opj_stream_read_seek = select i1 %.not24, ptr @opj_stream_write_seek, ptr @opj_stream_read_seek
  %i.h = or i32 %i.g, %.
  store i32 %i.h, ptr %i.f, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %opj_stream_write_skip.opj_stream_read_skip, ptr %i.i, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %opj_stream_write_seek.opj_stream_read_seek, ptr %i.j, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @opj_stream_default_read, ptr %i.k, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @opj_stream_default_write, ptr %i.l, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @opj_stream_default_skip, ptr %i.m, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @opj_stream_default_seek, ptr %i.n, align 8, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi ptr [ %i.a, %bb.d ], [ null, %bb.c ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @opj_calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

declare ptr @opj_malloc(i64 noundef) local_unnamed_addr #6

declare void @opj_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define i64 @opj_stream_read_skip(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr noundef %2) #5 !guid !63 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30   ; 10 uses
  %.not = icmp ult i64 %i.b, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 %1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !22
  %i.f = sub nuw i64 %i.b, %1
  store i64 %i.f, ptr %i.a, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !31
  %i.i = add nsw i64 %i.h, %1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !31
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !23
  %i.l = and i32 %i.k, 4
  %.not69 = icmp eq i32 %i.l, 0
  br i1 %.not69, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.b
  store ptr %i.o, ptr %i.m, align 8, !tbaa !22
  store i64 0, ptr %i.a, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !31
  %i.r = add nsw i64 %i.q, %i.b
  store i64 %i.r, ptr %i.p, align 8, !tbaa !31
  %.not73 = icmp eq i64 %i.b, 0
  %i.s = select i1 %.not73, i64 -1, i64 %i.b
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %.not70 = icmp eq i64 %i.b, 0
  br i1 %.not70, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.u, ptr %i.v, align 8, !tbaa !22
  %i.w = sub nuw nsw i64 %1, %i.b
  store i64 0, ptr %i.a, align 8, !tbaa !30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.063 = phi i64 [ %i.w, %bb.f ], [ %1, %bb.e ]  ; 2 uses
  %i.x = icmp sgt i64 %.063, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.m
  %.180 = phi i64 [ %i.b, %.lr.ph ], [ %i.bf, %bb.m ] ; 6 uses
  %.16479 = phi i64 [ %.063, %.lr.ph ], [ %i.be, %bb.m ] ; 3 uses
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !31
  %i.ac = add i64 %.180, %.16479
  %i.ad = add i64 %i.ac, %i.ab
  %i.ae = load i64, ptr %i.z, align 8, !tbaa !32
  %i.af = icmp ugt i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ag = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 4, ptr noundef nonnull @.str) #10 ; 0 uses
  %i.ah = load i64, ptr %i.y, align 8, !tbaa !31
  %i.ai = add nsw i64 %i.ah, %.180                ; 3 uses
  store i64 %i.ai, ptr %i.y, align 8, !tbaa !31
  %i.aj = load i64, ptr %i.z, align 8, !tbaa !32  ; 4 uses
  %i.ak = sub i64 %i.aj, %i.ai
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.am, ptr %i.an, align 8, !tbaa !22
  store i64 0, ptr %i.a, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !29
  %i.aq = load ptr, ptr %0, align 8, !tbaa !33
  %i.ar = tail call i32 %i.ap(i64 noundef %i.aj, ptr noundef %i.aq) #10, !inline_history !64
  %.not.i = icmp eq i32 %i.ar, 0
  %i.as = load i32, ptr %i.j, align 8, !tbaa !23
  br i1 %.not.i, label %opj_stream_read_seek.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %i.aj, ptr %i.y, align 8, !tbaa !31
  br label %opj_stream_read_seek.exit

opj_stream_read_seek.exit:                        ; preds = %bb.i, %bb.j
  %.sink = or i32 %i.as, 4
  store i32 %.sink, ptr %i.j, align 8, !tbaa !23
  %.not72 = icmp eq i64 %i.aj, %i.ai
  %i.at = select i1 %.not72, i64 -1, i64 %i.ak
  br label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.aa, align 8, !tbaa !28
  %i.av = load ptr, ptr %0, align 8, !tbaa !33
  %i.aw = tail call i64 %i.au(i64 noundef %.16479, ptr noundef %i.av) #10 ; 3 uses
  %i.ax = icmp eq i64 %i.aw, -1
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 4, ptr noundef nonnull @.str) #10 ; 0 uses
  %i.az = load i32, ptr %i.j, align 8, !tbaa !23
  %i.ba = or i32 %i.az, 4
  store i32 %i.ba, ptr %i.j, align 8, !tbaa !23
  %i.bb = load i64, ptr %i.y, align 8, !tbaa !31
  %i.bc = add nsw i64 %i.bb, %.180
  store i64 %i.bc, ptr %i.y, align 8, !tbaa !31
  %.not71 = icmp eq i64 %.180, 0
  %i.bd = select i1 %.not71, i64 -1, i64 %.180
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.be = sub nsw i64 %.16479, %i.aw              ; 2 uses
  %i.bf = add nsw i64 %i.aw, %.180                ; 2 uses
  %i.bg = icmp sgt i64 %i.be, 0
  br i1 %i.bg, label %bb.h, label %._crit_edge, !llvm.loop !62

._crit_edge:                                      ; preds = %bb.m, %bb.g
  %.1.lcssa = phi i64 [ %i.b, %bb.g ], [ %i.bf, %bb.m ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !31
  %i.bj = add nsw i64 %i.bi, %.1.lcssa
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !31
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.l, %opj_stream_read_seek.exit, %bb.d, %bb.b
  %.062 = phi i64 [ %1, %bb.b ], [ %i.s, %bb.d ], [ %i.at, %opj_stream_read_seek.exit ], [ %i.bd, %bb.l ], [ %.1.lcssa, %._crit_edge ]
  ret i64 %.062
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @opj_stream_read_seek(ptr nofree noundef captures(none) initializes((64, 72), (88, 96)) %0, i64 noundef %1, ptr nofree readnone captures(none) %2) #5 !guid !65 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.b, ptr %i.c, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.g = load ptr, ptr %0, align 8, !tbaa !33
  %i.h = tail call i32 %i.f(i64 noundef %1, ptr noundef %i.g) #10
  %.not = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !23   ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = or i32 %i.j, 4
  store i32 %i.k, ptr %i.i, align 8, !tbaa !23
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = and i32 %i.j, -5
  store i32 %i.l, ptr %i.i, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %1, ptr %i.m, align 8, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i64 @opj_stream_write_skip(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr noundef %2) #5 !guid !67 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 7 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  %i.c = and i32 %i.b, 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !30   ; 2 uses
  %.not18.i = icmp eq i64 %i.h, 0
  br i1 %.not18.i, label %opj_stream_flush.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %i.j = phi ptr [ %i.e, %.lr.ph.i ], [ %i.q, %bb.d ]
  %i.k = phi i64 [ %i.h, %.lr.ph.i ], [ %i.s, %bb.d ]
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.m = load ptr, ptr %0, align 8, !tbaa !33
  %i.n = tail call i64 %i.l(ptr noundef %i.j, i64 noundef %i.k, ptr noundef %i.m) #10, !inline_history !34 ; 3 uses
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  store ptr %i.q, ptr %i.f, align 8, !tbaa !22
  %i.r = load i64, ptr %i.g, align 8, !tbaa !30
  %i.s = sub i64 %i.r, %i.n                       ; 3 uses
  store i64 %i.s, ptr %i.g, align 8, !tbaa !30
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %bb.c, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !21
  br label %opj_stream_flush.exit

opj_stream_flush.exit:                            ; preds = %bb.b, %._crit_edge.loopexit.i
  %i.t = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.e, %bb.b ]
  store ptr %i.t, ptr %i.f, align 8, !tbaa !22
  %i.u = icmp sgt i64 %1, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %opj_stream_flush.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.a, align 8, !tbaa !23
  %i.x = or i32 %i.w, 8
  store i32 %i.x, ptr %i.a, align 8, !tbaa !23
  %i.y = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 4, ptr noundef nonnull @.str.1) #10 ; 0 uses
  %i.z = load i32, ptr %i.a, align 8, !tbaa !23
  %i.aa = or i32 %i.z, 8
  store i32 %i.aa, ptr %i.a, align 8, !tbaa !23
  store i64 0, ptr %i.g, align 8, !tbaa !30
  br label %bb.i

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %.033 = phi i64 [ 0, %.lr.ph ], [ %i.an, %bb.h ] ; 4 uses
  %.02532 = phi i64 [ %1, %.lr.ph ], [ %i.am, %bb.h ] ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !28
  %i.ac = load ptr, ptr %0, align 8, !tbaa !33
  %i.ad = tail call i64 %i.ab(i64 noundef %.02532, ptr noundef %i.ac) #10 ; 3 uses
  %i.ae = icmp eq i64 %i.ad, -1
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 4, ptr noundef nonnull @.str.2) #10 ; 0 uses
  %i.ag = load i32, ptr %i.a, align 8, !tbaa !23
  %i.ah = or i32 %i.ag, 8
  store i32 %i.ah, ptr %i.a, align 8, !tbaa !23
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !31
  %i.ak = add nsw i64 %i.aj, %.033
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !31
  %.not28 = icmp eq i64 %.033, 0
  %i.al = select i1 %.not28, i64 -1, i64 %.033
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.am = sub nsw i64 %.02532, %i.ad              ; 2 uses
  %i.an = add nsw i64 %i.ad, %.033                ; 2 uses
  %i.ao = icmp sgt i64 %i.am, 0
  br i1 %i.ao, label %bb.f, label %._crit_edge, !llvm.loop !66

._crit_edge:                                      ; preds = %bb.h, %opj_stream_flush.exit
  %.0.lcssa = phi i64 [ 0, %opj_stream_flush.exit ], [ %i.an, %bb.h ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !31
  %i.ar = add nsw i64 %i.aq, %.0.lcssa
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !31
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %._crit_edge, %bb.g, %bb.e
  %.024 = phi i64 [ -1, %bb.e ], [ %i.al, %bb.g ], [ %.0.lcssa, %._crit_edge ], [ -1, %bb.a ]
  ret i64 %.024
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @opj_stream_write_seek(ptr nofree noundef captures(none) initializes((64, 72)) %0, i64 noundef %1, ptr noundef %2) #5 !guid !68 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !30   ; 2 uses
  %.not18.i = icmp eq i64 %i.e, 0
  br i1 %.not18.i, label %bb.e, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.g = phi ptr [ %i.b, %.lr.ph.i ], [ %i.n, %bb.c ]
  %i.h = phi i64 [ %i.e, %.lr.ph.i ], [ %i.p, %bb.c ]
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.j = load ptr, ptr %0, align 8, !tbaa !33
  %i.k = tail call i64 %i.i(ptr noundef %i.g, i64 noundef %i.h, ptr noundef %i.j) #10, !inline_history !34 ; 3 uses
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k ; 2 uses
  store ptr %i.n, ptr %i.c, align 8, !tbaa !22
  %i.o = load i64, ptr %i.d, align 8, !tbaa !30
  %i.p = sub i64 %i.o, %i.k                       ; 3 uses
  store i64 %i.p, ptr %i.d, align 8, !tbaa !30
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %bb.b, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !21
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !23
  %i.s = or i32 %i.r, 8
  store i32 %i.s, ptr %i.q, align 8, !tbaa !23
  %i.t = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 4, ptr noundef nonnull @.str.1) #10 ; 0 uses
  %i.u = load i32, ptr %i.q, align 8, !tbaa !23
  %i.v = or i32 %i.u, 8
  store i32 %i.v, ptr %i.q, align 8, !tbaa !23
  br label %bb.h

bb.e:                                             ; preds = %._crit_edge.loopexit.i, %bb.a
  %i.w = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.b, %bb.a ]
  store ptr %i.w, ptr %i.c, align 8, !tbaa !22
  store i64 0, ptr %i.d, align 8, !tbaa !30
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !29
  %i.z = load ptr, ptr %0, align 8, !tbaa !33
  %i.aa = tail call i32 %i.y(i64 noundef %1, ptr noundef %i.z) #10
  %.not12 = icmp eq i32 %i.aa, 0
  br i1 %.not12, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !23
  %i.ad = or i32 %i.ac, 8
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !23
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %1, ptr %i.ae, align 8, !tbaa !31
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.0 = phi i32 [ 1, %bb.g ], [ 0, %bb.f ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @opj_stream_default_read(ptr nofree readnone captures(none) %0, i64 %1, ptr nofree readnone captures(none) %2) #7 !guid !69 {
bb.a:
  ret i64 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @opj_stream_default_write(ptr nofree readnone captures(none) %0, i64 %1, ptr nofree readnone captures(none) %2) #7 !guid !70 {
bb.a:
  ret i64 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @opj_stream_default_skip(i64 %0, ptr nofree readnone captures(none) %1) #7 !guid !71 {
bb.a:
  ret i64 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @opj_stream_default_seek(i64 %0, ptr nofree readnone captures(none) %1) #7 !guid !72 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define ptr @opj_stream_default_create(i32 noundef %0) local_unnamed_addr #5 !guid !73 {
bb.a:
  %i.a = tail call ptr @opj_calloc(i64 noundef 1, i64 noundef 120) #10 ; 13 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %opj_stream_create.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 1048576, ptr %i.b, align 8, !tbaa !20
  %i.c = tail call ptr @opj_malloc(i64 noundef 1048576) #10 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.c, ptr %i.d, align 8, !tbaa !21
  %.not23.i = icmp eq ptr %i.c, null
  br i1 %.not23.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @opj_free(ptr noundef nonnull %i.a) #10
  br label %opj_stream_create.exit

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.c, ptr %i.e, align 8, !tbaa !22
  %.not24.i = icmp eq i32 %0, 0                   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !23
  %..i = select i1 %.not24.i, i32 1, i32 2
  %opj_stream_write_skip.opj_stream_read_skip.i = select i1 %.not24.i, ptr @opj_stream_write_skip, ptr @opj_stream_read_skip
  %opj_stream_write_seek.opj_stream_read_seek.i = select i1 %.not24.i, ptr @opj_stream_write_seek, ptr @opj_stream_read_seek
  %i.h = or i32 %i.g, %..i
  store i32 %i.h, ptr %i.f, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %opj_stream_write_skip.opj_stream_read_skip.i, ptr %i.i, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %opj_stream_write_seek.opj_stream_read_seek.i, ptr %i.j, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @opj_stream_default_read, ptr %i.k, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @opj_stream_default_write, ptr %i.l, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @opj_stream_default_skip, ptr %i.m, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @opj_stream_default_seek, ptr %i.n, align 8, !tbaa !29
  br label %opj_stream_create.exit

opj_stream_create.exit:                           ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.a, %bb.d ], [ null, %bb.c ], [ null, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define void @opj_stream_destroy(ptr noundef %0) local_unnamed_addr #5 !guid !74 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %.not9 = icmp eq ptr %i.b, null
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !33
  tail call void %i.b(ptr noundef %i.c) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  tail call void @opj_free(ptr noundef %i.e) #10
  store ptr null, ptr %i.d, align 8, !tbaa !21
  tail call void @opj_free(ptr noundef nonnull %0) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @opj_stream_set_read_function(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 !guid !75 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  %i.c = and i32 %i.b, 2
  %.not5 = icmp eq i32 %i.c, 0
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.d, align 8, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @opj_stream_set_seek_function(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #4 !guid !76 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %i.a, align 8, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @opj_stream_set_write_function(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 !guid !77 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  %i.c = and i32 %i.b, 1
  %.not5 = icmp eq i32 %i.c, 0
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.d, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @opj_stream_set_skip_function(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #4 !guid !78 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.a, align 8, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @opj_stream_set_user_data(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 !guid !79 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !35
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @opj_stream_set_user_data_length(ptr nofree noundef writeonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #4 !guid !80 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.a, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @opj_stream_read_data(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #5 !guid !81 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 16 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30   ; 7 uses
  %.not = icmp ult i64 %i.b, %2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.d, i64 %2, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %2
  store ptr %i.f, ptr %i.c, align 8, !tbaa !22
  %i.g = load i64, ptr %i.a, align 8, !tbaa !30
  %i.h = sub i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !31
  %i.k = add nsw i64 %i.j, %2
  store i64 %i.k, ptr %i.i, align 8, !tbaa !31
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !23
  %i.n = and i32 %i.m, 4
  %.not130 = icmp eq i32 %i.n, 0
  br i1 %.not130, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.p, i64 %i.b, i1 false)
  %i.q = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  store ptr %i.s, ptr %i.o, align 8, !tbaa !22
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !31
  %i.v = add nsw i64 %i.u, %i.q
  store i64 %i.v, ptr %i.t, align 8, !tbaa !31
  store i64 0, ptr %i.a, align 8, !tbaa !30
  %.not136 = icmp eq i64 %i.b, 0
  %i.w = select i1 %.not136, i64 -1, i64 %i.b
  br label %bb.u

bb.e:                                             ; preds = %bb.c
  %.not131 = icmp eq i64 %i.b, 0
  br i1 %.not131, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !22
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.y, i64 %i.b, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !21  ; 2 uses
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !22
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !30  ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  %i.ad = sub i64 %2, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !31
  %i.ag = add nsw i64 %i.af, %i.ab
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !31
  store i64 0, ptr %i.a, align 8, !tbaa !30
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !21 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = phi ptr [ %i.aa, %bb.f ], [ %i.ai, %bb.g ]
  %.0121 = phi ptr [ %i.ac, %bb.f ], [ %1, %bb.g ]
  %.0118 = phi i64 [ %i.ad, %bb.f ], [ %2, %bb.g ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.t, %bb.h
  %i.aq = phi ptr [ %i.ak, %bb.h ], [ %i.bz, %bb.t ]
  %.1122 = phi ptr [ %.0121, %bb.h ], [ %.2123, %bb.t ] ; 4 uses
  %.1119 = phi i64 [ %.0118, %bb.h ], [ %.2120, %bb.t ] ; 10 uses
  %.1 = phi i64 [ %i.b, %bb.h ], [ %.2, %bb.t ]   ; 7 uses
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !20 ; 2 uses
  %i.as = icmp ult i64 %.1119, %i.ar
  %i.at = load ptr, ptr %i.am, align 8, !tbaa !26 ; 2 uses
  %i.au = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  br i1 %i.as, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.av = tail call i64 %i.at(ptr noundef %i.aq, i64 noundef %i.ar, ptr noundef %i.au) #10 ; 5 uses
  store i64 %i.av, ptr %i.a, align 8, !tbaa !30
  %i.aw = icmp eq i64 %i.av, -1
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str) #10 ; 0 uses
  store i64 0, ptr %i.a, align 8, !tbaa !30
  %i.ay = load i32, ptr %i.l, align 8, !tbaa !23
  %i.az = or i32 %i.ay, 4
  store i32 %i.az, ptr %i.l, align 8, !tbaa !23
  %.not135 = icmp eq i64 %.1, 0
  %i.ba = select i1 %.not135, i64 -1, i64 %.1
  br label %bb.u

bb.l:                                             ; preds = %bb.j
  %i.bb = icmp ult i64 %i.av, %.1119
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bc = load ptr, ptr %i.ao, align 8, !tbaa !22
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1122, ptr align 1 %i.bc, i64 %i.av, i1 false)
  %i.bd = load ptr, ptr %i.an, align 8, !tbaa !21 ; 2 uses
  store ptr %i.bd, ptr %i.ao, align 8, !tbaa !22
  %i.be = load i64, ptr %i.a, align 8, !tbaa !30
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.bf = add i64 %.1, %.1119
  %i.bg = load ptr, ptr %i.ao, align 8, !tbaa !22
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1122, ptr align 1 %i.bg, i64 %.1119, i1 false)
  %i.bh = load ptr, ptr %i.ao, align 8, !tbaa !22
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.1119
  store ptr %i.bi, ptr %i.ao, align 8, !tbaa !22
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !30
  %i.bk = sub i64 %i.bj, %.1119
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !30
  %i.bl = load i64, ptr %i.ap, align 8, !tbaa !31
  %i.bm = add nsw i64 %i.bl, %.1119
  store i64 %i.bm, ptr %i.ap, align 8, !tbaa !31
  br label %bb.u

bb.o:                                             ; preds = %bb.i
  %i.bn = tail call i64 %i.at(ptr noundef %.1122, i64 noundef %.1119, ptr noundef %i.au) #10 ; 7 uses
  store i64 %i.bn, ptr %i.a, align 8, !tbaa !30
  %i.bo = icmp eq i64 %i.bn, -1
  br i1 %i.bo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bp = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str) #10 ; 0 uses
  store i64 0, ptr %i.a, align 8, !tbaa !30
  %i.bq = load i32, ptr %i.l, align 8, !tbaa !23
  %i.br = or i32 %i.bq, 4
  store i32 %i.br, ptr %i.l, align 8, !tbaa !23
  %.not132 = icmp eq i64 %.1, 0
  %i.bs = select i1 %.not132, i64 -1, i64 %.1
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.bt = icmp ult i64 %i.bn, %.1119
  br i1 %i.bt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bu = load ptr, ptr %i.an, align 8, !tbaa !21 ; 2 uses
  store ptr %i.bu, ptr %i.ao, align 8, !tbaa !22
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bv = add i64 %i.bn, %.1
  %i.bw = load i64, ptr %i.ap, align 8, !tbaa !31
  %i.bx = add nsw i64 %i.bw, %i.bn
  store i64 %i.bx, ptr %i.ap, align 8, !tbaa !31
  %i.by = load ptr, ptr %i.an, align 8, !tbaa !21
  store ptr %i.by, ptr %i.ao, align 8, !tbaa !22
  store i64 0, ptr %i.a, align 8, !tbaa !30
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.m
  %.sink172 = phi i64 [ %i.bn, %bb.r ], [ %i.be, %bb.m ] ; 3 uses
  %i.bz = phi ptr [ %i.bu, %bb.r ], [ %i.bd, %bb.m ]
  %.pn134 = phi i64 [ %i.bn, %bb.r ], [ %i.av, %bb.m ]
  %i.ca = load i64, ptr %i.ap, align 8, !tbaa !31
  %i.cb = add nsw i64 %i.ca, %.sink172
  store i64 %i.cb, ptr %i.ap, align 8, !tbaa !31
  %.2 = add i64 %.pn134, %.1
  %.2120 = sub i64 %.1119, %.sink172
  %.2123 = getelementptr inbounds nuw i8, ptr %.1122, i64 %.sink172
  store i64 0, ptr %i.a, align 8, !tbaa !30
  br label %bb.i

bb.u:                                             ; preds = %bb.s, %bb.p, %bb.n, %bb.k, %bb.d, %bb.b
  %.0117 = phi i64 [ %2, %bb.b ], [ %i.w, %bb.d ], [ %i.ba, %bb.k ], [ %i.bf, %bb.n ], [ %i.bs, %bb.p ], [ %i.bv, %bb.s ]
  ret i64 %.0117
}

declare i32 @opj_event_msg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define i64 @opj_stream_write_data(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #5 !guid !82 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  %i.c = and i32 %i.b, 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 7 uses
  %i.f = load i64, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !tbaa !30   ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %.not4150 = icmp ult i64 %i.h, %2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  br i1 %.not4150, label %.lr.ph, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre61 = load ptr, ptr %i.i, align 8, !tbaa !22
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

._crit_edge:                                      ; preds = %opj_stream_flush.exit, %.preheader.._crit_edge_crit_edge
  %i.m = phi ptr [ %.pre61, %.preheader.._crit_edge_crit_edge ], [ %i.aw, %opj_stream_flush.exit ]
  %.038.lcssa = phi ptr [ %1, %.preheader.._crit_edge_crit_edge ], [ %.139, %opj_stream_flush.exit ]
  %.036.lcssa = phi i64 [ %2, %.preheader.._crit_edge_crit_edge ], [ %.137, %opj_stream_flush.exit ] ; 4 uses
  %.0.lcssa = phi i64 [ 0, %.preheader.._crit_edge_crit_edge ], [ %.1, %opj_stream_flush.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %.038.lcssa, i64 %.036.lcssa, i1 false)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.036.lcssa
  store ptr %i.p, ptr %i.n, align 8, !tbaa !22
  %i.q = add i64 %.0.lcssa, %.036.lcssa
  %i.r = load <2 x i64>, ptr %i.e, align 8, !tbaa !83
  %i.s = insertelement <2 x i64> poison, i64 %.036.lcssa, i64 0
  %i.t = shufflevector <2 x i64> %i.s, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.u = add <2 x i64> %i.r, %i.t
  store <2 x i64> %i.u, ptr %i.e, align 8, !tbaa !83
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph, %opj_stream_flush.exit
  %i.v = phi i64 [ %i.g, %.lr.ph ], [ 0, %opj_stream_flush.exit ] ; 2 uses
  %i.w = phi i64 [ %i.h, %.lr.ph ], [ %i.ax, %opj_stream_flush.exit ] ; 6 uses
  %i.x = phi i64 [ %i.f, %.lr.ph ], [ %i.ax, %opj_stream_flush.exit ]
  %.053 = phi i64 [ 0, %.lr.ph ], [ %.1, %opj_stream_flush.exit ] ; 2 uses
  %.03652 = phi i64 [ %2, %.lr.ph ], [ %.137, %opj_stream_flush.exit ] ; 2 uses
  %.03851 = phi ptr [ %1, %.lr.ph ], [ %.139, %opj_stream_flush.exit ] ; 3 uses
  %.not42 = icmp eq i64 %i.x, %i.v
  br i1 %.not42, label %._crit_edge60, label %bb.c

._crit_edge60:                                    ; preds = %bb.b
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !21
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.y = add i64 %i.w, %.053
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !22
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %.03851, i64 %i.w, i1 false)
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %.03851, i64 %i.w
  %i.ac = sub nuw i64 %.03652, %i.w
  %i.ad = load i64, ptr %i.e, align 8, !tbaa !30
  %i.ae = add i64 %i.ad, %i.w                     ; 2 uses
  store i64 %i.ae, ptr %i.e, align 8, !tbaa !30
  %i.af = load i64, ptr %i.k, align 8, !tbaa !31
  %i.ag = add nsw i64 %i.af, %i.w
  store i64 %i.ag, ptr %i.k, align 8, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge60, %bb.c
  %i.ah = phi i64 [ %i.ae, %bb.c ], [ %i.v, %._crit_edge60 ] ; 2 uses
  %i.ai = phi ptr [ %i.aa, %bb.c ], [ %.pre, %._crit_edge60 ] ; 3 uses
  %.139 = phi ptr [ %i.ab, %bb.c ], [ %.03851, %._crit_edge60 ] ; 2 uses
  %.137 = phi i64 [ %i.ac, %bb.c ], [ %.03652, %._crit_edge60 ] ; 3 uses
  %.1 = phi i64 [ %i.y, %bb.c ], [ %.053, %._crit_edge60 ] ; 2 uses
  store ptr %i.ai, ptr %i.i, align 8, !tbaa !22
  %.not18.i = icmp eq i64 %i.ah, 0
  br i1 %.not18.i, label %opj_stream_flush.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %i.aj = phi ptr [ %i.at, %bb.e ], [ %i.ai, %bb.d ]
  %i.ak = phi i64 [ %i.av, %bb.e ], [ %i.ah, %bb.d ]
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.am = load ptr, ptr %0, align 8, !tbaa !33
  %i.an = tail call i64 %i.al(ptr noundef %i.aj, i64 noundef %i.ak, ptr noundef %i.am) #10, !inline_history !34 ; 3 uses
  %i.ao = icmp eq i64 %i.an, -1
  br i1 %i.ao, label %opj_stream_flush.exit.thread, label %bb.e

opj_stream_flush.exit.thread:                     ; preds = %.lr.ph.i
  %i.ap = load i32, ptr %i.a, align 8, !tbaa !23
  %i.aq = or i32 %i.ap, 8
  store i32 %i.aq, ptr %i.a, align 8, !tbaa !23
  %i.ar = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.1) #10 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.an ; 2 uses
  store ptr %i.at, ptr %i.i, align 8, !tbaa !22
  %i.au = load i64, ptr %i.e, align 8, !tbaa !30
  %i.av = sub i64 %i.au, %i.an                    ; 3 uses
  store i64 %i.av, ptr %i.e, align 8, !tbaa !30
  %.not.i = icmp eq i64 %i.av, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %bb.e
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !21
  br label %opj_stream_flush.exit

opj_stream_flush.exit:                            ; preds = %bb.d, %._crit_edge.loopexit.i
  %i.aw = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.ai, %bb.d ] ; 2 uses
  store ptr %i.aw, ptr %i.i, align 8, !tbaa !22
  %i.ax = load i64, ptr %i.d, align 8, !tbaa !20  ; 3 uses
  %.not41 = icmp ult i64 %i.ax, %.137
  br i1 %.not41, label %bb.b, label %._crit_edge

bb.f:                                             ; preds = %opj_stream_flush.exit.thread, %bb.a, %._crit_edge
  %.035 = phi i64 [ -1, %bb.a ], [ %i.q, %._crit_edge ], [ -1, %opj_stream_flush.exit.thread ]
  ret i64 %.035
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @opj_stream_flush(ptr nofree noundef captures(none) initializes((64, 72)) %0, ptr noundef %1) local_unnamed_addr #5 !guid !84 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !30   ; 2 uses
  %.not18 = icmp eq i64 %i.e, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.g = phi ptr [ %i.b, %.lr.ph ], [ %i.r, %bb.d ]
  %i.h = phi i64 [ %i.e, %.lr.ph ], [ %i.t, %bb.d ]
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.j = load ptr, ptr %0, align 8, !tbaa !33
  %i.k = tail call i64 %i.i(ptr noundef %i.g, i64 noundef %i.h, ptr noundef %i.j) #10 ; 3 uses
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !23
  %i.o = or i32 %i.n, 8
  store i32 %i.o, ptr %i.m, align 8, !tbaa !23
  %i.p = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.1) #10 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k ; 2 uses
  store ptr %i.r, ptr %i.c, align 8, !tbaa !22
  %i.s = load i64, ptr %i.d, align 8, !tbaa !30
  %i.t = sub i64 %i.s, %i.k                       ; 3 uses
  store i64 %i.t, ptr %i.d, align 8, !tbaa !30
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !0

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.u = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ]
  store ptr %i.u, ptr %i.c, align 8, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @opj_stream_tell(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 !guid !85 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i64, ptr %i.a, align 8, !tbaa !31
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @opj_stream_get_number_byte_left(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 !guid !86 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8, !tbaa !31
  %i.e = sub nsw i64 %i.b, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i64 %i.f
}

; Function Attrs: nounwind uwtable
define i64 @opj_stream_skip(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #5 !guid !87 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = tail call i64 %i.b(ptr noundef %0, i64 noundef %1, ptr noundef %2) #10
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define i32 @opj_stream_seek(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #5 !guid !88 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = tail call i32 %i.b(ptr noundef %0, i64 noundef %1, ptr noundef %2) #10
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @opj_stream_has_seek(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 !guid !89 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = icmp ne ptr %i.b, @opj_stream_default_seek
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = distinct !{!0, !12}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 1069405855981459787}
!9 = !{i64 922769656889697789}
!10 = !{i64 647811320426551150}
!11 = !{!5, !5, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = !{!"branch_weights", i32 8, i32 24}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = !{!"p1 omnipotent char", !16, i64 0}
!19 = !{!"opj_stream_private", !16, i64 0, !16, i64 8, !17, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !18, i64 56, !18, i64 64, !16, i64 72, !16, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !6, i64 112}
!20 = !{!19, !17, i64 104}
!21 = !{!19, !18, i64 56}
!22 = !{!19, !18, i64 64}
!23 = !{!19, !6, i64 112}
!24 = !{!19, !16, i64 72}
!25 = !{!19, !16, i64 80}
!26 = !{!19, !16, i64 24}
!27 = !{!19, !16, i64 32}
!28 = !{!19, !16, i64 40}
!29 = !{!19, !16, i64 48}
!30 = !{!19, !17, i64 88}
!31 = !{!19, !17, i64 96}
!32 = !{!19, !17, i64 16}
!33 = !{!19, !16, i64 0}
!34 = !{ptr @opj_stream_flush}
!35 = !{!19, !16, i64 8}
!36 = !{i64 -5381456402528967822}
!37 = distinct !{!37, !12, !13, !14}
!38 = distinct !{!38, !12, !13, !14}
!39 = distinct !{!39, !12, !14, !13}
!40 = !{i64 5598270868415609388}
!41 = !{i64 5180257187256807844}
!42 = distinct !{!42, i1 false, !"LVerDomain"}
!43 = distinct !{!43, !42}
!44 = distinct !{!44, !42}
!45 = distinct !{!45, !12, !13, !14}
!46 = distinct !{!46, !12, !13, !14}
!47 = distinct !{!47, !52}
!48 = distinct !{!48, !12, !13}
!49 = !{i64 3877137238848148184}
!50 = !{!43}
!51 = !{!44}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{i64 -2806586559562547546}
!54 = !{i64 8399406570328360349}
!55 = !{i64 -2485935585642873090}
!56 = !{i64 -559638831231916241}
!57 = !{i64 -8935644514400808240}
!58 = !{i64 -47673733873711366}
!59 = !{i64 5442006041132107344}
!60 = !{i64 4130065596810760525}
!61 = !{i64 -6103740201563106602}
!62 = distinct !{!62, !12}
!63 = !{i64 1590844118891654976}
!64 = !{ptr @opj_stream_read_seek}
!65 = !{i64 6256537744567001866}
!66 = distinct !{!66, !12}
!67 = !{i64 -4038541344275689839}
!68 = !{i64 -1613239275347288380}
!69 = !{i64 -5821564267797624865}
!70 = !{i64 -1966091875593907520}
!71 = !{i64 4187168195582110065}
!72 = !{i64 7656504134738892547}
!73 = !{i64 6125265043742741812}
!74 = !{i64 -236878385254473159}
!75 = !{i64 -2507546881898718430}
!76 = !{i64 -6617514394607963097}
!77 = !{i64 1454823168836382977}
!78 = !{i64 7018910919509519002}
!79 = !{i64 7389674585801802108}
!80 = !{i64 6849002365296473656}
!81 = !{i64 -5164603496118398187}
!82 = !{i64 5887956266453355579}
!83 = !{!17, !17, i64 0}
!84 = !{i64 -7443516167851031221}
!85 = !{i64 476167160182049671}
!86 = !{i64 413421844862005591}
!87 = !{i64 6455710479066089215}
!88 = !{i64 8140836031023907604}
!89 = !{i64 6428028676793279941}
end_hunk_0
