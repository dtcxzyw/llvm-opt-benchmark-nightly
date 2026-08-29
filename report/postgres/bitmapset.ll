Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/bitmapset?download=true
inline.NumInlined: 27
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@bms_add_members:bb.a
  %scevgep = getelementptr i8, ptr %.022, i64 %i.v
  %scevgep32 = getelementptr i8, ptr %.021, i64 %i.v
  %bound0 = icmp ult ptr %i.t, %scevgep32
  %bound1 = icmp ult ptr %i.s, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <2 x i64>, ptr %i.w, align 8, !alias.scope !46
  %wide.load33 = load <2 x i64>, ptr %i.x, align 8, !alias.scope !46
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %wide.load34 = load <2 x i64>, ptr %i.y, align 8, !alias.scope !49, !noalias !46
  %wide.load35 = load <2 x i64>, ptr %i.z, align 8, !alias.scope !49, !noalias !46
  %i.aa = or <2 x i64> %wide.load34, %wide.load
  %i.ab = or <2 x i64> %wide.load35, %wide.load33
  store <2 x i64> %i.aa, ptr %i.y, align 8, !alias.scope !49, !noalias !46
  store <2 x i64> %i.ab, ptr %i.z, align 8, !alias.scope !49, !noalias !46
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.f, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.f ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.prol
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.prol ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = or i64 %i.ag, %i.ae
  store i64 %i.ah, ptr %i.af, align 8
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !52

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ai = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.aj = icmp ugt i64 %i.ai, -4
  br i1 %i.aj, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv ; 2 uses
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = or i64 %i.an, %i.al
  store i64 %i.ao, ptr %i.am, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = or i64 %i.as, %i.aq
  store i64 %i.at, ptr %i.ar, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.1
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.1 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = or i64 %i.ax, %i.av
  store i64 %i.ay, ptr %i.aw, align 8
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.2
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.2 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = or i64 %i.bc, %i.ba
  store i64 %i.bd, ptr %i.bb, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !53

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.not = icmp eq ptr %.022, %0
  br i1 %.not, label %bms_copy.exit, label %bb.g

bb.g:                                             ; preds = %.loopexit
  tail call void @pfree(ptr noundef nonnull %0) #10
  br label %bms_copy.exit

bms_copy.exit:                                    ; preds = %bb.c, %bb.b, %.loopexit, %bb.g, %bb.d
  %.023 = phi ptr [ %.022, %.loopexit ], [ %0, %bb.d ], [ %.022, %bb.g ], [ %i.h, %bb.c ], [ null, %bb.b ]
  ret ptr %.023
}

; Function Attrs: nounwind uwtable
define dso_local ptr @bms_replace_members(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bms_copy.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 3
  %i.g = add nsw i64 %i.f, 8                      ; 2 uses
  %i.h = tail call ptr @palloc(i64 noundef %i.g) #10 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.h, ptr nonnull readonly align 8 %1, i64 %i.g, i1 false)
  br label %bms_copy.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @pfree(ptr noundef nonnull %0) #10
  br label %bms_copy.exit

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = icmp slt i32 %i.j, %i.l
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = sext i32 %i.l to i64
  %i.o = shl nsw i64 %i.n, 3
  %i.p = add nsw i64 %i.o, 8
  %i.q = tail call ptr @repalloc(ptr noundef nonnull %0, i64 noundef %i.p) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.018 = phi ptr [ %i.q, %bb.g ], [ %0, %bb.f ]  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %.018, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %bb.h ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  store i64 %i.u, ptr %i.v, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = load i32, ptr %i.k, align 4              ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %bb.i, label %bb.j, !llvm.loop !54

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %.018, i64 4
  store i32 %i.w, ptr %i.z, align 4
  br label %bms_copy.exit

bms_copy.exit:                                    ; preds = %bb.c, %bb.b, %bb.j, %bb.e
  %.017 = phi ptr [ %.018, %bb.j ], [ null, %bb.e ], [ %i.h, %bb.c ], [ null, %bb.b ]
  ret ptr %.017
}

; Function Attrs: nounwind uwtable
define dso_local ptr @bms_add_range(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %2, %1
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.d = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1024, ptr noundef nonnull @__func__.bms_add_range) #10
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = sdiv i32 %2, 64                          ; 8 uses
  %i.f = srem i32 %2, 64
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = add nsw i32 %i.e, 1                      ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = add nsw i64 %i.j, 8
  %i.l = tail call ptr @palloc0(i64 noundef %i.k) #10 ; 3 uses
  store i32 466, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %i.h, ptr %i.m, align 4
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %.not = icmp slt i32 %i.e, %i.o
  br i1 %.not, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = add nsw i32 %i.e, 1                      ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 3
  %i.s = add nsw i64 %i.r, 8
  %i.t = tail call ptr @repalloc(ptr noundef nonnull %0, i64 noundef %i.s) #10 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  store i32 %i.p, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = sext i32 %i.o to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ %i.w, %bb.g ] ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv
  store i64 0, ptr %i.x, align 8
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.y = load i32, ptr %i.u, align 4
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.aa, label %bb.h, label %.loopexit, !llvm.loop !55

.loopexit:                                        ; preds = %bb.h, %bb.f, %bb.e
  %.044 = phi ptr [ %i.l, %bb.e ], [ %0, %bb.f ], [ %i.t, %bb.h ] ; 5 uses
  %i.ab = lshr i32 %1, 6                          ; 4 uses
  %i.ac = and i32 %1, 63
  %i.ad = sub nuw nsw i32 63, %i.f                ; 2 uses
  %i.ae = icmp eq i32 %i.ab, %i.e
  %i.af = zext nneg i32 %i.ac to i64
  %notmask51 = shl nsw i64 -1, %i.af              ; 2 uses
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit
  %i.ag = zext nneg i32 %i.ad to i64
  %i.ah = lshr i64 -1, %i.ag
  %i.ai = and i64 %i.ah, %notmask51
  %i.aj = getelementptr inbounds nuw i8, ptr %.044, i64 8
  %i.ak = zext nneg i32 %i.e to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8
  %i.an = or i64 %i.am, %i.ai
  store i64 %i.an, ptr %i.al, align 8
  br label %bb.k

bb.j:                                             ; preds = %.loopexit
  %i.ao = getelementptr inbounds nuw i8, ptr %.044, i64 8 ; 2 uses
  %i.ap = zext nneg i32 %i.ab to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = or i64 %i.ar, %notmask51
  store i64 %i.as, ptr %i.aq, align 8
  %.04252 = add nuw nsw i32 %i.ab, 1
  %i.at = icmp slt i32 %.04252, %i.e
  br i1 %i.at, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.au = lshr i32 %1, 3
  %i.av = and i32 %i.au, 268435448
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr i8, ptr %.044, i64 %i.aw
  %scevgep = getelementptr i8, ptr %i.ax, i64 16
  %i.ay = add nsw i32 %i.e, -2
  %i.az = sub nsw i32 %i.ay, %i.ab
  %i.ba = zext i32 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 3
  %i.bc = add nuw nsw i64 %i.bb, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 -1, i64 %i.bc, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.j
  %i.bd = zext nneg i32 %i.ad to i64
  %i.be = lshr i64 -1, %i.bd
  %i.bf = sext i32 %i.e to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.bf ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = or i64 %i.bh, %i.be
  store i64 %i.bi, ptr %i.bg, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %._crit_edge, %bb.a
  %.043 = phi ptr [ %0, %bb.a ], [ %.044, %._crit_edge ], [ %.044, %bb.i ]
  ret ptr %.043
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @bms_int_members(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @pfree(ptr noundef nonnull %0) #10
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %. = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.f) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %., i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64   ; 6 uses
  %min.iters.check = icmp slt i32 %., 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.d
  %i.i = shl nuw nsw i64 %wide.trip.count, 3
  %i.j = add nuw nsw i64 %i.i, 8                  ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.j
  %scevgep30 = getelementptr i8, ptr %1, i64 %i.j
  %bound0 = icmp ult ptr %i.h, %scevgep30
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i32> [ splat (i32 -2147483648), %vector.ph ], [ %i.s, %vector.body ]
  %vec.phi31 = phi <2 x i32> [ splat (i32 -2147483648), %vector.ph ], [ %i.t, %vector.body ]
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <2 x i64>, ptr %i.k, align 8, !alias.scope !56
  %wide.load32 = load <2 x i64>, ptr %i.l, align 8, !alias.scope !56
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %wide.load33 = load <2 x i64>, ptr %i.m, align 8, !alias.scope !59, !noalias !56
  %wide.load34 = load <2 x i64>, ptr %i.n, align 8, !alias.scope !59, !noalias !56
  %i.o = and <2 x i64> %wide.load33, %wide.load   ; 2 uses
  %i.p = and <2 x i64> %wide.load34, %wide.load32 ; 2 uses
  store <2 x i64> %i.o, ptr %i.m, align 8, !alias.scope !59, !noalias !56
  store <2 x i64> %i.p, ptr %i.n, align 8, !alias.scope !59, !noalias !56
  %i.q = icmp eq <2 x i64> %i.o, zeroinitializer
  %i.r = icmp eq <2 x i64> %i.p, zeroinitializer
  %i.s = select <2 x i1> %i.q, <2 x i32> %vec.phi, <2 x i32> %vec.ind ; 2 uses
  %i.t = select <2 x i1> %i.r, <2 x i32> %vec.phi31, <2 x i32> %step.add ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.s, <2 x i32> %i.t)
  %i.v = tail call i32 @llvm.vector.reduce.smax.v2i32(<2 x i32> %rdx.minmax) ; 2 uses
  %.not35 = icmp eq i32 %i.v, -2147483648
  %i.w = select i1 %.not35, i32 -1, i32 %i.v      ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.d, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.d ], [ %n.vec, %middle.block ] ; 6 uses
  %.021.ph = phi i32 [ -1, %vector.memcheck ], [ -1, %bb.d ], [ %i.w, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.ph
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.ph ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = and i64 %i.aa, %i.y                     ; 2 uses
  store i64 %i.ab, ptr %i.z, align 8
  %.not.prol = icmp eq i64 %i.ab, 0
  %i.ac = trunc nuw nsw i64 %indvars.iv.ph to i32
  %spec.select.prol = select i1 %.not.prol, i32 %.021.ph, i32 %i.ac ; 2 uses
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %spec.select.lcssa36.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %spec.select.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.021.unr = phi i32 [ %.021.ph, %scalar.ph.preheader ], [ %spec.select.prol, %scalar.ph.prol ]
  %i.ad = add nsw i64 %wide.trip.count, -1
  %i.ae = icmp eq i64 %indvars.iv.ph, %i.ad
  br i1 %i.ae, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.021 = phi i32 [ %spec.select.1, %scalar.ph ], [ %.021.unr, %scalar.ph.prol.loopexit ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = and i64 %i.ai, %i.ag                    ; 2 uses
  store i64 %i.aj, ptr %i.ah, align 8
  %.not = icmp eq i64 %i.aj, 0
  %i.ak = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %.not, i32 %.021, i32 %i.ak
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8
end_hunk_0
