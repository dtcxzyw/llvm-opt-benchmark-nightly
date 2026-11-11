Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/wlcBlast?download=true
inline.NumInlined: 1166
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@Wlc_BlastDividerSigned:bb.a
  %i.dr = tail call i32 @Gia_ManHashMux(ptr noundef %0, i32 noundef %.019.i159, i32 noundef %i.dq, i32 noundef %i.dp) #27
  store i32 %i.dr, ptr %i.do, align 4, !tbaa !22
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.i158
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !22
  %i.du = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %.019.i159, i32 noundef %i.dt) #27
  %indvars.iv.next.i160 = add nuw nsw i64 %indvars.iv.i158, 1 ; 2 uses
  %exitcond.not.i161 = icmp eq i64 %indvars.iv.next.i160, %wide.trip.count.i156
  br i1 %exitcond.not.i161, label %.lr.ph193, label %.lr.ph.i157, !llvm.loop !7

.lr.ph193:                                        ; preds = %.lr.ph.i157
  %.not = icmp eq i32 %5, 0
  %.val111 = load ptr, ptr %i.ba, align 8, !tbaa !39 ; 2 uses
  %wide.trip.count205 = zext nneg i32 %2 to i64   ; 2 uses
  %.val110.us.pre = load ptr, ptr %i.dm, align 8, !tbaa !39 ; 2 uses
  br i1 %.not, label %.lr.ph193.split.us, label %.lr.ph193.split

.lr.ph193.split.us:                               ; preds = %.lr.ph193, %.lr.ph193.split.us
  %.val110.us = phi ptr [ %.val.us, %.lr.ph193.split.us ], [ %.val110.us.pre, %.lr.ph193 ]
  %indvars.iv202 = phi i64 [ %indvars.iv.next203, %.lr.ph193.split.us ], [ 0, %.lr.ph193 ] ; 4 uses
  %i.dv = load i32, ptr %i.bd, align 4, !tbaa !22
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.val111, i64 %indvars.iv202
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !22
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.val110.us, i64 %indvars.iv202
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !22
  %i.ea = tail call i32 @Gia_ManHashMux(ptr noundef %0, i32 noundef %i.dv, i32 noundef %i.dx, i32 noundef %i.dz) #27
  %.val.us = load ptr, ptr %i.dm, align 8, !tbaa !39 ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.val.us, i64 %indvars.iv202
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !22
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %exitcond206.not = icmp eq i64 %indvars.iv.next203, %wide.trip.count205
  br i1 %exitcond206.not, label %._crit_edge194, label %.lr.ph193.split.us, !llvm.loop !159

.lr.ph193.split:                                  ; preds = %.lr.ph193, %.lr.ph193.split
  %.val110 = phi ptr [ %.val, %.lr.ph193.split ], [ %.val110.us.pre, %.lr.ph193 ]
  %indvars.iv197 = phi i64 [ %indvars.iv.next198, %.lr.ph193.split ], [ 0, %.lr.ph193 ] ; 4 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.val111, i64 %indvars.iv197
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !22
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.val110, i64 %indvars.iv197
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !22
  %i.eg = tail call i32 @Gia_ManHashMux(ptr noundef %0, i32 noundef %i.bj, i32 noundef %i.ed, i32 noundef %i.ef) #27
  %.val = load ptr, ptr %i.dm, align 8, !tbaa !39 ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv197
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !22
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %exitcond201.not = icmp eq i64 %indvars.iv.next198, %wide.trip.count205
  br i1 %exitcond201.not, label %._crit_edge194, label %.lr.ph193.split, !llvm.loop !159

._crit_edge194:                                   ; preds = %.lr.ph193.split, %.lr.ph193.split.us, %._crit_edge.thread
  %.not.i163 = icmp eq ptr %.val108184188, null
  br i1 %.not.i163, label %Vec_IntFree.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge194
  tail call void @free(ptr noundef nonnull %.val108184188) #27
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge194, %bb.t
  tail call void @free(ptr noundef nonnull %i.a) #27
  %.not.i164 = icmp eq ptr %.val109178181190, null
  br i1 %.not.i164, label %Vec_IntFree.exit165, label %bb.u

bb.u:                                             ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %.val109178181190) #27
  br label %Vec_IntFree.exit165

Vec_IntFree.exit165:                              ; preds = %Vec_IntFree.exit, %bb.u
  tail call void @free(ptr noundef nonnull %i.i) #27
  %i.ei = load ptr, ptr %i.y, align 8, !tbaa !39  ; 2 uses
  %.not.i166 = icmp eq ptr %i.ei, null
  br i1 %.not.i166, label %Vec_IntFree.exit167, label %bb.v

bb.v:                                             ; preds = %Vec_IntFree.exit165
  tail call void @free(ptr noundef nonnull %i.ei) #27
  br label %Vec_IntFree.exit167

Vec_IntFree.exit167:                              ; preds = %Vec_IntFree.exit165, %bb.v
  tail call void @free(ptr noundef nonnull %i.r) #27
  %i.ej = load ptr, ptr %i.af, align 8, !tbaa !39 ; 2 uses
  %.not.i168 = icmp eq ptr %i.ej, null
  br i1 %.not.i168, label %Vec_IntFree.exit169, label %bb.w

bb.w:                                             ; preds = %Vec_IntFree.exit167
  tail call void @free(ptr noundef nonnull %i.ej) #27
  br label %Vec_IntFree.exit169

Vec_IntFree.exit169:                              ; preds = %Vec_IntFree.exit167, %bb.w
  tail call void @free(ptr noundef nonnull %i.z) #27
  %i.ek = load ptr, ptr %i.am, align 8, !tbaa !39 ; 2 uses
  %.not.i170 = icmp eq ptr %i.ek, null
  br i1 %.not.i170, label %Vec_IntFree.exit171, label %bb.x

bb.x:                                             ; preds = %Vec_IntFree.exit169
  tail call void @free(ptr noundef nonnull %i.ek) #27
  br label %Vec_IntFree.exit171

Vec_IntFree.exit171:                              ; preds = %Vec_IntFree.exit169, %bb.x
  tail call void @free(ptr noundef nonnull %i.ag) #27
  %i.el = load ptr, ptr %i.at, align 8, !tbaa !39 ; 2 uses
  %.not.i172 = icmp eq ptr %i.el, null
  br i1 %.not.i172, label %Vec_IntFree.exit173, label %bb.y

bb.y:                                             ; preds = %Vec_IntFree.exit171
  tail call void @free(ptr noundef nonnull %i.el) #27
  br label %Vec_IntFree.exit173

Vec_IntFree.exit173:                              ; preds = %Vec_IntFree.exit171, %bb.y
  tail call void @free(ptr noundef nonnull %i.an) #27
  %i.em = load ptr, ptr %i.ba, align 8, !tbaa !39 ; 2 uses
  %.not.i174 = icmp eq ptr %i.em, null
  br i1 %.not.i174, label %Vec_IntFree.exit175, label %bb.z

bb.z:                                             ; preds = %Vec_IntFree.exit173
  tail call void @free(ptr noundef nonnull %i.em) #27
  br label %Vec_IntFree.exit175

Vec_IntFree.exit175:                              ; preds = %Vec_IntFree.exit173, %bb.z
  tail call void @free(ptr noundef nonnull %i.au) #27
  ret void
}

; Function Attrs: nounwind uwtable
define void @Wlc_BlastZeroCondition(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph50.preheader.i, label %Wlc_BlastReduction.exit

.lr.ph50.preheader.i:                             ; preds = %bb.a
  %wide.trip.count65.i = zext nneg i32 %2 to i64
  br label %.lr.ph50.i

.lr.ph50.i:                                       ; preds = %.lr.ph50.i, %.lr.ph50.preheader.i
  %indvars.iv62.i = phi i64 [ 0, %.lr.ph50.preheader.i ], [ %indvars.iv.next63.i, %.lr.ph50.i ] ; 2 uses
  %.03948.i = phi i32 [ 0, %.lr.ph50.preheader.i ], [ %i.d, %.lr.ph50.i ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv62.i
  %i.c = load i32, ptr %i.b, align 4, !tbaa !22
  %i.d = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %.03948.i, i32 noundef %i.c) #27 ; 2 uses
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %exitcond66.not.i = icmp eq i64 %indvars.iv.next63.i, %wide.trip.count65.i
  br i1 %exitcond66.not.i, label %Wlc_BlastReduction.exit, label %.lr.ph50.i, !llvm.loop !4

Wlc_BlastReduction.exit:                          ; preds = %.lr.ph50.i, %bb.a
  %.039.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.d, %.lr.ph50.i ]
  %i.e = getelementptr i8, ptr %3, i64 4          ; 2 uses
  %.val1314 = load i32, ptr %i.e, align 4, !tbaa !40
  %i.f = icmp sgt i32 %.val1314, 0
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Wlc_BlastReduction.exit
  %i.g = getelementptr i8, ptr %3, i64 8          ; 2 uses
  %.val12.pre = load ptr, ptr %i.g, align 8, !tbaa !39
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.val12 = phi ptr [ %.val12.pre, %.lr.ph ], [ %.val, %bb.b ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.val12, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !22
  %i.j = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.039.lcssa.i, i32 noundef %i.i) #27
  %.val = load ptr, ptr %i.g, align 8, !tbaa !39  ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv
  store i32 %i.j, ptr %i.k, align 4, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val13 = load i32, ptr %i.e, align 4, !tbaa !40
  %i.l = sext i32 %.val13 to i64
  %i.m = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %bb.b, label %.critedge, !llvm.loop !160

.critedge:                                        ; preds = %bb.b, %Wlc_BlastReduction.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @Wlc_BlastTable(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) initializes((4, 8)) %5) local_unnamed_addr #3 {
bb.a:
  %6 = alloca %struct.Vec_Int_t_, align 8         ; 6 uses
  %calloc = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store i32 %3, ptr %6, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %3, ptr %i.b, align 4, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %i.c, align 8, !tbaa !39
  %i.d = icmp slt i32 %3, 7
  %i.e = add nsw i32 %3, -6
  %i.f = shl nuw i32 1, %i.e
  %i.g = select i1 %i.d, i32 1, i32 %i.f
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 3                      ; 2 uses
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #26 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 4 uses
  store i32 0, ptr %i.k, align 4, !tbaa !40
  %i.l = icmp sgt i32 %4, 0
  br i1 %i.l, label %.lr.ph, label %Vec_IntFree.exit

.lr.ph:                                           ; preds = %bb.a
  %i.m = shl nuw i32 1, %3
  %.not48 = icmp eq i32 %3, 31
  %i.n = icmp slt i32 %3, 1
  %i.o = icmp slt i32 %3, 6
  %i.p = icmp eq i32 %3, 0
  %i.q = icmp ult i32 %3, 2
  %i.r = icmp ult i32 %3, 3
  %i.s = icmp ult i32 %3, 4
  %i.t = icmp ult i32 %3, 5
  %i.u = icmp ult i32 %3, 6
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.m, i32 1)
  %brmerge = or i1 %.not48, %i.n
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %.03643 = phi i32 [ 0, %.lr.ph ], [ %i.by, %Vec_IntPush.exit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, i8 0, i64 %i.i, i1 false)
  br i1 %brmerge, label %._crit_edge42.split, label %.preheader

.preheader:                                       ; preds = %bb.b, %._crit_edge
  %.041 = phi i32 [ %i.ap, %._crit_edge ], [ 0, %bb.b ] ; 4 uses
  %i.w = mul nuw nsw i32 %.041, %3
  %i.x = and i32 %.041, 63
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nuw i64 1, %i.y
  %i.aa = lshr i32 %.041, 6
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ab ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.e
  %.03540 = phi i32 [ 0, %.preheader ], [ %i.ao, %bb.e ] ; 2 uses
  %i.ad = add nuw nsw i32 %.03540, %i.w           ; 2 uses
  %i.ae = lshr i32 %i.ad, 6
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !56
  %i.ai = and i32 %i.ad, 63
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = shl nuw i64 1, %i.aj
  %i.al = and i64 %i.ah, %i.ak
  %.not39 = icmp eq i64 %i.al, 0
  br i1 %.not39, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = load i64, ptr %i.ac, align 8, !tbaa !56
  %i.an = or i64 %i.am, %i.z
  store i64 %i.an, ptr %i.ac, align 8, !tbaa !56
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ao = add nuw nsw i32 %.03540, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ao, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !161

._crit_edge:                                      ; preds = %bb.e
  %i.ap = add nuw nsw i32 %.041, 1                ; 2 uses
  %exitcond49.not = icmp eq i32 %i.ap, %smax
  br i1 %exitcond49.not, label %._crit_edge42.split, label %.preheader, !llvm.loop !162

._crit_edge42.split:                              ; preds = %._crit_edge, %bb.b
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge42.split
  %i.aq = load i64, ptr %i.j, align 8, !tbaa !56  ; 7 uses
  %i.ar = trunc i64 %i.aq to i1
  %i.as = select i1 %i.ar, i64 3, i64 0
  %i.at = and i64 %i.aq, 3
  %i.au = select i1 %i.p, i64 %i.as, i64 %i.at
  %i.av = mul nuw nsw i64 %i.au, 5
  %.126.i = select i1 %i.q, i64 %i.av, i64 %i.aq
  %i.aw = and i64 %.126.i, 15
  %i.ax = mul nuw nsw i64 %i.aw, 17
  %.227.i = select i1 %i.r, i64 %i.ax, i64 %i.aq
  %i.ay = and i64 %.227.i, 255
  %i.az = mul nuw nsw i64 %i.ay, 257
  %.328.i = select i1 %i.s, i64 %i.az, i64 %i.aq
  %i.ba = and i64 %.328.i, 65535
  %i.bb = mul nuw nsw i64 %i.ba, 65537
  %.429.i = select i1 %i.t, i64 %i.bb, i64 %i.aq
  %i.bc = and i64 %.429.i, 4294967295
  %i.bd = mul nuw i64 %i.bc, 4294967297
  %.5.i = select i1 %i.u, i64 %i.bd, i64 %i.aq
  store i64 %.5.i, ptr %i.j, align 8, !tbaa !56
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge42.split
  %i.be = call i32 @Kit_TruthToGia(ptr noundef %0, ptr noundef nonnull %i.j, i32 noundef %3, ptr noundef nonnull %calloc, ptr noundef nonnull %6, i32 noundef 1) #27
  %i.bf = load i32, ptr %i.k, align 4, !tbaa !40  ; 7 uses
  %i.bg = load i32, ptr %5, align 8, !tbaa !38
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.h, label %.Vec_IntPush.exit_crit_edge

.Vec_IntPush.exit_crit_edge:                      ; preds = %bb.g
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !39
  br label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.bi = icmp slt i32 %i.bf, 16
  br i1 %i.bi, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.v, align 8, !tbaa !39  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.bj, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bj, i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.bl = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.h
  %i.bm = icmp samesign ult i32 %i.bf, 1073741823
  %i.bn = shl nuw nsw i32 %i.bf, 1
  %spec.select.i = select i1 %i.bm, i32 %i.bn, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.bf, %spec.select.i
  %.pre51 = load ptr, ptr %i.v, align 8, !tbaa !39 ; 3 uses
  br i1 %.not.i9.i, label %bb.m, label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.l
  %.not9.i10.i = icmp eq ptr %.pre51, null
  %i.bo = zext nneg i32 %spec.select.i to i64
  %i.bp = shl nuw nsw i64 %i.bo, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = call ptr @realloc(ptr noundef nonnull %.pre51, i64 noundef %i.bp) #25
  br label %Vec_IntGrow.exit11.sink.split.i

bb.o:                                             ; preds = %bb.m
  %i.br = call noalias ptr @malloc(i64 noundef %i.bp) #26
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.n, %bb.o, %bb.j, %bb.k
  %i.bs = phi ptr [ %i.bl, %bb.k ], [ %i.bk, %bb.j ], [ %i.bq, %bb.n ], [ %i.br, %bb.o ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i, %bb.n ], [ %spec.select.i, %bb.o ]
  store ptr %i.bs, ptr %i.v, align 8, !tbaa !39
  store i32 %spec.select.sink.i, ptr %5, align 8, !tbaa !38
  %.pre52 = load i32, ptr %i.k, align 4, !tbaa !40
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.l, %Vec_IntGrow.exit11.sink.split.i
  %i.bt = phi i32 [ %i.bf, %.Vec_IntPush.exit_crit_edge ], [ %i.bf, %bb.l ], [ %.pre52, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bu = phi ptr [ %.pre, %.Vec_IntPush.exit_crit_edge ], [ %.pre51, %bb.l ], [ %i.bs, %Vec_IntGrow.exit11.sink.split.i ]
  %i.bv = add nsw i32 %i.bt, 1
  store i32 %i.bv, ptr %i.k, align 4, !tbaa !40
  %i.bw = sext i32 %i.bt to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.bw
  store i32 %i.be, ptr %i.bx, align 4, !tbaa !22
  %i.by = add nuw nsw i32 %.03643, 1              ; 2 uses
  %exitcond50.not = icmp eq i32 %i.by, %4
  br i1 %exitcond50.not, label %._crit_edge45, label %bb.b, !llvm.loop !163

._crit_edge45:                                    ; preds = %Vec_IntPush.exit
  %.pre53 = load ptr, ptr %i.a, align 8, !tbaa !39 ; 2 uses
  %.not.i = icmp eq ptr %.pre53, null
  br i1 %.not.i, label %Vec_IntFree.exit.thread, label %bb.p

bb.p:                                             ; preds = %._crit_edge45
  call void @free(ptr noundef nonnull %.pre53) #27
  br label %Vec_IntFree.exit.thread

Vec_IntFree.exit.thread:                          ; preds = %._crit_edge45, %bb.p
  call void @free(ptr noundef nonnull %calloc) #27
  br label %bb.q

Vec_IntFree.exit:                                 ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %calloc) #27
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %Vec_IntFree.exit.thread, %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.j) #27
  br label %bb.r

bb.r:                                             ; preds = %Vec_IntFree.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare i32 @Kit_TruthToGia(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @Wlc_BlastLut(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, i32 %4, ptr nofree noundef captures(none) initializes((4, 8)) %5) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %6 = alloca %struct.Vec_Int_t_, align 8         ; 6 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !56
  %calloc = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store i32 %3, ptr %6, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %3, ptr %i.c, align 4, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 4 uses
  store i32 0, ptr %i.e, align 4, !tbaa !40
  %i.f = icmp slt i32 %3, 6
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %3, 0
  %i.h = trunc i64 %1 to i1
  %i.i = select i1 %i.h, i64 3, i64 0
  %i.j = icmp ult i32 %3, 2
  %i.k = and i64 %1, 3
  %i.l = select i1 %i.g, i64 %i.i, i64 %i.k
  %i.m = mul nuw nsw i64 %i.l, 5
  %.126.i = select i1 %i.j, i64 %i.m, i64 %1
  %i.n = icmp ult i32 %3, 3
  %i.o = and i64 %.126.i, 15
  %i.p = mul nuw nsw i64 %i.o, 17
  %.227.i = select i1 %i.n, i64 %i.p, i64 %1
  %i.q = icmp ult i32 %3, 4
  %i.r = and i64 %.227.i, 255
  %i.s = mul nuw nsw i64 %i.r, 257
  %.328.i = select i1 %i.q, i64 %i.s, i64 %1
  %i.t = icmp ult i32 %3, 5
  %i.u = and i64 %.328.i, 65535
  %i.v = mul nuw nsw i64 %i.u, 65537
  %.429.i = select i1 %i.t, i64 %i.v, i64 %1
  %i.w = icmp ult i32 %3, 6
  %i.x = and i64 %.429.i, 4294967295
  %i.y = mul nuw i64 %i.x, 4294967297
  %.5.i = select i1 %i.w, i64 %i.y, i64 %1
  store i64 %.5.i, ptr %i.a, align 8, !tbaa !56
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.z = call i32 @Kit_TruthToGia(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %3, ptr noundef nonnull %calloc, ptr noundef nonnull %6, i32 noundef 1) #27
  %i.aa = load i32, ptr %i.e, align 4, !tbaa !40  ; 7 uses
  %i.ab = load i32, ptr %5, align 8, !tbaa !38
  %i.ac = icmp eq i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp slt i32 %i.aa, 16
  br i1 %i.ad, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.af, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.af, i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ah = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.g, %bb.f
  %i.ai = phi ptr [ %i.ag, %bb.f ], [ %i.ah, %bb.g ]
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.aj = icmp samesign ult i32 %i.aa, 1073741823
  %i.ak = shl nuw nsw i32 %i.aa, 1
  %spec.select.i = select i1 %i.aj, i32 %i.ak, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.aa, %spec.select.i
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !39 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.am, null
  %i.an = zext nneg i32 %spec.select.i to i64
  %i.ao = shl nuw nsw i64 %i.an, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = call ptr @realloc(ptr noundef nonnull %i.am, i64 noundef %i.ao) #25
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aq = call noalias ptr @malloc(i64 noundef %i.ao) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ar = phi ptr [ %i.ap, %bb.j ], [ %i.aq, %bb.k ]
  store ptr %i.ar, ptr %i.al, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.l, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.l ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %5, align 8, !tbaa !38
  %.pre = load i32, ptr %i.e, align 4, !tbaa !40
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.c, %bb.h, %Vec_IntGrow.exit11.sink.split.i
  %i.as = phi i32 [ %i.aa, %bb.c ], [ %i.aa, %bb.h ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !39
  %i.av = add nsw i32 %i.as, 1
  store i32 %i.av, ptr %i.e, align 4, !tbaa !40
  %i.aw = sext i32 %i.as to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aw
  store i32 %i.z, ptr %i.ax, align 4, !tbaa !22
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !39  ; 2 uses
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.m

bb.m:                                             ; preds = %Vec_IntPush.exit
  call void @free(ptr noundef nonnull %i.ay) #27
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Vec_IntPush.exit, %bb.m
  call void @free(ptr noundef nonnull %calloc) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  ret void
}

; Function Attrs: nounwind uwtable
define void @Wlc_BlastPower(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) initializes((4, 8)) %6) local_unnamed_addr #3 {
bb.a:
  %i.a = shl nsw i32 %2, 1                        ; 2 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 7 uses
  %i.c = add i32 %i.a, -1
  %or.cond.i = icmp ult i32 %i.c, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.a ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !40
  store i32 %spec.store.select.i, ptr %i.b, align 8, !tbaa !38
  %.not.i = icmp eq i32 %spec.store.select.i, 0   ; 2 uses
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %spec.store.select.i to i64
  %i.f = shl nsw i64 %i.e, 2
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #26
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !39
  %i.j = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 0, ptr %i.k, align 4, !tbaa !40
  store i32 %spec.store.select.i, ptr %i.j, align 8, !tbaa !38
  br i1 %.not.i, label %Vec_IntAlloc.exit49, label %bb.c

bb.c:                                             ; preds = %Vec_IntAlloc.exit
  %i.l = sext i32 %spec.store.select.i to i64
  %i.m = shl nsw i64 %i.l, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #26
  br label %Vec_IntAlloc.exit49

Vec_IntAlloc.exit49:                              ; preds = %Vec_IntAlloc.exit, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ null, %Vec_IntAlloc.exit ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !39
  %i.q = getelementptr i8, ptr %6, i64 8          ; 2 uses
  %.val45 = load ptr, ptr %i.q, align 8, !tbaa !39 ; 7 uses
  %i.r = load i32, ptr %6, align 8, !tbaa !38
  %.not.i.i = icmp slt i32 %i.r, %2
  br i1 %.not.i.i, label %bb.d, label %Vec_IntGrow.exit.i

bb.d:                                             ; preds = %Vec_IntAlloc.exit49
  %.not9.i.i = icmp eq ptr %.val45, null
  %i.s = sext i32 %2 to i64
  %i.t = shl nsw i64 %i.s, 2                      ; 2 uses
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call ptr @realloc(ptr noundef nonnull %.val45, i64 noundef %i.t) #25
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.t) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = phi ptr [ %i.u, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  store ptr %i.w, ptr %i.q, align 8, !tbaa !39
  store i32 %2, ptr %6, align 8, !tbaa !38
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.g, %Vec_IntAlloc.exit49
  %.val = phi ptr [ %i.w, %bb.g ], [ %.val45, %Vec_IntAlloc.exit49 ] ; 3 uses
  %i.x = icmp sgt i32 %2, 0
  br i1 %i.x, label %Vec_IntFill.exit, label %Vec_IntFill.exit.thread

Vec_IntFill.exit:                                 ; preds = %Vec_IntGrow.exit.i
  %wide.trip.count.i = zext nneg i32 %2 to i64
  %i.y = shl nuw nsw i64 %wide.trip.count.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %.val, i8 0, i64 %i.y, i1 false), !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %2, ptr %i.z, align 4, !tbaa !40
  store i32 1, ptr %.val, align 4, !tbaa !22
  %i.aa = icmp sgt i32 %4, 0
  br i1 %i.aa, label %.lr.ph56.split.us.preheader, label %._crit_edge57

Vec_IntFill.exit.thread:                          ; preds = %Vec_IntGrow.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %2, ptr %i.ab, align 4, !tbaa !40
  store i32 1, ptr %.val, align 4, !tbaa !22
  %i.ac = icmp sgt i32 %4, 0
  br i1 %i.ac, label %.lr.ph56.thread, label %._crit_edge57

.lr.ph56.thread:                                  ; preds = %Vec_IntFill.exit.thread
  %i.ad = tail call ptr @Wlc_VecCopy(ptr noundef nonnull %i.b, ptr noundef %1, i32 noundef %2) ; 2 uses
  tail call void @Wlc_BlastMultiplier2(ptr noundef %0, ptr noundef %.val45, ptr noundef %i.ad, i32 noundef %2, ptr noundef %5, ptr noundef nonnull %i.j)
  %exitcond.peel.not = icmp eq i32 %4, 1
  br i1 %exitcond.peel.not, label %._crit_edge57, label %.lr.ph56.split.peel.next

.lr.ph56.split.us.preheader:                      ; preds = %Vec_IntFill.exit
  %wide.trip.count65 = zext nneg i32 %4 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph56.split.us

.lr.ph56.split.us:                                ; preds = %.lr.ph56.split.us.preheader, %._crit_edge.us
  %indvars.iv62 = phi i64 [ 0, %.lr.ph56.split.us.preheader ], [ %indvars.iv.next63, %._crit_edge.us ] ; 3 uses
  %.04255.us = phi ptr [ null, %.lr.ph56.split.us.preheader ], [ %i.af, %._crit_edge.us ] ; 2 uses
  %i.ae = icmp eq i64 %indvars.iv62, 0
end_hunk_0
