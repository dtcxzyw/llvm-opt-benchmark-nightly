inline.NumInlined: 29
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@sf_inactive:bb.a
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
  %2 = sext i32 %i.n to i64                       ; 5 uses
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
  %xtraiter58 = and i64 %2, 7
  %3 = and i32 %i.n, 7
  %lcmp.mod59.not = icmp eq i32 %3, 0
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
  %i.z = mul nsw i32 %i.f, %i.e                   ; 4 uses
  %2 = sext i32 %i.z to i64                       ; 5 uses
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
  %xtraiter = and i64 %2, 7
  %3 = and i32 %i.z, 7
  %lcmp.mod.not = icmp eq i32 %3, 0
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
