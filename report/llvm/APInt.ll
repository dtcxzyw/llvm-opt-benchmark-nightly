Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/APInt?download=true
inline.NumInlined: 1403
inline.NumDeleted: 239
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 96
begin_hunk_0_@_ZN4llvm5APInt10tcClearBitEPmj:bb.a
  store i64 %i.i, ptr %i.g, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN4llvm5APInt5tcLSBEPKmj(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %.not17 = icmp eq i32 %1, 0
  br i1 %.not17, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !533

bb.c:                                             ; preds = %.lr.ph
  %i.c = trunc nuw i64 %indvars.iv to i32
  %i.d = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.b, i1 true)
  %i.e = trunc nuw nsw i64 %i.d to i32
  %i.f = shl i32 %i.c, 6
  %i.g = or disjoint i32 %i.f, %i.e
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %i.h = phi i32 [ %i.g, %bb.c ], [ -1, %bb.a ], [ -1, %bb.b ]
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN4llvm5APInt5tcMSBEPKmj(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.08 = phi i32 [ %1, %bb.a ], [ %i.a, %bb.d ]
  %i.a = add i32 %.08, -1                         ; 4 uses
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = shl i32 %i.a, 6
  %i.h = or disjoint i32 %i.g, %i.f
  %i.i = xor i32 %i.h, 63
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %.not11 = icmp eq i32 %i.a, 0
  br i1 %.not11, label %.loopexit, label %bb.b, !llvm.loop !13

.loopexit:                                        ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.i, %bb.c ], [ -1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN4llvm5APInt9tcExtractEPmjPKmjj(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = add i32 %3, 63                           ; 4 uses
  %i.d = lshr i32 %i.c, 6                         ; 10 uses
  %i.e = lshr i32 %4, 6                           ; 2 uses
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.f ; 6 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN4llvm5APInt8tcAssignEPmPKmj.exit.thread, label %.lr.ph.preheader.i

_ZN4llvm5APInt8tcAssignEPmPKmj.exit.thread:       ; preds = %bb.a
  %i.h = and i32 %4, 63
  br label %_ZN4llvm5APInt12tcShiftRightEPmjj.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.d to i64  ; 5 uses
  %min.iters.check = icmp ult i32 %i.c, 896
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.i = shl nuw nsw i64 %i.f, 3
  %i.j = add i64 %i.i, %i.a
  %i.k = sub i64 %i.j, %i.b
  %diff.check = icmp ugt i64 %i.k, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 67108860   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <2 x i64>, ptr %i.l, align 8, !tbaa !26
  %wide.load55 = load <2 x i64>, ptr %i.m, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <2 x i64> %wide.load, ptr %i.n, align 8, !tbaa !26
  store <2 x i64> %wide.load55, ptr %i.o, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !534

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZN4llvm5APInt8tcAssignEPmPKmj.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i.prol
  %i.r = load i64, ptr %i.q, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i.prol
  store i64 %i.r, ptr %i.s, align 8, !tbaa !26
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !535

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.t = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.u = icmp ugt i64 %i.t, -4
  br i1 %i.u, label %_ZN4llvm5APInt8tcAssignEPmPKmj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.w = load i64, ptr %i.v, align 8, !tbaa !26
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  store i64 %i.w, ptr %i.x, align 8, !tbaa !26
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i
  %i.z = load i64, ptr %i.y, align 8, !tbaa !26
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !26
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.1
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i.1
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !26
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.2
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !26
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i.2
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !26
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZN4llvm5APInt8tcAssignEPmPKmj.exit, label %.lr.ph.i, !llvm.loop !536

_ZN4llvm5APInt8tcAssignEPmPKmj.exit:              ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block
  %i.ah = and i32 %4, 63                          ; 7 uses
  %.not.i36 = icmp eq i32 %i.ah, 0
  br i1 %.not.i36, label %_ZN4llvm5APInt12tcShiftRightEPmjj.exit, label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %_ZN4llvm5APInt8tcAssignEPmPKmj.exit
  %i.ai = zext nneg i32 %i.ah to i64              ; 4 uses
  %i.aj = sub nuw nsw i32 64, %i.ah
  %i.ak = zext nneg i32 %i.aj to i64              ; 3 uses
  %i.al = load i64, ptr %0, align 8, !tbaa !26
  %i.am = lshr i64 %i.al, %i.ai                   ; 3 uses
  store i64 %i.am, ptr %0, align 8, !tbaa !26
  %.not32.i41 = icmp eq i32 %i.d, 1
  br i1 %.not32.i41, label %_ZN4llvm5APInt12tcShiftRightEPmjj.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i37
  %i.an = zext nneg i32 %i.d to i64
  %i.ao = add nsw i64 %i.an, -1                   ; 3 uses
  %xtraiter56 = and i64 %i.ao, 1
  %i.ap = icmp eq i32 %i.d, 2
  br i1 %i.ap, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ao, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv.next.i3943 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.i39.1, %.lr.ph ] ; 4 uses
  %i.aq = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.bc, %.lr.ph ]
  %i.ar = phi i64 [ %i.am, %.lr.ph.preheader.new ], [ %i.bd, %.lr.ph ]
  %indvars.iv.i3842 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ay, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %5 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i3842
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.as = load i64, ptr %6, align 8, !tbaa !26
  %i.at = shl i64 %i.as, %i.ak
  %i.au = or i64 %i.at, %i.ar
  store i64 %i.au, ptr %i.aq, align 8, !tbaa !26
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i3943 ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !26
  %i.ax = lshr i64 %i.aw, %i.ai                   ; 2 uses
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !26
  %i.ay = add nuw nsw i64 %indvars.iv.next.i3943, 1 ; 3 uses
  %7 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i3943
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.az = load i64, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.ba = shl i64 %i.az, %i.ak
  %i.bb = or i64 %i.ba, %i.ax
  store i64 %i.bb, ptr %i.av, align 8, !tbaa !26
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ay ; 3 uses
  %i.bd = lshr i64 %i.az, %i.ai                   ; 3 uses
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !26
  %indvars.iv.next.i39.1 = add nuw nsw i64 %indvars.iv.next.i3943, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4llvm5APInt12tcShiftRightEPmjj.exit.loopexit.unr-lcssa, label %.lr.ph

_ZN4llvm5APInt12tcShiftRightEPmjj.exit.loopexit.unr-lcssa: ; preds = %.lr.ph
  %lcmp.mod59.not = icmp eq i64 %xtraiter56, 0
  br i1 %lcmp.mod59.not, label %_ZN4llvm5APInt12tcShiftRightEPmjj.exit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %_ZN4llvm5APInt12tcShiftRightEPmjj.exit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.next.i3943.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.i39.1, %_ZN4llvm5APInt12tcShiftRightEPmjj.exit.loopexit.unr-lcssa ]
  %.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.bc, %_ZN4llvm5APInt12tcShiftRightEPmjj.exit.loopexit.unr-lcssa ]
  %.epil.init58 = phi i64 [ %i.am, %.lr.ph.preheader ], [ %i.bd, %_ZN4llvm5APInt12tcShiftRightEPmjj.exit.loopexit.unr-lcssa ]
  %indvars.iv.i3842.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ay, %_ZN4llvm5APInt12tcShiftRightEPmjj.exit.loopexit.unr-lcssa ]
  %lcmp.mod60 = trunc i64 %i.ao to i1
  tail call void @llvm.assume(i1 %lcmp.mod60)
  %9 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i3842.epil.init
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.be = load i64, ptr %10, align 8, !tbaa !26
  %i.bf = shl i64 %i.be, %i.ak
  %i.bg = or i64 %i.bf, %.epil.init58
  store i64 %i.bg, ptr %.epil.init, align 8, !tbaa !26
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i3943.epil.init ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !26
  %i.bj = lshr i64 %i.bi, %i.ai
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !26
  br label %_ZN4llvm5APInt12tcShiftRightEPmjj.exit

_ZN4llvm5APInt12tcShiftRightEPmjj.exit:           ; preds = %.lr.ph.epil.preheader, %_ZN4llvm5APInt12tcShiftRightEPmjj.exit.loopexit.unr-lcssa, %_ZN4llvm5APInt8tcAssignEPmPKmj.exit.thread, %.lr.ph.i37, %_ZN4llvm5APInt8tcAssignEPmPKmj.exit
  %i.bk = phi i32 [ %i.h, %_ZN4llvm5APInt8tcAssignEPmPKmj.exit.thread ], [ %i.ah, %_ZN4llvm5APInt8tcAssignEPmPKmj.exit ], [ %i.ah, %.lr.ph.i37 ], [ %i.ah, %_ZN4llvm5APInt12tcShiftRightEPmjj.exit.loopexit.unr-lcssa ], [ %i.ah, %.lr.ph.epil.preheader ]
  %i.bl = and i32 %i.c, -64
  %i.bm = sub i32 %i.bl, %i.bk                    ; 4 uses
  %i.bn = icmp ult i32 %i.bm, %3
  br i1 %i.bn, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4llvm5APInt12tcShiftRightEPmjj.exit
  %reass.sub = sub i32 %i.bm, %3
  %i.bo = add i32 %reass.sub, 64
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = lshr i64 -1, %i.bp
  %i.br = add nuw nsw i32 %i.e, %i.d
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !26
  %i.bv = and i64 %i.bu, %i.bq
  %i.bw = and i32 %i.bm, 63
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = shl i64 %i.bv, %i.bx
  %i.bz = add nsw i32 %i.d, -1
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ca ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !26
  %i.cd = or i64 %i.by, %i.cc
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !26
  br label %bb.f

bb.c:                                             ; preds = %_ZN4llvm5APInt12tcShiftRightEPmjj.exit
  %i.ce = icmp ugt i32 %i.bm, %3
  br i1 %i.ce, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.cf = and i32 %3, 63                          ; 2 uses
  %.not = icmp eq i32 %i.cf, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cg = sub nuw nsw i32 64, %i.cf
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = lshr i64 -1, %i.ch
  %i.cj = add nsw i32 %i.d, -1
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ck ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !26
  %i.cn = and i64 %i.cm, %i.ci
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.b
  %i.co = icmp ult i32 %i.d, %1
  br i1 %i.co, label %.lr.ph45.preheader, label %._crit_edge

.lr.ph45.preheader:                               ; preds = %bb.f
  %i.cp = lshr i32 %i.c, 3
  %i.cq = and i32 %i.cp, 536870904
  %i.cr = zext nneg i32 %i.cq to i64
  %scevgep = getelementptr i8, ptr %0, i64 %i.cr
  %i.cs = xor i32 %i.d, -1
  %i.ct = add i32 %1, %i.cs
  %i.cu = zext i32 %i.ct to i64
  %i.cv = shl nuw nsw i64 %i.cu, 3
  %i.cw = add nuw nsw i64 %i.cv, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.cw, i1 false), !tbaa !26
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph45.preheader, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN4llvm5APInt8tcNegateEPmj(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %_ZN4llvm5APInt11tcIncrementEPmj.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %1 to i64         ; 4 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.a, align 8, !tbaa !26
  %wide.load4 = load <2 x i64>, ptr %i.b, align 8, !tbaa !26
  %i.c = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.d = xor <2 x i64> %wide.load4, splat (i64 -1)
  store <2 x i64> %i.c, ptr %i.a, align 8, !tbaa !26
  store <2 x i64> %i.d, ptr %i.b, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.e = icmp eq i64 %index.next, %n.vec
  br i1 %i.e, label %middle.block, label %vector.body, !llvm.loop !537

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.lr.ph.preheader.i.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !26
  %i.h = xor i64 %i.g, -1
  store i64 %i.h, ptr %i.f, align 8, !tbaa !26
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.preheader.i.i, label %.lr.ph.i, !llvm.loop !538

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i, %middle.block
  %i.i = load i64, ptr %0, align 8, !tbaa !26
  %i.j = add i64 %i.i, 1                          ; 2 uses
  store i64 %i.j, ptr %0, align 8, !tbaa !26
  %.not.peel.i.i = icmp ne i64 %i.j, 0
  %exitcond.peel.not.i.i = icmp eq i32 %1, 1
  %or.cond = or i1 %exitcond.peel.not.i.i, %.not.peel.i.i
  br i1 %or.cond, label %_ZN4llvm5APInt11tcIncrementEPmj.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 1, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i.i ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !26
  %i.m = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !tbaa !26
  %.not.i.i = icmp ne i64 %i.m, 0
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i
  %or.cond3 = select i1 %.not.i.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond3, label %_ZN4llvm5APInt11tcIncrementEPmj.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit:             ; preds = %.lr.ph.i.i, %bb.a, %.lr.ph.preheader.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN4llvm5APInt14tcFullMultiplyEPmPKmS3_jj(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %.tr20 = phi ptr [ %1, %bb.a ], [ %.tr21, %tailrecurse ] ; 2 uses
  %.tr21 = phi ptr [ %2, %bb.a ], [ %.tr20, %tailrecurse ] ; 2 uses
  %.tr22 = phi i32 [ %3, %bb.a ], [ %.tr23, %tailrecurse ] ; 4 uses
  %.tr23 = phi i32 [ %4, %bb.a ], [ %.tr22, %tailrecurse ] ; 4 uses
  %i.a = icmp ugt i32 %.tr22, %.tr23
  br i1 %i.a, label %tailrecurse, label %.preheader

.preheader:                                       ; preds = %tailrecurse
  %.not = icmp eq i32 %.tr22, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = add i32 %.tr23, 1
  %wide.trip.count = zext i32 %.tr22 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.tr20, i64 %indvars.iv
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26
  %i.f = icmp ne i64 %indvars.iv, 0
  %i.g = tail call noundef i32 @_ZN4llvm5APInt14tcMultiplyPartEPmPKmmmjjb(ptr noundef %i.c, ptr noundef %.tr21, i64 noundef %i.e, i64 noundef 0, i32 noundef %.tr23, i32 noundef %i.b, i1 noundef zeroext %i.f) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !539

._crit_edge:                                      ; preds = %bb.b, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN4llvm5APInt8tcDivideEPmPKmS1_S1_j(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = ptrtoaddr ptr %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.08.i = phi i32 [ %4, %bb.a ], [ %i.e, %bb.c ]
  %i.e = add i32 %.08.i, -1                       ; 4 uses
end_hunk_0
