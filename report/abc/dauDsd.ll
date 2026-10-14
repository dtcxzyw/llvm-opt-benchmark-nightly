Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/dauDsd?download=true
inline.NumInlined: 326
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 67
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 96
begin_hunk_0_@Dau_DsdTruthCompose_rec:bb.a
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i43
  %i.n = load i64, ptr %i.m, align 8, !tbaa !45
  %.not.i44 = icmp eq i64 %i.n, -1
  br i1 %.not.i44, label %bb.c, label %.preheader.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = icmp sgt i32 %4, 0
  br i1 %i.o, label %.lr.ph.preheader.i47, label %Abc_TtConst0.exit

.lr.ph.preheader.i47:                             ; preds = %bb.d
  %i.p = zext nneg i32 %4 to i64
  %i.q = shl nuw nsw i64 %i.p, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %2, i8 -1, i64 %i.q, i1 false), !tbaa !45
  br label %Abc_TtConst0.exit

.preheader.lr.ph.i:                               ; preds = %.lr.ph.i42
  %i.r = add nsw i32 %.tr6880, -1                 ; 4 uses
  %i.s = add nsw i32 %.tr6880, -7                 ; 3 uses
  %i.t = sext i32 %i.g to i64
  %.idx.i = shl nsw i64 %i.t, 3
  %i.u = getelementptr inbounds i8, ptr %0, i64 %.idx.i
  %.not47.i = icmp eq i32 %i.s, 31
  %i.v = shl i32 2, %i.s
  %i.w = sext i32 %i.v to i64
  br i1 %.not47.i, label %tailrecurse, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.x = shl nuw i32 1, %i.s                      ; 2 uses
  %i.y = sext i32 %i.x to i64
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.x, i32 1)
  %wide.trip.count.i49 = zext nneg i32 %smax.i to i64
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.03343.us.i = phi ptr [ %i.ac, %._crit_edge.us.i ], [ %0, %.preheader.us.preheader.i ] ; 3 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.03343.us.i, i64 %i.y
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next.i51 = add nuw nsw i64 %indvars.iv.i50, 1 ; 2 uses
  %exitcond.not.i52 = icmp eq i64 %indvars.iv.next.i51, %wide.trip.count.i49
  br i1 %exitcond.not.i52, label %._crit_edge.us.i, label %bb.f, !llvm.loop !9

bb.f:                                             ; preds = %bb.e, %.preheader.us.i
  %indvars.iv.i50 = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i51, %bb.e ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i, i64 %indvars.iv.i50
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !45
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i50
  %i.ab = load i64, ptr %gep.i, align 8, !tbaa !45
  %.not.us.i = icmp eq i64 %i.aa, %i.ab
  br i1 %.not.us.i, label %bb.e, label %Abc_TtHasVar.exit

._crit_edge.us.i:                                 ; preds = %bb.e
  %i.ac = getelementptr inbounds [8 x i8], ptr %.03343.us.i, i64 %i.w ; 2 uses
  %i.ad = icmp ult ptr %i.ac, %i.u
  br i1 %i.ad, label %.preheader.us.i, label %tailrecurse, !llvm.loop !10

tailrecurse:                                      ; preds = %._crit_edge.us.i, %.preheader.lr.ph.i
  %i.ae = icmp slt i32 %.tr6880, 8
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ae, label %tailrecurse._crit_edge, label %.lr.ph

Abc_TtHasVar.exit:                                ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  call void @Dau_DsdTruthCompose_rec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.c, i32 noundef %i.r, i32 noundef %4)
  %i.af = sdiv i32 %i.g, 2
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 512 ; 5 uses
  call void @Dau_DsdTruthCompose_rec(ptr noundef %i.ah, ptr noundef %1, ptr noundef nonnull %i.ai, i32 noundef %i.r, i32 noundef %4)
  %i.aj = zext nneg i32 %i.r to i64
  %i.ak = getelementptr inbounds nuw [512 x i8], ptr %1, i64 %i.aj ; 4 uses
  %i.al = icmp sgt i32 %4, 0
  br i1 %i.al, label %.lr.ph.preheader.i54, label %Abc_TtMux.exit

.lr.ph.preheader.i54:                             ; preds = %Abc_TtHasVar.exit
  %wide.trip.count.i55 = zext nneg i32 %4 to i64  ; 5 uses
  %min.iters.check = icmp ult i32 %4, 8
  br i1 %min.iters.check, label %.lr.ph.i56.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i54
  %i.am = add nsw i32 %3, -1
  %i.an = zext i32 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 9
  %i.ap = add i64 %i.ao, %i.a
  %i.aq = sub i64 %i.b, %i.ap
  %i.ar = shl nuw nsw i64 %indvar, 9
  %i.as = add i64 %i.ar, %i.aq
  %i.at = add i64 %i.as, -1
  %diff.check = icmp ult i64 %i.at, 31
  br i1 %diff.check, label %.lr.ph.i56.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i55, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <2 x i64>, ptr %i.au, align 8, !tbaa !45 ; 2 uses
  %wide.load106 = load <2 x i64>, ptr %i.av, align 8, !tbaa !45 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load107 = load <2 x i64>, ptr %i.aw, align 16, !tbaa !45
  %wide.load108 = load <2 x i64>, ptr %i.ax, align 16, !tbaa !45
  %i.ay = and <2 x i64> %wide.load107, %wide.load
  %i.az = and <2 x i64> %wide.load108, %wide.load106
  %i.ba = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.bb = xor <2 x i64> %wide.load106, splat (i64 -1)
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load109 = load <2 x i64>, ptr %i.bc, align 16, !tbaa !45
  %wide.load110 = load <2 x i64>, ptr %i.bd, align 16, !tbaa !45
  %i.be = and <2 x i64> %wide.load109, %i.ba
  %i.bf = and <2 x i64> %wide.load110, %i.bb
  %i.bg = or <2 x i64> %i.be, %i.ay
  %i.bh = or <2 x i64> %i.bf, %i.az
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store <2 x i64> %i.bg, ptr %i.bi, align 8, !tbaa !45
  store <2 x i64> %i.bh, ptr %i.bj, align 8, !tbaa !45
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i55
  br i1 %cmp.n, label %Abc_TtMux.exit, label %.lr.ph.i56.preheader

.lr.ph.i56.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i54, %middle.block
  %indvars.iv.i57.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i54 ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count.i55, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i56.prol.loopexit, label %.lr.ph.i56.prol

.lr.ph.i56.prol:                                  ; preds = %.lr.ph.i56.preheader
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i57.ph
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !45 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i57.ph
  %i.bo = load i64, ptr %i.bn, align 16, !tbaa !45
  %i.bp = and i64 %i.bo, %i.bm
  %i.bq = xor i64 %i.bm, -1
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i57.ph
  %i.bs = load i64, ptr %i.br, align 16, !tbaa !45
  %i.bt = and i64 %i.bs, %i.bq
  %i.bu = or i64 %i.bt, %i.bp
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i57.ph
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !45
  %indvars.iv.next.i58.prol = or disjoint i64 %indvars.iv.i57.ph, 1
  br label %.lr.ph.i56.prol.loopexit

.lr.ph.i56.prol.loopexit:                         ; preds = %.lr.ph.i56.prol, %.lr.ph.i56.preheader
  %indvars.iv.i57.unr = phi i64 [ %indvars.iv.i57.ph, %.lr.ph.i56.preheader ], [ %indvars.iv.next.i58.prol, %.lr.ph.i56.prol ]
  %i.bw = add nsw i64 %wide.trip.count.i55, -1
  %i.bx = icmp eq i64 %indvars.iv.i57.ph, %i.bw
  br i1 %i.bx, label %Abc_TtMux.exit, label %.lr.ph.i56

.lr.ph.i56:                                       ; preds = %.lr.ph.i56.prol.loopexit, %.lr.ph.i56
  %indvars.iv.i57 = phi i64 [ %indvars.iv.next.i58.1, %.lr.ph.i56 ], [ %indvars.iv.i57.unr, %.lr.ph.i56.prol.loopexit ] ; 6 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i57
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !45 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i57
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !45
  %i.cc = and i64 %i.cb, %i.bz
  %i.cd = xor i64 %i.bz, -1
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i57
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !45
  %i.cg = and i64 %i.cf, %i.cd
  %i.ch = or i64 %i.cg, %i.cc
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i57
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !45
  %indvars.iv.next.i58 = add nuw nsw i64 %indvars.iv.i57, 1 ; 4 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.i58
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !45 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next.i58
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !45
  %i.cn = and i64 %i.cm, %i.ck
  %i.co = xor i64 %i.ck, -1
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i58
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !45
  %i.cr = and i64 %i.cq, %i.co
  %i.cs = or i64 %i.cr, %i.cn
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i58
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !45
  %indvars.iv.next.i58.1 = add nuw nsw i64 %indvars.iv.i57, 2 ; 2 uses
  %exitcond.not.i59.1 = icmp eq i64 %indvars.iv.next.i58.1, %wide.trip.count.i55
  br i1 %exitcond.not.i59.1, label %Abc_TtMux.exit, label %.lr.ph.i56, !llvm.loop !97

Abc_TtMux.exit:                                   ; preds = %.lr.ph.i56.prol.loopexit, %.lr.ph.i56, %middle.block, %Abc_TtHasVar.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %Abc_TtConst0.exit

Abc_TtConst0.exit:                                ; preds = %.lr.ph.preheader.i47, %bb.d, %.lr.ph.preheader.i38, %.loopexit70, %Abc_TtMux.exit, %tailrecurse._crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Dau_DsdToTruth_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #7 {
bb.a:
  %6 = ptrtoaddr ptr %4 to i64                    ; 2 uses
  %i.a = alloca [64 x i64], align 16              ; 7 uses
  %i.b = alloca [64 x i64], align 16              ; 7 uses
  %i.c = alloca [3 x [64 x i64]], align 16        ; 13 uses
  %i.d = alloca [12 x [64 x i64]], align 16       ; 4 uses
  %i.e = alloca [64 x i64], align 16              ; 4 uses
  %i.f = icmp slt i32 %5, 7
  %i.g = add nsw i32 %5, -6
  %i.h = shl nuw i32 1, %i.g
  %i.i = select i1 %i.f, i32 1, i32 %i.h          ; 40 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !43     ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !36    ; 4 uses
  %.not.not.not.not = icmp eq i8 %i.k, 33         ; 5 uses
  br i1 %.not.not.not.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 3 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !43
  %.pre = load i8, ptr %i.l, align 1, !tbaa !36   ; 3 uses
  %i.m = add i8 %.pre, -97
  %or.cond = icmp ult i8 %i.m, 26
  br i1 %or.cond, label %.preheader14.i, label %bb.c

.thread:                                          ; preds = %bb.a
  %i.n = add i8 %i.k, -97
  %or.cond193 = icmp ult i8 %i.n, 26
  br i1 %or.cond193, label %.thread195, label %bb.c

.thread195:                                       ; preds = %.thread
  %i.o = zext nneg i8 %i.k to i64
  %i.p = getelementptr [8 x i8], ptr %3, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -776
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !48   ; 7 uses
  %i.s = icmp sgt i32 %i.i, 0
  br i1 %i.s, label %.lr.ph18.preheader.i, label %Abc_TtCopy.exit

.preheader14.i:                                   ; preds = %bb.b
  %i.t = zext nneg i8 %.pre to i64
  %i.u = getelementptr [8 x i8], ptr %3, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -776
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !48   ; 7 uses
  %i.x = icmp sgt i32 %i.i, 0
  br i1 %i.x, label %.lr.ph.preheader.i, label %Abc_TtCopy.exit

.lr.ph.preheader.i:                               ; preds = %.preheader14.i
  %7 = ptrtoaddr ptr %i.w to i64
  %wide.trip.count.i = zext nneg i32 %i.i to i64  ; 3 uses
  %min.iters.check295 = icmp ult i32 %i.i, 6
  %i.y = sub i64 %7, %6
  %diff.check293 = icmp ugt i64 %i.y, -32
  %or.cond306 = select i1 %min.iters.check295, i1 true, i1 %diff.check293
  br i1 %or.cond306, label %.lr.ph.i.preheader, label %vector.ph296

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i
  %xtraiter322 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.z = icmp ult i32 %i.i, 4
  br i1 %i.z, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter326 = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

vector.ph296:                                     ; preds = %.lr.ph.preheader.i
  %n.vec297 = and i64 %wide.trip.count.i, 2147483644
  br label %vector.body298

vector.body298:                                   ; preds = %vector.body298, %vector.ph296
  %index299 = phi i64 [ 0, %vector.ph296 ], [ %index.next302, %vector.body298 ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index299 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load300 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !45
  %wide.load301 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !45
  %i.ac = xor <2 x i64> %wide.load300, splat (i64 -1)
  %i.ad = xor <2 x i64> %wide.load301, splat (i64 -1)
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index299 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <2 x i64> %i.ac, ptr %i.ae, align 8, !tbaa !45
  store <2 x i64> %i.ad, ptr %i.af, align 8, !tbaa !45
  %index.next302 = add nuw i64 %index299, 4       ; 2 uses
  %i.ag = icmp eq i64 %index.next302, %n.vec297
  br i1 %i.ag, label %Abc_TtCopy.exit, label %vector.body298, !llvm.loop !98

.lr.ph18.preheader.i:                             ; preds = %.thread195
  %8 = ptrtoaddr ptr %i.r to i64
  %wide.trip.count24.i = zext nneg i32 %i.i to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.i, 8
  %i.ah = sub i64 %8, %6
  %diff.check = icmp ugt i64 %i.ah, -32
  %or.cond307 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond307, label %.lr.ph18.i.preheader, label %vector.ph

.lr.ph18.i.preheader:                             ; preds = %.lr.ph18.preheader.i
  %xtraiter = and i64 %wide.trip.count24.i, 3     ; 3 uses
  %i.ai = icmp ult i32 %i.i, 4
  br i1 %i.ai, label %.lr.ph18.i.epil.preheader, label %.lr.ph18.i.preheader.new

.lr.ph18.i.preheader.new:                         ; preds = %.lr.ph18.i.preheader
  %unroll_iter = and i64 %wide.trip.count24.i, 2147483644
  br label %.lr.ph18.i

vector.ph:                                        ; preds = %.lr.ph18.preheader.i
  %n.vec = and i64 %wide.trip.count24.i, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <2 x i64>, ptr %i.aj, align 8, !tbaa !45
  %wide.load199 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !45
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x i64> %wide.load, ptr %i.al, align 8, !tbaa !45
  store <2 x i64> %wide.load199, ptr %i.am, align 8, !tbaa !45
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %Abc_TtCopy.exit, label %vector.body, !llvm.loop !99

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 6 uses
  %niter327 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter327.next.3, %.lr.ph.i ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !45
  %i.aq = xor i64 %i.ap, -1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !45
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.i
  %i.at = load i64, ptr %i.as, align 8, !tbaa !45
  %i.au = xor i64 %i.at, -1
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.i
  store i64 %i.au, ptr %i.av, align 8, !tbaa !45
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.i.1
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !45
  %i.ay = xor i64 %i.ax, -1
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.i.1
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !45
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.i.2
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !45
  %i.bc = xor i64 %i.bb, -1
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.i.2
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !45
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter327.next.3 = add i64 %niter327, 4         ; 2 uses
  %niter327.ncmp.3 = icmp eq i64 %niter327.next.3, %unroll_iter326
  br i1 %niter327.ncmp.3, label %Abc_TtCopy.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !100

.lr.ph18.i:                                       ; preds = %.lr.ph18.i, %.lr.ph18.i.preheader.new
  %indvars.iv21.i = phi i64 [ 0, %.lr.ph18.i.preheader.new ], [ %indvars.iv.next22.i.3, %.lr.ph18.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph18.i.preheader.new ], [ %niter.next.3, %.lr.ph18.i ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv21.i
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !45
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv21.i
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !45
  %indvars.iv.next22.i = or disjoint i64 %indvars.iv21.i, 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next22.i
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !45
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next22.i
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !45
  %indvars.iv.next22.i.1 = or disjoint i64 %indvars.iv21.i, 2 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next22.i.1
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !45
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next22.i.1
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !45
  %indvars.iv.next22.i.2 = or disjoint i64 %indvars.iv21.i, 3 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next22.i.2
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !45
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next22.i.2
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !45
  %indvars.iv.next22.i.3 = add nuw nsw i64 %indvars.iv21.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %Abc_TtCopy.exit.loopexit319.unr-lcssa, label %.lr.ph18.i, !llvm.loop !101

bb.c:                                             ; preds = %.thread, %bb.b
  %.pn109174194 = phi ptr [ %i.j, %.thread ], [ %i.l, %bb.b ] ; 8 uses
  %i.bq = phi i8 [ %i.k, %.thread ], [ %.pre, %bb.b ] ; 3 uses
  switch i8 %i.bq, label %bb.i [
    i8 40, label %bb.d
    i8 91, label %bb.f
    i8 60, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.br = ptrtoint ptr %.pn109174194 to i64
  %i.bs = ptrtoint ptr %0 to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !37
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr %0, i64 %i.bw ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.by = icmp sgt i32 %i.i, 0                    ; 3 uses
  br i1 %i.by, label %.lr.ph.preheader.i112, label %Abc_TtConst1.exit

.lr.ph.preheader.i112:                            ; preds = %bb.d
  %i.bz = zext nneg i32 %i.i to i64
  %i.ca = shl nuw nsw i64 %i.bz, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, i8 -1, i64 %i.ca, i1 false), !tbaa !45
  br label %Abc_TtConst1.exit

Abc_TtConst1.exit:                                ; preds = %bb.d, %.lr.ph.preheader.i112
  %storemerge108175 = getelementptr inbounds nuw i8, ptr %.pn109174194, i64 1 ; 2 uses
  store ptr %storemerge108175, ptr %1, align 8, !tbaa !43
  %i.cb = icmp ult ptr %storemerge108175, %i.bx
  br i1 %i.cb, label %.lr.ph176, label %._crit_edge177

.lr.ph176:                                        ; preds = %Abc_TtConst1.exit
  %min.iters.check255 = icmp ult i32 %i.i, 4
  %i.cc = and i32 %i.i, 2147483644
  %n.vec257 = zext nneg i32 %i.cc to i64
  %exitcond.not.i118 = icmp eq i32 %i.i, 1
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %exitcond.not.i118.1 = icmp eq i32 %i.i, 2
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph176, %Abc_TtAnd.exit
  call void @Dau_DsdToTruth_rec(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.a, i32 noundef %5)
  br i1 %i.by, label %.lr.ph.i115.preheader, label %Abc_TtAnd.exit

.lr.ph.i115.preheader:                            ; preds = %bb.e
  br i1 %min.iters.check255, label %.lr.ph.i115, label %vector.body258

vector.body258:                                   ; preds = %.lr.ph.i115.preheader, %vector.body258
  %index259 = phi i64 [ %index.next264, %vector.body258 ], [ 0, %.lr.ph.i115.preheader ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index259 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %wide.load260 = load <2 x i64>, ptr %i.ch, align 8, !tbaa !45
  %wide.load261 = load <2 x i64>, ptr %i.ci, align 8, !tbaa !45
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index259 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load262 = load <2 x i64>, ptr %i.cj, align 16, !tbaa !45
  %wide.load263 = load <2 x i64>, ptr %i.ck, align 16, !tbaa !45
  %i.cl = and <2 x i64> %wide.load262, %wide.load260
  %i.cm = and <2 x i64> %wide.load263, %wide.load261
  store <2 x i64> %i.cl, ptr %i.ch, align 8, !tbaa !45
  store <2 x i64> %i.cm, ptr %i.ci, align 8, !tbaa !45
  %index.next264 = add nuw i64 %index259, 4       ; 2 uses
  %i.cn = icmp eq i64 %index.next264, %n.vec257
  br i1 %i.cn, label %Abc_TtAnd.exit, label %vector.body258, !llvm.loop !102

.lr.ph.i115:                                      ; preds = %.lr.ph.i115.preheader
  %i.co = load i64, ptr %4, align 8, !tbaa !45
  %i.cp = load i64, ptr %i.a, align 16, !tbaa !45
  %i.cq = and i64 %i.cp, %i.co
  store i64 %i.cq, ptr %4, align 8, !tbaa !45
  br i1 %exitcond.not.i118, label %Abc_TtAnd.exit, label %.lr.ph.i115.1

.lr.ph.i115.1:                                    ; preds = %.lr.ph.i115
  %i.cr = load i64, ptr %i.cd, align 8, !tbaa !45
  %i.cs = load i64, ptr %i.ce, align 8, !tbaa !45
  %i.ct = and i64 %i.cs, %i.cr
  store i64 %i.ct, ptr %i.cd, align 8, !tbaa !45
  br i1 %exitcond.not.i118.1, label %Abc_TtAnd.exit, label %.lr.ph.i115.2

.lr.ph.i115.2:                                    ; preds = %.lr.ph.i115.1
  %i.cu = load i64, ptr %i.cf, align 8, !tbaa !45
  %i.cv = load i64, ptr %i.cg, align 16, !tbaa !45
  %i.cw = and i64 %i.cv, %i.cu
  store i64 %i.cw, ptr %i.cf, align 8, !tbaa !45
  br label %Abc_TtAnd.exit

Abc_TtAnd.exit:                                   ; preds = %vector.body258, %.lr.ph.i115, %.lr.ph.i115.1, %.lr.ph.i115.2, %bb.e
  %.pn109 = load ptr, ptr %1, align 8, !tbaa !43
  %storemerge108 = getelementptr inbounds nuw i8, ptr %.pn109, i64 1 ; 2 uses
  store ptr %storemerge108, ptr %1, align 8, !tbaa !43
  %i.cx = icmp ult ptr %storemerge108, %i.bx
  br i1 %i.cx, label %bb.e, label %._crit_edge177, !llvm.loop !103

._crit_edge177:                                   ; preds = %Abc_TtAnd.exit, %Abc_TtConst1.exit
  %brmerge.not = and i1 %i.by, %.not.not.not.not
  br i1 %brmerge.not, label %.lr.ph.preheader.i119, label %Abc_TtNot.exit

.lr.ph.preheader.i119:                            ; preds = %._crit_edge177
  %min.iters.check269 = icmp ult i32 %i.i, 4
  br i1 %min.iters.check269, label %.lr.ph.i121, label %vector.ph270

vector.ph270:                                     ; preds = %.lr.ph.preheader.i119
  %i.cy = and i32 %i.i, 2147483644
  %n.vec271 = zext nneg i32 %i.cy to i64
  br label %vector.body272

end_hunk_0
begin_hunk_1_@Dau_DsdPerform_rec:bb.a
  %exitcond443.not = icmp eq i64 %indvars.iv.next440, %wide.trip.count442
  br i1 %exitcond443.not, label %._crit_edge353.loopexit, label %.preheader.us, !llvm.loop !120

._crit_edge348.us:                                ; preds = %bb.s
  %i.ec = icmp sgt i32 %.0246352.us, %.1.us
  %i.ed = trunc nuw nsw i64 %indvars.iv439 to i32
  %spec.select274.us = select i1 %i.ec, i32 %i.ed, i32 %.0248351.us ; 2 uses
  %i.ee = icmp eq i32 %.1.us, 0
  br i1 %i.ee, label %._crit_edge353.loopexit, label %bb.t

.lr.ph344:                                        ; preds = %.lr.ph344.preheader, %.loopexit
  %indvars.iv429 = phi i64 [ 0, %.lr.ph344.preheader ], [ %indvars.iv.next430, %.loopexit ] ; 8 uses
  %indvars.iv422 = phi i64 [ 1, %.lr.ph344.preheader ], [ %indvars.iv.next423, %.loopexit ] ; 2 uses
  %indvars.iv.next430 = add nuw nsw i64 %indvars.iv429, 1 ; 3 uses
  %i.ef = icmp samesign ult i64 %indvars.iv.next430, %i.am
  br i1 %i.ef, label %.lr.ph342, label %.loopexit

.lr.ph342:                                        ; preds = %.lr.ph344
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv429
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !45 ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv429
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !45 ; 2 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.ad
  %indvars.iv.next425 = add nuw nsw i64 %indvars.iv424, 1 ; 2 uses
  %exitcond428.not = icmp eq i64 %indvars.iv.next425, %wide.trip.count432
  br i1 %exitcond428.not, label %.loopexit, label %bb.v, !llvm.loop !121

bb.v:                                             ; preds = %.lr.ph342, %bb.u
  %indvars.iv424 = phi i64 [ %indvars.iv422, %.lr.ph342 ], [ %indvars.iv.next425, %bb.u ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv424
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !37 ; 7 uses
  %i.em = sext i32 %i.el to i64                   ; 7 uses
  %i.en = getelementptr inbounds [8 x i8], ptr @s_Truths6Neg, i64 %i.em
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !45 ; 2 uses
  %i.ep = and i64 %i.eo, %i.eh                    ; 2 uses
  %i.eq = shl nuw i32 1, %i.el
  %i.er = zext nneg i32 %i.eq to i64              ; 4 uses
  %i.es = shl i64 %i.ep, %i.er
  %i.et = or i64 %i.es, %i.ep                     ; 8 uses
  %i.eu = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.em
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !45 ; 2 uses
  %i.ew = and i64 %i.ev, %i.eh                    ; 2 uses
  %i.ex = lshr i64 %i.ew, %i.er
  %i.ey = or i64 %i.ex, %i.ew                     ; 6 uses
  %i.ez = and i64 %i.ej, %i.eo                    ; 2 uses
  %i.fa = shl i64 %i.ez, %i.er
  %i.fb = or i64 %i.fa, %i.ez                     ; 3 uses
  %i.fc = and i64 %i.ej, %i.ev                    ; 2 uses
  %i.fd = lshr i64 %i.fc, %i.er
  %i.fe = or i64 %i.fd, %i.fc                     ; 3 uses
  %i.ff = icmp eq i64 %i.et, %i.ey                ; 2 uses
  %i.fg = icmp eq i64 %i.et, %i.fb                ; 2 uses
  %or.cond = select i1 %i.ff, i1 %i.fg, i1 false
  br i1 %or.cond, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fh = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.em
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv429
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !37
  %i.fk = add nsw i32 %i.fj, 97
  %i.fl = add nsw i32 %i.el, 97                   ; 2 uses
  %i.fm = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.fk, i32 noundef %i.fl) #31 ; 0 uses
  %i.fn = load i64, ptr %i.fh, align 8, !tbaa !45 ; 2 uses
  %i.fo = and i64 %i.fn, %i.fe
  %i.fp = xor i64 %i.fn, -1
  %i.fq = and i64 %i.et, %i.fp
  %i.fr = or i64 %i.fo, %i.fq
  %i.fs = call i32 @Dau_DsdPerform_rec(i64 noundef %i.fr, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.d, i32 noundef %.1256)
  %i.ft = call fastcc i32 @Dau_DsdPerformReplace(ptr noundef %1, i32 noundef %2, i32 noundef %i.fs, i32 noundef %i.fl, ptr noundef %i.a)
  br label %bb.af

bb.x:                                             ; preds = %bb.v
  %i.fu = icmp eq i64 %i.et, %i.fe                ; 3 uses
  %or.cond269 = select i1 %i.ff, i1 %i.fu, i1 false
  br i1 %or.cond269, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fv = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.em
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv429
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !37
  %i.fy = add nsw i32 %i.fx, 97
  %i.fz = add nsw i32 %i.el, 97                   ; 2 uses
  %i.ga = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.fy, i32 noundef %i.fz) #31 ; 0 uses
  %i.gb = load i64, ptr %i.fv, align 8, !tbaa !45 ; 2 uses
  %i.gc = and i64 %i.gb, %i.fb
  %i.gd = xor i64 %i.gb, -1
  %i.ge = and i64 %i.et, %i.gd
  %i.gf = or i64 %i.gc, %i.ge
  %i.gg = call i32 @Dau_DsdPerform_rec(i64 noundef %i.gf, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.d, i32 noundef %.1256)
  %i.gh = call fastcc i32 @Dau_DsdPerformReplace(ptr noundef %1, i32 noundef %2, i32 noundef %i.gg, i32 noundef %i.fz, ptr noundef %i.a)
  br label %bb.af

bb.z:                                             ; preds = %bb.x
  %or.cond270 = select i1 %i.fg, i1 %i.fu, i1 false
  br i1 %or.cond270, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gi = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.em
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv429
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !37
  %i.gl = add nsw i32 %i.gk, 97
  %i.gm = add nsw i32 %i.el, 97                   ; 2 uses
  %i.gn = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.gl, i32 noundef %i.gm) #31 ; 0 uses
  %i.go = load i64, ptr %i.gi, align 8, !tbaa !45 ; 2 uses
  %i.gp = and i64 %i.go, %i.ey
  %i.gq = xor i64 %i.go, -1
  %i.gr = and i64 %i.et, %i.gq
  %i.gs = or i64 %i.gp, %i.gr
  %i.gt = call i32 @Dau_DsdPerform_rec(i64 noundef %i.gs, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.d, i32 noundef %.1256)
  %i.gu = call fastcc i32 @Dau_DsdPerformReplace(ptr noundef %1, i32 noundef %2, i32 noundef %i.gt, i32 noundef %i.gm, ptr noundef %i.a)
  br label %bb.af

bb.ab:                                            ; preds = %bb.z
  %i.gv = icmp eq i64 %i.ey, %i.fb                ; 2 uses
  %i.gw = icmp eq i64 %i.ey, %i.fe
  %or.cond271 = select i1 %i.gv, i1 %i.gw, i1 false
  br i1 %or.cond271, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gx = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.em
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv429
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !37
  %i.ha = add nsw i32 %i.gz, 97
  %i.hb = add nsw i32 %i.el, 97                   ; 2 uses
  %i.hc = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.ha, i32 noundef %i.hb) #31 ; 0 uses
  %i.hd = load i64, ptr %i.gx, align 8, !tbaa !45 ; 2 uses
  %i.he = and i64 %i.hd, %i.et
  %i.hf = xor i64 %i.hd, -1
  %i.hg = and i64 %i.ey, %i.hf
  %i.hh = or i64 %i.he, %i.hg
  %i.hi = call i32 @Dau_DsdPerform_rec(i64 noundef %i.hh, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.d, i32 noundef %.1256)
  %i.hj = call fastcc i32 @Dau_DsdPerformReplace(ptr noundef %1, i32 noundef %2, i32 noundef %i.hi, i32 noundef %i.hb, ptr noundef %i.a)
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %brmerge.demorgan = and i1 %i.fu, %i.gv
  br i1 %brmerge.demorgan, label %bb.ae, label %bb.u

bb.ae:                                            ; preds = %bb.ad
  %i.hk = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.em
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv429
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !37
  %i.hn = add nsw i32 %i.hm, 97
  %i.ho = add nsw i32 %i.el, 97                   ; 2 uses
  %i.hp = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.hn, i32 noundef %i.ho) #31 ; 0 uses
  %i.hq = load i64, ptr %i.hk, align 8, !tbaa !45 ; 2 uses
  %i.hr = and i64 %i.hq, %i.ey
  %i.hs = xor i64 %i.hq, -1
  %i.ht = and i64 %i.et, %i.hs
  %i.hu = or i64 %i.hr, %i.ht
  %i.hv = call i32 @Dau_DsdPerform_rec(i64 noundef %i.hu, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.d, i32 noundef %.1256)
  %i.hw = call fastcc i32 @Dau_DsdPerformReplace(ptr noundef %1, i32 noundef %2, i32 noundef %i.hv, i32 noundef %i.ho, ptr noundef %i.a)
  br label %bb.af

._crit_edge353.loopexit:                          ; preds = %._crit_edge348.us, %bb.t
  %i.hx = sext i32 %spec.select274.us to i64
  br label %._crit_edge353

._crit_edge353:                                   ; preds = %bb.a, %.preheader281, %._crit_edge353.loopexit
  %.0255.lcssa451453455458 = phi i32 [ %.1256, %.preheader281 ], [ %.1256, %._crit_edge353.loopexit ], [ 0, %bb.a ] ; 2 uses
  %.2 = phi i64 [ -1, %.preheader281 ], [ %i.hx, %._crit_edge353.loopexit ], [ -1, %bb.a ] ; 3 uses
  %i.hy = sext i32 %2 to i64
  %i.hz = getelementptr inbounds i8, ptr %1, i64 %i.hy ; 2 uses
  store i8 60, ptr %i.hz, align 1, !tbaa !36
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.2
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !37
  %i.ic = trunc i32 %i.ib to i8
  %i.id = add i8 %i.ic, 97
  %i.ie = add nsw i32 %2, 2
  %i.if = getelementptr i8, ptr %i.hz, i64 1
  store i8 %i.id, ptr %i.if, align 1, !tbaa !36
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.2
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !45
  %i.ii = call i32 @Dau_DsdPerform_rec(i64 noundef %i.ih, ptr noundef %1, i32 noundef %i.ie, ptr noundef nonnull %i.d, i32 noundef %.0255.lcssa451453455458)
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.2
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !45
  %i.il = call i32 @Dau_DsdPerform_rec(i64 noundef %i.ik, ptr noundef %1, i32 noundef %i.ii, ptr noundef nonnull %i.d, i32 noundef %.0255.lcssa451453455458) ; 2 uses
  %i.im = add nsw i32 %i.il, 1
  %i.in = sext i32 %i.il to i64
  %i.io = getelementptr inbounds i8, ptr %1, i64 %i.in
  store i8 62, ptr %i.io, align 1, !tbaa !36
  br label %bb.af

bb.af:                                            ; preds = %bb.f, %._crit_edge353, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.o, %bb.m, %bb.l, %bb.j, %bb.i, %bb.g, %bb.e
  %.0257 = phi i32 [ %i.ab, %bb.e ], [ %i.ak, %bb.g ], [ %i.im, %._crit_edge353 ], [ %i.bl, %bb.i ], [ %i.bx, %bb.j ], [ %i.ci, %bb.l ], [ %i.cv, %bb.m ], [ %i.dh, %bb.o ], [ %i.ft, %bb.w ], [ %i.gh, %bb.y ], [ %i.gu, %bb.aa ], [ %i.hj, %bb.ac ], [ %i.hw, %bb.ae ], [ %2, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret i32 %.0257
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @Dau_DsdPerformReplace(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 -2147483551, -2147483648) %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #14 {
bb.a:
  %5 = ptrtoaddr ptr %0 to i64
  %i.a = icmp slt i32 %1, %2
  br i1 %i.a, label %.lr.ph37.preheader, label %._crit_edge

.lr.ph37.preheader:                               ; preds = %bb.a
  %i.b = sext i32 %1 to i64
  %wide.trip.count = sext i32 %2 to i64
  br label %.lr.ph37

.lr.ph37:                                         ; preds = %.lr.ph37.preheader, %.loopexit
  %indvars.iv43 = phi i64 [ %i.b, %.lr.ph37.preheader ], [ %indvars.iv.next44, %.loopexit ] ; 2 uses
  %.02735 = phi ptr [ @Dau_DsdPerformReplace.pTemp, %.lr.ph37.preheader ], [ %.2, %.loopexit ] ; 4 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 %indvars.iv43
  %i.d = load i8, ptr %i.c, align 1, !tbaa !36    ; 2 uses
  %i.e = sext i8 %i.d to i32
  %.not = icmp eq i32 %3, %i.e
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %.lr.ph37
  %i.f = load i8, ptr %4, align 1, !tbaa !36      ; 2 uses
  %.not3132 = icmp eq i8 %i.f, 0
  br i1 %.not3132, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph37
  %i.g = getelementptr inbounds nuw i8, ptr %.02735, i64 1
  store i8 %i.d, ptr %.02735, align 1, !tbaa !36
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ]
  %i.h = phi i8 [ %i.k, %.lr.ph ], [ %i.f, %.preheader ]
  %.12833 = phi ptr [ %i.i, %.lr.ph ], [ %.02735, %.preheader ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.12833, i64 1 ; 2 uses
  store i8 %i.h, ptr %.12833, align 1, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next
  %i.k = load i8, ptr %i.j, align 1, !tbaa !36    ; 2 uses
  %.not31 = icmp eq i8 %i.k, 0
  br i1 %.not31, label %.loopexit, label %.lr.ph, !llvm.loop !122

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.b
  %.2 = phi ptr [ %i.g, %bb.b ], [ %.02735, %.preheader ], [ %i.i, %.lr.ph ] ; 2 uses
  %indvars.iv.next44 = add nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next44, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph37, !llvm.loop !123

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.027.lcssa = phi ptr [ @Dau_DsdPerformReplace.pTemp, %bb.a ], [ %.2, %.loopexit ]
  %i.l = ptrtoint ptr %.027.lcssa to i64
  %i.m = trunc i64 %i.l to i32
  %i.n = sub i32 %i.m, ptrtoint (ptr @Dau_DsdPerformReplace.pTemp to i32)
  %i.o = add i32 %i.n, %1                         ; 3 uses
  %i.p = icmp slt i32 %1, %i.o
  br i1 %i.p, label %iter.check, label %._crit_edge42

iter.check:                                       ; preds = %._crit_edge
  %i.q = sext i32 %1 to i64                       ; 13 uses
  %wide.trip.count49 = sext i32 %i.o to i64       ; 4 uses
  %i.r = sub nsw i64 %wide.trip.count49, %i.q     ; 7 uses
  %min.iters.check = icmp ult i64 %i.r, 8
  br i1 %min.iters.check, label %.lr.ph41.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.s = add i64 %5, %i.q
  %i.t = add i64 %i.s, xor (i64 ptrtoaddr (ptr @Dau_DsdPerformReplace.pTemp to i64), i64 -1)
  %diff.check = icmp ult i64 %i.t, 31
  br i1 %diff.check, label %.lr.ph41.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check54 = icmp ult i64 %i.r, 32
  br i1 %min.iters.check54, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = and i64 %i.r, 24
  %n.vec = and i64 %i.r, -32                      ; 4 uses
  %i.v = add nsw i64 %n.vec, %i.q
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.q
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds i8, ptr @Dau_DsdPerformReplace.pTemp, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <16 x i8>, ptr %i.w, align 16, !tbaa !36
  %wide.load55 = load <16 x i8>, ptr %i.x, align 16, !tbaa !36
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %wide.load, ptr %gep, align 1, !tbaa !36
  store <16 x i8> %wide.load55, ptr %i.y, align 1, !tbaa !36
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %._crit_edge42, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %.lr.ph41.preheader, label %vec.epilog.ph, !prof !128

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec56 = and i64 %i.r, -8                     ; 3 uses
  %i.aa = add nsw i64 %n.vec56, %i.q
  %invariant.gep62 = getelementptr i8, ptr %0, i64 %i.q
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index57 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next59, %vec.epilog.vector.body ] ; 3 uses
  %i.ab = getelementptr inbounds i8, ptr @Dau_DsdPerformReplace.pTemp, i64 %index57
  %wide.load58 = load <8 x i8>, ptr %i.ab, align 8, !tbaa !36
  %gep63 = getelementptr i8, ptr %invariant.gep62, i64 %index57
  store <8 x i8> %wide.load58, ptr %gep63, align 1, !tbaa !36
  %index.next59 = add nuw i64 %index57, 8         ; 2 uses
  %i.ac = icmp eq i64 %index.next59, %n.vec56
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !125

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n60 = icmp eq i64 %i.r, %n.vec56
  br i1 %cmp.n60, label %._crit_edge42, label %.lr.ph41.preheader

.lr.ph41.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv46.ph = phi i64 [ %i.q, %iter.check ], [ %i.q, %vector.memcheck ], [ %i.v, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ] ; 4 uses
  %i.ad = sub nsw i64 %wide.trip.count49, %indvars.iv46.ph
  %xtraiter = and i64 %i.ad, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph41.prol.loopexit, label %.lr.ph41.prol

.lr.ph41.prol:                                    ; preds = %.lr.ph41.preheader, %.lr.ph41.prol
  %indvars.iv46.prol = phi i64 [ %indvars.iv.next47.prol, %.lr.ph41.prol ], [ %indvars.iv46.ph, %.lr.ph41.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph41.prol ], [ 0, %.lr.ph41.preheader ]
  %i.ae = sub nsw i64 %indvars.iv46.prol, %i.q
  %i.af = getelementptr inbounds i8, ptr @Dau_DsdPerformReplace.pTemp, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !36
  %i.ah = getelementptr inbounds i8, ptr %0, i64 %indvars.iv46.prol
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !36
  %indvars.iv.next47.prol = add nsw i64 %indvars.iv46.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph41.prol.loopexit, label %.lr.ph41.prol, !llvm.loop !126

.lr.ph41.prol.loopexit:                           ; preds = %.lr.ph41.prol, %.lr.ph41.preheader
  %indvars.iv46.unr = phi i64 [ %indvars.iv46.ph, %.lr.ph41.preheader ], [ %indvars.iv.next47.prol, %.lr.ph41.prol ]
  %i.ai = sub nsw i64 %indvars.iv46.ph, %wide.trip.count49
  %i.aj = icmp ugt i64 %i.ai, -4
  br i1 %i.aj, label %._crit_edge42, label %.lr.ph41

.lr.ph41:                                         ; preds = %.lr.ph41.prol.loopexit, %.lr.ph41
  %indvars.iv46 = phi i64 [ %indvars.iv.next47.3, %.lr.ph41 ], [ %indvars.iv46.unr, %.lr.ph41.prol.loopexit ] ; 6 uses
  %i.ak = sub nsw i64 %indvars.iv46, %i.q
  %i.al = getelementptr inbounds i8, ptr @Dau_DsdPerformReplace.pTemp, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !36
  %i.an = getelementptr inbounds i8, ptr %0, i64 %indvars.iv46
  store i8 %i.am, ptr %i.an, align 1, !tbaa !36
  %indvars.iv.next47 = add nsw i64 %indvars.iv46, 1 ; 2 uses
  %i.ao = sub nsw i64 %indvars.iv.next47, %i.q
  %i.ap = getelementptr inbounds i8, ptr @Dau_DsdPerformReplace.pTemp, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !36
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next47
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !36
  %indvars.iv.next47.1 = add nsw i64 %indvars.iv46, 2 ; 2 uses
  %i.as = sub nsw i64 %indvars.iv.next47.1, %i.q
  %i.at = getelementptr inbounds i8, ptr @Dau_DsdPerformReplace.pTemp, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !36
  %i.av = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next47.1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !36
  %indvars.iv.next47.2 = add nsw i64 %indvars.iv46, 3 ; 2 uses
  %i.aw = sub nsw i64 %indvars.iv.next47.2, %i.q
  %i.ax = getelementptr inbounds i8, ptr @Dau_DsdPerformReplace.pTemp, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !36
  %i.az = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next47.2
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !36
  %indvars.iv.next47.3 = add nsw i64 %indvars.iv46, 4 ; 2 uses
  %exitcond50.not.3 = icmp eq i64 %indvars.iv.next47.3, %wide.trip.count49
  br i1 %exitcond50.not.3, label %._crit_edge42, label %.lr.ph41, !llvm.loop !127

._crit_edge42:                                    ; preds = %.lr.ph41.prol.loopexit, %.lr.ph41, %middle.block, %vec.epilog.middle.block, %._crit_edge
  ret i32 %i.o
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @Dau_DsdPerform(i64 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [12 x i32], align 16              ; 4 uses
  switch i64 %0, label %bb.d [
    i64 0, label %bb.b
    i64 -1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store i8 48, ptr @Dau_DsdPerform.pBuffer, align 16, !tbaa !36
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  store i8 49, ptr @Dau_DsdPerform.pBuffer, align 16, !tbaa !36
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.b = tail call i32 @Dau_DsdPerform_rec(i64 noundef %0, ptr noundef nonnull @Dau_DsdPerform.pBuffer, i32 noundef 0, ptr noundef nonnull @__const.Dau_DsdPerform.pVarsNew, i32 noundef 6)
  %i.c = sext i32 %i.b to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.c, %bb.d ]
  %i.d = getelementptr inbounds i8, ptr @Dau_DsdPerform.pBuffer, i64 %.0
  store i8 0, ptr %i.d, align 1, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.e = load i8, ptr @Dau_DsdPerform.pBuffer, align 16, !tbaa !36 ; 2 uses
  %.not25.i = icmp eq i8 %i.e, 0
  br i1 %.not25.i, label %Dau_DsdComputeMatches.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.h
  %i.f = phi i8 [ %i.q, %bb.h ], [ %i.e, %bb.e ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.h ], [ 0, %bb.e ] ; 3 uses
  %.027.i = phi i32 [ %.1.i, %bb.h ], [ 0, %bb.e ] ; 4 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @Dau_DsdComputeMatches.pMatches, i64 %indvars.iv.i
  store i32 0, ptr %i.g, align 4, !tbaa !37
  switch i8 %i.f, label %bb.h [
    i8 40, label %bb.f
    i8 91, label %bb.f
    i8 60, label %bb.f
    i8 123, label %bb.f
    i8 41, label %bb.g
    i8 93, label %bb.g
    i8 62, label %bb.g
    i8 125, label %bb.g
  ]

bb.f:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.h = add nsw i32 %.027.i, 1
  br label %.sink.split.i

bb.g:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.i = add nsw i32 %.027.i, -1                  ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !37
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %bb.f
  %.027.sink.i = phi i32 [ %.027.i, %bb.f ], [ %i.l, %bb.g ]
  %.sink.i = phi ptr [ %i.a, %bb.f ], [ @Dau_DsdComputeMatches.pMatches, %bb.g ]
  %.1.ph.i = phi i32 [ %i.h, %bb.f ], [ %i.i, %bb.g ]
  %i.m = sext i32 %.027.sink.i to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %.sink.i, i64 %i.m
  %i.o = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.o, ptr %i.n, align 4, !tbaa !37
  br label %bb.h

bb.h:                                             ; preds = %.sink.split.i, %.lr.ph.i
  %.1.i = phi i32 [ %.027.i, %.lr.ph.i ], [ %.1.ph.i, %.sink.split.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr @Dau_DsdPerform.pBuffer, i64 %indvars.iv.next.i
  %i.q = load i8, ptr %i.p, align 1, !tbaa !36    ; 2 uses
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %Dau_DsdComputeMatches.exit, label %.lr.ph.i, !llvm.loop !0

Dau_DsdComputeMatches.exit:                       ; preds = %bb.h, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  tail call void @Dau_DsdRemoveBraces(ptr noundef nonnull @Dau_DsdPerform.pBuffer, ptr noundef nonnull @Dau_DsdComputeMatches.pMatches) #31
  ret ptr @Dau_DsdPerform.pBuffer
}
end_hunk_1
