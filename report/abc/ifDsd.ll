Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifDsd?download=true
inline.NumInlined: 897
inline.NumDeleted: 161
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 42
begin_hunk_0_@If_DsdManDumpDsd:bb.a
bb.k:                                             ; preds = %If_DsdObjTruthId.exit.thread, %If_DsdObjTruthId.exit, %._crit_edge66, %bb.f, %Abc_TtPrintHexRev.exit
  %.val = phi i32 [ %.val72, %If_DsdObjTruthId.exit.thread ], [ %.val72, %If_DsdObjTruthId.exit ], [ %.val72, %._crit_edge66 ], [ %.val72, %bb.f ], [ %.val.pre, %Abc_TtPrintHexRev.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cn = sext i32 %.val to i64
  %i.co = icmp slt i64 %indvars.iv.next, %i.cn
  br i1 %i.co, label %bb.e, label %.critedge, !llvm.loop !130

.critedge:                                        ; preds = %bb.k, %Vec_IntStart.exit
  %.not.i50 = icmp eq ptr %i.t, null
  br i1 %.not.i50, label %Vec_IntFree.exit, label %bb.l

bb.l:                                             ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.t) #40
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge, %bb.l
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  %i.cp = load i32, ptr %i.c, align 8, !tbaa !22
  %i.cq = sext i32 %i.cp to i64
  %.not.not = icmp slt i64 %indvars.iv63, %i.cq
  br i1 %.not.not, label %bb.c, label %._crit_edge, !llvm.loop !131

._crit_edge:                                      ; preds = %Vec_IntFree.exit, %.preheader
  %i.cr = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @If_DsdManDumpAll(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call noalias ptr @fopen(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4) ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 44         ; 2 uses
  %.val25 = load i32, ptr %i.d, align 4, !tbaa !23 ; 2 uses
  %i.e = icmp sgt i32 %.val25, 0
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = tail call i32 @llvm.umax.i32(i32 %1, i32 6)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @.str.8) ; 0 uses
  br label %bb.n

bb.c:                                             ; preds = %.lr.ph, %bb.m
  %.val28 = phi i32 [ %.val25, %.lr.ph ], [ %.val, %bb.m ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 5 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val23 = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.val23, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.n = getelementptr i8, ptr %i.m, i64 4
  %.val24 = load i32, ptr %i.n, align 4
  %i.o = lshr i32 %.val24, 3
  %i.p = and i32 %i.o, 31
  %.not22 = icmp eq i32 %1, %i.p
  br i1 %.not22, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !54   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !51   ; 12 uses
  %i.t = ptrtoaddr ptr %i.s to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i32 0, ptr %i.a, align 4, !tbaa !43
  %cond = icmp eq i64 %indvars.iv, 0
  br i1 %cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr %i.h, align 8, !tbaa !44   ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.preheader.i.i, label %If_DsdManComputeTruthPtr.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.w = zext nneg i32 %i.u to i64
  %i.x = shl nuw nsw i64 %i.w, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.x, i1 false), !tbaa !52
  br label %If_DsdManComputeTruthPtr.exit

bb.g:                                             ; preds = %bb.e
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %indvars.iv
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = and i32 %i.ab, 7
  %i.ad = icmp eq i32 %i.ac, 2
  br i1 %i.ad, label %.preheader.i.i, label %bb.h

.preheader.i.i:                                   ; preds = %bb.g
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !51  ; 7 uses
  %i.af = load i32, ptr %i.h, align 8, !tbaa !44  ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph18.preheader.i.i, label %If_DsdManComputeTruthPtr.exit

.lr.ph18.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.ah = ptrtoaddr ptr %i.ae to i64
  %wide.trip.count24.i.i = zext nneg i32 %i.af to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.af, 4
  %i.ai = sub i64 %i.ah, %i.t
  %diff.check = icmp ugt i64 %i.ai, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph18.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph18.preheader.i.i
  %n.vec = and i64 %wide.trip.count24.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <2 x i64>, ptr %i.aj, align 8, !tbaa !52
  %wide.load35 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !52
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x i64> %wide.load, ptr %i.al, align 8, !tbaa !52
  store <2 x i64> %wide.load35, ptr %i.am, align 8, !tbaa !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !132

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count24.i.i
  br i1 %cmp.n, label %If_DsdManComputeTruthPtr.exit, label %.lr.ph18.i.i.preheader

.lr.ph18.i.i.preheader:                           ; preds = %.lr.ph18.preheader.i.i, %middle.block
  %indvars.iv21.i.i.ph = phi i64 [ 0, %.lr.ph18.preheader.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count24.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph18.i.i.prol.loopexit, label %.lr.ph18.i.i.prol

.lr.ph18.i.i.prol:                                ; preds = %.lr.ph18.i.i.preheader, %.lr.ph18.i.i.prol
  %indvars.iv21.i.i.prol = phi i64 [ %indvars.iv.next22.i.i.prol, %.lr.ph18.i.i.prol ], [ %indvars.iv21.i.i.ph, %.lr.ph18.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph18.i.i.prol ], [ 0, %.lr.ph18.i.i.preheader ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv21.i.i.prol
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv21.i.i.prol
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !52
  %indvars.iv.next22.i.i.prol = add nuw nsw i64 %indvars.iv21.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i.i.prol.loopexit, label %.lr.ph18.i.i.prol, !llvm.loop !135

.lr.ph18.i.i.prol.loopexit:                       ; preds = %.lr.ph18.i.i.prol, %.lr.ph18.i.i.preheader
  %indvars.iv21.i.i.unr = phi i64 [ %indvars.iv21.i.i.ph, %.lr.ph18.i.i.preheader ], [ %indvars.iv.next22.i.i.prol, %.lr.ph18.i.i.prol ]
  %i.ar = sub nsw i64 %indvars.iv21.i.i.ph, %wide.trip.count24.i.i
  %i.as = icmp ugt i64 %i.ar, -4
  br i1 %i.as, label %If_DsdManComputeTruthPtr.exit, label %.lr.ph18.i.i

.lr.ph18.i.i:                                     ; preds = %.lr.ph18.i.i.prol.loopexit, %.lr.ph18.i.i
  %indvars.iv21.i.i = phi i64 [ %indvars.iv.next22.i.i.3, %.lr.ph18.i.i ], [ %indvars.iv21.i.i.unr, %.lr.ph18.i.i.prol.loopexit ] ; 6 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv21.i.i
  %i.au = load i64, ptr %i.at, align 8, !tbaa !52
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv21.i.i
  store i64 %i.au, ptr %i.av, align 8, !tbaa !52
  %indvars.iv.next22.i.i = add nuw nsw i64 %indvars.iv21.i.i, 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next22.i.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !52
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next22.i.i
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !52
  %indvars.iv.next22.i.i.1 = add nuw nsw i64 %indvars.iv21.i.i, 2 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next22.i.i.1
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !52
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next22.i.i.1
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !52
  %indvars.iv.next22.i.i.2 = add nuw nsw i64 %indvars.iv21.i.i, 3 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next22.i.i.2
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !52
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next22.i.i.2
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !52
  %indvars.iv.next22.i.i.3 = add nuw nsw i64 %indvars.iv21.i.i, 4 ; 2 uses
  %exitcond25.not.i.i.3 = icmp eq i64 %indvars.iv.next22.i.i.3, %wide.trip.count24.i.i
  br i1 %exitcond25.not.i.i.3, label %If_DsdManComputeTruthPtr.exit, label %.lr.ph18.i.i, !llvm.loop !137

bb.h:                                             ; preds = %bb.g
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.bf = shl nuw i32 %indvars.iv.tr, 1
  call void @If_DsdManComputeTruth_rec(ptr noundef nonnull %0, i32 noundef %i.bf, ptr noundef %i.s, ptr noundef null, ptr noundef nonnull %i.a)
  br label %If_DsdManComputeTruthPtr.exit

If_DsdManComputeTruthPtr.exit:                    ; preds = %.lr.ph18.i.i.prol.loopexit, %.lr.ph18.i.i, %middle.block, %bb.f, %.lr.ph.preheader.i.i, %.preheader.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.bg = call i64 @fwrite(ptr nonnull @.str.6, i64 2, i64 1, ptr nonnull %i.b) ; 0 uses
  br i1 %.not, label %bb.i, label %.thread

bb.i:                                             ; preds = %If_DsdManComputeTruthPtr.exit
  %i.bh = load i32, ptr %i.j, align 8, !tbaa !22  ; 3 uses
  %i.bi = icmp samesign ugt i32 %i.bh, 5
  %i.bj = icmp slt i32 %i.bh, 2
  br i1 %i.bj, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.bk = load i64, ptr %i.s, align 8, !tbaa !52
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = and i32 %i.bl, 15                       ; 3 uses
  %i.bn = icmp samesign ult i32 %i.bm, 10
  %i.bo = or disjoint i32 %i.bm, 48
  %i.bp = add nuw nsw i32 %i.bm, 55
  %.0.i.i = select i1 %i.bn, i32 %i.bo, i32 %i.bp
  %fputc17.i = call i32 @fputc(i32 %.0.i.i, ptr nonnull %i.b) ; 0 uses
  br label %Abc_TtPrintHexRev.exit

.thread:                                          ; preds = %If_DsdManComputeTruthPtr.exit, %bb.i
  %i.bq = phi i1 [ %i.bi, %bb.i ], [ true, %If_DsdManComputeTruthPtr.exit ]
  %i.br = phi i32 [ %i.bh, %bb.i ], [ %i.i, %If_DsdManComputeTruthPtr.exit ] ; 3 uses
  %i.bs = icmp samesign ult i32 %i.br, 7
  %i.bt = add nsw i32 %i.br, -6
  %i.bu = shl nuw i32 1, %i.bt
  %i.bv = select i1 %i.bs, i32 1, i32 %i.bu       ; 2 uses
  %.not22.i = icmp slt i32 %i.bv, 1
  br i1 %.not22.i, label %Abc_TtPrintHexRev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread
  %i.bw = add nsw i32 %i.br, -2
  %i.bx = zext nneg i32 %i.bv to i64
  %.idx.i = shl nuw nsw i64 %i.bx, 3
  %i.by = getelementptr i8, ptr %i.s, i64 %.idx.i
  %.01521.i = getelementptr i8, ptr %i.by, i64 -8
  %notmask.i = shl nsw i32 -1, %i.bw
  %i.bz = xor i32 %notmask.i, -1
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = select i1 %i.bq, i64 15, i64 %i.ca
  br label %bb.k

.loopexit.i:                                      ; preds = %bb.l
  %.015.i = getelementptr inbounds i8, ptr %.01523.i, i64 -8 ; 2 uses
  %.not.i = icmp ult ptr %.015.i, %i.s
  br i1 %.not.i, label %Abc_TtPrintHexRev.exit, label %bb.k, !llvm.loop !128

bb.k:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %.01523.i = phi ptr [ %.01521.i, %.lr.ph.i ], [ %.015.i, %.loopexit.i ] ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.i = phi i64 [ %i.cb, %bb.k ], [ %indvars.iv.next.i, %bb.l ] ; 3 uses
  %i.cc = load i64, ptr %.01523.i, align 8, !tbaa !52
  %i.cd = shl nsw i64 %indvars.iv.i, 2
  %i.ce = and i64 %i.cd, 4294967292
  %i.cf = lshr i64 %i.cc, %i.ce
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = and i32 %i.cg, 15                       ; 3 uses
  %i.ci = icmp samesign ult i32 %i.ch, 10
  %i.cj = or disjoint i32 %i.ch, 48
  %i.ck = add nuw nsw i32 %i.ch, 55
  %.0.i18.i = select i1 %i.ci, i32 %i.cj, i32 %i.ck
  %fputc.i = call i32 @fputc(i32 %.0.i18.i, ptr nonnull %i.b) ; 0 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.cl = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.cl, label %bb.l, label %.loopexit.i, !llvm.loop !129

Abc_TtPrintHexRev.exit:                           ; preds = %.loopexit.i, %bb.j, %.thread
  %fputc = call i32 @fputc(i32 10, ptr nonnull %i.b) ; 0 uses
  %.val.pre = load i32, ptr %i.d, align 4, !tbaa !23
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %Abc_TtPrintHexRev.exit
  %.val = phi i32 [ %.val28, %bb.d ], [ %.val.pre, %Abc_TtPrintHexRev.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cm = sext i32 %.val to i64
  %i.cn = icmp slt i64 %indvars.iv.next, %i.cm
  br i1 %i.cn, label %bb.c, label %.critedge, !llvm.loop !138

.critedge:                                        ; preds = %bb.m, %.preheader
  %i.co = call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %.critedge, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @If_DsdManComputeTruth(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51   ; 2 uses
  tail call void @If_DsdManComputeTruthPtr(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %i.d)
  ret ptr %i.d
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @If_DsdManHasMarks(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 44
  %.val = load i32, ptr %i.a, align 4, !tbaa !23  ; 2 uses
  %i.b = icmp sgt i32 %.val, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 48
  %.val7 = load ptr, ptr %i.c, align 8, !tbaa !26
  %wide.trip.count = zext nneg i32 %.val to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.c, !llvm.loop !103

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.val7, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 256
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b, %bb.a
  %.06 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.c ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @If_DsdManHashProfile(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
._crit_edge18:
  ret void
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @If_DsdManCheckNonDec_rec(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %.val17 = load i32, ptr %i.e, align 4           ; 2 uses
  %i.f = and i32 %.val17, 7
  switch i32 %i.f, label %.preheader [
    i32 1, label %.critedge
    i32 2, label %.critedge
    i32 6, label %.critedge.fold.split
  ]

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = lshr i32 %.val17, 27                     ; 2 uses
  %.not24 = icmp eq i32 %i.h, 0
  br i1 %.not24, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !139

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !43   ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.k = ashr i32 %i.j, 1
  %i.l = tail call i32 @If_DsdManCheckNonDec_rec(ptr noundef %0, i32 noundef %i.k)
  %.not14 = icmp eq i32 %i.l, 0
  br i1 %.not14, label %bb.b, label %.critedge

.critedge.fold.split:                             ; preds = %bb.a
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b, %.lr.ph, %.preheader, %bb.a, %bb.a, %.critedge.fold.split
  %.012 = phi i32 [ 1, %.critedge.fold.split ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %.preheader ], [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %.lr.ph ]
  ret i32 %.012
}

; Function Attrs: nofree nounwind uwtable
define void @If_DsdManPrint_rec(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #13 {
bb.a:
end_hunk_0
begin_hunk_1_@If_DsdManCheckMux:bb.a
  %i.cu = add nuw nsw i32 %i.ct, %.012.i.i50      ; 2 uses
  %indvars.iv.next.i.i51 = or disjoint i64 %indvars.iv.i.i49, 1 ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next.i.i51
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !43
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i51
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !43
  %i.cy = ashr i32 %i.cx, 1
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %.val.i55.pre, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !27
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = lshr i32 %i.dd, 3
  %i.df = and i32 %i.de, 31
  %i.dg = add nuw nsw i32 %i.df, %i.cu            ; 2 uses
  %indvars.iv.next.i.i51.1 = add nuw nsw i64 %indvars.iv.i.i49, 2 ; 2 uses
  %niter75.next.1 = add i64 %niter75, 2           ; 2 uses
  %niter75.ncmp.1 = icmp eq i64 %niter75.next.1, %unroll_iter74
  br i1 %niter75.ncmp.1, label %If_DsdManComputeFirst.exit54.loopexit.unr-lcssa, label %bb.i, !llvm.loop !235

If_DsdManComputeFirst.exit54.loopexit.unr-lcssa:  ; preds = %bb.i
  %lcmp.mod72.not = icmp eq i64 %xtraiter71, 0
  br i1 %lcmp.mod72.not, label %If_DsdManComputeFirst.exit54.loopexit, label %.epil.preheader70

.epil.preheader70:                                ; preds = %If_DsdManComputeFirst.exit54.loopexit.unr-lcssa, %.lr.ph.i.i46
  %indvars.iv.i.i49.epil.init = phi i64 [ 0, %.lr.ph.i.i46 ], [ %indvars.iv.next.i.i51.1, %If_DsdManComputeFirst.exit54.loopexit.unr-lcssa ]
  %.012.i.i50.epil.init = phi i32 [ 0, %.lr.ph.i.i46 ], [ %i.dg, %If_DsdManComputeFirst.exit54.loopexit.unr-lcssa ]
  %lcmp.mod73 = trunc i32 %i.ch to i1
  tail call void @llvm.assume(i1 %lcmp.mod73)
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i.i49.epil.init
  store i32 %.012.i.i50.epil.init, ptr %i.dh, align 4, !tbaa !43
  br label %If_DsdManComputeFirst.exit54.loopexit

If_DsdManComputeFirst.exit54.loopexit:            ; preds = %If_DsdManComputeFirst.exit54.loopexit.unr-lcssa, %.epil.preheader70
  %.pre60 = load i32, ptr %i.f, align 16, !tbaa !43
  br label %If_DsdManComputeFirst.exit54

If_DsdManComputeFirst.exit54:                     ; preds = %bb.h, %If_DsdManComputeFirst.exit54.loopexit
  %i.di = phi i32 [ %.pre60, %If_DsdManComputeFirst.exit54.loopexit ], [ %i.ce, %bb.h ]
  %i.dj = add nsw i32 %i.di, %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.dj, ptr %i.b, align 4, !tbaa !43
  %i.dk = getelementptr i8, ptr %0, i64 48
  %i.dl = load i32, ptr %i.cf, align 4, !tbaa !43
  %i.dm = ashr i32 %i.dl, 1
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %.val.i55.pre, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !27
  %i.dq = call i32 @If_DsdSign_rec(ptr noundef nonnull readonly %0, ptr noundef %i.dp, ptr noundef nonnull %i.b) ; 2 uses
  %i.dr = shl i32 %i.dq, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !43
  %i.du = add nsw i32 %i.dt, %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.du, ptr %i.a, align 4, !tbaa !43
  %.val.i56 = load ptr, ptr %i.dk, align 8, !tbaa !26
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !43
  %i.dx = ashr i32 %i.dw, 1
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [8 x i8], ptr %.val.i56, i64 %i.dy
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !27
  %i.eb = call i32 @If_DsdSign_rec(ptr noundef nonnull readonly %0, ptr noundef %i.ea, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ec = or i32 %i.dr, %i.eb
  %i.ed = or i32 %i.ec, %i.dq                     ; 2 uses
  %i.ee = and i32 %i.ed, %2
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.k, label %bb.j

bb.j:                                             ; preds = %If_DsdManComputeFirst.exit54, %If_DsdManGetSuppSizes.exit._crit_edge
  br label %bb.k

bb.k:                                             ; preds = %If_DsdManComputeFirst.exit54, %bb.g, %If_DsdManComputeFirst.exit, %bb.d, %bb.j
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.g ], [ 0, %bb.j ], [ %i.cb, %If_DsdManComputeFirst.exit ], [ %i.ed, %If_DsdManComputeFirst.exit54 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @If_DsdManCheckPrime(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [12 x i32], align 16              ; 9 uses
  %i.d = alloca [12 x i32], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4              ; 4 uses
  %i.g = and i32 %i.f, 7
  %i.h = icmp eq i32 %i.g, 6
  %i.i = icmp ugt i32 %i.f, 402653183
  %or.cond.i = and i1 %i.i, %i.h
  br i1 %or.cond.i, label %bb.b, label %If_DsdObjTruthId.exit

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %3, align 4, !tbaa !37
  %i.k = getelementptr i8, ptr %0, i64 80
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !43
  %i.o = sext i32 %i.n to i64
  br label %If_DsdObjTruthId.exit

If_DsdObjTruthId.exit:                            ; preds = %bb.a, %bb.b
  %i.p = phi i64 [ %i.o, %bb.b ], [ -1, %bb.a ]
  %i.q = lshr i32 %i.f, 27                        ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.s = zext nneg i32 %i.q to i64                ; 4 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !64
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val = load ptr, ptr %i.v, align 8, !tbaa !26
  %i.w = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.p
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27   ; 3 uses
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %.critedge87, label %bb.c

bb.c:                                             ; preds = %If_DsdObjTruthId.exit
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  tail call void @Dau_DecPrintSets(ptr noundef %i.x, i32 noundef %i.q) #40
  %.val11.i.pre = load i32, ptr %i.e, align 4
  br label %.critedge87

.critedge87:                                      ; preds = %If_DsdObjTruthId.exit, %bb.c
  %.val11.i = phi i32 [ %i.f, %If_DsdObjTruthId.exit ], [ %.val11.i.pre, %bb.c ] ; 3 uses
  %.not14.i = icmp ult i32 %.val11.i, 134217728
  br i1 %.not14.i, label %If_DsdManGetSuppSizes.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge87
  %i.y = getelementptr i8, ptr %0, i64 48
  %.val10.i = load ptr, ptr %i.y, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = lshr i32 %.val11.i, 27
  %i.ab = zext nneg i32 %i.aa to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !43
  %i.ae = ashr i32 %i.ad, 1
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %.val10.i, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !27 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %If_DsdManGetSuppSizes.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr i8, ptr %i.ah, i64 4
  %.val9.i = load i32, ptr %i.ai, align 4
  %i.aj = lshr i32 %.val9.i, 3
  %i.ak = and i32 %i.aj, 31
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !43
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.ab
  br i1 %exitcond.not, label %If_DsdManGetSuppSizes.exit, label %bb.d, !llvm.loop !255

If_DsdManGetSuppSizes.exit:                       ; preds = %bb.d, %bb.e, %.critedge87
  %i.am = lshr i32 %.val11.i, 3
  %i.an = and i32 %i.am, 31
  %i.ao = xor i32 %4, -1
  %.neg = add i32 %5, %i.ao
  %i.ap = add i32 %.neg, %i.an                    ; 2 uses
  %i.aq = getelementptr i8, ptr %i.x, i64 4       ; 2 uses
  %.val88109 = load i32, ptr %i.aq, align 4, !tbaa !40 ; 3 uses
  %i.ar = icmp sgt i32 %.val88109, 0
  br i1 %i.ar, label %.lr.ph112, label %.critedge

.lr.ph112:                                        ; preds = %If_DsdManGetSuppSizes.exit
  %i.as = getelementptr i8, ptr %i.x, i64 8       ; 2 uses
  %.not120 = icmp eq i32 %i.q, 0                  ; 3 uses
  %.not84 = icmp eq i32 %6, 0
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.au = getelementptr i8, ptr %0, i64 48        ; 3 uses
  br i1 %.not84, label %.lr.ph112.split.us, label %.lr.ph112.split

.lr.ph112.split.us:                               ; preds = %.lr.ph112
  %.val89.us = load ptr, ptr %i.as, align 8, !tbaa !42
  br i1 %.not120, label %.critedge, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph112.split.us
  %i.av = zext nneg i32 %.val88109 to i64
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %bb.l
  %indvars.iv139 = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvars.iv.next140, %bb.l ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.val89.us, i64 %indvars.iv139
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !43
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.us.us, %bb.k
  %indvars.iv134 = phi i64 [ 0, %.lr.ph.us.us ], [ %indvars.iv.next135, %bb.k ] ; 6 uses
  %.072101.us.us = phi i32 [ 0, %.lr.ph.us.us ], [ %.173.us.us, %bb.k ] ; 4 uses
  %.074100.us.us = phi i32 [ 0, %.lr.ph.us.us ], [ %.175.us.us, %bb.k ] ; 4 uses
  %indvars.iv134.tr = trunc nuw i64 %indvars.iv134 to i32
  %i.ay = shl nuw nsw i32 %indvars.iv134.tr, 1
  %i.az = ashr i32 %i.ax, %i.ay
  %i.ba = and i32 %i.az, 3
  switch i32 %i.ba, label %.unreachabledefault [
    i32 0, label %bb.i
    i32 1, label %bb.h
    i32 3, label %bb.g
    i32 2, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv134
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !43 ; 2 uses
  %i.bd = add nsw i32 %i.bc, %.074100.us.us
  %i.be = add nsw i32 %i.bc, %.072101.us.us
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv134
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !43
  %i.bh = add nsw i32 %i.bg, %.074100.us.us
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv134
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !43
  %i.bk = add nsw i32 %i.bj, %.072101.us.us
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.175.us.us = phi i32 [ %.074100.us.us, %bb.i ], [ %i.bh, %bb.h ], [ %i.bd, %bb.g ], [ %.074100.us.us, %bb.f ] ; 2 uses
  %.173.us.us = phi i32 [ %i.bk, %bb.i ], [ %.072101.us.us, %bb.h ], [ %i.be, %bb.g ], [ %.072101.us.us, %bb.f ] ; 2 uses
  %i.bl = icmp sgt i32 %.175.us.us, %5
  %i.bm = icmp sgt i32 %.173.us.us, %i.ap
  %or.cond.us.us = select i1 %i.bl, i1 true, i1 %i.bm
  br i1 %or.cond.us.us, label %._crit_edge.us.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %i.s
  br i1 %exitcond138.not, label %.critedge, label %bb.f, !llvm.loop !265

._crit_edge.us.us:                                ; preds = %bb.j
  %i.bn = trunc nuw nsw i64 %indvars.iv134 to i32
  %i.bo = icmp eq i32 %i.q, %i.bn
  br i1 %i.bo, label %.critedge, label %bb.l

bb.l:                                             ; preds = %._crit_edge.us.us
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %i.bp = icmp samesign ult i64 %indvars.iv.next140, %i.av
  br i1 %i.bp, label %.lr.ph.us.us, label %.critedge, !llvm.loop !266

.unreachabledefault:                              ; preds = %bb.f
  unreachable

default.unreachable:                              ; preds = %.lr.ph
  unreachable

.lr.ph112.split:                                  ; preds = %.lr.ph112, %bb.v
  %.val88143 = phi i32 [ %.val88, %bb.v ], [ %.val88109, %.lr.ph112 ]
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %bb.v ], [ 0, %.lr.ph112 ] ; 2 uses
  %.val89 = load ptr, ptr %i.as, align 8, !tbaa !42
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.val89, i64 %indvars.iv131
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !43 ; 2 uses
  br i1 %.not120, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph112.split, %bb.q
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.q ], [ 0, %.lr.ph112.split ] ; 6 uses
  %.072101 = phi i32 [ %.173, %bb.q ], [ 0, %.lr.ph112.split ] ; 4 uses
  %.074100 = phi i32 [ %.175, %bb.q ], [ 0, %.lr.ph112.split ] ; 4 uses
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.bs = shl nuw nsw i32 %indvars.iv.tr, 1
  %i.bt = ashr i32 %i.br, %i.bs
  %i.bu = and i32 %i.bt, 3
  switch i32 %i.bu, label %default.unreachable [
    i32 0, label %bb.m
    i32 1, label %bb.n
    i32 3, label %bb.o
    i32 2, label %bb.p
  ]

bb.m:                                             ; preds = %.lr.ph
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !43
  %i.bx = add nsw i32 %i.bw, %.072101
  br label %bb.p

bb.n:                                             ; preds = %.lr.ph
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !43
  %i.ca = add nsw i32 %i.bz, %.074100
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !43 ; 2 uses
  %i.cd = add nsw i32 %i.cc, %.074100
  %i.ce = add nsw i32 %i.cc, %.072101
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.n, %bb.o, %bb.m
  %.175 = phi i32 [ %.074100, %bb.m ], [ %i.ca, %bb.n ], [ %i.cd, %bb.o ], [ %.074100, %.lr.ph ] ; 2 uses
  %.173 = phi i32 [ %i.bx, %bb.m ], [ %.072101, %bb.n ], [ %i.ce, %bb.o ], [ %.072101, %.lr.ph ] ; 2 uses
  %i.cf = icmp sgt i32 %.175, %5
  %i.cg = icmp sgt i32 %.173, %i.ap
  %or.cond = select i1 %i.cf, i1 true, i1 %i.cg
  br i1 %or.cond, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond125.not = icmp eq i64 %indvars.iv.next, %i.s
  br i1 %exitcond125.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !265

._crit_edge:                                      ; preds = %bb.p
  %i.ch = trunc nuw nsw i64 %indvars.iv to i32
  %i.ci = icmp eq i32 %i.q, %i.ch
  br i1 %i.ci, label %._crit_edge.thread, label %bb.v

._crit_edge.thread:                               ; preds = %bb.q, %.lr.ph112.split, %._crit_edge
  %i.cj = load i32, ptr %i.e, align 4
  %i.ck = lshr i32 %i.cj, 27                      ; 4 uses
  %.not.i93 = icmp eq i32 %i.ck, 0
  br i1 %.not.i93, label %If_DsdManComputeFirst.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.thread
  %.val.i.i = load ptr, ptr %i.au, align 8, !tbaa !26 ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.ck to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.cl = icmp eq i32 %i.ck, 1
  br i1 %i.cl, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 30
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.r ] ; 4 uses
  %.012.i.i = phi i32 [ 0, %.lr.ph.i.i.new ], [ %i.dj, %bb.r ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.r ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i.i
  store i32 %.012.i.i, ptr %i.cm, align 8, !tbaa !43
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !43
  %i.cp = ashr i32 %i.co, 1
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %.val.i.i, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !27
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = lshr i32 %i.cu, 3
  %i.cw = and i32 %i.cv, 31
  %i.cx = add nuw nsw i32 %i.cw, %.012.i.i        ; 2 uses
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.i.i
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !43
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next.i.i
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !43
  %i.db = ashr i32 %i.da, 1
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %.val.i.i, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !27
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = lshr i32 %i.dg, 3
  %i.di = and i32 %i.dh, 31
  %i.dj = add nuw nsw i32 %i.di, %i.cx            ; 2 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %If_DsdManComputeFirst.exit.loopexit.unr-lcssa, label %bb.r, !llvm.loop !235

If_DsdManComputeFirst.exit.loopexit.unr-lcssa:    ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %If_DsdManComputeFirst.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %If_DsdManComputeFirst.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %If_DsdManComputeFirst.exit.loopexit.unr-lcssa ]
  %.012.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i ], [ %i.dj, %If_DsdManComputeFirst.exit.loopexit.unr-lcssa ]
  %lcmp.mod173 = trunc i32 %i.ck to i1
  tail call void @llvm.assume(i1 %lcmp.mod173)
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i.i.epil.init
  store i32 %.012.i.i.epil.init, ptr %i.dk, align 4, !tbaa !43
  br label %If_DsdManComputeFirst.exit

If_DsdManComputeFirst.exit:                       ; preds = %.epil.preheader, %If_DsdManComputeFirst.exit.loopexit.unr-lcssa, %._crit_edge.thread
  br i1 %.not120, label %._crit_edge107, label %.lr.ph106

.lr.ph106:                                        ; preds = %If_DsdManComputeFirst.exit, %bb.u
  %indvars.iv126 = phi i64 [ %indvars.iv.next127, %bb.u ], [ 0, %If_DsdManComputeFirst.exit ] ; 6 uses
  %.0105 = phi i32 [ %.1, %bb.u ], [ 0, %If_DsdManComputeFirst.exit ] ; 3 uses
  %indvars.iv126.tr = trunc nuw i64 %indvars.iv126 to i32
  %i.dl = shl nuw nsw i32 %indvars.iv126.tr, 1
  %i.dm = ashr i32 %i.br, %i.dl
  %i.dn = and i32 %i.dm, 3
  switch i32 %i.dn, label %bb.u [
    i32 3, label %bb.t
    i32 1, label %bb.s
  ]

bb.s:                                             ; preds = %.lr.ph106
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv126
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !43
  %i.dq = add nsw i32 %i.dp, %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.dq, ptr %i.b, align 4, !tbaa !43
  %.val.i94 = load ptr, ptr %i.au, align 8, !tbaa !26
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv126
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !43
  %i.dt = ashr i32 %i.ds, 1
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %.val.i94, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !27
  %i.dx = call i32 @If_DsdSign_rec(ptr noundef readonly %0, ptr noundef %i.dw, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dy = or i32 %i.dx, %.0105
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph106
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv126
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !43
  %i.eb = add nsw i32 %i.ea, %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.eb, ptr %i.a, align 4, !tbaa !43
  %.val.i95 = load ptr, ptr %i.au, align 8, !tbaa !26
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv126
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !43
  %i.ee = ashr i32 %i.ed, 1
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %.val.i95, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !27
  %i.ei = call i32 @If_DsdSign_rec(ptr noundef readonly %0, ptr noundef %i.eh, ptr noundef nonnull %i.a) ; 2 uses
  %i.ej = shl i32 %i.ei, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ek = or i32 %.0105, %i.ej
  %i.el = or i32 %i.ek, %i.ei
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph106, %bb.s, %bb.t
  %.1 = phi i32 [ %.0105, %.lr.ph106 ], [ %i.dy, %bb.s ], [ %i.el, %bb.t ] ; 2 uses
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %i.s
  br i1 %exitcond130.not, label %._crit_edge107, label %.lr.ph106, !llvm.loop !267

._crit_edge107:                                   ; preds = %bb.u, %If_DsdManComputeFirst.exit
  %.0.lcssa = phi i32 [ 0, %If_DsdManComputeFirst.exit ], [ %.1, %bb.u ] ; 2 uses
  %i.em = and i32 %.0.lcssa, %2
  %.not85.not = icmp eq i32 %i.em, 0
  br i1 %.not85.not, label %.critedge, label %._crit_edge107._crit_edge

._crit_edge107._crit_edge:                        ; preds = %._crit_edge107
  %.val88.pre = load i32, ptr %i.aq, align 4, !tbaa !40
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge107._crit_edge, %._crit_edge
  %.val88 = phi i32 [ %.val88.pre, %._crit_edge107._crit_edge ], [ %.val88143, %._crit_edge ] ; 2 uses
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %i.en = sext i32 %.val88 to i64
  %i.eo = icmp slt i64 %indvars.iv.next132, %i.en
  br i1 %i.eo, label %.lr.ph112.split, label %.critedge, !llvm.loop !266

.critedge:                                        ; preds = %._crit_edge107, %bb.v, %bb.l, %._crit_edge.us.us, %bb.k, %.lr.ph112.split.us, %If_DsdManGetSuppSizes.exit
  %.3 = phi i32 [ -1, %.lr.ph112.split.us ], [ 0, %bb.l ], [ 0, %If_DsdManGetSuppSizes.exit ], [ -1, %bb.k ], [ -1, %._crit_edge.us.us ], [ %.0.lcssa, %._crit_edge107 ], [ 0, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  ret i32 %.3
}

declare void @Dau_DecPrintSets(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define i32 @If_DsdManCheckXY_int(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #40
  %i.f = ashr i32 %1, 1                           ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 48         ; 12 uses
  %.val142 = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.h = sext i32 %i.f to i64                     ; 4 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %.val142, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27   ; 3 uses
  %.not = icmp eq i32 %5, 0                       ; 6 uses
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.j, i64 4        ; 2 uses
  %.val170 = load i32, ptr %i.k, align 4
  %i.l = lshr i32 %.val170, 3
  %i.m = and i32 %i.l, 31
  %.not113 = icmp sgt i32 %i.m, %2
  br i1 %.not113, label %bb.c, label %.critedge132

.thread:                                          ; preds = %bb.a
  %i.n = load ptr, ptr @stdout, align 8, !tbaa !82 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  store i32 0, ptr %i.c, align 4, !tbaa !43
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.15, i32 noundef %i.f) #40 ; 0 uses
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.p = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.h
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4
  %i.t = lshr i32 %i.s, 3
  %i.u = and i32 %i.t, 31
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.16, i32 noundef %i.u) #40 ; 0 uses
  %.val17.i = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.w = getelementptr inbounds [8 x i8], ptr %.val17.i, i64 %i.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = lshr i32 %i.z, 9
  %i.ab = and i32 %i.aa, 262143
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.17, i32 noundef %i.ab) #40 ; 0 uses
  %.val16.i = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.ad = getelementptr inbounds [8 x i8], ptr %.val16.i, i64 %i.h
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = lshr i32 %i.ag, 8
  %i.ai = and i32 %i.ah, 1
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.18, i32 noundef %i.ai) #40 ; 0 uses
  %i.ak = and i32 %1, -2
  call void @If_DsdManPrint_rec(ptr noundef %i.n, ptr noundef nonnull readonly %0, i32 noundef %i.ak, ptr noundef null, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  %i.al = getelementptr i8, ptr %i.j, i64 4       ; 2 uses
  %.val170174 = load i32, ptr %i.al, align 4
  %i.am = lshr i32 %.val170174, 3
  %i.an = and i32 %i.am, 31
  %.not113175 = icmp sgt i32 %i.an, %2
  br i1 %.not113175, label %bb.c, label %.critedge132.sink.split

bb.c:                                             ; preds = %.thread, %bb.b
  %i.ao = phi ptr [ %i.al, %.thread ], [ %i.k, %bb.b ] ; 4 uses
  %i.ap = load i32, ptr %i.j, align 4, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !49 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !50 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i32 0, ptr %i.b, align 4, !tbaa !43
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 0, ptr %i.au, align 4, !tbaa !40
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 0, ptr %i.av, align 4, !tbaa !40
  call void @If_DsdManCollect_rec(ptr noundef nonnull readonly %0, i32 noundef %i.ap, ptr noundef %i.ar, ptr noundef %i.at, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !49 ; 5 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 4
  %.val146182 = load i32, ptr %i.ax, align 4, !tbaa !40 ; 2 uses
  %i.ay = icmp sgt i32 %.val146182, 0
  br i1 %i.ay, label %.lr.ph.preheader, label %.critedge2

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.az = getelementptr i8, ptr %i.aw, i64 8
  %.val154255 = load ptr, ptr %i.az, align 8, !tbaa !42
  %i.ba = load i32, ptr %.val154255, align 4, !tbaa !43
  %.val141256 = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %.val141256, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !27 ; 2 uses
  %.not114257 = icmp eq ptr %i.bd, null
  br i1 %.not114257, label %.critedge, label %.lr.ph259

.lr.ph:                                           ; preds = %bb.g
  %i.be = getelementptr i8, ptr %i.cz, i64 8
  %.val154 = load ptr, ptr %i.be, align 8, !tbaa !42
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.val154, i64 %indvars.iv.next
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !43
  %.val141 = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %.val141, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !27 ; 2 uses
  %.not114 = icmp eq ptr %i.bj, null
  br i1 %.not114, label %.critedge, label %.lr.ph259, !llvm.loop !268

.lr.ph259:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bk = phi ptr [ %i.bj, %.lr.ph ], [ %i.bd, %.lr.ph.preheader ] ; 3 uses
  %indvars.iv258 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.bl = phi ptr [ %i.cz, %.lr.ph ], [ %i.aw, %.lr.ph.preheader ] ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bk, i64 4
  %.val169 = load i32, ptr %i.bm, align 4
  %i.bn = lshr i32 %.val169, 3
  %i.bo = and i32 %i.bn, 31                       ; 2 uses
  %.not124 = icmp sgt i32 %i.bo, %2
  br i1 %.not124, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.lr.ph259
  %.val168 = load i32, ptr %i.ao, align 4
end_hunk_1
begin_hunk_2_@If_CutDsdBalanceEval:bb.a
  %.val.i116 = load ptr, ptr %i.ds, align 8, !tbaa !298
  %i.dt = sext i32 %i.dr to i64
  %.not120 = icmp eq i32 %i.i, 0
  br i1 %.not120, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad
  %i.du = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.du, align 8, !tbaa !282
  %i.dv = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.dv, align 8, !tbaa !26 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.dx = icmp eq i32 %i.i, 1
  br i1 %i.dx, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 254
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.ae ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.ae ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !43
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr %.val.val, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !27
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 92
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !292
  %i.ef = fptosi float %i.ee to i32
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.ef, ptr %i.eg, align 8, !tbaa !43
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.next
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !43
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [8 x i8], ptr %.val.val, i64 %i.ej
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !27
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 92
  %i.en = load float, ptr %i.em, align 4, !tbaa !292
  %i.eo = fptosi float %i.en to i32
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !43
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.ae, !llvm.loop !319

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ae
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod138 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod138)
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.epil.init
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !43
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %.val.val, i64 %i.es
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !27
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 92
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !292
  %i.ex = fptosi float %i.ew to i32
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !43
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.ad
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !295
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.dm
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !88
  %i.fe = getelementptr i8, ptr %i.fd, i64 8
  %.val.i117 = load ptr, ptr %i.fe, align 8, !tbaa !42
  %i.ff = sext i32 %i.dp to i64
  %i.fg = getelementptr inbounds [4 x i8], ptr %.val.i117, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !43
  %i.fi = lshr i32 %i.h, 12
  %i.fj = xor i32 %.val97, %i.fi
  %i.fk = and i32 %i.fj, 1
  %i.fl = xor i32 %i.fk, %i.fh
  %i.fm = getelementptr inbounds i8, ptr %.val.i116, i64 %i.dt
  %i.fn = call i32 @If_CutDsdBalanceEvalInt(ptr noundef %i.fa, i32 noundef %i.fl, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef %i.fm)
  %i.fo = load i32, ptr %i.b, align 4, !tbaa !43
  %i.fp = load i64, ptr %i.c, align 4
  %i.fq = and i32 %i.fo, 4095
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = and i64 %i.fp, -4096
  %i.ft = or disjoint i64 %i.fs, %i.fr
  store i64 %i.ft, ptr %i.c, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge, %.critedge, %bb.o
  %.077 = phi i32 [ 0, %bb.o ], [ %i.di, %.critedge ], [ %i.fn, %._crit_edge ]
  ret i32 %.077
}

; Function Attrs: nounwind uwtable
define void @If_DsdManTune(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = icmp ne i32 %3, 0                        ; 4 uses
  %i.c = icmp ne i32 %1, 0
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %.critedge.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 44         ; 2 uses
  %.val5663 = load i32, ptr %i.d, align 4, !tbaa !23
  %i.e = icmp sgt i32 %.val5663, 0
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.val58 = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.val58, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = and i32 %i.j, -257
  store i32 %i.k, ptr %i.i, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val56 = load i32, ptr %i.d, align 4, !tbaa !23
  %i.l = sext i32 %.val56 to i64
  %i.m = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %bb.b, label %.critedge, !llvm.loop !320

.critedge:                                        ; preds = %bb.b, %.preheader
  %i.n = icmp eq i32 %1, 0
  br i1 %i.n, label %bb.u, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.a, %.critedge
  %i.o = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #42 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 0, ptr %i.p, align 4, !tbaa !40
  store i32 1000, ptr %i.o, align 8, !tbaa !41
  %i.q = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #42
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !42
  %i.s = tail call ptr @If_ManSatBuildXY(i32 noundef %1) #40 ; 2 uses
  %i.t = load ptr, ptr @stdout, align 8, !tbaa !82
  %i.u = getelementptr i8, ptr %0, i64 44         ; 5 uses
  %.val55 = load i32, ptr %i.u, align 4, !tbaa !23
  %i.v = tail call ptr @Extra_ProgressBarStart(ptr noundef %i.t, i32 noundef %.val55) #40 ; 6 uses
  %.val65 = load i32, ptr %i.u, align 4, !tbaa !23
  %i.w = icmp sgt i32 %.val65, 0
  br i1 %i.w, label %.lr.ph68, label %.critedge3

.lr.ph68:                                         ; preds = %.critedge.thread
  %i.x = getelementptr i8, ptr %0, i64 48         ; 7 uses
  %.not.i = icmp eq ptr %i.v, null                ; 2 uses
  %.not51 = icmp eq i32 %2, 0
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %.not51, label %.lr.ph68.split.us, label %.lr.ph68.split

.lr.ph68.split.us:                                ; preds = %.lr.ph68, %bb.k
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %bb.k ], [ 0, %.lr.ph68 ] ; 8 uses
  %.val57.us = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.val57.us, i64 %indvars.iv89
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !27
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph68.split.us
  %i.ac = load i32, ptr %i.v, align 4, !tbaa !43
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp slt i64 %indvars.iv89, %i.ad
  br i1 %i.ae, label %Extra_ProgressBarUpdate.exit.us, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph68.split.us
  %i.af = trunc nuw nsw i64 %indvars.iv89 to i32
  call void @Extra_ProgressBarUpdate_int(ptr noundef %i.v, i32 noundef %i.af, ptr noundef null) #40
  br label %Extra_ProgressBarUpdate.exit.us

Extra_ProgressBarUpdate.exit.us:                  ; preds = %bb.d, %bb.c
  %i.ag = getelementptr i8, ptr %i.ab, i64 4      ; 2 uses
  %.val59.us = load i32, ptr %i.ag, align 4       ; 3 uses
  %i.ah = lshr i32 %.val59.us, 3
  %i.ai = and i32 %i.ah, 31                       ; 2 uses
  %.not48.us = icmp sgt i32 %i.ai, %1
  br i1 %.not48.us, label %bb.e, label %bb.k

bb.e:                                             ; preds = %Extra_ProgressBarUpdate.exit.us
  %i.aj = and i32 %.val59.us, 256
  %.not49.us = icmp eq i32 %i.aj, 0
  %or.cond62.us = and i1 %i.b, %.not49.us
  br i1 %or.cond62.us, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = and i32 %.val59.us, -257
  store i32 %i.ak, ptr %i.ag, align 4
  %indvars.iv89.tr = trunc nuw i64 %indvars.iv89 to i32
  %i.al = shl nuw i32 %indvars.iv89.tr, 1         ; 2 uses
  %i.am = call i32 @If_DsdManCheckXY_int(ptr noundef nonnull %0, i32 noundef %i.al, i32 noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %.not50.us = icmp eq i32 %i.am, 0
  br i1 %.not50.us, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.y, align 8, !tbaa !54  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !51 ; 10 uses
  %i.aq = ptrtoaddr ptr %i.ap to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i32 0, ptr %i.a, align 4, !tbaa !43
  %cond.us = icmp eq i64 %indvars.iv89, 0
  br i1 %cond.us, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val.i.us = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.val.i.us, i64 %indvars.iv89
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !27
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.at, align 4
  %i.av = and i32 %i.au, 7
  %i.aw = icmp eq i32 %i.av, 2
  br i1 %i.aw, label %.preheader.i.i.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @If_DsdManComputeTruth_rec(ptr noundef nonnull %0, i32 noundef %i.al, ptr noundef %i.ap, ptr noundef null, ptr noundef nonnull %i.a)
  br label %If_DsdManComputeTruthPtr.exit.us

.preheader.i.i.us:                                ; preds = %bb.h
  %i.ax = load ptr, ptr %i.an, align 8, !tbaa !51 ; 7 uses
  %i.ay = load i32, ptr %i.z, align 8, !tbaa !44  ; 3 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph18.preheader.i.i.us, label %If_DsdManComputeTruthPtr.exit.us

.lr.ph18.preheader.i.i.us:                        ; preds = %.preheader.i.i.us
  %i.ba = ptrtoaddr ptr %i.ax to i64
  %wide.trip.count24.i.i.us = zext nneg i32 %i.ay to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ay, 4
  %i.bb = sub i64 %i.ba, %i.aq
  %diff.check = icmp ugt i64 %i.bb, -32
  %or.cond103 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond103, label %.lr.ph18.i.i.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph18.preheader.i.i.us
  %n.vec = and i64 %wide.trip.count24.i.i.us, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load = load <2 x i64>, ptr %i.bc, align 8, !tbaa !52
  %wide.load102 = load <2 x i64>, ptr %i.bd, align 8, !tbaa !52
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <2 x i64> %wide.load, ptr %i.be, align 8, !tbaa !52
  store <2 x i64> %wide.load102, ptr %i.bf, align 8, !tbaa !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !321

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count24.i.i.us
  br i1 %cmp.n, label %If_DsdManComputeTruthPtr.exit.us, label %.lr.ph18.i.i.us.preheader

.lr.ph18.i.i.us.preheader:                        ; preds = %.lr.ph18.preheader.i.i.us, %middle.block
  %indvars.iv21.i.i.us.ph = phi i64 [ 0, %.lr.ph18.preheader.i.i.us ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count24.i.i.us, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph18.i.i.us.prol.loopexit, label %.lr.ph18.i.i.us.prol

.lr.ph18.i.i.us.prol:                             ; preds = %.lr.ph18.i.i.us.preheader, %.lr.ph18.i.i.us.prol
  %indvars.iv21.i.i.us.prol = phi i64 [ %indvars.iv.next22.i.i.us.prol, %.lr.ph18.i.i.us.prol ], [ %indvars.iv21.i.i.us.ph, %.lr.ph18.i.i.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph18.i.i.us.prol ], [ 0, %.lr.ph18.i.i.us.preheader ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv21.i.i.us.prol
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !52
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv21.i.i.us.prol
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !52
  %indvars.iv.next22.i.i.us.prol = add nuw nsw i64 %indvars.iv21.i.i.us.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i.i.us.prol.loopexit, label %.lr.ph18.i.i.us.prol, !llvm.loop !322

.lr.ph18.i.i.us.prol.loopexit:                    ; preds = %.lr.ph18.i.i.us.prol, %.lr.ph18.i.i.us.preheader
  %indvars.iv21.i.i.us.unr = phi i64 [ %indvars.iv21.i.i.us.ph, %.lr.ph18.i.i.us.preheader ], [ %indvars.iv.next22.i.i.us.prol, %.lr.ph18.i.i.us.prol ]
  %i.bk = sub nsw i64 %indvars.iv21.i.i.us.ph, %wide.trip.count24.i.i.us
  %i.bl = icmp ugt i64 %i.bk, -4
  br i1 %i.bl, label %If_DsdManComputeTruthPtr.exit.us, label %.lr.ph18.i.i.us

.lr.ph18.i.i.us:                                  ; preds = %.lr.ph18.i.i.us.prol.loopexit, %.lr.ph18.i.i.us
  %indvars.iv21.i.i.us = phi i64 [ %indvars.iv.next22.i.i.us.3, %.lr.ph18.i.i.us ], [ %indvars.iv21.i.i.us.unr, %.lr.ph18.i.i.us.prol.loopexit ] ; 6 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv21.i.i.us
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !52
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv21.i.i.us
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !52
  %indvars.iv.next22.i.i.us = add nuw nsw i64 %indvars.iv21.i.i.us, 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next22.i.i.us
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !52
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next22.i.i.us
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !52
  %indvars.iv.next22.i.i.us.1 = add nuw nsw i64 %indvars.iv21.i.i.us, 2 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next22.i.i.us.1
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !52
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next22.i.i.us.1
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !52
  %indvars.iv.next22.i.i.us.2 = add nuw nsw i64 %indvars.iv21.i.i.us, 3 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next22.i.i.us.2
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !52
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next22.i.i.us.2
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !52
  %indvars.iv.next22.i.i.us.3 = add nuw nsw i64 %indvars.iv21.i.i.us, 4 ; 2 uses
  %exitcond25.not.i.i.us.3 = icmp eq i64 %indvars.iv.next22.i.i.us.3, %wide.trip.count24.i.i.us
  br i1 %exitcond25.not.i.i.us.3, label %If_DsdManComputeTruthPtr.exit.us, label %.lr.ph18.i.i.us, !llvm.loop !323

bb.j:                                             ; preds = %bb.g
  %i.by = load i32, ptr %i.z, align 8, !tbaa !44  ; 2 uses
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %.lr.ph.preheader.i.i.us, label %If_DsdManComputeTruthPtr.exit.us

.lr.ph.preheader.i.i.us:                          ; preds = %bb.j
  %i.ca = zext nneg i32 %i.by to i64
  %i.cb = shl nuw nsw i64 %i.ca, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ap, i8 0, i64 %i.cb, i1 false), !tbaa !52
  br label %If_DsdManComputeTruthPtr.exit.us

If_DsdManComputeTruthPtr.exit.us:                 ; preds = %.lr.ph18.i.i.us.prol.loopexit, %.lr.ph18.i.i.us, %middle.block, %.lr.ph.preheader.i.i.us, %bb.j, %.preheader.i.i.us, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.cc = call i32 @If_ManSatCheckXYall(ptr noundef %i.s, i32 noundef %1, ptr noundef %i.ap, i32 noundef %i.ai, ptr noundef nonnull %i.o) #40
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %.critedge54.us, label %bb.k

.critedge54.us:                                   ; preds = %If_DsdManComputeTruthPtr.exit.us
  %.val60.us = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.val60.us, i64 %indvars.iv89
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !27
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = or i32 %i.ch, 256
  store i32 %i.ci, ptr %i.cg, align 4
  br label %bb.k

bb.k:                                             ; preds = %.critedge54.us, %If_DsdManComputeTruthPtr.exit.us, %bb.f, %bb.e, %Extra_ProgressBarUpdate.exit.us
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %.val.us = load i32, ptr %i.u, align 4, !tbaa !23
  %i.cj = sext i32 %.val.us to i64
  %i.ck = icmp slt i64 %indvars.iv.next90, %i.cj
  br i1 %i.ck, label %.lr.ph68.split.us, label %.critedge3, !llvm.loop !324

.lr.ph68.split:                                   ; preds = %.lr.ph68
  br i1 %.not.i, label %Extra_ProgressBarUpdate.exit.us71, label %.lr.ph68.split.split

Extra_ProgressBarUpdate.exit.us71:                ; preds = %.lr.ph68.split, %bb.n
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %bb.n ], [ 0, %.lr.ph68.split ] ; 5 uses
  %.val57.us70 = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.val57.us70, i64 %indvars.iv86
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !27
  %i.cn = trunc nuw nsw i64 %indvars.iv86 to i32
  tail call void @Extra_ProgressBarUpdate_int(ptr noundef null, i32 noundef %i.cn, ptr noundef null) #40
  %i.co = getelementptr i8, ptr %i.cm, i64 4      ; 2 uses
  %.val59.us72 = load i32, ptr %i.co, align 4     ; 3 uses
  %i.cp = lshr i32 %.val59.us72, 3
  %i.cq = and i32 %i.cp, 31
  %.not48.us73 = icmp sgt i32 %i.cq, %1
  br i1 %.not48.us73, label %bb.l, label %bb.n

bb.l:                                             ; preds = %Extra_ProgressBarUpdate.exit.us71
  %i.cr = and i32 %.val59.us72, 256
  %.not49.us74 = icmp eq i32 %i.cr, 0
  %or.cond62.us75 = and i1 %i.b, %.not49.us74
  br i1 %or.cond62.us75, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cs = and i32 %.val59.us72, -257
  store i32 %i.cs, ptr %i.co, align 4
  %indvars.iv86.tr = trunc nuw i64 %indvars.iv86 to i32
  %i.ct = shl nuw i32 %indvars.iv86.tr, 1
  %i.cu = tail call i32 @If_DsdManCheckXY_int(ptr noundef nonnull %0, i32 noundef %i.ct, i32 noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %.not50.us76 = icmp eq i32 %i.cu, 0
  br i1 %.not50.us76, label %.critedge54.us77, label %bb.n

.critedge54.us77:                                 ; preds = %bb.m
  %.val60.us78 = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.val60.us78, i64 %indvars.iv86
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !27
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = or i32 %i.cy, 256
  store i32 %i.cz, ptr %i.cx, align 4
  br label %bb.n

bb.n:                                             ; preds = %.critedge54.us77, %bb.m, %bb.l, %Extra_ProgressBarUpdate.exit.us71
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %.val.us79 = load i32, ptr %i.u, align 4, !tbaa !23
  %i.da = sext i32 %.val.us79 to i64
  %i.db = icmp slt i64 %indvars.iv.next87, %i.da
  br i1 %i.db, label %Extra_ProgressBarUpdate.exit.us71, label %.critedge3, !llvm.loop !324

.lr.ph68.split.split:                             ; preds = %.lr.ph68.split, %bb.r
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %bb.r ], [ 0, %.lr.ph68.split ] ; 6 uses
  %.val57 = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.val57, i64 %indvars.iv83
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !27
  %i.de = load i32, ptr %i.v, align 4, !tbaa !43
  %i.df = sext i32 %i.de to i64
  %i.dg = icmp slt i64 %indvars.iv83, %i.df
  br i1 %i.dg, label %Extra_ProgressBarUpdate.exit, label %bb.o

bb.o:                                             ; preds = %.lr.ph68.split.split
  %i.dh = trunc nuw nsw i64 %indvars.iv83 to i32
  tail call void @Extra_ProgressBarUpdate_int(ptr noundef nonnull %i.v, i32 noundef %i.dh, ptr noundef null) #40
  br label %Extra_ProgressBarUpdate.exit

Extra_ProgressBarUpdate.exit:                     ; preds = %.lr.ph68.split.split, %bb.o
  %i.di = getelementptr i8, ptr %i.dd, i64 4      ; 2 uses
  %.val59 = load i32, ptr %i.di, align 4          ; 3 uses
  %i.dj = lshr i32 %.val59, 3
  %i.dk = and i32 %i.dj, 31
  %.not48 = icmp sgt i32 %i.dk, %1
  br i1 %.not48, label %bb.p, label %bb.r

bb.p:                                             ; preds = %Extra_ProgressBarUpdate.exit
  %i.dl = and i32 %.val59, 256
  %.not49 = icmp eq i32 %i.dl, 0
  %or.cond62 = and i1 %i.b, %.not49
  br i1 %or.cond62, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dm = and i32 %.val59, -257
  store i32 %i.dm, ptr %i.di, align 4
  %indvars.iv83.tr = trunc nuw i64 %indvars.iv83 to i32
  %i.dn = shl nuw i32 %indvars.iv83.tr, 1
  %i.do = tail call i32 @If_DsdManCheckXY_int(ptr noundef nonnull %0, i32 noundef %i.dn, i32 noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %.not50 = icmp eq i32 %i.do, 0
  br i1 %.not50, label %.critedge54, label %bb.r

.critedge54:                                      ; preds = %bb.q
  %.val60 = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.val60, i64 %indvars.iv83
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !27
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4
  %i.dt = or i32 %i.ds, 256
  store i32 %i.dt, ptr %i.dr, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %Extra_ProgressBarUpdate.exit, %.critedge54
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %.val = load i32, ptr %i.u, align 4, !tbaa !23
  %i.du = sext i32 %.val to i64
  %i.dv = icmp slt i64 %indvars.iv.next84, %i.du
  br i1 %i.dv, label %.lr.ph68.split.split, label %.critedge3, !llvm.loop !324

.critedge3:                                       ; preds = %bb.r, %bb.n, %bb.k, %.critedge.thread
  call void @Extra_ProgressBarStop(ptr noundef %i.v) #40
  call void @If_ManSatUnbuild(ptr noundef %i.s) #40
  %i.dw = load ptr, ptr %i.r, align 8, !tbaa !42  ; 2 uses
  %.not.i61 = icmp eq ptr %i.dw, null
  br i1 %.not.i61, label %Vec_IntFree.exit, label %bb.s

bb.s:                                             ; preds = %.critedge3
  call void @free(ptr noundef nonnull %i.dw) #40
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge3, %bb.s
  call void @free(ptr noundef nonnull %i.o) #40
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %Vec_IntFree.exit
  call void @If_DsdManPrintDistrib(ptr noundef nonnull %0)
  br label %bb.u

bb.u:                                             ; preds = %Vec_IntFree.exit, %bb.t, %.critedge
  ret void
}

declare ptr @Extra_ProgressBarStart(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @Extra_ProgressBarStop(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @Id_DsdManTuneStr1(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.b = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #40
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %5, align 8, !tbaa !325
  %.neg111 = mul i64 %i.d, -1000000
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !327
  %.neg = sdiv i64 %i.f, -1000
  %.neg112 = add i64 %.neg, %.neg111
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg112, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %i.g = call ptr @Ifn_NtkParse(ptr noundef %1) #40 ; 9 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.as, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !22
  %i.k = call i32 @Ifn_NtkInputNum(ptr noundef nonnull %i.g) #40
  %i.l = icmp sgt i32 %i.j, %i.k
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.i, align 8, !tbaa !22
  %i.n = call i32 @Ifn_NtkInputNum(ptr noundef nonnull %i.g) #40
  %i.o = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.104, i32 noundef %i.m, i32 noundef %i.n) ; 0 uses
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !35   ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.q) #40
  store ptr null, ptr %i.p, align 8, !tbaa !35
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #44
  %i.s = add i64 %i.r, 1
  %i.t = call noalias ptr @malloc(i64 noundef %i.s) #42 ; 2 uses
  %i.u = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull readonly dereferenceable(1) %1) #40 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.g, %bb.h
  %i.v = phi ptr [ %i.t, %bb.h ], [ null, %bb.g ]
  store ptr %i.v, ptr %i.p, align 8, !tbaa !35
  %i.w = load i32, ptr %i.i, align 8, !tbaa !22
  %i.x = call i32 @Ifn_NtkInputNum(ptr noundef nonnull %i.g) #40
  %i.y = icmp slt i32 %i.w, %i.x
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %Abc_UtilStrsav.exit
  %i.z = load i32, ptr %i.i, align 8, !tbaa !22
  %i.aa = call i32 @Ifn_NtkInputNum(ptr noundef nonnull %i.g) #40
  %i.ab = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.105, i32 noundef %i.z, i32 noundef %i.aa) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %Abc_UtilStrsav.exit
  %i.ac = call i32 @Ifn_NtkLutSizeMax(ptr noundef nonnull %i.g) #40
  %i.ad = call i32 @Ifn_NtkTtBits(ptr noundef %1) #40 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !25
  %i.af = ashr i32 %i.ad, 6
  %i.ag = and i32 %i.ad, 63
  %i.ah = icmp ne i32 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %i.aj = add nsw i32 %i.af, 1
  %i.ak = add nsw i32 %i.aj, %i.ai
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 628 ; 4 uses
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !31
  %.not92 = icmp eq i32 %3, 0                     ; 2 uses
  br i1 %.not92, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.106) ; 0 uses
  call void @Ifn_NtkPrint(ptr noundef nonnull %i.g) #40
  %i.an = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.107, i32 noundef %i.ac) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 4 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !28 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr i8, ptr %0, i64 44
  %.val99 = load i32, ptr %i.ar, align 4, !tbaa !23
  %i.as = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, i32 noundef %i.ap, i32 noundef %.val99) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.at = getelementptr i8, ptr %0, i64 44        ; 6 uses
  %.val98113 = load i32, ptr %i.at, align 4, !tbaa !23 ; 3 uses
  %i.au = icmp sgt i32 %.val98113, 0
  br i1 %i.au, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.n
  %i.av = getelementptr i8, ptr %0, i64 48
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.q
  %.val98123 = phi i32 [ %.val98113, %.lr.ph ], [ %.val98, %bb.q ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 3 uses
  %i.aw = load i32, ptr %i.ao, align 8, !tbaa !28
  %i.ax = sext i32 %i.aw to i64
  %.not93 = icmp slt i64 %indvars.iv, %i.ax
  br i1 %.not93, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val101 = load ptr, ptr %i.av, align 8, !tbaa !26
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.val101, i64 %indvars.iv
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = and i32 %i.bb, -257
  store i32 %i.bc, ptr %i.ba, align 4
  %.val98.pre = load i32, ptr %i.at, align 4, !tbaa !23
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.val98 = phi i32 [ %.val98123, %bb.o ], [ %.val98.pre, %bb.p ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bd = sext i32 %.val98 to i64
  %i.be = icmp slt i64 %indvars.iv.next, %i.bd
  br i1 %i.be, label %bb.o, label %.critedge, !llvm.loop !328

.critedge:                                        ; preds = %bb.q, %bb.n
  %.val98.lcssa = phi i32 [ %.val98113, %bb.n ], [ %.val98, %bb.q ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !30 ; 7 uses
  %i.bh = icmp eq ptr %i.bg, null
end_hunk_2
begin_hunk_3_@Id_DsdManTuneStr1:bb.a
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cn = phi ptr [ %i.cl, %bb.ad ], [ %i.cm, %bb.ae ]
  store ptr %i.cn, ptr %i.ch, align 8, !tbaa !32
  br label %Vec_WrdGrow.exit.sink.split.i

Vec_WrdGrow.exit.sink.split.i:                    ; preds = %bb.af, %bb.z
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.af ], [ %i.bj, %bb.z ]
  store i32 %spec.select.sink.i, ptr %i.bg, align 8, !tbaa !196
  %.pre = load i32, ptr %i.bu, align 4, !tbaa !191
  br label %Vec_WrdGrow.exit.i

Vec_WrdGrow.exit.i:                               ; preds = %Vec_WrdGrow.exit.sink.split.i, %bb.ab, %bb.aa, %bb.v
  %i.co = phi i32 [ %.pre, %Vec_WrdGrow.exit.sink.split.i ], [ %i.bv, %bb.ab ], [ %i.bv, %bb.aa ], [ %i.bv, %bb.v ] ; 3 uses
  %i.cp = icmp slt i32 %i.co, %i.bj
  br i1 %i.cp, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %Vec_WrdGrow.exit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !32
  %i.cs = sext i32 %i.co to i64
  %i.ct = shl nsw i64 %i.cs, 3
  %scevgep.i = getelementptr i8, ptr %i.cr, i64 %i.ct
  %i.cu = xor i32 %i.co, -1
  %i.cv = add i32 %i.bj, %i.cu
  %i.cw = zext i32 %i.cv to i64
  %i.cx = shl nuw nsw i64 %i.cw, 3
  %i.cy = add nuw nsw i64 %i.cx, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.cy, i1 false), !tbaa !52
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %Vec_WrdGrow.exit.i
  store i32 %i.bj, ptr %i.bu, align 4, !tbaa !191
  %.val95.pre = load i32, ptr %i.at, align 4, !tbaa !23
  br label %Vec_WrdFillExtra.exit

Vec_WrdFillExtra.exit:                            ; preds = %._crit_edge.i, %bb.t, %Vec_WrdStart.exit
  %.val95 = phi i32 [ %.val95.pre, %._crit_edge.i ], [ %.val98.lcssa, %bb.t ], [ %.val98.lcssa, %Vec_WrdStart.exit ]
  %i.cz = load ptr, ptr @stdout, align 8, !tbaa !82
  %i.da = call ptr @Extra_ProgressBarStart(ptr noundef %i.cz, i32 noundef %.val95) #40 ; 4 uses
  %i.db = load i32, ptr %i.ao, align 8, !tbaa !28 ; 2 uses
  %.val94115 = load i32, ptr %i.at, align 4, !tbaa !23
  %i.dc = icmp slt i32 %i.db, %.val94115
  br i1 %i.dc, label %.lr.ph117, label %.critedge2

.lr.ph117:                                        ; preds = %Vec_WrdFillExtra.exit
  %i.dd = getelementptr i8, ptr %0, i64 48        ; 3 uses
  %.not.i107 = icmp eq ptr %i.da, null
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dg = sext i32 %i.db to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph117, %bb.aq
  %indvars.iv120 = phi i64 [ %i.dg, %.lr.ph117 ], [ %indvars.iv.next121, %bb.aq ] ; 9 uses
  %.val100 = load ptr, ptr %i.dd, align 8, !tbaa !26
  %i.dh = getelementptr inbounds [8 x i8], ptr %.val100, i64 %indvars.iv120
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !27
  %i.dj = trunc nsw i64 %indvars.iv120 to i32     ; 3 uses
  %i.dk = and i32 %i.dj, 255
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.ah, label %Extra_ProgressBarUpdate.exit

bb.ah:                                            ; preds = %bb.ag
  br i1 %.not.i107, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dm = load i32, ptr %i.da, align 4, !tbaa !43
  %i.dn = sext i32 %i.dm to i64
  %i.do = icmp slt i64 %indvars.iv120, %i.dn
  br i1 %i.do, label %Extra_ProgressBarUpdate.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void @Extra_ProgressBarUpdate_int(ptr noundef %i.da, i32 noundef %i.dj, ptr noundef null) #40
  br label %Extra_ProgressBarUpdate.exit

Extra_ProgressBarUpdate.exit:                     ; preds = %bb.aj, %bb.ai, %bb.ag
  %i.dp = getelementptr i8, ptr %i.di, i64 4
  %.val103 = load i32, ptr %i.dp, align 4
  %i.dq = lshr i32 %.val103, 3
  %i.dr = and i32 %i.dq, 31                       ; 2 uses
  %i.ds = load ptr, ptr %i.de, align 8, !tbaa !54 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 96
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !51 ; 10 uses
  %i.dv = ptrtoaddr ptr %i.du to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i32 0, ptr %i.a, align 4, !tbaa !43
  %i.dw = icmp eq i64 %indvars.iv120, 0
  br i1 %i.dw, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %Extra_ProgressBarUpdate.exit
  %i.dx = load i32, ptr %i.df, align 8, !tbaa !44 ; 2 uses
  %i.dy = icmp sgt i32 %i.dx, 0
  br i1 %i.dy, label %.lr.ph.preheader.i.i, label %If_DsdManComputeTruthPtr.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.ak
  %i.dz = zext nneg i32 %i.dx to i64
  %i.ea = shl nuw nsw i64 %i.dz, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.du, i8 0, i64 %i.ea, i1 false), !tbaa !52
  br label %If_DsdManComputeTruthPtr.exit

bb.al:                                            ; preds = %Extra_ProgressBarUpdate.exit
  %.val.i = load ptr, ptr %i.dd, align 8, !tbaa !26
  %i.eb = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %indvars.iv120
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !27
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = load i32, ptr %i.ed, align 4
  %i.ef = and i32 %i.ee, 7
  %i.eg = icmp eq i32 %i.ef, 2
  br i1 %i.eg, label %.preheader.i.i, label %bb.am

.preheader.i.i:                                   ; preds = %bb.al
  %i.eh = load ptr, ptr %i.ds, align 8, !tbaa !51 ; 7 uses
  %i.ei = load i32, ptr %i.df, align 8, !tbaa !44 ; 3 uses
  %i.ej = icmp sgt i32 %i.ei, 0
  br i1 %i.ej, label %.lr.ph18.preheader.i.i, label %If_DsdManComputeTruthPtr.exit

.lr.ph18.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.ek = ptrtoaddr ptr %i.eh to i64
  %wide.trip.count24.i.i = zext nneg i32 %i.ei to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ei, 4
  %i.el = sub i64 %i.ek, %i.dv
  %diff.check = icmp ugt i64 %i.el, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph18.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph18.preheader.i.i
  %n.vec = and i64 %wide.trip.count24.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %index ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %wide.load = load <2 x i64>, ptr %i.em, align 8, !tbaa !52
  %wide.load143 = load <2 x i64>, ptr %i.en, align 8, !tbaa !52
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %index ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store <2 x i64> %wide.load, ptr %i.eo, align 8, !tbaa !52
  store <2 x i64> %wide.load143, ptr %i.ep, align 8, !tbaa !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eq = icmp eq i64 %index.next, %n.vec
  br i1 %i.eq, label %middle.block, label %vector.body, !llvm.loop !329

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count24.i.i
  br i1 %cmp.n, label %If_DsdManComputeTruthPtr.exit, label %.lr.ph18.i.i.preheader

.lr.ph18.i.i.preheader:                           ; preds = %.lr.ph18.preheader.i.i, %middle.block
  %indvars.iv21.i.i.ph = phi i64 [ 0, %.lr.ph18.preheader.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count24.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph18.i.i.prol.loopexit, label %.lr.ph18.i.i.prol

.lr.ph18.i.i.prol:                                ; preds = %.lr.ph18.i.i.preheader, %.lr.ph18.i.i.prol
  %indvars.iv21.i.i.prol = phi i64 [ %indvars.iv.next22.i.i.prol, %.lr.ph18.i.i.prol ], [ %indvars.iv21.i.i.ph, %.lr.ph18.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph18.i.i.prol ], [ 0, %.lr.ph18.i.i.preheader ]
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv21.i.i.prol
  %i.es = load i64, ptr %i.er, align 8, !tbaa !52
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv21.i.i.prol
  store i64 %i.es, ptr %i.et, align 8, !tbaa !52
  %indvars.iv.next22.i.i.prol = add nuw nsw i64 %indvars.iv21.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i.i.prol.loopexit, label %.lr.ph18.i.i.prol, !llvm.loop !330

.lr.ph18.i.i.prol.loopexit:                       ; preds = %.lr.ph18.i.i.prol, %.lr.ph18.i.i.preheader
  %indvars.iv21.i.i.unr = phi i64 [ %indvars.iv21.i.i.ph, %.lr.ph18.i.i.preheader ], [ %indvars.iv.next22.i.i.prol, %.lr.ph18.i.i.prol ]
  %i.eu = sub nsw i64 %indvars.iv21.i.i.ph, %wide.trip.count24.i.i
  %i.ev = icmp ugt i64 %i.eu, -4
  br i1 %i.ev, label %If_DsdManComputeTruthPtr.exit, label %.lr.ph18.i.i

.lr.ph18.i.i:                                     ; preds = %.lr.ph18.i.i.prol.loopexit, %.lr.ph18.i.i
  %indvars.iv21.i.i = phi i64 [ %indvars.iv.next22.i.i.3, %.lr.ph18.i.i ], [ %indvars.iv21.i.i.unr, %.lr.ph18.i.i.prol.loopexit ] ; 6 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv21.i.i
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !52
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv21.i.i
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !52
  %indvars.iv.next22.i.i = add nuw nsw i64 %indvars.iv21.i.i, 1 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv.next22.i.i
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !52
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.next22.i.i
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !52
  %indvars.iv.next22.i.i.1 = add nuw nsw i64 %indvars.iv21.i.i, 2 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv.next22.i.i.1
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !52
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.next22.i.i.1
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !52
  %indvars.iv.next22.i.i.2 = add nuw nsw i64 %indvars.iv21.i.i, 3 ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv.next22.i.i.2
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !52
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.next22.i.i.2
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !52
  %indvars.iv.next22.i.i.3 = add nuw nsw i64 %indvars.iv21.i.i, 4 ; 2 uses
  %exitcond25.not.i.i.3 = icmp eq i64 %indvars.iv.next22.i.i.3, %wide.trip.count24.i.i
  br i1 %exitcond25.not.i.i.3, label %If_DsdManComputeTruthPtr.exit, label %.lr.ph18.i.i, !llvm.loop !331

bb.am:                                            ; preds = %bb.al
  %indvars.iv120.tr = trunc i64 %indvars.iv120 to i32
  %i.fi = shl nsw i32 %indvars.iv120.tr, 1
  call void @If_DsdManComputeTruth_rec(ptr noundef nonnull %0, i32 noundef %i.fi, ptr noundef %i.du, ptr noundef null, ptr noundef nonnull %i.a)
  br label %If_DsdManComputeTruthPtr.exit

If_DsdManComputeTruthPtr.exit:                    ; preds = %.lr.ph18.i.i.prol.loopexit, %.lr.ph18.i.i, %middle.block, %bb.ak, %.lr.ph.preheader.i.i, %.preheader.i.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br i1 %.not92, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %If_DsdManComputeTruthPtr.exit
  %i.fj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.109, i32 noundef %i.dj, i32 noundef %i.dr) ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %If_DsdManComputeTruthPtr.exit
  %i.fk = load ptr, ptr %i.bf, align 8, !tbaa !30
  %i.fl = load i32, ptr %i.al, align 4, !tbaa !31
  %i.fm = sext i32 %i.fl to i64
  %i.fn = mul nsw i64 %indvars.iv120, %i.fm
  %i.fo = getelementptr i8, ptr %i.fk, i64 8
  %.val102 = load ptr, ptr %i.fo, align 8, !tbaa !32
  %i.fp = getelementptr inbounds [8 x i8], ptr %.val102, i64 %i.fn ; 2 uses
  %i.fq = call i32 @Ifn_NtkMatch(ptr noundef nonnull %i.g, ptr noundef %i.du, i32 noundef %i.dr, i32 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef %i.fp) #40
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %.val104 = load ptr, ptr %i.dd, align 8, !tbaa !26
  %i.fs = getelementptr inbounds [8 x i8], ptr %.val104, i64 %indvars.iv120
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !27
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4
  %i.fw = or i32 %i.fv, 256
  store i32 %i.fw, ptr %i.fu, align 4
  %i.fx = load i32, ptr %i.al, align 4, !tbaa !31
  %i.fy = sext i32 %i.fx to i64
  %i.fz = shl nsw i64 %i.fy, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fp, i8 0, i64 %i.fz, i1 false)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %indvars.iv.next121 = add nsw i64 %indvars.iv120, 1 ; 2 uses
  %.val94 = load i32, ptr %i.at, align 4, !tbaa !23
  %i.ga = sext i32 %.val94 to i64
  %i.gb = icmp slt i64 %indvars.iv.next121, %i.ga
  br i1 %i.gb, label %bb.ag, label %.critedge2, !llvm.loop !332

.critedge2:                                       ; preds = %bb.aq, %Vec_WrdFillExtra.exit
  store i32 0, ptr %i.ao, align 8, !tbaa !28
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.gc, align 4, !tbaa !24
  call void @Extra_ProgressBarStop(ptr noundef %i.da) #40
  %.val = load i32, ptr %i.at, align 4, !tbaa !23
  %i.gd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, i32 noundef %.val) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.ge = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #40
  %i.gf = icmp slt i32 %i.ge, 0
  br i1 %i.gf, label %Abc_Clock.exit109, label %bb.ar

bb.ar:                                            ; preds = %.critedge2
  %i.gg = load i64, ptr %4, align 8, !tbaa !325
  %i.gh = mul nsw i64 %i.gg, 1000000
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !327
  %i.gk = sdiv i64 %i.gj, 1000
  %i.gl = add nsw i64 %i.gk, %i.gh
  br label %Abc_Clock.exit109

Abc_Clock.exit109:                                ; preds = %.critedge2, %bb.ar
  %.0.i108 = phi i64 [ %i.gl, %bb.ar ], [ -1, %.critedge2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %i.gm = add i64 %.0.i108, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.111)
  %i.gn = sitofp i64 %i.gm to double
  %i.go = fdiv double %i.gn, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.121, double noundef %i.go)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %Abc_Clock.exit109
  call void @free(ptr noundef %i.g) #40
  br label %bb.as

bb.as:                                            ; preds = %.sink.split, %Abc_Clock.exit
  ret void
}

declare ptr @Ifn_NtkParse(ptr noundef) local_unnamed_addr #6

declare i32 @Ifn_NtkInputNum(ptr noundef) local_unnamed_addr #6

declare i32 @Ifn_NtkLutSizeMax(ptr noundef) local_unnamed_addr #6

declare i32 @Ifn_NtkTtBits(ptr noundef) local_unnamed_addr #6

declare void @Ifn_NtkPrint(ptr noundef) local_unnamed_addr #6

declare i32 @Ifn_NtkMatch(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind uwtable
define noalias noundef nonnull ptr @Ifn_WorkerThread(ptr noundef %0) #27 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 620 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.l = load volatile i32, ptr %i.a, align 4, !tbaa !43
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.backedge, label %bb.c

.backedge:                                        ; preds = %bb.b, %Abc_Clock.exit15
  br label %bb.b, !llvm.loop !333

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.b, align 8, !tbaa !334
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @pthread_exit(ptr noundef null) #46
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.p = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #40
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %Abc_Clock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr %2, align 8, !tbaa !325
  %.neg16 = mul i64 %i.r, -1000000
  %i.s = load i64, ptr %i.c, align 8, !tbaa !327
  %.neg = sdiv i64 %i.s, -1000
  %.neg17 = add i64 %.neg, %.neg16
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.e, %bb.f
  %.0.i.neg = phi i64 [ %.neg17, %bb.f ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %i.t = load i32, ptr %i.e, align 8, !tbaa !337
  %i.u = sext i32 %i.t to i64
  %i.v = shl nsw i64 %i.u, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.d, i8 0, i64 %i.v, i1 false)
  %i.w = load ptr, ptr %0, align 8, !tbaa !338
  %i.x = load i32, ptr %i.g, align 4, !tbaa !339
  %i.y = load i32, ptr %i.h, align 4, !tbaa !340
  %i.z = call i32 @Ifn_NtkMatch(ptr noundef %i.w, ptr noundef nonnull %i.f, i32 noundef %i.x, i32 noundef %i.y, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.d) #40
  store i32 %i.z, ptr %i.i, align 8, !tbaa !341
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  %i.aa = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #40
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %Abc_Clock.exit15, label %bb.g

bb.g:                                             ; preds = %Abc_Clock.exit
  %i.ac = load i64, ptr %1, align 8, !tbaa !325
  %i.ad = mul nsw i64 %i.ac, 1000000
  %i.ae = load i64, ptr %i.j, align 8, !tbaa !327
  %i.af = sdiv i64 %i.ae, 1000
  %i.ag = add nsw i64 %i.af, %i.ad
  br label %Abc_Clock.exit15

Abc_Clock.exit15:                                 ; preds = %Abc_Clock.exit, %bb.g
  %.0.i14 = phi i64 [ %i.ag, %bb.g ], [ -1, %Abc_Clock.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  %i.ah = add i64 %.0.i14, %.0.i.neg
  %i.ai = load i64, ptr %i.k, align 8, !tbaa !342
  %i.aj = add nsw i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.k, align 8, !tbaa !342
  store i32 0, ptr %i.a, align 4, !tbaa !343
  br label %.backedge
}

; Function Attrs: noreturn
declare void @pthread_exit(ptr noundef) local_unnamed_addr #28

; Function Attrs: nounwind uwtable
define void @Id_DsdManTuneStr(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %9 = alloca %struct.timespec, align 8           ; 5 uses
  %i.b = alloca [100 x i64], align 16             ; 3 uses
  %10 = alloca [100 x %struct.Ifn_ThData_t_], align 16 ; 10 uses
  %i.c = ptrtoaddr ptr %10 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  %i.d = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %9) #40
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_3
begin_hunk_4_@Id_DsdManTuneThresh:bb.a
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.v ], [ %.val73.lcssa, %bb.p ]
  store i32 %spec.select.sink.i, ptr %i.z, align 8, !tbaa !196
  %.pre = load i32, ptr %i.al, align 4, !tbaa !191
  br label %Vec_WrdGrow.exit.i

Vec_WrdGrow.exit.i:                               ; preds = %Vec_WrdGrow.exit.sink.split.i, %bb.r, %bb.q, %bb.l
  %i.bf = phi i32 [ %.pre, %Vec_WrdGrow.exit.sink.split.i ], [ %i.am, %bb.r ], [ %i.am, %bb.q ], [ %i.am, %bb.l ] ; 3 uses
  %i.bg = icmp slt i32 %i.bf, %.val73.lcssa
  br i1 %i.bg, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %Vec_WrdGrow.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !32
  %i.bj = sext i32 %i.bf to i64
  %i.bk = shl nsw i64 %i.bj, 3
  %scevgep.i = getelementptr i8, ptr %i.bi, i64 %i.bk
  %i.bl = xor i32 %i.bf, -1
  %i.bm = add i32 %.val73.lcssa, %i.bl
  %i.bn = zext i32 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = add nuw nsw i64 %i.bo, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.bp, i1 false), !tbaa !52
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %Vec_WrdGrow.exit.i
  store i32 %.val73.lcssa, ptr %i.al, align 4, !tbaa !191
  %.val70.pre = load i32, ptr %i.m, align 4, !tbaa !23
  br label %Vec_WrdFillExtra.exit

Vec_WrdFillExtra.exit:                            ; preds = %._crit_edge.i, %bb.j, %Vec_WrdStart.exit
  %.val70 = phi i32 [ %.val70.pre, %._crit_edge.i ], [ %.val73.lcssa, %bb.j ], [ %.val73.lcssa, %Vec_WrdStart.exit ]
  %i.bq = load ptr, ptr @stdout, align 8, !tbaa !82
  %i.br = call ptr @Extra_ProgressBarStart(ptr noundef %i.bq, i32 noundef %.val70) #40 ; 4 uses
  %i.bs = load i32, ptr %i.h, align 8, !tbaa !28  ; 2 uses
  %.val69109 = load i32, ptr %i.m, align 4, !tbaa !23
  %i.bt = icmp slt i32 %i.bs, %.val69109
  br i1 %i.bt, label %.lr.ph111, label %.critedge2

.lr.ph111:                                        ; preds = %Vec_WrdFillExtra.exit
  %i.bu = getelementptr i8, ptr %0, i64 48        ; 3 uses
  %.not.i81 = icmp eq ptr %i.br, null
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not = icmp eq i32 %4, 0
  %.not64 = icmp eq i32 %1, 0
  %.not65 = icmp eq i32 %2, 0
  %.not66 = icmp eq i32 %3, 0
  %i.bx = sext i32 %i.bs to i64
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph111, %bb.ax
  %indvars.iv121 = phi i64 [ %i.bx, %.lr.ph111 ], [ %indvars.iv.next122, %bb.ax ] ; 9 uses
  %.val75 = load ptr, ptr %i.bu, align 8, !tbaa !26
  %i.by = getelementptr inbounds [8 x i8], ptr %.val75, i64 %indvars.iv121
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !27
  %i.ca = trunc nsw i64 %indvars.iv121 to i32     ; 3 uses
  %i.cb = and i32 %i.ca, 255
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.x, label %Extra_ProgressBarUpdate.exit

bb.x:                                             ; preds = %bb.w
  br i1 %.not.i81, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cd = load i32, ptr %i.br, align 4, !tbaa !43
  %i.ce = sext i32 %i.cd to i64
  %i.cf = icmp slt i64 %indvars.iv121, %i.ce
  br i1 %i.cf, label %Extra_ProgressBarUpdate.exit, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @Extra_ProgressBarUpdate_int(ptr noundef %i.br, i32 noundef %i.ca, ptr noundef null) #40
  br label %Extra_ProgressBarUpdate.exit

Extra_ProgressBarUpdate.exit:                     ; preds = %bb.z, %bb.y, %bb.w
  %i.cg = getelementptr i8, ptr %i.bz, i64 4
  %.val77 = load i32, ptr %i.cg, align 4
  %i.ch = lshr i32 %.val77, 3
  %i.ci = and i32 %i.ch, 31                       ; 13 uses
  %i.cj = icmp samesign ugt i32 %i.ci, 8
  br i1 %i.cj, label %bb.ax, label %bb.aa

bb.aa:                                            ; preds = %Extra_ProgressBarUpdate.exit
  %i.ck = load ptr, ptr %i.bv, align 8, !tbaa !54 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 96
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !51 ; 17 uses
  %i.cn = ptrtoaddr ptr %i.cm to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i32 0, ptr %i.a, align 4, !tbaa !43
  %i.co = icmp eq i64 %indvars.iv121, 0
  br i1 %i.co, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cp = load i32, ptr %i.bw, align 8, !tbaa !44 ; 2 uses
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph.preheader.i.i, label %If_DsdManComputeTruthPtr.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.ab
  %i.cr = zext nneg i32 %i.cp to i64
  %i.cs = shl nuw nsw i64 %i.cr, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cm, i8 0, i64 %i.cs, i1 false), !tbaa !52
  br label %If_DsdManComputeTruthPtr.exit

bb.ac:                                            ; preds = %bb.aa
  %.val.i = load ptr, ptr %i.bu, align 8, !tbaa !26
  %i.ct = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %indvars.iv121
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !27
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = and i32 %i.cw, 7
  %i.cy = icmp eq i32 %i.cx, 2
  br i1 %i.cy, label %.preheader.i.i91, label %bb.ad

.preheader.i.i91:                                 ; preds = %bb.ac
  %i.cz = load ptr, ptr %i.ck, align 8, !tbaa !51 ; 7 uses
  %i.da = load i32, ptr %i.bw, align 8, !tbaa !44 ; 3 uses
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %.lr.ph18.preheader.i.i, label %If_DsdManComputeTruthPtr.exit

.lr.ph18.preheader.i.i:                           ; preds = %.preheader.i.i91
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %wide.trip.count24.i.i = zext nneg i32 %i.da to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.da, 4
  %i.dd = sub i64 %i.dc, %i.cn
  %diff.check = icmp ugt i64 %i.dd, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph18.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph18.preheader.i.i
  %n.vec = and i64 %wide.trip.count24.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %index ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %wide.load = load <2 x i64>, ptr %i.de, align 8, !tbaa !52
  %wide.load158 = load <2 x i64>, ptr %i.df, align 8, !tbaa !52
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %index ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store <2 x i64> %wide.load, ptr %i.dg, align 8, !tbaa !52
  store <2 x i64> %wide.load158, ptr %i.dh, align 8, !tbaa !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !356

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count24.i.i
  br i1 %cmp.n, label %If_DsdManComputeTruthPtr.exit, label %.lr.ph18.i.i.preheader

.lr.ph18.i.i.preheader:                           ; preds = %.lr.ph18.preheader.i.i, %middle.block
  %indvars.iv21.i.i.ph = phi i64 [ 0, %.lr.ph18.preheader.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count24.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph18.i.i.prol.loopexit, label %.lr.ph18.i.i.prol

.lr.ph18.i.i.prol:                                ; preds = %.lr.ph18.i.i.preheader, %.lr.ph18.i.i.prol
  %indvars.iv21.i.i.prol = phi i64 [ %indvars.iv.next22.i.i.prol, %.lr.ph18.i.i.prol ], [ %indvars.iv21.i.i.ph, %.lr.ph18.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph18.i.i.prol ], [ 0, %.lr.ph18.i.i.preheader ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv21.i.i.prol
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !52
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv21.i.i.prol
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !52
  %indvars.iv.next22.i.i.prol = add nuw nsw i64 %indvars.iv21.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i.i.prol.loopexit, label %.lr.ph18.i.i.prol, !llvm.loop !357

.lr.ph18.i.i.prol.loopexit:                       ; preds = %.lr.ph18.i.i.prol, %.lr.ph18.i.i.preheader
  %indvars.iv21.i.i.unr = phi i64 [ %indvars.iv21.i.i.ph, %.lr.ph18.i.i.preheader ], [ %indvars.iv.next22.i.i.prol, %.lr.ph18.i.i.prol ]
  %i.dm = sub nsw i64 %indvars.iv21.i.i.ph, %wide.trip.count24.i.i
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %If_DsdManComputeTruthPtr.exit, label %.lr.ph18.i.i

.lr.ph18.i.i:                                     ; preds = %.lr.ph18.i.i.prol.loopexit, %.lr.ph18.i.i
  %indvars.iv21.i.i = phi i64 [ %indvars.iv.next22.i.i.3, %.lr.ph18.i.i ], [ %indvars.iv21.i.i.unr, %.lr.ph18.i.i.prol.loopexit ] ; 6 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv21.i.i
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !52
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv21.i.i
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !52
  %indvars.iv.next22.i.i = add nuw nsw i64 %indvars.iv21.i.i, 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.next22.i.i
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !52
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next22.i.i
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !52
  %indvars.iv.next22.i.i.1 = add nuw nsw i64 %indvars.iv21.i.i, 2 ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.next22.i.i.1
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !52
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next22.i.i.1
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !52
  %indvars.iv.next22.i.i.2 = add nuw nsw i64 %indvars.iv21.i.i, 3 ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.next22.i.i.2
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !52
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next22.i.i.2
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !52
  %indvars.iv.next22.i.i.3 = add nuw nsw i64 %indvars.iv21.i.i, 4 ; 2 uses
  %exitcond25.not.i.i.3 = icmp eq i64 %indvars.iv.next22.i.i.3, %wide.trip.count24.i.i
  br i1 %exitcond25.not.i.i.3, label %If_DsdManComputeTruthPtr.exit, label %.lr.ph18.i.i, !llvm.loop !358

bb.ad:                                            ; preds = %bb.ac
  %indvars.iv121.tr = trunc i64 %indvars.iv121 to i32
  %i.ea = shl nsw i32 %indvars.iv121.tr, 1
  call void @If_DsdManComputeTruth_rec(ptr noundef nonnull %0, i32 noundef %i.ea, ptr noundef %i.cm, ptr noundef null, ptr noundef nonnull %i.a)
  br label %If_DsdManComputeTruthPtr.exit

If_DsdManComputeTruthPtr.exit:                    ; preds = %.lr.ph18.i.i.prol.loopexit, %.lr.ph18.i.i, %middle.block, %bb.ab, %.lr.ph.preheader.i.i, %.preheader.i.i91, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br i1 %.not, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %If_DsdManComputeTruthPtr.exit
  %i.eb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.109, i32 noundef %i.ca, i32 noundef %i.ci) ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %If_DsdManComputeTruthPtr.exit
  br i1 %.not64, label %bb.at, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not.i82 = icmp eq i32 %i.ci, 0
  br i1 %.not.i82, label %Abc_TtIsUnate.exit.thread95, label %.lr.ph.i83

.lr.ph.i83:                                       ; preds = %bb.ag
  %i.ec = icmp samesign ult i32 %i.ci, 7
  %i.ed = add nsw i32 %i.ci, -6                   ; 3 uses
  %i.ee = shl nuw nsw i32 1, %i.ed
  %i.ef = zext nneg i32 %i.ee to i64
  %.idx.i.i = shl nuw nsw i64 %i.ef, 3
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx.i.i ; 2 uses
  br i1 %i.ec, label %.lr.ph.split.us.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i83
  %wide.trip.count.i = zext nneg i32 %i.ci to i64
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i83
  %i.eh = load i64, ptr %i.cm, align 8, !tbaa !52 ; 24 uses
  %i.ei = shl i64 %i.eh, 1
  %i.ej = and i64 %i.ei, -6148914691236517206
  %i.ek = xor i64 %i.ej, -6148914691236517206
  %i.el = and i64 %i.ek, %i.eh
  %.not.us.i = icmp eq i64 %i.el, 0
  br i1 %.not.us.i, label %Abc_TtNegVar.exit.thread25.us.i, label %Abc_TtPosVar.exit.us.i

Abc_TtPosVar.exit.us.i:                           ; preds = %.lr.ph.split.us.i
  %i.em = lshr i64 %i.eh, 1
  %i.en = and i64 %i.em, 6148914691236517205
  %i.eo = xor i64 %i.en, 6148914691236517205
  %i.ep = and i64 %i.eo, %i.eh
  %.not34.us.i = icmp eq i64 %i.ep, 0
  br i1 %.not34.us.i, label %Abc_TtNegVar.exit.thread25.us.i, label %Abc_TtIsUnate.exit.thread

Abc_TtNegVar.exit.thread25.us.i:                  ; preds = %Abc_TtPosVar.exit.us.i, %.lr.ph.split.us.i
  %exitcond56.not.i = icmp eq i32 %i.ci, 1
  br i1 %exitcond56.not.i, label %Abc_TtIsUnate.exit.thread95, label %Abc_TtNegVar.exit.us.i.1

Abc_TtNegVar.exit.us.i.1:                         ; preds = %Abc_TtNegVar.exit.thread25.us.i
  %i.eq = shl i64 %i.eh, 2
  %i.er = and i64 %i.eq, -3689348814741910324
  %i.es = xor i64 %i.er, -3689348814741910324
  %i.et = and i64 %i.es, %i.eh
  %.not.us.i.1 = icmp eq i64 %i.et, 0
  br i1 %.not.us.i.1, label %Abc_TtNegVar.exit.thread25.us.i.1, label %Abc_TtPosVar.exit.us.i.1

Abc_TtPosVar.exit.us.i.1:                         ; preds = %Abc_TtNegVar.exit.us.i.1
  %i.eu = lshr i64 %i.eh, 2
  %i.ev = and i64 %i.eu, 3689348814741910323
  %i.ew = xor i64 %i.ev, 3689348814741910323
  %i.ex = and i64 %i.ew, %i.eh
  %.not34.us.i.1 = icmp eq i64 %i.ex, 0
  br i1 %.not34.us.i.1, label %Abc_TtNegVar.exit.thread25.us.i.1, label %Abc_TtIsUnate.exit.thread

Abc_TtNegVar.exit.thread25.us.i.1:                ; preds = %Abc_TtPosVar.exit.us.i.1, %Abc_TtNegVar.exit.us.i.1
  %exitcond56.not.i.1 = icmp eq i32 %i.ci, 2
  br i1 %exitcond56.not.i.1, label %Abc_TtIsUnate.exit.thread95, label %Abc_TtNegVar.exit.us.i.2

Abc_TtNegVar.exit.us.i.2:                         ; preds = %Abc_TtNegVar.exit.thread25.us.i.1
  %i.ey = shl i64 %i.eh, 4
  %i.ez = and i64 %i.ey, -1085102592571150096
  %i.fa = xor i64 %i.ez, -1085102592571150096
  %i.fb = and i64 %i.fa, %i.eh
  %.not.us.i.2 = icmp eq i64 %i.fb, 0
  br i1 %.not.us.i.2, label %Abc_TtNegVar.exit.thread25.us.i.2, label %Abc_TtPosVar.exit.us.i.2

Abc_TtPosVar.exit.us.i.2:                         ; preds = %Abc_TtNegVar.exit.us.i.2
  %i.fc = lshr i64 %i.eh, 4
  %i.fd = and i64 %i.fc, 1085102592571150095
  %i.fe = xor i64 %i.fd, 1085102592571150095
  %i.ff = and i64 %i.fe, %i.eh
  %.not34.us.i.2 = icmp eq i64 %i.ff, 0
  br i1 %.not34.us.i.2, label %Abc_TtNegVar.exit.thread25.us.i.2, label %Abc_TtIsUnate.exit.thread

Abc_TtNegVar.exit.thread25.us.i.2:                ; preds = %Abc_TtPosVar.exit.us.i.2, %Abc_TtNegVar.exit.us.i.2
  %exitcond56.not.i.2 = icmp eq i32 %i.ci, 3
  br i1 %exitcond56.not.i.2, label %Abc_TtIsUnate.exit.thread95, label %Abc_TtNegVar.exit.us.i.3

Abc_TtNegVar.exit.us.i.3:                         ; preds = %Abc_TtNegVar.exit.thread25.us.i.2
  %i.fg = shl i64 %i.eh, 8
  %i.fh = and i64 %i.fg, -71777214294589696
  %i.fi = xor i64 %i.fh, -71777214294589696
  %i.fj = and i64 %i.fi, %i.eh
  %.not.us.i.3 = icmp eq i64 %i.fj, 0
  br i1 %.not.us.i.3, label %Abc_TtNegVar.exit.thread25.us.i.3, label %Abc_TtPosVar.exit.us.i.3

Abc_TtPosVar.exit.us.i.3:                         ; preds = %Abc_TtNegVar.exit.us.i.3
  %i.fk = lshr i64 %i.eh, 8
  %i.fl = and i64 %i.fk, 71777214294589695
  %i.fm = xor i64 %i.fl, 71777214294589695
  %i.fn = and i64 %i.fm, %i.eh
  %.not34.us.i.3 = icmp eq i64 %i.fn, 0
  br i1 %.not34.us.i.3, label %Abc_TtNegVar.exit.thread25.us.i.3, label %Abc_TtIsUnate.exit.thread

Abc_TtNegVar.exit.thread25.us.i.3:                ; preds = %Abc_TtPosVar.exit.us.i.3, %Abc_TtNegVar.exit.us.i.3
  %exitcond56.not.i.3 = icmp eq i32 %i.ci, 4
  br i1 %exitcond56.not.i.3, label %Abc_TtIsUnate.exit.thread95, label %Abc_TtNegVar.exit.us.i.4

Abc_TtNegVar.exit.us.i.4:                         ; preds = %Abc_TtNegVar.exit.thread25.us.i.3
  %i.fo = shl i64 %i.eh, 16
  %i.fp = and i64 %i.fo, -281470681808896
  %i.fq = xor i64 %i.fp, -281470681808896
  %i.fr = and i64 %i.fq, %i.eh
  %.not.us.i.4 = icmp eq i64 %i.fr, 0
  br i1 %.not.us.i.4, label %Abc_TtNegVar.exit.thread25.us.i.4, label %Abc_TtPosVar.exit.us.i.4

Abc_TtPosVar.exit.us.i.4:                         ; preds = %Abc_TtNegVar.exit.us.i.4
  %i.fs = lshr i64 %i.eh, 16
  %i.ft = and i64 %i.fs, 281470681808895
  %i.fu = xor i64 %i.ft, 281470681808895
  %i.fv = and i64 %i.fu, %i.eh
  %.not34.us.i.4 = icmp eq i64 %i.fv, 0
  br i1 %.not34.us.i.4, label %Abc_TtNegVar.exit.thread25.us.i.4, label %Abc_TtIsUnate.exit.thread

Abc_TtNegVar.exit.thread25.us.i.4:                ; preds = %Abc_TtPosVar.exit.us.i.4, %Abc_TtNegVar.exit.us.i.4
  %exitcond56.not.i.4 = icmp eq i32 %i.ci, 5
  br i1 %exitcond56.not.i.4, label %Abc_TtIsUnate.exit.thread95, label %Abc_TtNegVar.exit.us.i.5

Abc_TtNegVar.exit.us.i.5:                         ; preds = %Abc_TtNegVar.exit.thread25.us.i.4
  %i.fw = xor i64 %i.eh, -1
  %i.fx = shl i64 %i.fw, 32
  %i.fy = and i64 %i.fx, %i.eh
  %.not.us.i.5 = icmp eq i64 %i.fy, 0
  br i1 %.not.us.i.5, label %Abc_TtIsUnate.exit.thread95, label %Abc_TtPosVar.exit.us.i.5

Abc_TtPosVar.exit.us.i.5:                         ; preds = %Abc_TtNegVar.exit.us.i.5
  %i.fz = xor i64 %i.eh, -1
  %i.ga = lshr i64 %i.fz, 32
  %i.gb = and i64 %i.ga, %i.eh
  %.not34.us.i.5 = icmp eq i64 %i.gb, 0
  br i1 %.not34.us.i.5, label %Abc_TtIsUnate.exit.thread95, label %Abc_TtIsUnate.exit.thread

.lr.ph.split.i:                                   ; preds = %Abc_TtNegVar.exit.thread25.i, %.lr.ph.split.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.preheader.i ], [ %indvars.iv.next.i, %Abc_TtNegVar.exit.thread25.i ] ; 5 uses
  %i.gc = icmp samesign ult i64 %indvars.iv.i, 6  ; 2 uses
  %i.gd = trunc i64 %indvars.iv.i to i32          ; 4 uses
  br i1 %i.gc, label %bb.ah, label %.preheader.lr.ph.i.i

bb.ah:                                            ; preds = %.lr.ph.split.i
  %i.ge = shl nuw nsw i32 1, %i.gd
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv.i
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !52
  br label %bb.aj

bb.ai:                                            ; preds = %bb.aj
  %indvars.iv.next54.i.i = add nuw nsw i64 %indvars.iv53.i.i, 1 ; 2 uses
  %i.gi = trunc nuw i64 %indvars.iv.next54.i.i to i32
  %.036.highbits.i.i = lshr i32 %i.gi, %i.ed
  %i.gj = icmp eq i32 %.036.highbits.i.i, 0
  br i1 %i.gj, label %bb.aj, label %Abc_TtNegVar.exit.thread25.i, !llvm.loop !359

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %indvars.iv53.i.i = phi i64 [ 0, %bb.ah ], [ %indvars.iv.next54.i.i, %bb.ai ] ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv53.i.i
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !52 ; 2 uses
  %i.gm = shl i64 %i.gl, %i.gf
  %i.gn = xor i64 %i.gm, -1
  %i.go = and i64 %i.gh, %i.gn
  %i.gp = and i64 %i.go, %i.gl
  %.not44.i.i = icmp eq i64 %i.gp, 0
  br i1 %.not44.i.i, label %bb.ai, label %.loopexit.i

.preheader.lr.ph.i.i:                             ; preds = %.lr.ph.split.i
  %i.gq = add i32 %i.gd, -6                       ; 2 uses
  %i.gr = shl nuw nsw i32 1, %i.gq
  %i.gs = shl nuw nsw i32 2, %i.gq
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = zext nneg i32 %i.gr to i64              ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.am, %.preheader.lr.ph.i.i
  %.03848.i.i = phi ptr [ %i.cm, %.preheader.lr.ph.i.i ], [ %i.gz, %bb.am ] ; 3 uses
  %invariant.gep.i.i = getelementptr inbounds nuw [8 x i8], ptr %.03848.i.i, i64 %i.gu
  br label %bb.al

bb.ak:                                            ; preds = %bb.al
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.gu
  br i1 %exitcond.not.i.i, label %bb.am, label %bb.al, !llvm.loop !360

bb.al:                                            ; preds = %bb.ak, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ak ] ; 3 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.03848.i.i, i64 %indvars.iv.i.i
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !52
  %gep.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
end_hunk_4
