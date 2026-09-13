Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sscSim?download=true
inline.NumInlined: 97
inline.NumDeleted: 38
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@Ssc_GiaRandomPiPattern:bb.a

.lr.ph.i.i:                                       ; preds = %Vec_WrdGrow.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.t = zext nneg i32 %i.i to i64
  %i.u = shl nuw nsw i64 %i.t, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.u, i1 false), !tbaa !41
  br label %Ssc_GiaResetPiPattern.exit

Ssc_GiaResetPiPattern.exit:                       ; preds = %Vec_WrdGrow.exit.i.i, %.lr.ph.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.i, ptr %i.v, align 4, !tbaa !13
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.x = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.y = getelementptr i8, ptr %i.w, i64 8
  %.val.i22 = load ptr, ptr %i.y, align 8, !tbaa !14 ; 4 uses
  %.val24 = load i32, ptr %i.x, align 8, !tbaa !42
  %.val2025 = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.z = getelementptr i8, ptr %.val2025, i64 4
  %.val20.val26 = load i32, ptr %i.z, align 4, !tbaa !40
  %i.aa = icmp sgt i32 %.val20.val26, %.val24
  br i1 %i.aa, label %.lr.ph29, label %._crit_edge30

.lr.ph29:                                         ; preds = %Ssc_GiaResetPiPattern.exit
  %.not = icmp eq ptr %2, null
  %i.ab = getelementptr i8, ptr %2, i64 8         ; 2 uses
  %i.ac = icmp sgt i32 %1, 1                      ; 2 uses
  %i.ad = sext i32 %1 to i64                      ; 4 uses
  br i1 %.not, label %.lr.ph29.split.us, label %.lr.ph29.split

.lr.ph29.split.us:                                ; preds = %.lr.ph29
  br i1 %i.ac, label %.lr.ph.us.us.preheader, label %.lr.ph29.split.us.split

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph29.split.us
  %wide.trip.count52 = zext nneg i32 %1 to i64
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge.us.us
  %.01628.us.us = phi i32 [ %i.at, %._crit_edge.us.us ], [ 0, %.lr.ph.us.us.preheader ]
  %.01727.us.us = phi ptr [ %i.au, %._crit_edge.us.us ], [ %.val.i22, %.lr.ph.us.us.preheader ] ; 3 uses
  %i.ae = tail call i32 @Gia_ManRandom(i32 noundef 0) #16
  %i.af = zext i32 %i.ae to i64
  %i.ag = shl nuw i64 %i.af, 32
  %i.ah = tail call i32 @Gia_ManRandom(i32 noundef 0) #16
  %i.ai = zext i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = or i64 %i.ag, %i.aj
  %i.al = or disjoint i64 %i.ak, 2
  store i64 %i.al, ptr %.01727.us.us, align 8, !tbaa !41
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.us.us
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %bb.h ], [ 1, %.lr.ph.us.us ] ; 2 uses
  %i.am = tail call i32 @Gia_ManRandom(i32 noundef 0) #16
  %i.an = zext i32 %i.am to i64
  %i.ao = shl nuw i64 %i.an, 32
  %i.ap = tail call i32 @Gia_ManRandom(i32 noundef 0) #16
  %i.aq = zext i32 %i.ap to i64
  %i.ar = or disjoint i64 %i.ao, %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.01727.us.us, i64 %indvars.iv49
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !41
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %exitcond53.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count52
  br i1 %exitcond53.not, label %._crit_edge.us.us, label %bb.h, !llvm.loop !53

._crit_edge.us.us:                                ; preds = %bb.h
  %i.at = add nuw nsw i32 %.01628.us.us, 1        ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.01727.us.us, i64 %i.ad
  %.val.us.us = load i32, ptr %i.x, align 8, !tbaa !42
  %.val20.us.us = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.av = getelementptr i8, ptr %.val20.us.us, i64 4
  %.val20.val.us.us = load i32, ptr %i.av, align 4, !tbaa !40
  %i.aw = sub nsw i32 %.val20.val.us.us, %.val.us.us
  %i.ax = icmp slt i32 %i.at, %i.aw
  br i1 %i.ax, label %.lr.ph.us.us, label %._crit_edge30, !llvm.loop !54

.lr.ph29.split.us.split:                          ; preds = %.lr.ph29.split.us, %.lr.ph29.split.us.split
  %.01628.us = phi i32 [ %i.bg, %.lr.ph29.split.us.split ], [ 0, %.lr.ph29.split.us ]
  %.01727.us = phi ptr [ %i.bh, %.lr.ph29.split.us.split ], [ %.val.i22, %.lr.ph29.split.us ] ; 2 uses
  %i.ay = tail call i32 @Gia_ManRandom(i32 noundef 0) #16
  %i.az = zext i32 %i.ay to i64
  %i.ba = shl nuw i64 %i.az, 32
  %i.bb = tail call i32 @Gia_ManRandom(i32 noundef 0) #16
  %i.bc = zext i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 2
  %i.be = or i64 %i.ba, %i.bd
  %i.bf = or disjoint i64 %i.be, 2
  store i64 %i.bf, ptr %.01727.us, align 8, !tbaa !41
  %i.bg = add nuw nsw i32 %.01628.us, 1           ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %.01727.us, i64 %i.ad
  %.val.us = load i32, ptr %i.x, align 8, !tbaa !42
  %.val20.us = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.bi = getelementptr i8, ptr %.val20.us, i64 4
  %.val20.val.us = load i32, ptr %i.bi, align 4, !tbaa !40
  %i.bj = sub nsw i32 %.val20.val.us, %.val.us
  %i.bk = icmp slt i32 %i.bg, %i.bj
  br i1 %i.bk, label %.lr.ph29.split.us.split, label %._crit_edge30, !llvm.loop !54

.lr.ph29.split:                                   ; preds = %.lr.ph29
  br i1 %i.ac, label %.lr.ph.us33.preheader, label %.lr.ph29.split.split

.lr.ph.us33.preheader:                            ; preds = %.lr.ph29.split
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph.us33

.lr.ph.us33:                                      ; preds = %.lr.ph.us33.preheader, %._crit_edge.us35
  %indvars.iv46 = phi i64 [ 0, %.lr.ph.us33.preheader ], [ %indvars.iv.next47, %._crit_edge.us35 ] ; 2 uses
  %.01727.us32 = phi ptr [ %.val.i22, %.lr.ph.us33.preheader ], [ %i.cd, %._crit_edge.us35 ] ; 3 uses
  %.val21.us = load ptr, ptr %i.ab, align 8, !tbaa !43
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.val21.us, i64 %indvars.iv46
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !44
  %i.bn = tail call i32 @Gia_ManRandom(i32 noundef 0) #16
  %i.bo = zext i32 %i.bn to i64
  %i.bp = shl nuw i64 %i.bo, 32
  %i.bq = tail call i32 @Gia_ManRandom(i32 noundef 0) #16
  %i.br = zext i32 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 1
  %i.bt = sext i32 %i.bm to i64
  %i.bu = or i64 %i.bp, %i.bt
  %i.bv = or i64 %i.bu, %i.bs
  store i64 %i.bv, ptr %.01727.us32, align 8, !tbaa !41
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.us33
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %bb.i ], [ 1, %.lr.ph.us33 ] ; 2 uses
  %i.bw = tail call i32 @Gia_ManRandom(i32 noundef 0) #16
  %i.bx = zext i32 %i.bw to i64
  %i.by = shl nuw i64 %i.bx, 32
  %i.bz = tail call i32 @Gia_ManRandom(i32 noundef 0) #16
  %i.ca = zext i32 %i.bz to i64
  %i.cb = or disjoint i64 %i.by, %i.ca
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.01727.us32, i64 %indvars.iv43
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !41
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next44, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us35, label %bb.i, !llvm.loop !53

._crit_edge.us35:                                 ; preds = %bb.i
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.01727.us32, i64 %i.ad
  %.val.us36 = load i32, ptr %i.x, align 8, !tbaa !42
  %.val20.us37 = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.ce = getelementptr i8, ptr %.val20.us37, i64 4
  %.val20.val.us38 = load i32, ptr %i.ce, align 4, !tbaa !40
  %i.cf = sub nsw i32 %.val20.val.us38, %.val.us36
  %i.cg = sext i32 %i.cf to i64
  %i.ch = icmp slt i64 %indvars.iv.next47, %i.cg
  br i1 %i.ch, label %.lr.ph.us33, label %._crit_edge30, !llvm.loop !54

.lr.ph29.split.split:                             ; preds = %.lr.ph29.split, %.lr.ph29.split.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph29.split.split ], [ 0, %.lr.ph29.split ] ; 2 uses
  %.01727 = phi ptr [ %i.ct, %.lr.ph29.split.split ], [ %.val.i22, %.lr.ph29.split ] ; 2 uses
  %.val21 = load ptr, ptr %i.ab, align 8, !tbaa !43
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.val21, i64 %indvars.iv
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !44
  %i.ck = tail call i32 @Gia_ManRandom(i32 noundef 0) #16
  %i.cl = zext i32 %i.ck to i64
  %i.cm = shl nuw i64 %i.cl, 32
  %i.cn = tail call i32 @Gia_ManRandom(i32 noundef 0) #16
  %i.co = zext i32 %i.cn to i64
  %i.cp = shl nuw nsw i64 %i.co, 1
  %i.cq = sext i32 %i.cj to i64
  %i.cr = or i64 %i.cm, %i.cq
  %i.cs = or i64 %i.cr, %i.cp
  store i64 %i.cs, ptr %.01727, align 8, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %.01727, i64 %i.ad
  %.val = load i32, ptr %i.x, align 8, !tbaa !42
  %.val20 = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.cu = getelementptr i8, ptr %.val20, i64 4
  %.val20.val = load i32, ptr %i.cu, align 4, !tbaa !40
  %i.cv = sub nsw i32 %.val20.val, %.val
  %i.cw = sext i32 %i.cv to i64
  %i.cx = icmp slt i64 %indvars.iv.next, %i.cw
  br i1 %i.cx, label %.lr.ph29.split.split, label %._crit_edge30, !llvm.loop !54

._crit_edge30:                                    ; preds = %.lr.ph29.split.split, %._crit_edge.us35, %.lr.ph29.split.us.split, %._crit_edge.us.us, %Ssc_GiaResetPiPattern.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @Ssc_GiaPrintPiPatterns(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
.critedge:
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Ssc_GiaTransferPiPattern(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 872 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val.i = load i32, ptr %i.c, align 4, !tbaa !13
  %i.d = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %.val2.i = load i32, ptr %i.d, align 8, !tbaa !42 ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 64         ; 2 uses
  %.val3.i = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.f = getelementptr i8, ptr %.val3.i, i64 4
  %.val3.val.i = load i32, ptr %i.f, align 4, !tbaa !40
  %i.g = sub nsw i32 %.val3.val.i, %.val2.i
  %i.h = sdiv i32 %.val.i, %i.g                   ; 10 uses
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 3                      ; 2 uses
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #18 ; 17 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.k, i8 -1, i64 %i.j, i1 false)
  %i.l = getelementptr i8, ptr %1, i64 72
  %.val14.i = load ptr, ptr %i.l, align 8, !tbaa !45 ; 2 uses
  %i.m = getelementptr i8, ptr %.val14.i, i64 4
  %.val14.val.i = load i32, ptr %i.m, align 4, !tbaa !40
  %i.n = sub nsw i32 %.val14.val.i, %.val2.i      ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i, label %Ssc_GiaGetCareMask.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.p = getelementptr i8, ptr %1, i64 32
  %.val15.i = load ptr, ptr %i.p, align 8, !tbaa !46
  %.not.i = icmp eq ptr %.val15.i, null
  %i.q = icmp slt i32 %i.h, 1
  %wide.trip.count.i.i = zext i32 %i.h to i64     ; 3 uses
  %brmerge.i = or i1 %i.q, %.not.i
  br i1 %brmerge.i, label %Ssc_GiaGetCareMask.exit, label %.lr.ph.split.split.i

.lr.ph.split.split.i:                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.s = getelementptr i8, ptr %.val14.i, i64 8
  %.val16.val.i = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !47
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !14
  %wide.trip.count.i = zext nneg i32 %i.n to i64
  %min.iters.check = icmp ult i32 %i.h, 4
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %Ssc_SimAnd.exit.loopexit.i, %.lr.ph.split.split.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.split.i ], [ %indvars.iv.next.i, %Ssc_SimAnd.exit.loopexit.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val16.val.i, i64 %indvars.iv.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !44
  %i.x = mul nsw i32 %i.w, %i.h
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %.val.i.i.i, i64 %i.y ; 2 uses
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.aa, align 8, !tbaa !41
  %wide.load93.a = load <2 x i64>, ptr %i.ab, align 8, !tbaa !41
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load94.a = load <2 x i64>, ptr %i.ac, align 8, !tbaa !41
  %wide.load95 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !41
  %i.ae = and <2 x i64> %wide.load94.a, %wide.load
  %i.af = and <2 x i64> %wide.load95, %wide.load93.a
  store <2 x i64> %i.ae, ptr %i.aa, align 8, !tbaa !41
  store <2 x i64> %i.af, ptr %i.ab, align 8, !tbaa !41
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %Ssc_SimAnd.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i.i ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.i.i
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !41
  %i.al = and i64 %i.ak, %i.ai
  store i64 %i.al, ptr %i.ah, align 8, !tbaa !41
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %Ssc_SimAnd.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !56

Ssc_SimAnd.exit.loopexit.i:                       ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Ssc_GiaGetCareMask.exit, label %.lr.ph.preheader.i.i, !llvm.loop !1

Ssc_GiaGetCareMask.exit:                          ; preds = %Ssc_SimAnd.exit.loopexit.i, %bb.a, %.lr.ph.i
  %i.am = icmp sgt i32 %i.h, 0
  br i1 %i.am, label %.lr.ph.preheader.i, label %bb.b

.lr.ph.preheader.i:                               ; preds = %Ssc_GiaGetCareMask.exit
  %wide.trip.count.i49 = zext nneg i32 %i.h to i64 ; 13 uses
  %min.iters.check97 = icmp ult i32 %i.h, 4
  br i1 %min.iters.check97, label %.lr.ph.i50.preheader, label %vector.ph98

vector.ph98:                                      ; preds = %.lr.ph.preheader.i
  %n.vec99 = and i64 %wide.trip.count.i49, 2147483644 ; 3 uses
  br label %vector.body100

vector.body100:                                   ; preds = %vector.body100, %vector.ph98
  %index101 = phi i64 [ 0, %vector.ph98 ], [ %index.next105, %vector.body100 ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph98 ], [ %i.at, %vector.body100 ]
  %vec.phi102 = phi <2 x i32> [ zeroinitializer, %vector.ph98 ], [ %i.au, %vector.body100 ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index101 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load103.a = load <2 x i64>, ptr %i.an, align 8, !tbaa !41
  %wide.load104 = load <2 x i64>, ptr %i.ao, align 8, !tbaa !41
  %i.ap = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load103.a)
  %i.aq = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load104)
  %i.ar = trunc nuw nsw <2 x i64> %i.ap to <2 x i32>
  %i.as = trunc nuw nsw <2 x i64> %i.aq to <2 x i32>
  %i.at = add <2 x i32> %vec.phi, %i.ar           ; 2 uses
  %i.au = add <2 x i32> %vec.phi102, %i.as        ; 2 uses
  %index.next105 = add nuw i64 %index101, 4       ; 2 uses
  %i.av = icmp eq i64 %index.next105, %n.vec99
  br i1 %i.av, label %middle.block106, label %vector.body100, !llvm.loop !57

middle.block106:                                  ; preds = %vector.body100
  %bin.rdx = add <2 x i32> %i.au, %i.at
  %i.aw = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n107 = icmp eq i64 %n.vec99, %wide.trip.count.i49
  br i1 %cmp.n107, label %Ssc_SimCountBits.exit, label %.lr.ph.i50.preheader

.lr.ph.i50.preheader:                             ; preds = %.lr.ph.preheader.i, %middle.block106
  %indvars.iv.i51.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec99, %middle.block106 ]
  %.08.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.aw, %middle.block106 ]
  br label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.lr.ph.i50.preheader, %.lr.ph.i50
  %indvars.iv.i51 = phi i64 [ %indvars.iv.next.i52, %.lr.ph.i50 ], [ %indvars.iv.i51.ph, %.lr.ph.i50.preheader ] ; 2 uses
  %.08.i = phi i32 [ %i.bb, %.lr.ph.i50 ], [ %.08.i.ph, %.lr.ph.i50.preheader ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i51
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !41
  %i.az = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ay)
  %i.ba = trunc nuw nsw i64 %i.az to i32
  %i.bb = add nuw nsw i32 %.08.i, %i.ba           ; 2 uses
  %indvars.iv.next.i52 = add nuw nsw i64 %indvars.iv.i51, 1 ; 2 uses
  %exitcond.not.i53 = icmp eq i64 %indvars.iv.next.i52, %wide.trip.count.i49
  br i1 %exitcond.not.i53, label %Ssc_SimCountBits.exit, label %.lr.ph.i50, !llvm.loop !58

Ssc_SimCountBits.exit:                            ; preds = %.lr.ph.i50, %middle.block106
  %.lcssa = phi i32 [ %i.aw, %middle.block106 ], [ %i.bb, %.lr.ph.i50 ] ; 4 uses
  %i.bc = icmp eq i32 %.lcssa, 0
  br i1 %i.bc, label %.sink.split, label %bb.c

bb.b:                                             ; preds = %Ssc_GiaGetCareMask.exit
  %.not45 = icmp eq ptr %i.k, null
  br i1 %.not45, label %bb.j, label %.sink.split

bb.c:                                             ; preds = %Ssc_SimCountBits.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 836
  store i32 0, ptr %i.bd, align 4, !tbaa !37
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !38 ; 3 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.d, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load i32, ptr %i.bf, align 8, !tbaa !16
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %calloc.i.i.i = tail call noalias noundef dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 2 uses
  store ptr %calloc.i.i.i, ptr %i.be, align 8, !tbaa !38
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %i.bh = phi i32 [ 0, %bb.d ], [ %.pre.i, %._crit_edge.i ]
  %i.bi = phi ptr [ %calloc.i.i.i, %bb.d ], [ %i.bf, %._crit_edge.i ] ; 4 uses
  %i.bj = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %.val.i54 = load ptr, ptr %i.bj, align 8, !tbaa !39
  %i.bk = getelementptr i8, ptr %.val.i54, i64 4
  %.val.val.i = load i32, ptr %i.bk, align 4, !tbaa !40
  %i.bl = mul nsw i32 %.val.val.i, %i.h           ; 6 uses
  %.not.i.i.i = icmp slt i32 %i.bh, %i.bl
  br i1 %.not.i.i.i, label %bb.f, label %Vec_WrdGrow.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !14 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.bn, null
  %i.bo = sext i32 %i.bl to i64
  %i.bp = shl nsw i64 %i.bo, 3                    ; 2 uses
  br i1 %.not9.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = tail call ptr @realloc(ptr noundef nonnull %i.bn, i64 noundef %i.bp) #17
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.br = tail call noalias ptr @malloc(i64 noundef %i.bp) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bs = phi ptr [ %i.bq, %bb.g ], [ %i.br, %bb.h ]
  store ptr %i.bs, ptr %i.bm, align 8, !tbaa !14
  store i32 %i.bl, ptr %i.bi, align 8, !tbaa !16
  br label %Vec_WrdGrow.exit.i.i

Vec_WrdGrow.exit.i.i:                             ; preds = %bb.i, %bb.e
  %i.bt = icmp sgt i32 %i.bl, 0
  br i1 %i.bt, label %.lr.ph.i.i55, label %Ssc_GiaResetPiPattern.exit

.lr.ph.i.i55:                                     ; preds = %Vec_WrdGrow.exit.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !14
  %i.bw = zext nneg i32 %i.bl to i64
  %i.bx = shl nuw nsw i64 %i.bw, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bv, i8 0, i64 %i.bx, i1 false), !tbaa !41
  br label %Ssc_GiaResetPiPattern.exit

Ssc_GiaResetPiPattern.exit:                       ; preds = %Vec_WrdGrow.exit.i.i, %.lr.ph.i.i55
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store i32 %i.bl, ptr %i.by, align 4, !tbaa !13
  %i.bz = load ptr, ptr %i.e, align 8, !tbaa !39  ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 4
  %.val = load i32, ptr %i.ca, align 4, !tbaa !40 ; 3 uses
  %i.cb = icmp sgt i32 %.val, 0
  br i1 %i.cb, label %.lr.ph68, label %.sink.split

.lr.ph68:                                         ; preds = %Ssc_GiaResetPiPattern.exit
  %i.cc = getelementptr i8, ptr %1, i64 32
  %.val47 = load ptr, ptr %i.cc, align 8, !tbaa !46
  %.not = icmp eq ptr %.val47, null
  br i1 %.not, label %.sink.split, label %.lr.ph68.split.split

.lr.ph68.split.split:                             ; preds = %.lr.ph68
  %i.cd = getelementptr i8, ptr %2, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.cf = getelementptr i8, ptr %0, i64 16
  %i.cg = getelementptr i8, ptr %i.bz, i64 8
  %.val48.val = load ptr, ptr %i.cg, align 8, !tbaa !43
  %i.ch = load ptr, ptr %i.be, align 8, !tbaa !38 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 4
  %.val.i.i56 = load i32, ptr %i.ci, align 4, !tbaa !13
  %.val2.i.i57 = load i32, ptr %i.cf, align 8, !tbaa !42
  %.val3.i.i58 = load ptr, ptr %i.bj, align 8, !tbaa !39
  %i.cj = getelementptr i8, ptr %.val3.i.i58, i64 4
  %.val3.val.i.i59 = load i32, ptr %i.cj, align 4, !tbaa !40
  %i.ck = sub nsw i32 %.val3.val.i.i59, %.val2.i.i57
  %i.cl = sdiv i32 %.val.i.i56, %i.ck
  %i.cm = getelementptr i8, ptr %i.ch, i64 8
  %.val.i60 = load ptr, ptr %i.cm, align 8, !tbaa !14 ; 2 uses
  %.val.i60109 = ptrtoaddr ptr %.val.i60 to i64
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !47
  %i.co = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.cp = getelementptr i8, ptr %i.co, i64 4
  %.val.i.i.i62 = load i32, ptr %i.cp, align 4, !tbaa !13
  %.val2.i.i.i = load i32, ptr %i.d, align 8, !tbaa !42
  %i.cq = sub nsw i32 %.val, %.val2.i.i.i
  %i.cr = sdiv i32 %.val.i.i.i62, %i.cq
  %i.cs = getelementptr i8, ptr %i.cn, i64 8
  %.val.i.i63 = load ptr, ptr %i.cs, align 8, !tbaa !14 ; 2 uses
  %.val.i.i63110 = ptrtoaddr ptr %.val.i.i63 to i64
  %.val46 = load ptr, ptr %i.cd, align 8, !tbaa !43
  %i.ct = sext i32 %i.cl to i64                   ; 3 uses
  %wide.trip.count82 = zext nneg i32 %.val to i64
  %i.cu = sub i64 %.val.i60109, %.val.i.i63110    ; 2 uses
  %i.cv = shl nsw i64 %i.ct, 3
  %i.cw = shl nsw i64 %i.ct, 3
  %min.iters.check112 = icmp ult i32 %i.h, 4      ; 2 uses
  %n.vec130 = and i64 %wide.trip.count.i49, 2147483644 ; 3 uses
  %cmp.n139 = icmp eq i64 %n.vec130, %wide.trip.count.i49
  %xtraiter = and i64 %wide.trip.count.i49, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.cx = add nsw i64 %wide.trip.count.i49, -1
  %n.vec114 = and i64 %wide.trip.count.i49, 2147483644 ; 3 uses
  %cmp.n123 = icmp eq i64 %n.vec114, %wide.trip.count.i49
  %xtraiter147 = and i64 %wide.trip.count.i49, 3  ; 2 uses
  %lcmp.mod148.not = icmp eq i64 %xtraiter147, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph68.split.split, %._crit_edge
  %indvars.iv79 = phi i64 [ 0, %.lr.ph68.split.split ], [ %indvars.iv.next80, %._crit_edge ] ; 6 uses
  %i.cy = mul i64 %i.cw, %indvars.iv79
  %i.cz = add i64 %i.cu, %i.cy
  %i.da = mul i64 %i.cv, %indvars.iv79
  %i.db = add i64 %i.cu, %i.da
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.val48.val, i64 %indvars.iv79
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !44
  %i.de = mul nsw i64 %indvars.iv79, %i.ct
  %i.df = getelementptr inbounds [8 x i8], ptr %.val.i60, i64 %i.de ; 10 uses
  %i.dg = mul i32 %i.cr, %i.dd
  %i.dh = sext i32 %i.dg to i64                   ; 3 uses
  %i.di = getelementptr inbounds [8 x i8], ptr %.val.i.i63, i64 %i.dh ; 10 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.val46, i64 %indvars.iv79
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !44
  %.not44 = icmp eq i32 %i.dk, 0
  br i1 %.not44, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %min.iters.check112, label %.lr.ph.split.preheader142, label %vector.memcheck125

vector.memcheck125:                               ; preds = %.lr.ph.split.preheader
  %i.dl = shl nsw i64 %i.dh, 3
  %i.dm = sub i64 %i.dl, %i.cz
  %diff.check126 = icmp ugt i64 %i.dm, -32
  br i1 %diff.check126, label %.lr.ph.split.preheader142, label %vector.body131

vector.body131:                                   ; preds = %vector.memcheck125, %vector.body131
  %index132 = phi i64 [ %index.next137, %vector.body131 ], [ 0, %vector.memcheck125 ] ; 4 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %index132 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %wide.load133.a = load <2 x i64>, ptr %i.dn, align 8, !tbaa !41
  %wide.load134.a = load <2 x i64>, ptr %i.do, align 8, !tbaa !41
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index132 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load135.a = load <2 x i64>, ptr %i.dp, align 8, !tbaa !41
  %wide.load136 = load <2 x i64>, ptr %i.dq, align 8, !tbaa !41
  %i.dr = xor <2 x i64> %wide.load135.a, splat (i64 -1)
  %i.ds = xor <2 x i64> %wide.load136, splat (i64 -1)
  %i.dt = or <2 x i64> %wide.load133.a, %i.dr
  %i.du = or <2 x i64> %wide.load134.a, %i.ds
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %index132 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store <2 x i64> %i.dt, ptr %i.dv, align 8, !tbaa !41
  store <2 x i64> %i.du, ptr %i.dw, align 8, !tbaa !41
  %index.next137 = add nuw i64 %index132, 4       ; 2 uses
  %i.dx = icmp eq i64 %index.next137, %n.vec130
  br i1 %i.dx, label %middle.block138, label %vector.body131, !llvm.loop !59

middle.block138:                                  ; preds = %vector.body131
  br i1 %cmp.n139, label %._crit_edge, label %.lr.ph.split.preheader142

.lr.ph.split.preheader142:                        ; preds = %vector.memcheck125, %.lr.ph.split.preheader, %middle.block138
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck125 ], [ 0, %.lr.ph.split.preheader ], [ %n.vec130, %middle.block138 ] ; 6 uses
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader142
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv.ph
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !41
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.ph
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !41
  %i.ec = xor i64 %i.eb, -1
  %i.ed = or i64 %i.dz, %i.ec
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.ph
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !41
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.split.prol.loopexit

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader142
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.split.preheader142 ], [ %indvars.iv.next.prol, %.lr.ph.split.prol ]
  %i.ef = icmp eq i64 %indvars.iv.ph, %i.cx
  br i1 %i.ef, label %._crit_edge, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br i1 %min.iters.check112, label %.lr.ph.split.us.preheader141, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.preheader
  %i.eg = shl nsw i64 %i.dh, 3
  %i.eh = sub i64 %i.eg, %i.db
  %diff.check = icmp ugt i64 %i.eh, -32
  br i1 %diff.check, label %.lr.ph.split.us.preheader141, label %vector.body115

vector.body115:                                   ; preds = %vector.memcheck, %vector.body115
  %index116 = phi i64 [ %index.next121, %vector.body115 ], [ 0, %vector.memcheck ] ; 4 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %index116 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %wide.load117.a = load <2 x i64>, ptr %i.ei, align 8, !tbaa !41
  %wide.load118.a = load <2 x i64>, ptr %i.ej, align 8, !tbaa !41
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index116 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %wide.load119.a = load <2 x i64>, ptr %i.ek, align 8, !tbaa !41
  %wide.load120 = load <2 x i64>, ptr %i.el, align 8, !tbaa !41
  %i.em = and <2 x i64> %wide.load119.a, %wide.load117.a
  %i.en = and <2 x i64> %wide.load120, %wide.load118.a
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %index116 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store <2 x i64> %i.em, ptr %i.eo, align 8, !tbaa !41
  store <2 x i64> %i.en, ptr %i.ep, align 8, !tbaa !41
  %index.next121 = add nuw i64 %index116, 4       ; 2 uses
  %i.eq = icmp eq i64 %index.next121, %n.vec114
  br i1 %i.eq, label %middle.block122, label %vector.body115, !llvm.loop !60

middle.block122:                                  ; preds = %vector.body115
  br i1 %cmp.n123, label %._crit_edge, label %.lr.ph.split.us.preheader141

.lr.ph.split.us.preheader141:                     ; preds = %vector.memcheck, %.lr.ph.split.us.preheader, %middle.block122
  %indvars.iv73.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.preheader ], [ %n.vec114, %middle.block122 ] ; 3 uses
  br i1 %lcmp.mod148.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader141, %.lr.ph.split.us.prol
  %indvars.iv73.prol = phi i64 [ %indvars.iv.next74.prol, %.lr.ph.split.us.prol ], [ %indvars.iv73.ph, %.lr.ph.split.us.preheader141 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader141 ]
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv73.prol
  %i.es = load i64, ptr %i.er, align 8, !tbaa !41
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv73.prol
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !41
  %i.ev = and i64 %i.eu, %i.es
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv73.prol
  store i64 %i.ev, ptr %i.ew, align 8, !tbaa !41
  %indvars.iv.next74.prol = add nuw nsw i64 %indvars.iv73.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter147
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !61

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader141
  %indvars.iv73.unr = phi i64 [ %indvars.iv73.ph, %.lr.ph.split.us.preheader141 ], [ %indvars.iv.next74.prol, %.lr.ph.split.us.prol ]
  %i.ex = sub nsw i64 %indvars.iv73.ph, %wide.trip.count.i49
  %i.ey = icmp ugt i64 %i.ex, -4
  br i1 %i.ey, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %indvars.iv73 = phi i64 [ %indvars.iv.next74.3, %.lr.ph.split.us ], [ %indvars.iv73.unr, %.lr.ph.split.us.prol.loopexit ] ; 7 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv73
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !41
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv73
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !41
  %i.fd = and i64 %i.fc, %i.fa
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv73
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !41
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 3 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv.next74
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !41
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next74
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !41
  %i.fj = and i64 %i.fi, %i.fg
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.next74
  store i64 %i.fj, ptr %i.fk, align 8, !tbaa !41
  %indvars.iv.next74.1 = add nuw nsw i64 %indvars.iv73, 2 ; 3 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv.next74.1
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !41
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next74.1
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !41
  %i.fp = and i64 %i.fo, %i.fm
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.next74.1
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !41
  %indvars.iv.next74.2 = add nuw nsw i64 %indvars.iv73, 3 ; 3 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv.next74.2
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !41
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next74.2
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !41
  %i.fv = and i64 %i.fu, %i.fs
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.next74.2
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !41
  %indvars.iv.next74.3 = add nuw nsw i64 %indvars.iv73, 4 ; 2 uses
  %exitcond78.not.3 = icmp eq i64 %indvars.iv.next74.3, %wide.trip.count.i49
  br i1 %exitcond78.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !62

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.split ], [ %indvars.iv.unr, %.lr.ph.split.prol.loopexit ] ; 5 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !41
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !41
  %i.gb = xor i64 %i.ga, -1
  %i.gc = or i64 %i.fy, %i.gb
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv
  store i64 %i.gc, ptr %i.gd, align 8, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv.next
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !41
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !41
  %i.gi = xor i64 %i.gh, -1
  %i.gj = or i64 %i.gf, %i.gi
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.next
  store i64 %i.gj, ptr %i.gk, align 8, !tbaa !41
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count.i49
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.split, !llvm.loop !63

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block138, %middle.block122
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count82
  br i1 %exitcond83.not, label %.sink.split, label %.lr.ph, !llvm.loop !64

.sink.split:                                      ; preds = %._crit_edge, %.lr.ph68, %Ssc_GiaResetPiPattern.exit, %bb.b, %Ssc_SimCountBits.exit
  %.039.ph = phi i32 [ 0, %bb.b ], [ 0, %Ssc_SimCountBits.exit ], [ %.lcssa, %.lr.ph68 ], [ %.lcssa, %Ssc_GiaResetPiPattern.exit ], [ %.lcssa, %._crit_edge ]
  tail call void @free(ptr noundef nonnull %i.k) #16
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.b
  %.039 = phi i32 [ 0, %bb.b ], [ %.039.ph, %.sink.split ]
  ret i32 %.039
}

; Function Attrs: nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define noalias noundef ptr @Ssc_GiaGetCareMask(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val.i = load i32, ptr %i.c, align 4, !tbaa !13
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val2.i = load i32, ptr %i.d, align 8, !tbaa !42 ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 64
  %.val3.i = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.f = getelementptr i8, ptr %.val3.i, i64 4
  %.val3.val.i = load i32, ptr %i.f, align 4, !tbaa !40
  %i.g = sub nsw i32 %.val3.val.i, %.val2.i
  %i.h = sdiv i32 %.val.i, %i.g                   ; 5 uses
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 3                      ; 2 uses
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #18 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.k, i8 -1, i64 %i.j, i1 false)
  %i.l = getelementptr i8, ptr %0, i64 72
  %.val14 = load ptr, ptr %i.l, align 8, !tbaa !45 ; 2 uses
  %i.m = getelementptr i8, ptr %.val14, i64 4
  %.val14.val = load i32, ptr %i.m, align 4, !tbaa !40
  %i.n = sub nsw i32 %.val14.val, %.val2.i        ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr i8, ptr %0, i64 32
  %.val15 = load ptr, ptr %i.p, align 8, !tbaa !46
  %.not = icmp eq ptr %.val15, null
  %i.q = icmp slt i32 %i.h, 1
  %wide.trip.count.i = zext i32 %i.h to i64       ; 3 uses
  %brmerge = or i1 %.not, %i.q
  br i1 %brmerge, label %.critedge, label %.lr.ph.split.split

.lr.ph.split.split:                               ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.s = getelementptr i8, ptr %.val14, i64 8
  %.val16.val = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !47
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val.i.i = load ptr, ptr %i.u, align 8, !tbaa !14
  %wide.trip.count = zext nneg i32 %i.n to i64
  %min.iters.check = icmp ult i32 %i.h, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.split.split, %Ssc_SimAnd.exit.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split ], [ %indvars.iv.next, %Ssc_SimAnd.exit.loopexit ] ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val16.val, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !44
  %i.x = mul nsw i32 %i.w, %i.h
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %.val.i.i, i64 %i.y ; 2 uses
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.aa, align 8, !tbaa !41
  %wide.load23 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !41
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load24 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !41
  %wide.load25 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !41
  %i.ae = and <2 x i64> %wide.load24, %wide.load
  %i.af = and <2 x i64> %wide.load25, %wide.load23
  store <2 x i64> %i.ae, ptr %i.aa, align 8, !tbaa !41
  store <2 x i64> %i.af, ptr %i.ab, align 8, !tbaa !41
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %Ssc_SimAnd.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !41
  %i.al = and i64 %i.ak, %i.ai
  store i64 %i.al, ptr %i.ah, align 8, !tbaa !41
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Ssc_SimAnd.exit.loopexit, label %.lr.ph.i, !llvm.loop !66

Ssc_SimAnd.exit.loopexit:                         ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.preheader.i, !llvm.loop !1

.critedge:                                        ; preds = %Ssc_SimAnd.exit.loopexit, %.lr.ph, %bb.a
  ret ptr %i.k
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @Ssc_GiaResetSimInfo(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i32, ptr %i.b, align 8, !tbaa !16
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %calloc.i = tail call noalias noundef dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 2 uses
  store ptr %calloc.i, ptr %i.a, align 8, !tbaa !47
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.d = phi i32 [ 0, %bb.b ], [ %.pre, %._crit_edge ]
  %i.e = phi ptr [ %calloc.i, %bb.b ], [ %i.b, %._crit_edge ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %.val.i = load i32, ptr %i.h, align 4, !tbaa !13
  %i.i = getelementptr i8, ptr %0, i64 16
  %.val2.i = load i32, ptr %i.i, align 8, !tbaa !42
  %i.j = getelementptr i8, ptr %0, i64 64
  %.val3.i = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.k = getelementptr i8, ptr %.val3.i, i64 4
  %.val3.val.i = load i32, ptr %i.k, align 4, !tbaa !40
  %i.l = sub nsw i32 %.val3.val.i, %.val2.i
  %i.m = sdiv i32 %.val.i, %i.l
  %i.n = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.n, align 8, !tbaa !51
  %i.o = mul nsw i32 %.val, %i.m                  ; 6 uses
  %.not.i.i = icmp slt i32 %i.d, %i.o
  br i1 %.not.i.i, label %bb.d, label %Vec_WrdGrow.exit.i

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !14   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.q, null
  %i.r = sext i32 %i.o to i64
  %i.s = shl nsw i64 %i.r, 3                      ; 2 uses
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call ptr @realloc(ptr noundef nonnull %i.q, i64 noundef %i.s) #17
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.s) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = phi ptr [ %i.t, %bb.e ], [ %i.u, %bb.f ]
  store ptr %i.v, ptr %i.p, align 8, !tbaa !14
  store i32 %i.o, ptr %i.e, align 8, !tbaa !16
  br label %Vec_WrdGrow.exit.i

Vec_WrdGrow.exit.i:                               ; preds = %bb.g, %bb.c
  %i.w = icmp sgt i32 %i.o, 0
  br i1 %i.w, label %.lr.ph.i, label %Vec_WrdFill.exit

.lr.ph.i:                                         ; preds = %Vec_WrdGrow.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !14
  %i.z = zext nneg i32 %i.o to i64
  %i.aa = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.y, i8 0, i64 %i.aa, i1 false), !tbaa !41
  br label %Vec_WrdFill.exit

Vec_WrdFill.exit:                                 ; preds = %Vec_WrdGrow.exit.i, %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %i.o, ptr %i.ab, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
end_hunk_0
