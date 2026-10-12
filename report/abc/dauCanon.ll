Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/dauCanon?download=true
inline.NumInlined: 334
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 84
loop-unroll.NumUnrolled: 104
begin_hunk_0_@Abc_TtCanonicizePerm:bb.a
  %i.aw = lshr i32 %.35466.us, %i.au
  %i.ax = trunc nuw nsw i64 %indvars.iv.next103 to i32
  %i.ay = lshr i32 %.35466.us, %i.ax
  %i.az = xor i32 %i.ay, %i.aw
  %i.ba = and i32 %i.az, 1
  %.not65.i44.us = icmp eq i32 %i.ba, 0
  %i.bb = shl i32 3, %i.au
  %i.bc = select i1 %.not65.i44.us, i32 0, i32 %i.bb
  %.9.us = xor i32 %i.bc, %.35466.us
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv102 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !38
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next103 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !38
  store i8 %i.bg, ptr %i.bd, align 1, !tbaa !38
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !38
  br label %Abc_TtCofactorPerm.exit48.us

Abc_TtCofactorPerm.exit48.us:                     ; preds = %Abc_TtCopy.exit72.sink.split.i46.us, %bb.e
  %.10.us = phi i32 [ %.35466.us, %bb.e ], [ %.9.us, %Abc_TtCopy.exit72.sink.split.i46.us ]
  %i.bh = or i32 %i.av, %.268.us
  br label %bb.f

bb.f:                                             ; preds = %Abc_TtCofactorPerm.exit48.us, %.lr.ph69.us
  %.4.us = phi i32 [ %.10.us, %Abc_TtCofactorPerm.exit48.us ], [ %.35466.us, %.lr.ph69.us ] ; 3 uses
  %.3.us = phi i32 [ %i.bh, %Abc_TtCofactorPerm.exit48.us ], [ %.268.us, %.lr.ph69.us ] ; 2 uses
  %exitcond106.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count105
  br i1 %exitcond106.not, label %._crit_edge70.us, label %.lr.ph69.us, !llvm.loop !266

._crit_edge70.us:                                 ; preds = %bb.f
  %i.bi = icmp ne i32 %.3.us, 0
  %i.bj = add nuw nsw i32 %.03774.us, 1
  %i.bk = icmp samesign ult i32 %.03774.us, 4
  %or.cond = select i1 %i.bi, i1 %i.bk, i1 false
  br i1 %or.cond, label %.lr.ph63.us, label %.thread, !llvm.loop !267

._crit_edge64.us:                                 ; preds = %bb.d
  %.not.us = icmp eq i32 %.1.us, 0
  %brmerge = or i1 %.not.us, %i.r
  br i1 %brmerge, label %.thread, label %.lr.ph69.us

.thread:                                          ; preds = %._crit_edge70.us, %._crit_edge64.us, %._crit_edge
  %.us-phi = phi i32 [ %i.p, %._crit_edge ], [ %.253.us, %._crit_edge64.us ], [ %.4.us, %._crit_edge70.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.us-phi
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @Abc_TtCanonicizePhase(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 7
  %i.b = add nsw i32 %1, -6
  %i.c = shl nuw i32 1, %i.b                      ; 3 uses
  %i.d = select i1 %i.a, i32 1, i32 %i.c          ; 10 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr [8 x i8], ptr %0, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !32
  %.not = icmp sgt i64 %i.h, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp sgt i32 %i.d, 0
  br i1 %i.i, label %.lr.ph.preheader.i, label %Abc_TtNot.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %min.iters.check = icmp ult i32 %i.d, 4
  br i1 %min.iters.check, label %.lr.ph.i, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %i.j = and i32 %i.d, 2147483644
  %n.vec = zext nneg i32 %i.j to i64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.k, align 8, !tbaa !32
  %wide.load92 = load <2 x i64>, ptr %i.l, align 8, !tbaa !32
  %i.m = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.n = xor <2 x i64> %wide.load92, splat (i64 -1)
  store <2 x i64> %i.m, ptr %i.k, align 8, !tbaa !32
  store <2 x i64> %i.n, ptr %i.l, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %Abc_TtNot.exit, label %vector.body, !llvm.loop !268

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i
  %i.p = load i64, ptr %0, align 8, !tbaa !32
  %i.q = xor i64 %i.p, -1
  store i64 %i.q, ptr %0, align 8, !tbaa !32
  %exitcond.not.i = icmp eq i32 %i.d, 1
  br i1 %exitcond.not.i, label %Abc_TtNot.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !32
  %i.t = xor i64 %i.s, -1
  store i64 %i.t, ptr %i.r, align 8, !tbaa !32
  %exitcond.not.i.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond.not.i.1, label %Abc_TtNot.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !32
  %i.w = xor i64 %i.v, -1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !32
  br label %Abc_TtNot.exit

Abc_TtNot.exit:                                   ; preds = %vector.body, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %bb.b
  %i.x = shl nuw i32 1, %1
  br label %bb.c

bb.c:                                             ; preds = %Abc_TtNot.exit, %bb.a
  %.022 = phi i32 [ %i.x, %Abc_TtNot.exit ], [ 0, %bb.a ] ; 4 uses
  %.036 = add nsw i32 %1, -1                      ; 2 uses
  %i.y = icmp sgt i32 %1, 6
  br i1 %i.y, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.c
  %i.z = icmp sgt i32 %i.c, 1
  br i1 %i.z, label %.lr.ph.preheader.i24.us, label %.lr.ph44

.lr.ph.preheader.i24.us:                          ; preds = %.lr.ph, %Abc_TtCanonicizePhaseVar6.exit.thread.us
  %.039.us = phi i32 [ %.0.us, %Abc_TtCanonicizePhaseVar6.exit.thread.us ], [ %.036, %.lr.ph ] ; 4 uses
  %.0.in38.us = phi i32 [ %.039.us, %Abc_TtCanonicizePhaseVar6.exit.thread.us ], [ %1, %.lr.ph ]
  %.12337.us = phi i32 [ %i.be, %Abc_TtCanonicizePhaseVar6.exit.thread.us ], [ %.022, %.lr.ph ] ; 3 uses
  %i.aa = add nsw i32 %.0.in38.us, -7
  %i.ab = shl nuw i32 1, %i.aa                    ; 7 uses
  %i.ac = sub nsw i32 %i.d, %i.ab
  br label %.lr.ph.i25.us

.lr.ph.i25.us:                                    ; preds = %bb.d, %.lr.ph.preheader.i24.us
  %.04355.in.i.us = phi i32 [ %.346.i.us, %bb.d ], [ %i.c, %.lr.ph.preheader.i24.us ]
  %.04254.i.us = phi i32 [ %.3.i.us, %bb.d ], [ %i.ac, %.lr.ph.preheader.i24.us ] ; 4 uses
  %.04355.i.us = add nsw i32 %.04355.in.i.us, -1  ; 5 uses
  %i.ad = sub nsw i32 %.04355.i.us, %i.ab
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !32 ; 2 uses
  %i.ah = zext nneg i32 %.04355.i.us to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !32 ; 2 uses
  %i.ak = icmp eq i64 %i.ag, %i.aj
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i25.us
  %i.al = icmp eq i32 %.04355.i.us, %.04254.i.us  ; 2 uses
  %i.am = sub nsw i32 %.04254.i.us, %i.ab         ; 2 uses
  %i.an = sub nsw i32 %i.am, %i.ab
  %.346.i.us = select i1 %i.al, i32 %i.am, i32 %.04355.i.us ; 2 uses
  %.3.i.us = select i1 %i.al, i32 %i.an, i32 %.04254.i.us
  %i.ao = icmp sgt i32 %.346.i.us, 1
  br i1 %i.ao, label %.lr.ph.i25.us, label %Abc_TtCanonicizePhaseVar6.exit.thread.us, !llvm.loop !269

bb.e:                                             ; preds = %.lr.ph.i25.us
  %i.ap = icmp ugt i64 %i.ag, %i.aj
  br i1 %i.ap, label %Abc_TtCanonicizePhaseVar6.exit.thread.us, label %.lr.ph58.i.us

.lr.ph58.i.us:                                    ; preds = %bb.e, %.lr.ph58.i.us
  %.157.i.us = phi i32 [ %.2.i.us, %.lr.ph58.i.us ], [ %.04254.i.us, %bb.e ] ; 3 uses
  %.14456.i.us = phi i32 [ %i.ba, %.lr.ph58.i.us ], [ %.04355.i.us, %bb.e ] ; 4 uses
  %i.aq = sub nsw i32 %.14456.i.us, %i.ab
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ar ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !32
  %i.au = zext nneg i32 %.14456.i.us to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.au ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32
  store i64 %i.aw, ptr %i.as, align 8, !tbaa !32
  store i64 %i.at, ptr %i.av, align 8, !tbaa !32
  %i.ax = icmp eq i32 %.14456.i.us, %.157.i.us    ; 2 uses
  %i.ay = sub nsw i32 %.157.i.us, %i.ab           ; 2 uses
  %i.az = sub nsw i32 %i.ay, %i.ab
  %.245.i.us = select i1 %i.ax, i32 %i.ay, i32 %.14456.i.us ; 2 uses
  %.2.i.us = select i1 %i.ax, i32 %i.az, i32 %.157.i.us
  %i.ba = add nsw i32 %.245.i.us, -1
  %i.bb = icmp sgt i32 %.245.i.us, 1
  br i1 %i.bb, label %.lr.ph58.i.us, label %bb.f, !llvm.loop !270

bb.f:                                             ; preds = %.lr.ph58.i.us
  %i.bc = shl nuw i32 1, %.039.us
  %i.bd = xor i32 %i.bc, %.12337.us
  br label %Abc_TtCanonicizePhaseVar6.exit.thread.us

Abc_TtCanonicizePhaseVar6.exit.thread.us:         ; preds = %bb.d, %bb.f, %bb.e
  %i.be = phi i32 [ %i.bd, %bb.f ], [ %.12337.us, %bb.e ], [ %.12337.us, %bb.d ] ; 2 uses
  %.0.us = add nsw i32 %.039.us, -1
  %i.bf = icmp sgt i32 %.039.us, 6
  br i1 %i.bf, label %.lr.ph.preheader.i24.us, label %.lr.ph44, !llvm.loop !271

.preheader:                                       ; preds = %bb.c
  %i.bg = icmp sgt i32 %1, 0
  br i1 %i.bg, label %.lr.ph44, label %._crit_edge

.lr.ph44:                                         ; preds = %Abc_TtCanonicizePhaseVar6.exit.thread.us, %.lr.ph, %.preheader
  %.0.lcssa68 = phi i32 [ %.036, %.preheader ], [ 5, %.lr.ph ], [ 5, %Abc_TtCanonicizePhaseVar6.exit.thread.us ]
  %.123.lcssa67 = phi i32 [ %.022, %.preheader ], [ %.022, %.lr.ph ], [ %i.be, %Abc_TtCanonicizePhaseVar6.exit.thread.us ]
  %i.bh = zext i32 %i.d to i64
  %i.bi = zext nneg i32 %.0.lcssa68 to i64
  %2 = zext i32 %i.d to i64
  %3 = icmp sgt i32 %i.d, 0
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph44, %Abc_TtCanonicizePhaseVar5.exit.thread
  %indvars.iv = phi i64 [ %i.bi, %.lr.ph44 ], [ %indvars.iv.next, %Abc_TtCanonicizePhaseVar5.exit.thread ] ; 4 uses
  %.342 = phi i32 [ %.123.lcssa67, %.lr.ph44 ], [ %i.de, %Abc_TtCanonicizePhaseVar5.exit.thread ] ; 4 uses
  %i.bj = trunc nuw nsw i64 %indvars.iv to i32
  %i.bk = shl nuw nsw i32 1, %i.bj                ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !32 ; 5 uses
  %i.bn = zext nneg i32 %i.bk to i64              ; 4 uses
  br i1 %3, label %.lr.ph91, label %Abc_TtCanonicizePhaseVar5.exit.thread

select.unfold.i:                                  ; preds = %.lr.ph91
  %i.bo = trunc nuw i64 %i.bq to i32
  %i.bp = icmp sgt i32 %i.bo, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bp, label %.lr.ph91, label %Abc_TtCanonicizePhaseVar5.exit.thread, !llvm.loop !272

.lr.ph91:                                         ; preds = %bb.g, %select.unfold.i
  %indvar = phi i64 [ %indvar.next, %select.unfold.i ], [ 0, %bb.g ] ; 2 uses
  %indvars.iv.i2689 = phi i64 [ %i.bq, %select.unfold.i ], [ %i.bh, %bb.g ]
  %i.bq = add nsw i64 %indvars.iv.i2689, -1       ; 4 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !32 ; 2 uses
  %i.bt = shl i64 %i.bs, %i.bn
  %i.bu = and i64 %i.bt, %i.bm                    ; 2 uses
  %i.bv = and i64 %i.bs, %i.bm                    ; 2 uses
  %i.bw = icmp eq i64 %i.bu, %i.bv
  br i1 %i.bw, label %select.unfold.i, label %bb.h, !llvm.loop !272

bb.h:                                             ; preds = %.lr.ph91
  %i.bx = icmp ugt i64 %i.bu, %i.bv
  br i1 %i.bx, label %Abc_TtCanonicizePhaseVar5.exit.thread, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.h
  %i.by = and i64 %i.bq, 4294967295               ; 3 uses
  %i.bz = sub i64 %2, %indvar                     ; 3 uses
  %min.iters.check94 = icmp ult i64 %i.bz, 4
  br i1 %min.iters.check94, label %.preheader.i.preheader, label %vector.ph95

vector.ph95:                                      ; preds = %.preheader.preheader.i
  %n.vec96 = and i64 %i.bz, -4                    ; 3 uses
  %i.ca = sub i64 %i.by, %n.vec96
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bn, i64 0 ; 4 uses
  %broadcast.splatinsert97 = insertelement <2 x i64> poison, i64 %i.bm, i64 0 ; 4 uses
  %i.cb = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.cc = shufflevector <2 x i64> %broadcast.splatinsert97, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.cd = shufflevector <2 x i64> %broadcast.splatinsert97, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ce = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.cf = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.cg = shufflevector <2 x i64> %broadcast.splatinsert97, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ch = shufflevector <2 x i64> %broadcast.splatinsert97, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ci = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph95
  %index100 = phi i64 [ 0, %vector.ph95 ], [ %index.next106, %vector.body99 ] ; 2 uses
  %i.cj = sub i64 %i.by, %index100
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -8 ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 -24 ; 2 uses
  %wide.load101 = load <2 x i64>, ptr %i.cl, align 8, !tbaa !32 ; 2 uses
  %wide.load102 = load <2 x i64>, ptr %i.cm, align 8, !tbaa !32 ; 2 uses
  %i.cn = shl <2 x i64> %wide.load101, %i.cb
  %i.co = and <2 x i64> %i.cn, %i.cc
  %i.cp = and <2 x i64> %wide.load101, %i.cd
  %i.cq = lshr <2 x i64> %i.cp, %i.ce
  %reverse104 = or <2 x i64> %i.co, %i.cq
  %i.cr = shl <2 x i64> %wide.load102, %i.cf
  %i.cs = and <2 x i64> %i.cr, %i.cg
  %i.ct = and <2 x i64> %wide.load102, %i.ch
  %i.cu = lshr <2 x i64> %i.ct, %i.ci
  %reverse105 = or <2 x i64> %i.cs, %i.cu
  store <2 x i64> %reverse104, ptr %i.cl, align 8, !tbaa !32
  store <2 x i64> %reverse105, ptr %i.cm, align 8, !tbaa !32
  %index.next106 = add nuw i64 %index100, 4       ; 2 uses
  %i.cv = icmp eq i64 %index.next106, %n.vec96
  br i1 %i.cv, label %middle.block107, label %vector.body99, !llvm.loop !273

middle.block107:                                  ; preds = %vector.body99
  %cmp.n108 = icmp eq i64 %i.bz, %n.vec96
  br i1 %cmp.n108, label %.loopexit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.preheader.i, %middle.block107
  %indvars.iv47.i.ph = phi i64 [ %i.by, %.preheader.preheader.i ], [ %i.ca, %middle.block107 ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv47.i = phi i64 [ %indvars.iv.next48.i, %.preheader.i ], [ %indvars.iv47.i.ph, %.preheader.i.preheader ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv47.i ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !32 ; 2 uses
  %i.cy = shl i64 %i.cx, %i.bn
  %i.cz = and i64 %i.cy, %i.bm
  %i.da = and i64 %i.cx, %i.bm
  %i.db = lshr i64 %i.da, %i.bn
  %i.dc = or i64 %i.cz, %i.db
  store i64 %i.dc, ptr %i.cw, align 8, !tbaa !32
  %indvars.iv.next48.i = add nsw i64 %indvars.iv47.i, -1
  %.not.i = icmp eq i64 %indvars.iv47.i, 0
  br i1 %.not.i, label %.loopexit, label %.preheader.i, !llvm.loop !274

.loopexit:                                        ; preds = %.preheader.i, %middle.block107
  %i.dd = xor i32 %i.bk, %.342
  br label %Abc_TtCanonicizePhaseVar5.exit.thread

Abc_TtCanonicizePhaseVar5.exit.thread:            ; preds = %select.unfold.i, %bb.g, %bb.h, %.loopexit
  %i.de = phi i32 [ %i.dd, %.loopexit ], [ %.342, %bb.h ], [ %.342, %bb.g ], [ %.342, %select.unfold.i ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.df = icmp sgt i64 %indvars.iv, 0
  br i1 %i.df, label %bb.g, label %._crit_edge, !llvm.loop !275

._crit_edge:                                      ; preds = %Abc_TtCanonicizePhaseVar5.exit.thread, %.preheader
  %.3.lcssa = phi i32 [ %.022, %.preheader ], [ %i.de, %Abc_TtCanonicizePhaseVar5.exit.thread ]
  ret i32 %.3.lcssa
}

; Function Attrs: nofree nounwind memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef ptr @Abc_TtHieManStart(i32 noundef %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp sgt i32 %1, 5
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(120) ptr @calloc(i64 noundef 1, i64 noundef 120) #22 ; 6 uses
  %i.c = add nsw i32 %1, -1
  store i32 %i.c, ptr %i.b, align 8, !tbaa !43
  %i.d = icmp slt i32 %0, 7
  %i.e = add nsw i32 %0, -6
  %i.f = shl nuw i32 1, %i.e
  %i.g = select i1 %i.d, i32 1, i32 %i.f          ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.g, ptr %i.h, align 4, !tbaa !44
  %i.i = icmp sgt i32 %1, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %Vec_MemHashAlloc.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_MemHashAlloc.exit ] ; 3 uses
  %i.l = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #22 ; 7 uses
  store i32 %i.g, ptr %i.l, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 12, ptr %i.m, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 4095, ptr %i.n, align 4, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  store i32 -1, ptr %i.o, align 4, !tbaa !51
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  store ptr %i.l, ptr %i.p, align 8, !tbaa !53
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.backedge, %bb.c
  %.012.i.i = phi i32 [ 9999, %bb.c ], [ %i.q, %.critedge.i.i.backedge ] ; 3 uses
  %i.q = add i32 %.012.i.i, 1                     ; 7 uses
  %i.r = and i32 %.012.i.i, 1
  %.not.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.not.i.i, label %.preheader.i.i, label %.critedge.i.i.backedge

.critedge.i.i.backedge:                           ; preds = %.lr.ph.i.i, %.critedge.i.i
  br label %.critedge.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i
  %.not15.i.i = icmp ult i32 %i.q, 9
  br i1 %.not15.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.s = add nuw nsw i32 %.01116.i.i, 2           ; 3 uses
  %i.t = mul nuw nsw i32 %i.s, %i.s
  %.not.i.i = icmp ugt i32 %i.t, %i.q
  br i1 %.not.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i, !llvm.loop !12

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.d
  %.01116.i.i = phi i32 [ %i.s, %bb.d ], [ 3, %.preheader.i.i ] ; 2 uses
  %i.u = urem i32 %i.q, %.01116.i.i
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.critedge.i.i.backedge, label %bb.d

Abc_PrimeCudd.exit.i:                             ; preds = %.preheader.i.i, %bb.d
  %i.w = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #23 ; 4 uses
  %or.cond.i.i.i = icmp samesign ult i32 %.012.i.i, 15
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i32 16, i32 %i.q ; 2 uses
  store i32 %spec.store.select.i.i.i, ptr %i.w, align 8, !tbaa !56
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = zext nneg i32 %spec.store.select.i.i.i to i64
  %i.z = shl nuw nsw i64 %i.y, 2
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.z) #23 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !57
  store i32 %i.q, ptr %i.x, align 4, !tbaa !58
  %.not.i3.i = icmp eq ptr %i.aa, null
  br i1 %.not.i3.i, label %Vec_MemHashAlloc.exit, label %bb.e

bb.e:                                             ; preds = %Abc_PrimeCudd.exit.i
  %i.ac = zext nneg i32 %i.q to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aa, i8 -1, i64 %i.ad, i1 false)
  br label %Vec_MemHashAlloc.exit

Vec_MemHashAlloc.exit:                            ; preds = %Abc_PrimeCudd.exit.i, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.w, ptr %i.ae, align 8, !tbaa !59
  %i.af = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #23 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 0, ptr %i.ag, align 4, !tbaa !58
  store i32 10000, ptr %i.af, align 8, !tbaa !56
  %i.ah = tail call noalias dereferenceable_or_null(40000) ptr @malloc(i64 noundef 40000) #23
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !57
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %i.af, ptr %i.aj, align 8, !tbaa !60
  %i.ak = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #23 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 0, ptr %i.al, align 4, !tbaa !58
  store i32 16, ptr %i.ak, align 8, !tbaa !56
  %i.am = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !57
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store ptr %i.ak, ptr %i.ao, align 8, !tbaa !61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !276

._crit_edge:                                      ; preds = %Vec_MemHashAlloc.exit, %bb.b
  %i.ap = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #23 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i32 0, ptr %i.aq, align 4, !tbaa !58
  store i32 2500, ptr %i.ap, align 8, !tbaa !56
  %i.ar = tail call noalias dereferenceable_or_null(10000) ptr @malloc(i64 noundef 10000) #23
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !57
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.ap, ptr %i.at, align 8, !tbaa !62
end_hunk_0
