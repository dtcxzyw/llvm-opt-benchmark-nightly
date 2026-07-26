inline.NumInlined: 29
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@sf_or:bb.a
  %i.ak = add nsw i64 %.neg, %i.ai
  %i.al = add nsw i64 %i.ak, 1                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.al, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.al, -8                      ; 3 uses
  %i.am = sub nsw i64 %i.ai, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = sub i64 %i.ai, %index                   ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -12 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ap, align 4, !tbaa !4
  %wide.load26 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !4
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.02224, i64 %i.an ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -12
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -28
  %wide.load27 = load <4 x i32>, ptr %i.as, align 4, !tbaa !4
  %wide.load28 = load <4 x i32>, ptr %i.at, align 4, !tbaa !4
  %i.au = or <4 x i32> %wide.load27, %wide.load
  %i.av = or <4 x i32> %wide.load28, %wide.load26
  store <4 x i32> %i.au, ptr %i.ap, align 4, !tbaa !4
  store <4 x i32> %i.av, ptr %i.aq, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ai, %bb.b ], [ %i.am, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.02224, i64 %indvars.iv
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4
  %i.bb = or i32 %i.ba, %i.ay
  store i32 %i.bb, ptr %i.ax, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bc = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.bc, label %scalar.ph, label %.loopexit, !llvm.loop !37

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.bd = getelementptr inbounds [4 x i8], ptr %.02224, i64 %i.af ; 2 uses
  %i.be = icmp ult ptr %i.bd, %i.ad
  br i1 %i.be, label %bb.b, label %._crit_edge

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
  %.02326 = phi ptr [ %i.ad, %.lr.ph ], [ %i.bj, %.loopexit ] ; 3 uses
  %i.am = load i32, ptr %i.i, align 4, !tbaa !4
  %i.an = and i32 %i.am, 1023                     ; 2 uses
  %i.ao = zext nneg i32 %i.an to i64              ; 4 uses
  %i.ap = icmp ne i32 %i.an, 0
  %.neg = sext i1 %i.ap to i64
  %i.aq = add nsw i64 %.neg, %i.ao
  %i.ar = add nsw i64 %i.aq, 1                    ; 3 uses
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
  %wide.load29 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !4
  %wide.load30 = load <4 x i32>, ptr %i.az, align 4, !tbaa !4
  %i.ba = and <4 x i32> %wide.load29, %wide.load
  %i.bb = and <4 x i32> %wide.load30, %wide.load28
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
  %.idx = shl nuw nsw i64 %i.g, 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
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
  %i.n = mul i32 %i.f, %i.e                       ; 3 uses
  %2 = zext i32 %i.n to i64                       ; 5 uses
  %i.o = mul i32 %i.c, %i.b                       ; 4 uses
  %i.p = sext i32 %i.o to i64                     ; 7 uses
  %i.q = add nsw i32 %i.l, %i.m                   ; 2 uses
  %i.r = load ptr, ptr @set_family_garbage, align 8, !tbaa !47 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #24
  br label %sf_new.exit

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !48
  store ptr %i.v, ptr @set_family_garbage, align 8, !tbaa !47
  br label %sf_new.exit

sf_new.exit:                                      ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.t, %bb.d ], [ %i.r, %bb.e ] ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  store i32 %i.k, ptr %i.w, align 4, !tbaa !28
  %i.x = icmp slt i32 %i.k, 33
  %i.y = add nsw i32 %i.k, -1
  %i.z = lshr i32 %i.y, 5
  %i.aa = add nuw nsw i32 %i.z, 2
  %i.ab = select i1 %i.x, i32 2, i32 %i.aa        ; 2 uses
  store i32 %i.ab, ptr %.0.i, align 8, !tbaa !35
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %i.q, ptr %i.ac, align 8, !tbaa !49
  %i.ad = sext i32 %i.q to i64
  %i.ae = zext nneg i32 %i.ab to i64
  %i.af = shl nsw i64 %i.ad, 2
  %i.ag = mul nsw i64 %i.af, %i.ae
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.ag) #24 ; 6 uses
  %i.ai = ptrtoaddr ptr %i.ah to i64              ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i, i64 12 ; 2 uses
  store i32 0, ptr %i.ak, align 4, !tbaa !34
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i32 0, ptr %i.al, align 8, !tbaa !40
  %i.am = load <2 x i32>, ptr %i.a, align 4, !tbaa !4
  %i.an = load <2 x i32>, ptr %i.d, align 4, !tbaa !4
  %i.ao = add nsw <2 x i32> %i.an, %i.am
  store <2 x i32> %i.ao, ptr %i.ak, align 4, !tbaa !4
  %i.ap = icmp sgt i32 %i.o, 0
  br i1 %i.ap, label %.lr.ph.i.preheader, label %intcpy.exit

.lr.ph.i.preheader:                               ; preds = %sf_new.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !33 ; 4 uses
  %min.iters.check = icmp ult i32 %i.o, 8
  %i.as = ptrtoaddr ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.ai
  %diff.check = icmp ugt i64 %i.at, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader57, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.p, 2147483640               ; 4 uses
  %i.au = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.av = getelementptr i8, ptr %i.ah, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.ar, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ah, i64 %i.ax ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.ar, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep32, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep32, align 4, !tbaa !4
  %wide.load33 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !4
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !4
  store <4 x i32> %wide.load33, ptr %i.az, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.p
  br i1 %cmp.n, label %intcpy.exit, label %.lr.ph.i.preheader57

.lr.ph.i.preheader57:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.058.i.ph = phi ptr [ %i.ah, %.lr.ph.i.preheader ], [ %i.av, %middle.block ] ; 2 uses
  %.067.i.ph = phi ptr [ %i.ar, %.lr.ph.i.preheader ], [ %i.aw, %middle.block ] ; 2 uses
  %xtraiter = and i64 %i.p, 7
  %i.bb = and i32 %i.o, 7
  %lcmp.mod.not = icmp eq i32 %i.bb, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader57, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader57 ]
  %.058.i.prol = phi ptr [ %i.be, %.lr.ph.i.prol ], [ %.058.i.ph, %.lr.ph.i.preheader57 ] ; 2 uses
  %.067.i.prol = phi ptr [ %i.bc, %.lr.ph.i.prol ], [ %.067.i.ph, %.lr.ph.i.preheader57 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader57 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.067.i.prol, i64 4 ; 2 uses
  %i.bd = load i32, ptr %.067.i.prol, align 4, !tbaa !4
  %i.be = getelementptr inbounds nuw i8, ptr %.058.i.prol, i64 4 ; 2 uses
  store i32 %i.bd, ptr %.058.i.prol, align 4, !tbaa !4
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !51

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader57
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader57 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.058.i.unr = phi ptr [ %.058.i.ph, %.lr.ph.i.preheader57 ], [ %i.be, %.lr.ph.i.prol ]
  %.067.i.unr = phi ptr [ %.067.i.ph, %.lr.ph.i.preheader57 ], [ %i.bc, %.lr.ph.i.prol ]
  %i.bf = sub nsw i64 %indvars.iv.i.ph, %i.p
  %i.bg = icmp ugt i64 %i.bf, -8
  br i1 %i.bg, label %intcpy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ]
  %.058.i = phi ptr [ %i.ce, %.lr.ph.i ], [ %.058.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.067.i = phi ptr [ %i.cc, %.lr.ph.i ], [ %.067.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.067.i, i64 4
  %i.bi = load i32, ptr %.067.i, align 4, !tbaa !4
  %i.bj = getelementptr inbounds nuw i8, ptr %.058.i, i64 4
  store i32 %i.bi, ptr %.058.i, align 4, !tbaa !4
  %i.bk = getelementptr inbounds nuw i8, ptr %.067.i, i64 8
  %i.bl = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.bm = getelementptr inbounds nuw i8, ptr %.058.i, i64 8
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !4
  %i.bn = getelementptr inbounds nuw i8, ptr %.067.i, i64 12
  %i.bo = load i32, ptr %i.bk, align 4, !tbaa !4
  %i.bp = getelementptr inbounds nuw i8, ptr %.058.i, i64 12
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !4
  %i.bq = getelementptr inbounds nuw i8, ptr %.067.i, i64 16
  %i.br = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.bs = getelementptr inbounds nuw i8, ptr %.058.i, i64 16
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !4
  %i.bt = getelementptr inbounds nuw i8, ptr %.067.i, i64 20
  %i.bu = load i32, ptr %i.bq, align 4, !tbaa !4
  %i.bv = getelementptr inbounds nuw i8, ptr %.058.i, i64 20
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !4
  %i.bw = getelementptr inbounds nuw i8, ptr %.067.i, i64 24
  %i.bx = load i32, ptr %i.bt, align 4, !tbaa !4
  %i.by = getelementptr inbounds nuw i8, ptr %.058.i, i64 24
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !4
  %i.bz = getelementptr inbounds nuw i8, ptr %.067.i, i64 28
  %i.ca = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.cb = getelementptr inbounds nuw i8, ptr %.058.i, i64 28
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !4
  %i.cc = getelementptr inbounds nuw i8, ptr %.067.i, i64 32
  %i.cd = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.ce = getelementptr inbounds nuw i8, ptr %.058.i, i64 32
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !4
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %i.p
  br i1 %exitcond.not.i.7, label %intcpy.exit, label %.lr.ph.i, !llvm.loop !52

intcpy.exit:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %sf_new.exit
  %i.cf = icmp sgt i32 %i.n, 0
  br i1 %i.cf, label %.lr.ph.i22.preheader, label %intcpy.exit28

.lr.ph.i22.preheader:                             ; preds = %intcpy.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !33 ; 5 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.p ; 4 uses
  %min.iters.check39 = icmp ult i32 %i.n, 16
  br i1 %min.iters.check39, label %.lr.ph.i22.preheader56, label %vector.memcheck36

vector.memcheck36:                                ; preds = %.lr.ph.i22.preheader
  %i.cj = ptrtoaddr ptr %i.ch to i64
  %i.ck = shl nsw i64 %i.p, 2
  %i.cl = add i64 %i.ck, %i.ai
  %i.cm = sub i64 %i.cj, %i.cl
  %diff.check37 = icmp ugt i64 %i.cm, -32
  br i1 %diff.check37, label %.lr.ph.i22.preheader56, label %vector.ph40

vector.ph40:                                      ; preds = %vector.memcheck36
  %n.vec42 = and i64 %2, 2147483640               ; 4 uses
  %i.cn = shl nuw nsw i64 %n.vec42, 2             ; 2 uses
  %i.co = getelementptr i8, ptr %i.ci, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.ch, i64 %i.cn
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph40
  %index44 = phi i64 [ 0, %vector.ph40 ], [ %index.next49, %vector.body43 ] ; 2 uses
  %i.cq = shl i64 %index44, 2                     ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.ci, i64 %i.cq ; 2 uses
  %next.gep46 = getelementptr i8, ptr %i.ch, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep46, i64 16
  %wide.load47 = load <4 x i32>, ptr %next.gep46, align 4, !tbaa !4
  %wide.load48 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !4
  %i.cs = getelementptr i8, ptr %next.gep45, i64 16
  store <4 x i32> %wide.load47, ptr %next.gep45, align 4, !tbaa !4
  store <4 x i32> %wide.load48, ptr %i.cs, align 4, !tbaa !4
  %index.next49 = add nuw i64 %index44, 8         ; 2 uses
  %i.ct = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.ct, label %middle.block50, label %vector.body43, !llvm.loop !53

middle.block50:                                   ; preds = %vector.body43
  %cmp.n51 = icmp eq i64 %n.vec42, %2
  br i1 %cmp.n51, label %intcpy.exit28, label %.lr.ph.i22.preheader56

.lr.ph.i22.preheader56:                           ; preds = %vector.memcheck36, %.lr.ph.i22.preheader, %middle.block50
  %indvars.iv.i23.ph = phi i64 [ 0, %vector.memcheck36 ], [ 0, %.lr.ph.i22.preheader ], [ %n.vec42, %middle.block50 ] ; 3 uses
  %.058.i24.ph = phi ptr [ %i.ci, %vector.memcheck36 ], [ %i.ci, %.lr.ph.i22.preheader ], [ %i.co, %middle.block50 ] ; 2 uses
  %.067.i25.ph = phi ptr [ %i.ch, %vector.memcheck36 ], [ %i.ch, %.lr.ph.i22.preheader ], [ %i.cp, %middle.block50 ] ; 2 uses
  %xtraiter58 = and i64 %2, 7                     ; 2 uses
  %lcmp.mod59.not = icmp eq i64 %xtraiter58, 0
  br i1 %lcmp.mod59.not, label %.lr.ph.i22.prol.loopexit, label %.lr.ph.i22.prol

.lr.ph.i22.prol:                                  ; preds = %.lr.ph.i22.preheader56, %.lr.ph.i22.prol
  %indvars.iv.i23.prol = phi i64 [ %indvars.iv.next.i26.prol, %.lr.ph.i22.prol ], [ %indvars.iv.i23.ph, %.lr.ph.i22.preheader56 ]
  %.058.i24.prol = phi ptr [ %i.cw, %.lr.ph.i22.prol ], [ %.058.i24.ph, %.lr.ph.i22.preheader56 ] ; 2 uses
  %.067.i25.prol = phi ptr [ %i.cu, %.lr.ph.i22.prol ], [ %.067.i25.ph, %.lr.ph.i22.preheader56 ] ; 2 uses
  %prol.iter60 = phi i64 [ %prol.iter60.next, %.lr.ph.i22.prol ], [ 0, %.lr.ph.i22.preheader56 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.067.i25.prol, i64 4 ; 2 uses
  %i.cv = load i32, ptr %.067.i25.prol, align 4, !tbaa !4
  %i.cw = getelementptr inbounds nuw i8, ptr %.058.i24.prol, i64 4 ; 2 uses
  store i32 %i.cv, ptr %.058.i24.prol, align 4, !tbaa !4
  %indvars.iv.next.i26.prol = add nuw nsw i64 %indvars.iv.i23.prol, 1 ; 2 uses
  %prol.iter60.next = add i64 %prol.iter60, 1     ; 2 uses
  %prol.iter60.cmp.not = icmp eq i64 %prol.iter60.next, %xtraiter58
  br i1 %prol.iter60.cmp.not, label %.lr.ph.i22.prol.loopexit, label %.lr.ph.i22.prol, !llvm.loop !54

.lr.ph.i22.prol.loopexit:                         ; preds = %.lr.ph.i22.prol, %.lr.ph.i22.preheader56
  %indvars.iv.i23.unr = phi i64 [ %indvars.iv.i23.ph, %.lr.ph.i22.preheader56 ], [ %indvars.iv.next.i26.prol, %.lr.ph.i22.prol ]
  %.058.i24.unr = phi ptr [ %.058.i24.ph, %.lr.ph.i22.preheader56 ], [ %i.cw, %.lr.ph.i22.prol ]
  %.067.i25.unr = phi ptr [ %.067.i25.ph, %.lr.ph.i22.preheader56 ], [ %i.cu, %.lr.ph.i22.prol ]
  %i.cx = sub nsw i64 %indvars.iv.i23.ph, %2
  %i.cy = icmp ugt i64 %i.cx, -8
  br i1 %i.cy, label %intcpy.exit28, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.lr.ph.i22.prol.loopexit, %.lr.ph.i22
  %indvars.iv.i23 = phi i64 [ %indvars.iv.next.i26.7, %.lr.ph.i22 ], [ %indvars.iv.i23.unr, %.lr.ph.i22.prol.loopexit ]
  %.058.i24 = phi ptr [ %i.dw, %.lr.ph.i22 ], [ %.058.i24.unr, %.lr.ph.i22.prol.loopexit ] ; 9 uses
  %.067.i25 = phi ptr [ %i.du, %.lr.ph.i22 ], [ %.067.i25.unr, %.lr.ph.i22.prol.loopexit ] ; 9 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.067.i25, i64 4
  %i.da = load i32, ptr %.067.i25, align 4, !tbaa !4
  %i.db = getelementptr inbounds nuw i8, ptr %.058.i24, i64 4
  store i32 %i.da, ptr %.058.i24, align 4, !tbaa !4
  %i.dc = getelementptr inbounds nuw i8, ptr %.067.i25, i64 8
  %i.dd = load i32, ptr %i.cz, align 4, !tbaa !4
  %i.de = getelementptr inbounds nuw i8, ptr %.058.i24, i64 8
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !4
  %i.df = getelementptr inbounds nuw i8, ptr %.067.i25, i64 12
  %i.dg = load i32, ptr %i.dc, align 4, !tbaa !4
  %i.dh = getelementptr inbounds nuw i8, ptr %.058.i24, i64 12
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !4
  %i.di = getelementptr inbounds nuw i8, ptr %.067.i25, i64 16
  %i.dj = load i32, ptr %i.df, align 4, !tbaa !4
  %i.dk = getelementptr inbounds nuw i8, ptr %.058.i24, i64 16
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !4
  %i.dl = getelementptr inbounds nuw i8, ptr %.067.i25, i64 20
  %i.dm = load i32, ptr %i.di, align 4, !tbaa !4
  %i.dn = getelementptr inbounds nuw i8, ptr %.058.i24, i64 20
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !4
  %i.do = getelementptr inbounds nuw i8, ptr %.067.i25, i64 24
  %i.dp = load i32, ptr %i.dl, align 4, !tbaa !4
  %i.dq = getelementptr inbounds nuw i8, ptr %.058.i24, i64 24
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !4
  %i.dr = getelementptr inbounds nuw i8, ptr %.067.i25, i64 28
  %i.ds = load i32, ptr %i.do, align 4, !tbaa !4
  %i.dt = getelementptr inbounds nuw i8, ptr %.058.i24, i64 28
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !4
  %i.du = getelementptr inbounds nuw i8, ptr %.067.i25, i64 32
  %i.dv = load i32, ptr %i.dr, align 4, !tbaa !4
  %i.dw = getelementptr inbounds nuw i8, ptr %.058.i24, i64 32
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !4
  %indvars.iv.next.i26.7 = add nuw nsw i64 %indvars.iv.i23, 8 ; 2 uses
  %exitcond.not.i27.7 = icmp eq i64 %indvars.iv.next.i26.7, %2
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
  %i.z = mul nsw i32 %i.f, %i.e                   ; 3 uses
  %2 = zext i32 %i.z to i64                       ; 5 uses
  store ptr %i.x, ptr %i.o, align 8, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !33 ; 7 uses
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %i.ad = icmp sgt i32 %i.z, 0
  br i1 %i.ad, label %.lr.ph.i.preheader, label %intcpy.exit

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.ae = mul i32 %i.c, %i.b
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.af ; 4 uses
  %min.iters.check = icmp ult i32 %i.z, 16
  br i1 %min.iters.check, label %.lr.ph.i.preheader32, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.ah = shl nsw i64 %i.af, 2
  %i.ai = add i64 %i.ah, %i.y
  %i.aj = sub i64 %i.ac, %i.ai
  %diff.check = icmp ugt i64 %i.aj, -32
  br i1 %diff.check, label %.lr.ph.i.preheader32, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, 2147483640                 ; 4 uses
  %i.ak = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.al = getelementptr i8, ptr %i.ag, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.ab, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.an ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.ab, i64 %i.an ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep28, align 4, !tbaa !4
  %wide.load29 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !4
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !4
  store <4 x i32> %wide.load29, ptr %i.ap, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %2
  br i1 %cmp.n, label %intcpy.exit, label %.lr.ph.i.preheader32

.lr.ph.i.preheader32:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.058.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.preheader ], [ %i.al, %middle.block ] ; 2 uses
  %.067.i.ph = phi ptr [ %i.ab, %vector.memcheck ], [ %i.ab, %.lr.ph.i.preheader ], [ %i.am, %middle.block ] ; 2 uses
  %xtraiter = and i64 %2, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader32, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader32 ]
  %.058.i.prol = phi ptr [ %i.at, %.lr.ph.i.prol ], [ %.058.i.ph, %.lr.ph.i.preheader32 ] ; 2 uses
  %.067.i.prol = phi ptr [ %i.ar, %.lr.ph.i.prol ], [ %.067.i.ph, %.lr.ph.i.preheader32 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader32 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.067.i.prol, i64 4 ; 2 uses
  %i.as = load i32, ptr %.067.i.prol, align 4, !tbaa !4
  %i.at = getelementptr inbounds nuw i8, ptr %.058.i.prol, i64 4 ; 2 uses
  store i32 %i.as, ptr %.058.i.prol, align 4, !tbaa !4
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !57

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader32
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader32 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.058.i.unr = phi ptr [ %.058.i.ph, %.lr.ph.i.preheader32 ], [ %i.at, %.lr.ph.i.prol ]
  %.067.i.unr = phi ptr [ %.067.i.ph, %.lr.ph.i.preheader32 ], [ %i.ar, %.lr.ph.i.prol ]
  %i.au = sub nsw i64 %indvars.iv.i.ph, %2
  %i.av = icmp ugt i64 %i.au, -8
  br i1 %i.av, label %intcpy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ]
  %.058.i = phi ptr [ %i.bt, %.lr.ph.i ], [ %.058.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.067.i = phi ptr [ %i.br, %.lr.ph.i ], [ %.067.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.067.i, i64 4
  %i.ax = load i32, ptr %.067.i, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %.058.i, i64 4
  store i32 %i.ax, ptr %.058.i, align 4, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %.067.i, i64 8
  %i.ba = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.bb = getelementptr inbounds nuw i8, ptr %.058.i, i64 8
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !4
  %i.bc = getelementptr inbounds nuw i8, ptr %.067.i, i64 12
  %i.bd = load i32, ptr %i.az, align 4, !tbaa !4
  %i.be = getelementptr inbounds nuw i8, ptr %.058.i, i64 12
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !4
  %i.bf = getelementptr inbounds nuw i8, ptr %.067.i, i64 16
  %i.bg = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.bh = getelementptr inbounds nuw i8, ptr %.058.i, i64 16
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !4
  %i.bi = getelementptr inbounds nuw i8, ptr %.067.i, i64 20
  %i.bj = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.bk = getelementptr inbounds nuw i8, ptr %.058.i, i64 20
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !4
  %i.bl = getelementptr inbounds nuw i8, ptr %.067.i, i64 24
  %i.bm = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.bn = getelementptr inbounds nuw i8, ptr %.058.i, i64 24
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !4
  %i.bo = getelementptr inbounds nuw i8, ptr %.067.i, i64 28
  %i.bp = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.bq = getelementptr inbounds nuw i8, ptr %.058.i, i64 28
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !4
  %i.br = getelementptr inbounds nuw i8, ptr %.067.i, i64 32
  %i.bs = load i32, ptr %i.bo, align 4, !tbaa !4
  %i.bt = getelementptr inbounds nuw i8, ptr %.058.i, i64 32
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !4
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %2
  br i1 %exitcond.not.i.7, label %intcpy.exit, label %.lr.ph.i, !llvm.loop !58

intcpy.exit:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.f
  %i.bu = load <2 x i32>, ptr %i.d, align 4, !tbaa !4
  %i.bv = load <2 x i32>, ptr %i.a, align 4, !tbaa !4
  %i.bw = add nsw <2 x i32> %i.bv, %i.bu
  store <2 x i32> %i.bw, ptr %i.a, align 4, !tbaa !4
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %sf_free.exit, label %bb.g

bb.g:                                             ; preds = %intcpy.exit
  tail call void @free(ptr noundef nonnull %i.ab) #25
  store ptr null, ptr %i.aa, align 8, !tbaa !33
  br label %sf_free.exit

sf_free.exit:                                     ; preds = %intcpy.exit, %bb.g
  %i.bx = load ptr, ptr @set_family_garbage, align 8, !tbaa !47
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !48
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
end_hunk_0
begin_hunk_1_@sf_transpose:bb.a
  %i.ak = shl nuw nsw i64 %i.aj, 2                ; 2 uses
  %i.al = sub nsw i64 %i.ah, %i.ak                ; 9 uses
  %i.am = add nuw nsw i64 %i.ak, 4                ; 9 uses
  %i.an = sext i32 %.pre50 to i64                 ; 9 uses
  %xtraiter = and i32 %i.z, 7                     ; 3 uses
  %i.ao = icmp ult i32 %i.z, 8
  br i1 %i.ao, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.z, 2147483640
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03740 = phi ptr [ %i.v, %.lr.ph.preheader.new ], [ %i.aw, %.lr.ph ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  store i32 %i.af, ptr %.03740, align 4, !tbaa !4
  %scevgep = getelementptr i8, ptr %.03740, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.am, i1 false), !tbaa !4
  %i.ap = getelementptr inbounds [4 x i8], ptr %.03740, i64 %i.an ; 3 uses
  store i32 %i.af, ptr %i.ap, align 4, !tbaa !4
  %scevgep.1 = getelementptr i8, ptr %i.ap, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.1, i8 0, i64 %i.am, i1 false), !tbaa !4
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.an ; 3 uses
  store i32 %i.af, ptr %i.aq, align 4, !tbaa !4
  %scevgep.2 = getelementptr i8, ptr %i.aq, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.2, i8 0, i64 %i.am, i1 false), !tbaa !4
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.an ; 3 uses
  store i32 %i.af, ptr %i.ar, align 4, !tbaa !4
  %scevgep.3 = getelementptr i8, ptr %i.ar, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.3, i8 0, i64 %i.am, i1 false), !tbaa !4
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.an ; 3 uses
  store i32 %i.af, ptr %i.as, align 4, !tbaa !4
  %scevgep.4 = getelementptr i8, ptr %i.as, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.4, i8 0, i64 %i.am, i1 false), !tbaa !4
  %i.at = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.an ; 3 uses
  store i32 %i.af, ptr %i.at, align 4, !tbaa !4
  %scevgep.5 = getelementptr i8, ptr %i.at, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.5, i8 0, i64 %i.am, i1 false), !tbaa !4
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.an ; 3 uses
  store i32 %i.af, ptr %i.au, align 4, !tbaa !4
  %scevgep.6 = getelementptr i8, ptr %i.au, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.6, i8 0, i64 %i.am, i1 false), !tbaa !4
  %i.av = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.an ; 3 uses
  store i32 %i.af, ptr %i.av, align 4, !tbaa !4
  %scevgep.7 = getelementptr i8, ptr %i.av, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.7, i8 0, i64 %i.am, i1 false), !tbaa !4
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.an ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7.not = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %._crit_edge.unr-lcssa, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.03740.epil.init = phi ptr [ %i.v, %.lr.ph.preheader ], [ %i.aw, %._crit_edge.unr-lcssa ]
  %lcmp.mod56 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod56)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.03740.epil = phi ptr [ %i.ax, %.lr.ph.epil ], [ %.03740.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  store i32 %i.af, ptr %.03740.epil, align 4, !tbaa !4
  %scevgep.epil = getelementptr i8, ptr %.03740.epil, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.epil, i8 0, i64 %i.am, i1 false), !tbaa !4
  %i.ax = getelementptr inbounds [4 x i8], ptr %.03740.epil, i64 %i.an
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !79

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !33 ; 3 uses
  %i.ba = load i32, ptr %i.c, align 4, !tbaa !34  ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.preheader.lr.ph, label %._crit_edge47.split

._crit_edge.thread:                               ; preds = %sf_new.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !33
  br label %._crit_edge47.split

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %i.be = load i32, ptr %0, align 8, !tbaa !35
  %i.bf = sext i32 %i.be to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge44
  %.146 = phi i32 [ %i.ca, %._crit_edge44 ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %.13845 = phi ptr [ %i.bz, %._crit_edge44 ], [ %i.az, %.preheader.lr.ph ] ; 2 uses
  %i.bg = and i32 %.146, 31
  %i.bh = shl nuw i32 1, %i.bg
  %i.bi = lshr i32 %.146, 5
  %i.bj = zext nneg i32 %i.bi to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.v, i64 %i.bj
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.f
  %.03542 = phi i32 [ 0, %.preheader ], [ %i.by, %bb.f ] ; 4 uses
  %i.bk = lshr i32 %.03542, 5
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.13845, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.bp = and i32 %.03542, 31
  %i.bq = shl nuw i32 1, %i.bp
  %i.br = and i32 %i.bo, %i.bq
  %.not = icmp eq i32 %i.br, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bs = load i32, ptr %.0.i, align 8, !tbaa !35
  %i.bt = mul nsw i32 %i.bs, %.03542
  %i.bu = sext i32 %i.bt to i64
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bu
  %i.bv = getelementptr inbounds nuw i8, ptr %gep, i64 4 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !4
  %i.bx = or i32 %i.bw, %i.bh
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.by = add nuw nsw i32 %.03542, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.by, %i.z
  br i1 %exitcond.not, label %._crit_edge44, label %bb.d

._crit_edge44:                                    ; preds = %bb.f
  %i.bz = getelementptr inbounds [4 x i8], ptr %.13845, i64 %i.bf
  %i.ca = add nuw nsw i32 %.146, 1                ; 2 uses
  %exitcond49.not = icmp eq i32 %i.ca, %i.ba
  br i1 %exitcond49.not, label %._crit_edge47.split, label %.preheader

._crit_edge47.split:                              ; preds = %._crit_edge44, %._crit_edge.thread, %._crit_edge
  %i.cb = phi ptr [ %i.bd, %._crit_edge.thread ], [ %i.az, %._crit_edge ], [ %i.az, %._crit_edge44 ] ; 2 uses
  %i.cc = phi ptr [ %i.bc, %._crit_edge.thread ], [ %i.ay, %._crit_edge ], [ %i.ay, %._crit_edge44 ]
  %.not.i = icmp eq ptr %i.cb, null
  br i1 %.not.i, label %sf_free.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge47.split
  tail call void @free(ptr noundef nonnull %i.cb) #25
  store ptr null, ptr %i.cc, align 8, !tbaa !33
  br label %sf_free.exit

sf_free.exit:                                     ; preds = %._crit_edge47.split, %bb.g
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.j, ptr %i.cd, align 8, !tbaa !48
  store ptr %0, ptr @set_family_garbage, align 8, !tbaa !47
  ret ptr %.0.i
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @sf_permute(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !34   ; 2 uses
  %i.c = load ptr, ptr @set_family_garbage, align 8, !tbaa !47 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #24
  br label %sf_new.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48   ; 2 uses
  store ptr %i.g, ptr @set_family_garbage, align 8, !tbaa !47
  br label %sf_new.exit

sf_new.exit:                                      ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ null, %bb.b ], [ %i.g, %bb.c ]
  %.0.i = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.c ] ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  store i32 %2, ptr %i.i, align 4, !tbaa !28
  %i.j = icmp slt i32 %2, 33                      ; 2 uses
  %i.k = add nsw i32 %2, -1
  %i.l = lshr i32 %i.k, 5                         ; 2 uses
  %i.m = add nuw nsw i32 %i.l, 2
  %i.n = select i1 %i.j, i32 2, i32 %i.m          ; 2 uses
  store i32 %i.n, ptr %.0.i, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %i.b, ptr %i.o, align 8, !tbaa !49
  %i.p = sext i32 %i.b to i64
  %i.q = shl nuw nsw i32 %i.n, 2
  %i.r = zext nneg i32 %i.q to i64
  %i.s = mul nsw i64 %i.r, %i.p
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store ptr %i.t, ptr %i.u, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 12 ; 2 uses
  store i32 0, ptr %i.v, align 4, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i32 0, ptr %i.w, align 8, !tbaa !40
  %i.x = load i32, ptr %i.a, align 4, !tbaa !34   ; 3 uses
  store i32 %i.x, ptr %i.v, align 4, !tbaa !34
  %i.y = load i32, ptr %.0.i, align 8, !tbaa !35  ; 3 uses
  %i.z = mul nsw i32 %i.y, %i.x                   ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %.idx = shl nuw nsw i64 %i.aa, 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx
  %i.ac = icmp sgt i32 %i.z, 0
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %sf_new.exit
  %i.ad = add nuw nsw i32 %i.l, 1
  %i.ae = select i1 %i.j, i32 1, i32 %i.ad        ; 3 uses
  %i.af = shl nuw nsw i32 %i.ae, 2
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = add nsw i32 %i.ae, -1
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 2                ; 2 uses
  %i.ak = sub nsw i64 %i.ag, %i.aj
  %i.al = add nuw nsw i64 %i.aj, 4
  %i.am = sext i32 %i.y to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.04445 = phi ptr [ %i.t, %.lr.ph ], [ %i.an, %bb.d ] ; 3 uses
  store i32 %i.ae, ptr %.04445, align 4, !tbaa !4
  %scevgep = getelementptr i8, ptr %.04445, i64 %i.ak
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.al, i1 false), !tbaa !4
  %i.an = getelementptr inbounds [4 x i8], ptr %.04445, i64 %i.am ; 2 uses
  %i.ao = icmp ult ptr %i.an, %i.ab
  br i1 %i.ao, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %sf_new.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !33 ; 5 uses
  %i.ar = load i32, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.as = mul nsw i32 %i.ar, %i.x                 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %.idx52 = shl nsw i64 %i.at, 2
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 %.idx52 ; 2 uses
  %i.av = icmp sgt i32 %i.as, 0
  br i1 %i.av, label %.preheader.lr.ph, label %._crit_edge51

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %i.aw = icmp sgt i32 %2, 0
  %i.ax = sext i32 %i.ar to i64                   ; 2 uses
  br i1 %i.aw, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.ay = sext i32 %i.y to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge48.us
  %.04350.us = phi ptr [ %i.bs, %._crit_edge48.us ], [ %i.t, %.preheader.us.preheader ] ; 2 uses
  %.149.us = phi ptr [ %i.bt, %._crit_edge48.us ], [ %i.aq, %.preheader.us.preheader ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader.us, %bb.g
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4  ; 2 uses
  %i.bb = ashr i32 %i.ba, 5
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr [4 x i8], ptr %.149.us, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = and i32 %i.ba, 31
  %i.bh = shl nuw i32 1, %i.bg
  %i.bi = and i32 %i.bh, %i.bf
  %.not.us = icmp eq i32 %i.bi, 0
  br i1 %.not.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = trunc nuw nsw i64 %indvars.iv to i32
  %i.bk = and i32 %i.bj, 31
  %i.bl = shl nuw i32 1, %i.bk
  %i.bm = lshr i64 %indvars.iv, 5
  %i.bn = and i64 %i.bm, 134217727
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.04350.us, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4
  %i.br = or i32 %i.bq, %i.bl
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge48.us, label %bb.e

._crit_edge48.us:                                 ; preds = %bb.g
  %i.bs = getelementptr inbounds [4 x i8], ptr %.04350.us, i64 %i.ay
  %i.bt = getelementptr inbounds [4 x i8], ptr %.149.us, i64 %i.ax ; 2 uses
  %i.bu = icmp ult ptr %i.bt, %i.au
  br i1 %i.bu, label %.preheader.us, label %._crit_edge51

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.149 = phi ptr [ %i.bv, %.preheader ], [ %i.aq, %.preheader.lr.ph ]
  %i.bv = getelementptr inbounds [4 x i8], ptr %.149, i64 %i.ax ; 2 uses
  %i.bw = icmp ult ptr %i.bv, %i.au
  br i1 %i.bw, label %.preheader, label %._crit_edge51

._crit_edge51:                                    ; preds = %.preheader, %._crit_edge48.us, %._crit_edge
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %sf_free.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge51
  tail call void @free(ptr noundef nonnull %i.aq) #25
  store ptr null, ptr %i.ap, align 8, !tbaa !33
  br label %sf_free.exit

sf_free.exit:                                     ; preds = %._crit_edge51, %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.h, ptr %i.bx, align 8, !tbaa !48
  store ptr %0, ptr @set_family_garbage, align 8, !tbaa !47
  ret ptr %.0.i
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind }
attributes #26 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = !{!"llvm.loop.unroll.runtime.disable"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9, !10}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9, !10}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9, !10}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9, !10}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9, !10}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9, !10}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9, !10}
!27 = distinct !{!27, !9}
!28 = !{!29, !5, i64 4}
!29 = !{!"set_family", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !30, i64 24, !32, i64 32}
!30 = !{!"p1 int", !31, i64 0}
!31 = !{!"any pointer", !6, i64 0}
!32 = !{!"p1 _ZTS10set_family", !31, i64 0}
!33 = !{!29, !30, i64 24}
!34 = !{!29, !5, i64 12}
end_hunk_1
