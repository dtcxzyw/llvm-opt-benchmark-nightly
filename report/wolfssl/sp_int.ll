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
begin_hunk_1_@_sp_sqrmod:bb.a
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
end_hunk_1
