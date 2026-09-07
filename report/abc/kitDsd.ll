Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/kitDsd?download=true
inline.NumInlined: 404
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 72
begin_hunk_0_@Kit_DsdDecomposeInt:bb.a
  %i.d = shl nsw i64 %i.c, 3
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #28
  %i.f = getelementptr inbounds nuw i8, ptr %calloc.i, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !50
  %i.g = trunc i32 %1 to i16                      ; 2 uses
  store i16 %i.g, ptr %calloc.i, align 8, !tbaa !47
  %i.h = trunc i32 %i.b to i16
  %i.i = getelementptr inbounds nuw i8, ptr %calloc.i, i64 2
  store i16 %i.h, ptr %i.i, align 2, !tbaa !49
  %i.j = icmp slt i32 %1, 6                       ; 2 uses
  %i.k = add nsw i32 %1, -5                       ; 2 uses
  %i.l = shl i32 6, %i.k
  %i.m = select i1 %i.j, i32 6, i32 %i.l
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 2
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #28
  %i.q = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !53
  %i.r = shl i16 %i.g, 1
  %i.s = getelementptr inbounds nuw i8, ptr %calloc.i, i64 6 ; 4 uses
  store i16 %i.r, ptr %i.s, align 2, !tbaa !57
  %i.t = tail call ptr @Kit_DsdObjAlloc(ptr noundef nonnull %calloc.i, i32 noundef 5, i32 noundef %1) ; 9 uses
  %i.u = icmp sgt i32 %1, 0
  br i1 %i.u, label %iter.check, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a
  %i.v = load i32, ptr %i.t, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %i.x = lshr i32 %i.v, 10
  %i.y = and i32 %i.x, 255
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.z
  br label %select.unfold.preheader.i

iter.check:                                       ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 3 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check44 = icmp ult i32 %1, 16
  br i1 %min.iters.check44, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ac = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.ad = shl <8 x i16> %vec.ind, splat (i16 1)
  %step.add = shl <8 x i16> %vec.ind, splat (i16 1)
  %i.ae = add <8 x i16> %step.add, splat (i16 16)
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <8 x i16> %i.ad, ptr %i.af, align 2, !tbaa !56
  store <8 x i16> %i.ae, ptr %i.ag, align 2, !tbaa !56
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 16)
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !367

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !372

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec45 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %i.ai = trunc i64 %vec.epilog.resume.val to i16
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.ai, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind47 = phi <4 x i16> [ %induction, %vec.epilog.ph ], [ %vec.ind.next49, %vec.epilog.vector.body ] ; 2 uses
  %i.aj = shl <4 x i16> %vec.ind47, splat (i16 1)
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %index46
  store <4 x i16> %i.aj, ptr %i.ak, align 2, !tbaa !56
  %index.next48 = add nuw i64 %index46, 4         ; 2 uses
  %vec.ind.next49 = add <4 x i16> %vec.ind47, splat (i16 4)
  %i.al = icmp eq i64 %index.next48, %n.vec45
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !368

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n50 = icmp eq i64 %n.vec45, %wide.trip.count
  br i1 %cmp.n50, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec45, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.0.tr = trunc i64 %indvars.iv to i16
  %i.am = shl i16 %.0.tr, 1
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv
  store i16 %i.am, ptr %i.an, align 2, !tbaa !56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !369

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.ao = load i32, ptr %i.t, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 3 uses
  %i.aq = lshr i32 %i.ao, 10
  %i.ar = and i32 %i.aq, 255
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.as
  %i.au = shl nuw i32 1, %i.k
  %spec.select.i = select i1 %i.j, i32 1, i32 %i.au ; 2 uses
  %i.av = icmp sgt i32 %spec.select.i, 0
  br i1 %i.av, label %select.unfold.preheader.i, label %Kit_TruthCopy.exit

select.unfold.preheader.i:                        ; preds = %._crit_edge.thread, %._crit_edge
  %spec.select.i43 = phi i32 [ 1, %._crit_edge.thread ], [ %spec.select.i, %._crit_edge ] ; 2 uses
  %i.aw = phi ptr [ %i.aa, %._crit_edge.thread ], [ %i.at, %._crit_edge ] ; 3 uses
  %i.ax = phi ptr [ %i.w, %._crit_edge.thread ], [ %i.ap, %._crit_edge ] ; 2 uses
  %i.ay = zext nneg i32 %spec.select.i43 to i64   ; 3 uses
  %min.iters.check51 = icmp samesign ult i32 %spec.select.i43, 8
  %i.az = ptrtoaddr ptr %i.aw to i64
  %i.ba = sub i64 %i.az, %i.a
  %diff.check = icmp ugt i64 %i.ba, -32
  %or.cond = select i1 %min.iters.check51, i1 true, i1 %diff.check
  br i1 %or.cond, label %select.unfold.i, label %vector.ph52

vector.ph52:                                      ; preds = %select.unfold.preheader.i
  %n.vec53 = and i64 %i.ay, 2147483640
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph52
  %index55 = phi i64 [ 0, %vector.ph52 ], [ %index.next57, %vector.body54 ] ; 2 uses
  %i.bb = xor i64 %index55, -1
  %i.bc = add i64 %i.bb, %i.ay                    ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -12
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -28
  %wide.load = load <4 x i32>, ptr %i.be, align 4, !tbaa !33
  %wide.load56 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !33
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bc ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -12
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -28
  store <4 x i32> %wide.load, ptr %i.bh, align 4, !tbaa !33
  store <4 x i32> %wide.load56, ptr %i.bi, align 4, !tbaa !33
  %index.next57 = add nuw i64 %index55, 8         ; 2 uses
  %i.bj = icmp eq i64 %index.next57, %n.vec53
  br i1 %i.bj, label %Kit_TruthCopy.exit, label %vector.body54, !llvm.loop !370

select.unfold.i:                                  ; preds = %select.unfold.preheader.i, %select.unfold.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %select.unfold.i ], [ %i.ay, %select.unfold.preheader.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !33
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.next.i
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !33
  %i.bn = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.bn, label %select.unfold.i, label %Kit_TruthCopy.exit, !llvm.loop !371

Kit_TruthCopy.exit:                               ; preds = %vector.body54, %select.unfold.i, %._crit_edge
  %i.bo = phi ptr [ %i.ap, %._crit_edge ], [ %i.ax, %select.unfold.i ], [ %i.ax, %vector.body54 ]
  %i.bp = tail call i32 @Kit_TruthSupport(ptr noundef %0, i32 noundef %1) #29 ; 3 uses
  %i.bq = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bp)
  switch i32 %i.bq, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %Kit_TruthCopy.exit
  %i.br = load i32, ptr %i.t, align 4
  %i.bs = and i32 %i.br, 67108415
  %i.bt = or disjoint i32 %i.bs, 64
  store i32 %i.bt, ptr %i.t, align 4
  %i.bu = load i32, ptr %0, align 4, !tbaa !33
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.bw = load i16, ptr %i.s, align 2, !tbaa !57
  %i.bx = xor i16 %i.bw, 1
  store i16 %i.bx, ptr %i.s, align 2, !tbaa !57
  br label %bb.f

bb.d:                                             ; preds = %Kit_TruthCopy.exit
  %i.by = load i32, ptr %i.t, align 4
  %i.bz = and i32 %i.by, 67108415
  %i.ca = or disjoint i32 %i.bz, 67108992
  store i32 %i.ca, ptr %i.t, align 4
  %i.cb = tail call fastcc i32 @Kit_WordFindFirstBit(i32 noundef %i.bp)
  %i.cc = load i32, ptr %0, align 4, !tbaa !33
  %i.cd = and i32 %i.cc, 1
  %i.ce = shl nsw i32 %i.cb, 1
  %i.cf = or disjoint i32 %i.cd, %i.ce
  %i.cg = trunc i32 %i.cf to i16
  store i16 %i.cg, ptr %i.bo, align 4, !tbaa !56
  br label %bb.f

bb.e:                                             ; preds = %Kit_TruthCopy.exit
  %i.ch = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !52
  tail call void @Kit_DsdDecompose_rec(ptr noundef nonnull %calloc.i, ptr noundef %i.ci, i32 noundef %i.bp, ptr noundef nonnull %i.s, i32 noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  ret ptr %calloc.i
}

; Function Attrs: nounwind uwtable
define noundef ptr @Kit_DsdDecompose(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @Kit_DsdDecomposeInt(ptr noundef %0, i32 noundef %1, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noundef ptr @Kit_DsdDecomposeExpand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @Kit_DsdDecomposeInt(ptr noundef %0, i32 noundef %1, i32 noundef 0) ; 2 uses
  %i.b = tail call ptr @Kit_DsdExpand(ptr noundef %i.a)
  tail call void @Kit_DsdNtkFree(ptr noundef %i.a)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define noundef i32 @Kit_DsdTestCofs(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 3 uses
  %i.c = load i16, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.d = zext i16 %i.c to i32
  %i.e = icmp ult i16 %i.c, 6
  %i.f = add nsw i32 %i.d, -5
  %i.g = shl nuw i32 1, %i.f
  %i.h = sext i32 %i.g to i64
  %i.i = select i1 %i.e, i64 1, i64 %i.h
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i ; 2 uses
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) ; 0 uses
  %i.l = load ptr, ptr @stdout, align 8, !tbaa !59
  %i.m = load i16, ptr %0, align 8, !tbaa !47
  %i.n = zext i16 %i.m to i32
  tail call void @Extra_PrintHexadecimal(ptr noundef %i.l, ptr noundef %1, i32 noundef %i.n) #29
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !59 ; 3 uses
  %i.p = tail call i64 @fwrite(ptr nonnull @.str.8, i64 4, i64 1, ptr %i.o) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !57   ; 2 uses
  %i.s = and i16 %i.r, 1
  %.not.i = icmp eq i16 %i.s, 0
  br i1 %.not.i, label %Kit_DsdPrint.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %fputc.i = tail call i32 @fputc(i32 33, ptr %i.o) ; 0 uses
  %.pre.i = load i16, ptr %i.q, align 2, !tbaa !57
  br label %Kit_DsdPrint.exit

Kit_DsdPrint.exit:                                ; preds = %bb.a, %bb.b
  %i.t = phi i16 [ %.pre.i, %bb.b ], [ %i.r, %bb.a ]
  %i.u = lshr i16 %i.t, 1
  %i.v = zext nneg i16 %i.u to i32
  tail call void @Kit_DsdPrint_rec(ptr noundef %i.o, ptr noundef nonnull readonly %0, i32 noundef %i.v)
  %putchar35 = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.w = load i16, ptr %0, align 8, !tbaa !47     ; 2 uses
  %.not = icmp eq i16 %i.w, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %Kit_DsdPrint.exit
  %i.x = zext i16 %i.w to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %Kit_DsdPrint.exit46
  %i.y = phi i32 [ %i.bd, %Kit_DsdPrint.exit46 ], [ %i.x, %.lr.ph.preheader ]
  %.047 = phi i32 [ %i.bb, %Kit_DsdPrint.exit46 ], [ 0, %.lr.ph.preheader ] ; 5 uses
  tail call void @Kit_TruthCofactor0New(ptr noundef %i.b, ptr noundef %1, i32 noundef %i.y, i32 noundef %.047) #29
  %i.z = load i16, ptr %0, align 8, !tbaa !47
  %i.aa = zext i16 %i.z to i32
  %i.ab = tail call noundef ptr @Kit_DsdDecomposeInt(ptr noundef %i.b, i32 noundef %i.aa, i32 noundef 0) ; 2 uses
  %i.ac = tail call ptr @Kit_DsdExpand(ptr noundef %i.ab) ; 3 uses
  tail call void @Kit_DsdNtkFree(ptr noundef %i.ab)
  %i.ad = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %.047) ; 0 uses
  %i.ae = load ptr, ptr @stdout, align 8, !tbaa !59 ; 3 uses
  %i.af = tail call i64 @fwrite(ptr nonnull @.str.8, i64 4, i64 1, ptr %i.ae) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 6 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !57 ; 2 uses
  %i.ai = and i16 %i.ah, 1
  %.not.i39 = icmp eq i16 %i.ai, 0
  br i1 %.not.i39, label %Kit_DsdPrint.exit42, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %fputc.i40 = tail call i32 @fputc(i32 33, ptr %i.ae) ; 0 uses
  %.pre.i41 = load i16, ptr %i.ag, align 2, !tbaa !57
  br label %Kit_DsdPrint.exit42

Kit_DsdPrint.exit42:                              ; preds = %.lr.ph, %bb.c
  %i.aj = phi i16 [ %.pre.i41, %bb.c ], [ %i.ah, %.lr.ph ]
  %i.ak = lshr i16 %i.aj, 1
  %i.al = zext nneg i16 %i.ak to i32
  tail call void @Kit_DsdPrint_rec(ptr noundef %i.ae, ptr noundef nonnull readonly %i.ac, i32 noundef %i.al)
  %putchar37 = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.am = load i16, ptr %0, align 8, !tbaa !47
  %i.an = zext i16 %i.am to i32
  tail call void @Kit_TruthCofactor1New(ptr noundef nonnull %i.j, ptr noundef %1, i32 noundef %i.an, i32 noundef %.047) #29
  %i.ao = load i16, ptr %0, align 8, !tbaa !47
  %i.ap = zext i16 %i.ao to i32
  %i.aq = tail call noundef ptr @Kit_DsdDecomposeInt(ptr noundef nonnull %i.j, i32 noundef %i.ap, i32 noundef 0) ; 2 uses
  %i.ar = tail call ptr @Kit_DsdExpand(ptr noundef %i.aq) ; 3 uses
  tail call void @Kit_DsdNtkFree(ptr noundef %i.aq)
  %i.as = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %.047) ; 0 uses
  %i.at = load ptr, ptr @stdout, align 8, !tbaa !59 ; 3 uses
  %i.au = tail call i64 @fwrite(ptr nonnull @.str.8, i64 4, i64 1, ptr %i.at) ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 6 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !57 ; 2 uses
  %i.ax = and i16 %i.aw, 1
  %.not.i43 = icmp eq i16 %i.ax, 0
  br i1 %.not.i43, label %Kit_DsdPrint.exit46, label %bb.d

bb.d:                                             ; preds = %Kit_DsdPrint.exit42
  %fputc.i44 = tail call i32 @fputc(i32 33, ptr %i.at) ; 0 uses
  %.pre.i45 = load i16, ptr %i.av, align 2, !tbaa !57
  br label %Kit_DsdPrint.exit46

Kit_DsdPrint.exit46:                              ; preds = %Kit_DsdPrint.exit42, %bb.d
  %i.ay = phi i16 [ %.pre.i45, %bb.d ], [ %i.aw, %Kit_DsdPrint.exit42 ]
  %i.az = lshr i16 %i.ay, 1
  %i.ba = zext nneg i16 %i.az to i32
  tail call void @Kit_DsdPrint_rec(ptr noundef %i.at, ptr noundef nonnull readonly %i.ar, i32 noundef %i.ba)
  %putchar38 = tail call i32 @putchar(i32 10)     ; 0 uses
  tail call void @Kit_DsdNtkFree(ptr noundef nonnull %i.ac)
  tail call void @Kit_DsdNtkFree(ptr noundef nonnull %i.ar)
  %i.bb = add nuw nsw i32 %.047, 1                ; 2 uses
  %i.bc = load i16, ptr %0, align 8, !tbaa !47
  %i.bd = zext i16 %i.bc to i32                   ; 2 uses
  %i.be = icmp samesign ult i32 %i.bb, %i.bd
  br i1 %i.be, label %.lr.ph, label %._crit_edge, !llvm.loop !373

._crit_edge:                                      ; preds = %Kit_DsdPrint.exit46, %Kit_DsdPrint.exit
  %putchar36 = tail call i32 @putchar(i32 10)     ; 0 uses
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #12

declare void @Extra_PrintHexadecimal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1000) i32 @Kit_DsdEval(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = tail call noundef ptr @Kit_DsdDecomposeInt(ptr noundef %0, i32 noundef %1, i32 noundef 0) ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 0, ptr %i.a, align 4, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 6 ; 3 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !57
  %i.e = lshr i16 %i.d, 1                         ; 3 uses
  %i.f = load i16, ptr %i.b, align 8, !tbaa !47   ; 4 uses
  %i.g = icmp uge i16 %i.e, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50
  %narrow.i.i = sub nuw nsw i16 %i.e, %i.f
  %i.j = zext nneg i16 %narrow.i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, 448
  switch i32 %i.n, label %bb.b [
    i32 64, label %Kit_DsdCountLuts.exit
    i32 128, label %Kit_DsdCountLuts.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.o = zext nneg i16 %i.e to i32
  %i.p = call i32 @Kit_DsdCountLuts_rec(ptr noundef nonnull %i.b, i32 noundef %2, i32 noundef %i.o, ptr noundef nonnull %i.a) ; 0 uses
  %i.q = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %i.r = icmp sgt i32 %i.q, 999
  %..i = select i1 %i.r, i32 -1, i32 %i.q
  %.val.pre = load i16, ptr %i.b, align 8, !tbaa !47
  br label %Kit_DsdCountLuts.exit

Kit_DsdCountLuts.exit:                            ; preds = %bb.a, %bb.a, %bb.b
  %.val = phi i16 [ %i.f, %bb.a ], [ %i.f, %bb.a ], [ %.val.pre, %bb.b ]
  %.0.i = phi i32 [ 0, %bb.a ], [ 0, %bb.a ], [ %..i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.s = getelementptr i8, ptr %i.b, i64 4
  %.val13 = load i16, ptr %i.s, align 4, !tbaa !48
  %i.t = zext i16 %.val to i32
  %i.u = zext i16 %.val13 to i32
  %i.v = add nuw nsw i32 %i.u, %i.t
  %i.w = call ptr @Kit_DsdManAlloc(i32 noundef %1, i32 noundef %i.v) ; 5 uses
  %i.x = load i16, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %.not22.i = icmp eq i16 %i.x, 0
  br i1 %.not22.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %Kit_DsdCountLuts.exit
end_hunk_0
