Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/sp_int?download=true
inline.NumInlined: 293
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 75
begin_hunk_0_@sp_set_bit:bb.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define range(i32 -98, 1) i32 @sp_2expt(ptr nofree noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp sgt i32 %1, -1
  %or.cond.not = and i1 %i.a, %i.b
  br i1 %or.cond.not, label %bb.b, label %sp_set_bit.exit

bb.b:                                             ; preds = %bb.a
  store volatile i16 0, ptr %0, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store volatile i64 0, ptr %i.c, align 8, !tbaa !36
  %i.d = lshr i32 %1, 6                           ; 4 uses
  %i.e = icmp samesign ugt i32 %1, 8256
  br i1 %i.e, label %sp_set_bit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !39
  %i.h = zext i16 %i.g to i32
  %.not.i = icmp samesign ult i32 %i.d, %i.h
  br i1 %.not.i, label %bb.d, label %sp_set_bit.exit

bb.d:                                             ; preds = %bb.c
  %i.i = and i32 %1, 63
  %i.j = shl nuw nsw i32 %i.d, 3
  %narrow.i = add nuw nsw i32 %i.j, 8
  %i.k = zext nneg i32 %narrow.i to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, i8 0, i64 %i.k, i1 false), !tbaa !36
  %i.l = zext nneg i32 %i.i to i64
  %i.m = shl nuw i64 1, %i.l
  %i.n = zext nneg i32 %i.d to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.n ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !36
  %i.q = or i64 %i.p, %i.m
  store i64 %i.q, ptr %i.o, align 8, !tbaa !36
  %i.r = trunc nuw i32 %i.d to i16
  %i.s = add nuw nsw i16 %i.r, 1
  store i16 %i.s, ptr %0, align 8, !tbaa !40
  br label %sp_set_bit.exit

sp_set_bit.exit:                                  ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -98, %bb.a ], [ 0, %bb.d ], [ -98, %bb.c ], [ -98, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -98, 1) i32 @sp_set(ptr nofree noundef writeonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !36
  %i.b = icmp ne i64 %1, 0
  %i.c = zext i1 %i.b to i16
  store i16 %i.c, ptr %0, align 8, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %spec.store.select = phi i32 [ 0, %bb.b ], [ -98, %bb.a ]
  ret i32 %spec.store.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -98, 1) i32 @sp_set_int(ptr nofree noundef writeonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !36
  %i.b = icmp ne i64 %1, 0
  %i.c = zext i1 %i.b to i16
  store i16 %i.c, ptr %0, align 8, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %spec.store.select = phi i32 [ 0, %bb.b ], [ -98, %bb.a ]
  ret i32 %spec.store.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -1, 2) i32 @sp_cmp_d(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.c = icmp ugt i16 %i.b, 1
  br i1 %i.c, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i16 %i.b, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not = icmp ne i64 %1, 0
  %spec.select = sext i1 %.not to i32
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %i.g = icmp ugt i64 %i.f, %1
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = icmp ult i64 %i.f, %1
  %spec.select12 = sext i1 %i.h to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.e, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.e ], [ -1, %bb.a ], [ 1, %bb.b ], [ %spec.select12, %bb.f ], [ %spec.select, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -98, 1) i32 @sp_add_d(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne ptr %2, null
  %or.cond.not = and i1 %i.c, %i.d
  br i1 %or.cond.not, label %bb.b, label %_sp_add_d.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr %0, align 8, !tbaa !40     ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !39   ; 2 uses
  %.not = icmp ult i16 %i.e, %i.g
  br i1 %.not, label %.thread, label %_sp_add_d.exit

.thread:                                          ; preds = %bb.b
  %i.h = icmp eq i16 %i.e, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %1, ptr %i.i, align 8, !tbaa !36
  %i.j = icmp ne i64 %1, 0
  %i.k = zext i1 %i.j to i16
  store i16 %i.k, ptr %2, align 8, !tbaa !40
  br label %_sp_add_d.exit

bb.d:                                             ; preds = %.thread
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !36   ; 2 uses
  store i16 %i.e, ptr %2, align 8, !tbaa !40
  %i.n = add i64 %i.m, %1                         ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  store i64 %i.n, ptr %i.o, align 8, !tbaa !36
  %i.p = icmp ult i64 %i.n, %i.m
  br i1 %i.p, label %.preheader51.i, label %bb.g

.preheader51.i:                                   ; preds = %bb.d
  %i.q = load i16, ptr %0, align 8, !tbaa !40     ; 5 uses
  %i.r = zext i16 %i.q to i32                     ; 2 uses
  %i.s = icmp ugt i16 %i.q, 1
  br i1 %i.s, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader51.i
  %wide.trip.count.i = zext i16 %i.q to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 4 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.u = load i64, ptr %i.t, align 8, !tbaa !36
  %i.v = add i64 %i.u, 1                          ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i
  store i64 %i.v, ptr %i.w, align 8, !tbaa !36
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %bb.e, label %._crit_edge.loopexit.i

bb.e:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i, !llvm.loop !4

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.x = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader51.i
  %.0.lcssa.i = phi i32 [ 1, %.preheader51.i ], [ %i.x, %._crit_edge.loopexit.i ] ; 2 uses
  %i.y = icmp eq i32 %.0.lcssa.i, %i.r
  br i1 %i.y, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %bb.e, %._crit_edge.i
  %i.z = icmp ult i16 %i.q, %i.g
  br i1 %i.z, label %bb.f, label %_sp_add_d.exit

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.aa = add i16 %i.e, 1
  store i16 %i.aa, ptr %2, align 8, !tbaa !40
  %i.ab = zext i16 %i.q to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ab
  store i64 1, ptr %i.ac, align 8, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i, %bb.d
  %.1.i = phi i32 [ %i.r, %bb.f ], [ 0, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.not44.i = icmp eq ptr %2, %0
  br i1 %.not44.i, label %_sp_add_d.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g
  %i.ad = load i16, ptr %0, align 8, !tbaa !40
  %i.ae = zext i16 %i.ad to i32                   ; 5 uses
  %.257.i = add nuw i32 %.1.i, 1                  ; 2 uses
  %i.af = icmp ult i32 %.257.i, %i.ae
  br i1 %i.af, label %.lr.ph59.preheader.i, label %_sp_add_d.exit

.lr.ph59.preheader.i:                             ; preds = %.preheader.i
  %i.ag = zext nneg i32 %.257.i to i64            ; 3 uses
  %i.ah = add nsw i32 %i.ae, -2
  %i.ai = sub i32 %i.ah, %.1.i                    ; 2 uses
  %i.aj = zext i32 %i.ai to i64
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ai, 7
  %i.al = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.al, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph59.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph59.preheader.i
  %n.vec = and i64 %i.ak, 8589934588              ; 3 uses
  %i.am = add nuw nsw i64 %n.vec, %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = add nuw i64 %index, %i.ag               ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load = load <2 x i64>, ptr %i.ao, align 8, !tbaa !36
  %wide.load25 = load <2 x i64>, ptr %i.ap, align 8, !tbaa !36
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.an ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <2 x i64> %wide.load, ptr %i.aq, align 8, !tbaa !36
  store <2 x i64> %wide.load25, ptr %i.ar, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_sp_add_d.exit, label %.lr.ph59.i.preheader

.lr.ph59.i.preheader:                             ; preds = %.lr.ph59.preheader.i, %middle.block
  %indvars.iv62.i.ph = phi i64 [ %i.ag, %.lr.ph59.preheader.i ], [ %i.am, %middle.block ] ; 3 uses
  %i.at = trunc i64 %indvars.iv62.i.ph to i32     ; 2 uses
  %i.au = sub i32 %i.ae, %i.at
  %xtraiter = and i32 %i.au, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph59.i.prol.loopexit, label %.lr.ph59.i.prol

.lr.ph59.i.prol:                                  ; preds = %.lr.ph59.i.preheader, %.lr.ph59.i.prol
  %indvars.iv62.i.prol = phi i64 [ %indvars.iv.next63.i.prol, %.lr.ph59.i.prol ], [ %indvars.iv62.i.ph, %.lr.ph59.i.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph59.i.prol ], [ 0, %.lr.ph59.i.preheader ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv62.i.prol
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !36
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv62.i.prol
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !36
  %indvars.iv.next63.i.prol = add nuw nsw i64 %indvars.iv62.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph59.i.prol.loopexit, label %.lr.ph59.i.prol, !llvm.loop !74

.lr.ph59.i.prol.loopexit:                         ; preds = %.lr.ph59.i.prol, %.lr.ph59.i.preheader
  %indvars.iv62.i.unr = phi i64 [ %indvars.iv62.i.ph, %.lr.ph59.i.preheader ], [ %indvars.iv.next63.i.prol, %.lr.ph59.i.prol ]
  %i.ay = sub i32 %i.at, %i.ae
  %i.az = icmp ugt i32 %i.ay, -4
  br i1 %i.az, label %_sp_add_d.exit, label %.lr.ph59.i

.lr.ph59.i:                                       ; preds = %.lr.ph59.i.prol.loopexit, %.lr.ph59.i
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i.3, %.lr.ph59.i ], [ %indvars.iv62.i.unr, %.lr.ph59.i.prol.loopexit ] ; 6 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv62.i
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !36
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv62.i
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !36
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next63.i
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !36
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next63.i
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !36
  %indvars.iv.next63.i.1 = add nuw nsw i64 %indvars.iv62.i, 2 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next63.i.1
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !36
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next63.i.1
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !36
  %indvars.iv.next63.i.2 = add nuw nsw i64 %indvars.iv62.i, 3 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next63.i.2
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !36
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next63.i.2
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !36
  %indvars.iv.next63.i.3 = add nuw nsw i64 %indvars.iv62.i, 4 ; 2 uses
  %lftr.wideiv.i.3 = trunc i64 %indvars.iv.next63.i.3 to i32
  %exitcond65.not.i.3 = icmp eq i32 %lftr.wideiv.i.3, %i.ae
  br i1 %exitcond65.not.i.3, label %_sp_add_d.exit, label %.lr.ph59.i, !llvm.loop !75

_sp_add_d.exit:                                   ; preds = %.lr.ph59.i.prol.loopexit, %.lr.ph59.i, %middle.block, %bb.a, %bb.b, %.preheader.i, %bb.g, %._crit_edge.thread.i, %bb.c
  %.1 = phi i32 [ -98, %bb.a ], [ -98, %bb.b ], [ 0, %bb.c ], [ -98, %._crit_edge.thread.i ], [ 0, %bb.g ], [ 0, %.preheader.i ], [ 0, %middle.block ], [ 0, %.lr.ph59.i ], [ 0, %.lr.ph59.i.prol.loopexit ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -98, 1) i32 @sp_sub_d(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne ptr %2, null
  %or.cond.not = and i1 %i.c, %i.d
  br i1 %or.cond.not, label %bb.b, label %_sp_sub_d.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr %0, align 8, !tbaa !40     ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !39
  %i.h = icmp ugt i16 %i.e, %i.g
  br i1 %i.h, label %_sp_sub_d.exit, label %.thread

.thread:                                          ; preds = %bb.b
  store i16 %i.e, ptr %2, align 8, !tbaa !40
  %i.i = icmp eq i16 %i.e, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !36
  br label %_sp_sub_d.exit

bb.d:                                             ; preds = %.thread
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !36   ; 2 uses
  %i.m = sub i64 %i.l, %1
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !36
  %i.o = icmp ugt i64 %1, %i.l
  br i1 %i.o, label %.preheader43.i, label %.loopexit44.i

.preheader43.i:                                   ; preds = %bb.d
  %i.p = zext i16 %i.e to i32
  %.not51.i = icmp eq i16 %i.e, 1
  br i1 %.not51.i, label %.loopexit44.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader43.i
  %wide.trip.count.i = zext i16 %i.e to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.r = load i64, ptr %i.q, align 8, !tbaa !36   ; 2 uses
  %i.s = add i64 %i.r, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i
  store i64 %i.s, ptr %i.t, align 8, !tbaa !36
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %bb.e, label %.loopexit44.loopexit.split.loop.exit62.i

bb.e:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit44.loopexit.i, label %.lr.ph.i, !llvm.loop !5

.loopexit44.loopexit.split.loop.exit62.i:         ; preds = %.lr.ph.i
  %i.u = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.loopexit44.loopexit.i

.loopexit44.loopexit.i:                           ; preds = %bb.e, %.loopexit44.loopexit.split.loop.exit62.i
  %.1.ph.i = phi i32 [ %i.u, %.loopexit44.loopexit.split.loop.exit62.i ], [ %i.p, %bb.e ]
  %i.v = add nuw i32 %.1.ph.i, 1
  br label %.loopexit44.i

.loopexit44.i:                                    ; preds = %.loopexit44.loopexit.i, %.preheader43.i, %bb.d
  %.1.i = phi i32 [ 1, %bb.d ], [ 2, %.preheader43.i ], [ %i.v, %.loopexit44.loopexit.i ] ; 3 uses
  %.not40.i = icmp eq ptr %2, %0
  br i1 %.not40.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit44.i
  %i.w = zext i16 %i.e to i32                     ; 5 uses
  %i.x = icmp ult i32 %.1.i, %i.w
  br i1 %i.x, label %.lr.ph50.preheader.i, label %.loopexit.i

.lr.ph50.preheader.i:                             ; preds = %.preheader.i
  %i.y = zext nneg i32 %.1.i to i64               ; 3 uses
  %i.z = xor i32 %.1.i, -1
  %i.aa = add i32 %i.z, %i.w                      ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.aa, 7
  %i.ad = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.ad, -32
  %or.cond = or i1 %min.iters.check, %diff.check
end_hunk_0
begin_hunk_1_@_sp_div:bb.a
  %i.ed = add nsw i32 %.234.i182, -1              ; 2 uses
  %i.ee = shl nuw i64 %.035.i181, 1               ; 2 uses
  %i.ef = icmp sgt i64 %i.ee, -1
  br i1 %i.ef, label %.lr.ph36.i180, label %sp_count_bits.exit183, !llvm.loop !3

sp_count_bits.exit183:                            ; preds = %bb.aa, %.lr.ph36.i180, %bb.y, %.lr.ph.preheader.i178, %bb.ac
  %.5.i173 = phi i32 [ %i.eb, %bb.ac ], [ %i.ed, %.lr.ph36.i180 ], [ %i.ea, %.lr.ph.preheader.i178 ], [ 0, %bb.y ], [ 0, %bb.aa ]
  %i.eg = and i32 %.5.i173, 63                    ; 3 uses
  %i.eh = sub nuw nsw i32 64, %i.eg               ; 5 uses
  %i.ei = icmp eq i16 %i.e, 0
  br i1 %i.ei, label %_sp_copy.exit185.thread, label %_sp_copy.exit185

_sp_copy.exit185:                                 ; preds = %sp_count_bits.exit183
  %i.ej = zext i16 %i.e to i64                    ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.el = shl nuw nsw i64 %i.ej, 3                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.de, ptr nonnull readonly align 8 %i.ek, i64 %i.el, i1 false)
  store i16 %i.e, ptr %i.dc, align 8, !tbaa !40
  %.not140 = icmp eq i32 %i.eg, 0
  br i1 %.not140, label %thread-pre-split, label %bb.ad

_sp_copy.exit185.thread:                          ; preds = %sp_count_bits.exit183
  store i64 0, ptr %i.de, align 8, !tbaa !36
  store i16 0, ptr %i.dc, align 8, !tbaa !40
  %.not140247 = icmp eq i32 %i.eg, 0
  br i1 %.not140247, label %thread-pre-split, label %.thread248

bb.ad:                                            ; preds = %_sp_copy.exit185
  %i.em = zext i16 %i.e to i32                    ; 4 uses
  %i.en = trunc nuw nsw i32 %i.eh to i16
  %i.eo = lshr i16 %i.en, 6                       ; 5 uses
  %i.ep = and i32 %i.eh, 63                       ; 3 uses
  %.not54.i = icmp eq i32 %i.ep, 0
  %i.eq = zext nneg i16 %i.eo to i32              ; 7 uses
  %i.er = add nuw nsw i32 %i.em, %i.eq            ; 2 uses
  br i1 %.not54.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not55.i187 = icmp samesign ult i32 %i.er, %4
  br i1 %.not55.i187, label %.thread73.i, label %sp_lshb.exit.thread253

.thread73.i:                                      ; preds = %bb.ae
  %i.es = add nsw i32 %i.em, -1                   ; 2 uses
  %i.et = zext nneg i32 %i.es to i64              ; 10 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.et
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !36
  %i.ew = sub nuw nsw i32 64, %i.ep
  %i.ex = zext nneg i32 %i.ew to i64              ; 5 uses
  %i.ey = lshr i64 %i.ev, %i.ex                   ; 2 uses
  %.not5883.i = icmp eq i32 %i.es, 0
  %.pre.i189 = zext nneg i32 %i.ep to i64         ; 5 uses
  br i1 %.not5883.i, label %._crit_edge.i191, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.thread73.i
  %min.iters.check = icmp ult i16 %i.e, 23
  br i1 %min.iters.check, label %.lr.ph.i.preheader476, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.preheader
  %i.ez = add nsw i64 %i.et, -1                   ; 2 uses
  %i.fa = add nuw nsw i32 %i.eq, %i.em
  %i.fb = add nsw i32 %i.fa, -1
  %i.fc = trunc nsw i64 %i.ez to i32
  %i.fd = icmp ult i32 %i.fb, %i.fc
  %i.fe = icmp ugt i64 %i.ez, 4294967295
  %i.ff = or i1 %i.fd, %i.fe
  br i1 %i.ff, label %.lr.ph.i.preheader476, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.fg = shl nuw nsw i64 %i.et, 3                ; 2 uses
  %i.fh = add nuw nsw i32 %i.eq, %i.em
  %i.fi = add nsw i32 %i.fh, -1
  %i.fj = zext i32 %i.fi to i64
  %i.fk = shl nuw nsw i64 %i.fj, 3                ; 2 uses
  %i.fl = sub nsw i64 %i.fk, %i.fg
  %diff.check = icmp ugt i64 %i.fl, -32
  %i.fm = sub nsw i64 %i.fg, %i.fk
  %i.fn = add nsw i64 %i.fm, -9
  %diff.check420 = icmp ult i64 %i.fn, 31
  %conflict.rdx = or i1 %diff.check, %diff.check420
  br i1 %conflict.rdx, label %.lr.ph.i.preheader476, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.et, 2147483644              ; 2 uses
  %i.fo = and i64 %i.et, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.pre.i189, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert421 = insertelement <2 x i64> poison, i64 %i.ex, i64 0
  %broadcast.splat422 = shufflevector <2 x i64> %broadcast.splatinsert421, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fp = sub i64 %i.et, %index                   ; 3 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.fp ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 -8
  %i.fs = getelementptr inbounds i8, ptr %i.fq, i64 -24
  %wide.load = load <2 x i64>, ptr %i.fr, align 8, !tbaa !36
  %wide.load423 = load <2 x i64>, ptr %i.fs, align 8, !tbaa !36
  %i.ft = shl <2 x i64> %wide.load, %broadcast.splat
  %i.fu = shl <2 x i64> %wide.load423, %broadcast.splat
  %i.fv = getelementptr [8 x i8], ptr %i.dc, i64 %i.fp ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 -8
  %i.fx = getelementptr i8, ptr %i.fv, i64 -24
  %wide.load424 = load <2 x i64>, ptr %i.fw, align 8, !tbaa !36
  %wide.load425 = load <2 x i64>, ptr %i.fx, align 8, !tbaa !36
  %i.fy = lshr <2 x i64> %wide.load424, %broadcast.splat422
  %i.fz = lshr <2 x i64> %wide.load425, %broadcast.splat422
  %i.ga = or <2 x i64> %i.fy, %i.ft
  %i.gb = or <2 x i64> %i.fz, %i.fu
  %i.gc = trunc nuw i64 %i.fp to i32
  %i.gd = add i32 %i.gc, %i.eq
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.ge ; 2 uses
  %i.gg = getelementptr inbounds i8, ptr %i.gf, i64 -8
  %i.gh = getelementptr inbounds i8, ptr %i.gf, i64 -24
  store <2 x i64> %i.ga, ptr %i.gg, align 8, !tbaa !36
  store <2 x i64> %i.gb, ptr %i.gh, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.et
  br i1 %cmp.n, label %._crit_edge.i191, label %.lr.ph.i.preheader476

.lr.ph.i.preheader476:                            ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i190.ph = phi i64 [ %i.et, %vector.memcheck ], [ %i.et, %vector.scevcheck ], [ %i.et, %.lr.ph.i.preheader ], [ %i.fo, %middle.block ] ; 7 uses
  %xtraiter = and i64 %indvars.iv.i190.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader476
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv.i190.ph
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !36
  %i.gl = shl i64 %i.gk, %.pre.i189
  %i.gm = add nsw i64 %indvars.iv.i190.ph, -1
  %i.gn = getelementptr [8 x i8], ptr %i.dc, i64 %indvars.iv.i190.ph
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !36
  %i.gp = lshr i64 %i.go, %i.ex
  %i.gq = or i64 %i.gp, %i.gl
  %i.gr = trunc nuw nsw i64 %indvars.iv.i190.ph to i32
  %i.gs = add nuw i32 %i.gr, %i.eq
  %i.gt = zext i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.gt
  store i64 %i.gq, ptr %i.gu, align 8, !tbaa !36
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader476
  %indvars.iv.i190.unr = phi i64 [ %indvars.iv.i190.ph, %.lr.ph.i.preheader476 ], [ %i.gm, %.lr.ph.i.prol ]
  %i.gv = icmp eq i64 %indvars.iv.i190.ph, 1
  br i1 %i.gv, label %._crit_edge.i191, label %.lr.ph.i

bb.af:                                            ; preds = %bb.ad
  %.not82.i = icmp samesign ugt i32 %i.er, %4
  br i1 %.not82.i, label %sp_lshb.exit.thread253, label %bb.ah

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i190 = phi i64 [ %i.hl, %.lr.ph.i ], [ %indvars.iv.i190.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv.i190
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !36
  %i.gy = shl i64 %i.gx, %.pre.i189
  %i.gz = add nsw i64 %indvars.iv.i190, -1        ; 2 uses
  %i.ha = getelementptr [8 x i8], ptr %i.dc, i64 %indvars.iv.i190
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !36
  %i.hc = lshr i64 %i.hb, %i.ex
  %i.hd = or i64 %i.hc, %i.gy
  %i.he = trunc nuw i64 %indvars.iv.i190 to i32
  %i.hf = add i32 %i.he, %i.eq
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.hg
  store i64 %i.hd, ptr %i.hh, align 8, !tbaa !36
  %i.hi = getelementptr [8 x i8], ptr %i.dc, i64 %indvars.iv.i190
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !36
  %i.hk = shl i64 %i.hj, %.pre.i189
  %i.hl = add nsw i64 %indvars.iv.i190, -2        ; 2 uses
  %i.hm = getelementptr [8 x i8], ptr %i.dc, i64 %i.gz
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !36
  %i.ho = lshr i64 %i.hn, %i.ex
  %i.hp = or i64 %i.ho, %i.hk
  %i.hq = trunc nuw i64 %i.gz to i32
  %i.hr = add i32 %i.hq, %i.eq
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.hs
  store i64 %i.hp, ptr %i.ht, align 8, !tbaa !36
  %.not58.wide.i.1 = icmp eq i64 %i.hl, 0
  br i1 %.not58.wide.i.1, label %._crit_edge.i191, label %.lr.ph.i, !llvm.loop !109

._crit_edge.i191:                                 ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %.thread73.i
  %i.hu = load i64, ptr %i.de, align 8, !tbaa !36
  %i.hv = shl i64 %i.hu, %.pre.i189
  %i.hw = zext nneg i16 %i.eo to i64              ; 2 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.hw
  store i64 %i.hv, ptr %i.hx, align 8, !tbaa !36
  %.not59.i = icmp eq i64 %i.ey, 0
  br i1 %.not59.i, label %.thread70.i, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.i191
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.ej
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.hw
  store i64 %i.ey, ptr %i.hz, align 8, !tbaa !36
  %i.ia = add i16 %i.e, 1
  br label %.thread70.i

bb.ah:                                            ; preds = %bb.af
  %i.ib = zext nneg i16 %i.eo to i64
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.ib
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ic, ptr nonnull align 8 %i.de, i64 %i.el, i1 false)
  br label %.thread70.i

.thread70.i:                                      ; preds = %bb.ah, %bb.ag, %._crit_edge.i191
  %i.id = phi i16 [ %i.e, %._crit_edge.i191 ], [ %i.ia, %bb.ag ], [ %i.e, %bb.ah ]
  %i.ie = add i16 %i.id, %i.eo
  store i16 %i.ie, ptr %i.dc, align 8, !tbaa !40
  %i.if = shl nuw nsw i16 %i.eo, 3
  %i.ig = zext nneg i16 %i.if to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.de, i8 0, i64 %i.ig, i1 false)
  br label %.thread248

.thread248:                                       ; preds = %_sp_copy.exit185.thread, %.thread70.i
  br i1 %.not25.i153, label %sp_lshb.exit.thread253, label %bb.ai

bb.ai:                                            ; preds = %.thread248
  %i.ih = zext i16 %i.f to i64                    ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ij = shl nuw nsw i64 %i.ih, 3                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dm, ptr nonnull readonly align 8 %i.ii, i64 %i.ij, i1 false)
  %i.ik = zext i16 %i.f to i32                    ; 4 uses
  %i.il = trunc nuw nsw i32 %i.eh to i16
  %i.im = lshr i16 %i.il, 6                       ; 5 uses
  %i.in = and i32 %i.eh, 63                       ; 3 uses
  %.not54.i196 = icmp eq i32 %i.in, 0
  %i.io = zext nneg i16 %i.im to i32              ; 7 uses
  %i.ip = add nuw nsw i32 %i.ik, %i.io            ; 2 uses
  %i.iq = load i16, ptr %i.dn, align 2, !tbaa !39
  %i.ir = zext i16 %i.iq to i32                   ; 2 uses
  br i1 %.not54.i196, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not55.i197 = icmp samesign ult i32 %i.ip, %i.ir
  br i1 %.not55.i197, label %.thread73.i199, label %sp_lshb.exit.thread253

.thread73.i199:                                   ; preds = %bb.aj
  %i.is = add nsw i32 %i.ik, -1                   ; 2 uses
  %i.it = zext nneg i32 %i.is to i64              ; 10 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.it
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !36
  %i.iw = sub nuw nsw i32 64, %i.in
  %i.ix = zext nneg i32 %i.iw to i64              ; 5 uses
  %i.iy = lshr i64 %i.iv, %i.ix                   ; 2 uses
  %.not5883.i200 = icmp eq i32 %i.is, 0
  %.pre.i201 = zext nneg i32 %i.in to i64         ; 5 uses
  br i1 %.not5883.i200, label %._crit_edge.i205, label %.lr.ph.i202.preheader

.lr.ph.i202.preheader:                            ; preds = %.thread73.i199
  %min.iters.check432 = icmp ult i16 %i.f, 23
  br i1 %min.iters.check432, label %.lr.ph.i202.preheader475, label %vector.scevcheck426

vector.scevcheck426:                              ; preds = %.lr.ph.i202.preheader
  %i.iz = add nsw i64 %i.it, -1                   ; 2 uses
  %i.ja = add nuw nsw i32 %i.io, %i.ik
  %i.jb = add nsw i32 %i.ja, -1
  %i.jc = trunc nsw i64 %i.iz to i32
  %i.jd = icmp ult i32 %i.jb, %i.jc
  %i.je = icmp ugt i64 %i.iz, 4294967295
  %i.jf = or i1 %i.jd, %i.je
  br i1 %i.jf, label %.lr.ph.i202.preheader475, label %vector.memcheck427

vector.memcheck427:                               ; preds = %vector.scevcheck426
  %i.jg = shl nuw nsw i64 %i.it, 3                ; 2 uses
  %i.jh = add nuw nsw i32 %i.io, %i.ik
  %i.ji = add nsw i32 %i.jh, -1
  %i.jj = zext i32 %i.ji to i64
  %i.jk = shl nuw nsw i64 %i.jj, 3                ; 2 uses
  %i.jl = sub nsw i64 %i.jk, %i.jg
  %diff.check428 = icmp ugt i64 %i.jl, -32
  %i.jm = sub nsw i64 %i.jg, %i.jk
  %i.jn = add nsw i64 %i.jm, -9
  %diff.check429 = icmp ult i64 %i.jn, 31
  %conflict.rdx430 = or i1 %diff.check428, %diff.check429
  br i1 %conflict.rdx430, label %.lr.ph.i202.preheader475, label %vector.ph433

vector.ph433:                                     ; preds = %vector.memcheck427
  %n.vec434 = and i64 %i.it, 2147483644           ; 2 uses
  %i.jo = and i64 %i.it, 3
  %broadcast.splatinsert435 = insertelement <2 x i64> poison, i64 %.pre.i201, i64 0
  %broadcast.splat436 = shufflevector <2 x i64> %broadcast.splatinsert435, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert437 = insertelement <2 x i64> poison, i64 %i.ix, i64 0
  %broadcast.splat438 = shufflevector <2 x i64> %broadcast.splatinsert437, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body439

vector.body439:                                   ; preds = %vector.body439, %vector.ph433
  %index440 = phi i64 [ 0, %vector.ph433 ], [ %index.next445, %vector.body439 ] ; 2 uses
  %i.jp = sub i64 %i.it, %index440                ; 3 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.jp ; 2 uses
  %i.jr = getelementptr inbounds i8, ptr %i.jq, i64 -8
  %i.js = getelementptr inbounds i8, ptr %i.jq, i64 -24
  %wide.load441 = load <2 x i64>, ptr %i.jr, align 8, !tbaa !36
  %wide.load442 = load <2 x i64>, ptr %i.js, align 8, !tbaa !36
  %i.jt = shl <2 x i64> %wide.load441, %broadcast.splat436
  %i.ju = shl <2 x i64> %wide.load442, %broadcast.splat436
  %i.jv = getelementptr [8 x i8], ptr %i.d, i64 %i.jp ; 2 uses
  %i.jw = getelementptr i8, ptr %i.jv, i64 -8
  %i.jx = getelementptr i8, ptr %i.jv, i64 -24
  %wide.load443 = load <2 x i64>, ptr %i.jw, align 8, !tbaa !36
  %wide.load444 = load <2 x i64>, ptr %i.jx, align 8, !tbaa !36
  %i.jy = lshr <2 x i64> %wide.load443, %broadcast.splat438
  %i.jz = lshr <2 x i64> %wide.load444, %broadcast.splat438
  %i.ka = or <2 x i64> %i.jy, %i.jt
  %i.kb = or <2 x i64> %i.jz, %i.ju
  %i.kc = trunc nuw i64 %i.jp to i32
  %i.kd = add i32 %i.kc, %i.io
  %i.ke = zext i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ke ; 2 uses
  %i.kg = getelementptr inbounds i8, ptr %i.kf, i64 -8
  %i.kh = getelementptr inbounds i8, ptr %i.kf, i64 -24
  store <2 x i64> %i.ka, ptr %i.kg, align 8, !tbaa !36
  store <2 x i64> %i.kb, ptr %i.kh, align 8, !tbaa !36
  %index.next445 = add nuw i64 %index440, 4       ; 2 uses
  %i.ki = icmp eq i64 %index.next445, %n.vec434
  br i1 %i.ki, label %middle.block446, label %vector.body439, !llvm.loop !110

middle.block446:                                  ; preds = %vector.body439
  %cmp.n447 = icmp eq i64 %n.vec434, %i.it
  br i1 %cmp.n447, label %._crit_edge.i205, label %.lr.ph.i202.preheader475

.lr.ph.i202.preheader475:                         ; preds = %vector.memcheck427, %vector.scevcheck426, %.lr.ph.i202.preheader, %middle.block446
  %indvars.iv.i203.ph = phi i64 [ %i.it, %vector.memcheck427 ], [ %i.it, %vector.scevcheck426 ], [ %i.it, %.lr.ph.i202.preheader ], [ %i.jo, %middle.block446 ] ; 7 uses
  %xtraiter492 = and i64 %indvars.iv.i203.ph, 1
  %lcmp.mod493.not = icmp eq i64 %xtraiter492, 0
  br i1 %lcmp.mod493.not, label %.lr.ph.i202.prol.loopexit, label %.lr.ph.i202.prol

.lr.ph.i202.prol:                                 ; preds = %.lr.ph.i202.preheader475
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.i203.ph
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !36
  %i.kl = shl i64 %i.kk, %.pre.i201
  %i.km = add nsw i64 %indvars.iv.i203.ph, -1
  %i.kn = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv.i203.ph
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !36
  %i.kp = lshr i64 %i.ko, %i.ix
  %i.kq = or i64 %i.kp, %i.kl
  %i.kr = trunc nuw nsw i64 %indvars.iv.i203.ph to i32
  %i.ks = add nuw i32 %i.kr, %i.io
  %i.kt = zext i32 %i.ks to i64
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.kt
  store i64 %i.kq, ptr %i.ku, align 8, !tbaa !36
  br label %.lr.ph.i202.prol.loopexit

.lr.ph.i202.prol.loopexit:                        ; preds = %.lr.ph.i202.prol, %.lr.ph.i202.preheader475
  %indvars.iv.i203.unr = phi i64 [ %indvars.iv.i203.ph, %.lr.ph.i202.preheader475 ], [ %i.km, %.lr.ph.i202.prol ]
  %i.kv = icmp eq i64 %indvars.iv.i203.ph, 1
  br i1 %i.kv, label %._crit_edge.i205, label %.lr.ph.i202

bb.ak:                                            ; preds = %bb.ai
  %.not82.i209 = icmp samesign ugt i32 %i.ip, %i.ir
  br i1 %.not82.i209, label %sp_lshb.exit.thread253, label %bb.am

.lr.ph.i202:                                      ; preds = %.lr.ph.i202.prol.loopexit, %.lr.ph.i202
  %indvars.iv.i203 = phi i64 [ %i.ll, %.lr.ph.i202 ], [ %indvars.iv.i203.unr, %.lr.ph.i202.prol.loopexit ] ; 6 uses
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.i203
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !36
  %i.ky = shl i64 %i.kx, %.pre.i201
  %i.kz = add nsw i64 %indvars.iv.i203, -1        ; 2 uses
  %i.la = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv.i203
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !36
  %i.lc = lshr i64 %i.lb, %i.ix
  %i.ld = or i64 %i.lc, %i.ky
  %i.le = trunc nuw i64 %indvars.iv.i203 to i32
  %i.lf = add i32 %i.le, %i.io
  %i.lg = zext i32 %i.lf to i64
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.lg
  store i64 %i.ld, ptr %i.lh, align 8, !tbaa !36
  %i.li = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv.i203
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !36
  %i.lk = shl i64 %i.lj, %.pre.i201
  %i.ll = add nsw i64 %indvars.iv.i203, -2        ; 2 uses
  %i.lm = getelementptr [8 x i8], ptr %i.d, i64 %i.kz
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !36
  %i.lo = lshr i64 %i.ln, %i.ix
  %i.lp = or i64 %i.lo, %i.lk
  %i.lq = trunc nuw i64 %i.kz to i32
  %i.lr = add i32 %i.lq, %i.io
  %i.ls = zext i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ls
  store i64 %i.lp, ptr %i.lt, align 8, !tbaa !36
  %.not58.wide.i204.1 = icmp eq i64 %i.ll, 0
  br i1 %.not58.wide.i204.1, label %._crit_edge.i205, label %.lr.ph.i202, !llvm.loop !111

._crit_edge.i205:                                 ; preds = %.lr.ph.i202.prol.loopexit, %.lr.ph.i202, %middle.block446, %.thread73.i199
  %i.lu = load i64, ptr %i.dm, align 8, !tbaa !36
  %i.lv = shl i64 %i.lu, %.pre.i201
  %i.lw = zext nneg i16 %i.im to i64              ; 2 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.lw
  store i64 %i.lv, ptr %i.lx, align 8, !tbaa !36
  %.not59.i206 = icmp eq i64 %i.iy, 0
  br i1 %.not59.i206, label %.thread70.i207, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i205
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ih
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %i.lw
  store i64 %i.iy, ptr %i.lz, align 8, !tbaa !36
  br label %.thread70.i207
end_hunk_1
begin_hunk_2_@_sp_invmod:bb.a

.lr.ph.i:                                         ; preds = %bb.bs, %.lr.ph.i
  %indvars.iv.i108 = phi i64 [ %indvars.iv.next.i110, %.lr.ph.i ], [ 1, %bb.bs ] ; 2 uses
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.i108 ; 2 uses
  %i.zs = load i64, ptr %i.zr, align 8, !tbaa !36 ; 2 uses
  %i.zt = add i64 %i.zs, -1
  store i64 %i.zt, ptr %i.zr, align 8, !tbaa !36
  %.not.i109 = icmp ne i64 %i.zs, 0
  %indvars.iv.next.i110 = add nuw nsw i64 %indvars.iv.i108, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i110, %.pre213
  %or.cond158 = select i1 %.not.i109, i1 true, i1 %exitcond.not.i
  br i1 %or.cond158, label %.loopexit44.i.preheader, label %.lr.ph.i, !llvm.loop !5

.loopexit44.i.preheader:                          ; preds = %.lr.ph.i, %bb.bs
  br label %.loopexit44.i

bb.bt:                                            ; preds = %.loopexit44.i
  %indvars.iv.next59.i = add nsw i64 %indvars.iv58.i368, -1
  %i.zu = icmp sgt i64 %indvars.iv58.i368, 1
  br i1 %i.zu, label %.loopexit44.i, label %.split.loop.exit64.i, !llvm.loop !6

.loopexit44.i:                                    ; preds = %.loopexit44.i.preheader, %bb.bt
  %indvars.iv58.i368 = phi i64 [ %indvars.iv.next59.i, %bb.bt ], [ %.pre213, %.loopexit44.i.preheader ] ; 4 uses
  %i.zv = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv58.i368
  %i.zw = load i64, ptr %i.zv, align 8, !tbaa !36
  %.not42.i = icmp eq i64 %i.zw, 0
  br i1 %.not42.i, label %bb.bt, label %.split.loop.exit.i, !llvm.loop !6

.split.loop.exit.i:                               ; preds = %.loopexit44.i
  %i.zx = trunc nuw i64 %indvars.iv58.i368 to i16
  br label %.split.loop.exit64.i

.split.loop.exit64.i:                             ; preds = %bb.bt, %.split.loop.exit.i
  %.0.in.lcssa.i = phi i16 [ %i.zx, %.split.loop.exit.i ], [ 0, %bb.bt ]
  store i16 %.0.in.lcssa.i, ptr %i.i, align 16, !tbaa !40
  br label %bb.bu

bb.bu:                                            ; preds = %.split.loop.exit64.i, %bb.br
  %i.zy = call i32 @sp_div(ptr noundef nonnull %i.i, ptr noundef %0, ptr noundef nonnull %i.i, ptr noundef null) ; 2 uses
  %i.zz = icmp eq i32 %i.zy, 0
  br i1 %i.zz, label %bb.bv, label %sp_sub.exit

bb.bv:                                            ; preds = %bb.bu
  %.not156 = icmp eq ptr %2, null
  br i1 %.not156, label %sp_sub.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.aaa = load i16, ptr %1, align 8, !tbaa !40   ; 4 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.aac = load i16, ptr %i.aab, align 2, !tbaa !39 ; 2 uses
  %i.aad = icmp ugt i16 %i.aaa, %i.aac
  br i1 %i.aad, label %sp_sub.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.aae = load i16, ptr %i.i, align 16, !tbaa !40 ; 2 uses
  %i.aaf = icmp ugt i16 %i.aae, %i.aac
  br i1 %i.aaf, label %sp_sub.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.bx
  %.not.i112 = icmp eq i16 %i.aaa, 0
  br i1 %.not.i112, label %sp_sub.exit.sink.split, label %.lr.ph64.i.i113

.lr.ph64.i.i113:                                  ; preds = %.thread.i
  %i.aag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %wide.trip.count87.i.i114 = zext i16 %i.aae to i64 ; 2 uses
  %zext.i115 = zext i16 %i.aaa to i64             ; 7 uses
  br label %bb.by

bb.by:                                            ; preds = %bb.bz, %.lr.ph64.i.i113
  %indvars.iv82.i.i116 = phi i64 [ 0, %.lr.ph64.i.i113 ], [ %indvars.iv.next83.i.i119, %bb.bz ] ; 5 uses
  %.04963.i.i117 = phi i128 [ 0, %.lr.ph64.i.i113 ], [ %i.aas, %bb.bz ] ; 2 uses
  %exitcond88.not.i.i118 = icmp eq i64 %indvars.iv82.i.i116, %wide.trip.count87.i.i114
  br i1 %exitcond88.not.i.i118, label %.critedge2.i.i120, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.aai = getelementptr inbounds nuw [8 x i8], ptr %i.aag, i64 %indvars.iv82.i.i116
  %i.aaj = load i64, ptr %i.aai, align 8, !tbaa !36
  %i.aak = zext i64 %i.aaj to i128
  %i.aal = add nsw i128 %.04963.i.i117, %i.aak
  %i.aam = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv82.i.i116
  %i.aan = load i64, ptr %i.aam, align 8, !tbaa !36
  %i.aao = zext i64 %i.aan to i128
  %i.aap = sub nsw i128 %i.aal, %i.aao            ; 2 uses
  %i.aaq = trunc i128 %i.aap to i64
  %i.aar = getelementptr inbounds nuw [8 x i8], ptr %i.aah, i64 %indvars.iv82.i.i116
  store i64 %i.aaq, ptr %i.aar, align 8, !tbaa !36
  %i.aas = ashr i128 %i.aap, 64                   ; 2 uses
  %indvars.iv.next83.i.i119 = add nuw nsw i64 %indvars.iv82.i.i116, 1 ; 2 uses
  %i.aat = icmp eq i64 %indvars.iv.next83.i.i119, %zext.i115
  br i1 %i.aat, label %.critedge2.i.i120, label %bb.by, !llvm.loop !17

.critedge2.i.i120:                                ; preds = %bb.bz, %bb.by
  %.2.lcssa.ph.in.i.i121 = phi i64 [ %wide.trip.count87.i.i114, %bb.by ], [ %zext.i115, %bb.bz ] ; 8 uses
  %.049.lcssa.ph.i.i122 = phi i128 [ %.04963.i.i117, %bb.by ], [ %i.aas, %bb.bz ] ; 2 uses
  %.2.lcssa.ph.i.i = trunc nuw i64 %.2.lcssa.ph.in.i.i121 to i16
  %i.aau = icmp ugt i16 %i.aaa, %.2.lcssa.ph.i.i
  br i1 %i.aau, label %.lr.ph74.i.i129.preheader, label %.preheader.i.i123

.lr.ph74.i.i129.preheader:                        ; preds = %.critedge2.i.i120
  %i.aav = sub nsw i64 %zext.i115, %.2.lcssa.ph.in.i.i121
  %xtraiter559 = and i64 %i.aav, 1
  %lcmp.mod560.not = icmp eq i64 %xtraiter559, 0
  br i1 %lcmp.mod560.not, label %.lr.ph74.i.i129.prol.loopexit, label %.lr.ph74.i.i129.prol

.lr.ph74.i.i129.prol:                             ; preds = %.lr.ph74.i.i129.preheader
  %i.aaw = getelementptr inbounds nuw [8 x i8], ptr %i.aag, i64 %.2.lcssa.ph.in.i.i121
  %i.aax = load i64, ptr %i.aaw, align 8, !tbaa !36
  %i.aay = zext i64 %i.aax to i128
  %i.aaz = add nsw i128 %.049.lcssa.ph.i.i122, %i.aay ; 2 uses
  %i.aba = trunc i128 %i.aaz to i64
  %i.abb = getelementptr inbounds nuw [8 x i8], ptr %i.aah, i64 %.2.lcssa.ph.in.i.i121
  store i64 %i.aba, ptr %i.abb, align 8, !tbaa !36
  %i.abc = ashr i128 %i.aaz, 64
  %indvars.iv.next91.i.i132.prol = add nuw nsw i64 %.2.lcssa.ph.in.i.i121, 1
  br label %.lr.ph74.i.i129.prol.loopexit

.lr.ph74.i.i129.prol.loopexit:                    ; preds = %.lr.ph74.i.i129.prol, %.lr.ph74.i.i129.preheader
  %indvars.iv90.i.i130.unr = phi i64 [ %.2.lcssa.ph.in.i.i121, %.lr.ph74.i.i129.preheader ], [ %indvars.iv.next91.i.i132.prol, %.lr.ph74.i.i129.prol ]
  %.173.i.i131.unr = phi i128 [ %.049.lcssa.ph.i.i122, %.lr.ph74.i.i129.preheader ], [ %i.abc, %.lr.ph74.i.i129.prol ]
  %i.abd = add nsw i64 %zext.i115, -1
  %i.abe = icmp eq i64 %.2.lcssa.ph.in.i.i121, %i.abd
  br i1 %i.abe, label %.preheader.i.i123, label %.lr.ph74.i.i129

.lr.ph74.i.i129:                                  ; preds = %.lr.ph74.i.i129.prol.loopexit, %.lr.ph74.i.i129
  %indvars.iv90.i.i130 = phi i64 [ %indvars.iv.next91.i.i132.1, %.lr.ph74.i.i129 ], [ %indvars.iv90.i.i130.unr, %.lr.ph74.i.i129.prol.loopexit ] ; 4 uses
  %.173.i.i131 = phi i128 [ %i.abs, %.lr.ph74.i.i129 ], [ %.173.i.i131.unr, %.lr.ph74.i.i129.prol.loopexit ]
  %i.abf = getelementptr inbounds nuw [8 x i8], ptr %i.aag, i64 %indvars.iv90.i.i130
  %i.abg = load i64, ptr %i.abf, align 8, !tbaa !36
  %i.abh = zext i64 %i.abg to i128
  %i.abi = add nsw i128 %.173.i.i131, %i.abh      ; 2 uses
  %i.abj = trunc i128 %i.abi to i64
  %i.abk = getelementptr inbounds nuw [8 x i8], ptr %i.aah, i64 %indvars.iv90.i.i130
  store i64 %i.abj, ptr %i.abk, align 8, !tbaa !36
  %i.abl = ashr i128 %i.abi, 64
  %indvars.iv.next91.i.i132 = add nuw nsw i64 %indvars.iv90.i.i130, 1 ; 2 uses
  %i.abm = getelementptr inbounds nuw [8 x i8], ptr %i.aag, i64 %indvars.iv.next91.i.i132
  %i.abn = load i64, ptr %i.abm, align 8, !tbaa !36
  %i.abo = zext i64 %i.abn to i128
  %i.abp = add nsw i128 %i.abl, %i.abo            ; 2 uses
  %i.abq = trunc i128 %i.abp to i64
  %i.abr = getelementptr inbounds nuw [8 x i8], ptr %i.aah, i64 %indvars.iv.next91.i.i132
  store i64 %i.abq, ptr %i.abr, align 8, !tbaa !36
  %i.abs = ashr i128 %i.abp, 64
  %indvars.iv.next91.i.i132.1 = add nuw nsw i64 %indvars.iv90.i.i130, 2 ; 2 uses
  %exitcond94.not.i.i133.1 = icmp eq i64 %indvars.iv.next91.i.i132.1, %zext.i115
  br i1 %exitcond94.not.i.i133.1, label %.preheader.i.i123, label %.lr.ph74.i.i129, !llvm.loop !18

.preheader.i.i123:                                ; preds = %.lr.ph74.i.i129.prol.loopexit, %.lr.ph74.i.i129, %.critedge2.i.i120
  %.pre-phi.i124 = phi i64 [ %.2.lcssa.ph.in.i.i121, %.critedge2.i.i120 ], [ %zext.i115, %.lr.ph74.i.i129 ], [ %zext.i115, %.lr.ph74.i.i129.prol.loopexit ] ; 2 uses
  %i.abt = icmp sgt i64 %.pre-phi.i124, 0
  br i1 %i.abt, label %.lr.ph370, label %sp_sub.exit.sink.split

bb.ca:                                            ; preds = %.lr.ph370
  %indvars.iv.next96.i.i126 = add nsw i64 %indvars.iv95.i.i125369, -1
  %i.abu = icmp sgt i64 %indvars.iv95.i.i125369, 1
  br i1 %i.abu, label %.lr.ph370, label %sp_sub.exit.sink.split, !llvm.loop !19

.lr.ph370:                                        ; preds = %.preheader.i.i123, %bb.ca
  %indvars.iv95.i.i125369 = phi i64 [ %indvars.iv.next96.i.i126, %bb.ca ], [ %.pre-phi.i124, %.preheader.i.i123 ] ; 4 uses
  %i.abv = getelementptr [8 x i8], ptr %2, i64 %indvars.iv95.i.i125369
  %i.abw = load i64, ptr %i.abv, align 8, !tbaa !36
  %.not56.i.i127 = icmp eq i64 %i.abw, 0
  br i1 %.not56.i.i127, label %bb.ca, label %.split.loop.exit.i.i128, !llvm.loop !19

.split.loop.exit.i.i128:                          ; preds = %.lr.ph370
  %i.abx = trunc i64 %indvars.iv95.i.i125369 to i16
  br label %sp_sub.exit.sink.split

bb.cb:                                            ; preds = %_sp_invmod_bin.exit
  br i1 %i.zj, label %bb.cc, label %sp_sub.exit

bb.cc:                                            ; preds = %bb.cb
  %i.aby = load i16, ptr %i.i, align 16, !tbaa !40 ; 4 uses
  %i.abz = icmp eq i16 %i.aby, 0
  br i1 %i.abz, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.aca = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.aca, align 8, !tbaa !36
  br label %sp_sub.exit.sink.split

bb.ce:                                            ; preds = %bb.cc
  %i.acb = zext i16 %i.aby to i64
  %i.acc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.acd = shl nuw nsw i64 %i.acb, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.acc, ptr nonnull readonly align 8 %i.z, i64 %i.acd, i1 false)
  br label %sp_sub.exit.sink.split

sp_sub.exit.sink.split:                           ; preds = %bb.ca, %.preheader.i.i123, %bb.ce, %bb.cd, %.thread.i, %.split.loop.exit.i.i128
  %.0.in.lcssa.i.sink.i.sink = phi i16 [ %i.aby, %bb.ce ], [ 0, %.thread.i ], [ %i.abx, %.split.loop.exit.i.i128 ], [ %i.aby, %bb.cd ], [ 0, %.preheader.i.i123 ], [ 0, %bb.ca ]
  store i16 %.0.in.lcssa.i.sink.i.sink, ptr %2, align 8, !tbaa !40
  br label %sp_sub.exit

sp_sub.exit:                                      ; preds = %bb.s, %sp_sub.exit.sink.split, %bb.b, %bb.a, %bb.bp, %sp_mod.exit, %bb.h, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.cb
  %.11 = phi i32 [ -98, %bb.b ], [ -98, %bb.h ], [ %i.zy, %bb.bu ], [ -98, %bb.a ], [ %.8, %bb.cb ], [ -98, %bb.bv ], [ -98, %bb.bx ], [ -98, %bb.bw ], [ 0, %sp_sub.exit.sink.split ], [ %i.zk, %bb.bp ], [ %i.ak, %sp_mod.exit ], [ -98, %bb.s ]
  ret i32 %.11
}

; Function Attrs: nounwind uwtable
define range(i32 -98, 1) i32 @sp_invmod_mont_ct(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef captures(address) %2, i64 noundef %3) local_unnamed_addr #14 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = alloca [10 x ptr], align 16              ; 16 uses
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.c, %i.d
  %i.e = icmp eq ptr %2, null
  %or.cond3 = or i1 %or.cond, %i.e
  br i1 %or.cond3, label %.thread28, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i16, ptr %1, align 8, !tbaa !40     ; 4 uses
  %i.g = icmp ugt i16 %i.f, 64
  br i1 %i.g, label %.thread28, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !39
  %.not = icmp ugt i16 %i.f, %i.i
  br i1 %.not, label %.thread28, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i16, ptr %0, align 8, !tbaa !40
  %i.k = icmp eq i16 %i.j, 0
  br i1 %i.k, label %.thread28, label %bb.e

bb.e:                                             ; preds = %bb.d
  switch i16 %i.f, label %.thread25 [
    i16 0, label %.thread28
    i16 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !36
  %i.n = icmp ult i64 %i.m, 3
  br i1 %i.n, label %.thread28, label %.thread25.thread

.thread25.thread:                                 ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  br label %bb.g

.thread25:                                        ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.o = mul nuw nsw i16 %i.f, 160
  %i.p = add nuw nsw i16 %i.o, 160
  %i.q = zext nneg i16 %i.p to i64
  br label %bb.g

bb.g:                                             ; preds = %.thread25, %.thread25.thread
  %narrow.i = phi i64 [ 320, %.thread25.thread ], [ %i.q, %.thread25 ]
  %i.r = tail call ptr @wolfSSL_Malloc(i64 noundef %narrow.i) #20 ; 10 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = icmp eq ptr %i.r, null
  br i1 %i.t, label %_sp_invmod_mont_ct.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.g
  store ptr %i.r, ptr %i.b, align 16, !tbaa !49
  %i.u = load i16, ptr %1, align 8, !tbaa !40     ; 3 uses
  %i.v = shl i16 %i.u, 1
  %i.w = or disjoint i16 %i.v, 1                  ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.y = zext i16 %i.u to i64                     ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 4                  ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.z ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 9 uses
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !49
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 18
  store i16 %i.w, ptr %i.ad, align 2, !tbaa !39
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.z ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 9 uses
  store ptr %i.ag, ptr %i.ae, align 16, !tbaa !49
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 18
  store i16 %i.w, ptr %i.ah, align 2, !tbaa !39
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.z ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 9 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !49
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 18
  store i16 %i.w, ptr %i.al, align 2, !tbaa !39
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.z ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 9 uses
  store ptr %i.ao, ptr %i.am, align 16, !tbaa !49
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 18
  store i16 %i.w, ptr %i.ap, align 2, !tbaa !39
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.z ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 9 uses
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !49
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 18
  store i16 %i.w, ptr %i.at, align 2, !tbaa !39
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.z ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 9 uses
  store ptr %i.aw, ptr %i.au, align 16, !tbaa !49
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 18
  store i16 %i.w, ptr %i.ax, align 2, !tbaa !39
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.z ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 8 uses
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !49
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 18
  store i16 %i.w, ptr %i.bb, align 2, !tbaa !39
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.z ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 16 uses
  store ptr %i.be, ptr %i.bc, align 16, !tbaa !49
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.z ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 9 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !49
  store volatile i16 0, ptr %i.be, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 4 uses
  store volatile i64 0, ptr %i.bi, align 8, !tbaa !36
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 18
  store volatile i16 %i.w, ptr %i.bj, align 2, !tbaa !37
  %i.bk = add i16 %i.u, 1
  store volatile i16 0, ptr %i.bh, align 8, !tbaa !34
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 18 uses
  store volatile i64 0, ptr %i.bl, align 8, !tbaa !36
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 18
  store volatile i16 %i.bk, ptr %i.bm, align 2, !tbaa !37
  store volatile i16 0, ptr %i.r, align 8, !tbaa !34
  %i.bn = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  store volatile i64 0, ptr %i.bn, align 8, !tbaa !36
  store volatile i16 %i.w, ptr %i.x, align 2, !tbaa !37
  %i.bo = load i16, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.bp = icmp eq i16 %i.bo, 0
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread.i
  store i64 0, ptr %i.bn, align 8, !tbaa !36
  br label %_sp_copy.exit.i

bb.i:                                             ; preds = %.thread.i
  %i.bq = zext i16 %i.bo to i64
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = shl nuw nsw i64 %i.bq, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bn, ptr nonnull readonly align 8 %i.br, i64 %i.bs, i1 false)
  %.pre.i.i = load i16, ptr %0, align 8, !tbaa !40
  br label %_sp_copy.exit.i

_sp_copy.exit.i:                                  ; preds = %bb.i, %bb.h
  %i.bt = phi i16 [ %.pre.i.i, %bb.i ], [ 0, %bb.h ]
  store i16 %i.bt, ptr %i.r, align 8, !tbaa !40
  %i.bu = load i16, ptr %1, align 8, !tbaa !40
  %i.bv = shl i16 %i.bu, 1
  %i.bw = or disjoint i16 %i.bv, 1
  store volatile i16 0, ptr %i.ac, align 8, !tbaa !34
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store volatile i64 0, ptr %i.bx, align 8, !tbaa !36
  %i.by = getelementptr inbounds nuw i8, ptr %i.ab, i64 18
  store volatile i16 %i.bw, ptr %i.by, align 2, !tbaa !37
  %i.bz = tail call i32 @sp_sqr(ptr noundef nonnull %i.r, ptr noundef nonnull %i.ac) ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.j, label %.thread186.i

bb.j:                                             ; preds = %_sp_copy.exit.i
  tail call fastcc void @_sp_mont_red(ptr noundef nonnull %i.ac, ptr noundef nonnull readonly %1, i64 noundef %3, i32 noundef 0)
  %i.cb = tail call i32 @sp_mul(ptr noundef nonnull %i.ac, ptr noundef nonnull readonly %0, ptr noundef nonnull %i.ac) ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %.thread159.i, label %.thread186.i

.thread159.i:                                     ; preds = %bb.j
  tail call fastcc void @_sp_mont_red(ptr noundef nonnull %i.ac, ptr noundef nonnull readonly %1, i64 noundef %3, i32 noundef 0)
  %i.cd = load i16, ptr %1, align 8, !tbaa !40
  %i.ce = shl i16 %i.cd, 1
  %i.cf = or disjoint i16 %i.ce, 1
  store volatile i16 0, ptr %i.ag, align 8, !tbaa !34
  %i.cg = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store volatile i64 0, ptr %i.cg, align 8, !tbaa !36
  %i.ch = getelementptr inbounds nuw i8, ptr %i.af, i64 18
  store volatile i16 %i.cf, ptr %i.ch, align 2, !tbaa !37
  %i.ci = tail call i32 @sp_sqr(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ag) ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.k, label %.thread186.i

bb.k:                                             ; preds = %.thread159.i
  tail call fastcc void @_sp_mont_red(ptr noundef nonnull %i.ag, ptr noundef nonnull readonly %1, i64 noundef %3, i32 noundef 0)
  %i.ck = tail call i32 @sp_mul(ptr noundef nonnull %i.ag, ptr noundef nonnull readonly %0, ptr noundef nonnull %i.ag) ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %.thread159.i.1, label %.thread186.i

.thread159.i.1:                                   ; preds = %bb.k
  tail call fastcc void @_sp_mont_red(ptr noundef nonnull %i.ag, ptr noundef nonnull readonly %1, i64 noundef %3, i32 noundef 0)
  %i.cm = load i16, ptr %1, align 8, !tbaa !40
  %i.cn = shl i16 %i.cm, 1
  %i.co = or disjoint i16 %i.cn, 1
  store volatile i16 0, ptr %i.ak, align 8, !tbaa !34
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store volatile i64 0, ptr %i.cp, align 8, !tbaa !36
  %i.cq = getelementptr inbounds nuw i8, ptr %i.aj, i64 18
  store volatile i16 %i.co, ptr %i.cq, align 2, !tbaa !37
  %i.cr = tail call i32 @sp_sqr(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ak) ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.l, label %.thread186.i

end_hunk_2
begin_hunk_3_@sp_mul_2d:bb.a
  %i.af = shl nuw nsw i64 %i.ac, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr nonnull readonly align 8 %i.ae, i64 %i.af, i1 false)
  %.pre.i.i = load i16, ptr %0, align 8, !tbaa !40
  br label %_sp_copy.exit.i

_sp_copy.exit.i:                                  ; preds = %bb.i, %bb.h
  %i.ag = phi i16 [ %.pre.i.i, %bb.i ], [ 0, %bb.h ] ; 2 uses
  store i16 %i.ag, ptr %2, align 8, !tbaa !40
  br label %bb.j

thread-pre-split:                                 ; preds = %.thread
  %.pr = load i16, ptr %2, align 8, !tbaa !40
  br label %bb.j

bb.j:                                             ; preds = %thread-pre-split, %_sp_copy.exit.i
  %i.ah = phi i16 [ %.pr, %thread-pre-split ], [ %i.ag, %_sp_copy.exit.i ] ; 9 uses
  %i.ai = zext i16 %i.ah to i32                   ; 5 uses
  %.not.i25 = icmp eq i16 %i.ah, 0
  br i1 %.not.i25, label %sp_copy.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = trunc i32 %1 to i16
  %i.ak = lshr i16 %i.aj, 6                       ; 7 uses
  %i.al = and i32 %1, 63                          ; 3 uses
  %.not54.i = icmp eq i32 %i.al, 0
  br i1 %.not54.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = zext nneg i16 %i.ak to i32              ; 7 uses
  %i.an = add nuw nsw i32 %i.ai, %i.am
  %.not55.i = icmp samesign ult i32 %i.an, %i.x
  br i1 %.not55.i, label %.thread73.i, label %sp_copy.exit

bb.m:                                             ; preds = %bb.k
  %.not56.i = icmp eq i16 %i.ak, 0
  br i1 %.not56.i, label %.thread70.i, label %bb.n

.thread73.i:                                      ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 11 uses
  %i.ap = add nsw i32 %i.ai, -1                   ; 2 uses
  %i.aq = zext nneg i32 %i.ap to i64              ; 10 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !36
  %i.at = sub nuw nsw i32 64, %i.al
  %i.au = zext nneg i32 %i.at to i64              ; 5 uses
  %i.av = lshr i64 %i.as, %i.au                   ; 2 uses
  %.not5883.i = icmp eq i32 %i.ap, 0
  %.pre.i = zext nneg i32 %i.al to i64            ; 5 uses
  br i1 %.not5883.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.thread73.i
  %min.iters.check = icmp ult i16 %i.ah, 23
  br i1 %min.iters.check, label %.lr.ph.i.preheader58, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.preheader
  %i.aw = add nsw i64 %i.aq, -1                   ; 2 uses
  %i.ax = add nuw nsw i32 %i.am, %i.ai
  %i.ay = add nsw i32 %i.ax, -1
  %i.az = trunc nsw i64 %i.aw to i32
  %i.ba = icmp ult i32 %i.ay, %i.az
  %i.bb = icmp ugt i64 %i.aw, 4294967295
  %i.bc = or i1 %i.ba, %i.bb
  br i1 %i.bc, label %.lr.ph.i.preheader58, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bd = shl nuw nsw i64 %i.aq, 3                ; 2 uses
  %i.be = add nuw nsw i32 %i.am, %i.ai
  %i.bf = add nsw i32 %i.be, -1
  %i.bg = zext i32 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.bg, 3                ; 2 uses
  %i.bi = sub nsw i64 %i.bh, %i.bd
  %diff.check = icmp ugt i64 %i.bi, -32
  %i.bj = sub nsw i64 %i.bd, %i.bh
  %i.bk = add nsw i64 %i.bj, -9
  %diff.check52 = icmp ult i64 %i.bk, 31
  %conflict.rdx = or i1 %diff.check, %diff.check52
  br i1 %conflict.rdx, label %.lr.ph.i.preheader58, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aq, 2147483644              ; 2 uses
  %i.bl = and i64 %i.aq, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.pre.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert53 = insertelement <2 x i64> poison, i64 %i.au, i64 0
  %broadcast.splat54 = shufflevector <2 x i64> %broadcast.splatinsert53, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = sub i64 %i.aq, %index                   ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -8
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 -24
  %wide.load = load <2 x i64>, ptr %i.bo, align 8, !tbaa !36
  %wide.load55 = load <2 x i64>, ptr %i.bp, align 8, !tbaa !36
  %i.bq = shl <2 x i64> %wide.load, %broadcast.splat
  %i.br = shl <2 x i64> %wide.load55, %broadcast.splat
  %i.bs = getelementptr [8 x i8], ptr %2, i64 %i.bm ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 -8
  %i.bu = getelementptr i8, ptr %i.bs, i64 -24
  %wide.load56 = load <2 x i64>, ptr %i.bt, align 8, !tbaa !36
  %wide.load57 = load <2 x i64>, ptr %i.bu, align 8, !tbaa !36
  %i.bv = lshr <2 x i64> %wide.load56, %broadcast.splat54
  %i.bw = lshr <2 x i64> %wide.load57, %broadcast.splat54
  %i.bx = or <2 x i64> %i.bv, %i.bq
  %i.by = or <2 x i64> %i.bw, %i.br
  %i.bz = trunc nuw i64 %i.bm to i32
  %i.ca = add i32 %i.bz, %i.am
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -8
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 -24
  store <2 x i64> %i.bx, ptr %i.cd, align 8, !tbaa !36
  store <2 x i64> %i.by, ptr %i.ce, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !161

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aq
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader58

.lr.ph.i.preheader58:                             ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i27.ph = phi i64 [ %i.aq, %vector.memcheck ], [ %i.aq, %vector.scevcheck ], [ %i.aq, %.lr.ph.i.preheader ], [ %i.bl, %middle.block ] ; 7 uses
  %xtraiter = and i64 %indvars.iv.i27.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader58
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.i27.ph
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !36
  %i.ci = shl i64 %i.ch, %.pre.i
  %i.cj = add nsw i64 %indvars.iv.i27.ph, -1
  %i.ck = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.i27.ph
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !36
  %i.cm = lshr i64 %i.cl, %i.au
  %i.cn = or i64 %i.cm, %i.ci
  %i.co = trunc nuw nsw i64 %indvars.iv.i27.ph to i32
  %i.cp = add nuw i32 %i.co, %i.am
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.cq
  store i64 %i.cn, ptr %i.cr, align 8, !tbaa !36
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader58
  %indvars.iv.i27.unr = phi i64 [ %indvars.iv.i27.ph, %.lr.ph.i.preheader58 ], [ %i.cj, %.lr.ph.i.prol ]
  %i.cs = icmp eq i64 %indvars.iv.i27.ph, 1
  br i1 %i.cs, label %._crit_edge.i, label %.lr.ph.i

bb.n:                                             ; preds = %bb.m
  %i.ct = zext nneg i16 %i.ak to i32
  %i.cu = add nuw nsw i32 %i.ai, %i.ct
  %.not82.i = icmp samesign ugt i32 %i.cu, %i.x
  br i1 %.not82.i, label %sp_copy.exit, label %bb.p

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i27 = phi i64 [ %i.dk, %.lr.ph.i ], [ %indvars.iv.i27.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.i27
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !36
  %i.cx = shl i64 %i.cw, %.pre.i
  %i.cy = add nsw i64 %indvars.iv.i27, -1         ; 2 uses
  %i.cz = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.i27
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !36
  %i.db = lshr i64 %i.da, %i.au
  %i.dc = or i64 %i.db, %i.cx
  %i.dd = trunc nuw i64 %indvars.iv.i27 to i32
  %i.de = add i32 %i.dd, %i.am
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.df
  store i64 %i.dc, ptr %i.dg, align 8, !tbaa !36
  %i.dh = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.i27
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !36
  %i.dj = shl i64 %i.di, %.pre.i
  %i.dk = add nsw i64 %indvars.iv.i27, -2         ; 2 uses
  %i.dl = getelementptr [8 x i8], ptr %2, i64 %i.cy
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !36
  %i.dn = lshr i64 %i.dm, %i.au
  %i.do = or i64 %i.dn, %i.dj
  %i.dp = trunc nuw i64 %i.cy to i32
  %i.dq = add i32 %i.dp, %i.am
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.dr
  store i64 %i.do, ptr %i.ds, align 8, !tbaa !36
  %.not58.wide.i.1 = icmp eq i64 %i.dk, 0
  br i1 %.not58.wide.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !162

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %.thread73.i
  %i.dt = load i64, ptr %i.ao, align 8, !tbaa !36
  %i.du = shl i64 %i.dt, %.pre.i
  %i.dv = zext nneg i16 %i.ak to i64              ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.dv
  store i64 %i.du, ptr %i.dw, align 8, !tbaa !36
  %.not59.i = icmp eq i64 %i.av, 0
  br i1 %.not59.i, label %.thread70.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %i.dx = zext i16 %i.ah to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.dx
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dv
  store i64 %i.av, ptr %i.dz, align 8, !tbaa !36
  %i.ea = add i16 %i.ah, 1
  br label %.thread70.i

bb.p:                                             ; preds = %bb.n
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ec = zext nneg i16 %i.ak to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ec
  %i.ee = zext i16 %i.ah to i64
  %i.ef = shl nuw nsw i64 %i.ee, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ed, ptr nonnull align 8 %i.eb, i64 %i.ef, i1 false)
  br label %.thread70.i

.thread70.i:                                      ; preds = %bb.p, %bb.o, %._crit_edge.i, %bb.m
  %i.eg = phi i16 [ %i.ah, %._crit_edge.i ], [ %i.ea, %bb.o ], [ %i.ah, %bb.p ], [ %i.ah, %bb.m ]
  %i.eh = add i16 %i.eg, %i.ak
  store i16 %i.eh, ptr %2, align 8, !tbaa !40
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ej = shl nuw nsw i16 %i.ak, 3
  %i.ek = zext nneg i16 %i.ej to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ei, i8 0, i64 %i.ek, i1 false)
  br label %sp_copy.exit

sp_copy.exit:                                     ; preds = %bb.a, %sp_count_bits.exit, %bb.g, %.thread70.i, %bb.n, %bb.l, %bb.j
  %.3 = phi i32 [ -98, %sp_count_bits.exit ], [ -98, %bb.l ], [ 0, %bb.j ], [ 0, %.thread70.i ], [ -98, %bb.n ], [ -98, %bb.g ], [ -98, %bb.a ]
  ret i32 %.3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define range(i32 -98, 1) i32 @sp_sqr(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.not = and i1 %i.a, %i.b
  br i1 %or.cond.not, label %bb.b, label %.thread17

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.d = zext i16 %i.c to i32
  %i.e = shl nuw nsw i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !39
  %i.h = zext i16 %i.g to i32
  %i.i = icmp samesign ugt i32 %i.e, %i.h
  br i1 %i.i, label %.thread17, label %.thread

.thread:                                          ; preds = %bb.b
  switch i16 %i.c, label %bb.l [
    i16 0, label %bb.c
    i16 4, label %bb.d
  ]

bb.c:                                             ; preds = %.thread
  store volatile i16 0, ptr %1, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store volatile i64 0, ptr %i.j, align 8, !tbaa !36
  br label %.thread17

bb.d:                                             ; preds = %.thread
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !36
  %i.m = zext i64 %i.l to i128                    ; 5 uses
  %i.n = mul nuw i128 %i.m, %i.m                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !36
  %i.q = zext i64 %i.p to i128                    ; 5 uses
  %i.r = mul nuw i128 %i.q, %i.m                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !36
  %i.u = zext i64 %i.t to i128                    ; 5 uses
  %i.v = mul nuw i128 %i.u, %i.m                  ; 2 uses
  %i.w = mul nuw i128 %i.q, %i.q                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !36
  %i.z = zext i64 %i.y to i128                    ; 5 uses
  %i.aa = mul nuw i128 %i.z, %i.m                 ; 2 uses
  %i.ab = mul nuw i128 %i.u, %i.q                 ; 2 uses
  %i.ac = mul nuw i128 %i.z, %i.q                 ; 2 uses
  %i.ad = mul nuw i128 %i.u, %i.u                 ; 2 uses
  %i.ae = mul nuw i128 %i.z, %i.u                 ; 2 uses
  %i.af = mul nuw i128 %i.z, %i.z                 ; 2 uses
  %i.ag = trunc i128 %i.n to i64                  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !36
  %i.ai = lshr i128 %i.n, 64
  %i.aj = shl i128 %i.r, 1
  %reass.add.i = and i128 %i.aj, 36893488147419103230
  %i.ak = add nuw nsw i128 %reass.add.i, %i.ai    ; 2 uses
  %i.al = trunc i128 %i.ak to i64                 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.al, ptr %i.am, align 8, !tbaa !36
  %i.an = lshr i128 %i.ak, 64
  %i.ao = lshr i128 %i.r, 63
  %reass.add113.i = and i128 %i.ao, 36893488147419103230
  %i.ap = shl i128 %i.v, 1
  %reass.add114.i = and i128 %i.ap, 36893488147419103230
  %i.aq = and i128 %i.w, 18446744073709551615
  %i.ar = add nuw nsw i128 %reass.add113.i, %i.aq
  %i.as = add nuw nsw i128 %i.ar, %reass.add114.i
  %i.at = add nuw nsw i128 %i.as, %i.an           ; 2 uses
  %i.au = trunc i128 %i.at to i64                 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.au, ptr %i.av, align 8, !tbaa !36
  %i.aw = lshr i128 %i.at, 64
  %i.ax = lshr i128 %i.v, 63
  %reass.add115.i = and i128 %i.ax, 36893488147419103230
  %i.ay = lshr i128 %i.w, 64
  %i.az = shl i128 %i.aa, 1
  %reass.add116.i = and i128 %i.az, 36893488147419103230
  %i.ba = shl i128 %i.ab, 1
  %reass.add117.i = and i128 %i.ba, 36893488147419103230
  %i.bb = add nuw nsw i128 %reass.add115.i, %i.ay
  %i.bc = add nuw nsw i128 %i.bb, %reass.add117.i
  %i.bd = add nuw nsw i128 %i.bc, %reass.add116.i
  %i.be = add nuw nsw i128 %i.bd, %i.aw           ; 2 uses
  %i.bf = trunc i128 %i.be to i64                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !36
  %i.bh = lshr i128 %i.be, 64
  %i.bi = lshr i128 %i.aa, 63
  %reass.add118.i = and i128 %i.bi, 36893488147419103230
  %i.bj = lshr i128 %i.ab, 63
  %reass.add119.i = and i128 %i.bj, 36893488147419103230
  %i.bk = shl i128 %i.ac, 1
  %reass.add120.i = and i128 %i.bk, 36893488147419103230
  %i.bl = and i128 %i.ad, 18446744073709551615
  %i.bm = add nuw nsw i128 %reass.add119.i, %i.bl
  %i.bn = add nuw nsw i128 %i.bm, %reass.add118.i
  %i.bo = add nuw nsw i128 %i.bn, %reass.add120.i
  %i.bp = add nuw nsw i128 %i.bo, %i.bh           ; 2 uses
  %i.bq = trunc i128 %i.bp to i64                 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !36
  %i.bs = lshr i128 %i.bp, 64
  %i.bt = lshr i128 %i.ac, 63
  %reass.add121.i = and i128 %i.bt, 36893488147419103230
  %i.bu = lshr i128 %i.ad, 64
  %i.bv = shl i128 %i.ae, 1
  %reass.add122.i = and i128 %i.bv, 36893488147419103230
  %i.bw = add nuw nsw i128 %reass.add121.i, %i.bu
  %i.bx = add nuw nsw i128 %i.bw, %reass.add122.i
  %i.by = add nuw nsw i128 %i.bx, %i.bs           ; 2 uses
  %i.bz = trunc i128 %i.by to i64                 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !36
  %i.cb = lshr i128 %i.by, 64
  %i.cc = lshr i128 %i.ae, 63
  %reass.add123.i = and i128 %i.cc, 36893488147419103230
  %i.cd = and i128 %i.af, 18446744073709551615
  %i.ce = add nuw nsw i128 %reass.add123.i, %i.cd
  %i.cf = add nuw nsw i128 %i.ce, %i.cb           ; 2 uses
  %i.cg = trunc i128 %i.cf to i64                 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !36
  %i.ci = lshr i128 %i.cf, 64
  %i.cj = lshr i128 %i.af, 64
  %i.ck = add nuw nsw i128 %i.ci, %i.cj
  %i.cl = trunc i128 %i.ck to i64                 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !36
  %.not.i = icmp eq i64 %i.cl, 0
  br i1 %.not.i, label %bb.e, label %_sp_sqr_4.exit

bb.e:                                             ; preds = %bb.d
  %.not.1.i = icmp eq i64 %i.cg, 0
  br i1 %.not.1.i, label %bb.f, label %_sp_sqr_4.exit

bb.f:                                             ; preds = %bb.e
  %.not.2.i = icmp eq i64 %i.bz, 0
  br i1 %.not.2.i, label %bb.g, label %_sp_sqr_4.exit

bb.g:                                             ; preds = %bb.f
  %.not.3.i = icmp eq i64 %i.bq, 0
  br i1 %.not.3.i, label %bb.h, label %_sp_sqr_4.exit

bb.h:                                             ; preds = %bb.g
  %.not.4.i = icmp eq i64 %i.bf, 0
  br i1 %.not.4.i, label %bb.i, label %_sp_sqr_4.exit

bb.i:                                             ; preds = %bb.h
  %.not.5.i = icmp eq i64 %i.au, 0
  br i1 %.not.5.i, label %bb.j, label %_sp_sqr_4.exit

bb.j:                                             ; preds = %bb.i
  %.not.6.i = icmp eq i64 %i.al, 0
  br i1 %.not.6.i, label %bb.k, label %_sp_sqr_4.exit

bb.k:                                             ; preds = %bb.j
  %.not.7.i = icmp ne i64 %i.ag, 0
  %spec.select.i = zext i1 %.not.7.i to i16
  br label %_sp_sqr_4.exit

_sp_sqr_4.exit:                                   ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.lcssa.i = phi i16 [ 8, %bb.d ], [ 4, %bb.h ], [ 7, %bb.e ], [ %spec.select.i, %bb.k ], [ 6, %bb.f ], [ 3, %bb.i ], [ 5, %bb.g ], [ 2, %bb.j ]
  store i16 %.0.lcssa.i, ptr %1, align 8, !tbaa !40
  br label %.thread17

bb.l:                                             ; preds = %.thread
  tail call fastcc void @_sp_sqr(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %.thread17

.thread17:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.l, %_sp_sqr_4.exit
end_hunk_3
begin_hunk_4_@_sp_sqr:bb.a
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !36
  %i.aq = zext i64 %i.ap to i128
  %i.ar = mul nuw i128 %i.aq, %i.an               ; 2 uses
  %i.as = shl i128 %i.ar, 1
  %reass.add = and i128 %i.as, 36893488147419103230
  %i.at = add i128 %reass.add, %.26578            ; 2 uses
  %i.au = lshr i128 %i.ar, 63
  %reass.add75 = and i128 %i.au, 36893488147419103230
  %i.av = add i128 %reass.add75, %.279            ; 2 uses
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %i.aw = icmp samesign ult i64 %indvars.iv.next95, %i.b
  %i.ax = trunc nuw i64 %indvars.iv98 to i32
  %i.ay = icmp sgt i32 %i.ax, 1
  %i.az = and i1 %i.ay, %i.aw
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !163

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.265.lcssa = phi i128 [ %.164, %bb.c ], [ %i.at, %.lr.ph ] ; 2 uses
  %.2.lcssa = phi i128 [ %.1, %bb.c ], [ %i.av, %.lr.ph ] ; 2 uses
  %i.ba = trunc i128 %.265.lcssa to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !36
  %i.bc = lshr i128 %.265.lcssa, 64
  %i.bd = and i128 %.2.lcssa, 18446744073709551615
  %i.be = add nuw nsw i128 %i.bd, %i.bc           ; 2 uses
  %i.bf = lshr i128 %.2.lcssa, 64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next97 = add nuw nsw i32 %indvars.iv96, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge88.loopexit, label %.lr.ph87, !llvm.loop !164

._crit_edge88.loopexit:                           ; preds = %._crit_edge
  %extract.t110 = trunc i128 %i.be to i64
  br label %._crit_edge88

._crit_edge88:                                    ; preds = %._crit_edge88.loopexit, %bb.a
  %.sink.off0 = phi i64 [ %extract.t109, %bb.a ], [ %extract.t110, %._crit_edge88.loopexit ]
  %.067.lcssa = phi i16 [ 1, %bb.a ], [ %umax, %._crit_edge88.loopexit ] ; 2 uses
  %i.bg = zext i16 %.067.lcssa to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bg
  store i64 %.sink.off0, ptr %i.bh, align 8, !tbaa !36
  %i.bi = add i16 %.067.lcssa, 1                  ; 3 uses
  store i16 %i.bi, ptr %1, align 8, !tbaa !40
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = zext i16 %i.bi to i64                   ; 2 uses
  %i.bl = shl nuw nsw i64 %i.bk, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bj, ptr nonnull align 16 %i.d, i64 %i.bl, i1 false)
  %.not73 = icmp eq i16 %i.bi, 0
  br i1 %.not73, label %bb.e, label %.preheader

bb.d:                                             ; preds = %.preheader
  %indvars.iv.next103 = add nsw i64 %indvars.iv1023, -1
  %i.bm = icmp sgt i64 %indvars.iv1023, 1
  br i1 %i.bm, label %.preheader, label %.split.loop.exit107, !llvm.loop !165

.preheader:                                       ; preds = %._crit_edge88, %bb.d
  %indvars.iv1023 = phi i64 [ %indvars.iv.next103, %bb.d ], [ %i.bk, %._crit_edge88 ] ; 4 uses
  %i.bn = getelementptr [8 x i8], ptr %1, i64 %indvars.iv1023
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !36
  %.not74 = icmp eq i64 %i.bo, 0
  br i1 %.not74, label %bb.d, label %.split.loop.exit, !llvm.loop !165

.split.loop.exit:                                 ; preds = %.preheader
  %i.bp = trunc i64 %indvars.iv1023 to i16
  br label %.split.loop.exit107

.split.loop.exit107:                              ; preds = %bb.d, %.split.loop.exit
  %.0.in.lcssa = phi i16 [ %i.bp, %.split.loop.exit ], [ 0, %bb.d ]
  store i16 %.0.in.lcssa, ptr %1, align 8, !tbaa !40
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge88, %.split.loop.exit107
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define range(i32 -98, 1) i32 @sp_sqrmod(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.not34 = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %2, null
  %or.cond3.not = and i1 %or.cond.not34, %i.c
  br i1 %or.cond3.not, label %bb.b, label %sp_mod.exit

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, %1
  %i.d = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = zext i16 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !39
  %i.i = zext i16 %i.h to i32
  %i.j = icmp samesign ugt i32 %i.f, %i.i
  br i1 %i.j, label %sp_mod.exit, label %.thread

bb.d:                                             ; preds = %bb.b
  %i.k = icmp ugt i16 %i.d, 64
  %spec.select37 = select i1 %i.k, i32 -98, i32 0
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %.2 = phi i32 [ 0, %bb.c ], [ %spec.select37, %bb.d ] ; 2 uses
  %i.l = icmp ne i32 %.2, 0                       ; 2 uses
  %.not35 = icmp eq ptr %2, %1
  %or.cond = or i1 %.not35, %i.l
  br i1 %or.cond, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.m = tail call i32 @sp_sqr(ptr noundef nonnull %0, ptr noundef nonnull %2) ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %sp_mod.exit

bb.f:                                             ; preds = %bb.e
  %i.o = load i16, ptr %2, align 8, !tbaa !40
  %i.p = icmp ult i16 %i.o, 129
  br i1 %i.p, label %bb.g, label %sp_mod.exit

bb.g:                                             ; preds = %bb.f
  %i.q = tail call i32 @sp_div(ptr noundef nonnull readonly %2, ptr noundef nonnull readonly %1, ptr noundef null, ptr noundef nonnull %2)
  br label %sp_mod.exit

bb.h:                                             ; preds = %.thread
  br i1 %i.l, label %sp_mod.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = tail call fastcc i32 @_sp_sqrmod(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %sp_mod.exit

sp_mod.exit:                                      ; preds = %bb.a, %bb.c, %bb.g, %bb.f, %bb.h, %bb.i, %bb.e
  %.3 = phi i32 [ %.2, %bb.h ], [ %i.m, %bb.e ], [ %i.r, %bb.i ], [ %i.q, %bb.g ], [ -98, %bb.f ], [ -98, %bb.a ], [ -98, %bb.c ]
  ret i32 %.3
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal fastcc range(i32 -98, 1) i32 @_sp_sqrmod(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(address) %2) unnamed_addr #13 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.b = icmp eq i16 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store volatile i16 0, ptr %2, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store volatile i64 0, ptr %i.c, align 8, !tbaa !36
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = zext i16 %i.a to i64
  %i.e = shl nuw nsw i64 %i.d, 1
  %i.f = add nuw nsw i64 %i.e, 4294967295
  %i.g = and i64 %i.f, 4294967295
  %i.h = add nuw nsw i64 %i.g, 2
  %i.i = tail call ptr @llvm.stacksave.p0()
  %i.j = alloca i64, i64 %i.h, align 16           ; 6 uses
  %i.k = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.l = add i16 %i.k, -65
  %or.cond = icmp ult i16 %i.l, -64
  br i1 %or.cond, label %sp_mod.exit, label %sp_init_size.exit

sp_init_size.exit:                                ; preds = %bb.c
  %i.m = shl nuw nsw i16 %i.k, 1
  store volatile i16 0, ptr %i.j, align 16, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store volatile i64 0, ptr %i.n, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store volatile i16 %i.m, ptr %i.o, align 2, !tbaa !37
  %i.p = call i32 @sp_sqr(ptr noundef nonnull %0, ptr noundef nonnull %i.j) ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %sp_mod.exit

bb.d:                                             ; preds = %sp_init_size.exit
  %i.r = icmp eq ptr %1, null
  %i.s = icmp eq ptr %2, null
  %or.cond3.i = or i1 %i.r, %i.s
  br i1 %or.cond3.i, label %sp_mod.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i16, ptr %i.j, align 16, !tbaa !40
  %i.u = icmp ult i16 %i.t, 129
  br i1 %i.u, label %bb.f, label %sp_mod.exit

bb.f:                                             ; preds = %bb.e
  %i.v = call i32 @sp_div(ptr noundef nonnull readonly %i.j, ptr noundef nonnull readonly %1, ptr noundef null, ptr noundef nonnull %2)
  br label %sp_mod.exit

sp_mod.exit:                                      ; preds = %bb.c, %bb.f, %bb.e, %bb.d, %sp_init_size.exit
  %.3 = phi i32 [ -98, %bb.d ], [ %i.p, %sp_init_size.exit ], [ %i.v, %bb.f ], [ -98, %bb.e ], [ -98, %bb.c ]
  call void @llvm.stackrestore.p0(ptr %i.i)
  br label %bb.g

bb.g:                                             ; preds = %sp_mod.exit, %bb.b
  %.4 = phi i32 [ 0, %bb.b ], [ %.3, %sp_mod.exit ]
  ret i32 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define range(i32 -98, 1) i32 @sp_mont_red_ex(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.d = icmp eq i16 %i.c, 0
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = zext i16 %i.c to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !39
  %i.h = zext i16 %i.g to i32
  %i.i = shl nuw nsw i32 %i.e, 1
  %.not = icmp samesign ult i32 %i.i, %i.h
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_sp_mont_red(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -98, %bb.a ], [ -98, %bb.b ], [ -98, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_sp_mont_red(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 10 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %sp_count_bits.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %1, align 8, !tbaa !40     ; 2 uses
  %.not25.i = icmp eq i16 %i.c, 0
  br i1 %.not25.i, label %sp_count_bits.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = zext i16 %i.c to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.e = icmp sgt i64 %indvars.iv.i8, 1
  br i1 %i.e, label %bb.e, label %sp_count_bits.exit, !llvm.loop !2

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.i8 = phi i64 [ %i.d, %bb.c ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i8, -1 ; 2 uses
  %i.f = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.i8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36   ; 5 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %.critedge.i, !llvm.loop !2

.critedge.i:                                      ; preds = %bb.e
  %i.i = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.j = shl nuw nsw i32 %i.i, 6                  ; 2 uses
  %i.k = icmp ugt i64 %i.g, 4294967295
  br i1 %i.k, label %bb.f, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.critedge.i
  %i.l = tail call range(i64 32, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %reass.sub.i = add nuw nsw i32 %i.j, 64
  %i.n = sub nuw nsw i32 %reass.sub.i, %i.m
  br label %sp_count_bits.exit

bb.f:                                             ; preds = %.critedge.i
  %i.o = add nuw nsw i32 %i.j, 64                 ; 2 uses
  %i.p = icmp sgt i64 %i.g, -1
  br i1 %i.p, label %.lr.ph36.i, label %sp_count_bits.exit

.lr.ph36.i:                                       ; preds = %bb.f, %.lr.ph36.i
  %.035.i = phi i64 [ %i.r, %.lr.ph36.i ], [ %i.g, %bb.f ]
  %.234.i = phi i32 [ %i.q, %.lr.ph36.i ], [ %i.o, %bb.f ]
  %i.q = add nsw i32 %.234.i, -1                  ; 2 uses
  %i.r = shl nuw i64 %.035.i, 1                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, -1
  br i1 %i.s, label %.lr.ph36.i, label %sp_count_bits.exit, !llvm.loop !3

sp_count_bits.exit:                               ; preds = %bb.d, %.lr.ph36.i, %bb.a, %bb.b, %.lr.ph.preheader.i, %bb.f
  %.5.i = phi i32 [ %i.q, %.lr.ph36.i ], [ 0, %bb.a ], [ %i.n, %.lr.ph.preheader.i ], [ 0, %bb.b ], [ %i.o, %bb.f ], [ 0, %bb.d ] ; 5 uses
  %.not = icmp eq i32 %3, 0                       ; 3 uses
  br i1 %.not, label %bb.h, label %.preheader

.preheader:                                       ; preds = %sp_count_bits.exit
  %i.t = load i16, ptr %1, align 8, !tbaa !40     ; 5 uses
  %.not207 = icmp eq i16 %i.t, 0
  br i1 %.not207, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.u = zext i16 %i.t to i64
  %wide.trip.count = shl nuw nsw i64 %i.u, 1      ; 2 uses
  %i.v = load i16, ptr %0, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.x = zext i16 %i.v to i64                     ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 2         ; 2 uses
  %i.y = icmp eq i16 %i.t, 1
  br i1 %i.y, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 131068
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.g ]
  %i.z = icmp samesign ult i64 %indvars.iv, %i.x
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !36
  %i.ac = select i1 %i.z, i64 %i.ab, i64 0
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !36
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ad = icmp samesign ult i64 %indvars.iv.next, %i.x
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !36
  %i.ag = select i1 %i.ad, i64 %i.af, i64 0
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !36
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ah = icmp samesign ult i64 %indvars.iv.next.1, %i.x
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.1 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !36
  %i.ak = select i1 %i.ah, i64 %i.aj, i64 0
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !36
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.al = icmp samesign ult i64 %indvars.iv.next.2, %i.x
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.2 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !36
  %i.ao = select i1 %i.al, i64 %i.an, i64 0
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !36
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit186.loopexit.unr-lcssa, label %bb.g, !llvm.loop !166

bb.h:                                             ; preds = %sp_count_bits.exit
  %i.ap = load i16, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.aq = zext i16 %i.ap to i32                   ; 2 uses
  %i.ar = load i16, ptr %1, align 8, !tbaa !40    ; 3 uses
  %i.as = zext i16 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 1                ; 2 uses
  %i.au = icmp samesign ugt i32 %i.at, %i.aq
  br i1 %i.au, label %.lr.ph197, label %.loopexit186

.lr.ph197:                                        ; preds = %bb.h
  %i.av = zext i16 %i.ap to i64
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = getelementptr i8, ptr %0, i64 %i.aw
  %scevgep = getelementptr i8, ptr %i.ax, i64 8
  %i.ay = xor i32 %i.aq, -1
  %i.az = add nsw i32 %i.at, %i.ay
  %i.ba = zext i32 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 3
  %i.bc = add nuw nsw i64 %i.bb, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.bc, i1 false), !tbaa !36
  br label %.loopexit186

.loopexit186.loopexit.unr-lcssa:                  ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit186, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit186.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.loopexit186.loopexit.unr-lcssa ]
  %lcmp.mod50 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod50)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.bd = icmp samesign ult i64 %indvars.iv.epil, %i.x
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.epil ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !36
  %i.bg = select i1 %i.bd, i64 %i.bf, i64 0
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !36
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %.loopexit186, label %bb.i, !llvm.loop !167

.loopexit186:                                     ; preds = %.loopexit186.loopexit.unr-lcssa, %bb.i, %.lr.ph197, %bb.h
  %i.bh = phi i16 [ %i.ar, %.lr.ph197 ], [ %i.ar, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %.loopexit186.loopexit.unr-lcssa ] ; 6 uses
  %i.bi = icmp ult i16 %i.bh, 2
  br i1 %i.bi, label %.thread, label %bb.j

bb.j:                                             ; preds = %.loopexit186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bj = and i32 %.5.i, 63
  %i.bk = zext nneg i32 %i.bj to i64
  %notmask = shl nsw i64 -1, %i.bk
  %i.bl = xor i64 %notmask, -1
  store volatile i64 %i.bl, ptr %i.b, align 8, !tbaa !36
  %i.bm = zext i16 %i.bh to i32                   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.bo = add nsw i32 %i.bm, -1                   ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.not278 = icmp eq i16 %i.bh, 2
  %i.bq = zext nneg i32 %i.bo to i64              ; 2 uses
  %wide.trip.count228 = zext i16 %i.bh to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %indvars.iv225 = phi i64 [ 0, %bb.j ], [ %indvars.iv.next226, %._crit_edge ] ; 5 uses
  %.0126206 = phi i128 [ 0, %bb.j ], [ %i.de, %._crit_edge ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv225 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !36 ; 2 uses
  %i.bt = mul i64 %i.bs, %2                       ; 3 uses
  %i.bu = icmp eq i64 %indvars.iv225, %i.bq
  br i1 %i.bu, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %.0..0..0..0. = load volatile i64, ptr %i.b, align 8, !tbaa !36
  %.not134 = icmp eq i64 %.0..0..0..0., 0
  br i1 %.not134, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.0..0..0..0.18 = load volatile i64, ptr %i.b, align 8, !tbaa !36
  %i.bv = and i64 %.0..0..0..0.18, %i.bt
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.0127 = phi i64 [ %i.bv, %bb.m ], [ %i.bt, %bb.l ], [ %i.bt, %bb.k ]
  %i.bw = zext i64 %i.bs to i128
  %i.bx = zext i64 %.0127 to i128                 ; 3 uses
  %i.by = load i64, ptr %i.bp, align 8, !tbaa !36
  %i.bz = zext i64 %i.by to i128
  %i.ca = mul nuw i128 %i.bz, %i.bx
  %i.cb = add nuw i128 %i.ca, %i.bw               ; 2 uses
  %i.cc = trunc i128 %i.cb to i64
  store i64 %i.cc, ptr %i.br, align 8, !tbaa !36
  %.0128199 = lshr i128 %i.cb, 64                 ; 2 uses
  br i1 %.not278, label %._crit_edge, label %.lr.ph202

.lr.ph202:                                        ; preds = %bb.n, %.lr.ph202
  %indvars.iv220 = phi i64 [ %indvars.iv.next221, %.lr.ph202 ], [ 1, %bb.n ] ; 3 uses
  %.0128201 = phi i128 [ %.0128.a, %.lr.ph202 ], [ %.0128199, %bb.n ]
  %i.cd = add nuw i64 %indvars.iv220, %indvars.iv225
  %4 = and i64 %i.cd, 4294967295
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %4 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !36
  %i.cg = zext i64 %i.cf to i128
  %i.ch = add nuw nsw i128 %.0128201, %i.cg
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv220
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !36
  %i.ck = zext i64 %i.cj to i128
  %i.cl = mul nuw i128 %i.ck, %i.bx
  %i.cm = add nuw i128 %i.ch, %i.cl               ; 2 uses
  %i.cn = trunc i128 %i.cm to i64
  store i64 %i.cn, ptr %i.ce, align 8, !tbaa !36
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1 ; 2 uses
  %.0128.a = lshr i128 %i.cm, 64                  ; 2 uses
  %exitcond224.not = icmp eq i64 %indvars.iv.next221, %i.bq
  br i1 %exitcond224.not, label %._crit_edge, label %.lr.ph202, !llvm.loop !168

._crit_edge:                                      ; preds = %.lr.ph202, %bb.n
  %.0125.lcssa = phi i32 [ 1, %bb.n ], [ %i.bo, %.lr.ph202 ] ; 2 uses
  %.0128.lcssa = phi i128 [ %.0128199, %bb.n ], [ %.0128.a, %.lr.ph202 ]
  %.pre-phi240 = trunc i64 %indvars.iv225 to i32
  %5 = add nuw nsw i128 %.0128.lcssa, %.0126206
  %i.co = add i32 %.0125.lcssa, %.pre-phi240
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.cp ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !36
  %i.cs = zext i64 %i.cr to i128
  %i.ct = add nuw nsw i128 %5, %i.cs              ; 2 uses
  %i.cu = lshr i128 %i.ct, 64
  %i.cv = zext nneg i32 %.0125.lcssa to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cv
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !36
  %i.cy = zext i64 %i.cx to i128
  %i.cz = mul nuw i128 %i.cy, %i.bx
  %i.da = and i128 %i.ct, 18446744073709551615
  %i.db = add nuw i128 %i.cz, %i.da               ; 2 uses
  %i.dc = trunc i128 %i.db to i64
  store i64 %i.dc, ptr %i.cq, align 8, !tbaa !36
  %i.dd = lshr i128 %i.db, 64
  %i.de = add nuw nsw i128 %i.dd, %i.cu           ; 2 uses
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1 ; 2 uses
  %exitcond229.not = icmp eq i64 %indvars.iv.next226, %wide.trip.count228
  br i1 %exitcond229.not, label %bb.o, label %bb.k, !llvm.loop !169

bb.o:                                             ; preds = %._crit_edge
  %i.df = shl nuw nsw i32 %i.bm, 1
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr [8 x i8], ptr %i.bn, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 -8     ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !36
  %i.dk = zext i64 %i.dj to i128
  %i.dl = add nuw nsw i128 %i.de, %i.dk           ; 2 uses
  %i.dm = trunc i128 %i.dl to i64
  store i64 %i.dm, ptr %i.di, align 8, !tbaa !36
  %i.dn = lshr i128 %i.dl, 64
  %i.do = trunc nuw nsw i128 %i.dn to i64
  %i.dp = zext i16 %i.bh to i64
  %.idx = shl nuw nsw i64 %i.dp, 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.idx
  store i64 %i.do, ptr %i.dq, align 8, !tbaa !36
  %i.dr = shl i16 %i.bh, 1
  %i.ds = or disjoint i16 %i.dr, 1                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %.not, label %bb.p, label %bb.ad

.thread:                                          ; preds = %.loopexit186, %.preheader
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !36 ; 2 uses
  %i.dv = mul i64 %i.du, %2
  %i.dw = zext i64 %i.du to i128
  %i.dx = zext i64 %i.dv to i128
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !36
  %i.ea = zext i64 %i.dz to i128
  %i.eb = mul nuw i128 %i.dx, %i.ea
  %i.ec = add nuw i128 %i.eb, %i.dw               ; 2 uses
  %i.ed = trunc i128 %i.ec to i64
  store i64 %i.ed, ptr %i.dt, align 8, !tbaa !36
  %i.ee = lshr i128 %i.ec, 64
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !36
  %i.eh = zext i64 %i.eg to i128
  %i.ei = add nuw nsw i128 %i.ee, %i.eh           ; 2 uses
  %i.ej = trunc i128 %i.ei to i64
  store i64 %i.ej, ptr %i.ef, align 8, !tbaa !36
  %i.ek = lshr i128 %i.ei, 64
  %i.el = trunc nuw nsw i128 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.el, ptr %i.em, align 8, !tbaa !36
  br i1 %.not, label %bb.p, label %.thread265

bb.p:                                             ; preds = %.thread, %bb.o
  %.0129263 = phi i32 [ 64, %.thread ], [ %.5.i, %bb.o ] ; 3 uses
  %i.en = phi i16 [ 3, %.thread ], [ %i.ds, %bb.o ]
  %i.eo = zext i16 %i.en to i64
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  %indvars.iv.next231 = add nsw i64 %indvars.iv2309, -1
  %i.ep = icmp sgt i64 %indvars.iv2309, 1
  br i1 %i.ep, label %bb.r, label %.split.loop.exit, !llvm.loop !170

bb.r:                                             ; preds = %bb.p, %bb.q
  %indvars.iv2309 = phi i64 [ %i.eo, %bb.p ], [ %indvars.iv.next231, %bb.q ] ; 4 uses
  %i.eq = getelementptr [8 x i8], ptr %0, i64 %indvars.iv2309
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !36
  %.not136 = icmp eq i64 %i.er, 0
  br i1 %.not136, label %bb.q, label %.split.loop.exit276, !llvm.loop !170

.split.loop.exit276:                              ; preds = %bb.r
  %i.es = trunc i64 %indvars.iv2309 to i16
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.q, %.split.loop.exit276
  %.0.in.lcssa = phi i16 [ %i.es, %.split.loop.exit276 ], [ 0, %bb.q ] ; 6 uses
  store i16 %.0.in.lcssa, ptr %0, align 8, !tbaa !40
  %i.et = icmp slt i32 %.0129263, 0
  %i.eu = tail call i32 @llvm.smax.i32(i32 %.0129263, i32 0)
  %i.ev = lshr i32 %i.eu, 6                       ; 6 uses
  br i1 %i.et, label %sp_rshb.exit, label %bb.s

bb.s:                                             ; preds = %.split.loop.exit
  %i.ew = zext i16 %.0.in.lcssa to i32            ; 2 uses
  %.not.i138 = icmp samesign ult i32 %i.ev, %i.ew
  br i1 %.not.i138, label %bb.t, label %sp_rshb.exit.thread

sp_rshb.exit.thread:                              ; preds = %bb.s
  store volatile i16 0, ptr %0, align 8, !tbaa !34
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8
  store volatile i64 0, ptr %i.ex, align 8, !tbaa !36
  %i.ey = load i16, ptr %1, align 8, !tbaa !40
  br label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.ez = sub nuw nsw i32 %i.ew, %i.ev
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !39
  %i.fc = zext i16 %i.fb to i32
  %i.fd = icmp samesign ugt i32 %i.ez, %i.fc
  br i1 %i.fd, label %sp_rshb.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fe = and i32 %.0129263, 63                   ; 4 uses
  %i.ff = icmp eq i32 %i.fe, 0
  %i.fg = trunc nuw i32 %i.ev to i16              ; 2 uses
  br i1 %i.ff, label %bb.v, label %.preheader.i139

.preheader.i139:                                  ; preds = %bb.u
  %i.fh = xor i16 %i.fg, -1
  %i.fi = add i16 %.0.in.lcssa, %i.fh             ; 5 uses
  %.not66.i = icmp eq i16 %i.fi, 0
  br i1 %.not66.i, label %.preheader.._crit_edge_crit_edge.i, label %.lr.ph.i

.preheader.._crit_edge_crit_edge.i:               ; preds = %.preheader.i139
  %.pre.i = zext nneg i32 %i.fe to i64
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i139
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.fk = zext nneg i32 %i.fe to i64              ; 3 uses
  %i.fl = sub nuw nsw i32 64, %i.fe
  %i.fm = zext nneg i32 %i.fl to i64              ; 2 uses
  %i.fn = zext nneg i32 %i.ev to i64
  %wide.trip.count.i = zext i16 %i.fi to i64      ; 4 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fn ; 2 uses
  %min.iters.check23 = icmp ult i16 %i.fi, 4
  br i1 %min.iters.check23, label %scalar.ph22.preheader, label %vector.ph24

vector.ph24:                                      ; preds = %.lr.ph.i
  %n.vec25 = and i64 %wide.trip.count.i, 65532    ; 3 uses
  %broadcast.splatinsert26 = insertelement <2 x i64> poison, i64 %i.fk, i64 0
  %broadcast.splat27 = shufflevector <2 x i64> %broadcast.splatinsert26, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert28 = insertelement <2 x i64> poison, i64 %i.fm, i64 0
  %broadcast.splat29 = shufflevector <2 x i64> %broadcast.splatinsert28, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph24
  %index31 = phi i64 [ 0, %vector.ph24 ], [ %index.next36, %vector.body30 ] ; 3 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %index31 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %wide.load32 = load <2 x i64>, ptr %i.fo, align 8, !tbaa !36
  %wide.load33 = load <2 x i64>, ptr %i.fp, align 8, !tbaa !36
  %i.fq = lshr <2 x i64> %wide.load32, %broadcast.splat27
  %i.fr = lshr <2 x i64> %wide.load33, %broadcast.splat27
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %wide.load34 = load <2 x i64>, ptr %i.fs, align 8, !tbaa !36
  %wide.load35 = load <2 x i64>, ptr %i.ft, align 8, !tbaa !36
  %i.fu = shl <2 x i64> %wide.load34, %broadcast.splat29
  %i.fv = shl <2 x i64> %wide.load35, %broadcast.splat29
  %i.fw = or <2 x i64> %i.fu, %i.fq
  %i.fx = or <2 x i64> %i.fv, %i.fr
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %index31 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store <2 x i64> %i.fw, ptr %i.fy, align 8, !tbaa !36
  store <2 x i64> %i.fx, ptr %i.fz, align 8, !tbaa !36
  %index.next36 = add nuw i64 %index31, 4         ; 2 uses
  %i.ga = icmp eq i64 %index.next36, %n.vec25
  br i1 %i.ga, label %middle.block37, label %vector.body30, !llvm.loop !171

middle.block37:                                   ; preds = %vector.body30
  %cmp.n38 = icmp eq i64 %n.vec25, %wide.trip.count.i
  br i1 %cmp.n38, label %._crit_edge.loopexit.i, label %scalar.ph22.preheader

scalar.ph22.preheader:                            ; preds = %.lr.ph.i, %middle.block37
  %indvars.iv.i140.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec25, %middle.block37 ]
  br label %scalar.ph22

bb.v:                                             ; preds = %bb.u
  %i.gb = sub nuw i16 %.0.in.lcssa, %i.fg         ; 3 uses
  store i16 %i.gb, ptr %0, align 8, !tbaa !40
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gd = zext nneg i32 %i.ev to i64
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.gd
  %i.gf = zext i16 %i.gb to i64
  %i.gg = shl nuw nsw i64 %i.gf, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gc, ptr nonnull align 8 %i.ge, i64 %i.gg, i1 false)
  br label %sp_rshb.exit

scalar.ph22:                                      ; preds = %scalar.ph22.preheader, %scalar.ph22
  %indvars.iv.i140 = phi i64 [ %indvars.iv.next.i141, %scalar.ph22 ], [ %indvars.iv.i140.ph, %scalar.ph22.preheader ] ; 3 uses
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i140 ; 2 uses
  %i.gh = load i64, ptr %gep.i, align 8, !tbaa !36
  %i.gi = lshr i64 %i.gh, %i.fk
  %i.gj = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !36
  %i.gl = shl i64 %i.gk, %i.fm
  %i.gm = or i64 %i.gl, %i.gi
end_hunk_4
