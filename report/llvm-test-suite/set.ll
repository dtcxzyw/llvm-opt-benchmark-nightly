inline.NumInlined: 29
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@set_dist:bb.a
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
  %3 = icmp ne i32 %i.f, 0
  %.neg = sext i1 %3 to i64
  %4 = add nsw i64 %.neg, %i.g
  %i.h = add nsw i64 %4, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.h, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.i = ptrtoaddr ptr %1 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %2 to i64
  %i.l = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %i.j, %i.k
  %diff.check12 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check12
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, -8                       ; 3 uses
  %i.n = sub nsw i64 %i.g, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = sub i64 %i.g, %index                     ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -12
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -28
  %wide.load = load <4 x i32>, ptr %i.q, align 4, !tbaa !4
  %wide.load13 = load <4 x i32>, ptr %i.r, align 4, !tbaa !4
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.o ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -12
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -28
  %wide.load14 = load <4 x i32>, ptr %i.t, align 4, !tbaa !4
  %wide.load15 = load <4 x i32>, ptr %i.u, align 4, !tbaa !4
  %i.v = and <4 x i32> %wide.load14, %wide.load
  %i.w = and <4 x i32> %wide.load15, %wide.load13
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -12
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -28
  store <4 x i32> %i.v, ptr %i.y, align 4, !tbaa !4
  store <4 x i32> %i.w, ptr %i.z, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %bb.a ], [ %i.n, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = and i32 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ah = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ah, label %scalar.ph, label %.loopexit, !llvm.loop !15

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
  %3 = icmp ne i32 %i.f, 0
  %.neg = sext i1 %3 to i64
  %4 = add nsw i64 %.neg, %i.g
  %i.h = add nsw i64 %4, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.h, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.i = ptrtoaddr ptr %1 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %2 to i64
  %i.l = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %i.j, %i.k
  %diff.check12 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check12
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, -8                       ; 3 uses
  %i.n = sub nsw i64 %i.g, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = sub i64 %i.g, %index                     ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -12
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -28
  %wide.load = load <4 x i32>, ptr %i.q, align 4, !tbaa !4
  %wide.load13 = load <4 x i32>, ptr %i.r, align 4, !tbaa !4
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.o ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -12
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -28
  %wide.load14 = load <4 x i32>, ptr %i.t, align 4, !tbaa !4
  %wide.load15 = load <4 x i32>, ptr %i.u, align 4, !tbaa !4
  %i.v = or <4 x i32> %wide.load14, %wide.load
  %i.w = or <4 x i32> %wide.load15, %wide.load13
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -12
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -28
  store <4 x i32> %i.v, ptr %i.y, align 4, !tbaa !4
  store <4 x i32> %i.w, ptr %i.z, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %bb.a ], [ %i.n, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = or i32 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ah = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ah, label %scalar.ph, label %.loopexit, !llvm.loop !17

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
  %3 = icmp ne i32 %i.f, 0
  %.neg = sext i1 %3 to i64
  %4 = add nsw i64 %.neg, %i.g
  %i.h = add nsw i64 %4, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.h, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.i = ptrtoaddr ptr %1 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %2 to i64
  %i.l = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %i.j, %i.k
  %diff.check12 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check12
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, -8                       ; 3 uses
  %i.n = sub nsw i64 %i.g, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = sub i64 %i.g, %index                     ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -12
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -28
  %wide.load = load <4 x i32>, ptr %i.q, align 4, !tbaa !4
  %wide.load13 = load <4 x i32>, ptr %i.r, align 4, !tbaa !4
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.o ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -12
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -28
  %wide.load14 = load <4 x i32>, ptr %i.t, align 4, !tbaa !4
  %wide.load15 = load <4 x i32>, ptr %i.u, align 4, !tbaa !4
  %i.v = xor <4 x i32> %wide.load14, splat (i32 -1)
  %i.w = xor <4 x i32> %wide.load15, splat (i32 -1)
  %i.x = and <4 x i32> %wide.load, %i.v
  %i.y = and <4 x i32> %wide.load13, %i.w
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -12
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -28
  store <4 x i32> %i.x, ptr %i.aa, align 4, !tbaa !4
  store <4 x i32> %i.y, ptr %i.ab, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %bb.a ], [ %i.n, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = xor i32 %i.ag, -1
  %i.ai = and i32 %i.ae, %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ak = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ak, label %scalar.ph, label %.loopexit, !llvm.loop !19

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
  %3 = icmp ne i32 %i.f, 0
  %.neg = sext i1 %3 to i64
  %4 = add nsw i64 %.neg, %i.g
  %i.h = add nsw i64 %4, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.h, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.i = ptrtoaddr ptr %1 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %2 to i64
  %i.l = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %i.j, %i.k
  %diff.check12 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check12
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, -8                       ; 3 uses
  %i.n = sub nsw i64 %i.g, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = sub i64 %i.g, %index                     ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -12
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -28
  %wide.load = load <4 x i32>, ptr %i.q, align 4, !tbaa !4
  %wide.load13 = load <4 x i32>, ptr %i.r, align 4, !tbaa !4
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.o ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -12
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -28
  %wide.load14 = load <4 x i32>, ptr %i.t, align 4, !tbaa !4
  %wide.load15 = load <4 x i32>, ptr %i.u, align 4, !tbaa !4
  %i.v = xor <4 x i32> %wide.load14, %wide.load
  %i.w = xor <4 x i32> %wide.load15, %wide.load13
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -12
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -28
  store <4 x i32> %i.v, ptr %i.y, align 4, !tbaa !4
  store <4 x i32> %i.w, ptr %i.z, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %bb.a ], [ %i.n, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = xor i32 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ah = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ah, label %scalar.ph, label %.loopexit, !llvm.loop !21

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
  %4 = icmp ne i32 %i.f, 0
  %.neg = sext i1 %4 to i64
  %5 = add nsw i64 %.neg, %i.g
  %i.h = add nsw i64 %5, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.h, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.i = ptrtoaddr ptr %1 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.k = ptrtoaddr ptr %3 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.j, %i.k
  %diff.check16 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  %i.o = sub i64 %i.j, %i.l
  %diff.check17 = icmp ugt i64 %i.o, -32
  %conflict.rdx18 = or i1 %conflict.rdx, %diff.check17
  br i1 %conflict.rdx18, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, -8                       ; 3 uses
  %i.p = sub nsw i64 %i.g, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = sub i64 %i.g, %index                     ; 4 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -12
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -28
  %wide.load = load <4 x i32>, ptr %i.s, align 4, !tbaa !4
  %wide.load19 = load <4 x i32>, ptr %i.t, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.q ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -12
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -28
  %wide.load21 = load <4 x i32>, ptr %i.v, align 4, !tbaa !4 ; 2 uses
  %wide.load22 = load <4 x i32>, ptr %i.w, align 4, !tbaa !4 ; 2 uses
  %i.x = and <4 x i32> %wide.load21, %wide.load
  %i.y = and <4 x i32> %wide.load22, %wide.load19
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.q ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -12
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -28
  %wide.load25 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !4
  %wide.load26 = load <4 x i32>, ptr %i.ab, align 4, !tbaa !4
  %i.ac = xor <4 x i32> %wide.load21, splat (i32 -1)
  %i.ad = xor <4 x i32> %wide.load22, splat (i32 -1)
  %i.ae = and <4 x i32> %wide.load25, %i.ac
  %i.af = and <4 x i32> %wide.load26, %i.ad
  %i.ag = or <4 x i32> %i.ae, %i.x
  %i.ah = or <4 x i32> %i.af, %i.y
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -12
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -28
  store <4 x i32> %i.ag, ptr %i.aj, align 4, !tbaa !4
  store <4 x i32> %i.ah, ptr %i.ak, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %bb.a ], [ %i.p, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4  ; 2 uses
  %i.aq = and i32 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = xor i32 %i.ap, -1
  %i.au = and i32 %i.as, %i.at
  %i.av = or i32 %i.au, %i.aq
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ax = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ax, label %scalar.ph, label %.loopexit, !llvm.loop !23

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
  %3 = icmp ne i32 %i.f, 0
  %.neg = sext i1 %3 to i64
  %4 = add nsw i64 %.neg, %i.g
  %i.h = add nsw i64 %4, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.h, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.i = ptrtoaddr ptr %1 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %2 to i64
  %i.l = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %i.j, %i.k
  %diff.check16 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, -8                       ; 3 uses
  %i.n = sub nsw i64 %i.g, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ab, %vector.body ]
  %i.o = sub i64 %i.g, %index                     ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -12
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -28
  %wide.load = load <4 x i32>, ptr %i.q, align 4, !tbaa !4
  %wide.load18 = load <4 x i32>, ptr %i.r, align 4, !tbaa !4
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.o ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -12
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -28
  %wide.load19 = load <4 x i32>, ptr %i.t, align 4, !tbaa !4
  %wide.load20 = load <4 x i32>, ptr %i.u, align 4, !tbaa !4
  %i.v = and <4 x i32> %wide.load19, %wide.load   ; 2 uses
  %i.w = and <4 x i32> %wide.load20, %wide.load18 ; 2 uses
  %reverse = shufflevector <4 x i32> %i.v, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse21 = shufflevector <4 x i32> %i.w, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -12
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -28
  store <4 x i32> %i.v, ptr %i.y, align 4, !tbaa !4
  store <4 x i32> %i.w, ptr %i.z, align 4, !tbaa !4
  %i.aa = or <4 x i32> %reverse, %vec.phi         ; 2 uses
  %i.ab = or <4 x i32> %reverse21, %vec.phi17     ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.ab, %i.aa
  %i.ad = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %bb.a ], [ %i.n, %middle.block ]
  %.0.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.ad, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %.0 = phi i32 [ %i.ak, %scalar.ph ], [ %.0.ph, %scalar.ph.preheader ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = and i32 %i.ah, %i.af                    ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !4
  %i.ak = or i32 %i.ai, %.0                       ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.al = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.al, label %scalar.ph, label %.loopexit, !llvm.loop !25

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.ad, %middle.block ], [ %i.ak, %scalar.ph ]
  %i.am = icmp ne i32 %.lcssa, 0
  %i.an = zext i1 %i.am to i32
  ret i32 %i.an
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
  %3 = icmp ne i32 %i.f, 0
  %.neg = sext i1 %3 to i64
  %4 = add nsw i64 %.neg, %i.g
  %i.h = add nsw i64 %4, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.h, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.i = ptrtoaddr ptr %1 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %2 to i64
  %i.l = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %i.j, %i.k
  %diff.check16 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, -8                       ; 3 uses
  %i.n = sub nsw i64 %i.g, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ab, %vector.body ]
  %i.o = sub i64 %i.g, %index                     ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -12
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -28
  %wide.load = load <4 x i32>, ptr %i.q, align 4, !tbaa !4
  %wide.load18 = load <4 x i32>, ptr %i.r, align 4, !tbaa !4
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.o ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -12
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -28
  %wide.load19 = load <4 x i32>, ptr %i.t, align 4, !tbaa !4
  %wide.load20 = load <4 x i32>, ptr %i.u, align 4, !tbaa !4
  %i.v = or <4 x i32> %wide.load19, %wide.load    ; 2 uses
  %i.w = or <4 x i32> %wide.load20, %wide.load18  ; 2 uses
  %reverse = shufflevector <4 x i32> %i.v, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse21 = shufflevector <4 x i32> %i.w, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -12
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -28
  store <4 x i32> %i.v, ptr %i.y, align 4, !tbaa !4
  store <4 x i32> %i.w, ptr %i.z, align 4, !tbaa !4
  %i.aa = or <4 x i32> %reverse, %vec.phi         ; 2 uses
  %i.ab = or <4 x i32> %reverse21, %vec.phi17     ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.ab, %i.aa
  %i.ad = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %bb.a ], [ %i.n, %middle.block ]
  %.0.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.ad, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %.0 = phi i32 [ %i.ak, %scalar.ph ], [ %.0.ph, %scalar.ph.preheader ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = or i32 %i.ah, %i.af                     ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !4
  %i.ak = or i32 %i.ai, %.0                       ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.al = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.al, label %scalar.ph, label %.loopexit, !llvm.loop !27

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.ad, %middle.block ], [ %i.ak, %scalar.ph ]
  %i.am = icmp ne i32 %.lcssa, 0
  %i.an = zext i1 %i.am to i32
  ret i32 %i.an
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
  %i.c = zext nneg i32 %.0 to i64                 ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %i.h = xor i32 %i.g, -1
  %i.i = and i32 %i.e, %i.h
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %.0, -1
  %i.k = icmp sgt i32 %.0, 1
  br i1 %i.k, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.06 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  ret i32 %.06
}

; Function Attrs: nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define dso_local noalias noundef ptr @sf_or(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
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
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #24 ; 6 uses
  %i.j = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %i.k = icmp slt i32 %i.j, 33
  %i.l = add nsw i32 %i.j, -1
  %i.m = lshr i32 %i.l, 5
  %i.n = add nuw nsw i32 %i.m, 1
  %i.o = select i1 %i.k, i32 1, i32 %i.n          ; 3 uses
  store i32 %i.o, ptr %i.i, align 4, !tbaa !4
  %i.p = shl nuw nsw i32 %i.o, 2
  %i.q = zext nneg i32 %i.p to i64
  %i.r = add nsw i32 %i.o, -1
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 2                  ; 2 uses
  %i.u = sub nsw i64 %i.q, %i.t
  %scevgep.i = getelementptr i8, ptr %i.i, i64 %i.u
  %i.v = add nuw nsw i64 %i.t, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.v, i1 false), !tbaa !4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !33   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !34
  %i.aa = load i32, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.ab = mul nsw i32 %i.aa, %i.z                 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %.idx = shl nsw i64 %i.ac, 2
  %i.ad = getelementptr inbounds i8, ptr %i.x, i64 %.idx
  %i.ae = icmp sgt i32 %i.ab, 0
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.af = sext i32 %i.aa to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %.02224 = phi ptr [ %i.x, %.lr.ph ], [ %i.bb, %.loopexit ] ; 3 uses
  %i.ag = load i32, ptr %i.i, align 4, !tbaa !4
  %i.ah = and i32 %i.ag, 1023                     ; 2 uses
  %i.ai = zext nneg i32 %i.ah to i64              ; 4 uses
  %1 = icmp ne i32 %i.ah, 0
  %.neg = sext i1 %1 to i64
  %2 = add nsw i64 %.neg, %i.ai
  %i.aj = add nsw i64 %2, 1                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.aj, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.aj, -8                      ; 3 uses
  %i.ak = sub nsw i64 %i.ai, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = sub i64 %i.ai, %index                   ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -12 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.an, align 4, !tbaa !4
  %wide.load26 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !4
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.02224, i64 %i.al ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -12
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -28
  %wide.load27 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !4
  %wide.load28 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !4
  %i.as = or <4 x i32> %wide.load27, %wide.load
  %i.at = or <4 x i32> %wide.load28, %wide.load26
  store <4 x i32> %i.as, ptr %i.an, align 4, !tbaa !4
  store <4 x i32> %i.at, ptr %i.ao, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ai, %bb.b ], [ %i.ak, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.02224, i64 %indvars.iv
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.az = or i32 %i.ay, %i.aw
  store i32 %i.az, ptr %i.av, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ba = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ba, label %scalar.ph, label %.loopexit, !llvm.loop !37

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.bb = getelementptr inbounds [4 x i8], ptr %.02224, i64 %i.af ; 2 uses
  %i.bc = icmp ult ptr %i.bb, %i.ad
  br i1 %i.bc, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret ptr %i.i
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

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
  %.02326 = phi ptr [ %i.ad, %.lr.ph ], [ %i.bh, %.loopexit ] ; 3 uses
  %i.am = load i32, ptr %i.i, align 4, !tbaa !4
  %i.an = and i32 %i.am, 1023                     ; 2 uses
  %i.ao = zext nneg i32 %i.an to i64              ; 4 uses
  %1 = icmp ne i32 %i.an, 0
  %.neg = sext i1 %1 to i64
  %2 = add nsw i64 %.neg, %i.ao
  %i.ap = add nsw i64 %2, 1                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.ap, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.ap, -8                      ; 3 uses
  %i.aq = sub nsw i64 %i.ao, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = sub i64 %i.ao, %index                   ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -12 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.at, align 4, !tbaa !4
  %wide.load28 = load <4 x i32>, ptr %i.au, align 4, !tbaa !4
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.02326, i64 %i.ar ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -12
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -28
  %wide.load29 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !4
  %wide.load30 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !4
  %i.ay = and <4 x i32> %wide.load29, %wide.load
  %i.az = and <4 x i32> %wide.load30, %wide.load28
  store <4 x i32> %i.ay, ptr %i.at, align 4, !tbaa !4
  store <4 x i32> %i.az, ptr %i.au, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ao, %bb.b ], [ %i.aq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.02326, i64 %indvars.iv
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bf = and i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bb, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bg = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.bg, label %scalar.ph, label %.loopexit, !llvm.loop !39

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.bh = getelementptr inbounds [4 x i8], ptr %.02326, i64 %i.al ; 2 uses
  %i.bi = icmp ult ptr %i.bh, %i.aj
  br i1 %i.bi, label %bb.b, label %._crit_edge

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
end_hunk_0
