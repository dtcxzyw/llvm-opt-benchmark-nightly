Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/saigSynch?download=true
inline.NumInlined: 167
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@Saig_SynchTernarySimulate:bb.a
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %exitcond176.not = icmp eq i64 %indvars.iv.next173, %wide.trip.count175
  br i1 %exitcond176.not, label %.loopexit117, label %.thread114, !llvm.loop !75

.loopexit117:                                     ; preds = %.lr.ph, %.lr.ph126, %.lr.ph128, %.thread114, %middle.block249, %middle.block233, %middle.block217, %middle.block, %.preheader122, %.preheader120, %.preheader118, %.thread114.preheader, %bb.c, %bb.b
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %.val98 = load i32, ptr %i.c, align 4, !tbaa !56
  %i.mn = sext i32 %.val98 to i64
  %i.mo = icmp slt i64 %indvars.iv.next178, %i.mn
  br i1 %i.mo, label %bb.b, label %.critedge.preheader, !llvm.loop !76

.critedge2:                                       ; preds = %.critedge.us, %.lr.ph140, %.critedge.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Saig_SynchTernaryTransferState(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %.val1925 = load i32, ptr %i.a, align 8, !tbaa !29
  %i.b = icmp sgt i32 %.val1925, 0
  br i1 %i.b, label %.critedge.lr.ph, label %._crit_edge27.split

.critedge.lr.ph:                                  ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val20 = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.d = getelementptr i8, ptr %0, i64 112
  %i.e = getelementptr i8, ptr %.val20, i64 8
  %.val20.val = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.f = getelementptr i8, ptr %0, i64 16
  %.val22 = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.g = getelementptr i8, ptr %0, i64 108
  %i.h = getelementptr i8, ptr %.val22, i64 8
  %.val22.val = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.i = getelementptr i8, ptr %1, i64 8
  %.val18 = load ptr, ptr %i.i, align 8, !tbaa !8 ; 2 uses
  %i.j = icmp sgt i32 %2, 0
  br i1 %i.j, label %.critedge.preheader, label %._crit_edge27.split

.critedge.preheader:                              ; preds = %.critedge.lr.ph
  %wide.trip.count = zext nneg i32 %2 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %._crit_edge
  %.01726 = phi i32 [ %i.bb, %._crit_edge ], [ 0, %.critedge.preheader ] ; 3 uses
  %.val21 = load i32, ptr %i.d, align 8, !tbaa !58
  %i.k = add nsw i32 %.val21, %.01726
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %.val20.val, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27
  %.val23 = load i32, ptr %i.g, align 4, !tbaa !31
  %i.o = add nsw i32 %.val23, %.01726
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %.val22.val, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 36
  %i.t = load i32, ptr %i.s, align 4, !tbaa !26
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %.val18, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27   ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  %i.y = load i32, ptr %i.x, align 4, !tbaa !26
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %.val18, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !27 ; 7 uses
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %i.ad = ptrtoaddr ptr %i.w to i64
  %i.ae = sub i64 %i.ad, %i.ac
  %diff.check = icmp ugt i64 %i.ae, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.critedge, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.critedge ] ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <4 x i32>, ptr %i.af, align 4, !tbaa !28
  %wide.load30 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !28
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <4 x i32> %wide.load, ptr %i.ah, align 4, !tbaa !28
  store <4 x i32> %wide.load30, ptr %i.ai, align 4, !tbaa !28
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.critedge, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.critedge ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.prol
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !28
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.prol
  store i32 %i.al, ptr %i.am, align 4, !tbaa !28
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !78

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.an = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !28
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next
  %i.at = load i32, ptr %i.as, align 4, !tbaa !28
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next
  store i32 %i.at, ptr %i.au, align 4, !tbaa !28
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.1
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !28
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next.1
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !28
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.2
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !28
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next.2
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !28
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !79

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bb = add nuw nsw i32 %.01726, 1              ; 2 uses
  %.val19 = load i32, ptr %i.a, align 8, !tbaa !29
  %i.bc = icmp slt i32 %i.bb, %.val19
  br i1 %i.bc, label %.critedge, label %._crit_edge27.split, !llvm.loop !80

._crit_edge27.split:                              ; preds = %._crit_edge, %.critedge.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Saig_SynchCountX(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = shl nsw i32 %2, 4                        ; 2 uses
  %i.b = sext i32 %i.a to i64
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 4) #21 ; 22 uses
  %i.d = getelementptr i8, ptr %0, i64 104
  %.val46 = load i32, ptr %i.d, align 8, !tbaa !29 ; 4 uses
  %i.e = icmp sgt i32 %.val46, 0
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.g = icmp sgt i32 %2, 0
  br i1 %i.g, label %.preheader.lr.ph.preheader, label %.critedge.thread

.critedge.thread:                                 ; preds = %.lr.ph
  %i.h = add nuw nsw i32 %.val46, 1
  br label %._crit_edge66

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val44 = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.l = getelementptr i8, ptr %0, i64 112
  %.val47 = load i32, ptr %i.l, align 8, !tbaa !58
  %i.m = sext i32 %.val47 to i64
  %wide.trip.count75 = zext nneg i32 %.val46 to i64
  %invariant.gep = getelementptr [8 x i8], ptr %.val44, i64 %i.m
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge
  %indvars.iv72 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next73, %._crit_edge ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv72
  %i.n = load ptr, ptr %gep, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !26
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.ag
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next, %bb.ag ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !28   ; 16 uses
  %i.v = shl nuw nsw i64 %indvars.iv, 4           ; 16 uses
  %i.w = and i32 %i.u, 3
  %i.x = icmp eq i32 %i.w, 3
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !28
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.b
  %i.ab = and i32 %i.u, 12
  %i.ac = icmp eq i32 %i.ab, 12
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !28
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ah = and i32 %i.u, 48
  %i.ai = icmp eq i32 %i.ah, 48
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !28
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.an = and i32 %i.u, 192
  %i.ao = icmp eq i32 %i.an, 192
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 12 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !28
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.at = and i32 %i.u, 768
  %i.au = icmp eq i32 %i.at, 768
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !28
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !28
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.az = and i32 %i.u, 3072
  %i.ba = icmp eq i32 %i.az, 3072
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 20 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !28
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !28
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bf = and i32 %i.u, 12288
  %i.bg = icmp eq i32 %i.bf, 12288
  br i1 %i.bg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !28
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !28
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bl = and i32 %i.u, 49152
  %i.bm = icmp eq i32 %i.bl, 49152
  br i1 %i.bm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 28 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !28
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !28
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.br = and i32 %i.u, 196608
  %i.bs = icmp eq i32 %i.br, 196608
  br i1 %i.bs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !28
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !28
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bx = and i32 %i.u, 786432
  %i.by = icmp eq i32 %i.bx, 786432
  br i1 %i.by, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 36 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !28
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !28
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cd = and i32 %i.u, 3145728
  %i.ce = icmp eq i32 %i.cd, 3145728
  br i1 %i.ce, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !28
  %i.ci = add nsw i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !28
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cj = and i32 %i.u, 12582912
  %i.ck = icmp eq i32 %i.cj, 12582912
  br i1 %i.ck, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 44 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !28
  %i.co = add nsw i32 %i.cn, 1
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !28
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cp = and i32 %i.u, 50331648
  %i.cq = icmp eq i32 %i.cp, 50331648
  br i1 %i.cq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 48 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !28
  %i.cu = add nsw i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !28
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cv = and i32 %i.u, 201326592
  %i.cw = icmp eq i32 %i.cv, 201326592
  br i1 %i.cw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 52 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !28
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !28
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.db = and i32 %i.u, 805306368
  %i.dc = icmp eq i32 %i.db, 805306368
  br i1 %i.dc, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 56 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !28
  %i.dg = add nsw i32 %i.df, 1
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !28
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dh = icmp ugt i32 %i.u, -1073741825
  br i1 %i.dh, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 60 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !28
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !28
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !81

._crit_edge:                                      ; preds = %bb.ag
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count75
  br i1 %exitcond76.not, label %.critedge, label %.preheader.lr.ph, !llvm.loop !82

.critedge:                                        ; preds = %._crit_edge, %bb.a
  %i.dm = add nsw i32 %.val46, 1                  ; 2 uses
  %i.dn = icmp sgt i32 %2, 0
  br i1 %i.dn, label %.lr.ph65.preheader, label %._crit_edge66

.lr.ph65.preheader:                               ; preds = %.critedge
  %wide.trip.count80 = zext nneg i32 %i.a to i64
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %bb.al, %.lr.ph65.preheader
  %indvars.iv77 = phi i64 [ 0, %.lr.ph65.preheader ], [ %indvars.iv.next78.3, %bb.al ] ; 6 uses
  %.064 = phi i32 [ %i.dm, %.lr.ph65.preheader ], [ %.1.3, %bb.al ] ; 2 uses
  %.03563 = phi i32 [ -1, %.lr.ph65.preheader ], [ %.136.3, %bb.al ]
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv77
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !28 ; 3 uses
  %i.dq = icmp sgt i32 %.064, %i.dp
  br i1 %i.dq, label %bb.ah, label %.lr.ph65.1

bb.ah:                                            ; preds = %.lr.ph65
  %i.dr = icmp eq i32 %i.dp, 0
  %i.ds = trunc nuw nsw i64 %indvars.iv77 to i32  ; 2 uses
  br i1 %i.dr, label %.thread, label %.lr.ph65.1

.lr.ph65.1:                                       ; preds = %.lr.ph65, %bb.ah
  %.136 = phi i32 [ %i.ds, %bb.ah ], [ %.03563, %.lr.ph65 ]
  %.1 = phi i32 [ %i.dp, %bb.ah ], [ %.064, %.lr.ph65 ] ; 2 uses
  %indvars.iv.next78 = or disjoint i64 %indvars.iv77, 1 ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next78
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !28 ; 3 uses
  %i.dv = icmp sgt i32 %.1, %i.du
  br i1 %i.dv, label %bb.ai, label %.lr.ph65.2

bb.ai:                                            ; preds = %.lr.ph65.1
  %i.dw = icmp eq i32 %i.du, 0
  %i.dx = trunc nuw nsw i64 %indvars.iv.next78 to i32 ; 2 uses
  br i1 %i.dw, label %.thread, label %.lr.ph65.2

.lr.ph65.2:                                       ; preds = %bb.ai, %.lr.ph65.1
  %.136.1 = phi i32 [ %i.dx, %bb.ai ], [ %.136, %.lr.ph65.1 ]
  %.1.1 = phi i32 [ %i.du, %bb.ai ], [ %.1, %.lr.ph65.1 ] ; 2 uses
  %indvars.iv.next78.1 = or disjoint i64 %indvars.iv77, 2 ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next78.1
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !28 ; 3 uses
  %i.ea = icmp sgt i32 %.1.1, %i.dz
  br i1 %i.ea, label %bb.aj, label %.lr.ph65.3

bb.aj:                                            ; preds = %.lr.ph65.2
  %i.eb = icmp eq i32 %i.dz, 0
  %i.ec = trunc nuw nsw i64 %indvars.iv.next78.1 to i32 ; 2 uses
  br i1 %i.eb, label %.thread, label %.lr.ph65.3

.lr.ph65.3:                                       ; preds = %bb.aj, %.lr.ph65.2
  %.136.2 = phi i32 [ %i.ec, %bb.aj ], [ %.136.1, %.lr.ph65.2 ]
  %.1.2 = phi i32 [ %i.dz, %bb.aj ], [ %.1.1, %.lr.ph65.2 ] ; 2 uses
  %indvars.iv.next78.2 = or disjoint i64 %indvars.iv77, 3 ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next78.2
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !28 ; 3 uses
  %i.ef = icmp sgt i32 %.1.2, %i.ee
  br i1 %i.ef, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph65.3
  %i.eg = icmp eq i32 %i.ee, 0
  %i.eh = trunc nuw nsw i64 %indvars.iv.next78.2 to i32 ; 2 uses
  br i1 %i.eg, label %.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph65.3
  %.136.3 = phi i32 [ %i.eh, %bb.ak ], [ %.136.2, %.lr.ph65.3 ] ; 2 uses
  %.1.3 = phi i32 [ %i.ee, %bb.ak ], [ %.1.2, %.lr.ph65.3 ] ; 2 uses
  %indvars.iv.next78.3 = add nuw nsw i64 %indvars.iv77, 4 ; 2 uses
  %exitcond81.not.3 = icmp eq i64 %indvars.iv.next78.3, %wide.trip.count80
  br i1 %exitcond81.not.3, label %.thread, label %.lr.ph65, !llvm.loop !83

._crit_edge66:                                    ; preds = %.critedge.thread, %.critedge
  %.0.lcssa = phi i32 [ %i.dm, %.critedge ], [ %i.h, %.critedge.thread ] ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.am, label %.thread

.thread:                                          ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %._crit_edge66
  %.253 = phi i32 [ %.0.lcssa, %._crit_edge66 ], [ %.1.3, %bb.al ], [ 0, %bb.ah ], [ 0, %bb.ai ], [ 0, %bb.ak ], [ 0, %bb.aj ]
  %.23751 = phi i32 [ -1, %._crit_edge66 ], [ %.136.3, %bb.al ], [ %i.ds, %bb.ah ], [ %i.dx, %bb.ai ], [ %i.eh, %bb.ak ], [ %i.ec, %bb.aj ]
  tail call void @free(ptr noundef nonnull %i.c) #20
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge66, %.thread
  %.254 = phi i32 [ %.0.lcssa, %._crit_edge66 ], [ %.253, %.thread ]
  %.23752 = phi i32 [ -1, %._crit_edge66 ], [ %.23751, %.thread ]
  store i32 %.23752, ptr %3, align 4, !tbaa !28
  ret i32 %.254
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Saig_SynchSavePattern(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 108        ; 3 uses
  %.val4247 = load i32, ptr %i.a, align 4, !tbaa !31
  %i.b = icmp sgt i32 %.val4247, 0
  br i1 %i.b, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = ashr i32 %3, 4
  %i.f = sext i32 %i.e to i64
  %i.g = shl i32 %3, 1
  %i.h = and i32 %i.g, 30
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  br label %bb.b

.critedge.preheader:                              ; preds = %Vec_StrPush.exit, %bb.a
  %i.k = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %.val4151 = load i32, ptr %i.k, align 8, !tbaa !29 ; 4 uses
  %i.l = icmp sgt i32 %.val4151, 0
  br i1 %i.l, label %.critedge2.lr.ph, label %.critedge._crit_edge

.critedge2.lr.ph:                                 ; preds = %.critedge.preheader
  %i.m = getelementptr i8, ptr %0, i64 24
  %.val43 = load ptr, ptr %i.m, align 8, !tbaa !57
  %i.n = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %i.o = getelementptr i8, ptr %.val43, i64 8
  %.val43.val = load ptr, ptr %i.o, align 8, !tbaa !8 ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 16
  %.val45 = load ptr, ptr %i.p, align 8, !tbaa !30
  %i.q = getelementptr i8, ptr %.val45, i64 8
  %.val45.val = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.r = getelementptr i8, ptr %1, i64 8
  %.val38 = load ptr, ptr %i.r, align 8, !tbaa !8 ; 5 uses
  %i.s = ashr i32 %3, 4
  %i.t = sext i32 %i.s to i64                     ; 4 uses
  %i.u = shl i32 %3, 1
  %i.v = and i32 %i.u, 30                         ; 4 uses
  %i.w = icmp sgt i32 %2, 0
  br i1 %i.w, label %.critedge2.us.preheader, label %.critedge2.lr.ph.split

.critedge2.us.preheader:                          ; preds = %.critedge2.lr.ph
  %wide.trip.count63 = zext nneg i32 %2 to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %2, 8
  %n.vec = and i64 %wide.trip.count63, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count63
  br label %.critedge2.us

.critedge2.us:                                    ; preds = %.critedge2.us.preheader, %._crit_edge.us
  %.153.us = phi i32 [ %i.bd, %._crit_edge.us ], [ 0, %.critedge2.us.preheader ] ; 3 uses
  %.03752.us = phi i32 [ %i.bc, %._crit_edge.us ], [ 0, %.critedge2.us.preheader ]
  %.val44.us = load i32, ptr %i.n, align 8, !tbaa !58
  %i.x = add nsw i32 %.val44.us, %.153.us
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %.val43.val, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !27
  %.val46.us = load i32, ptr %i.a, align 4, !tbaa !31
  %i.ab = add nsw i32 %.val46.us, %.153.us
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %.val45.val, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !26
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %.val38, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !27
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.t
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !28
  %i.am = lshr i32 %i.al, %i.v
  %i.an = and i32 %i.am, 3                        ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 36
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !26
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %.val38, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !27 ; 2 uses
  %.not.i.us = icmp eq i32 %i.an, 0
  %i.at = icmp eq i32 %i.an, 1
  %i.au = select i1 %i.at, i32 1431655765, i32 -1
  %i.av = select i1 %.not.i.us, i32 0, i32 %i.au  ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.critedge2.us
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body
end_hunk_0
