Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/utilIsop?download=true
inline.NumInlined: 259
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 63
begin_hunk_0_@Abc_Isop6Cover:bb.a
  %.not84 = icmp eq i64 %i.r, 0
  br i1 %.not84, label %bb.g, label %split

bb.g:                                             ; preds = %bb.f
  %i.s = lshr i64 %1, %i.l
  %i.t = xor i64 %i.s, %1
  %i.u = and i64 %i.p, %i.t
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %.preheader, label %split, !llvm.loop !27

split:                                            ; preds = %bb.f, %bb.g, %.preheader._crit_edge
  %.pre-phi87 = phi i64 [ %.pre86, %.preheader._crit_edge ], [ %i.l, %bb.g ], [ %i.l, %bb.f ] ; 4 uses
  %.0.lcssa = phi i32 [ %i.f, %.preheader._crit_edge ], [ %indvars100, %bb.g ], [ %indvars100, %bb.f ] ; 6 uses
  %i.v = sext i32 %.0.lcssa to i64                ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr @s_Truths6Neg, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !13   ; 3 uses
  %i.y = and i64 %i.x, %0                         ; 2 uses
  %i.z = shl i64 %i.y, %.pre-phi87
  %i.aa = or i64 %i.z, %i.y                       ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.v
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !13 ; 3 uses
  %i.ad = and i64 %i.ac, %0                       ; 2 uses
  %i.ae = lshr i64 %i.ad, %.pre-phi87
  %i.af = or i64 %i.ae, %i.ad                     ; 2 uses
  %i.ag = and i64 %i.x, %1                        ; 2 uses
  %i.ah = shl i64 %i.ag, %.pre-phi87
  %i.ai = or i64 %i.ah, %i.ag                     ; 3 uses
  %i.aj = and i64 %i.ac, %1                       ; 2 uses
  %i.ak = lshr i64 %i.aj, %.pre-phi87
  %i.al = or i64 %i.ak, %i.aj                     ; 3 uses
  %i.am = xor i64 %i.al, -1
  %i.an = and i64 %i.aa, %i.am
  %i.ao = call i64 @Abc_Isop6Cover(i64 noundef %i.an, i64 noundef %i.ai, ptr noundef nonnull %i.a, i32 noundef %.0.lcssa, i64 noundef %4, ptr noundef %5) ; 5 uses
  %.not79 = icmp ult i64 %i.ao, %4
  br i1 %.not79, label %bb.h, label %bb.l

bb.h:                                             ; preds = %split
  %i.ap = xor i64 %i.ai, -1
  %i.aq = and i64 %i.af, %i.ap
  %.not80 = icmp eq ptr %5, null                  ; 3 uses
  %i.ar = ashr i64 %i.ao, 32                      ; 2 uses
  %i.as = getelementptr [4 x i8], ptr %5, i64 %i.ar ; 4 uses
  %i.at = select i1 %.not80, ptr null, ptr %i.as
  %i.au = call i64 @Abc_Isop6Cover(i64 noundef %i.aq, i64 noundef %i.al, ptr noundef nonnull %i.b, i32 noundef %.0.lcssa, i64 noundef %4, ptr noundef %i.at) ; 4 uses
  %i.av = add i64 %i.au, %i.ao                    ; 2 uses
  %.not81 = icmp ult i64 %i.av, %4
  br i1 %.not81, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.ax = xor i64 %i.aw, -1
  %i.ay = and i64 %i.aa, %i.ax
  %i.az = load i64, ptr %i.b, align 8, !tbaa !13  ; 2 uses
  %i.ba = xor i64 %i.az, -1
  %i.bb = and i64 %i.af, %i.ba
  %i.bc = or i64 %i.bb, %i.ay
  %i.bd = and i64 %i.al, %i.ai
  %i.be = ashr i64 %i.au, 32                      ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.be
  %i.bg = select i1 %.not80, ptr null, ptr %i.bf
  %i.bh = call i64 @Abc_Isop6Cover(i64 noundef %i.bc, i64 noundef %i.bd, ptr noundef nonnull %i.c, i32 noundef %.0.lcssa, i64 noundef %4, ptr noundef %i.bg)
  %i.bi = add i64 %i.bh, %i.av                    ; 2 uses
  %.not82 = icmp ult i64 %i.bi, %4
  br i1 %.not82, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bj = load i64, ptr %i.c, align 8, !tbaa !13
  %i.bk = and i64 %i.aw, %i.x
  %i.bl = and i64 %i.az, %i.ac
  %i.bm = or i64 %i.bl, %i.bk
  %i.bn = or i64 %i.bm, %i.bj
  store i64 %i.bn, ptr %2, align 8, !tbaa !13
  br i1 %.not80, label %Abc_IsopAddLits.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = lshr i64 %i.ao, 32                      ; 4 uses
  %i.bp = trunc nuw i64 %i.bo to i32
  %i.bq = lshr i64 %i.au, 32                      ; 4 uses
  %i.br = trunc nuw i64 %i.bq to i32
  %i.bs = icmp sgt i32 %i.bp, 0
  br i1 %i.bs, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.bt = shl nsw i32 %.0.lcssa, 1
  %i.bu = shl nuw i32 1, %i.bt                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 34359738368
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bo, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bu, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bv, align 4, !tbaa !14
  %wide.load101 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !14
  %i.bx = or <4 x i32> %wide.load, %broadcast.splat
  %i.by = or <4 x i32> %wide.load101, %broadcast.splat
  store <4 x i32> %i.bx, ptr %i.bv, align 4, !tbaa !14
  store <4 x i32> %i.by, ptr %i.bw, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %.preheader.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader.i:                                     ; preds = %scalar.ph, %middle.block, %bb.k
  %i.ca = icmp sgt i32 %i.br, 0
  br i1 %i.ca, label %.lr.ph19.i, label %Abc_IsopAddLits.exit

.lr.ph19.i:                                       ; preds = %.preheader.i
  %i.cb = shl nsw i32 %.0.lcssa, 1
  %i.cc = shl nuw i32 2, %i.cb                    ; 2 uses
  %min.iters.check103 = icmp ult i64 %i.au, 34359738368
  br i1 %min.iters.check103, label %scalar.ph102.preheader, label %vector.ph104

vector.ph104:                                     ; preds = %.lr.ph19.i
  %n.vec105 = and i64 %i.bq, 2147483640           ; 3 uses
  %broadcast.splatinsert106 = insertelement <4 x i32> poison, i32 %i.cc, i64 0
  %broadcast.splat107 = shufflevector <4 x i32> %broadcast.splatinsert106, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph104
  %index109 = phi i64 [ 0, %vector.ph104 ], [ %index.next112, %vector.body108 ] ; 2 uses
  %i.cd = getelementptr [4 x i8], ptr %i.as, i64 %index109 ; 3 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 16     ; 2 uses
  %wide.load110 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !14
  %wide.load111 = load <4 x i32>, ptr %i.ce, align 4, !tbaa !14
  %i.cf = or <4 x i32> %wide.load110, %broadcast.splat107
  %i.cg = or <4 x i32> %wide.load111, %broadcast.splat107
  store <4 x i32> %i.cf, ptr %i.cd, align 4, !tbaa !14
  store <4 x i32> %i.cg, ptr %i.ce, align 4, !tbaa !14
  %index.next112 = add nuw i64 %index109, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next112, %n.vec105
  br i1 %i.ch, label %middle.block113, label %vector.body108, !llvm.loop !29

middle.block113:                                  ; preds = %vector.body108
  %cmp.n114 = icmp eq i64 %i.bq, %n.vec105
  br i1 %cmp.n114, label %Abc_IsopAddLits.exit, label %scalar.ph102.preheader

scalar.ph102.preheader:                           ; preds = %.lr.ph19.i, %middle.block113
  %indvars.iv21.i.ph = phi i64 [ 0, %.lr.ph19.i ], [ %n.vec105, %middle.block113 ]
  br label %scalar.ph102

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !14
  %i.ck = or i32 %i.cj, %i.bu
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.bo
  br i1 %exitcond.not.i, label %.preheader.i, label %scalar.ph, !llvm.loop !30

scalar.ph102:                                     ; preds = %scalar.ph102.preheader, %scalar.ph102
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %scalar.ph102 ], [ %indvars.iv21.i.ph, %scalar.ph102.preheader ] ; 2 uses
  %gep.i = getelementptr [4 x i8], ptr %i.as, i64 %indvars.iv21.i ; 2 uses
  %i.cl = load i32, ptr %gep.i, align 4, !tbaa !14
  %i.cm = or i32 %i.cl, %i.cc
  store i32 %i.cm, ptr %gep.i, align 4, !tbaa !14
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1 ; 2 uses
  %exitcond25.not.i = icmp eq i64 %indvars.iv.next22.i, %i.bq
  br i1 %exitcond25.not.i, label %Abc_IsopAddLits.exit, label %scalar.ph102, !llvm.loop !31

Abc_IsopAddLits.exit:                             ; preds = %scalar.ph102, %middle.block113, %bb.j, %.preheader.i
  %i.cn = add nsw i64 %i.be, %i.ar
  %i.co = add i64 %i.cn, %i.bi
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.e, %bb.i, %bb.h, %split, %Abc_IsopAddLits.exit, %bb.b
  %.069 = phi i64 [ 0, %bb.b ], [ %4, %bb.i ], [ %i.co, %Abc_IsopAddLits.exit ], [ %4, %split ], [ %4, %bb.h ], [ 4294967296, %bb.e ], [ 4294967296, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i64 %.069
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i64 @Abc_IsopCheck(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i32 %3, 7
  br i1 %i.a, label %Abc_TtStretch6.exit.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = add nsw i32 %3, -6                       ; 3 uses
  %i.c = shl nuw i32 1, %i.b                      ; 6 uses
  %i.d = sext i32 %i.c to i64
  %.idx.i = shl nsw i64 %i.d, 3                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %0, i64 %.idx.i
  %.not.i = icmp eq i32 %i.b, 31
  %i.f = getelementptr inbounds i8, ptr %1, i64 %.idx.i
  br i1 %.not.i, label %Abc_TtStretch6.exit.sink.split, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.preheader, %.thread
  %.03386 = phi i32 [ %i.g, %.thread ], [ %3, %.preheader ] ; 8 uses
  %i.g = add nsw i32 %.03386, -1
  %i.h = add nsw i32 %.03386, -7                  ; 3 uses
  %.not42.i = icmp eq i32 %i.h, 31
  %i.i = shl i32 2, %i.h
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  br i1 %.not42.i, label %.thread, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.k = shl nuw i32 1, %i.h                      ; 2 uses
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.k, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 2 uses
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.03341.us.i = phi ptr [ %i.p, %._crit_edge.us.i ], [ %0, %.preheader.us.preheader.i ] ; 3 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.03341.us.i, i64 %i.l
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.c, !llvm.loop !0

bb.c:                                             ; preds = %bb.b, %.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.03341.us.i, i64 %indvars.iv.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !13
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.o = load i64, ptr %gep.i, align 8, !tbaa !13
  %.not.us.i = icmp eq i64 %i.n, %i.o
  br i1 %.not.us.i, label %bb.b, label %Abc_TtHasVar.exit

._crit_edge.us.i:                                 ; preds = %bb.b
  %i.p = getelementptr inbounds [8 x i8], ptr %.03341.us.i, i64 %i.j ; 2 uses
  %i.q = icmp ult ptr %i.p, %i.e
  br i1 %i.q, label %.preheader.us.i, label %.preheader.us.i46, !llvm.loop !1

.preheader.us.i46:                                ; preds = %._crit_edge.us.i, %._crit_edge.us.i55
  %.03341.us.i47 = phi ptr [ %i.u, %._crit_edge.us.i55 ], [ %1, %._crit_edge.us.i ] ; 3 uses
  %invariant.gep.i48 = getelementptr [8 x i8], ptr %.03341.us.i47, i64 %i.l
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i53 = add nuw nsw i64 %indvars.iv.i49, 1 ; 2 uses
  %exitcond.not.i54 = icmp eq i64 %indvars.iv.next.i53, %wide.trip.count.i
  br i1 %exitcond.not.i54, label %._crit_edge.us.i55, label %bb.e, !llvm.loop !0

bb.e:                                             ; preds = %bb.d, %.preheader.us.i46
  %indvars.iv.i49 = phi i64 [ 0, %.preheader.us.i46 ], [ %indvars.iv.next.i53, %bb.d ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.03341.us.i47, i64 %indvars.iv.i49
  %i.s = load i64, ptr %i.r, align 8, !tbaa !13
  %gep.i50 = getelementptr [8 x i8], ptr %invariant.gep.i48, i64 %indvars.iv.i49
  %i.t = load i64, ptr %gep.i50, align 8, !tbaa !13
  %.not.us.i51 = icmp eq i64 %i.s, %i.t
  br i1 %.not.us.i51, label %bb.d, label %Abc_TtHasVar.exit

._crit_edge.us.i55:                               ; preds = %bb.d
  %i.u = getelementptr inbounds [8 x i8], ptr %.03341.us.i47, i64 %i.j ; 2 uses
  %i.v = icmp ult ptr %i.u, %i.f
  br i1 %i.v, label %.preheader.us.i46, label %.thread, !llvm.loop !1

.thread:                                          ; preds = %._crit_edge.us.i55, %.preheader.lr.ph.i
  %i.w = icmp sgt i32 %.03386, 7
  br i1 %i.w, label %.preheader.lr.ph.i, label %.split, !llvm.loop !32

Abc_TtHasVar.exit:                                ; preds = %bb.c, %bb.e
  %i.x = icmp eq i32 %.03386, 6
  br i1 %i.x, label %.split, label %.split36

.split:                                           ; preds = %.thread, %Abc_TtHasVar.exit
  %i.y = load i64, ptr %0, align 8, !tbaa !13
  %i.z = load i64, ptr %1, align 8, !tbaa !13
  %i.aa = tail call i64 @Abc_Isop6Cover(i64 noundef %i.y, i64 noundef %i.z, ptr noundef %2, i32 noundef 6, i64 noundef %4, ptr noundef %5) ; 4 uses
  %.pre = load i64, ptr %2, align 8, !tbaa !13    ; 4 uses
  %min.iters.check116 = icmp slt i32 %i.c, 4
  br i1 %min.iters.check116, label %.preheader.i, label %vector.ph117

vector.ph117:                                     ; preds = %.split
  %i.ab = and i32 %i.c, 2147483644
  %n.vec118 = zext nneg i32 %i.ab to i64
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.pre, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph117
  %index120 = phi i64 [ 0, %vector.ph117 ], [ %index.next121, %vector.body119 ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index120 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.ac, align 8, !tbaa !13
  store <2 x i64> %broadcast.splat, ptr %i.ad, align 8, !tbaa !13
  %index.next121 = add nuw i64 %index120, 4       ; 2 uses
  %i.ae = icmp eq i64 %index.next121, %n.vec118
  br i1 %i.ae, label %Abc_TtStretch6.exit, label %vector.body119, !llvm.loop !33

.preheader.i:                                     ; preds = %.split
  store i64 %.pre, ptr %2, align 8, !tbaa !13
  %exitcond.not = icmp slt i32 %i.c, 2
  br i1 %exitcond.not, label %Abc_TtStretch6.exit, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %.preheader.i
  %invariant.gep.i57.1 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.pre, ptr %invariant.gep.i57.1, align 8, !tbaa !13
  %exitcond.not.1 = icmp eq i32 %i.b, 1
  br i1 %exitcond.not.1, label %Abc_TtStretch6.exit, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %invariant.gep.i57.2 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %.pre, ptr %invariant.gep.i57.2, align 8, !tbaa !13
  br label %Abc_TtStretch6.exit

.split36:                                         ; preds = %Abc_TtHasVar.exit
  %i.af = zext nneg i32 %.03386 to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr @s_pFuncIsopCover, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !19
  %i.ai = tail call i64 %i.ah(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %4, ptr noundef %5) #20 ; 3 uses
  %i.aj = icmp eq i32 %.03386, %3
  br i1 %i.aj, label %Abc_TtStretch6.exit, label %bb.f

bb.f:                                             ; preds = %.split36
  %i.ak = icmp samesign ult i32 %.03386, 7        ; 2 uses
  %i.al = add nsw i32 %.03386, -6                 ; 2 uses
  %i.am = shl nuw i32 1, %i.al
  %i.an = select i1 %i.ak, i32 1, i32 %i.am       ; 5 uses
  %i.ao = icmp ne i32 %i.an, %i.c
  %i.ap = icmp sgt i32 %i.an, 0
  %or.cond25.i = and i1 %i.ap, %i.ao
  br i1 %or.cond25.i, label %.preheader.preheader.i63, label %Abc_TtStretch6.exit

.preheader.preheader.i63:                         ; preds = %bb.f
  %i.aq = zext nneg i32 %i.an to i64              ; 4 uses
  %min.iters.check = icmp ult i32 %i.an, 4
  %i.ar = select i1 %i.ak, i32 0, i32 %i.al
  %i.as = zext i32 %i.ar to i64
  %i.at = add nuw nsw i64 %i.as, 3
  %n.vec = and i64 %i.aq, 2147483644
  %xtraiter = and i64 %i.aq, 3                    ; 3 uses
  %i.au = icmp ult i32 %i.an, 4
  %unroll_iter = and i64 %i.aq, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod133 = icmp ne i64 %xtraiter, 0
  br label %.preheader.i64

.preheader.i64:                                   ; preds = %._crit_edge.i71, %.preheader.preheader.i63
  %indvar = phi i64 [ %indvar.next, %._crit_edge.i71 ], [ 0, %.preheader.preheader.i63 ] ; 2 uses
  %indvars.iv27.i65 = phi i64 [ %indvars.iv.next28.i72, %._crit_edge.i71 ], [ 0, %.preheader.preheader.i63 ] ; 2 uses
  %invariant.gep.i66 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv27.i65 ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.i64
  br i1 %i.au, label %scalar.ph.epil.preheader, label %scalar.ph

vector.memcheck:                                  ; preds = %.preheader.i64
  %i.av = shl i64 %indvar, %i.at
  %i.aw = add i64 %i.av, -1
  %diff.check = icmp ult i64 %i.aw, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load = load <2 x i64>, ptr %i.ax, align 8, !tbaa !13
  %wide.load114 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !13
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i66, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <2 x i64> %wide.load, ptr %i.az, align 8, !tbaa !13
  store <2 x i64> %wide.load114, ptr %i.ba, align 8, !tbaa !13
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %._crit_edge.i71, label %vector.body, !llvm.loop !34

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i67 = phi i64 [ %indvars.iv.next.i69.3, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i67
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !13
  %gep.i68 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i66, i64 %indvars.iv.i67
  store i64 %i.bd, ptr %gep.i68, align 8, !tbaa !13
  %indvars.iv.next.i69 = or disjoint i64 %indvars.iv.i67, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i69
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !13
  %gep.i68.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i66, i64 %indvars.iv.next.i69
  store i64 %i.bf, ptr %gep.i68.1, align 8, !tbaa !13
  %indvars.iv.next.i69.1 = or disjoint i64 %indvars.iv.i67, 2 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i69.1
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !13
  %gep.i68.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i66, i64 %indvars.iv.next.i69.1
  store i64 %i.bh, ptr %gep.i68.2, align 8, !tbaa !13
  %indvars.iv.next.i69.2 = or disjoint i64 %indvars.iv.i67, 3 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i69.2
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !13
  %gep.i68.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i66, i64 %indvars.iv.next.i69.2
  store i64 %i.bj, ptr %gep.i68.3, align 8, !tbaa !13
  %indvars.iv.next.i69.3 = add nuw nsw i64 %indvars.iv.i67, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i71.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !35

._crit_edge.i71.loopexit.unr-lcssa:               ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge.i71, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.i71.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.i67.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.i69.3, %._crit_edge.i71.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod133)
  br label %scalar.ph.epil

scalar.ph.epil:                                   ; preds = %scalar.ph.epil, %scalar.ph.epil.preheader
  %indvars.iv.i67.epil = phi i64 [ %indvars.iv.next.i69.epil, %scalar.ph.epil ], [ %indvars.iv.i67.epil.init, %scalar.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %scalar.ph.epil ], [ 0, %scalar.ph.epil.preheader ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i67.epil
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !13
  %gep.i68.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i66, i64 %indvars.iv.i67.epil
  store i64 %i.bl, ptr %gep.i68.epil, align 8, !tbaa !13
  %indvars.iv.next.i69.epil = add nuw nsw i64 %indvars.iv.i67.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i71, label %scalar.ph.epil, !llvm.loop !36

._crit_edge.i71:                                  ; preds = %vector.body, %._crit_edge.i71.loopexit.unr-lcssa, %scalar.ph.epil
  %indvars.iv.next28.i72 = add nuw nsw i64 %indvars.iv27.i65, %i.aq ; 2 uses
  %i.bm = trunc nuw i64 %indvars.iv.next28.i72 to i32
  %i.bn = icmp sgt i32 %i.c, %i.bm
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bn, label %.preheader.i64, label %Abc_TtStretch6.exit, !llvm.loop !37

Abc_TtStretch6.exit.sink.split:                   ; preds = %bb.a, %.preheader
  %.sink108 = phi i32 [ 6, %.preheader ], [ %3, %bb.a ]
  %i.bo = load i64, ptr %0, align 8, !tbaa !13
  %i.bp = load i64, ptr %1, align 8, !tbaa !13
  %i.bq = tail call i64 @Abc_Isop6Cover(i64 noundef %i.bo, i64 noundef %i.bp, ptr noundef %2, i32 noundef %.sink108, i64 noundef %4, ptr noundef %5)
  br label %Abc_TtStretch6.exit

Abc_TtStretch6.exit:                              ; preds = %._crit_edge.i71, %vector.body119, %.preheader.i, %.preheader.i.1, %.preheader.i.2, %Abc_TtStretch6.exit.sink.split, %bb.f, %.split36
  %.034 = phi i64 [ %i.ai, %.split36 ], [ %i.ai, %bb.f ], [ %i.aa, %vector.body119 ], [ %i.bq, %Abc_TtStretch6.exit.sink.split ], [ %i.aa, %.preheader.i ], [ %i.aa, %.preheader.i.2 ], [ %i.aa, %.preheader.i.1 ], [ %i.ai, %._crit_edge.i71 ]
  ret i64 %.034
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Abc_IsopBuildTruth(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [1024 x i64], align 16            ; 31 uses
  %i.b = load ptr, ptr @Abc_IsopTtElems.pTtElems, align 16, !tbaa !51
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.preheader5.preheader.i, label %Abc_IsopTtElems.exit

.preheader5.preheader.i:                          ; preds = %bb.a
  store ptr @Abc_IsopTtElems.TtElems, ptr @Abc_IsopTtElems.pTtElems, align 16, !tbaa !51
  store ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.TtElems, i64 8192), ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.pTtElems, i64 8), align 8, !tbaa !51
  store ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.TtElems, i64 16384), ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.pTtElems, i64 16), align 16, !tbaa !51
  store ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.TtElems, i64 24576), ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.pTtElems, i64 24), align 8, !tbaa !51
  store ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.TtElems, i64 32768), ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.pTtElems, i64 32), align 16, !tbaa !51
  store ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.TtElems, i64 40960), ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.pTtElems, i64 40), align 8, !tbaa !51
  store ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.TtElems, i64 49152), ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.pTtElems, i64 48), align 16, !tbaa !51
  store ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.TtElems, i64 57344), ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.pTtElems, i64 56), align 8, !tbaa !51
  store ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.TtElems, i64 65536), ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.pTtElems, i64 64), align 16, !tbaa !51
  store ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.TtElems, i64 73728), ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.pTtElems, i64 72), align 8, !tbaa !51
  store ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.TtElems, i64 81920), ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.pTtElems, i64 80), align 16, !tbaa !51
  store ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.TtElems, i64 90112), ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.pTtElems, i64 88), align 8, !tbaa !51
  store ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.TtElems, i64 98304), ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.pTtElems, i64 96), align 16, !tbaa !51
  store ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.TtElems, i64 106496), ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.pTtElems, i64 104), align 8, !tbaa !51
  store ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.TtElems, i64 114688), ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.pTtElems, i64 112), align 16, !tbaa !51
  store ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.TtElems, i64 122880), ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.pTtElems, i64 120), align 8, !tbaa !51
  store ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.TtElems, i64 131072), ptr getelementptr inbounds nuw (i8, ptr @Abc_IsopTtElems.pTtElems, i64 128), align 16, !tbaa !51
  br label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit.i.i, %.preheader5.preheader.i
  %indvars.iv12.i.i = phi i64 [ %indvars.iv.next13.i.i, %.loopexit.i.i ], [ 0, %.preheader5.preheader.i ] ; 5 uses
  %i.d = icmp samesign ult i64 %indvars.iv12.i.i, 6
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @Abc_IsopTtElems.pTtElems, i64 %indvars.iv12.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51   ; 6 uses
  br i1 %i.d, label %vector.ph, label %vector.ph112

vector.ph112:                                     ; preds = %.preheader.i
  %i.g = trunc i64 %indvars.iv12.i.i to i32
  %i.h = add i32 %i.g, -6
  %i.i = shl nuw nsw i32 1, %i.h
  %broadcast.splatinsert113 = insertelement <2 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat114 = shufflevector <2 x i32> %broadcast.splatinsert113, <2 x i32> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph112
  %index116 = phi i64 [ 0, %vector.ph112 ], [ %index.next117.1, %vector.body115 ] ; 3 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph112 ], [ %vec.ind.next.1, %vector.body115 ] ; 5 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.j = and <2 x i32> %broadcast.splat114, %vec.ind
  %i.k = and <2 x i32> %broadcast.splat114, %step.add
  %i.l = icmp ne <2 x i32> %i.j, zeroinitializer
  %i.m = icmp ne <2 x i32> %i.k, zeroinitializer
  %i.n = sext <2 x i1> %i.l to <2 x i64>
  %i.o = sext <2 x i1> %i.m to <2 x i64>
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index116 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <2 x i64> %i.n, ptr %i.p, align 8, !tbaa !13
  store <2 x i64> %i.o, ptr %i.q, align 8, !tbaa !13
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %step.add.1 = add <2 x i32> %vec.ind, splat (i32 6)
  %i.r = and <2 x i32> %broadcast.splat114, %vec.ind.next
  %i.s = and <2 x i32> %broadcast.splat114, %step.add.1
  %i.t = icmp ne <2 x i32> %i.r, zeroinitializer
  %i.u = icmp ne <2 x i32> %i.s, zeroinitializer
  %i.v = sext <2 x i1> %i.t to <2 x i64>
  %i.w = sext <2 x i1> %i.u to <2 x i64>
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index116 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store <2 x i64> %i.v, ptr %i.y, align 8, !tbaa !13
  store <2 x i64> %i.w, ptr %i.z, align 8, !tbaa !13
  %index.next117.1 = add nuw nsw i64 %index116, 8 ; 2 uses
  %vec.ind.next.1 = add <2 x i32> %vec.ind, splat (i32 8)
  %i.aa = icmp eq i64 %index.next117.1, 1024
  br i1 %i.aa, label %.loopexit.i.i, label %vector.body115, !llvm.loop !38

vector.ph:                                        ; preds = %.preheader.i
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv12.i.i
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !13
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ac, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.ad, align 8, !tbaa !13
  store <2 x i64> %broadcast.splat, ptr %i.ae, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store <2 x i64> %broadcast.splat, ptr %i.ag, align 8, !tbaa !13
  store <2 x i64> %broadcast.splat, ptr %i.ah, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  store <2 x i64> %broadcast.splat, ptr %i.aj, align 8, !tbaa !13
  store <2 x i64> %broadcast.splat, ptr %i.ak, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  store <2 x i64> %broadcast.splat, ptr %i.am, align 8, !tbaa !13
  store <2 x i64> %broadcast.splat, ptr %i.an, align 8, !tbaa !13
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.ao = icmp eq i64 %index.next.3, 1024
  br i1 %i.ao, label %.loopexit.i.i, label %vector.body, !llvm.loop !39

.loopexit.i.i:                                    ; preds = %vector.body115, %vector.body
  %indvars.iv.next13.i.i = add nuw nsw i64 %indvars.iv12.i.i, 1 ; 2 uses
  %exitcond15.not.i.i = icmp eq i64 %indvars.iv.next13.i.i, 16
  br i1 %exitcond15.not.i.i, label %Abc_IsopTtElems.exit, label %.preheader.i, !llvm.loop !40

Abc_IsopTtElems.exit:                             ; preds = %.loopexit.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.ap = icmp slt i32 %1, 7
  %i.aq = add nsw i32 %1, -6
  %i.ar = shl nuw i32 1, %i.aq
  %i.as = select i1 %i.ap, i32 1, i32 %i.ar       ; 25 uses
  %i.at = icmp slt i32 %i.as, 1                   ; 9 uses
  br i1 %i.at, label %Abc_TtClear.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %Abc_IsopTtElems.exit
  %i.au = zext nneg i32 %i.as to i64
  %i.av = shl nuw nsw i64 %i.au, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %2, i8 0, i64 %i.av, i1 false), !tbaa !13
  br label %Abc_TtClear.exit

Abc_TtClear.exit:                                 ; preds = %Abc_IsopTtElems.exit, %.lr.ph.preheader.i
  %i.aw = getelementptr i8, ptr %0, i64 4
  %.val = load i32, ptr %i.aw, align 4, !tbaa !23 ; 4 uses
  %i.ax = icmp sgt i32 %.val, 0
  br i1 %i.ax, label %.lr.ph67, label %.critedge

.lr.ph67:                                         ; preds = %Abc_TtClear.exit
  %i.ay = getelementptr i8, ptr %0, i64 8
  %.val34 = load ptr, ptr %i.ay, align 8, !tbaa !24
  %i.az = zext i32 %i.as to i64                   ; 7 uses
  %i.ba = shl nuw nsw i64 %i.az, 3                ; 3 uses
  %i.bb = icmp sgt i32 %1, 0
  %.not33 = icmp eq i32 %3, 0                     ; 2 uses
  br i1 %i.bb, label %.lr.ph67.split.us.preheader, label %.lr.ph67.split

.lr.ph67.split.us.preheader:                      ; preds = %.lr.ph67
  %wide.trip.count95 = zext nneg i32 %.val to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  %min.iters.check184 = icmp ult i32 %i.as, 4
  %n.vec186 = and i64 %i.az, 2147483644
  %exitcond.not.i42.us = icmp eq i32 %i.as, 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %exitcond.not.i42.us.1 = icmp eq i32 %i.as, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %min.iters.check170 = icmp ult i32 %i.as, 4
  %n.vec172 = and i64 %i.az, 2147483644
  %exitcond.not.i.us = icmp eq i32 %i.as, 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %exitcond.not.i.us.1 = icmp eq i32 %i.as, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %min.iters.check156 = icmp ult i32 %i.as, 4
  %n.vec158 = and i64 %i.az, 2147483644
  %exitcond.not.i48.us = icmp eq i32 %i.as, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %exitcond.not.i48.us.1 = icmp eq i32 %i.as, 2
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %min.iters.check142 = icmp ult i32 %i.as, 4
  %n.vec144 = and i64 %i.az, 2147483644
  %exitcond.not.i54.us = icmp eq i32 %i.as, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %exitcond.not.i54.us.1 = icmp eq i32 %i.as, 2
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %.lr.ph67.split.us

.lr.ph67.split.us:                                ; preds = %.lr.ph67.split.us.preheader, %Abc_TtXor.exit.us
  %indvars.iv92 = phi i64 [ 0, %.lr.ph67.split.us.preheader ], [ %indvars.iv.next93, %Abc_TtXor.exit.us ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.val34, i64 %indvars.iv92
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !14
  br i1 %i.at, label %Abc_TtFill.exit.us.preheader, label %.lr.ph.preheader.i35.us

.lr.ph.preheader.i35.us:                          ; preds = %.lr.ph67.split.us
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 -1, i64 %i.ba, i1 false), !tbaa !13
  br label %Abc_TtFill.exit.us.preheader

Abc_TtFill.exit.us.preheader:                     ; preds = %.lr.ph.preheader.i35.us, %.lr.ph67.split.us
  br label %Abc_TtFill.exit.us

Abc_TtFill.exit.us:                               ; preds = %Abc_TtFill.exit.us.preheader, %Abc_TtSharp.exit.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %Abc_TtSharp.exit.us ], [ 0, %Abc_TtFill.exit.us.preheader ] ; 4 uses
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.bq = shl nuw i32 %indvars.iv.tr, 1
  %i.br = ashr i32 %i.bp, %i.bq
  %i.bs = and i32 %i.br, 3
  switch i32 %i.bs, label %Abc_TtSharp.exit.us [
    i32 1, label %bb.c
    i32 2, label %bb.b
end_hunk_0
