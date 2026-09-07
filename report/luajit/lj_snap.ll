Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_snap?download=true
inline.NumInlined: 26
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@lj_snap_purge:bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bg
  store i8 0, ptr %i.bh, align 1, !tbaa !40
  br label %pred.store.continue33

pred.store.continue33:                            ; preds = %pred.store.if32, %pred.store.continue31
  %i.bi = extractelement <8 x i1> %i.an, i64 4
  br i1 %i.bi, label %pred.store.if34, label %pred.store.continue35

pred.store.if34:                                  ; preds = %pred.store.continue33
  %i.bj = extractelement <8 x i16> %i.am, i64 4
  %i.bk = and i16 %i.bj, 255
  %i.bl = zext nneg i16 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bl
  store i8 0, ptr %i.bm, align 1, !tbaa !40
  br label %pred.store.continue35

pred.store.continue35:                            ; preds = %pred.store.if34, %pred.store.continue33
  %i.bn = extractelement <8 x i1> %i.an, i64 5
  br i1 %i.bn, label %pred.store.if36, label %pred.store.continue37

pred.store.if36:                                  ; preds = %pred.store.continue35
  %i.bo = extractelement <8 x i16> %i.am, i64 5
  %i.bp = and i16 %i.bo, 255
  %i.bq = zext nneg i16 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bq
  store i8 0, ptr %i.br, align 1, !tbaa !40
  br label %pred.store.continue37

pred.store.continue37:                            ; preds = %pred.store.if36, %pred.store.continue35
  %i.bs = extractelement <8 x i1> %i.an, i64 6
  br i1 %i.bs, label %pred.store.if38, label %pred.store.continue39

pred.store.if38:                                  ; preds = %pred.store.continue37
  %i.bt = extractelement <8 x i16> %i.am, i64 6
  %i.bu = and i16 %i.bt, 255
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bv
  store i8 0, ptr %i.bw, align 1, !tbaa !40
  br label %pred.store.continue39

pred.store.continue39:                            ; preds = %pred.store.if38, %pred.store.continue37
  %i.bx = extractelement <8 x i1> %i.an, i64 7
  br i1 %i.bx, label %pred.store.if40, label %pred.store.continue41

pred.store.if40:                                  ; preds = %pred.store.continue39
  %i.by = extractelement <8 x i16> %i.am, i64 7
  %i.bz = and i16 %i.by, 255
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ca
  store i8 0, ptr %i.cb, align 1, !tbaa !40
  br label %pred.store.continue41

pred.store.continue41:                            ; preds = %pred.store.if40, %pred.store.continue39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %pred.store.continue41
  %cmp.n = icmp eq i64 %n.vec, %i.ak
  br i1 %cmp.n, label %.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.01620.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.g
  %.01620.i = phi i64 [ %i.ci, %bb.g ], [ %.01620.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %.01620.i
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !45 ; 2 uses
  %.not18.i = icmp sgt i16 %i.ce, -1
  br i1 %.not18.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %scalar.ph
  %i.cf = and i16 %i.ce, 255
  %i.cg = zext nneg i16 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cg
  store i8 0, ptr %i.ch, align 1, !tbaa !40
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %scalar.ph
  %i.ci = add nuw nsw i64 %.01620.i, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ci, %i.ak
  br i1 %exitcond.not, label %.loopexit.i, label %scalar.ph, !llvm.loop !86

.loopexit.i:                                      ; preds = %bb.g, %middle.block, %.preheader.i, %.lr.ph24.i
  %i.cj = add nuw nsw i64 %.01722.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cj, %i.w
  br i1 %exitcond.not.i, label %.lr.ph, label %.lr.ph24.i, !llvm.loop !0

.lr.ph:                                           ; preds = %.loopexit.i, %bb.e, %bb.d
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.cl = zext i32 %i.n to i64                    ; 6 uses
  %wide.trip.count = zext i32 %.0 to i64          ; 3 uses
  %i.cm = sub nsw i64 %wide.trip.count, %i.cl
  %xtraiter = and i64 %i.cm, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cl
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !40
  %.not.prol = icmp eq i8 %i.co, 0
  br i1 %.not.prol, label %.prol.loopexit.unr-lcssa, label %bb.h

bb.h:                                             ; preds = %.prol.preheader
  %i.cp = load ptr, ptr %i.ck, align 8, !tbaa !64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cl
  store i32 0, ptr %i.cq, align 4, !tbaa !12
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.h, %.prol.preheader
  %indvars.iv.next.prol = add nuw nsw i64 %i.cl, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.cl, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.cr = add nsw i64 %wide.trip.count, -1
  %i.cs = icmp eq i64 %i.cr, %i.cl
  br i1 %i.cs, label %.loopexit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %bb.l
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.l ], [ %indvars.iv.unr, %.prol.loopexit ] ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !40
  %.not = icmp eq i8 %i.cu, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.new
  %i.cv = load ptr, ptr %i.ck, align 8, !tbaa !64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv
  store i32 0, ptr %i.cw, align 4, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.new, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !40
  %.not.1 = icmp eq i8 %i.cy, 0
  br i1 %.not.1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cz = load ptr, ptr %i.ck, align 8, !tbaa !64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next
  store i32 0, ptr %i.da, align 4, !tbaa !12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond22.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond22.not.1, label %.loopexit, label %.lr.ph.new, !llvm.loop !87

.loopexit:                                        ; preds = %.prol.loopexit, %bb.l, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @snap_usedef(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %.thread186, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %3 to i64                       ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 1, i64 %i.b, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.0153.in219 = load i64, ptr %i.e, align 8, !tbaa !40 ; 2 uses
  %.not221 = icmp eq i64 %.0153.in219, 0
  br i1 %.not221, label %._crit_edge.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.0153222.in = phi i64 [ %.0153.in, %bb.c ], [ %.0153.in219, %bb.b ]
  %.0153222 = inttoptr i64 %.0153222.in to ptr    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0153222, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !40   ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48   ; 2 uses
  %i.l = icmp ugt ptr %i.k, %i.h
  br i1 %i.l, label %._crit_edge.preheader, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.g, %i.m
  %i.o = ashr exact i64 %i.n, 3
  %i.p = getelementptr inbounds i8, ptr %1, i64 %i.o
  store i8 0, ptr %i.p, align 1, !tbaa !40
  %.0153.in = load i64, ptr %.0153222, align 8, !tbaa !40 ; 2 uses
  %.not = icmp eq i64 %.0153.in, 0
  br i1 %.not, label %._crit_edge.preheader, label %.lr.ph, !llvm.loop !89

._crit_edge.preheader:                            ; preds = %bb.c, %.lr.ph, %bb.b
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.backedge, %._crit_edge.preheader
  %.0166 = phi ptr [ %2, %._crit_edge.preheader ], [ %.3169, %._crit_edge.backedge ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0166, i64 4 ; 8 uses
  %i.r = load i32, ptr %.0166, align 4, !tbaa !12 ; 26 uses
  %i.s = and i32 %i.r, 255                        ; 8 uses
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [2 x i8], ptr @lj_bc_mode, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !45   ; 3 uses
  %i.w = and i16 %i.v, 120
  %cond = icmp eq i16 %i.w, 24
  br i1 %cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.x = lshr i32 %i.r, 24
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !40
  %i.ab = and i8 %i.aa, -2
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !40
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.ac = lshr i16 %i.v, 7
  %i.ad = and i16 %i.ac, 15
  switch i16 %i.ad, label %.loopexit [
    i16 3, label %bb.f
    i16 4, label %bb.g
    i16 13, label %bb.h
    i16 6, label %bb.o
    i16 12, label %.thread186
  ]

bb.f:                                             ; preds = %bb.e
  %i.ae = lshr i32 %i.r, 16
  %i.af = and i32 %i.ae, 255
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !40
  %i.aj = and i8 %i.ai, -2
  store i8 %i.aj, ptr %i.ah, align 1, !tbaa !40
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.ak = lshr i32 %i.r, 24                       ; 3 uses
  %i.al = lshr i32 %i.r, 16                       ; 2 uses
  %i.am = and i32 %i.al, 255                      ; 2 uses
  %.not179224 = icmp samesign ugt i32 %i.ak, %i.am
  br i1 %.not179224, label %.preheader196, label %iter.check519

iter.check519:                                    ; preds = %bb.g
  %i.an = lshr i32 %i.r, 24                       ; 2 uses
  %i.ao = zext nneg i32 %i.an to i64              ; 6 uses
  %i.ap = add nuw nsw i32 %i.am, 1
  %i.aq = add nuw nsw i32 %i.ap, %i.an
  %i.ar = sub nsw i32 %i.aq, %i.ak                ; 4 uses
  %wide.trip.count = zext i32 %i.ar to i64
  %4 = and i32 %i.al, 255
  %narrow664 = add nuw nsw i32 %4, 1
  %i.as = zext nneg i32 %narrow664 to i64
  %i.at = sub nsw i64 %i.as, %i.ao                ; 7 uses
  %min.iters.check506 = icmp ult i64 %i.at, 8
  br i1 %min.iters.check506, label %.lr.ph227.preheader, label %vector.main.loop.iter.check507

vector.main.loop.iter.check507:                   ; preds = %iter.check519
  %min.iters.check508 = icmp ult i64 %i.at, 32
  br i1 %min.iters.check508, label %vec.epilog.ph523, label %vector.ph509

vector.ph509:                                     ; preds = %vector.main.loop.iter.check507
  %i.au = and i64 %i.at, 24
  %n.vec510 = and i64 %i.at, -32                  ; 4 uses
  %i.av = add nsw i64 %n.vec510, %i.ao
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.ao
  br label %vector.body511

vector.body511:                                   ; preds = %vector.body511, %vector.ph509
  %index512 = phi i64 [ 0, %vector.ph509 ], [ %index.next515, %vector.body511 ] ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index512 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load513 = load <16 x i8>, ptr %gep, align 1, !tbaa !40
  %wide.load514 = load <16 x i8>, ptr %i.aw, align 1, !tbaa !40
  %i.ax = and <16 x i8> %wide.load513, splat (i8 -2)
  %i.ay = and <16 x i8> %wide.load514, splat (i8 -2)
  store <16 x i8> %i.ax, ptr %gep, align 1, !tbaa !40
  store <16 x i8> %i.ay, ptr %i.aw, align 1, !tbaa !40
  %index.next515 = add nuw i64 %index512, 32      ; 2 uses
  %i.az = icmp eq i64 %index.next515, %n.vec510
  br i1 %i.az, label %middle.block516, label %vector.body511, !llvm.loop !90

middle.block516:                                  ; preds = %vector.body511
  %cmp.n517 = icmp eq i64 %i.at, %n.vec510
  br i1 %cmp.n517, label %.preheader196, label %vec.epilog.iter.check521

vec.epilog.iter.check521:                         ; preds = %middle.block516
  %min.epilog.iters.check522 = icmp eq i64 %i.au, 0
  br i1 %min.epilog.iters.check522, label %.lr.ph227.preheader, label %vec.epilog.ph523, !prof !121

vec.epilog.ph523:                                 ; preds = %vector.main.loop.iter.check507, %vec.epilog.iter.check521
  %vec.epilog.resume.val518 = phi i64 [ %n.vec510, %vec.epilog.iter.check521 ], [ 0, %vector.main.loop.iter.check507 ]
  %n.vec524 = and i64 %i.at, -8                   ; 3 uses
  %i.ba = add nsw i64 %n.vec524, %i.ao
  %invariant.gep705.a = getelementptr i8, ptr %1, i64 %i.ao
  br label %vec.epilog.vector.body525

vec.epilog.vector.body525:                        ; preds = %vec.epilog.vector.body525, %vec.epilog.ph523
  %index526 = phi i64 [ %vec.epilog.resume.val518, %vec.epilog.ph523 ], [ %index.next528, %vec.epilog.vector.body525 ] ; 2 uses
  %gep706.a = getelementptr i8, ptr %invariant.gep705.a, i64 %index526 ; 2 uses
  %wide.load527 = load <8 x i8>, ptr %gep706.a, align 1, !tbaa !40
  %i.bb = and <8 x i8> %wide.load527, splat (i8 -2)
  store <8 x i8> %i.bb, ptr %gep706.a, align 1, !tbaa !40
  %index.next528 = add nuw i64 %index526, 8       ; 2 uses
  %i.bc = icmp eq i64 %index.next528, %n.vec524
  br i1 %i.bc, label %vec.epilog.middle.block529, label %vec.epilog.vector.body525, !llvm.loop !91

vec.epilog.middle.block529:                       ; preds = %vec.epilog.vector.body525
  %cmp.n530 = icmp eq i64 %i.at, %n.vec524
  br i1 %cmp.n530, label %.preheader196, label %.lr.ph227.preheader

.lr.ph227.preheader:                              ; preds = %iter.check519, %vec.epilog.iter.check521, %vec.epilog.middle.block529
  %indvars.iv.ph = phi i64 [ %i.ao, %iter.check519 ], [ %i.av, %vec.epilog.iter.check521 ], [ %i.ba, %vec.epilog.middle.block529 ]
  br label %.lr.ph227

.preheader196:                                    ; preds = %.lr.ph227, %middle.block516, %vec.epilog.middle.block529, %bb.g
  %.0154.lcssa = phi i32 [ %i.ak, %bb.g ], [ %i.ar, %middle.block516 ], [ %i.ar, %vec.epilog.middle.block529 ], [ %i.ar, %.lr.ph227 ] ; 2 uses
  %i.bd = icmp ult i32 %.0154.lcssa, %3
  br i1 %i.bd, label %iter.check493, label %.loopexit

iter.check493:                                    ; preds = %.preheader196
  %i.be = zext i32 %.0154.lcssa to i64            ; 6 uses
  %i.bf = sub nsw i64 %i.b, %i.be                 ; 7 uses
  %min.iters.check480 = icmp ult i64 %i.bf, 8
  br i1 %min.iters.check480, label %.lr.ph229.preheader, label %vector.main.loop.iter.check481

vector.main.loop.iter.check481:                   ; preds = %iter.check493
  %min.iters.check482 = icmp ult i64 %i.bf, 32
  br i1 %min.iters.check482, label %vec.epilog.ph497, label %vector.ph483

vector.ph483:                                     ; preds = %vector.main.loop.iter.check481
  %i.bg = and i64 %i.bf, 24
  %n.vec484 = and i64 %i.bf, -32                  ; 4 uses
  %i.bh = add nsw i64 %n.vec484, %i.be
  %invariant.gep707.a = getelementptr i8, ptr %1, i64 %i.be
  br label %vector.body485

vector.body485:                                   ; preds = %vector.body485, %vector.ph483
  %index486 = phi i64 [ 0, %vector.ph483 ], [ %index.next489, %vector.body485 ] ; 2 uses
  %gep708.a = getelementptr i8, ptr %invariant.gep707.a, i64 %index486 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %gep708.a, i64 16 ; 2 uses
  %wide.load487 = load <16 x i8>, ptr %gep708.a, align 1, !tbaa !40
  %wide.load488 = load <16 x i8>, ptr %i.bi, align 1, !tbaa !40
  %i.bj = mul <16 x i8> %wide.load487, splat (i8 3)
  %i.bk = mul <16 x i8> %wide.load488, splat (i8 3)
  store <16 x i8> %i.bj, ptr %gep708.a, align 1, !tbaa !40
  store <16 x i8> %i.bk, ptr %i.bi, align 1, !tbaa !40
  %index.next489 = add nuw i64 %index486, 32      ; 2 uses
  %i.bl = icmp eq i64 %index.next489, %n.vec484
  br i1 %i.bl, label %middle.block490, label %vector.body485, !llvm.loop !92

middle.block490:                                  ; preds = %vector.body485
  %cmp.n491 = icmp eq i64 %i.bf, %n.vec484
  br i1 %cmp.n491, label %.loopexit, label %vec.epilog.iter.check495

vec.epilog.iter.check495:                         ; preds = %middle.block490
  %min.epilog.iters.check496 = icmp eq i64 %i.bg, 0
  br i1 %min.epilog.iters.check496, label %.lr.ph229.preheader, label %vec.epilog.ph497, !prof !121

vec.epilog.ph497:                                 ; preds = %vector.main.loop.iter.check481, %vec.epilog.iter.check495
  %vec.epilog.resume.val492 = phi i64 [ %n.vec484, %vec.epilog.iter.check495 ], [ 0, %vector.main.loop.iter.check481 ]
  %n.vec498 = and i64 %i.bf, -8                   ; 3 uses
  %i.bm = add nsw i64 %n.vec498, %i.be
  %invariant.gep709.a = getelementptr i8, ptr %1, i64 %i.be
  br label %vec.epilog.vector.body499

vec.epilog.vector.body499:                        ; preds = %vec.epilog.vector.body499, %vec.epilog.ph497
  %index500 = phi i64 [ %vec.epilog.resume.val492, %vec.epilog.ph497 ], [ %index.next502, %vec.epilog.vector.body499 ] ; 2 uses
  %gep710.a = getelementptr i8, ptr %invariant.gep709.a, i64 %index500 ; 2 uses
  %wide.load501 = load <8 x i8>, ptr %gep710.a, align 1, !tbaa !40
  %i.bn = mul <8 x i8> %wide.load501, splat (i8 3)
  store <8 x i8> %i.bn, ptr %gep710.a, align 1, !tbaa !40
  %index.next502 = add nuw i64 %index500, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next502, %n.vec498
  br i1 %i.bo, label %vec.epilog.middle.block503, label %vec.epilog.vector.body499, !llvm.loop !93

vec.epilog.middle.block503:                       ; preds = %vec.epilog.vector.body499
  %cmp.n504 = icmp eq i64 %i.bf, %n.vec498
  br i1 %cmp.n504, label %.loopexit, label %.lr.ph229.preheader

.lr.ph229.preheader:                              ; preds = %iter.check493, %vec.epilog.iter.check495, %vec.epilog.middle.block503
  %indvars.iv289.ph = phi i64 [ %i.be, %iter.check493 ], [ %i.bh, %vec.epilog.iter.check495 ], [ %i.bm, %vec.epilog.middle.block503 ]
  br label %.lr.ph229

.lr.ph227:                                        ; preds = %.lr.ph227.preheader, %.lr.ph227
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph227 ], [ %indvars.iv.ph, %.lr.ph227.preheader ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !40
  %i.br = and i8 %i.bq, -2
  store i8 %i.br, ptr %i.bp, align 1, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader196, label %.lr.ph227, !llvm.loop !94

.lr.ph229:                                        ; preds = %.lr.ph229.preheader, %.lr.ph229
  %indvars.iv289 = phi i64 [ %indvars.iv.next290, %.lr.ph229 ], [ %indvars.iv289.ph, %.lr.ph229.preheader ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv289 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !40
  %i.bu = mul i8 %i.bt, 3
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !40
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %exitcond293.not = icmp eq i64 %indvars.iv.next290, %i.b
  br i1 %exitcond293.not, label %.loopexit, label %.lr.ph229, !llvm.loop !95

bb.h:                                             ; preds = %bb.o, %bb.o, %bb.o, %bb.e
  %i.bv = add nsw i32 %i.s, -77
  %or.cond = icmp ult i32 %i.bv, 5
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bw = lshr i32 %i.r, 8
  %i.bx = and i32 %i.bw, 255
  %i.by = add nuw nsw i32 %i.bx, 3
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.bz = add nsw i32 %i.s, -82
  %or.cond6 = icmp ult i32 %i.bz, 3
  br i1 %or.cond6, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ca = lshr i32 %i.r, 8
  %i.cb = and i32 %i.ca, 255
  %i.cc = getelementptr inbounds i8, ptr %.0166, i64 -4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !12
  %i.ce = lshr i32 %i.cd, 24
  %i.cf = add nsw i32 %i.cb, -1
  %i.cg = add nsw i32 %i.cf, %i.ce
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ch = icmp eq i32 %i.s, 50
  br i1 %i.ch, label %bb.n, label %.loopexit198

.loopexit198:                                     ; preds = %bb.l
  %i.ci = lshr i32 %i.r, 8
  %i.cj = and i32 %i.ci, 255
  br label %bb.m

bb.m:                                             ; preds = %.loopexit198, %bb.k, %bb.i
  %.0 = phi i32 [ %i.by, %bb.i ], [ %i.cg, %bb.k ], [ %i.cj, %.loopexit198 ] ; 3 uses
  %i.ck = icmp ult i32 %.0, %3
  br i1 %i.ck, label %iter.check625, label %.thread

iter.check625:                                    ; preds = %bb.m
  %i.cl = zext i32 %.0 to i64                     ; 6 uses
  %i.cm = sub nsw i64 %i.b, %i.cl                 ; 7 uses
  %min.iters.check611 = icmp ult i64 %i.cm, 8
  br i1 %min.iters.check611, label %.lr.ph260.preheader, label %vector.main.loop.iter.check612

vector.main.loop.iter.check612:                   ; preds = %iter.check625
  %min.iters.check613 = icmp ult i64 %i.cm, 32
  br i1 %min.iters.check613, label %vec.epilog.ph629, label %vector.ph614

vector.ph614:                                     ; preds = %vector.main.loop.iter.check612
  %i.cn = and i64 %i.cm, 24
  %n.vec615 = and i64 %i.cm, -32                  ; 4 uses
  %i.co = add nsw i64 %n.vec615, %i.cl
  %invariant.gep735.a = getelementptr i8, ptr %1, i64 %i.cl
  br label %vector.body616

vector.body616:                                   ; preds = %vector.body616, %vector.ph614
  %index617 = phi i64 [ 0, %vector.ph614 ], [ %index.next620, %vector.body616 ] ; 2 uses
  %gep736.a = getelementptr i8, ptr %invariant.gep735.a, i64 %index617 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %gep736.a, i64 16 ; 2 uses
  %wide.load618 = load <16 x i8>, ptr %gep736.a, align 1, !tbaa !40
  %wide.load619 = load <16 x i8>, ptr %i.cp, align 1, !tbaa !40
  %i.cq = mul <16 x i8> %wide.load618, splat (i8 3)
  %i.cr = mul <16 x i8> %wide.load619, splat (i8 3)
  store <16 x i8> %i.cq, ptr %gep736.a, align 1, !tbaa !40
  store <16 x i8> %i.cr, ptr %i.cp, align 1, !tbaa !40
  %index.next620 = add nuw i64 %index617, 32      ; 2 uses
  %i.cs = icmp eq i64 %index.next620, %n.vec615
  br i1 %i.cs, label %middle.block621, label %vector.body616, !llvm.loop !96

middle.block621:                                  ; preds = %vector.body616
  %cmp.n622 = icmp eq i64 %i.cm, %n.vec615
  br i1 %cmp.n622, label %.thread, label %vec.epilog.iter.check627

vec.epilog.iter.check627:                         ; preds = %middle.block621
  %min.epilog.iters.check628 = icmp eq i64 %i.cn, 0
  br i1 %min.epilog.iters.check628, label %.lr.ph260.preheader, label %vec.epilog.ph629, !prof !121

vec.epilog.ph629:                                 ; preds = %vector.main.loop.iter.check612, %vec.epilog.iter.check627
  %vec.epilog.resume.val623 = phi i64 [ %n.vec615, %vec.epilog.iter.check627 ], [ 0, %vector.main.loop.iter.check612 ]
  %n.vec630 = and i64 %i.cm, -8                   ; 3 uses
  %i.ct = add nsw i64 %n.vec630, %i.cl
  %invariant.gep737 = getelementptr i8, ptr %1, i64 %i.cl
  br label %vec.epilog.vector.body631

vec.epilog.vector.body631:                        ; preds = %vec.epilog.vector.body631, %vec.epilog.ph629
  %index632 = phi i64 [ %vec.epilog.resume.val623, %vec.epilog.ph629 ], [ %index.next634, %vec.epilog.vector.body631 ] ; 2 uses
  %gep738 = getelementptr i8, ptr %invariant.gep737, i64 %index632 ; 2 uses
  %wide.load633 = load <8 x i8>, ptr %gep738, align 1, !tbaa !40
  %i.cu = mul <8 x i8> %wide.load633, splat (i8 3)
  store <8 x i8> %i.cu, ptr %gep738, align 1, !tbaa !40
  %index.next634 = add nuw i64 %index632, 8       ; 2 uses
  %i.cv = icmp eq i64 %index.next634, %n.vec630
  br i1 %i.cv, label %vec.epilog.middle.block635, label %vec.epilog.vector.body631, !llvm.loop !97

vec.epilog.middle.block635:                       ; preds = %vec.epilog.vector.body631
  %cmp.n636 = icmp eq i64 %i.cm, %n.vec630
  br i1 %cmp.n636, label %.thread, label %.lr.ph260.preheader

.lr.ph260.preheader:                              ; preds = %iter.check625, %vec.epilog.iter.check627, %vec.epilog.middle.block635
  %indvars.iv328.ph = phi i64 [ %i.cl, %iter.check625 ], [ %i.co, %vec.epilog.iter.check627 ], [ %i.ct, %vec.epilog.middle.block635 ]
  br label %.lr.ph260

.lr.ph260:                                        ; preds = %.lr.ph260.preheader, %.lr.ph260
  %indvars.iv328 = phi i64 [ %indvars.iv.next329, %.lr.ph260 ], [ %indvars.iv328.ph, %.lr.ph260.preheader ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv328 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !40
  %i.cy = mul i8 %i.cx, 3
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !40
  %indvars.iv.next329 = add nuw nsw i64 %indvars.iv328, 1 ; 2 uses
  %exitcond332.not = icmp eq i64 %indvars.iv.next329, %i.b
  br i1 %exitcond332.not, label %.thread, label %.lr.ph260, !llvm.loop !98

.thread:                                          ; preds = %.lr.ph260, %middle.block621, %vec.epilog.middle.block635, %bb.m
  %i.cz = tail call i32 @llvm.umin.i32(i32 %.0, i32 %3)
  br label %.thread186

bb.n:                                             ; preds = %bb.l
  %i.da = icmp slt i32 %i.r, 0
  %i.db = lshr i32 %i.r, 16
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr [4 x i8], ptr %i.q, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 -131072
  br i1 %i.da, label %.loopexit, label %.thread186

bb.o:                                             ; preds = %bb.e
  %trunc = trunc i32 %i.r to i8
  switch i8 %trunc, label %bb.p [
    i8 87, label %bb.h
    i8 84, label %bb.h
    i8 81, label %bb.h
  ]

bb.p:                                             ; preds = %bb.o
  %i.df = add nsw i32 %i.s, -77
  %narrow = icmp ult i32 %i.df, -4
  br i1 %narrow, label %.loopexit, label %._crit_edge338

._crit_edge338:                                   ; preds = %bb.p
  %i.dg = icmp eq i32 %i.s, 73
  %.pre = lshr i32 %i.r, 8
  %.pre339 = and i32 %.pre, 255                   ; 8 uses
  %i.dh = lshr i32 %i.r, 16
  %i.di = add nsw i32 %i.dh, -1
  %i.dj = add nsw i32 %i.di, %.pre339
  %i.dk = select i1 %i.dg, i32 %3, i32 %i.dj      ; 5 uses
  %.not263 = icmp eq i32 %.pre339, 0
  br i1 %.not263, label %.preheader193, label %iter.check545

iter.check545:                                    ; preds = %._crit_edge338
  %wide.trip.count316 = zext nneg i32 %.pre339 to i64 ; 6 uses
  %min.iters.check532 = icmp samesign ult i32 %.pre339, 8
  br i1 %min.iters.check532, label %.lr.ph251.preheader, label %vector.main.loop.iter.check533

vector.main.loop.iter.check533:                   ; preds = %iter.check545
  %min.iters.check534 = icmp samesign ult i32 %.pre339, 32
  br i1 %min.iters.check534, label %vec.epilog.ph549, label %vector.ph535

vector.ph535:                                     ; preds = %vector.main.loop.iter.check533
  %i.dl = and i64 %wide.trip.count316, 24
  %n.vec536 = and i64 %wide.trip.count316, 224    ; 9 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %wide.load539 = load <16 x i8>, ptr %1, align 1, !tbaa !40
  %wide.load540 = load <16 x i8>, ptr %i.dm, align 1, !tbaa !40
  %i.dn = mul <16 x i8> %wide.load539, splat (i8 3)
  %i.do = mul <16 x i8> %wide.load540, splat (i8 3)
  store <16 x i8> %i.dn, ptr %1, align 1, !tbaa !40
  store <16 x i8> %i.do, ptr %i.dm, align 1, !tbaa !40
  %i.dp = icmp eq i64 %n.vec536, 32
  br i1 %i.dp, label %middle.block542, label %vector.body537.1

vector.body537.1:                                 ; preds = %vector.ph535
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %wide.load539.1 = load <16 x i8>, ptr %i.dq, align 1, !tbaa !40
  %wide.load540.1 = load <16 x i8>, ptr %i.dr, align 1, !tbaa !40
  %i.ds = mul <16 x i8> %wide.load539.1, splat (i8 3)
  %i.dt = mul <16 x i8> %wide.load540.1, splat (i8 3)
  store <16 x i8> %i.ds, ptr %i.dq, align 1, !tbaa !40
  store <16 x i8> %i.dt, ptr %i.dr, align 1, !tbaa !40
  %i.du = icmp eq i64 %n.vec536, 64
  br i1 %i.du, label %middle.block542, label %vector.body537.2

vector.body537.2:                                 ; preds = %vector.body537.1
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %wide.load539.2 = load <16 x i8>, ptr %i.dv, align 1, !tbaa !40
end_hunk_0
begin_hunk_1_@snap_usedef:bb.a
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index397 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next399, %vec.epilog.vector.body ] ; 2 uses
  %gep726 = getelementptr i8, ptr %invariant.gep725, i64 %index397 ; 2 uses
  %wide.load398 = load <8 x i8>, ptr %gep726, align 1, !tbaa !40
  %i.ih = mul <8 x i8> %wide.load398, splat (i8 3)
  store <8 x i8> %i.ih, ptr %gep726, align 1, !tbaa !40
  %index.next399 = add nuw i64 %index397, 8       ; 2 uses
  %i.ii = icmp eq i64 %index.next399, %n.vec396
  br i1 %i.ii, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !110

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n400 = icmp eq i64 %i.hz, %n.vec396
  br i1 %cmp.n400, label %._crit_edge243, label %.lr.ph242.preheader

.lr.ph242.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv308.ph = phi i64 [ %i.hy, %iter.check ], [ %i.ib, %vec.epilog.iter.check ], [ %i.ig, %vec.epilog.middle.block ]
  br label %.lr.ph242

.lr.ph239:                                        ; preds = %.lr.ph239.preheader, %.lr.ph239
  %indvars.iv303 = phi i64 [ %indvars.iv.next304, %.lr.ph239 ], [ %indvars.iv303.ph, %.lr.ph239.preheader ] ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv303 ; 2 uses
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !40
  %i.il = and i8 %i.ik, -2
  store i8 %i.il, ptr %i.ij, align 1, !tbaa !40
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 2 uses
  %exitcond307.not = icmp eq i64 %indvars.iv.next304, %wide.trip.count306
  br i1 %exitcond307.not, label %.preheader194, label %.lr.ph239, !llvm.loop !111

.lr.ph242:                                        ; preds = %.lr.ph242.preheader, %.lr.ph242
  %indvars.iv308 = phi i64 [ %indvars.iv.next309, %.lr.ph242 ], [ %indvars.iv308.ph, %.lr.ph242.preheader ] ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv308 ; 2 uses
  %i.in = load i8, ptr %i.im, align 1, !tbaa !40
  %i.io = mul i8 %i.in, 3
  store i8 %i.io, ptr %i.im, align 1, !tbaa !40
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 2 uses
  %exitcond312.not = icmp eq i64 %indvars.iv.next309, %i.b
  br i1 %exitcond312.not, label %._crit_edge243, label %.lr.ph242, !llvm.loop !112

._crit_edge243:                                   ; preds = %.lr.ph242, %middle.block, %vec.epilog.middle.block, %.preheader194
  %or.cond18 = icmp ult i32 %i.hi, -2
  br i1 %or.cond18, label %._crit_edge.backedge, label %.preheader

.preheader:                                       ; preds = %._crit_edge243
  %.not264 = icmp eq i32 %i.hc, 0
  br i1 %.not264, label %.thread186, label %iter.check651

iter.check651:                                    ; preds = %.preheader
  %min.iters.check638 = icmp samesign ult i32 %i.hc, 8
  br i1 %min.iters.check638, label %.lr.ph262.preheader, label %vector.main.loop.iter.check639

vector.main.loop.iter.check639:                   ; preds = %iter.check651
  %min.iters.check640 = icmp samesign ult i32 %i.hc, 32
  br i1 %min.iters.check640, label %vec.epilog.ph655, label %vector.ph641

vector.ph641:                                     ; preds = %vector.main.loop.iter.check639
  %i.ip = and i64 %i.hd, 24
  %n.vec642 = and i64 %i.hd, 224                  ; 9 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %wide.load645 = load <16 x i8>, ptr %1, align 1, !tbaa !40
  %wide.load646 = load <16 x i8>, ptr %i.iq, align 1, !tbaa !40
  %i.ir = mul <16 x i8> %wide.load645, splat (i8 3)
  %i.is = mul <16 x i8> %wide.load646, splat (i8 3)
  store <16 x i8> %i.ir, ptr %1, align 1, !tbaa !40
  store <16 x i8> %i.is, ptr %i.iq, align 1, !tbaa !40
  %i.it = icmp eq i64 %n.vec642, 32
  br i1 %i.it, label %middle.block648, label %vector.body643.1

vector.body643.1:                                 ; preds = %vector.ph641
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %wide.load645.1 = load <16 x i8>, ptr %i.iu, align 1, !tbaa !40
  %wide.load646.1 = load <16 x i8>, ptr %i.iv, align 1, !tbaa !40
  %i.iw = mul <16 x i8> %wide.load645.1, splat (i8 3)
  %i.ix = mul <16 x i8> %wide.load646.1, splat (i8 3)
  store <16 x i8> %i.iw, ptr %i.iu, align 1, !tbaa !40
  store <16 x i8> %i.ix, ptr %i.iv, align 1, !tbaa !40
  %i.iy = icmp eq i64 %n.vec642, 64
  br i1 %i.iy, label %middle.block648, label %vector.body643.2

vector.body643.2:                                 ; preds = %vector.body643.1
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %wide.load645.2 = load <16 x i8>, ptr %i.iz, align 1, !tbaa !40
  %wide.load646.2 = load <16 x i8>, ptr %i.ja, align 1, !tbaa !40
  %i.jb = mul <16 x i8> %wide.load645.2, splat (i8 3)
  %i.jc = mul <16 x i8> %wide.load646.2, splat (i8 3)
  store <16 x i8> %i.jb, ptr %i.iz, align 1, !tbaa !40
  store <16 x i8> %i.jc, ptr %i.ja, align 1, !tbaa !40
  %i.jd = icmp eq i64 %n.vec642, 96
  br i1 %i.jd, label %middle.block648, label %vector.body643.3

vector.body643.3:                                 ; preds = %vector.body643.2
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %wide.load645.3 = load <16 x i8>, ptr %i.je, align 1, !tbaa !40
  %wide.load646.3 = load <16 x i8>, ptr %i.jf, align 1, !tbaa !40
  %i.jg = mul <16 x i8> %wide.load645.3, splat (i8 3)
  %i.jh = mul <16 x i8> %wide.load646.3, splat (i8 3)
  store <16 x i8> %i.jg, ptr %i.je, align 1, !tbaa !40
  store <16 x i8> %i.jh, ptr %i.jf, align 1, !tbaa !40
  %i.ji = icmp eq i64 %n.vec642, 128
  br i1 %i.ji, label %middle.block648, label %vector.body643.4

vector.body643.4:                                 ; preds = %vector.body643.3
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %wide.load645.4 = load <16 x i8>, ptr %i.jj, align 1, !tbaa !40
  %wide.load646.4 = load <16 x i8>, ptr %i.jk, align 1, !tbaa !40
  %i.jl = mul <16 x i8> %wide.load645.4, splat (i8 3)
  %i.jm = mul <16 x i8> %wide.load646.4, splat (i8 3)
  store <16 x i8> %i.jl, ptr %i.jj, align 1, !tbaa !40
  store <16 x i8> %i.jm, ptr %i.jk, align 1, !tbaa !40
  %i.jn = icmp eq i64 %n.vec642, 160
  br i1 %i.jn, label %middle.block648, label %vector.body643.5

vector.body643.5:                                 ; preds = %vector.body643.4
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %wide.load645.5 = load <16 x i8>, ptr %i.jo, align 1, !tbaa !40
  %wide.load646.5 = load <16 x i8>, ptr %i.jp, align 1, !tbaa !40
  %i.jq = mul <16 x i8> %wide.load645.5, splat (i8 3)
  %i.jr = mul <16 x i8> %wide.load646.5, splat (i8 3)
  store <16 x i8> %i.jq, ptr %i.jo, align 1, !tbaa !40
  store <16 x i8> %i.jr, ptr %i.jp, align 1, !tbaa !40
  %i.js = icmp eq i64 %n.vec642, 192
  br i1 %i.js, label %middle.block648, label %vector.body643.6

vector.body643.6:                                 ; preds = %vector.body643.5
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %wide.load645.6 = load <16 x i8>, ptr %i.jt, align 1, !tbaa !40
  %wide.load646.6 = load <16 x i8>, ptr %i.ju, align 1, !tbaa !40
  %i.jv = mul <16 x i8> %wide.load645.6, splat (i8 3)
  %i.jw = mul <16 x i8> %wide.load646.6, splat (i8 3)
  store <16 x i8> %i.jv, ptr %i.jt, align 1, !tbaa !40
  store <16 x i8> %i.jw, ptr %i.ju, align 1, !tbaa !40
  br label %middle.block648

middle.block648:                                  ; preds = %vector.body643.6, %vector.body643.5, %vector.body643.4, %vector.body643.3, %vector.body643.2, %vector.body643.1, %vector.ph641
  %cmp.n649 = icmp eq i64 %n.vec642, %i.hd
  br i1 %cmp.n649, label %.thread186, label %vec.epilog.iter.check653

vec.epilog.iter.check653:                         ; preds = %middle.block648
  %min.epilog.iters.check654 = icmp eq i64 %i.ip, 0
  br i1 %min.epilog.iters.check654, label %.lr.ph262.preheader, label %vec.epilog.ph655, !prof !121

vec.epilog.ph655:                                 ; preds = %vector.main.loop.iter.check639, %vec.epilog.iter.check653
  %vec.epilog.resume.val650 = phi i64 [ %n.vec642, %vec.epilog.iter.check653 ], [ 0, %vector.main.loop.iter.check639 ]
  %n.vec656 = and i64 %i.hd, 248                  ; 3 uses
  br label %vec.epilog.vector.body657

vec.epilog.vector.body657:                        ; preds = %vec.epilog.vector.body657, %vec.epilog.ph655
  %index658 = phi i64 [ %vec.epilog.resume.val650, %vec.epilog.ph655 ], [ %index.next660, %vec.epilog.vector.body657 ] ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 %index658 ; 2 uses
  %wide.load659 = load <8 x i8>, ptr %i.jx, align 1, !tbaa !40
  %i.jy = mul <8 x i8> %wide.load659, splat (i8 3)
  store <8 x i8> %i.jy, ptr %i.jx, align 1, !tbaa !40
  %index.next660 = add nuw i64 %index658, 8       ; 2 uses
  %i.jz = icmp eq i64 %index.next660, %n.vec656
  br i1 %i.jz, label %vec.epilog.middle.block661, label %vec.epilog.vector.body657, !llvm.loop !113

vec.epilog.middle.block661:                       ; preds = %vec.epilog.vector.body657
  %cmp.n662 = icmp eq i64 %n.vec656, %i.hd
  br i1 %cmp.n662, label %.thread186, label %.lr.ph262.preheader

.lr.ph262.preheader:                              ; preds = %iter.check651, %vec.epilog.iter.check653, %vec.epilog.middle.block661
  %indvars.iv333.ph = phi i64 [ 0, %iter.check651 ], [ %n.vec642, %vec.epilog.iter.check653 ], [ %n.vec656, %vec.epilog.middle.block661 ]
  br label %.lr.ph262

.lr.ph262:                                        ; preds = %.lr.ph262.preheader, %.lr.ph262
  %indvars.iv333 = phi i64 [ %indvars.iv.next334, %.lr.ph262 ], [ %indvars.iv333.ph, %.lr.ph262.preheader ] ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv333 ; 2 uses
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !40
  %i.kc = mul i8 %i.kb, 3
  store i8 %i.kc, ptr %i.ka, align 1, !tbaa !40
  %indvars.iv.next334 = add nuw nsw i64 %indvars.iv333, 1 ; 2 uses
  %exitcond337.not = icmp eq i64 %indvars.iv.next334, %i.hd
  br i1 %exitcond337.not, label %.thread186, label %.lr.ph262, !llvm.loop !114

bb.y:                                             ; preds = %bb.t
  %trunc190 = trunc i32 %i.r to i8
  switch i8 %trunc190, label %._crit_edge.backedge [
    i8 71, label %.thread186
    i8 44, label %bb.z
    i8 63, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.kd = lshr i32 %i.r, 8                        ; 2 uses
  %i.ke = and i32 %i.kd, 255
  %i.kf = lshr i32 %i.r, 16                       ; 2 uses
  %.not180233 = icmp samesign ugt i32 %i.ke, %i.kf
  br i1 %.not180233, label %._crit_edge.backedge, label %iter.check441

iter.check441:                                    ; preds = %bb.z
  %i.kg = and i32 %i.kd, 255
  %i.kh = zext nneg i32 %i.kg to i64              ; 6 uses
  %i.ki = add nuw nsw i32 %i.kf, 1
  %wide.trip.count301 = zext nneg i32 %i.ki to i64
  %5 = lshr i32 %i.r, 16
  %narrow665 = add nuw nsw i32 %5, 1
  %i.kj = zext nneg i32 %narrow665 to i64
  %i.kk = sub nsw i64 %i.kj, %i.kh                ; 7 uses
  %min.iters.check428 = icmp ult i64 %i.kk, 8
  br i1 %min.iters.check428, label %.lr.ph236.preheader, label %vector.main.loop.iter.check429

vector.main.loop.iter.check429:                   ; preds = %iter.check441
  %min.iters.check430 = icmp ult i64 %i.kk, 32
  br i1 %min.iters.check430, label %vec.epilog.ph445, label %vector.ph431

vector.ph431:                                     ; preds = %vector.main.loop.iter.check429
  %i.kl = and i64 %i.kk, 24
  %n.vec432 = and i64 %i.kk, -32                  ; 4 uses
  %i.km = add nsw i64 %n.vec432, %i.kh
  %invariant.gep715.a = getelementptr i8, ptr %1, i64 %i.kh
  br label %vector.body433

vector.body433:                                   ; preds = %vector.body433, %vector.ph431
  %index434 = phi i64 [ 0, %vector.ph431 ], [ %index.next437, %vector.body433 ] ; 2 uses
  %gep716.a = getelementptr i8, ptr %invariant.gep715.a, i64 %index434 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %gep716.a, i64 16 ; 2 uses
  %wide.load435 = load <16 x i8>, ptr %gep716.a, align 1, !tbaa !40
  %wide.load436 = load <16 x i8>, ptr %i.kn, align 1, !tbaa !40
  %i.ko = mul <16 x i8> %wide.load435, splat (i8 3)
  %i.kp = mul <16 x i8> %wide.load436, splat (i8 3)
  store <16 x i8> %i.ko, ptr %gep716.a, align 1, !tbaa !40
  store <16 x i8> %i.kp, ptr %i.kn, align 1, !tbaa !40
  %index.next437 = add nuw i64 %index434, 32      ; 2 uses
  %i.kq = icmp eq i64 %index.next437, %n.vec432
  br i1 %i.kq, label %middle.block438, label %vector.body433, !llvm.loop !115

middle.block438:                                  ; preds = %vector.body433
  %cmp.n439 = icmp eq i64 %i.kk, %n.vec432
  br i1 %cmp.n439, label %._crit_edge.backedge, label %vec.epilog.iter.check443

vec.epilog.iter.check443:                         ; preds = %middle.block438
  %min.epilog.iters.check444 = icmp eq i64 %i.kl, 0
  br i1 %min.epilog.iters.check444, label %.lr.ph236.preheader, label %vec.epilog.ph445, !prof !121

vec.epilog.ph445:                                 ; preds = %vector.main.loop.iter.check429, %vec.epilog.iter.check443
  %vec.epilog.resume.val440 = phi i64 [ %n.vec432, %vec.epilog.iter.check443 ], [ 0, %vector.main.loop.iter.check429 ]
  %n.vec446 = and i64 %i.kk, -8                   ; 3 uses
  %i.kr = add nsw i64 %n.vec446, %i.kh
  %invariant.gep717 = getelementptr i8, ptr %1, i64 %i.kh
  br label %vec.epilog.vector.body447

vec.epilog.vector.body447:                        ; preds = %vec.epilog.vector.body447, %vec.epilog.ph445
  %index448 = phi i64 [ %vec.epilog.resume.val440, %vec.epilog.ph445 ], [ %index.next450, %vec.epilog.vector.body447 ] ; 2 uses
  %gep718 = getelementptr i8, ptr %invariant.gep717, i64 %index448 ; 2 uses
  %wide.load449 = load <8 x i8>, ptr %gep718, align 1, !tbaa !40
  %i.ks = mul <8 x i8> %wide.load449, splat (i8 3)
  store <8 x i8> %i.ks, ptr %gep718, align 1, !tbaa !40
  %index.next450 = add nuw i64 %index448, 8       ; 2 uses
  %i.kt = icmp eq i64 %index.next450, %n.vec446
  br i1 %i.kt, label %vec.epilog.middle.block451, label %vec.epilog.vector.body447, !llvm.loop !116

vec.epilog.middle.block451:                       ; preds = %vec.epilog.vector.body447
  %cmp.n452 = icmp eq i64 %i.kk, %n.vec446
  br i1 %cmp.n452, label %._crit_edge.backedge, label %.lr.ph236.preheader

.lr.ph236.preheader:                              ; preds = %iter.check441, %vec.epilog.iter.check443, %vec.epilog.middle.block451
  %indvars.iv298.ph = phi i64 [ %i.kh, %iter.check441 ], [ %i.km, %vec.epilog.iter.check443 ], [ %i.kr, %vec.epilog.middle.block451 ]
  br label %.lr.ph236

.lr.ph236:                                        ; preds = %.lr.ph236.preheader, %.lr.ph236
  %indvars.iv298 = phi i64 [ %indvars.iv.next299, %.lr.ph236 ], [ %indvars.iv298.ph, %.lr.ph236.preheader ] ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv298 ; 2 uses
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !40
  %i.kw = mul i8 %i.kv, 3
  store i8 %i.kw, ptr %i.ku, align 1, !tbaa !40
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 1 ; 2 uses
  %exitcond302.not = icmp eq i64 %indvars.iv.next299, %wide.trip.count301
  br i1 %exitcond302.not, label %._crit_edge.backedge, label %.lr.ph236, !llvm.loop !117

bb.aa:                                            ; preds = %bb.y
  %i.kx = lshr i32 %i.r, 8
  %i.ky = and i32 %i.kx, 255                      ; 2 uses
  %i.kz = add nsw i32 %i.ky, -1                   ; 2 uses
  %i.la = icmp ult i32 %i.kz, %3
  br i1 %i.la, label %iter.check467, label %._crit_edge.backedge

iter.check467:                                    ; preds = %bb.aa
  %i.lb = zext nneg i32 %i.kz to i64              ; 5 uses
  %i.lc = sub i32 %3, %i.ky                       ; 3 uses
  %i.ld = zext i32 %i.lc to i64
  %i.le = add nuw nsw i64 %i.ld, 1                ; 5 uses
  %min.iters.check454 = icmp ult i32 %i.lc, 7
  br i1 %min.iters.check454, label %.lr.ph232.preheader, label %vector.main.loop.iter.check455

vector.main.loop.iter.check455:                   ; preds = %iter.check467
  %min.iters.check456 = icmp ult i32 %i.lc, 31
  br i1 %min.iters.check456, label %vec.epilog.ph471, label %vector.ph457

vector.ph457:                                     ; preds = %vector.main.loop.iter.check455
  %i.lf = and i64 %i.le, 24
  %n.vec458 = and i64 %i.le, 8589934560           ; 4 uses
  %i.lg = add nuw nsw i64 %n.vec458, %i.lb
  %invariant.gep711.a = getelementptr i8, ptr %1, i64 %i.lb
  br label %vector.body459

vector.body459:                                   ; preds = %vector.body459, %vector.ph457
  %index460 = phi i64 [ 0, %vector.ph457 ], [ %index.next463, %vector.body459 ] ; 2 uses
  %gep712.a = getelementptr i8, ptr %invariant.gep711.a, i64 %index460 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %gep712.a, i64 16 ; 2 uses
  %wide.load461 = load <16 x i8>, ptr %gep712.a, align 1, !tbaa !40
  %wide.load462 = load <16 x i8>, ptr %i.lh, align 1, !tbaa !40
  %i.li = and <16 x i8> %wide.load461, splat (i8 -2)
  %i.lj = and <16 x i8> %wide.load462, splat (i8 -2)
  store <16 x i8> %i.li, ptr %gep712.a, align 1, !tbaa !40
  store <16 x i8> %i.lj, ptr %i.lh, align 1, !tbaa !40
  %index.next463 = add nuw i64 %index460, 32      ; 2 uses
  %i.lk = icmp eq i64 %index.next463, %n.vec458
  br i1 %i.lk, label %middle.block464, label %vector.body459, !llvm.loop !118

middle.block464:                                  ; preds = %vector.body459
  %cmp.n465 = icmp eq i64 %i.le, %n.vec458
  br i1 %cmp.n465, label %._crit_edge.backedge, label %vec.epilog.iter.check469

._crit_edge.backedge:                             ; preds = %.lr.ph232, %.lr.ph236, %middle.block464, %vec.epilog.middle.block477, %middle.block438, %vec.epilog.middle.block451, %bb.aa, %bb.z, %._crit_edge243, %bb.q, %bb.s, %bb.r, %.loopexit, %bb.y
  br label %._crit_edge

vec.epilog.iter.check469:                         ; preds = %middle.block464
  %min.epilog.iters.check470 = icmp eq i64 %i.lf, 0
  br i1 %min.epilog.iters.check470, label %.lr.ph232.preheader, label %vec.epilog.ph471, !prof !121

vec.epilog.ph471:                                 ; preds = %vector.main.loop.iter.check455, %vec.epilog.iter.check469
  %vec.epilog.resume.val466 = phi i64 [ %n.vec458, %vec.epilog.iter.check469 ], [ 0, %vector.main.loop.iter.check455 ]
  %n.vec472 = and i64 %i.le, 8589934584           ; 3 uses
  %i.ll = add nuw nsw i64 %n.vec472, %i.lb
  %invariant.gep713 = getelementptr i8, ptr %1, i64 %i.lb
  br label %vec.epilog.vector.body473

vec.epilog.vector.body473:                        ; preds = %vec.epilog.vector.body473, %vec.epilog.ph471
  %index474 = phi i64 [ %vec.epilog.resume.val466, %vec.epilog.ph471 ], [ %index.next476, %vec.epilog.vector.body473 ] ; 2 uses
  %gep714 = getelementptr i8, ptr %invariant.gep713, i64 %index474 ; 2 uses
  %wide.load475 = load <8 x i8>, ptr %gep714, align 1, !tbaa !40
  %i.lm = and <8 x i8> %wide.load475, splat (i8 -2)
  store <8 x i8> %i.lm, ptr %gep714, align 1, !tbaa !40
  %index.next476 = add nuw i64 %index474, 8       ; 2 uses
  %i.ln = icmp eq i64 %index.next476, %n.vec472
  br i1 %i.ln, label %vec.epilog.middle.block477, label %vec.epilog.vector.body473, !llvm.loop !119

vec.epilog.middle.block477:                       ; preds = %vec.epilog.vector.body473
  %cmp.n478 = icmp eq i64 %i.le, %n.vec472
  br i1 %cmp.n478, label %._crit_edge.backedge, label %.lr.ph232.preheader

.lr.ph232.preheader:                              ; preds = %iter.check467, %vec.epilog.iter.check469, %vec.epilog.middle.block477
  %indvars.iv294.ph = phi i64 [ %i.lb, %iter.check467 ], [ %i.lg, %vec.epilog.iter.check469 ], [ %i.ll, %vec.epilog.middle.block477 ]
  br label %.lr.ph232

.lr.ph232:                                        ; preds = %.lr.ph232.preheader, %.lr.ph232
  %indvars.iv294 = phi i64 [ %indvars.iv.next295, %.lr.ph232 ], [ %indvars.iv294.ph, %.lr.ph232.preheader ] ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv294 ; 2 uses
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !40
  %i.lq = and i8 %i.lp, -2
  store i8 %i.lq, ptr %i.lo, align 1, !tbaa !40
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next295 to i32
  %exitcond297.not = icmp eq i32 %3, %lftr.wideiv
  br i1 %exitcond297.not, label %._crit_edge.backedge, label %.lr.ph232, !llvm.loop !120

.thread186:                                       ; preds = %bb.y, %bb.n, %bb.e, %.lr.ph257, %.lr.ph262, %middle.block594, %vec.epilog.middle.block608, %middle.block648, %vec.epilog.middle.block661, %.preheader191, %.preheader, %.thread, %bb.a
  %.7165 = phi i32 [ 0, %bb.a ], [ %i.cz, %.thread ], [ 0, %.preheader ], [ 0, %.preheader191 ], [ 0, %middle.block648 ], [ 0, %middle.block594 ], [ 0, %.lr.ph262 ], [ 0, %vec.epilog.middle.block661 ], [ 0, %.lr.ph257 ], [ 0, %vec.epilog.middle.block608 ], [ %3, %bb.e ], [ %3, %bb.n ], [ %3, %bb.y ]
  ret i32 %.7165
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @lj_snap_shrink(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [258 x i8], align 16              ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i16, ptr %i.d, align 2, !tbaa !36
  %i.f = zext i16 %i.e to i64
  %i.g = getelementptr [12 x i8], ptr %i.c, i64 %i.f ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -12      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.k = load i32, ptr %i.h, align 4, !tbaa !41   ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l ; 7 uses
  %i.n = getelementptr i8, ptr %i.g, i64 -2       ; 2 uses
  %i.o = load i8, ptr %i.n, align 2, !tbaa !51    ; 5 uses
  %i.p = zext i8 %i.o to i32                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.r = load i32, ptr %i.q, align 4, !tbaa !44   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.t = load i32, ptr %i.s, align 8, !tbaa !43   ; 3 uses
  %i.u = zext i8 %i.o to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.u
  %.0.copyload.i = load i64, ptr %i.v, align 4
  %i.w = lshr i64 %.0.copyload.i, 8
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = call fastcc i32 @snap_usedef(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.x, i32 noundef %i.r) ; 2 uses
  %i.z = icmp ult i32 %i.y, %i.r
  br i1 %i.z, label %bb.b, label %snap_useuv.exit

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !57 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 61
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !58
  %i.ae = and i8 %i.ad, 1
  %.not.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i, label %snap_useuv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !59 ; 2 uses
  %i.ah = zext i32 %i.ag to i64
  %.not25.i = icmp eq i32 %i.ag, 0
  br i1 %.not25.i, label %snap_useuv.exit, label %.lr.ph24.preheader.i

.lr.ph24.preheader.i:                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !60
  %i.ak = inttoptr i64 %i.aj to ptr
  br label %.lr.ph24.i

.lr.ph24.i:                                       ; preds = %.loopexit.i, %.lr.ph24.preheader.i
  %.023.pn.i = phi ptr [ %.023.i, %.loopexit.i ], [ %i.ak, %.lr.ph24.preheader.i ]
  %.01722.i = phi i64 [ %i.cu, %.loopexit.i ], [ 0, %.lr.ph24.preheader.i ]
  %.023.i = getelementptr inbounds i8, ptr %.023.pn.i, i64 -8 ; 2 uses
  %i.al = load i64, ptr %.023.i, align 8, !tbaa !61
  %i.am = inttoptr i64 %i.al to ptr               ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 9
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !40
  %i.ap = icmp eq i8 %i.ao, 7
  br i1 %i.ap, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %.lr.ph24.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 60
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !40  ; 3 uses
  %.not26.i = icmp eq i8 %i.ar, 0
  br i1 %.not26.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.at = load i64, ptr %i.as, align 8, !tbaa !40
  %i.au = inttoptr i64 %i.at to ptr               ; 2 uses
  %i.av = zext i8 %i.ar to i64                    ; 3 uses
  %min.iters.check = icmp ult i8 %i.ar, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.av, 248                     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue88, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue88 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %index
  %i.ax = load <8 x i16>, ptr %i.aw, align 2, !tbaa !45 ; 9 uses
  %i.ay = icmp slt <8 x i16> %i.ax, zeroinitializer ; 8 uses
  %i.az = extractelement <8 x i1> %i.ay, i64 0
  br i1 %i.az, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.ba = extractelement <8 x i16> %i.ax, i64 0
  %i.bb = and i16 %i.ba, 255
  %i.bc = zext nneg i16 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bc
  store i8 0, ptr %i.bd, align 1, !tbaa !40
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.be = extractelement <8 x i1> %i.ay, i64 1
  br i1 %i.be, label %pred.store.if75, label %pred.store.continue76

pred.store.if75:                                  ; preds = %pred.store.continue
  %i.bf = extractelement <8 x i16> %i.ax, i64 1
end_hunk_1
