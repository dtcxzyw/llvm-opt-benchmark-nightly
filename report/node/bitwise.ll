Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/bitwise?download=true
inline.NumInlined: 238
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN2v86bigint16BitwiseOr_NegNegENS0_8RWDigitsENS0_6DigitsES2_:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2v86bigint16BitwiseOr_PosNegENS0_8RWDigitsENS0_6DigitsES2_(ptr nofree captures(none) %0, i32 %1, ptr nofree readonly captures(none) %2, i32 %3, ptr nofree readonly captures(none) %4, i32 %5) local_unnamed_addr #0 !guid !40 {
bb.a:
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %5, i32 %3) ; 6 uses
  %.not = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not, label %.preheader33, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %.sroa.speculated to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.a = icmp eq i32 %.sroa.speculated, 1
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph

.preheader33.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader33, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader33.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.preheader33.loopexit.unr-lcssa ] ; 3 uses
  %.03134.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.ar, %.preheader33.loopexit.unr-lcssa ]
  %lcmp.mod56 = trunc i32 %.sroa.speculated to i1
  tail call void @llvm.assume(i1 %lcmp.mod56)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.epil.init
  %.0.copyload.i.i.epil = load i64, ptr %i.b, align 1
  %i.c = zext i64 %.0.copyload.i.i.epil to i128
  %i.d = zext nneg i64 %.03134.epil.init to i128
  %i.e = sub nsw i128 %i.c, %i.d                  ; 2 uses
  %i.f = lshr i128 %i.e, 64
  %i.g = trunc nuw i128 %i.f to i64
  %i.h = and i64 %i.g, 1
  %i.i = trunc i128 %i.e to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil.init
  %.0.copyload.i.i13.epil = load i64, ptr %i.j, align 1
  %i.k = xor i64 %.0.copyload.i.i13.epil, -1
  %i.l = and i64 %i.i, %i.k
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil.init
  store i64 %i.l, ptr %i.m, align 4
  br label %.preheader33

.preheader33:                                     ; preds = %.lr.ph.epil.preheader, %.preheader33.loopexit.unr-lcssa, %bb.a
  %.031.lcssa = phi i64 [ 1, %bb.a ], [ %i.ar, %.preheader33.loopexit.unr-lcssa ], [ %i.h, %.lr.ph.epil.preheader ] ; 2 uses
  %i.n = icmp ult i32 %3, %5
  br i1 %i.n, label %.lr.ph39.preheader, label %.preheader

.lr.ph39.preheader:                               ; preds = %.preheader33
  %i.o = zext i32 %.sroa.speculated to i64        ; 6 uses
  %wide.trip.count49 = zext i32 %5 to i64         ; 3 uses
  %i.p = sub nsw i64 %wide.trip.count49, %i.o
  %xtraiter57 = and i64 %i.p, 1
  %lcmp.mod58.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod58.not, label %.lr.ph39.prol.loopexit, label %.lr.ph39.prol

.lr.ph39.prol:                                    ; preds = %.lr.ph39.preheader
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.o
  %.0.copyload.i.i14.prol = load i64, ptr %i.q, align 1
  %i.r = zext i64 %.0.copyload.i.i14.prol to i128
  %i.s = zext nneg i64 %.031.lcssa to i128
  %i.t = sub nsw i128 %i.r, %i.s                  ; 2 uses
  %i.u = lshr i128 %i.t, 64
  %i.v = trunc nuw i128 %i.u to i64
  %i.w = and i64 %i.v, 1
  %i.x = trunc i128 %i.t to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.o
  store i64 %i.x, ptr %i.y, align 4
  %indvars.iv.next47.prol = add nuw nsw i64 %i.o, 1
  br label %.lr.ph39.prol.loopexit

.lr.ph39.prol.loopexit:                           ; preds = %.lr.ph39.prol, %.lr.ph39.preheader
  %indvars.iv46.unr = phi i64 [ %i.o, %.lr.ph39.preheader ], [ %indvars.iv.next47.prol, %.lr.ph39.prol ]
  %.13237.unr = phi i64 [ %.031.lcssa, %.lr.ph39.preheader ], [ %i.w, %.lr.ph39.prol ]
  %i.z = add nsw i64 %wide.trip.count49, -1
  %i.aa = icmp eq i64 %i.z, %i.o
  br i1 %i.aa, label %.preheader, label %.lr.ph39

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %.03134 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.ar, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %.0.copyload.i.i = load i64, ptr %i.ab, align 1
  %i.ac = zext i64 %.0.copyload.i.i to i128
  %i.ad = zext nneg i64 %.03134 to i128
  %i.ae = sub nsw i128 %i.ac, %i.ad               ; 2 uses
  %i.af = lshr i128 %i.ae, 64
  %i.ag = trunc i128 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %.0.copyload.i.i13 = load i64, ptr %i.ah, align 1
  %i.ai = xor i64 %.0.copyload.i.i13, -1
  %i.aj = and i64 %i.ag, %i.ai
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store i64 %i.aj, ptr %i.ak, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next
  %.0.copyload.i.i.1 = load i64, ptr %i.al, align 1
  %i.am = zext i64 %.0.copyload.i.i.1 to i128
  %i.an = and i128 %i.af, 1
  %i.ao = sub nsw i128 %i.am, %i.an               ; 2 uses
  %i.ap = lshr i128 %i.ao, 64
  %i.aq = trunc nuw i128 %i.ap to i64
  %i.ar = and i64 %i.aq, 1                        ; 3 uses
  %i.as = trunc i128 %i.ao to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %.0.copyload.i.i13.1 = load i64, ptr %i.at, align 1
  %i.au = xor i64 %.0.copyload.i.i13.1, -1
  %i.av = and i64 %i.as, %i.au
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  store i64 %i.av, ptr %i.aw, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader33.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !38

.preheader:                                       ; preds = %.lr.ph39.prol.loopexit, %.lr.ph39, %.preheader33
  %.1.lcssa = phi i32 [ %.sroa.speculated, %.preheader33 ], [ %5, %.lr.ph39 ], [ %5, %.lr.ph39.prol.loopexit ] ; 3 uses
  %i.ax = icmp ult i32 %.1.lcssa, %1
  br i1 %i.ax, label %.lr.ph42.preheader, label %._crit_edge

.lr.ph42.preheader:                               ; preds = %.preheader
  %i.ay = zext i32 %.1.lcssa to i64
  %i.az = shl nuw nsw i64 %i.ay, 3
  %scevgep = getelementptr i8, ptr %0, i64 %i.az
  %i.ba = xor i32 %.1.lcssa, -1
  %i.bb = add i32 %1, %i.ba
  %i.bc = zext i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bd, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.be, i1 false)
  br label %._crit_edge

.lr.ph39:                                         ; preds = %.lr.ph39.prol.loopexit, %.lr.ph39
  %indvars.iv46 = phi i64 [ %indvars.iv.next47.1, %.lr.ph39 ], [ %indvars.iv46.unr, %.lr.ph39.prol.loopexit ] ; 4 uses
  %.13237 = phi i64 [ %i.bs, %.lr.ph39 ], [ %.13237.unr, %.lr.ph39.prol.loopexit ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv46
  %.0.copyload.i.i14 = load i64, ptr %i.bf, align 1
  %i.bg = zext i64 %.0.copyload.i.i14 to i128
  %i.bh = zext nneg i64 %.13237 to i128
  %i.bi = sub nsw i128 %i.bg, %i.bh               ; 2 uses
  %i.bj = lshr i128 %i.bi, 64
  %i.bk = trunc i128 %i.bi to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv46
  store i64 %i.bk, ptr %i.bl, align 4
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next47
  %.0.copyload.i.i14.1 = load i64, ptr %i.bm, align 1
  %i.bn = zext i64 %.0.copyload.i.i14.1 to i128
  %i.bo = and i128 %i.bj, 1
  %i.bp = sub nsw i128 %i.bn, %i.bo               ; 2 uses
  %i.bq = lshr i128 %i.bp, 64
  %i.br = trunc nuw i128 %i.bq to i64
  %i.bs = and i64 %i.br, 1
  %i.bt = trunc i128 %i.bp to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next47
  store i64 %i.bt, ptr %i.bu, align 4
  %indvars.iv.next47.1 = add nuw nsw i64 %indvars.iv46, 2 ; 2 uses
  %exitcond50.not.1 = icmp eq i64 %indvars.iv.next47.1, %wide.trip.count49
  br i1 %exitcond50.not.1, label %.preheader, label %.lr.ph39, !llvm.loop !39

._crit_edge:                                      ; preds = %.lr.ph42.preheader, %.preheader
  %.0.copyload.i.peel.i = load i64, ptr %0, align 4 ; 2 uses
  %add.narrowed.i.peel.i = add i64 %.0.copyload.i.peel.i, 1
  %add.narrowed.overflow.i.not.peel.i = icmp eq i64 %.0.copyload.i.peel.i, -1
  store i64 %add.narrowed.i.peel.i, ptr %0, align 4
  br i1 %add.narrowed.overflow.i.not.peel.i, label %.peel.next.i, label %_ZN2v86bigint3AddENS0_8RWDigitsEm.exit

.peel.next.i:                                     ; preds = %._crit_edge, %.peel.next.i
  %.0.i = phi i32 [ %i.bx, %.peel.next.i ], [ 1, %._crit_edge ] ; 2 uses
  %i.bv = zext i32 %.0.i to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bv ; 2 uses
  %.0.copyload.i.i15 = load i64, ptr %i.bw, align 4 ; 2 uses
  %add.narrowed.i.i = add i64 %.0.copyload.i.i15, 1
  %add.narrowed.overflow.i.not.i = icmp eq i64 %.0.copyload.i.i15, -1
  store i64 %add.narrowed.i.i, ptr %i.bw, align 4
  %i.bx = add i32 %.0.i, 1
  br i1 %add.narrowed.overflow.i.not.i, label %.peel.next.i, label %_ZN2v86bigint3AddENS0_8RWDigitsEm.exit, !llvm.loop !0

_ZN2v86bigint3AddENS0_8RWDigitsEm.exit:           ; preds = %.peel.next.i, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v86bigint17BitwiseXor_PosPosENS0_8RWDigitsENS0_6DigitsES2_(ptr nofree writeonly captures(none) %0, i32 %1, ptr nofree readonly captures(none) %2, i32 %3, ptr nofree readonly captures(none) %4, i32 %5) local_unnamed_addr #1 !guid !47 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = icmp ult i32 %5, %3
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.018.0 = phi ptr [ %2, %bb.b ], [ %4, %bb.a ] ; 13 uses
  %.sroa.5.0 = phi i32 [ %3, %bb.b ], [ %5, %bb.a ] ; 5 uses
  %.sroa.024.0 = phi ptr [ %4, %bb.b ], [ %2, %bb.a ] ; 7 uses
  %.013 = phi i32 [ %5, %bb.b ], [ %3, %bb.a ]    ; 6 uses
  %.sroa.018.057 = ptrtoaddr ptr %.sroa.024.0 to i64
  %.sroa.024.058 = ptrtoaddr ptr %.sroa.018.0 to i64 ; 2 uses
  %.not = icmp eq i32 %.013, 0
  br i1 %.not, label %.preheader33, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext i32 %.013 to i64        ; 5 uses
  %min.iters.check = icmp ult i32 %.013, 12
  br i1 %min.iters.check, label %.lr.ph.preheader80, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.c = sub i64 %.sroa.018.057, %i.a
  %diff.check = icmp ugt i64 %i.c, -32
  %i.d = sub i64 %.sroa.024.058, %i.a
  %diff.check59 = icmp ugt i64 %i.d, -32
  %conflict.rdx = or i1 %diff.check, %diff.check59
  br i1 %conflict.rdx, label %.lr.ph.preheader80, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.sroa.024.0, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load = load <2 x i64>, ptr %i.e, align 1
  %wide.load60 = load <2 x i64>, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.sroa.018.0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load61 = load <2 x i64>, ptr %i.g, align 1
  %wide.load62 = load <2 x i64>, ptr %i.h, align 1
  %i.i = xor <2 x i64> %wide.load61, %wide.load
  %i.j = xor <2 x i64> %wide.load62, %wide.load60
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <2 x i64> %i.i, ptr %i.k, align 4
  store <2 x i64> %i.j, ptr %i.l, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader33, label %.lr.ph.preheader80

.lr.ph.preheader80:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader80, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader80 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader80 ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.024.0, i64 %indvars.iv.prol
  %.0.copyload.i.i.prol = load i64, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.sroa.018.0, i64 %indvars.iv.prol
  %.0.copyload.i.i14.prol = load i64, ptr %i.o, align 1
  %i.p = xor i64 %.0.copyload.i.i14.prol, %.0.copyload.i.i.prol
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.prol
  store i64 %i.p, ptr %i.q, align 4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !42

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader80
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader80 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.r = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.s = icmp ugt i64 %i.r, -4
  br i1 %i.s, label %.preheader33, label %.lr.ph

.preheader33:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.c
  %i.t = icmp ult i32 %.013, %.sroa.5.0
  br i1 %i.t, label %.lr.ph36.preheader, label %.preheader

.lr.ph36.preheader:                               ; preds = %.preheader33
  %i.u = zext i32 %.013 to i64                    ; 4 uses
  %wide.trip.count46 = zext i32 %.sroa.5.0 to i64 ; 4 uses
  %i.v = sub nsw i64 %wide.trip.count46, %i.u     ; 3 uses
  %min.iters.check66 = icmp ult i64 %i.v, 8
  %i.w = sub i64 %.sroa.024.058, %i.a
  %diff.check68 = icmp ugt i64 %i.w, -32
  %or.cond = select i1 %min.iters.check66, i1 true, i1 %diff.check68
  br i1 %or.cond, label %.lr.ph36.preheader79, label %vector.ph69

vector.ph69:                                      ; preds = %.lr.ph36.preheader
  %n.vec70 = and i64 %i.v, -4                     ; 3 uses
  %i.x = add nsw i64 %n.vec70, %i.u
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph69
  %index72 = phi i64 [ 0, %vector.ph69 ], [ %index.next75, %vector.body71 ] ; 2 uses
  %i.y = add nuw i64 %index72, %i.u               ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.018.0, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load73 = load <2 x i64>, ptr %i.z, align 1
  %wide.load74 = load <2 x i64>, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.y ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <2 x i64> %wide.load73, ptr %i.ab, align 4
  store <2 x i64> %wide.load74, ptr %i.ac, align 4
  %index.next75 = add nuw i64 %index72, 4         ; 2 uses
  %i.ad = icmp eq i64 %index.next75, %n.vec70
  br i1 %i.ad, label %middle.block76, label %vector.body71, !llvm.loop !43

middle.block76:                                   ; preds = %vector.body71
  %cmp.n77 = icmp eq i64 %i.v, %n.vec70
  br i1 %cmp.n77, label %.preheader, label %.lr.ph36.preheader79

.lr.ph36.preheader79:                             ; preds = %.lr.ph36.preheader, %middle.block76
  %indvars.iv43.ph = phi i64 [ %i.u, %.lr.ph36.preheader ], [ %i.x, %middle.block76 ] ; 4 uses
  %i.ae = sub nsw i64 %wide.trip.count46, %indvars.iv43.ph
  %xtraiter81 = and i64 %i.ae, 3                  ; 2 uses
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %.lr.ph36.prol.loopexit, label %.lr.ph36.prol

.lr.ph36.prol:                                    ; preds = %.lr.ph36.preheader79, %.lr.ph36.prol
  %indvars.iv43.prol = phi i64 [ %indvars.iv.next44.prol, %.lr.ph36.prol ], [ %indvars.iv43.ph, %.lr.ph36.preheader79 ] ; 3 uses
  %prol.iter83 = phi i64 [ %prol.iter83.next, %.lr.ph36.prol ], [ 0, %.lr.ph36.preheader79 ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.018.0, i64 %indvars.iv43.prol
  %.0.copyload.i.i15.prol = load i64, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv43.prol
  store i64 %.0.copyload.i.i15.prol, ptr %i.ag, align 4
  %indvars.iv.next44.prol = add nuw nsw i64 %indvars.iv43.prol, 1 ; 2 uses
  %prol.iter83.next = add i64 %prol.iter83, 1     ; 2 uses
  %prol.iter83.cmp.not = icmp eq i64 %prol.iter83.next, %xtraiter81
  br i1 %prol.iter83.cmp.not, label %.lr.ph36.prol.loopexit, label %.lr.ph36.prol, !llvm.loop !44

.lr.ph36.prol.loopexit:                           ; preds = %.lr.ph36.prol, %.lr.ph36.preheader79
  %indvars.iv43.unr = phi i64 [ %indvars.iv43.ph, %.lr.ph36.preheader79 ], [ %indvars.iv.next44.prol, %.lr.ph36.prol ]
  %i.ah = sub nsw i64 %indvars.iv43.ph, %wide.trip.count46
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %.preheader, label %.lr.ph36

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.024.0, i64 %indvars.iv
  %.0.copyload.i.i = load i64, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.018.0, i64 %indvars.iv
  %.0.copyload.i.i14 = load i64, ptr %i.ak, align 1
  %i.al = xor i64 %.0.copyload.i.i14, %.0.copyload.i.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store i64 %i.al, ptr %i.am, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.024.0, i64 %indvars.iv.next
  %.0.copyload.i.i.1 = load i64, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.018.0, i64 %indvars.iv.next
  %.0.copyload.i.i14.1 = load i64, ptr %i.ao, align 1
  %i.ap = xor i64 %.0.copyload.i.i14.1, %.0.copyload.i.i.1
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  store i64 %i.ap, ptr %i.aq, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.sroa.024.0, i64 %indvars.iv.next.1
  %.0.copyload.i.i.2 = load i64, ptr %i.ar, align 1
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.sroa.018.0, i64 %indvars.iv.next.1
  %.0.copyload.i.i14.2 = load i64, ptr %i.as, align 1
  %i.at = xor i64 %.0.copyload.i.i14.2, %.0.copyload.i.i.2
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.1
  store i64 %i.at, ptr %i.au, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.sroa.024.0, i64 %indvars.iv.next.2
  %.0.copyload.i.i.3 = load i64, ptr %i.av, align 1
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.018.0, i64 %indvars.iv.next.2
  %.0.copyload.i.i14.3 = load i64, ptr %i.aw, align 1
  %i.ax = xor i64 %.0.copyload.i.i14.3, %.0.copyload.i.i.3
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.2
  store i64 %i.ax, ptr %i.ay, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader33, label %.lr.ph, !llvm.loop !45

.preheader:                                       ; preds = %.lr.ph36.prol.loopexit, %.lr.ph36, %middle.block76, %.preheader33
  %.1.lcssa = phi i32 [ %.013, %.preheader33 ], [ %.sroa.5.0, %middle.block76 ], [ %.sroa.5.0, %.lr.ph36 ], [ %.sroa.5.0, %.lr.ph36.prol.loopexit ] ; 3 uses
  %i.az = icmp ult i32 %.1.lcssa, %1
  br i1 %i.az, label %.lr.ph39.preheader, label %._crit_edge

.lr.ph39.preheader:                               ; preds = %.preheader
  %i.ba = zext i32 %.1.lcssa to i64
  %i.bb = shl nuw nsw i64 %i.ba, 3
  %scevgep = getelementptr i8, ptr %0, i64 %i.bb
  %i.bc = xor i32 %.1.lcssa, -1
  %i.bd = add i32 %1, %i.bc
  %i.be = zext i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = add nuw nsw i64 %i.bf, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.bg, i1 false)
  br label %._crit_edge

.lr.ph36:                                         ; preds = %.lr.ph36.prol.loopexit, %.lr.ph36
  %indvars.iv43 = phi i64 [ %indvars.iv.next44.3, %.lr.ph36 ], [ %indvars.iv43.unr, %.lr.ph36.prol.loopexit ] ; 6 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.018.0, i64 %indvars.iv43
  %.0.copyload.i.i15 = load i64, ptr %i.bh, align 1
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv43
  store i64 %.0.copyload.i.i15, ptr %i.bi, align 4
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.018.0, i64 %indvars.iv.next44
  %.0.copyload.i.i15.1 = load i64, ptr %i.bj, align 1
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next44
  store i64 %.0.copyload.i.i15.1, ptr %i.bk, align 4
  %indvars.iv.next44.1 = add nuw nsw i64 %indvars.iv43, 2 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.018.0, i64 %indvars.iv.next44.1
  %.0.copyload.i.i15.2 = load i64, ptr %i.bl, align 1
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next44.1
  store i64 %.0.copyload.i.i15.2, ptr %i.bm, align 4
  %indvars.iv.next44.2 = add nuw nsw i64 %indvars.iv43, 3 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.018.0, i64 %indvars.iv.next44.2
  %.0.copyload.i.i15.3 = load i64, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next44.2
  store i64 %.0.copyload.i.i15.3, ptr %i.bo, align 4
  %indvars.iv.next44.3 = add nuw nsw i64 %indvars.iv43, 4 ; 2 uses
  %exitcond47.not.3 = icmp eq i64 %indvars.iv.next44.3, %wide.trip.count46
  br i1 %exitcond47.not.3, label %.preheader, label %.lr.ph36, !llvm.loop !46

._crit_edge:                                      ; preds = %.lr.ph39.preheader, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2v86bigint17BitwiseXor_NegNegENS0_8RWDigitsENS0_6DigitsES2_(ptr nofree writeonly captures(none) %0, i32 %1, ptr nofree readonly captures(none) %2, i32 %3, ptr nofree readonly captures(none) %4, i32 %5) local_unnamed_addr #0 !guid !51 {
bb.a:
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %5, i32 %3) ; 4 uses
  %.not = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not, label %.preheader46, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %.sroa.speculated to i64
  br label %.lr.ph

.preheader46:                                     ; preds = %.lr.ph, %bb.a
  %.043.lcssa = phi i64 [ 1, %bb.a ], [ %i.ab, %.lr.ph ] ; 2 uses
  %.041.lcssa = phi i64 [ 1, %bb.a ], [ %i.u, %.lr.ph ] ; 2 uses
  %i.a = icmp ult i32 %5, %3
  br i1 %i.a, label %.lr.ph54.preheader, label %.preheader45

.lr.ph54.preheader:                               ; preds = %.preheader46
  %i.b = zext i32 %.sroa.speculated to i64        ; 6 uses
  %wide.trip.count70 = zext i32 %3 to i64         ; 3 uses
  %i.c = sub nsw i64 %wide.trip.count70, %i.b
  %xtraiter = and i64 %i.c, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph54.prol.loopexit, label %.lr.ph54.prol

.lr.ph54.prol:                                    ; preds = %.lr.ph54.preheader
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.b
  %.0.copyload.i.i18.prol = load i64, ptr %i.d, align 1
  %i.e = zext i64 %.0.copyload.i.i18.prol to i128
  %i.f = zext nneg i64 %.041.lcssa to i128
  %i.g = sub nsw i128 %i.e, %i.f                  ; 2 uses
  %i.h = lshr i128 %i.g, 64
  %i.i = trunc nuw i128 %i.h to i64
  %i.j = and i64 %i.i, 1
  %i.k = trunc i128 %i.g to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  store i64 %i.k, ptr %i.l, align 4
  %indvars.iv.next68.prol = add nuw nsw i64 %i.b, 1
  br label %.lr.ph54.prol.loopexit

.lr.ph54.prol.loopexit:                           ; preds = %.lr.ph54.prol, %.lr.ph54.preheader
  %indvars.iv67.unr = phi i64 [ %i.b, %.lr.ph54.preheader ], [ %indvars.iv.next68.prol, %.lr.ph54.prol ]
  %.14252.unr = phi i64 [ %.041.lcssa, %.lr.ph54.preheader ], [ %i.j, %.lr.ph54.prol ]
  %i.m = add nsw i64 %wide.trip.count70, -1
  %i.n = icmp eq i64 %i.m, %i.b
  br i1 %i.n, label %.preheader45, label %.lr.ph54

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %.04148 = phi i64 [ 1, %.lr.ph.preheader ], [ %i.u, %.lr.ph ]
  %.04347 = phi i64 [ 1, %.lr.ph.preheader ], [ %i.ab, %.lr.ph ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %.0.copyload.i.i = load i64, ptr %i.o, align 1
  %i.p = zext i64 %.0.copyload.i.i to i128
  %i.q = zext nneg i64 %.04148 to i128
  %i.r = sub nsw i128 %i.p, %i.q                  ; 2 uses
  %i.s = lshr i128 %i.r, 64
  %i.t = trunc nuw i128 %i.s to i64
  %i.u = and i64 %i.t, 1                          ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %.0.copyload.i.i17 = load i64, ptr %i.v, align 1
  %i.w = zext i64 %.0.copyload.i.i17 to i128
  %i.x = zext nneg i64 %.04347 to i128
  %i.y = sub nsw i128 %i.w, %i.x                  ; 2 uses
end_hunk_0
