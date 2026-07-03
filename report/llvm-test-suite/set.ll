inline.NumInlined: 29
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@bit_index:bb.a
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.010 = phi i32 [ %i.e, %.lr.ph ], [ 0, %.preheader ]
  %.069 = phi i32 [ %i.d, %.lr.ph ], [ %0, %.preheader ] ; 2 uses
  %i.d = lshr exact i32 %.069, 1
  %i.e = add nuw nsw i32 %.010, 1                 ; 2 uses
  %i.f = and i32 %.069, 2
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  %.07 = phi i32 [ -1, %bb.a ], [ 0, %.preheader ], [ %i.e, %.lr.ph ]
  ret i32 %.07
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @set_ord(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4      ; 2 uses
  %i.b = and i32 %i.a, 1023
  %.not14 = icmp eq i32 %i.b, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = and i32 %i.a, 1023
  %i.d = zext nneg i32 %i.c to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ %i.d, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.01012 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4    ; 5 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = and i32 %i.f, 255
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %i.k = lshr i32 %i.f, 8
  %i.l = and i32 %i.k, 255
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = lshr i32 %i.f, 16
  %i.q = and i32 %i.p, 255
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %i.u = lshr i32 %i.f, 24
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4
  %i.y = add i32 %i.j, %.01012
  %i.z = add i32 %i.y, %i.o
  %i.aa = add i32 %i.z, %i.t
  %i.ab = add i32 %i.aa, %i.x
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.1 = phi i32 [ %i.ab, %bb.b ], [ %.01012, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ac = icmp sgt i64 %indvars.iv, 1
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.010.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.c ]
  ret i32 %.010.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @set_dist(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4      ; 2 uses
  %i.b = and i32 %i.a, 1023
  %.not16 = icmp eq i32 %i.b, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = and i32 %i.a, 1023
  %i.d = zext nneg i32 %i.c to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ %i.d, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %.01214 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %i.i = and i32 %i.h, %i.f                       ; 5 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = and i32 %i.i, 255
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4
  %i.n = lshr i32 %i.i, 8
  %i.o = and i32 %i.n, 255
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %i.s = lshr i32 %i.i, 16
  %i.t = and i32 %i.s, 255
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = lshr i32 %i.i, 24
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = add i32 %i.m, %.01214
  %i.ac = add i32 %i.ab, %i.r
  %i.ad = add i32 %i.ac, %i.w
  %i.ae = add i32 %i.ad, %i.aa
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.1 = phi i32 [ %i.ae, %bb.b ], [ %.01214, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.af = icmp sgt i64 %indvars.iv, 1
  br i1 %i.af, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.012.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.c ]
  ret i32 %.012.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef ptr @set_clear(ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((0, 4)) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i32 %1, 33
  %i.b = add nsw i32 %1, -1
  %i.c = lshr i32 %i.b, 5
  %i.d = add nuw nsw i32 %i.c, 1
  %i.e = select i1 %i.a, i32 1, i32 %i.d          ; 3 uses
  store i32 %i.e, ptr %0, align 4, !tbaa !4
  %i.f = shl nuw nsw i32 %i.e, 2
  %i.g = zext nneg i32 %i.f to i64
  %i.h = add nsw i32 %i.e, -1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = sub nsw i64 %i.g, %i.j
  %scevgep = getelementptr i8, ptr %0, i64 %i.k
  %i.l = add nuw nsw i64 %i.j, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.l, i1 false), !tbaa !4
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef ptr @set_fill(ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((0, 4)) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i32 %1, 33
  %i.b = add nsw i32 %1, -1
  %i.c = lshr i32 %i.b, 5
  %i.d = add nuw nsw i32 %i.c, 1
  %i.e = select i1 %i.a, i32 1, i32 %i.d          ; 5 uses
  store i32 %i.e, ptr %0, align 4, !tbaa !4
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f
  %i.h = shl nsw i32 %i.e, 5
  %i.i = sub nsw i32 %i.h, %1
  %i.j = lshr i32 -1, %i.i
  store i32 %i.j, ptr %i.g, align 4, !tbaa !4
  %i.k = icmp samesign ugt i32 %i.e, 1
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.l = add nsw i32 %i.e, -1
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 2
  %scevgep = getelementptr i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 -1, i64 %i.n, i1 false), !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @set_copy(ptr nofree noundef returned writeonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !4
  %i.b = and i32 %i.a, 1023                       ; 2 uses
  %i.c = zext nneg i32 %i.b to i64                ; 4 uses
  %i.d = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.b, 7
  %i.e = ptrtoaddr ptr %1 to i64
  %i.f = ptrtoaddr ptr %0 to i64
  %i.g = sub i64 %i.f, %i.e
  %diff.check = icmp ugt i64 %i.g, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %i.d, 2040                     ; 3 uses
  %i.h = sub nsw i64 %i.c, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.i = sub i64 %i.c, %index                     ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -12
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -28
  %wide.load = load <4 x i32>, ptr %i.k, align 4, !tbaa !4
  %wide.load7 = load <4 x i32>, ptr %i.l, align 4, !tbaa !4
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -12
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -28
  store <4 x i32> %wide.load, ptr %i.n, align 4, !tbaa !4
  store <4 x i32> %wide.load7, ptr %i.o, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %indvars.iv.ph = phi i64 [ %i.c, %bb.a ], [ %i.h, %middle.block ] ; 4 uses
  %i.q = add nsw i64 %indvars.iv.ph, 1
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.prol
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.prol
  store i32 %i.s, ptr %i.t, align 4, !tbaa !4
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !11

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.u = icmp ult i64 %indvars.iv.ph, 3
  br i1 %i.u, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.w, ptr %i.x, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !4
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.1
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !4
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, -3 ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.2
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !4
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, -4
  %.not.3 = icmp eq i64 %indvars.iv.next.2, 0
  br i1 %.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !13

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @set_and(ptr nofree noundef returned captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 2 uses
  %i.b = and i32 %i.a, 1023
  %i.c = load i32, ptr %0, align 4, !tbaa !4
  %i.d = and i32 %i.c, -1024
  %i.e = or disjoint i32 %i.d, %i.b
  store i32 %i.e, ptr %0, align 4, !tbaa !4
  %i.f = and i32 %i.a, 1023                       ; 2 uses
  %i.g = zext nneg i32 %i.f to i64                ; 5 uses
  %i.h = add nuw nsw i64 %i.g, 1
  %i.i = icmp ne i32 %i.f, 0
  %umin.neg = sext i1 %i.i to i64
  %i.j = add nsw i64 %i.h, %umin.neg              ; 3 uses
  %min.iters.check = icmp ult i64 %i.j, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.m = ptrtoaddr ptr %2 to i64
  %i.n = sub i64 %i.l, %i.k
  %diff.check = icmp ugt i64 %i.n, -32
  %i.o = sub i64 %i.l, %i.m
  %diff.check12 = icmp ugt i64 %i.o, -32
  %conflict.rdx = or i1 %diff.check, %diff.check12
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, -8                       ; 3 uses
  %i.p = sub nsw i64 %i.g, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = sub i64 %i.g, %index                     ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -12
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -28
  %wide.load = load <4 x i32>, ptr %i.s, align 4, !tbaa !4
  %wide.load13 = load <4 x i32>, ptr %i.t, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.q ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -12
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -28
  %wide.load15 = load <4 x i32>, ptr %i.v, align 4, !tbaa !4
  %wide.load16 = load <4 x i32>, ptr %i.w, align 4, !tbaa !4
  %i.x = and <4 x i32> %wide.load15, %wide.load
  %i.y = and <4 x i32> %wide.load16, %wide.load13
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -12
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -28
  store <4 x i32> %i.x, ptr %i.aa, align 4, !tbaa !4
  store <4 x i32> %i.y, ptr %i.ab, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %bb.a ], [ %i.p, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = and i32 %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.aj = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.aj, label %scalar.ph, label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @set_or(ptr nofree noundef returned captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 2 uses
  %i.b = and i32 %i.a, 1023
  %i.c = load i32, ptr %0, align 4, !tbaa !4
  %i.d = and i32 %i.c, -1024
  %i.e = or disjoint i32 %i.d, %i.b
  store i32 %i.e, ptr %0, align 4, !tbaa !4
  %i.f = and i32 %i.a, 1023                       ; 2 uses
  %i.g = zext nneg i32 %i.f to i64                ; 5 uses
  %i.h = add nuw nsw i64 %i.g, 1
  %i.i = icmp ne i32 %i.f, 0
  %umin.neg = sext i1 %i.i to i64
  %i.j = add nsw i64 %i.h, %umin.neg              ; 3 uses
  %min.iters.check = icmp ult i64 %i.j, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.m = ptrtoaddr ptr %2 to i64
  %i.n = sub i64 %i.l, %i.k
  %diff.check = icmp ugt i64 %i.n, -32
  %i.o = sub i64 %i.l, %i.m
  %diff.check12 = icmp ugt i64 %i.o, -32
  %conflict.rdx = or i1 %diff.check, %diff.check12
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, -8                       ; 3 uses
  %i.p = sub nsw i64 %i.g, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = sub i64 %i.g, %index                     ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -12
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -28
  %wide.load = load <4 x i32>, ptr %i.s, align 4, !tbaa !4
  %wide.load13 = load <4 x i32>, ptr %i.t, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.q ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -12
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -28
  %wide.load15 = load <4 x i32>, ptr %i.v, align 4, !tbaa !4
  %wide.load16 = load <4 x i32>, ptr %i.w, align 4, !tbaa !4
  %i.x = or <4 x i32> %wide.load15, %wide.load
  %i.y = or <4 x i32> %wide.load16, %wide.load13
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -12
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -28
  store <4 x i32> %i.x, ptr %i.aa, align 4, !tbaa !4
  store <4 x i32> %i.y, ptr %i.ab, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %bb.a ], [ %i.p, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = or i32 %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.aj = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.aj, label %scalar.ph, label %.loopexit, !llvm.loop !17

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @set_diff(ptr nofree noundef returned captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 2 uses
  %i.b = and i32 %i.a, 1023
  %i.c = load i32, ptr %0, align 4, !tbaa !4
  %i.d = and i32 %i.c, -1024
  %i.e = or disjoint i32 %i.d, %i.b
  store i32 %i.e, ptr %0, align 4, !tbaa !4
  %i.f = and i32 %i.a, 1023                       ; 2 uses
  %i.g = zext nneg i32 %i.f to i64                ; 5 uses
  %i.h = add nuw nsw i64 %i.g, 1
  %i.i = icmp ne i32 %i.f, 0
  %umin.neg = sext i1 %i.i to i64
  %i.j = add nsw i64 %i.h, %umin.neg              ; 3 uses
  %min.iters.check = icmp ult i64 %i.j, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.m = ptrtoaddr ptr %2 to i64
  %i.n = sub i64 %i.l, %i.k
  %diff.check = icmp ugt i64 %i.n, -32
  %i.o = sub i64 %i.l, %i.m
  %diff.check12 = icmp ugt i64 %i.o, -32
  %conflict.rdx = or i1 %diff.check, %diff.check12
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, -8                       ; 3 uses
  %i.p = sub nsw i64 %i.g, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = sub i64 %i.g, %index                     ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -12
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -28
  %wide.load = load <4 x i32>, ptr %i.s, align 4, !tbaa !4
  %wide.load13 = load <4 x i32>, ptr %i.t, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.q ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -12
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -28
  %wide.load15 = load <4 x i32>, ptr %i.v, align 4, !tbaa !4
  %wide.load16 = load <4 x i32>, ptr %i.w, align 4, !tbaa !4
  %i.x = xor <4 x i32> %wide.load15, splat (i32 -1)
  %i.y = xor <4 x i32> %wide.load16, splat (i32 -1)
  %i.z = and <4 x i32> %wide.load, %i.x
  %i.aa = and <4 x i32> %wide.load13, %i.y
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -12
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -28
  store <4 x i32> %i.z, ptr %i.ac, align 4, !tbaa !4
  store <4 x i32> %i.aa, ptr %i.ad, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %bb.a ], [ %i.p, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = xor i32 %i.ai, -1
  %i.ak = and i32 %i.ag, %i.aj
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.am = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.am, label %scalar.ph, label %.loopexit, !llvm.loop !19

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @set_xor(ptr nofree noundef returned captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 2 uses
  %i.b = and i32 %i.a, 1023
  %i.c = load i32, ptr %0, align 4, !tbaa !4
  %i.d = and i32 %i.c, -1024
  %i.e = or disjoint i32 %i.d, %i.b
  store i32 %i.e, ptr %0, align 4, !tbaa !4
  %i.f = and i32 %i.a, 1023                       ; 2 uses
  %i.g = zext nneg i32 %i.f to i64                ; 5 uses
  %i.h = add nuw nsw i64 %i.g, 1
  %i.i = icmp ne i32 %i.f, 0
  %umin.neg = sext i1 %i.i to i64
  %i.j = add nsw i64 %i.h, %umin.neg              ; 3 uses
  %min.iters.check = icmp ult i64 %i.j, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.m = ptrtoaddr ptr %2 to i64
  %i.n = sub i64 %i.l, %i.k
  %diff.check = icmp ugt i64 %i.n, -32
  %i.o = sub i64 %i.l, %i.m
  %diff.check12 = icmp ugt i64 %i.o, -32
  %conflict.rdx = or i1 %diff.check, %diff.check12
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, -8                       ; 3 uses
  %i.p = sub nsw i64 %i.g, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = sub i64 %i.g, %index                     ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -12
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -28
  %wide.load = load <4 x i32>, ptr %i.s, align 4, !tbaa !4
  %wide.load13 = load <4 x i32>, ptr %i.t, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.q ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -12
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -28
  %wide.load15 = load <4 x i32>, ptr %i.v, align 4, !tbaa !4
  %wide.load16 = load <4 x i32>, ptr %i.w, align 4, !tbaa !4
  %i.x = xor <4 x i32> %wide.load15, %wide.load
  %i.y = xor <4 x i32> %wide.load16, %wide.load13
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -12
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -28
  store <4 x i32> %i.x, ptr %i.aa, align 4, !tbaa !4
  store <4 x i32> %i.y, ptr %i.ab, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %bb.a ], [ %i.p, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = xor i32 %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.aj = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.aj, label %scalar.ph, label %.loopexit, !llvm.loop !21

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @set_merge(ptr nofree noundef returned captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 2 uses
  %i.b = and i32 %i.a, 1023
  %i.c = load i32, ptr %0, align 4, !tbaa !4
  %i.d = and i32 %i.c, -1024
  %i.e = or disjoint i32 %i.d, %i.b
  store i32 %i.e, ptr %0, align 4, !tbaa !4
  %i.f = and i32 %i.a, 1023                       ; 2 uses
  %i.g = zext nneg i32 %i.f to i64                ; 5 uses
  %i.h = add nuw nsw i64 %i.g, 1
  %i.i = icmp ne i32 %i.f, 0
  %umin.neg = sext i1 %i.i to i64
  %i.j = add nsw i64 %i.h, %umin.neg              ; 3 uses
  %min.iters.check = icmp ult i64 %i.j, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.m = ptrtoaddr ptr %3 to i64
  %i.n = ptrtoaddr ptr %2 to i64
  %i.o = sub i64 %i.l, %i.k
  %diff.check = icmp ugt i64 %i.o, -32
  %i.p = sub i64 %i.l, %i.m
  %diff.check16 = icmp ugt i64 %i.p, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  %i.q = sub i64 %i.l, %i.n
  %diff.check17 = icmp ugt i64 %i.q, -32
  %conflict.rdx18 = or i1 %conflict.rdx, %diff.check17
  br i1 %conflict.rdx18, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, -8                       ; 3 uses
  %i.r = sub nsw i64 %i.g, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = sub i64 %i.g, %index                     ; 4 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -12
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -28
  %wide.load = load <4 x i32>, ptr %i.u, align 4, !tbaa !4
  %wide.load19 = load <4 x i32>, ptr %i.v, align 4, !tbaa !4
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.s ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -12
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -28
  %wide.load21 = load <4 x i32>, ptr %i.x, align 4, !tbaa !4 ; 2 uses
  %wide.load22 = load <4 x i32>, ptr %i.y, align 4, !tbaa !4 ; 2 uses
  %i.z = and <4 x i32> %wide.load21, %wide.load
  %i.aa = and <4 x i32> %wide.load22, %wide.load19
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.s ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -12
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -28
  %wide.load25 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !4
  %wide.load26 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !4
  %i.ae = xor <4 x i32> %wide.load21, splat (i32 -1)
  %i.af = xor <4 x i32> %wide.load22, splat (i32 -1)
  %i.ag = and <4 x i32> %wide.load25, %i.ae
  %i.ah = and <4 x i32> %wide.load26, %i.af
  %i.ai = or <4 x i32> %i.ag, %i.z
  %i.aj = or <4 x i32> %i.ah, %i.aa
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -12
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -28
  store <4 x i32> %i.ai, ptr %i.al, align 4, !tbaa !4
  store <4 x i32> %i.aj, ptr %i.am, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %bb.a ], [ %i.r, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4  ; 2 uses
  %i.as = and i32 %i.ar, %i.ap
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = xor i32 %i.ar, -1
  %i.aw = and i32 %i.au, %i.av
  %i.ax = or i32 %i.aw, %i.as
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.az = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.az, label %scalar.ph, label %.loopexit, !llvm.loop !23

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @set_andp(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 2 uses
  %i.b = and i32 %i.a, 1023
  %i.c = load i32, ptr %0, align 4, !tbaa !4
  %i.d = and i32 %i.c, -1024
  %i.e = or disjoint i32 %i.d, %i.b
  store i32 %i.e, ptr %0, align 4, !tbaa !4
  %i.f = and i32 %i.a, 1023                       ; 2 uses
  %i.g = zext nneg i32 %i.f to i64                ; 5 uses
  %i.h = add nuw nsw i64 %i.g, 1
  %i.i = icmp ne i32 %i.f, 0
  %umin.neg = sext i1 %i.i to i64
  %i.j = add nsw i64 %i.h, %umin.neg              ; 3 uses
  %min.iters.check = icmp ult i64 %i.j, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.m = ptrtoaddr ptr %2 to i64
  %i.n = sub i64 %i.l, %i.k
  %diff.check = icmp ugt i64 %i.n, -32
  %i.o = sub i64 %i.l, %i.m
  %diff.check16 = icmp ugt i64 %i.o, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, -8                       ; 3 uses
  %i.p = sub nsw i64 %i.g, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ae, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %i.q = sub i64 %i.g, %index                     ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -12
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -28
  %wide.load = load <4 x i32>, ptr %i.s, align 4, !tbaa !4
  %wide.load18 = load <4 x i32>, ptr %i.t, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.q ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -12
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -28
  %wide.load20 = load <4 x i32>, ptr %i.v, align 4, !tbaa !4
  %wide.load21 = load <4 x i32>, ptr %i.w, align 4, !tbaa !4
  %i.x = and <4 x i32> %wide.load20, %wide.load   ; 2 uses
  %i.y = shufflevector <4 x i32> %i.x, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.z = and <4 x i32> %wide.load21, %wide.load18 ; 2 uses
  %i.aa = shufflevector <4 x i32> %i.z, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -12
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -28
  store <4 x i32> %i.x, ptr %i.ac, align 4, !tbaa !4
  store <4 x i32> %i.z, ptr %i.ad, align 4, !tbaa !4
  %i.ae = or <4 x i32> %i.y, %vec.phi             ; 2 uses
  %i.af = or <4 x i32> %i.aa, %vec.phi17          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.af, %i.ae
  %i.ah = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %bb.a ], [ %i.p, %middle.block ]
  %.0.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.ah, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %.0 = phi i32 [ %i.ao, %scalar.ph ], [ %.0.ph, %scalar.ph.preheader ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = and i32 %i.al, %i.aj                    ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.am, ptr %i.an, align 4, !tbaa !4
  %i.ao = or i32 %i.am, %.0                       ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ap = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ap, label %scalar.ph, label %.loopexit, !llvm.loop !25

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.ah, %middle.block ], [ %i.ao, %scalar.ph ]
  %i.aq = icmp ne i32 %.lcssa, 0
  %i.ar = zext i1 %i.aq to i32
  ret i32 %i.ar
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @set_orp(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 2 uses
  %i.b = and i32 %i.a, 1023
  %i.c = load i32, ptr %0, align 4, !tbaa !4
  %i.d = and i32 %i.c, -1024
  %i.e = or disjoint i32 %i.d, %i.b
  store i32 %i.e, ptr %0, align 4, !tbaa !4
  %i.f = and i32 %i.a, 1023                       ; 2 uses
  %i.g = zext nneg i32 %i.f to i64                ; 5 uses
  %i.h = add nuw nsw i64 %i.g, 1
  %i.i = icmp ne i32 %i.f, 0
  %umin.neg = sext i1 %i.i to i64
  %i.j = add nsw i64 %i.h, %umin.neg              ; 3 uses
  %min.iters.check = icmp ult i64 %i.j, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.m = ptrtoaddr ptr %2 to i64
  %i.n = sub i64 %i.l, %i.k
  %diff.check = icmp ugt i64 %i.n, -32
  %i.o = sub i64 %i.l, %i.m
  %diff.check16 = icmp ugt i64 %i.o, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, -8                       ; 3 uses
  %i.p = sub nsw i64 %i.g, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ae, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %i.q = sub i64 %i.g, %index                     ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -12
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -28
  %wide.load = load <4 x i32>, ptr %i.s, align 4, !tbaa !4
  %wide.load18 = load <4 x i32>, ptr %i.t, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.q ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -12
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -28
  %wide.load20 = load <4 x i32>, ptr %i.v, align 4, !tbaa !4
  %wide.load21 = load <4 x i32>, ptr %i.w, align 4, !tbaa !4
  %i.x = or <4 x i32> %wide.load20, %wide.load    ; 2 uses
  %i.y = shufflevector <4 x i32> %i.x, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.z = or <4 x i32> %wide.load21, %wide.load18  ; 2 uses
  %i.aa = shufflevector <4 x i32> %i.z, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -12
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -28
  store <4 x i32> %i.x, ptr %i.ac, align 4, !tbaa !4
  store <4 x i32> %i.z, ptr %i.ad, align 4, !tbaa !4
  %i.ae = or <4 x i32> %i.y, %vec.phi             ; 2 uses
  %i.af = or <4 x i32> %i.aa, %vec.phi17          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.af, %i.ae
  %i.ah = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %bb.a ], [ %i.p, %middle.block ]
  %.0.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.ah, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %.0 = phi i32 [ %i.ao, %scalar.ph ], [ %.0.ph, %scalar.ph.preheader ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = or i32 %i.al, %i.aj                     ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.am, ptr %i.an, align 4, !tbaa !4
  %i.ao = or i32 %i.am, %.0                       ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ap = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ap, label %scalar.ph, label %.loopexit, !llvm.loop !27

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.ah, %middle.block ], [ %i.ao, %scalar.ph ]
  %i.aq = icmp ne i32 %.lcssa, 0
  %i.ar = zext i1 %i.aq to i32
  ret i32 %i.ar
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @setp_empty(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4
  %i.b = and i32 %i.a, 1023
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i32 [ %i.b, %bb.a ], [ %i.f, %bb.c ]  ; 3 uses
  %i.c = zext nneg i32 %.0 to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %.0, -1
  %i.g = icmp sgt i32 %.0, 1
  br i1 %i.g, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.04 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  ret i32 %.04
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @setp_full(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4      ; 2 uses
  %i.b = and i32 %i.a, 1023                       ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 5
  %i.d = sub nsw i32 %i.c, %1
  %i.e = lshr i32 -1, %i.d
  %i.f = zext nneg i32 %i.b to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %.not = icmp eq i32 %i.h, %i.e
  br i1 %.not, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.a
  %i.i = and i32 %i.a, 1023                       ; 2 uses
  %i.j = icmp samesign ugt i32 %i.i, 1
  br i1 %i.j, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader.preheader
  %i.k = zext nneg i32 %i.i to i64
  br label %bb.b

.preheader:                                       ; preds = %bb.b
  %i.l = icmp sgt i64 %indvars.iv14, 2
  br i1 %i.l, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %.preheader
  %indvars.iv14 = phi i64 [ %i.k, %.lr.ph ], [ %indvars.iv.next, %.preheader ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv14, -1 ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %.not12 = icmp eq i32 %i.n, -1
  br i1 %.not12, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.preheader, %.preheader.preheader, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %.preheader.preheader ], [ 1, %.preheader ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @setp_equal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4
  %i.b = and i32 %i.a, 1023
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i32 [ %i.b, %bb.a ], [ %i.h, %bb.c ]  ; 3 uses
  %i.c = zext nneg i32 %.0 to i64                 ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %.not = icmp eq i32 %i.e, %i.g
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i32 %.0, -1
  %i.i = icmp sgt i32 %.0, 1
  br i1 %i.i, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.06 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  ret i32 %.06
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @setp_disjoint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4
  %i.b = and i32 %i.a, 1023
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i32 [ %i.b, %bb.a ], [ %i.i, %bb.c ]  ; 3 uses
  %i.c = zext nneg i32 %.0 to i64                 ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %i.h = and i32 %i.g, %i.e
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %.0, -1
  %i.j = icmp sgt i32 %.0, 1
  br i1 %i.j, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.06 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  ret i32 %.06
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @setp_implies(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4
  %i.b = and i32 %i.a, 1023
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i32 [ %i.b, %bb.a ], [ %i.j, %bb.c ]  ; 3 uses
end_hunk_0
begin_hunk_1_@malloc

; Function Attrs: nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define dso_local noalias noundef ptr @sf_and(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %i.c = icmp slt i32 %i.b, 33
  %i.d = add nsw i32 %i.b, -1
  %i.e = lshr i32 %i.d, 3
  %i.f = and i32 %i.e, 536870908
  %i.g = add nuw nsw i32 %i.f, 8
  %narrow = select i1 %i.c, i32 8, i32 %i.g
  %i.h = zext nneg i32 %narrow to i64
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #24 ; 8 uses
  %i.j = load i32, ptr %i.a, align 4, !tbaa !28   ; 3 uses
  %i.k = icmp slt i32 %i.j, 33
  %i.l = add nsw i32 %i.j, -1
  %i.m = lshr i32 %i.l, 5
  %i.n = add nuw nsw i32 %i.m, 1
  %i.o = select i1 %i.k, i32 1, i32 %i.n          ; 6 uses
  %i.p = shl nuw nsw i32 %i.o, 2
  %i.q = zext nneg i32 %i.p to i64
  %i.r = add nsw i32 %i.o, -1
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 2                  ; 3 uses
  %i.u = sub nsw i64 %i.q, %i.t
  %scevgep.i = getelementptr i8, ptr %i.i, i64 %i.u
  %i.v = add nuw nsw i64 %i.t, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.v, i1 false), !tbaa !4
  store i32 %i.o, ptr %i.i, align 4, !tbaa !4
  %i.w = zext nneg i32 %i.o to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.w
  %i.y = shl nsw i32 %i.o, 5
  %i.z = sub nsw i32 %i.y, %i.j
  %i.aa = lshr i32 -1, %i.z
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !4
  %i.ab = icmp samesign ugt i32 %i.o, 1
  br i1 %i.ab, label %.lr.ph.preheader.i, label %set_fill.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %scevgep.i25 = getelementptr i8, ptr %i.i, i64 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i25, i8 -1, i64 %i.t, i1 false), !tbaa !4
  br label %set_fill.exit

set_fill.exit:                                    ; preds = %bb.a, %.lr.ph.preheader.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !33 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !34
  %i.ag = load i32, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.ah = mul nsw i32 %i.ag, %i.af                ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %.idx = shl nsw i64 %i.ai, 2
  %i.aj = getelementptr inbounds i8, ptr %i.ad, i64 %.idx
  %i.ak = icmp sgt i32 %i.ah, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %set_fill.exit
  %i.al = sext i32 %i.ag to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %.02326 = phi ptr [ %i.ad, %.lr.ph ], [ %i.bj, %.loopexit ] ; 3 uses
  %i.am = load i32, ptr %i.i, align 4, !tbaa !4
  %i.an = and i32 %i.am, 1023                     ; 2 uses
  %i.ao = zext nneg i32 %i.an to i64              ; 4 uses
  %i.ap = add nuw nsw i64 %i.ao, 1
  %i.aq = icmp ne i32 %i.an, 0
  %umin.neg = sext i1 %i.aq to i64
  %i.ar = add nsw i64 %i.ap, %umin.neg            ; 3 uses
  %min.iters.check = icmp ult i64 %i.ar, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.ar, -8                      ; 3 uses
  %i.as = sub nsw i64 %i.ao, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = sub i64 %i.ao, %index                   ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -12 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.av, align 4, !tbaa !4
  %wide.load28 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !4
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.02326, i64 %i.at ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -12
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 -28
  %wide.load30 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !4
  %wide.load31 = load <4 x i32>, ptr %i.az, align 4, !tbaa !4
  %i.ba = and <4 x i32> %wide.load30, %wide.load
  %i.bb = and <4 x i32> %wide.load31, %wide.load28
  store <4 x i32> %i.ba, ptr %i.av, align 4, !tbaa !4
  store <4 x i32> %i.bb, ptr %i.aw, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ao, %bb.b ], [ %i.as, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.02326, i64 %indvars.iv
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.bh = and i32 %i.bg, %i.be
  store i32 %i.bh, ptr %i.bd, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bi = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.bi, label %scalar.ph, label %.loopexit, !llvm.loop !39

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.bj = getelementptr inbounds [4 x i8], ptr %.02326, i64 %i.al ; 2 uses
  %i.bk = icmp ult ptr %i.bj, %i.aj
  br i1 %i.bk, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit, %set_fill.exit
  ret ptr %i.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @sf_active(ptr nofree noundef returned captures(ret: address, provenance) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !34   ; 2 uses
  %i.e = load i32, ptr %0, align 8, !tbaa !35
  %i.f = mul nsw i32 %i.e, %i.d                   ; 2 uses
  %i.g = sext i32 %i.f to i64
  %.idx = shl nsw i64 %i.g, 2
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 %.idx
  %i.i = icmp sgt i32 %i.f, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi ptr [ %i.n, %.lr.ph ], [ %i.b, %bb.a ] ; 3 uses
  %i.j = load i32, ptr %.012, align 4, !tbaa !4
  %i.k = or i32 %i.j, 8192
  store i32 %i.k, ptr %.012, align 4, !tbaa !4
  %i.l = load i32, ptr %0, align 8, !tbaa !35
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %.012, i64 %i.m ; 2 uses
  %i.o = icmp ult ptr %i.n, %i.h
  br i1 %i.o, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.c, align 4, !tbaa !34
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.p = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.d, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.p, ptr %i.q, align 8, !tbaa !40
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @sf_inactive(ptr nofree noundef returned captures(ret: address, provenance) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !34
  %i.e = load i32, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.f = mul nsw i32 %i.e, %i.d                   ; 2 uses
  %i.g = sext i32 %i.f to i64
  %.idx = shl nsw i64 %i.g, 2
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 %.idx
  %i.i = icmp sgt i32 %i.f, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.j = phi i32 [ %i.av, %bb.e ], [ %i.e, %bb.a ] ; 3 uses
  %.02127 = phi ptr [ %.1, %bb.e ], [ %i.b, %bb.a ] ; 10 uses
  %.02225 = phi ptr [ %i.aw, %bb.e ], [ %i.b, %bb.a ] ; 10 uses
  %.0222530 = ptrtoaddr ptr %.02225 to i64
  %.0212731 = ptrtoaddr ptr %.02127 to i64
  %i.k = load i32, ptr %.02225, align 4, !tbaa !4 ; 2 uses
  %i.l = and i32 %i.k, 8192
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not23 = icmp eq ptr %.02127, %.02225
  br i1 %.not23, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = and i32 %i.k, 1023                       ; 2 uses
  %i.n = zext nneg i32 %i.m to i64                ; 4 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.m, 7
  %i.p = sub i64 %.0212731, %.0222530
  %diff.check = icmp ugt i64 %i.p, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.c
  %n.vec = and i64 %i.o, 2040                     ; 3 uses
  %i.q = sub nsw i64 %i.n, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = sub i64 %i.n, %index                     ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.02225, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -12
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -28
  %wide.load = load <4 x i32>, ptr %i.t, align 4, !tbaa !4
  %wide.load32 = load <4 x i32>, ptr %i.u, align 4, !tbaa !4
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.02127, i64 %i.r ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -12
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -28
  store <4 x i32> %wide.load, ptr %i.w, align 4, !tbaa !4
  store <4 x i32> %wide.load32, ptr %i.x, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.c, %middle.block
  %indvars.iv.ph = phi i64 [ %i.n, %bb.c ], [ %i.q, %middle.block ] ; 4 uses
  %i.z = add nsw i64 %indvars.iv.ph, 1
  %xtraiter = and i64 %i.z, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.02225, i64 %indvars.iv.prol
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.02127, i64 %indvars.iv.prol
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !4
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !42

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ad = icmp ult i64 %indvars.iv.ph, 3
  br i1 %i.ad, label %.loopexit.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.02225, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.02127, i64 %indvars.iv
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.02225, i64 %indvars.iv.next
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.02127, i64 %indvars.iv.next
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !4
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.02225, i64 %indvars.iv.next.1
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.02127, i64 %indvars.iv.next.1
  store i32 %i.al, ptr %i.am, align 4, !tbaa !4
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, -3 ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.02225, i64 %indvars.iv.next.2
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.02127, i64 %indvars.iv.next.2
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !4
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, -4
  %.not24.3 = icmp eq i64 %indvars.iv.next.2, 0
  br i1 %.not24.3, label %.loopexit.loopexit, label %scalar.ph, !llvm.loop !43

.loopexit.loopexit:                               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.pre = load i32, ptr %0, align 8, !tbaa !35
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %i.aq = phi i32 [ %.pre, %.loopexit.loopexit ], [ %i.j, %bb.b ] ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %.02127, i64 %i.ar
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.at = load i32, ptr %i.c, align 4, !tbaa !34
  %i.au = add nsw i32 %i.at, -1
  store i32 %i.au, ptr %i.c, align 4, !tbaa !34
  %.pre29 = sext i32 %i.j to i64
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.d
  %.pre-phi = phi i64 [ %i.ar, %.loopexit ], [ %.pre29, %bb.d ]
  %i.av = phi i32 [ %i.aq, %.loopexit ], [ %i.j, %bb.d ]
  %.1 = phi ptr [ %i.as, %.loopexit ], [ %.02127, %bb.d ]
  %i.aw = getelementptr inbounds [4 x i8], ptr %.02225, i64 %.pre-phi ; 2 uses
  %i.ax = icmp ult ptr %i.aw, %i.h
  br i1 %i.ax, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @sf_copy(ptr nofree noundef returned captures(ret: address, provenance) initializes((0, 8), (12, 20)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load <2 x i32>, ptr %1, align 8, !tbaa !4
  %i.b = load i32, ptr %1, align 8, !tbaa !35
  store <2 x i32> %i.a, ptr %0, align 8, !tbaa !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load <2 x i32>, ptr %i.c, align 4, !tbaa !4
  %i.f = load i32, ptr %i.c, align 4, !tbaa !34
  store <2 x i32> %i.e, ptr %i.d, align 4, !tbaa !4
  %i.g = sext i32 %i.b to i64
  %i.h = sext i32 %i.f to i64
  %i.i = mul nsw i64 %i.h, %i.g                   ; 7 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph.i.preheader, label %intcpy.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33   ; 4 uses
  %min.iters.check = icmp ult i64 %i.i, 8
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = ptrtoaddr ptr %i.l to i64
  %i.q = sub i64 %i.p, %i.o
  %diff.check = icmp ugt i64 %i.q, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.i, 9223372036854775800      ; 4 uses
  %i.r = shl i64 %n.vec, 2                        ; 2 uses
  %i.s = getelementptr i8, ptr %i.n, i64 %i.r
  %i.t = getelementptr i8, ptr %i.l, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.u ; 2 uses
  %next.gep13 = getelementptr i8, ptr %i.l, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep13, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep13, align 4, !tbaa !4
  %wide.load14 = load <4 x i32>, ptr %i.v, align 4, !tbaa !4
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !4
  store <4 x i32> %wide.load14, ptr %i.w, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %intcpy.exit, label %.lr.ph.i.preheader19

.lr.ph.i.preheader19:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.058.i.ph = phi ptr [ %i.n, %.lr.ph.i.preheader ], [ %i.s, %middle.block ] ; 2 uses
  %.067.i.ph = phi ptr [ %i.l, %.lr.ph.i.preheader ], [ %i.t, %middle.block ] ; 2 uses
  %xtraiter = and i64 %i.i, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader19, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader19 ]
  %.058.i.prol = phi ptr [ %i.aa, %.lr.ph.i.prol ], [ %.058.i.ph, %.lr.ph.i.preheader19 ] ; 2 uses
  %.067.i.prol = phi ptr [ %i.y, %.lr.ph.i.prol ], [ %.067.i.ph, %.lr.ph.i.preheader19 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader19 ]
  %i.y = getelementptr inbounds nuw i8, ptr %.067.i.prol, i64 4 ; 2 uses
  %i.z = load i32, ptr %.067.i.prol, align 4, !tbaa !4
  %i.aa = getelementptr inbounds nuw i8, ptr %.058.i.prol, i64 4 ; 2 uses
  store i32 %i.z, ptr %.058.i.prol, align 4, !tbaa !4
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !45

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader19
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader19 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.058.i.unr = phi ptr [ %.058.i.ph, %.lr.ph.i.preheader19 ], [ %i.aa, %.lr.ph.i.prol ]
  %.067.i.unr = phi ptr [ %.067.i.ph, %.lr.ph.i.preheader19 ], [ %i.y, %.lr.ph.i.prol ]
  %i.ab = sub nsw i64 %indvars.iv.i.ph, %i.i
  %i.ac = icmp ugt i64 %i.ab, -8
  br i1 %i.ac, label %intcpy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ]
  %.058.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %.058.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.067.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %.067.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.067.i, i64 4
  %i.ae = load i32, ptr %.067.i, align 4, !tbaa !4
  %i.af = getelementptr inbounds nuw i8, ptr %.058.i, i64 4
  store i32 %i.ae, ptr %.058.i, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw i8, ptr %.067.i, i64 8
  %i.ah = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.ai = getelementptr inbounds nuw i8, ptr %.058.i, i64 8
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !4
  %i.aj = getelementptr inbounds nuw i8, ptr %.067.i, i64 12
  %i.ak = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.al = getelementptr inbounds nuw i8, ptr %.058.i, i64 12
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !4
  %i.am = getelementptr inbounds nuw i8, ptr %.067.i, i64 16
  %i.an = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.ao = getelementptr inbounds nuw i8, ptr %.058.i, i64 16
  store i32 %i.an, ptr %i.al, align 4, !tbaa !4
  %i.ap = getelementptr inbounds nuw i8, ptr %.067.i, i64 20
  %i.aq = load i32, ptr %i.am, align 4, !tbaa !4
  %i.ar = getelementptr inbounds nuw i8, ptr %.058.i, i64 20
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !4
  %i.as = getelementptr inbounds nuw i8, ptr %.067.i, i64 24
  %i.at = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %.058.i, i64 24
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %.067.i, i64 28
  %i.aw = load i32, ptr %i.as, align 4, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %.058.i, i64 28
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %.067.i, i64 32
  %i.az = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %.058.i, i64 32
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !4
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %i.i
  br i1 %exitcond.not.i.7, label %intcpy.exit, label %.lr.ph.i, !llvm.loop !46

intcpy.exit:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @sf_join(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !34   ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !34   ; 2 uses
  %i.f = load i32, ptr %1, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !28   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !28
  %.not = icmp eq i32 %i.h, %i.j
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str) #25
  %.pre = load i32, ptr %i.a, align 4, !tbaa !34
  %.pre29 = load i32, ptr %i.d, align 4, !tbaa !34
  %.pre30 = load i32, ptr %i.g, align 4, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i32 [ %.pre30, %bb.b ], [ %i.h, %bb.a ] ; 3 uses
  %i.l = phi i32 [ %.pre29, %bb.b ], [ %i.e, %bb.a ]
  %i.m = phi i32 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.n = mul i32 %i.f, %i.e                       ; 4 uses
  %i.o = sext i32 %i.n to i64                     ; 5 uses
  %i.p = mul i32 %i.c, %i.b                       ; 4 uses
  %i.q = sext i32 %i.p to i64                     ; 7 uses
  %i.r = add nsw i32 %i.l, %i.m                   ; 2 uses
  %i.s = load ptr, ptr @set_family_garbage, align 8, !tbaa !47 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #24
  br label %sf_new.exit

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !48
  store ptr %i.w, ptr @set_family_garbage, align 8, !tbaa !47
  br label %sf_new.exit

sf_new.exit:                                      ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.u, %bb.d ], [ %i.s, %bb.e ] ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  store i32 %i.k, ptr %i.x, align 4, !tbaa !28
  %i.y = icmp slt i32 %i.k, 33
  %i.z = add nsw i32 %i.k, -1
  %i.aa = lshr i32 %i.z, 5
  %i.ab = add nuw nsw i32 %i.aa, 2
  %i.ac = select i1 %i.y, i32 2, i32 %i.ab        ; 2 uses
  store i32 %i.ac, ptr %.0.i, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %i.r, ptr %i.ad, align 8, !tbaa !49
  %i.ae = sext i32 %i.r to i64
  %i.af = zext nneg i32 %i.ac to i64
  %i.ag = shl nsw i64 %i.ae, 2
  %i.ah = mul nsw i64 %i.ag, %i.af
  %i.ai = tail call noalias ptr @malloc(i64 noundef %i.ah) #24 ; 6 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64              ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i, i64 12 ; 2 uses
  store i32 0, ptr %i.al, align 4, !tbaa !34
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i32 0, ptr %i.am, align 8, !tbaa !40
  %i.an = load <2 x i32>, ptr %i.a, align 4, !tbaa !4
  %i.ao = load <2 x i32>, ptr %i.d, align 4, !tbaa !4
  %i.ap = add nsw <2 x i32> %i.ao, %i.an
  store <2 x i32> %i.ap, ptr %i.al, align 4, !tbaa !4
  %i.aq = icmp sgt i32 %i.p, 0
  br i1 %i.aq, label %.lr.ph.i.preheader, label %intcpy.exit

.lr.ph.i.preheader:                               ; preds = %sf_new.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !33 ; 4 uses
  %min.iters.check = icmp ult i32 %i.p, 8
  %i.at = ptrtoaddr ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.aj
  %diff.check = icmp ugt i64 %i.au, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader57, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.q, 2147483640               ; 4 uses
  %i.av = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.aw = getelementptr i8, ptr %i.ai, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.as, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ai, i64 %i.ay ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.as, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep32, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep32, align 4, !tbaa !4
  %wide.load33 = load <4 x i32>, ptr %i.az, align 4, !tbaa !4
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !4
  store <4 x i32> %wide.load33, ptr %i.ba, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.q
  br i1 %cmp.n, label %intcpy.exit, label %.lr.ph.i.preheader57

.lr.ph.i.preheader57:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.058.i.ph = phi ptr [ %i.ai, %.lr.ph.i.preheader ], [ %i.aw, %middle.block ] ; 2 uses
  %.067.i.ph = phi ptr [ %i.as, %.lr.ph.i.preheader ], [ %i.ax, %middle.block ] ; 2 uses
  %xtraiter = and i64 %i.q, 7
  %i.bc = and i32 %i.p, 7
  %lcmp.mod.not = icmp eq i32 %i.bc, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader57, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader57 ]
  %.058.i.prol = phi ptr [ %i.bf, %.lr.ph.i.prol ], [ %.058.i.ph, %.lr.ph.i.preheader57 ] ; 2 uses
  %.067.i.prol = phi ptr [ %i.bd, %.lr.ph.i.prol ], [ %.067.i.ph, %.lr.ph.i.preheader57 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader57 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.067.i.prol, i64 4 ; 2 uses
  %i.be = load i32, ptr %.067.i.prol, align 4, !tbaa !4
  %i.bf = getelementptr inbounds nuw i8, ptr %.058.i.prol, i64 4 ; 2 uses
  store i32 %i.be, ptr %.058.i.prol, align 4, !tbaa !4
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !51

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader57
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader57 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.058.i.unr = phi ptr [ %.058.i.ph, %.lr.ph.i.preheader57 ], [ %i.bf, %.lr.ph.i.prol ]
  %.067.i.unr = phi ptr [ %.067.i.ph, %.lr.ph.i.preheader57 ], [ %i.bd, %.lr.ph.i.prol ]
  %i.bg = sub nsw i64 %indvars.iv.i.ph, %i.q
  %i.bh = icmp ugt i64 %i.bg, -8
  br i1 %i.bh, label %intcpy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ]
  %.058.i = phi ptr [ %i.cf, %.lr.ph.i ], [ %.058.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.067.i = phi ptr [ %i.cd, %.lr.ph.i ], [ %.067.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.067.i, i64 4
  %i.bj = load i32, ptr %.067.i, align 4, !tbaa !4
  %i.bk = getelementptr inbounds nuw i8, ptr %.058.i, i64 4
  store i32 %i.bj, ptr %.058.i, align 4, !tbaa !4
  %i.bl = getelementptr inbounds nuw i8, ptr %.067.i, i64 8
  %i.bm = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.bn = getelementptr inbounds nuw i8, ptr %.058.i, i64 8
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !4
  %i.bo = getelementptr inbounds nuw i8, ptr %.067.i, i64 12
  %i.bp = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.bq = getelementptr inbounds nuw i8, ptr %.058.i, i64 12
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !4
  %i.br = getelementptr inbounds nuw i8, ptr %.067.i, i64 16
  %i.bs = load i32, ptr %i.bo, align 4, !tbaa !4
  %i.bt = getelementptr inbounds nuw i8, ptr %.058.i, i64 16
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !4
  %i.bu = getelementptr inbounds nuw i8, ptr %.067.i, i64 20
  %i.bv = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bw = getelementptr inbounds nuw i8, ptr %.058.i, i64 20
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !4
  %i.bx = getelementptr inbounds nuw i8, ptr %.067.i, i64 24
  %i.by = load i32, ptr %i.bu, align 4, !tbaa !4
  %i.bz = getelementptr inbounds nuw i8, ptr %.058.i, i64 24
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !4
  %i.ca = getelementptr inbounds nuw i8, ptr %.067.i, i64 28
  %i.cb = load i32, ptr %i.bx, align 4, !tbaa !4
  %i.cc = getelementptr inbounds nuw i8, ptr %.058.i, i64 28
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !4
  %i.cd = getelementptr inbounds nuw i8, ptr %.067.i, i64 32
  %i.ce = load i32, ptr %i.ca, align 4, !tbaa !4
  %i.cf = getelementptr inbounds nuw i8, ptr %.058.i, i64 32
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !4
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %i.q
  br i1 %exitcond.not.i.7, label %intcpy.exit, label %.lr.ph.i, !llvm.loop !52

intcpy.exit:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %sf_new.exit
  %i.cg = icmp sgt i32 %i.n, 0
  br i1 %i.cg, label %.lr.ph.i22.preheader, label %intcpy.exit28

.lr.ph.i22.preheader:                             ; preds = %intcpy.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !33 ; 5 uses
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.q ; 4 uses
  %min.iters.check39 = icmp ult i32 %i.n, 16
  br i1 %min.iters.check39, label %.lr.ph.i22.preheader56, label %vector.memcheck36

vector.memcheck36:                                ; preds = %.lr.ph.i22.preheader
  %i.ck = ptrtoaddr ptr %i.ci to i64
  %i.cl = shl nsw i64 %i.q, 2
  %i.cm = add i64 %i.cl, %i.aj
  %i.cn = sub i64 %i.ck, %i.cm
  %diff.check37 = icmp ugt i64 %i.cn, -32
  br i1 %diff.check37, label %.lr.ph.i22.preheader56, label %vector.ph40

vector.ph40:                                      ; preds = %vector.memcheck36
  %n.vec42 = and i64 %i.o, 2147483640             ; 4 uses
  %i.co = shl nuw nsw i64 %n.vec42, 2             ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cj, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.ci, i64 %i.co
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph40
  %index44 = phi i64 [ 0, %vector.ph40 ], [ %index.next49, %vector.body43 ] ; 2 uses
  %i.cr = shl i64 %index44, 2                     ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.cj, i64 %i.cr ; 2 uses
  %next.gep46 = getelementptr i8, ptr %i.ci, i64 %i.cr ; 2 uses
  %i.cs = getelementptr i8, ptr %next.gep46, i64 16
  %wide.load47 = load <4 x i32>, ptr %next.gep46, align 4, !tbaa !4
  %wide.load48 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !4
  %i.ct = getelementptr i8, ptr %next.gep45, i64 16
  store <4 x i32> %wide.load47, ptr %next.gep45, align 4, !tbaa !4
  store <4 x i32> %wide.load48, ptr %i.ct, align 4, !tbaa !4
  %index.next49 = add nuw i64 %index44, 8         ; 2 uses
  %i.cu = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.cu, label %middle.block50, label %vector.body43, !llvm.loop !53

middle.block50:                                   ; preds = %vector.body43
  %cmp.n51 = icmp eq i64 %n.vec42, %i.o
  br i1 %cmp.n51, label %intcpy.exit28, label %.lr.ph.i22.preheader56

.lr.ph.i22.preheader56:                           ; preds = %vector.memcheck36, %.lr.ph.i22.preheader, %middle.block50
  %indvars.iv.i23.ph = phi i64 [ 0, %vector.memcheck36 ], [ 0, %.lr.ph.i22.preheader ], [ %n.vec42, %middle.block50 ] ; 3 uses
  %.058.i24.ph = phi ptr [ %i.cj, %vector.memcheck36 ], [ %i.cj, %.lr.ph.i22.preheader ], [ %i.cp, %middle.block50 ] ; 2 uses
  %.067.i25.ph = phi ptr [ %i.ci, %vector.memcheck36 ], [ %i.ci, %.lr.ph.i22.preheader ], [ %i.cq, %middle.block50 ] ; 2 uses
  %xtraiter58 = and i64 %i.o, 7
  %i.cv = and i32 %i.n, 7
  %lcmp.mod59.not = icmp eq i32 %i.cv, 0
  br i1 %lcmp.mod59.not, label %.lr.ph.i22.prol.loopexit, label %.lr.ph.i22.prol

.lr.ph.i22.prol:                                  ; preds = %.lr.ph.i22.preheader56, %.lr.ph.i22.prol
  %indvars.iv.i23.prol = phi i64 [ %indvars.iv.next.i26.prol, %.lr.ph.i22.prol ], [ %indvars.iv.i23.ph, %.lr.ph.i22.preheader56 ]
  %.058.i24.prol = phi ptr [ %i.cy, %.lr.ph.i22.prol ], [ %.058.i24.ph, %.lr.ph.i22.preheader56 ] ; 2 uses
  %.067.i25.prol = phi ptr [ %i.cw, %.lr.ph.i22.prol ], [ %.067.i25.ph, %.lr.ph.i22.preheader56 ] ; 2 uses
  %prol.iter60 = phi i64 [ %prol.iter60.next, %.lr.ph.i22.prol ], [ 0, %.lr.ph.i22.preheader56 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.067.i25.prol, i64 4 ; 2 uses
  %i.cx = load i32, ptr %.067.i25.prol, align 4, !tbaa !4
  %i.cy = getelementptr inbounds nuw i8, ptr %.058.i24.prol, i64 4 ; 2 uses
  store i32 %i.cx, ptr %.058.i24.prol, align 4, !tbaa !4
  %indvars.iv.next.i26.prol = add nuw nsw i64 %indvars.iv.i23.prol, 1 ; 2 uses
  %prol.iter60.next = add i64 %prol.iter60, 1     ; 2 uses
  %prol.iter60.cmp.not = icmp eq i64 %prol.iter60.next, %xtraiter58
  br i1 %prol.iter60.cmp.not, label %.lr.ph.i22.prol.loopexit, label %.lr.ph.i22.prol, !llvm.loop !54

.lr.ph.i22.prol.loopexit:                         ; preds = %.lr.ph.i22.prol, %.lr.ph.i22.preheader56
  %indvars.iv.i23.unr = phi i64 [ %indvars.iv.i23.ph, %.lr.ph.i22.preheader56 ], [ %indvars.iv.next.i26.prol, %.lr.ph.i22.prol ]
  %.058.i24.unr = phi ptr [ %.058.i24.ph, %.lr.ph.i22.preheader56 ], [ %i.cy, %.lr.ph.i22.prol ]
  %.067.i25.unr = phi ptr [ %.067.i25.ph, %.lr.ph.i22.preheader56 ], [ %i.cw, %.lr.ph.i22.prol ]
  %i.cz = sub nsw i64 %indvars.iv.i23.ph, %i.o
  %i.da = icmp ugt i64 %i.cz, -8
  br i1 %i.da, label %intcpy.exit28, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.lr.ph.i22.prol.loopexit, %.lr.ph.i22
  %indvars.iv.i23 = phi i64 [ %indvars.iv.next.i26.7, %.lr.ph.i22 ], [ %indvars.iv.i23.unr, %.lr.ph.i22.prol.loopexit ]
  %.058.i24 = phi ptr [ %i.dy, %.lr.ph.i22 ], [ %.058.i24.unr, %.lr.ph.i22.prol.loopexit ] ; 9 uses
  %.067.i25 = phi ptr [ %i.dw, %.lr.ph.i22 ], [ %.067.i25.unr, %.lr.ph.i22.prol.loopexit ] ; 9 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.067.i25, i64 4
  %i.dc = load i32, ptr %.067.i25, align 4, !tbaa !4
  %i.dd = getelementptr inbounds nuw i8, ptr %.058.i24, i64 4
  store i32 %i.dc, ptr %.058.i24, align 4, !tbaa !4
  %i.de = getelementptr inbounds nuw i8, ptr %.067.i25, i64 8
  %i.df = load i32, ptr %i.db, align 4, !tbaa !4
  %i.dg = getelementptr inbounds nuw i8, ptr %.058.i24, i64 8
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !4
  %i.dh = getelementptr inbounds nuw i8, ptr %.067.i25, i64 12
  %i.di = load i32, ptr %i.de, align 4, !tbaa !4
  %i.dj = getelementptr inbounds nuw i8, ptr %.058.i24, i64 12
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !4
  %i.dk = getelementptr inbounds nuw i8, ptr %.067.i25, i64 16
  %i.dl = load i32, ptr %i.dh, align 4, !tbaa !4
  %i.dm = getelementptr inbounds nuw i8, ptr %.058.i24, i64 16
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !4
  %i.dn = getelementptr inbounds nuw i8, ptr %.067.i25, i64 20
  %i.do = load i32, ptr %i.dk, align 4, !tbaa !4
  %i.dp = getelementptr inbounds nuw i8, ptr %.058.i24, i64 20
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !4
  %i.dq = getelementptr inbounds nuw i8, ptr %.067.i25, i64 24
  %i.dr = load i32, ptr %i.dn, align 4, !tbaa !4
  %i.ds = getelementptr inbounds nuw i8, ptr %.058.i24, i64 24
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !4
  %i.dt = getelementptr inbounds nuw i8, ptr %.067.i25, i64 28
  %i.du = load i32, ptr %i.dq, align 4, !tbaa !4
  %i.dv = getelementptr inbounds nuw i8, ptr %.058.i24, i64 28
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !4
  %i.dw = getelementptr inbounds nuw i8, ptr %.067.i25, i64 32
  %i.dx = load i32, ptr %i.dt, align 4, !tbaa !4
  %i.dy = getelementptr inbounds nuw i8, ptr %.058.i24, i64 32
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !4
  %indvars.iv.next.i26.7 = add nuw nsw i64 %indvars.iv.i23, 8 ; 2 uses
  %exitcond.not.i27.7 = icmp eq i64 %indvars.iv.next.i26.7, %i.o
  br i1 %exitcond.not.i27.7, label %intcpy.exit28, label %.lr.ph.i22, !llvm.loop !55

intcpy.exit28:                                    ; preds = %.lr.ph.i22.prol.loopexit, %.lr.ph.i22, %middle.block50, %intcpy.exit
  ret ptr %.0.i
}

declare void @fatal(...) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @sf_append(ptr nofree noundef returned captures(ret: address, provenance) initializes((8, 12)) %0, ptr noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !34   ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !34   ; 2 uses
  %i.f = load i32, ptr %1, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !28
  %.not = icmp eq i32 %i.h, %i.j
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.1) #25
  %.pre = load i32, ptr %i.a, align 4, !tbaa !34
  %.pre26 = load i32, ptr %i.d, align 4, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i32 [ %.pre26, %bb.b ], [ %i.e, %bb.a ]
  %i.l = phi i32 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.m = add nsw i32 %i.k, %i.l                   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.m, ptr %i.n, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !33   ; 2 uses
  %.not25 = icmp eq ptr %i.p, null
  %i.q = sext i32 %i.m to i64
  %i.r = load i32, ptr %0, align 8, !tbaa !35
  %i.s = sext i32 %i.r to i64
  %i.t = shl nsw i64 %i.q, 2
  %i.u = mul i64 %i.t, %i.s                       ; 2 uses
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = tail call ptr @realloc(ptr noundef nonnull %i.p, i64 noundef %i.u) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.u) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = phi ptr [ %i.v, %bb.d ], [ %i.w, %bb.e ] ; 3 uses
  %i.y = ptrtoaddr ptr %i.x to i64
  %i.z = mul nsw i32 %i.f, %i.e                   ; 4 uses
  %i.aa = sext i32 %i.z to i64                    ; 5 uses
  store ptr %i.x, ptr %i.o, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !33 ; 7 uses
  %i.ad = ptrtoaddr ptr %i.ac to i64
  %i.ae = icmp sgt i32 %i.z, 0
  br i1 %i.ae, label %.lr.ph.i.preheader, label %intcpy.exit

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.af = mul i32 %i.c, %i.b
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.ag ; 4 uses
  %min.iters.check = icmp ult i32 %i.z, 16
  br i1 %min.iters.check, label %.lr.ph.i.preheader32, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.ai = shl nsw i64 %i.ag, 2
  %i.aj = add i64 %i.ai, %i.y
  %i.ak = sub i64 %i.ad, %i.aj
  %diff.check = icmp ugt i64 %i.ak, -32
  br i1 %diff.check, label %.lr.ph.i.preheader32, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 2147483640              ; 4 uses
  %i.al = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.am = getelementptr i8, ptr %i.ah, i64 %i.al
  %i.an = getelementptr i8, ptr %i.ac, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ah, i64 %i.ao ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.ac, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep28, align 4, !tbaa !4
  %wide.load29 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !4
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !4
  store <4 x i32> %wide.load29, ptr %i.aq, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aa
  br i1 %cmp.n, label %intcpy.exit, label %.lr.ph.i.preheader32

.lr.ph.i.preheader32:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.058.i.ph = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.preheader ], [ %i.am, %middle.block ] ; 2 uses
  %.067.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.preheader ], [ %i.an, %middle.block ] ; 2 uses
  %xtraiter = and i64 %i.aa, 7
  %i.as = and i32 %i.z, 7
  %lcmp.mod.not = icmp eq i32 %i.as, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader32, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader32 ]
  %.058.i.prol = phi ptr [ %i.av, %.lr.ph.i.prol ], [ %.058.i.ph, %.lr.ph.i.preheader32 ] ; 2 uses
  %.067.i.prol = phi ptr [ %i.at, %.lr.ph.i.prol ], [ %.067.i.ph, %.lr.ph.i.preheader32 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader32 ]
  %i.at = getelementptr inbounds nuw i8, ptr %.067.i.prol, i64 4 ; 2 uses
  %i.au = load i32, ptr %.067.i.prol, align 4, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %.058.i.prol, i64 4 ; 2 uses
  store i32 %i.au, ptr %.058.i.prol, align 4, !tbaa !4
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !57

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader32
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader32 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.058.i.unr = phi ptr [ %.058.i.ph, %.lr.ph.i.preheader32 ], [ %i.av, %.lr.ph.i.prol ]
  %.067.i.unr = phi ptr [ %.067.i.ph, %.lr.ph.i.preheader32 ], [ %i.at, %.lr.ph.i.prol ]
  %i.aw = sub nsw i64 %indvars.iv.i.ph, %i.aa
  %i.ax = icmp ugt i64 %i.aw, -8
  br i1 %i.ax, label %intcpy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ]
  %.058.i = phi ptr [ %i.bv, %.lr.ph.i ], [ %.058.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.067.i = phi ptr [ %i.bt, %.lr.ph.i ], [ %.067.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.067.i, i64 4
  %i.az = load i32, ptr %.067.i, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %.058.i, i64 4
  store i32 %i.az, ptr %.058.i, align 4, !tbaa !4
  %i.bb = getelementptr inbounds nuw i8, ptr %.067.i, i64 8
  %i.bc = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.bd = getelementptr inbounds nuw i8, ptr %.058.i, i64 8
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !4
  %i.be = getelementptr inbounds nuw i8, ptr %.067.i, i64 12
  %i.bf = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bg = getelementptr inbounds nuw i8, ptr %.058.i, i64 12
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !4
  %i.bh = getelementptr inbounds nuw i8, ptr %.067.i, i64 16
  %i.bi = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bj = getelementptr inbounds nuw i8, ptr %.058.i, i64 16
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !4
  %i.bk = getelementptr inbounds nuw i8, ptr %.067.i, i64 20
  %i.bl = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.bm = getelementptr inbounds nuw i8, ptr %.058.i, i64 20
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !4
  %i.bn = getelementptr inbounds nuw i8, ptr %.067.i, i64 24
  %i.bo = load i32, ptr %i.bk, align 4, !tbaa !4
  %i.bp = getelementptr inbounds nuw i8, ptr %.058.i, i64 24
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !4
  %i.bq = getelementptr inbounds nuw i8, ptr %.067.i, i64 28
  %i.br = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.bs = getelementptr inbounds nuw i8, ptr %.058.i, i64 28
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !4
  %i.bt = getelementptr inbounds nuw i8, ptr %.067.i, i64 32
  %i.bu = load i32, ptr %i.bq, align 4, !tbaa !4
  %i.bv = getelementptr inbounds nuw i8, ptr %.058.i, i64 32
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !4
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %i.aa
  br i1 %exitcond.not.i.7, label %intcpy.exit, label %.lr.ph.i, !llvm.loop !58

intcpy.exit:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.f
  %i.bw = load <2 x i32>, ptr %i.d, align 4, !tbaa !4
  %i.bx = load <2 x i32>, ptr %i.a, align 4, !tbaa !4
  %i.by = add nsw <2 x i32> %i.bx, %i.bw
  store <2 x i32> %i.by, ptr %i.a, align 4, !tbaa !4
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %sf_free.exit, label %bb.g

bb.g:                                             ; preds = %intcpy.exit
  tail call void @free(ptr noundef nonnull %i.ac) #25
  store ptr null, ptr %i.ab, align 8, !tbaa !33
  br label %sf_free.exit

sf_free.exit:                                     ; preds = %intcpy.exit, %bb.g
  %i.bz = load ptr, ptr @set_family_garbage, align 8, !tbaa !47
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !48
  store ptr %1, ptr @set_family_garbage, align 8, !tbaa !47
  ret ptr %0
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @sf_new(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @set_family_garbage, align 8, !tbaa !47 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #24
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48
  store ptr %i.e, ptr @set_family_garbage, align 8, !tbaa !47
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.c ]  ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0, i64 4
  store i32 %1, ptr %i.f, align 4, !tbaa !28
  %i.g = icmp slt i32 %1, 33
  %i.h = add nsw i32 %1, -1
  %i.i = lshr i32 %i.h, 5
  %i.j = add nuw nsw i32 %i.i, 2
  %i.k = select i1 %i.g, i32 2, i32 %i.j          ; 2 uses
  store i32 %i.k, ptr %.0, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store i32 %0, ptr %i.l, align 8, !tbaa !49
  %i.m = sext i32 %0 to i64
  %i.n = zext nneg i32 %i.k to i64
  %i.o = shl nsw i64 %i.m, 2
  %i.p = mul nsw i64 %i.o, %i.n
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #24
  %i.r = getelementptr inbounds nuw i8, ptr %.0, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %.0, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %.0, i64 16
  store i32 0, ptr %i.t, align 8, !tbaa !40
  ret ptr %.0
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @sf_save(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !28   ; 3 uses
  %i.e = load ptr, ptr @set_family_garbage, align 8, !tbaa !47 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #24
  br label %sf_new.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  store ptr %i.i, ptr @set_family_garbage, align 8, !tbaa !47
  br label %sf_new.exit

sf_new.exit:                                      ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.g, %bb.b ], [ %i.e, %bb.c ] ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  store i32 %i.d, ptr %i.j, align 4, !tbaa !28
  %i.k = icmp slt i32 %i.d, 33
  %i.l = add nsw i32 %i.d, -1
  %i.m = lshr i32 %i.l, 5
  %i.n = add nuw nsw i32 %i.m, 2
  %i.o = select i1 %i.k, i32 2, i32 %i.n          ; 2 uses
  store i32 %i.o, ptr %.0.i, align 8, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %i.b, ptr %i.p, align 8, !tbaa !49
  %i.q = sext i32 %i.b to i64
  %i.r = zext nneg i32 %i.o to i64
  %i.s = shl nsw i64 %i.q, 2
  %i.t = mul nsw i64 %i.s, %i.r
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #24 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store ptr %i.u, ptr %i.v, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 12 ; 2 uses
  store i32 0, ptr %i.w, align 4, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !40
  %i.y = load <2 x i32>, ptr %0, align 8, !tbaa !4
  %i.z = load i32, ptr %0, align 8, !tbaa !35
  store <2 x i32> %i.y, ptr %.0.i, align 8, !tbaa !4
  %i.aa = load <2 x i32>, ptr %i.a, align 4, !tbaa !4
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !34
  store <2 x i32> %i.aa, ptr %i.w, align 4, !tbaa !4
  %i.ac = sext i32 %i.z to i64
  %i.ad = sext i32 %i.ab to i64
  %i.ae = mul nsw i64 %i.ad, %i.ac                ; 7 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i.preheader.i, label %sf_copy.exit

.lr.ph.i.preheader.i:                             ; preds = %sf_new.exit
  %i.ag = ptrtoaddr ptr %i.u to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33 ; 4 uses
  %min.iters.check = icmp ult i64 %i.ae, 8
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.ag
  %diff.check = icmp ugt i64 %i.ak, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i
  %n.vec = and i64 %i.ae, 9223372036854775800     ; 4 uses
  %i.al = shl i64 %n.vec, 2                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.u, i64 %i.al
  %i.an = getelementptr i8, ptr %i.ai, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ao ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.ai, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep4, align 4, !tbaa !4
  %wide.load5 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !4
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !4
  store <4 x i32> %wide.load5, ptr %i.aq, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %sf_copy.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.058.i.i.ph = phi ptr [ %i.u, %.lr.ph.i.preheader.i ], [ %i.am, %middle.block ] ; 2 uses
  %.067.i.i.ph = phi ptr [ %i.ai, %.lr.ph.i.preheader.i ], [ %i.an, %middle.block ] ; 2 uses
  %xtraiter = and i64 %i.ae, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ]
  %.058.i.i.prol = phi ptr [ %i.au, %.lr.ph.i.i.prol ], [ %.058.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.067.i.i.prol = phi ptr [ %i.as, %.lr.ph.i.i.prol ], [ %.067.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.as = getelementptr inbounds nuw i8, ptr %.067.i.i.prol, i64 4 ; 2 uses
  %i.at = load i32, ptr %.067.i.i.prol, align 4, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %.058.i.i.prol, i64 4 ; 2 uses
  store i32 %i.at, ptr %.058.i.i.prol, align 4, !tbaa !4
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !60

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %.058.i.i.unr = phi ptr [ %.058.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.au, %.lr.ph.i.i.prol ]
  %.067.i.i.unr = phi ptr [ %.067.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.as, %.lr.ph.i.i.prol ]
  %i.av = sub nsw i64 %indvars.iv.i.i.ph, %i.ae
  %i.aw = icmp ugt i64 %i.av, -8
  br i1 %i.aw, label %sf_copy.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.7, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.058.i.i = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %.058.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.067.i.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %.067.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 4
  %i.ay = load i32, ptr %.067.i.i, align 4, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %.058.i.i, i64 4
  store i32 %i.ay, ptr %.058.i.i, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 8
  %i.bb = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.bc = getelementptr inbounds nuw i8, ptr %.058.i.i, i64 8
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !4
  %i.bd = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 12
  %i.be = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bf = getelementptr inbounds nuw i8, ptr %.058.i.i, i64 12
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !4
  %i.bg = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 16
  %i.bh = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bi = getelementptr inbounds nuw i8, ptr %.058.i.i, i64 16
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !4
  %i.bj = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 20
  %i.bk = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.bl = getelementptr inbounds nuw i8, ptr %.058.i.i, i64 20
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !4
  %i.bm = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 24
  %i.bn = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.bo = getelementptr inbounds nuw i8, ptr %.058.i.i, i64 24
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !4
  %i.bp = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 28
  %i.bq = load i32, ptr %i.bm, align 4, !tbaa !4
  %i.br = getelementptr inbounds nuw i8, ptr %.058.i.i, i64 28
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !4
  %i.bs = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 32
  %i.bt = load i32, ptr %i.bp, align 4, !tbaa !4
  %i.bu = getelementptr inbounds nuw i8, ptr %.058.i.i, i64 32
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !4
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.7, %i.ae
  br i1 %exitcond.not.i.i.7, label %sf_copy.exit, label %.lr.ph.i.i, !llvm.loop !61

sf_copy.exit:                                     ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %sf_new.exit
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @sf_free(ptr noundef initializes((32, 40)) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #25
  store ptr null, ptr %i.a, align 8, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr @set_family_garbage, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %i.d, align 8, !tbaa !48
  store ptr %0, ptr @set_family_garbage, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @sf_cleanup() local_unnamed_addr #16 {
bb.a:
  %i.a = load ptr, ptr @set_family_garbage, align 8, !tbaa !47 ; 2 uses
  %.not5 = icmp eq ptr %i.a, null
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.06 = phi ptr [ %i.c, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.06, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  tail call void @free(ptr noundef nonnull %.06) #25
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  store ptr null, ptr @set_family_garbage, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @sf_addset(ptr nofree noundef returned captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #16 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !34   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !49   ; 3 uses
  %.not = icmp slt i32 %i.c, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !33
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = sdiv i32 %i.e, 2
  %i.g = add i32 %i.e, 1
  %i.h = add i32 %i.g, %i.f                       ; 2 uses
  store i32 %i.h, ptr %i.d, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33   ; 2 uses
  %.not23 = icmp eq ptr %i.j, null
  %i.k = sext i32 %i.h to i64
  %i.l = load i32, ptr %0, align 8, !tbaa !35
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i64 %i.k, 2
  %i.o = mul i64 %i.n, %i.m                       ; 2 uses
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call ptr @realloc(ptr noundef nonnull %i.j, i64 noundef %i.o) #26
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.o) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %i.p, %bb.c ], [ %i.q, %bb.d ] ; 2 uses
  store ptr %i.r, ptr %i.i, align 8, !tbaa !33
  %.pre26 = load i32, ptr %i.b, align 4, !tbaa !34
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.s = phi i32 [ %i.c, %._crit_edge ], [ %.pre26, %bb.e ] ; 2 uses
  %i.t = phi ptr [ %.pre, %._crit_edge ], [ %i.r, %bb.e ] ; 2 uses
  %i.u = load i32, ptr %0, align 8, !tbaa !35
  %i.v = add nsw i32 %i.s, 1
  store i32 %i.v, ptr %i.b, align 4, !tbaa !34
  %i.w = mul nsw i32 %i.s, %i.u
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.x ; 6 uses
  %i.z = load i32, ptr %1, align 4, !tbaa !4
  %i.aa = and i32 %i.z, 1023                      ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64              ; 5 uses
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.aa, 15
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.f
  %i.ad = ptrtoaddr ptr %i.t to i64
  %i.ae = shl nsw i64 %i.x, 2
  %i.af = add i64 %i.ae, %i.ad
  %i.ag = sub i64 %i.af, %i.a
  %diff.check = icmp ugt i64 %i.ag, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 2040                    ; 3 uses
  %i.ah = sub nsw i64 %i.ab, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = sub i64 %i.ab, %index                   ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -12
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -28
  %wide.load = load <4 x i32>, ptr %i.ak, align 4, !tbaa !4
  %wide.load29 = load <4 x i32>, ptr %i.al, align 4, !tbaa !4
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ai ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -12
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -28
  store <4 x i32> %wide.load, ptr %i.an, align 4, !tbaa !4
  store <4 x i32> %wide.load29, ptr %i.ao, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.f, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ab, %vector.memcheck ], [ %i.ab, %bb.f ], [ %i.ah, %middle.block ] ; 4 uses
  %i.aq = add nsw i64 %indvars.iv.ph, 1
  %xtraiter = and i64 %i.aq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.prol
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.prol
  store i32 %i.as, ptr %i.at, align 4, !tbaa !4
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !63

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.au = icmp ult i64 %indvars.iv.ph, 3
  br i1 %i.au, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !4
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next.1
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !4
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, -3 ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next.2
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !4
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, -4
  %.not24.3 = icmp eq i64 %indvars.iv.next.2, 0
  br i1 %.not24.3, label %.loopexit, label %scalar.ph, !llvm.loop !64

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @sf_delset(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.d = mul nsw i32 %i.c, %1
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.e ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !34
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 4, !tbaa !34
  %i.j = mul nsw i32 %i.i, %i.c
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.k ; 7 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4
  %i.n = and i32 %i.m, 1023                       ; 2 uses
  %i.o = zext nneg i32 %i.n to i64                ; 5 uses
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.n, 15
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.q = sub nsw i64 %i.k, %i.e
  %2 = shl nsw i64 %i.q, 2
  %3 = add nsw i64 %2, -1
  %diff.check = icmp ult i64 %3, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, 2040                     ; 3 uses
  %i.r = sub nsw i64 %i.o, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = sub i64 %i.o, %index                     ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -12
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -28
  %wide.load = load <4 x i32>, ptr %i.u, align 4, !tbaa !4
  %wide.load5 = load <4 x i32>, ptr %i.v, align 4, !tbaa !4
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.s ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -12
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -28
  store <4 x i32> %wide.load, ptr %i.x, align 4, !tbaa !4
  store <4 x i32> %wide.load5, ptr %i.y, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %set_copy.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.o, %vector.memcheck ], [ %i.o, %bb.a ], [ %i.r, %middle.block ] ; 4 uses
  %i.aa = add nsw i64 %indvars.iv.i.ph, 1
  %xtraiter = and i64 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.prol
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i.prol
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !4
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !66

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.ae = icmp ult i64 %indvars.iv.i.ph, 3
  br i1 %i.ae, label %set_copy.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !4
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next.i
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !4
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i.1
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next.i.1
  store i32 %i.am, ptr %i.an, align 4, !tbaa !4
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, -3 ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i.2
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next.i.2
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !4
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4
  %.not.i.3 = icmp eq i64 %indvars.iv.next.i.2, 0
  br i1 %.not.i.3, label %set_copy.exit, label %scalar.ph, !llvm.loop !67

set_copy.exit:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @sf_print(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !34
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %ps1.exit
  %.09 = phi i32 [ %i.bk, %ps1.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.078 = phi ptr [ %i.bj, %ps1.exit ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %i.g = load i32, ptr %.078, align 4, !tbaa !4
  %i.h = shl i32 %i.g, 5
  %i.i = and i32 %i.h, 32736                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 91, ptr @s1, align 16, !tbaa !68
  %.not37.i = icmp eq i32 %i.i, 0
  br i1 %.not37.i, label %ps1.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %bb.g
  %.036.i = phi i32 [ %.1.i, %bb.g ], [ 1, %.lr.ph ] ; 2 uses
  %.02235.i = phi i32 [ %i.bc, %bb.g ], [ 0, %.lr.ph ] ; 4 uses
  %.02334.i = phi i32 [ %.3.i, %bb.g ], [ 1, %.lr.ph ] ; 4 uses
  %i.j = lshr i32 %.02235.i, 5
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.078, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %i.o = and i32 %.02235.i, 31
  %i.p = shl nuw i32 1, %i.o
  %i.q = and i32 %i.n, %i.p
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %.not30.i = icmp eq i32 %.036.i, 0
  br i1 %.not30.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = add nsw i32 %.02334.i, 1
  %i.s = sext i32 %.02334.i to i64
  %i.t = getelementptr inbounds i8, ptr @s1, i64 %i.s
  store i8 44, ptr %i.t, align 1, !tbaa !68
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.124.i = phi i32 [ %.02334.i, %bb.b ], [ %i.r, %bb.c ]
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv40.i = phi i32 [ %indvars.iv.next41.i, %bb.e ], [ 1, %bb.d ] ; 4 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %.027.i = phi i32 [ %i.y, %bb.e ], [ %.02235.i, %bb.d ] ; 3 uses
  %i.u = urem i32 %.027.i, 10
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %i.w, ptr %i.x, align 1, !tbaa !68
  %i.y = udiv i32 %.027.i, 10
  %.not31.i = icmp samesign ult i32 %.027.i, 10
  %indvars.iv.next41.i = add i32 %indvars.iv40.i, 1
  br i1 %.not31.i, label %iter.check, label %bb.e

iter.check:                                       ; preds = %bb.e
  %i.z = sext i32 %indvars.iv40.i to i64          ; 6 uses
  %i.aa = sext i32 %.124.i to i64                 ; 5 uses
  %i.ab = tail call i64 @llvm.smax.i64(i64 %i.z, i64 1) ; 5 uses
  %min.iters.check = icmp slt i32 %indvars.iv40.i, 8
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp slt i32 %indvars.iv40.i, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ab, 24
  %n.vec = and i64 %i.ab, 2147483616              ; 5 uses
  %i.ac = add nsw i64 %n.vec, %i.aa               ; 3 uses
  %i.ad = sub nsw i64 %i.z, %n.vec
  %invariant.gep = getelementptr i8, ptr %i.a, i64 %i.z
  %invariant.gep30 = getelementptr i8, ptr @s1, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ae = xor i64 %index, -1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ae ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %gep, i64 -15
  %i.ag = getelementptr inbounds i8, ptr %gep, i64 -31
  %wide.load = load <16 x i8>, ptr %i.af, align 1, !tbaa !68
  %wide.load13 = load <16 x i8>, ptr %i.ag, align 1, !tbaa !68
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse14 = shufflevector <16 x i8> %wide.load13, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %gep31 = getelementptr i8, ptr %invariant.gep30, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %gep31, i64 16
  store <16 x i8> %reverse, ptr %gep31, align 1, !tbaa !68
  store <16 x i8> %reverse14, ptr %i.ah, align 1, !tbaa !68
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %ind.escape = add nsw i64 %i.ac, -1
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
end_hunk_1
