inline.NumInlined: 335
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 25
begin_hunk_0_@Ifn_ManSatFindCofigBitsTest:bb.a
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.p = shl nuw nsw <4 x i64> %vec.ind, splat (i64 2)
  %step.add = shl <4 x i64> %vec.ind, splat (i64 2)
  %i.q = add <4 x i64> %step.add, splat (i64 16)
  %i.r = and <4 x i64> %i.p, splat (i64 60)
  %i.s = and <4 x i64> %i.q, splat (i64 60)
  %i.t = lshr <4 x i64> %broadcast.splat, %i.r
  %i.u = lshr <4 x i64> %broadcast.splat, %i.s
  %i.v = trunc <4 x i64> %i.t to <4 x i32>
  %i.w = trunc <4 x i64> %i.u to <4 x i32>
  %i.x = and <4 x i32> %i.v, splat (i32 15)
  %i.y = and <4 x i32> %i.w, splat (i32 15)
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <4 x i32> %i.x, ptr %i.z, align 16, !tbaa !24
  store <4 x i32> %i.y, ptr %i.aa, align 16, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ac = shl nuw nsw i64 %indvars.iv.i, 2
  %i.ad = and i64 %i.ac, 60
  %i.ae = lshr i64 %3, %i.ad
  %i.af = trunc i64 %i.ae to i32
  %i.ag = and i32 %i.af, 15
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !139

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block, %bb.a
  %i.ai = call i32 @Ifn_ManSatCheckOne(ptr noundef %i.k, ptr noundef readonly %i.m, ptr noundef readonly %1, i32 noundef %2, ptr noundef nonnull %i.a, i32 noundef %i.n, ptr noundef nonnull %i.d)
  store i32 0, ptr %i.e, align 4, !tbaa !85
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %If_ManSatFindCofigBits.exit.thread, label %If_ManSatFindCofigBits.exit

If_ManSatFindCofigBits.exit.thread:               ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.70, i32 noundef 0) ; 0 uses
  br label %Vec_IntPrint.exit

If_ManSatFindCofigBits.exit:                      ; preds = %._crit_edge.i
  tail call void @Ifn_ManSatDeriveOne(ptr noundef %i.k, ptr noundef readonly %i.l, ptr noundef nonnull %i.d)
  %.val6.i.pr = load i32, ptr %i.e, align 4, !tbaa !85 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.al = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.70, i32 noundef %.val6.i.pr) ; 0 uses
  %i.am = icmp sgt i32 %.val6.i.pr, 0
  br i1 %i.am, label %.lr.ph.i7.preheader, label %Vec_IntPrint.exit

.lr.ph.i7.preheader:                              ; preds = %If_ManSatFindCofigBits.exit
  %.val7.i = load ptr, ptr %i.g, align 8, !tbaa !88
  %i.an = zext nneg i32 %.val6.i.pr to i64
  br label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %.lr.ph.i7.preheader, %.lr.ph.i7
  %indvars.iv.i8 = phi i64 [ %indvars.iv.next.i9, %.lr.ph.i7 ], [ 0, %.lr.ph.i7.preheader ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val7.i, i64 %indvars.iv.i8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !24
  %i.aq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71, i32 noundef %i.ap) ; 0 uses
  %indvars.iv.next.i9 = add nuw nsw i64 %indvars.iv.i8, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i9, %i.an
  br i1 %exitcond.not, label %Vec_IntPrint.exit, label %.lr.ph.i7, !llvm.loop !140

Vec_IntPrint.exit:                                ; preds = %.lr.ph.i7, %If_ManSatFindCofigBits.exit.thread, %If_ManSatFindCofigBits.exit
  %.016.i21 = phi i32 [ 0, %If_ManSatFindCofigBits.exit.thread ], [ 1, %If_ManSatFindCofigBits.exit ], [ 1, %.lr.ph.i7 ]
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  tail call void @sat_solver_delete(ptr noundef %i.k) #26
  %i.ar = icmp eq ptr %i.l, null
  br i1 %i.ar, label %Vec_IntFreeP.exit, label %bb.b

bb.b:                                             ; preds = %Vec_IntPrint.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !88 ; 2 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %bb.c, label %.thread.i

.thread.i:                                        ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.at) #26
  br label %bb.c

bb.c:                                             ; preds = %.thread.i, %bb.b
  tail call void @free(ptr noundef nonnull %i.l) #26
  br label %Vec_IntFreeP.exit

Vec_IntFreeP.exit:                                ; preds = %Vec_IntPrint.exit, %bb.c
  %i.au = icmp eq ptr %i.m, null
  br i1 %i.au, label %Vec_IntFreeP.exit12, label %bb.d

bb.d:                                             ; preds = %Vec_IntFreeP.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !88 ; 2 uses
  %.not.i10 = icmp eq ptr %i.aw, null
  br i1 %.not.i10, label %bb.e, label %.thread.i11

.thread.i11:                                      ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.aw) #26
  br label %bb.e

bb.e:                                             ; preds = %.thread.i11, %bb.d
  tail call void @free(ptr noundef nonnull %i.m) #26
  br label %Vec_IntFreeP.exit12

Vec_IntFreeP.exit12:                              ; preds = %bb.e, %Vec_IntFreeP.exit
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !88  ; 2 uses
  %.not.i13 = icmp eq ptr %i.ax, null
  br i1 %.not.i13, label %Vec_IntFreeP.exit15, label %.thread.i14

.thread.i14:                                      ; preds = %Vec_IntFreeP.exit12
  tail call void @free(ptr noundef nonnull %i.ax) #26
  br label %Vec_IntFreeP.exit15

Vec_IntFreeP.exit15:                              ; preds = %Vec_IntFreeP.exit12, %.thread.i14
  tail call void @free(ptr noundef nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  ret i32 %.016.i21
}

declare void @sat_solver_delete(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define i32 @If_ManSatDeriveGiaFromBits(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [1000 x i32], align 16            ; 19 uses
  %i.b = alloca [16 x i32], align 16              ; 10 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %5 = alloca %struct.Vec_Int_t_, align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1564
  %i.e = load i32, ptr %i.d, align 4, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !14   ; 3 uses
  %i.h = sub nsw i32 %i.e, %i.g                   ; 2 uses
  %i.i = load i32, ptr %1, align 8, !tbaa !15     ; 7 uses
  %i.j = add nsw i32 %i.i, 1                      ; 2 uses
  %i.k = icmp ult i32 %i.j, 2
  %i.l = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.i, i1 true)
  %i.m = sub nuw nsw i32 32, %i.l
  %.09.i = select i1 %i.k, i32 %i.j, i32 %i.m     ; 3 uses
  %i.n = add nsw i32 %.09.i, 1                    ; 2 uses
  %i.o = mul nsw i32 %i.n, %i.i
  %i.p = add nsw i32 %i.o, %i.h                   ; 2 uses
  %i.q = ashr i32 %i.p, 6
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %2, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8, !tbaa !49
  %i.u = icmp sgt i32 %i.i, 0
  br i1 %i.u, label %.preheader105.preheader, label %.preheader104

.preheader105.preheader:                          ; preds = %bb.a
  %i.v = getelementptr i8, ptr %3, i64 8
  %.val = load ptr, ptr %i.v, align 8, !tbaa !88
  %wide.trip.count = zext nneg i32 %i.i to i64
  %i.w = add nuw i32 %.09.i, 1                    ; 2 uses
  %unroll_iter = and i32 %i.w, -2
  %i.x = and i32 %.09.i, 1
  %lcmp.mod.not.not = icmp eq i32 %i.x, 0
  %lcmp.mod187 = trunc i32 %i.w to i1
  br label %.preheader105

.preheader105:                                    ; preds = %.preheader105.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.preheader105.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.y = trunc i64 %indvars.iv to i32
  %i.z = mul i32 %i.n, %i.y
  %i.aa = add nsw i32 %i.z, %i.h                  ; 3 uses
  br label %bb.b

.preheader104:                                    ; preds = %._crit_edge, %bb.a
  %i.ab = icmp slt i32 %i.i, %i.g
  br i1 %i.ab, label %.lr.ph131, label %.preheader104.._crit_edge132_crit_edge

.preheader104.._crit_edge132_crit_edge:           ; preds = %.preheader104
  %.pre = sext i32 %i.g to i64
  br label %._crit_edge132

.lr.ph131:                                        ; preds = %.preheader104
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.af = sext i32 %i.i to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.preheader105
  %.085108 = phi i32 [ 0, %.preheader105 ], [ %i.bd, %bb.b ] ; 5 uses
  %.087107 = phi i32 [ 0, %.preheader105 ], [ %.188.1, %bb.b ]
  %niter = phi i32 [ 0, %.preheader105 ], [ %niter.next.1, %bb.b ]
  %i.ag = add nsw i32 %i.aa, %.085108             ; 2 uses
  %i.ah = ashr i32 %i.ag, 6
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !49
  %i.al = and i32 %i.ag, 63
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl nuw i64 1, %i.am
  %i.ao = and i64 %i.ak, %i.an
  %.not101 = icmp eq i64 %i.ao, 0
  %i.ap = shl nuw i32 1, %.085108
  %i.aq = select i1 %.not101, i32 0, i32 %i.ap
  %.188 = or i32 %i.aq, %.087107
  %i.ar = or disjoint i32 %.085108, 1
  %i.as = add nsw i32 %i.aa, %i.ar                ; 2 uses
  %i.at = ashr i32 %i.as, 6
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %2, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !49
  %i.ax = and i32 %i.as, 63
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = and i64 %i.aw, %i.az
  %.not101.1 = icmp eq i64 %i.ba, 0
  %i.bb = shl nuw i32 2, %.085108
  %i.bc = select i1 %.not101.1, i32 0, i32 %i.bb
  %.188.1 = or i32 %i.bc, %.188                   ; 3 uses
  %i.bd = add nuw i32 %.085108, 2                 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.b, !llvm.loop !141

._crit_edge.unr-lcssa:                            ; preds = %bb.b
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod187)
  %i.be = add nsw i32 %i.aa, %i.bd                ; 2 uses
  %i.bf = ashr i32 %i.be, 6
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !49
  %i.bj = and i32 %i.be, 63
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = shl nuw i64 1, %i.bk
  %i.bm = and i64 %i.bi, %i.bl
  %.not101.epil = icmp eq i64 %i.bm, 0
  %i.bn = shl nuw i32 1, %i.bd
  %i.bo = select i1 %.not101.epil, i32 0, i32 %i.bn
  %.188.epil = or i32 %i.bo, %.188.1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.188.lcssa = phi i32 [ %.188.1, %._crit_edge.unr-lcssa ], [ %.188.epil, %.epil.preheader ] ; 2 uses
  %i.bp = ashr i32 %.188.lcssa, 1
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !24
  %i.bt = and i32 %.188.lcssa, 1
  %i.bu = xor i32 %i.bs, %i.bt
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond144.not, label %.preheader104, label %.preheader105, !llvm.loop !142

bb.c:                                             ; preds = %.lr.ph131, %bb.l
  %indvars.iv166 = phi i64 [ %i.af, %.lr.ph131 ], [ %indvars.iv.next167, %bb.l ] ; 7 uses
  %.091129 = phi i32 [ 0, %.lr.ph131 ], [ %.293, %bb.l ] ; 9 uses
  %i.bw = getelementptr inbounds [48 x i8], ptr %i.ac, i64 %indvars.iv166 ; 4 uses
  %i.bx = load i32, ptr %i.bw, align 8            ; 2 uses
  %i.by = and i32 %i.bx, 7
  %i.bz = lshr i32 %i.bx, 3
  %i.ca = and i32 %i.bz, 31                       ; 17 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 8 uses
  switch i32 %i.by, label %bb.l [
    i32 3, label %.preheader
    i32 4, label %.preheader103
    i32 5, label %bb.d
    i32 6, label %bb.e
  ]

.preheader103:                                    ; preds = %bb.c
  %.not136 = icmp eq i32 %i.ca, 0
  br i1 %.not136, label %._crit_edge122, label %.lr.ph121.preheader

.lr.ph121.preheader:                              ; preds = %.preheader103
  %wide.trip.count159 = zext nneg i32 %i.ca to i64
  br label %.lr.ph121

.preheader:                                       ; preds = %bb.c
  %.not137 = icmp eq i32 %i.ca, 0
  br i1 %.not137, label %._crit_edge127, label %.lr.ph126.preheader

.lr.ph126.preheader:                              ; preds = %.preheader
  %wide.trip.count164 = zext nneg i32 %i.ca to i64
  br label %.lr.ph126

.lr.ph126:                                        ; preds = %.lr.ph126.preheader, %.lr.ph126
  %indvars.iv161 = phi i64 [ 0, %.lr.ph126.preheader ], [ %indvars.iv.next162, %.lr.ph126 ] ; 2 uses
  %.289124 = phi i32 [ 1, %.lr.ph126.preheader ], [ %i.ch, %.lr.ph126 ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv161
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !24
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !24
  %i.ch = call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.289124, i32 noundef %i.cg) #26 ; 2 uses
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count164
  br i1 %exitcond165.not, label %._crit_edge127, label %.lr.ph126, !llvm.loop !143

._crit_edge127:                                   ; preds = %.lr.ph126, %.preheader
  %.289.lcssa = phi i32 [ 1, %.preheader ], [ %i.ch, %.lr.ph126 ]
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv166
  store i32 %.289.lcssa, ptr %i.ci, align 4, !tbaa !24
  br label %bb.l

.lr.ph121:                                        ; preds = %.lr.ph121.preheader, %.lr.ph121
  %indvars.iv156 = phi i64 [ 0, %.lr.ph121.preheader ], [ %indvars.iv.next157, %.lr.ph121 ] ; 2 uses
  %.390119 = phi i32 [ 0, %.lr.ph121.preheader ], [ %i.co, %.lr.ph121 ]
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv156
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !24
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !24
  %i.co = call i32 @Gia_ManHashXor(ptr noundef %0, i32 noundef %.390119, i32 noundef %i.cn) #26 ; 2 uses
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %exitcond160.not = icmp eq i64 %indvars.iv.next157, %wide.trip.count159
  br i1 %exitcond160.not, label %._crit_edge122, label %.lr.ph121, !llvm.loop !144

._crit_edge122:                                   ; preds = %.lr.ph121, %.preheader103
  %.390.lcssa = phi i32 [ 0, %.preheader103 ], [ %i.co, %.lr.ph121 ]
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv166
  store i32 %.390.lcssa, ptr %i.cp, align 4, !tbaa !24
  br label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.cq = load i32, ptr %i.cb, align 4, !tbaa !24
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !24
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !24
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !24
  %i.de = call i32 @Gia_ManHashMux(ptr noundef %0, i32 noundef %i.ct, i32 noundef %i.cy, i32 noundef %i.dd) #26
  %i.df = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv166
  store i32 %i.de, ptr %i.df, align 4, !tbaa !24
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %.not134 = icmp eq i32 %i.ca, 31
  br i1 %.not134, label %._crit_edge113, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.dg = shl nuw nsw i32 1, %i.ca                ; 2 uses
  %wide.trip.count149 = zext nneg i32 %i.dg to i64
  %i.dh = icmp eq i32 %i.ca, 0
  br i1 %i.dh, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv145 = phi i64 [ %indvars.iv.next146.1, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.192110 = phi i32 [ %i.dv, %.lr.ph ], [ %.091129, %.lr.ph.preheader ] ; 4 uses
  %i.di = phi i64 [ %i.eg, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %niter193 = phi i64 [ %niter193.next.1, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.dj = add nsw i32 %.192110, 1                 ; 2 uses
  %i.dk = ashr i32 %.192110, 6
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !49
  %i.do = and i32 %.192110, 63
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = shl nuw i64 1, %i.dp
  %i.dr = and i64 %i.dn, %i.dq
  %.not = icmp eq i64 %i.dr, 0
  %i.ds = shl nuw i64 1, %indvars.iv145
  %i.dt = select i1 %.not, i64 0, i64 %i.ds
  %i.du = or i64 %i.di, %i.dt
  %i.dv = add nsw i32 %.192110, 2
  %i.dw = ashr i32 %i.dj, 6
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !49
  %i.ea = and i32 %i.dj, 63
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = shl nuw i64 1, %i.eb
  %i.ed = and i64 %i.dz, %i.ec
  %.not.1 = icmp eq i64 %i.ed, 0
  %i.ee = shl nuw i64 2, %indvars.iv145
  %i.ef = select i1 %.not.1, i64 0, i64 %i.ee
  %i.eg = or i64 %i.du, %i.ef                     ; 2 uses
  %indvars.iv.next146.1 = add nuw nsw i64 %indvars.iv145, 2
  %niter193.next.1 = add i64 %niter193, 2         ; 2 uses
  %niter193.ncmp.1 = icmp eq i64 %niter193.next.1, %wide.trip.count149
  br i1 %niter193.ncmp.1, label %._crit_edge113.loopexit, label %.lr.ph, !llvm.loop !145

.lr.ph.epil.preheader:                            ; preds = %.lr.ph.preheader
  %lcmp.mod191 = icmp eq i32 %i.ca, 0
  call void @llvm.assume(i1 %lcmp.mod191)
  %i.eh = ashr i32 %.091129, 6
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ei
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !49
  %i.el = and i32 %.091129, 63
  %i.em = zext nneg i32 %i.el to i64
  %i.en = lshr i64 %i.ek, %i.em
  %i.eo = and i64 %i.en, 1
  br label %._crit_edge113.loopexit

._crit_edge113.loopexit:                          ; preds = %.lr.ph, %.lr.ph.epil.preheader
  %.lcssa = phi i64 [ %i.eo, %.lr.ph.epil.preheader ], [ %i.eg, %.lr.ph ]
  %i.ep = add i32 %.091129, %i.dg
  br label %._crit_edge113

._crit_edge113:                                   ; preds = %._crit_edge113.loopexit, %bb.e
  %i.eq = phi i64 [ 0, %bb.e ], [ %.lcssa, %._crit_edge113.loopexit ] ; 7 uses
  %.192.lcssa = phi i32 [ %.091129, %bb.e ], [ %i.ep, %._crit_edge113.loopexit ]
  %i.er = icmp eq i32 %i.ca, 0                    ; 2 uses
  %i.es = trunc i64 %i.eq to i1
  %i.et = select i1 %i.es, i64 3, i64 0
end_hunk_0
begin_hunk_1_@If_ManConfigPrint:bb.a
  %i.dp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i64 noundef %i.do) ; 0 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !23  ; 2 uses
  switch i8 %i.dr, label %bb.as [
    i8 0, label %bb.at
    i8 1, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.ds = zext i8 %i.dr to i32                    ; 2 uses
  %i.dt = icmp sgt i32 %i.cl, %i.ds
  %i.du = add nuw nsw i32 %i.ds, 95
  %spec.select172 = select i1 %i.dt, i32 %i.du, i32 63
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.aq, %bb.ar
  %.sink158 = phi i32 [ 49, %bb.ar ], [ 48, %bb.aq ], [ %spec.select172, %bb.as ]
  %putchar94 = tail call i32 @putchar(i32 %.sink158) ; 0 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !23  ; 2 uses
  switch i8 %i.dw, label %bb.av [
    i8 0, label %bb.au
    i8 1, label %bb.aw
  ]

bb.au:                                            ; preds = %bb.at
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.dx = zext i8 %i.dw to i32                    ; 2 uses
  %i.dy = icmp sgt i32 %i.cl, %i.dx
  %i.dz = add nuw nsw i32 %i.dx, 95
  %spec.select173 = select i1 %i.dy, i32 %i.dz, i32 63
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.at, %bb.au
  %.sink159 = phi i32 [ %spec.select173, %bb.av ], [ 49, %bb.at ], [ 48, %bb.au ]
  %putchar93.1 = tail call i32 @putchar(i32 %.sink159) ; 0 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !23  ; 2 uses
  switch i8 %i.eb, label %bb.ay [
    i8 0, label %bb.ax
    i8 1, label %bb.az
  ]

bb.ax:                                            ; preds = %bb.aw
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.ec = zext i8 %i.eb to i32                    ; 2 uses
  %i.ed = icmp sgt i32 %i.cl, %i.ec
  %i.ee = add nuw nsw i32 %i.ec, 95
  %spec.select174 = select i1 %i.ed, i32 %i.ee, i32 63
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.aw, %bb.ax
  %.sink160 = phi i32 [ %spec.select174, %bb.ay ], [ 49, %bb.aw ], [ 48, %bb.ax ]
  %putchar93.2 = tail call i32 @putchar(i32 %.sink160) ; 0 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !23  ; 2 uses
  switch i8 %i.eg, label %bb.bb [
    i8 0, label %bb.ba
    i8 1, label %bb.bc
  ]

bb.ba:                                            ; preds = %bb.az
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.eh = zext i8 %i.eg to i32                    ; 2 uses
  %i.ei = icmp sgt i32 %i.cl, %i.eh
  %i.ej = add nuw nsw i32 %i.eh, 95
  %spec.select175 = select i1 %i.ei, i32 %i.ej, i32 63
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.az, %bb.ba
  %.sink161 = phi i32 [ %spec.select175, %bb.bb ], [ 49, %bb.az ], [ 48, %bb.ba ]
  %putchar93.3 = tail call i32 @putchar(i32 %.sink161) ; 0 uses
  %i.ek = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34) ; 0 uses
  %i.el = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40) ; 0 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.en = load i8, ptr %i.em, align 1, !tbaa !23  ; 2 uses
  switch i8 %i.en, label %bb.be [
    i8 0, label %bb.bf
    i8 1, label %bb.bd
  ]

bb.bd:                                            ; preds = %bb.bc
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.eo = zext i8 %i.en to i32                    ; 2 uses
  %i.ep = icmp sgt i32 %i.cl, %i.eo
  %i.eq = add nuw nsw i32 %i.eo, 95
  %spec.select176 = select i1 %i.ep, i32 %i.eq, i32 63
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bc, %bb.bd
  %.sink162 = phi i32 [ 49, %bb.bd ], [ 48, %bb.bc ], [ %spec.select176, %bb.be ]
  %putchar90 = tail call i32 @putchar(i32 %.sink162) ; 0 uses
  %i.er = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef 2, i32 noundef %1) ; 0 uses
  br label %bb.bh

bb.bg:                                            ; preds = %bb.a
  %i.es = zext i8 %i.a to i32
  %i.et = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef %i.es) ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.ad, %bb.bg, %bb.bf, %._crit_edge123
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @If_ManDeriveGiaFromCells2(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !163  ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %.val232.a = load i32, ptr %i.h, align 8, !tbaa !91
  %i.i = mul nsw i32 %.val232.a, 6
  %i.j = sdiv i32 %i.i, 5
  %i.k = add nsw i32 %i.j, 100
  %i.l = tail call ptr @Gia_ManStart(i32 noundef %i.k) #26 ; 18 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !58     ; 3 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.m) #30
  %i.o = add i64 %i.n, 1
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #28 ; 2 uses
  %i.q = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull readonly dereferenceable(1) %i.m) #26 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.a, %bb.b
  %i.r = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ]
  store ptr %i.r, ptr %i.l, align 8, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !153  ; 3 uses
  %.not.i250.a = icmp eq ptr %i.t, null
  br i1 %.not.i250.a, label %Abc_UtilStrsav.exit251, label %bb.c

bb.c:                                             ; preds = %Abc_UtilStrsav.exit
  %i.u = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.t) #30
  %i.v = add i64 %i.u, 1
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #28 ; 2 uses
  %i.x = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.w, ptr noundef nonnull readonly dereferenceable(1) %i.t) #26 ; 0 uses
  br label %Abc_UtilStrsav.exit251

Abc_UtilStrsav.exit251:                           ; preds = %Abc_UtilStrsav.exit, %bb.c
  %i.y = phi ptr [ %i.w, %bb.c ], [ null, %Abc_UtilStrsav.exit ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !153
  tail call void @Gia_ManFillValue(ptr noundef nonnull %0) #26
  %i.aa = getelementptr i8, ptr %0, i64 32        ; 8 uses
  %.val233.a = load ptr, ptr %i.aa, align 8, !tbaa !86
  %i.ab = getelementptr inbounds nuw i8, ptr %.val233.a, i64 8
  store i32 0, ptr %i.ab, align 4, !tbaa !92
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !84 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 4
  %.val226380 = load i32, ptr %i.ae, align 4, !tbaa !85
  %i.af = icmp sgt i32 %.val226380, 0
  br i1 %i.af, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Abc_UtilStrsav.exit251, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %Abc_UtilStrsav.exit251 ] ; 2 uses
  %i.ag = phi ptr [ %i.ao, %bb.d ], [ %i.ad, %Abc_UtilStrsav.exit251 ]
  %.val239.a = load ptr, ptr %i.aa, align 8, !tbaa !86 ; 2 uses
  %.not = icmp eq ptr %.val239.a, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val240.val.a = load ptr, ptr %i.ah, align 8, !tbaa !88
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.val240.val.a, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !24
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [12 x i8], ptr %.val239.a, i64 %i.ak
  %i.am = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.l)
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 %i.am, ptr %i.an, align 4, !tbaa !92
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !84 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 4
  %.val226.a = load i32, ptr %i.ap, align 4, !tbaa !85
  %i.aq = sext i32 %.val226.a to i64
  %i.ar = icmp slt i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %.lr.ph, label %.critedge, !llvm.loop !164

.critedge:                                        ; preds = %.lr.ph, %bb.d, %Abc_UtilStrsav.exit251
  %i.as = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 11 uses
  store i32 0, ptr %i.at, align 4, !tbaa !85
  store i32 16, ptr %i.as, align 8, !tbaa !87
  %i.au = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 11 uses
  store ptr %i.au, ptr %i.av, align 8, !tbaa !88
  %i.aw = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 9 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i32 0, ptr %i.ax, align 4, !tbaa !85
  store i32 65536, ptr %i.aw, align 8, !tbaa !87
  %i.ay = tail call noalias dereferenceable_or_null(262144) ptr @malloc(i64 noundef 262144) #28
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !88
  tail call void @Gia_ManHashStart(ptr noundef nonnull %i.l) #26
  %i.ba = load i32, ptr %i.h, align 8, !tbaa !91
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph395.a, label %.critedge2

.lr.ph395.a:                                      ; preds = %.critedge
  %i.bc = getelementptr i8, ptr %0, i64 264       ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 140
  %i.bf = getelementptr i8, ptr %i.l, i64 32      ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 148
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph395.a, %bb.fc
  %indvars.iv420 = phi i64 [ 0, %.lr.ph395.a ], [ %indvars.iv.next421, %bb.fc ] ; 7 uses
  %.0394 = phi i32 [ undef, %.lr.ph395.a ], [ %.3, %bb.fc ] ; 7 uses
  %.0199391 = phi i32 [ 0, %.lr.ph395.a ], [ %.2201, %bb.fc ] ; 8 uses
  %.val231.a = load ptr, ptr %i.aa, align 8, !tbaa !86 ; 2 uses
  %i.bj = getelementptr inbounds nuw [12 x i8], ptr %.val231.a, i64 %indvars.iv420 ; 3 uses
  %.not211 = icmp eq ptr %.val231.a, null
  br i1 %.not211, label %.critedge2, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val241 = load i64, ptr %i.bj, align 4         ; 4 uses
  %i.bk = and i64 %.val241, 2147483648
  %.not.i252 = icmp eq i64 %i.bk, 0
  %i.bl = and i64 %.val241, 536870911             ; 2 uses
  %i.bm = icmp ne i64 %i.bl, 536870911
  %narrow.i = and i1 %.not.i252, %i.bm
  br i1 %narrow.i, label %bb.g, label %bb.fc

bb.g:                                             ; preds = %bb.f
  %i.bn = trunc i64 %.val241 to i32               ; 2 uses
  %i.bo = and i32 %i.bn, 536870911                ; 2 uses
  %i.bp = lshr i64 %.val241, 32
  %i.bq = trunc nuw i64 %i.bp to i32
  %i.br = and i32 %i.bq, 536870911
  %i.bs = icmp eq i32 %i.bo, %i.br
  %.not.i253 = icmp ne i32 %i.bo, 536870911
  %or.cond.not.i = and i1 %.not.i253, %i.bs
  br i1 %or.cond.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bt = sub nsw i64 0, %i.bl
  %i.bu = getelementptr inbounds [12 x i8], ptr %i.bj, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !92 ; 2 uses
  %i.bx = lshr i32 %i.bn, 29
  %i.by = xor i32 %i.bw, %i.bx
  %i.bz = call fastcc ptr @Gia_ManAppendObj(ptr noundef nonnull %i.l) ; 3 uses
  %.val11.i = load ptr, ptr %i.bf, align 8, !tbaa !86
  %i.ca = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cb = ptrtoint ptr %.val11.i to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = sdiv exact i64 %i.cc, 12
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = lshr i32 %i.bw, 1
  %i.cg = sub i32 %i.ce, %i.cf
  %i.ch = load i64, ptr %i.bz, align 4
  %i.ci = and i32 %i.cg, 536870911
  %i.cj = zext nneg i32 %i.ci to i64              ; 2 uses
  %i.ck = shl nuw nsw i64 %i.cj, 32
  %i.cl = and i64 %i.ch, -4611686015206162432
  %i.cm = or disjoint i64 %i.ck, %i.cl
  %i.cn = and i32 %i.by, 1                        ; 2 uses
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = shl nuw nsw i64 %i.co, 61
  %i.cq = or disjoint i64 %i.cm, %i.cp
  %i.cr = shl nuw nsw i32 %i.cn, 29
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = or disjoint i64 %i.cq, %i.cs
  %i.cu = or disjoint i64 %i.ct, %i.cj
  store i64 %i.cu, ptr %i.bz, align 4
  %i.cv = load i32, ptr %i.bg, align 8, !tbaa !155
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %i.bg, align 8, !tbaa !155
  %.val.i = load ptr, ptr %i.bf, align 8, !tbaa !86
  %i.cx = ptrtoint ptr %.val.i to i64
  %i.cy = sub i64 %i.ca, %i.cx
  %i.cz = sdiv exact i64 %i.cy, 12
  %i.da = trunc i64 %i.cz to i32
  %i.db = shl i32 %i.da, 1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !92
  br label %bb.fc

bb.i:                                             ; preds = %bb.g
  %.val245.a = load ptr, ptr %i.bc, align 8, !tbaa !156 ; 2 uses
  %i.dd = getelementptr i8, ptr %.val245.a, i64 8
  %.val245.val = load ptr, ptr %i.dd, align 8, !tbaa !88 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.val245.val, i64 %indvars.iv420 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !24
  %.not366 = icmp eq i32 %i.df, 0
  br i1 %.not366, label %bb.fc, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.at, align 4, !tbaa !85
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !24
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %.val245.val, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !24
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %.lr.ph386, label %.critedge4

.lr.ph386:                                        ; preds = %bb.j, %Vec_IntPush.exit
  %.val246428 = phi ptr [ %.val246.a, %Vec_IntPush.exit ], [ %.val245.a, %bb.j ] ; 2 uses
  %indvars.iv402 = phi i64 [ %indvars.iv.next403, %Vec_IntPush.exit ], [ 0, %bb.j ] ; 2 uses
  %i.dl = phi ptr [ %i.ep, %Vec_IntPush.exit ], [ %i.di, %bb.j ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv402
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !24
  %.val230 = load ptr, ptr %i.aa, align 8, !tbaa !86
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [12 x i8], ptr %.val230, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !92
  %i.dt = load i32, ptr %i.at, align 4, !tbaa !85 ; 7 uses
  %i.du = load i32, ptr %i.as, align 8, !tbaa !87
  %i.dv = icmp eq i32 %i.dt, %i.du
  br i1 %i.dv, label %bb.k, label %.lr.ph386.Vec_IntPush.exit_crit_edge

.lr.ph386.Vec_IntPush.exit_crit_edge:             ; preds = %.lr.ph386
  %.pre = load ptr, ptr %i.av, align 8, !tbaa !88
  br label %Vec_IntPush.exit

bb.k:                                             ; preds = %.lr.ph386
  %i.dw = icmp slt i32 %i.dt, 16
  br i1 %i.dw, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.dx = load ptr, ptr %i.av, align 8, !tbaa !88 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.dx, null
  br i1 %.not9.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dy = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.dx, i64 noundef 64) #29
  br label %Vec_IntGrow.exit11.sink.split.i

bb.n:                                             ; preds = %bb.l
  %i.dz = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i

bb.o:                                             ; preds = %bb.k
  %i.ea = icmp samesign ult i32 %i.dt, 1073741823
  %i.eb = shl nuw nsw i32 %i.dt, 1
  %spec.select.i = select i1 %i.ea, i32 %i.eb, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.dt, %spec.select.i
  %.pre426 = load ptr, ptr %i.av, align 8, !tbaa !88 ; 3 uses
  br i1 %.not.i9.i, label %bb.p, label %Vec_IntPush.exit

bb.p:                                             ; preds = %bb.o
  %.not9.i10.i = icmp eq ptr %.pre426, null
  %i.ec = zext nneg i32 %spec.select.i to i64
  %i.ed = shl nuw nsw i64 %i.ec, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ee = call ptr @realloc(ptr noundef nonnull %.pre426, i64 noundef %i.ed) #29
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.p
  %i.ef = call noalias ptr @malloc(i64 noundef %i.ed) #28
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.q, %bb.r, %bb.m, %bb.n
  %storemerge379 = phi ptr [ %i.dz, %bb.n ], [ %i.dy, %bb.m ], [ %i.ee, %bb.q ], [ %i.ef, %bb.r ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.n ], [ 16, %bb.m ], [ %spec.select.i, %bb.q ], [ %spec.select.i, %bb.r ]
  store ptr %storemerge379, ptr %i.av, align 8, !tbaa !88
  store i32 %spec.select.sink.i, ptr %i.as, align 8, !tbaa !87
  %.pre427 = load i32, ptr %i.at, align 4, !tbaa !85
  %.val246.pre = load ptr, ptr %i.bc, align 8, !tbaa !156
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.lr.ph386.Vec_IntPush.exit_crit_edge, %bb.o, %Vec_IntGrow.exit11.sink.split.i
  %.val246.a = phi ptr [ %.val246428, %.lr.ph386.Vec_IntPush.exit_crit_edge ], [ %.val246428, %bb.o ], [ %.val246.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.eg = phi i32 [ %i.dt, %.lr.ph386.Vec_IntPush.exit_crit_edge ], [ %i.dt, %bb.o ], [ %.pre427, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.eh = phi ptr [ %.pre, %.lr.ph386.Vec_IntPush.exit_crit_edge ], [ %.pre426, %bb.o ], [ %storemerge379, %Vec_IntGrow.exit11.sink.split.i ]
  %i.ei = add nsw i32 %i.eg, 1
  store i32 %i.ei, ptr %i.at, align 4, !tbaa !85
  %i.ej = sext i32 %i.eg to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.ej
  store i32 %i.ds, ptr %i.ek, align 4, !tbaa !24
  %indvars.iv.next403 = add nuw nsw i64 %indvars.iv402, 1 ; 2 uses
  %i.el = getelementptr i8, ptr %.val246.a, i64 8
  %.val246.val = load ptr, ptr %i.el, align 8, !tbaa !88 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.val246.val, i64 %indvars.iv420
  %i.en = load i32, ptr %i.em, align 4, !tbaa !24
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %.val246.val, i64 %i.eo ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !24
  %i.er = sext i32 %i.eq to i64
  %i.es = icmp slt i64 %indvars.iv.next403, %i.er
  br i1 %i.es, label %.lr.ph386, label %.critedge4, !llvm.loop !165

.critedge4:                                       ; preds = %Vec_IntPush.exit, %bb.j
  %i.et = load ptr, ptr %i.bd, align 8, !tbaa !166
  %i.eu = getelementptr i8, ptr %i.et, i64 8
  %.val249 = load ptr, ptr %i.eu, align 8, !tbaa !167
  %i.ev = sext i32 %.0199391 to i64
  %i.ew = getelementptr inbounds i8, ptr %.val249, i64 %i.ev ; 16 uses
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !23
  switch i8 %i.ex, label %bb.fc [
    i8 0, label %bb.s
    i8 1, label %bb.t
    i8 2, label %bb.cn
  ]

bb.s:                                             ; preds = %.critedge4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 5
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !23
  %i.fa = zext i8 %i.ez to i64
  %i.fb = shl nuw nsw i64 %i.fa, 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 6
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !23
  %i.fe = zext i8 %i.fd to i64
end_hunk_1
begin_hunk_2_@If_ManDeriveGiaFromCells2:bb.a

bb.dw:                                            ; preds = %bb.dv
  %i.oi = load ptr, ptr %i.ln, align 8, !tbaa !88 ; 2 uses
  %.not9.i.i341 = icmp eq ptr %i.oi, null
  br i1 %.not9.i.i341, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.oj = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.oi, i64 noundef 64) #29
  br label %Vec_IntGrow.exit11.sink.split.i339

bb.dy:                                            ; preds = %bb.dw
  %i.ok = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i339

bb.dz:                                            ; preds = %bb.dv
  %i.ol = icmp samesign ult i32 %i.oe, 1073741823
  %i.om = shl nuw nsw i32 %i.oe, 1
  %spec.select.i336 = select i1 %i.ol, i32 %i.om, i32 2147483647 ; 4 uses
  %.not.i9.i337 = icmp samesign ult i32 %i.oe, %spec.select.i336
  %.pre437.a = load ptr, ptr %i.ln, align 8, !tbaa !88 ; 3 uses
  br i1 %.not.i9.i337, label %bb.ea, label %.sink.split540

bb.ea:                                            ; preds = %bb.dz
  %.not9.i10.i338 = icmp eq ptr %.pre437.a, null
  %i.on = zext nneg i32 %spec.select.i336 to i64
  %i.oo = shl nuw nsw i64 %i.on, 2                ; 2 uses
  br i1 %.not9.i10.i338, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.op = call ptr @realloc(ptr noundef nonnull %.pre437.a, i64 noundef %i.oo) #29
  br label %Vec_IntGrow.exit11.sink.split.i339

bb.ec:                                            ; preds = %bb.ea
  %i.oq = call noalias ptr @malloc(i64 noundef %i.oo) #28
  br label %Vec_IntGrow.exit11.sink.split.i339

Vec_IntGrow.exit11.sink.split.i339:               ; preds = %bb.eb, %bb.ec, %bb.dx, %bb.dy
  %storemerge367 = phi ptr [ %i.ok, %bb.dy ], [ %i.oj, %bb.dx ], [ %i.op, %bb.eb ], [ %i.oq, %bb.ec ] ; 2 uses
  %spec.select.sink.i340 = phi i32 [ 16, %bb.dy ], [ 16, %bb.dx ], [ %spec.select.i336, %bb.eb ], [ %spec.select.i336, %bb.ec ]
  store ptr %storemerge367, ptr %i.ln, align 8, !tbaa !88
  store i32 %spec.select.sink.i340, ptr %i.lk, align 8, !tbaa !87
  %.pre438 = load i32, ptr %i.ll, align 4, !tbaa !85
  br label %.sink.split540

bb.ed:                                            ; preds = %bb.dt
  %i.or = load i32, ptr %i.ll, align 4, !tbaa !85 ; 7 uses
  %i.os = load i32, ptr %i.lk, align 8, !tbaa !87
  %i.ot = icmp eq i32 %i.or, %i.os
  br i1 %i.ot, label %bb.ee, label %.Vec_IntPush.exit351_crit_edge

.Vec_IntPush.exit351_crit_edge:                   ; preds = %bb.ed
  %.pre433 = load ptr, ptr %i.ln, align 8, !tbaa !88
  br label %.sink.split540

bb.ee:                                            ; preds = %bb.ed
  %i.ou = icmp slt i32 %i.or, 16
  br i1 %i.ou, label %bb.ef, label %bb.ei

bb.ef:                                            ; preds = %bb.ee
  %i.ov = load ptr, ptr %i.ln, align 8, !tbaa !88 ; 2 uses
  %.not9.i.i349 = icmp eq ptr %i.ov, null
  br i1 %.not9.i.i349, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ow = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ov, i64 noundef 64) #29
  br label %Vec_IntGrow.exit11.sink.split.i347

bb.eh:                                            ; preds = %bb.ef
  %i.ox = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i347

bb.ei:                                            ; preds = %bb.ee
  %i.oy = icmp samesign ult i32 %i.or, 1073741823
  %i.oz = shl nuw nsw i32 %i.or, 1
  %spec.select.i344 = select i1 %i.oy, i32 %i.oz, i32 2147483647 ; 4 uses
  %.not.i9.i345 = icmp samesign ult i32 %i.or, %spec.select.i344
  %.pre434 = load ptr, ptr %i.ln, align 8, !tbaa !88 ; 3 uses
  br i1 %.not.i9.i345, label %bb.ej, label %.sink.split540

bb.ej:                                            ; preds = %bb.ei
  %.not9.i10.i346 = icmp eq ptr %.pre434, null
  %i.pa = zext nneg i32 %spec.select.i344 to i64
  %i.pb = shl nuw nsw i64 %i.pa, 2                ; 2 uses
  br i1 %.not9.i10.i346, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.pc = call ptr @realloc(ptr noundef nonnull %.pre434, i64 noundef %i.pb) #29
  br label %Vec_IntGrow.exit11.sink.split.i347

bb.el:                                            ; preds = %bb.ej
  %i.pd = call noalias ptr @malloc(i64 noundef %i.pb) #28
  br label %Vec_IntGrow.exit11.sink.split.i347

Vec_IntGrow.exit11.sink.split.i347:               ; preds = %bb.ek, %bb.el, %bb.eg, %bb.eh
  %storemerge = phi ptr [ %i.ox, %bb.eh ], [ %i.ow, %bb.eg ], [ %i.pc, %bb.ek ], [ %i.pd, %bb.el ] ; 2 uses
  %spec.select.sink.i348 = phi i32 [ 16, %bb.eh ], [ 16, %bb.eg ], [ %spec.select.i344, %bb.ek ], [ %spec.select.i344, %bb.el ]
  store ptr %storemerge, ptr %i.ln, align 8, !tbaa !88
  store i32 %spec.select.sink.i348, ptr %i.lk, align 8, !tbaa !87
  %.pre435.a = load i32, ptr %i.ll, align 4, !tbaa !85
  br label %.sink.split540

bb.em:                                            ; preds = %bb.dt
  %i.pe = zext i8 %i.od to i32
  %.val218 = load i32, ptr %i.at, align 4, !tbaa !85
  %i.pf = add nsw i32 %.val218, 2
  %i.pg = icmp sgt i32 %i.pf, %i.pe
  br i1 %i.pg, label %bb.en, label %bb.ew

bb.en:                                            ; preds = %bb.em
  %.val235 = load ptr, ptr %i.av, align 8, !tbaa !88
  %i.ph = zext i8 %i.od to i64
  %i.pi = getelementptr [4 x i8], ptr %.val235, i64 %i.ph
  %i.pj = getelementptr i8, ptr %i.pi, i64 -8
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !24 ; 3 uses
  %i.pl = load i32, ptr %i.ll, align 4, !tbaa !85 ; 7 uses
  %i.pm = load i32, ptr %i.lk, align 8, !tbaa !87
  %i.pn = icmp eq i32 %i.pl, %i.pm
  br i1 %i.pn, label %bb.eo, label %.Vec_IntPush.exit359_crit_edge

.Vec_IntPush.exit359_crit_edge:                   ; preds = %bb.en
  %.pre439 = load ptr, ptr %i.ln, align 8, !tbaa !88
  br label %.sink.split540

bb.eo:                                            ; preds = %bb.en
  %i.po = icmp slt i32 %i.pl, 16
  br i1 %i.po, label %bb.ep, label %bb.es

bb.ep:                                            ; preds = %bb.eo
  %i.pp = load ptr, ptr %i.ln, align 8, !tbaa !88 ; 2 uses
  %.not9.i.i357 = icmp eq ptr %i.pp, null
  br i1 %.not9.i.i357, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.pq = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.pp, i64 noundef 64) #29
  br label %Vec_IntGrow.exit11.sink.split.i355

bb.er:                                            ; preds = %bb.ep
  %i.pr = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i355

bb.es:                                            ; preds = %bb.eo
  %i.ps = icmp samesign ult i32 %i.pl, 1073741823
  %i.pt = shl nuw nsw i32 %i.pl, 1
  %spec.select.i352 = select i1 %i.ps, i32 %i.pt, i32 2147483647 ; 4 uses
  %.not.i9.i353 = icmp samesign ult i32 %i.pl, %spec.select.i352
  %.pre440 = load ptr, ptr %i.ln, align 8, !tbaa !88 ; 3 uses
  br i1 %.not.i9.i353, label %bb.et, label %.sink.split540

bb.et:                                            ; preds = %bb.es
  %.not9.i10.i354 = icmp eq ptr %.pre440, null
  %i.pu = zext nneg i32 %spec.select.i352 to i64
  %i.pv = shl nuw nsw i64 %i.pu, 2                ; 2 uses
  br i1 %.not9.i10.i354, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.pw = call ptr @realloc(ptr noundef nonnull %.pre440, i64 noundef %i.pv) #29
  br label %Vec_IntGrow.exit11.sink.split.i355

bb.ev:                                            ; preds = %bb.et
  %i.px = call noalias ptr @malloc(i64 noundef %i.pv) #28
  br label %Vec_IntGrow.exit11.sink.split.i355

Vec_IntGrow.exit11.sink.split.i355:               ; preds = %bb.eu, %bb.ev, %bb.eq, %bb.er
  %storemerge368 = phi ptr [ %i.pr, %bb.er ], [ %i.pq, %bb.eq ], [ %i.pw, %bb.eu ], [ %i.px, %bb.ev ] ; 2 uses
  %spec.select.sink.i356 = phi i32 [ 16, %bb.er ], [ 16, %bb.eq ], [ %spec.select.i352, %bb.eu ], [ %spec.select.i352, %bb.ev ]
  store ptr %storemerge368, ptr %i.ln, align 8, !tbaa !88
  store i32 %spec.select.sink.i356, ptr %i.lk, align 8, !tbaa !87
  %.pre441 = load i32, ptr %i.ll, align 4, !tbaa !85
  br label %.sink.split540

.sink.split540:                                   ; preds = %Vec_IntGrow.exit11.sink.split.i355, %bb.es, %.Vec_IntPush.exit359_crit_edge, %Vec_IntGrow.exit11.sink.split.i347, %bb.ei, %.Vec_IntPush.exit351_crit_edge, %Vec_IntGrow.exit11.sink.split.i339, %bb.dz, %.Vec_IntPush.exit343_crit_edge
  %.sink547 = phi i32 [ %.pre438, %Vec_IntGrow.exit11.sink.split.i339 ], [ %.pre435.a, %Vec_IntGrow.exit11.sink.split.i347 ], [ %i.oe, %.Vec_IntPush.exit343_crit_edge ], [ %i.oe, %bb.dz ], [ %i.or, %.Vec_IntPush.exit351_crit_edge ], [ %i.or, %bb.ei ], [ %i.pl, %.Vec_IntPush.exit359_crit_edge ], [ %i.pl, %bb.es ], [ %.pre441, %Vec_IntGrow.exit11.sink.split.i355 ] ; 2 uses
  %.sink543 = phi ptr [ %storemerge367, %Vec_IntGrow.exit11.sink.split.i339 ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i347 ], [ %.pre436.a, %.Vec_IntPush.exit343_crit_edge ], [ %.pre437.a, %bb.dz ], [ %.pre433, %.Vec_IntPush.exit351_crit_edge ], [ %.pre434, %bb.ei ], [ %.pre439, %.Vec_IntPush.exit359_crit_edge ], [ %.pre440, %bb.es ], [ %storemerge368, %Vec_IntGrow.exit11.sink.split.i355 ]
  %.sink541 = phi i32 [ 0, %Vec_IntGrow.exit11.sink.split.i339 ], [ 1, %Vec_IntGrow.exit11.sink.split.i347 ], [ 0, %.Vec_IntPush.exit343_crit_edge ], [ 0, %bb.dz ], [ 1, %.Vec_IntPush.exit351_crit_edge ], [ 1, %bb.ei ], [ %i.pk, %.Vec_IntPush.exit359_crit_edge ], [ %i.pk, %bb.es ], [ %i.pk, %Vec_IntGrow.exit11.sink.split.i355 ]
  %i.py = add nsw i32 %.sink547, 1
  store i32 %i.py, ptr %i.ll, align 4, !tbaa !85
  %i.pz = sext i32 %.sink547 to i64
  %i.qa = getelementptr inbounds [4 x i8], ptr %.sink543, i64 %i.pz
  store i32 %.sink541, ptr %i.qa, align 4, !tbaa !24
  br label %bb.ew

bb.ew:                                            ; preds = %.sink.split540, %bb.em
  %exitcond411.not = icmp eq i64 %indvars.iv.next409, 8
  br i1 %exitcond411.not, label %bb.ex, label %bb.dt, !llvm.loop !172

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !23
  %i.qd = zext i8 %i.qc to i64
  %i.qe = shl nuw nsw i64 %i.qd, 8
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ew, i64 13
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !23
  %i.qh = zext i8 %i.qg to i64
  %i.qi = or disjoint i64 %i.qe, %i.qh
  %i.qj = mul nuw i64 %i.qi, 281479271743489
  store i64 %i.qj, ptr %i.e, align 8, !tbaa !49
  %.val217 = load i32, ptr %i.ll, align 4, !tbaa !85
  %i.qk = call i32 @Kit_TruthToGia(ptr noundef nonnull %i.l, ptr noundef nonnull %i.e, i32 noundef %.val217, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.lk, i32 noundef 1) #26
  %i.ql = getelementptr inbounds nuw i8, ptr %i.ew, i64 9
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !23  ; 3 uses
  switch i8 %i.qm, label %1 [
    i8 0, label %bb.fa
    i8 1, label %bb.ey
  ]

bb.ey:                                            ; preds = %bb.ex
  br label %bb.fa

1:                                                ; preds = %bb.ex
  %2 = zext i8 %i.qm to i32
  %.val216 = load i32, ptr %i.at, align 4, !tbaa !85
  %3 = add nsw i32 %.val216, 2
  %4 = icmp sgt i32 %3, %2
  br i1 %4, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %1
  %.val234 = load ptr, ptr %i.av, align 8, !tbaa !88
  %i.qn = zext i8 %i.qm to i64
  %i.qo = getelementptr [4 x i8], ptr %.val234, i64 %i.qn
  %i.qp = getelementptr i8, ptr %i.qo, i64 -8
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !24
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ex, %bb.ey, %1, %bb.ez
  %.1 = phi i32 [ %.0394, %1 ], [ 1, %bb.ey ], [ %i.qq, %bb.ez ], [ 0, %bb.ex ] ; 2 uses
  %i.qr = call i32 @Gia_ManHashMux(ptr noundef nonnull %i.l, i32 noundef %.1, i32 noundef %i.qk, i32 noundef %i.ob) #26
  %.val227 = load ptr, ptr %i.aa, align 8, !tbaa !86
  %i.qs = getelementptr inbounds nuw [12 x i8], ptr %.val227, i64 %indvars.iv420
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  store i32 %i.qr, ptr %i.qt, align 4, !tbaa !92
  %i.qu = load ptr, ptr %i.ln, align 8, !tbaa !88 ; 2 uses
  %.not.i360 = icmp eq ptr %i.qu, null
  br i1 %.not.i360, label %Vec_IntFree.exit361, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  call void @free(ptr noundef nonnull %i.qu) #26
  br label %Vec_IntFree.exit361

Vec_IntFree.exit361:                              ; preds = %bb.fa, %bb.fb
  call void @free(ptr noundef nonnull %i.lk) #26
  %i.qv = load i32, ptr %i.bh, align 4, !tbaa !24
  %i.qw = add nsw i32 %i.qv, %.0199391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %bb.fc

bb.fc:                                            ; preds = %bb.s, %Vec_IntFree.exit361, %Vec_IntFree.exit, %.critedge4, %bb.f, %bb.i, %bb.h
  %.2201 = phi i32 [ %.0199391, %bb.h ], [ %.0199391, %bb.f ], [ %.0199391, %bb.i ], [ %i.fl, %bb.s ], [ %i.lj, %Vec_IntFree.exit ], [ %i.qw, %Vec_IntFree.exit361 ], [ %.0199391, %.critedge4 ]
  %.3 = phi i32 [ %.0394, %bb.h ], [ %.0394, %bb.f ], [ %.0394, %bb.i ], [ %.0394, %bb.s ], [ %.0394, %Vec_IntFree.exit ], [ %.1, %Vec_IntFree.exit361 ], [ %.0394, %.critedge4 ]
  %indvars.iv.next421 = add nuw nsw i64 %indvars.iv420, 1 ; 2 uses
  %i.qx = load i32, ptr %i.h, align 8, !tbaa !91
  %i.qy = sext i32 %i.qx to i64
  %i.qz = icmp slt i64 %indvars.iv.next421, %i.qy
  br i1 %i.qz, label %bb.e, label %.critedge2, !llvm.loop !173

.critedge2:                                       ; preds = %bb.e, %bb.fc, %.critedge
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !89 ; 2 uses
  %i.rc = getelementptr i8, ptr %i.rb, i64 4
  %.val397 = load i32, ptr %i.rc, align 4, !tbaa !85
  %i.rd = icmp sgt i32 %.val397, 0
  br i1 %i.rd, label %.lr.ph399, label %.critedge6

.lr.ph399:                                        ; preds = %.critedge2, %bb.fd
  %indvars.iv423 = phi i64 [ %indvars.iv.next424, %bb.fd ], [ 0, %.critedge2 ] ; 2 uses
  %i.re = phi ptr [ %i.rw, %bb.fd ], [ %i.rb, %.critedge2 ]
  %.val242 = load ptr, ptr %i.aa, align 8, !tbaa !86 ; 2 uses
  %.not212 = icmp eq ptr %.val242, null
  br i1 %.not212, label %.critedge6, label %bb.fd

bb.fd:                                            ; preds = %.lr.ph399
  %i.rf = getelementptr i8, ptr %i.re, i64 8
  %.val243.val = load ptr, ptr %i.rf, align 8, !tbaa !88
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %.val243.val, i64 %indvars.iv423
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !24
  %i.ri = sext i32 %i.rh to i64
  %i.rj = getelementptr inbounds [12 x i8], ptr %.val242, i64 %i.ri ; 3 uses
  %i.rk = load i64, ptr %i.rj, align 4            ; 2 uses
  %i.rl = and i64 %i.rk, 536870911
  %i.rm = sub nsw i64 0, %i.rl
  %i.rn = getelementptr inbounds [12 x i8], ptr %i.rj, i64 %i.rm
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !92
  %i.rq = trunc i64 %i.rk to i32
  %i.rr = lshr i32 %i.rq, 29
  %i.rs = and i32 %i.rr, 1
  %i.rt = xor i32 %i.rs, %i.rp
  %i.ru = call fastcc i32 @Gia_ManAppendCo(ptr noundef nonnull %i.l, i32 noundef %i.rt)
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  store i32 %i.ru, ptr %i.rv, align 4, !tbaa !92
  %indvars.iv.next424 = add nuw nsw i64 %indvars.iv423, 1 ; 2 uses
  %i.rw = load ptr, ptr %i.ra, align 8, !tbaa !89 ; 2 uses
  %i.rx = getelementptr i8, ptr %i.rw, i64 4
  %.val = load i32, ptr %i.rx, align 4, !tbaa !85
  %i.ry = sext i32 %.val to i64
  %i.rz = icmp slt i64 %indvars.iv.next424, %i.ry
  br i1 %i.rz, label %.lr.ph399, label %.critedge6, !llvm.loop !174

.critedge6:                                       ; preds = %.lr.ph399, %bb.fd, %.critedge2
  call void @Gia_ManHashStop(ptr noundef nonnull %i.l) #26
  %i.sa = getelementptr i8, ptr %0, i64 16
  %.val248 = load i32, ptr %i.sa, align 8, !tbaa !97
  call void @Gia_ManSetRegNum(ptr noundef nonnull %i.l, i32 noundef %.val248) #26
  %i.sb = load ptr, ptr %i.av, align 8, !tbaa !88 ; 2 uses
  %.not.i362 = icmp eq ptr %i.sb, null
  br i1 %.not.i362, label %Vec_IntFree.exit363, label %bb.fe

bb.fe:                                            ; preds = %.critedge6
  call void @free(ptr noundef nonnull %i.sb) #26
  br label %Vec_IntFree.exit363

Vec_IntFree.exit363:                              ; preds = %.critedge6, %bb.fe
  call void @free(ptr noundef nonnull %i.as) #26
  %i.sc = load ptr, ptr %i.az, align 8, !tbaa !88 ; 2 uses
  %.not.i364 = icmp eq ptr %i.sc, null
  br i1 %.not.i364, label %Vec_IntFree.exit365, label %bb.ff

bb.ff:                                            ; preds = %Vec_IntFree.exit363
  call void @free(ptr noundef nonnull %i.sc) #26
  br label %Vec_IntFree.exit365

Vec_IntFree.exit365:                              ; preds = %Vec_IntFree.exit363, %bb.ff
  call void @free(ptr noundef nonnull %i.aw) #26
  %i.sd = call ptr @Gia_ManCleanup(ptr noundef nonnull %i.l) #26
  call void @Gia_ManStop(ptr noundef nonnull %i.l) #26
  ret ptr %i.sd
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define nonnull ptr @Ifn_NtkDeriveTruth(ptr nofree noundef captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !15     ; 6 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph159, label %.preheader

.lr.ph159:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1564
  %i.d = load i32, ptr %i.c, align 4, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1560
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19   ; 4 uses
  %i.g = icmp sgt i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1584
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8496 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.k = load i32, ptr %i.j, align 4, !tbaa !13   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 7 uses
  %i.m = tail call i32 @llvm.usub.sat.i32(i32 %i.a, i32 6)
  %i.n = icmp sgt i32 %i.k, 0                     ; 2 uses
  %wide.trip.count.i = zext i32 %i.k to i64       ; 13 uses
  br i1 %i.g, label %.lr.ph159.split.us, label %.lr.ph159.split

.lr.ph159.split.us:                               ; preds = %.lr.ph159
  br i1 %i.n, label %.lr.ph.us.us.preheader, label %.preheader

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph159.split.us
  %i.o = zext nneg i32 %i.f to i64
  %i.p = sext i32 %i.d to i64
  %i.q = zext nneg i32 %i.k to i64
  %wide.trip.count198 = zext nneg i32 %i.a to i64
  %wide.trip.count192 = zext nneg i32 %i.f to i64 ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.h, i64 %i.p
  %i.r = shl nuw nsw i64 %wide.trip.count.i, 3
  %min.iters.check259 = icmp ult i32 %i.f, 8
  %n.vec261 = and i64 %wide.trip.count192, 2147483640 ; 3 uses
  %cmp.n269 = icmp eq i64 %n.vec261, %wide.trip.count192
  %min.iters.check247 = icmp ult i32 %i.k, 6
  %n.vec249 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n256 = icmp eq i64 %n.vec249, %wide.trip.count.i
  %xtraiter406 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod407.not = icmp eq i64 %xtraiter406, 0
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %Abc_TtCopy.exit.loopexit.us.us
  %indvars.iv195 = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvars.iv.next196, %Abc_TtCopy.exit.loopexit.us.us ] ; 4 uses
  %i.s = mul i64 %i.r, %indvars.iv195
  %i.t = mul nuw nsw i64 %indvars.iv195, %i.o
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.t ; 2 uses
  br i1 %min.iters.check259, label %scalar.ph258.preheader, label %vector.body262

vector.body262:                                   ; preds = %.lr.ph.us.us, %vector.body262
  %index263 = phi i64 [ %index.next267, %vector.body262 ], [ 0, %.lr.ph.us.us ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ac, %vector.body262 ], [ zeroinitializer, %.lr.ph.us.us ]
  %vec.phi264 = phi <4 x i32> [ %i.ad, %vector.body262 ], [ zeroinitializer, %.lr.ph.us.us ]
  %vec.ind = phi <4 x i32> [ %vec.ind.next, %vector.body262 ], [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph.us.us ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.u = getelementptr [4 x i8], ptr %gep, i64 %index263 ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %wide.load265 = load <4 x i32>, ptr %i.u, align 4, !tbaa !24
  %wide.load266 = load <4 x i32>, ptr %i.v, align 4, !tbaa !24
  %i.w = icmp eq <4 x i32> %wide.load265, zeroinitializer
  %i.x = icmp eq <4 x i32> %wide.load266, zeroinitializer
  %i.y = shl nuw <4 x i32> splat (i32 1), %vec.ind
  %i.z = shl nuw <4 x i32> splat (i32 1), %step.add
  %i.aa = select <4 x i1> %i.w, <4 x i32> zeroinitializer, <4 x i32> %i.y
  %i.ab = select <4 x i1> %i.x, <4 x i32> zeroinitializer, <4 x i32> %i.z
  %i.ac = add <4 x i32> %i.aa, %vec.phi           ; 2 uses
  %i.ad = add <4 x i32> %i.ab, %vec.phi264        ; 2 uses
  %index.next267 = add nuw i64 %index263, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ae = icmp eq i64 %index.next267, %n.vec261
  br i1 %i.ae, label %middle.block268, label %vector.body262, !llvm.loop !175

middle.block268:                                  ; preds = %vector.body262
  %bin.rdx = add <4 x i32> %i.ad, %i.ac
  %i.af = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n269, label %._crit_edge.us.us, label %scalar.ph258.preheader

scalar.ph258.preheader:                           ; preds = %.lr.ph.us.us, %middle.block268
  %indvars.iv189.ph = phi i64 [ 0, %.lr.ph.us.us ], [ %n.vec261, %middle.block268 ]
  %.0107155.us.us.ph = phi i32 [ 0, %.lr.ph.us.us ], [ %i.af, %middle.block268 ]
  br label %scalar.ph258

scalar.ph258:                                     ; preds = %scalar.ph258.preheader, %scalar.ph258
  %indvars.iv189 = phi i64 [ %indvars.iv.next190, %scalar.ph258 ], [ %indvars.iv189.ph, %scalar.ph258.preheader ] ; 3 uses
  %.0107155.us.us = phi i32 [ %.1108.us.us, %scalar.ph258 ], [ %.0107155.us.us.ph, %scalar.ph258.preheader ]
  %i.ag = getelementptr [4 x i8], ptr %gep, i64 %indvars.iv189
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !24
  %.not112.us.us = icmp eq i32 %i.ah, 0
  %i.ai = trunc nuw nsw i64 %indvars.iv189 to i32
  %i.aj = shl nuw i32 1, %i.ai
  %i.ak = select i1 %.not112.us.us, i32 0, i32 %i.aj
  %.1108.us.us = add nsw i32 %i.ak, %.0107155.us.us ; 2 uses
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond193.not = icmp eq i64 %indvars.iv.next190, %wide.trip.count192
  br i1 %exitcond193.not, label %._crit_edge.us.us, label %scalar.ph258, !llvm.loop !176

.lr.ph.i.us.us:                                   ; preds = %.lr.ph.i.us.us.prol.loopexit, %.lr.ph.i.us.us
  %indvars.iv.i.us.us = phi i64 [ %indvars.iv.next.i.us.us.3, %.lr.ph.i.us.us ], [ %indvars.iv.i.us.us.unr, %.lr.ph.i.us.us.prol.loopexit ] ; 6 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.i.us.us
  %i.am = load i64, ptr %i.al, align 8, !tbaa !49
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i.us.us
  store i64 %i.am, ptr %i.an, align 8, !tbaa !49
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.i.us.us, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next.i.us.us
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !49
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i.us.us
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !49
  %indvars.iv.next.i.us.us.1 = add nuw nsw i64 %indvars.iv.i.us.us, 2 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next.i.us.us.1
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !49
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i.us.us.1
  store i64 %i.as, ptr %i.at, align 8, !tbaa !49
  %indvars.iv.next.i.us.us.2 = add nuw nsw i64 %indvars.iv.i.us.us, 3 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next.i.us.us.2
  %i.av = load i64, ptr %i.au, align 8, !tbaa !49
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i.us.us.2
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !49
  %indvars.iv.next.i.us.us.3 = add nuw nsw i64 %indvars.iv.i.us.us, 4 ; 2 uses
  %exitcond.not.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.us.us.3, %wide.trip.count.i
end_hunk_2
begin_hunk_3_@Ifn_NtkAddClauses:bb.a
  %i.r = shl i32 %.0203253, 16
  %i.s = add i32 %i.r, 65536
  %i.t = and i32 %i.q, 65535
  %i.u = or disjoint i32 %i.t, %i.s
  store i32 %i.u, ptr %i.p, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !261

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0203253.epil.init = phi i32 [ %i.c, %.lr.ph ], [ %i.n, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod417 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod417)
  %i.v = add nsw i32 %.0203253.epil.init, 1
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %indvars.iv.epil.init ; 2 uses
  %i.x = load i32, ptr %i.w, align 8
  %i.y = shl i32 %.0203253.epil.init, 16
  %i.z = and i32 %i.x, 65535
  %i.aa = or disjoint i32 %i.z, %i.y
  store i32 %i.aa, ptr %i.w, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0203.lcssa = phi i32 [ %i.c, %bb.a ], [ %i.n, %._crit_edge.loopexit.unr-lcssa ], [ %i.v, %.epil.preheader ]
  tail call void @sat_solver_setnvars(ptr noundef %2, i32 noundef %.0203.lcssa) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1552 ; 2 uses
  %i.ac = load i32, ptr %0, align 8, !tbaa !15    ; 4 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph265, label %.preheader237

.lr.ph265:                                        ; preds = %._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1564
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1560 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load i32, ptr %i.ab, align 8, !tbaa !12 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph265.split, label %.preheader237

.preheader237:                                    ; preds = %.critedge, %.lr.ph265, %._crit_edge
  %.lcssa248 = phi i32 [ %i.ac, %._crit_edge ], [ %i.ac, %.lr.ph265 ], [ %i.cg, %.critedge ] ; 2 uses
  %i.aj = load i32, ptr %i.d, align 4, !tbaa !14  ; 2 uses
  %i.ak = icmp slt i32 %.lcssa248, %i.aj
  br i1 %i.ak, label %.lr.ph292, label %._crit_edge293

.lr.ph292:                                        ; preds = %.preheader237
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ar = sext i32 %.lcssa248 to i64
  br label %bb.e

.lr.ph265.split:                                  ; preds = %.lr.ph265, %.critedge
  %i.as = phi i32 [ %i.cg, %.critedge ], [ %i.ac, %.lr.ph265 ]
  %i.at = phi i32 [ %i.ch, %.critedge ], [ %i.ah, %.lr.ph265 ] ; 2 uses
  %indvars.iv319 = phi i64 [ %indvars.iv.next320, %.critedge ], [ 0, %.lr.ph265 ] ; 3 uses
  %.not224260 = icmp sgt i32 %i.at, 0
  br i1 %.not224260, label %.lr.ph263, label %.critedge

.lr.ph263:                                        ; preds = %.lr.ph265.split
  %i.au = load i32, ptr %i.af, align 8, !tbaa !19
  %i.av = trunc nuw nsw i64 %indvars.iv319 to i32
  %i.aw = mul nsw i32 %i.au, %i.av
  %i.ax = load i32, ptr %i.ae, align 4, !tbaa !18
  %i.ay = add nsw i32 %i.aw, %i.ax                ; 2 uses
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %i.ag, i64 %indvars.iv319
  %broadcast.splatinsert384 = insertelement <4 x i32> poison, i32 %i.ay, i64 0
  %broadcast.splat385 = shufflevector <4 x i32> %broadcast.splatinsert384, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge258
  %indvars.iv.next317 = add nuw nsw i64 %indvars.iv316, 1 ; 2 uses
  %i.ba = load i32, ptr %i.ab, align 8, !tbaa !12 ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %.not224 = icmp slt i64 %indvars.iv.next317, %i.bb
  br i1 %.not224, label %bb.d, label %.critedge.loopexit, !llvm.loop !262

bb.d:                                             ; preds = %.lr.ph263, %bb.c
  %indvars.iv316 = phi i64 [ 0, %.lr.ph263 ], [ %indvars.iv.next317, %bb.c ] ; 3 uses
  %i.bc = load i32, ptr %i.az, align 8
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv316
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !24
  %i.bf = icmp eq i32 %i.be, 0
  %i.bg = zext i1 %i.bf to i32
  %i.bh = lshr i32 %i.bc, 15
  %i.bi = and i32 %i.bh, 131070
  %i.bj = or disjoint i32 %i.bi, %i.bg
  store i32 %i.bj, ptr %i.a, align 16, !tbaa !24
  %i.bk = load i32, ptr %i.af, align 8, !tbaa !19 ; 4 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph257.preheader, label %._crit_edge258

.lr.ph257.preheader:                              ; preds = %bb.d
  %wide.trip.count314 = zext nneg i32 %i.bk to i64 ; 3 uses
  %i.bm = trunc nuw nsw i64 %indvars.iv316 to i32 ; 2 uses
  %min.iters.check = icmp ult i32 %i.bk, 4
  br i1 %min.iters.check, label %.lr.ph257.preheader411, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph257.preheader
  %n.vec = and i64 %wide.trip.count314, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bm, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind386 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next387, %vector.body ] ; 2 uses
  %i.bn = lshr <4 x i32> %broadcast.splat, %vec.ind
  %i.bo = and <4 x i32> %i.bn, splat (i32 1)
  %i.bp = add <4 x i32> %broadcast.splat385, %vec.ind386
  %i.bq = shl <4 x i32> %i.bp, splat (i32 1)
  %i.br = or disjoint <4 x i32> %i.bq, %i.bo
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store <4 x i32> %i.br, ptr %i.bt, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %vec.ind.next387 = add <4 x i32> %vec.ind386, splat (i32 4)
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !263

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count314
  br i1 %cmp.n, label %._crit_edge258, label %.lr.ph257.preheader411

.lr.ph257.preheader411:                           ; preds = %.lr.ph257.preheader, %middle.block
  %indvars.iv311.ph = phi i64 [ 0, %.lr.ph257.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph257

.lr.ph257:                                        ; preds = %.lr.ph257.preheader411, %.lr.ph257
  %indvars.iv311 = phi i64 [ %indvars.iv.next312, %.lr.ph257 ], [ %indvars.iv311.ph, %.lr.ph257.preheader411 ] ; 3 uses
  %i.bv = trunc nuw nsw i64 %indvars.iv311 to i32
  %i.bw = lshr i32 %i.bm, %i.bv
  %i.bx = and i32 %i.bw, 1
  %i.by = trunc i64 %indvars.iv311 to i32
  %.tr = add i32 %i.ay, %i.by
  %i.bz = shl i32 %.tr, 1
  %i.ca = or disjoint i32 %i.bz, %i.bx
  %indvars.iv.next312 = add nuw nsw i64 %indvars.iv311, 1 ; 3 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next312
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !24
  %exitcond315.not = icmp eq i64 %indvars.iv.next312, %wide.trip.count314
  br i1 %exitcond315.not, label %._crit_edge258, label %.lr.ph257, !llvm.loop !264

._crit_edge258:                                   ; preds = %.lr.ph257, %middle.block, %bb.d
  %i.cc = sext i32 %i.bk to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = call i32 @sat_solver_addclause(ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ce) #26
  %.not223 = icmp eq i32 %i.cf, 0
  br i1 %.not223, label %.critedge228, label %bb.c

.critedge.loopexit:                               ; preds = %bb.c
  %.pre = load i32, ptr %0, align 8, !tbaa !15
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph265.split
  %i.cg = phi i32 [ %.pre, %.critedge.loopexit ], [ %i.as, %.lr.ph265.split ] ; 3 uses
  %i.ch = phi i32 [ %i.ba, %.critedge.loopexit ], [ %i.at, %.lr.ph265.split ]
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1 ; 2 uses
  %i.ci = sext i32 %i.cg to i64
  %i.cj = icmp slt i64 %indvars.iv.next320, %i.ci
  br i1 %i.cj, label %.lr.ph265.split, label %.preheader237, !llvm.loop !265

bb.e:                                             ; preds = %.lr.ph292, %.critedge226
  %indvars.iv348 = phi i64 [ %i.ar, %.lr.ph292 ], [ %indvars.iv.next349, %.critedge226 ] ; 3 uses
  %i.ck = getelementptr inbounds [48 x i8], ptr %i.al, i64 %indvars.iv348 ; 10 uses
  %i.cl = load i32, ptr %i.ck, align 8            ; 5 uses
  %i.cm = lshr i32 %i.cl, 3                       ; 2 uses
  %i.cn = and i32 %i.cm, 31                       ; 14 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 9 uses
  %i.cp = and i32 %i.cl, 7
  switch i32 %i.cp, label %.critedge226 [
    i32 3, label %bb.f
    i32 4, label %bb.h
    i32 5, label %bb.k
    i32 6, label %bb.o
  ]

bb.f:                                             ; preds = %bb.e
  %i.cq = lshr i32 %i.cl, 15
  %i.cr = and i32 %i.cq, 131070
  store i32 %i.cr, ptr %i.a, align 16, !tbaa !24
  %.not297 = icmp eq i32 %i.cn, 0
  br i1 %.not297, label %._crit_edge289, label %.lr.ph288.preheader

.lr.ph288.preheader:                              ; preds = %bb.f
  %wide.trip.count346 = zext nneg i32 %i.cn to i64
  br label %.lr.ph288

.lr.ph288:                                        ; preds = %.lr.ph288.preheader, %bb.g
  %indvars.iv341 = phi i64 [ 1, %.lr.ph288.preheader ], [ %indvars.iv.next342.a, %bb.g ] ; 2 uses
  %indvars.iv339 = phi i64 [ 0, %.lr.ph288.preheader ], [ %indvars.iv.next340, %bb.g ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv339
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !24
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [48 x i8], ptr %i.al, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 8
  %i.cx = lshr i32 %i.cw, 15                      ; 2 uses
  %i.cy = and i32 %i.cx, 131070
  %i.cz = or i32 %i.cx, 1
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv341
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !24
  %i.db = load i32, ptr %i.ck, align 8
  %i.dc = lshr i32 %i.db, 15
  %i.dd = or i32 %i.dc, 1
  store i32 %i.dd, ptr %i.b, align 16, !tbaa !24
  store i32 %i.cy, ptr %i.ap, align 4, !tbaa !24
  %i.de = call i32 @sat_solver_addclause(ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.aq) #26
  %.not222 = icmp eq i32 %i.de, 0
  br i1 %.not222, label %.critedge228, label %bb.g

bb.g:                                             ; preds = %.lr.ph288
  %indvars.iv.next342.a = add nuw nsw i64 %indvars.iv341, 1 ; 2 uses
  %indvars.iv.next340 = add nuw nsw i64 %indvars.iv339, 1 ; 2 uses
  %exitcond347.not = icmp eq i64 %indvars.iv.next340, %wide.trip.count346
  br i1 %exitcond347.not, label %._crit_edge289, label %.lr.ph288, !llvm.loop !266

._crit_edge289:                                   ; preds = %bb.g, %bb.f
  %.0195.lcssa = phi i64 [ 1, %bb.f ], [ %indvars.iv.next342.a, %bb.g ]
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0195.lcssa
  %i.dg = call i32 @sat_solver_addclause(ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.df) #26
  %.not221 = icmp eq i32 %i.dg, 0
  br i1 %.not221, label %.critedge228, label %.critedge226

bb.h:                                             ; preds = %bb.e
  %i.dh = shl nuw i32 2, %i.cn                    ; 2 uses
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %.preheader.lr.ph, label %.critedge226

.preheader.lr.ph:                                 ; preds = %bb.h
  %i.dj = zext nneg i32 %i.cn to i64              ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dm = add nuw nsw i32 %i.cn, 1                ; 2 uses
  %min.iters.check389 = icmp samesign ult i32 %i.cn, 7
  %n.vec391 = and i32 %i.dm, 56                   ; 5 uses
  %i.dn = icmp eq i32 %n.vec391, 8
  %i.do = icmp eq i32 %n.vec391, 16
  %i.dp = icmp eq i32 %n.vec391, 24
  %cmp.n401 = icmp eq i32 %i.dm, %n.vec391
  %xtraiter418 = and i64 %i.dj, 1
  %i.dq = icmp eq i32 %i.cn, 1                    ; 0 uses
  %unroll_iter421 = and i64 %i.dj, 30
  %lcmp.mod419.not = icmp eq i64 %xtraiter418, 0
  %lcmp.mod420 = trunc i32 %i.cm to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.j
  %.0190283 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.gd, %bb.j ] ; 7 uses
  br i1 %min.iters.check389, label %scalar.ph388.preheader, label %vector.ph390

vector.ph390:                                     ; preds = %.preheader
  %broadcast.splatinsert392 = insertelement <4 x i32> poison, i32 %.0190283, i64 0
  %broadcast.splat393 = shufflevector <4 x i32> %broadcast.splatinsert392, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.dr = lshr <4 x i32> %broadcast.splat393, <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ds = lshr <4 x i32> %broadcast.splat393, <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  br i1 %i.dn, label %middle.block400, label %vector.body394.1

vector.body394.1:                                 ; preds = %vector.ph390
  %i.dt = lshr <4 x i32> %broadcast.splat393, <i32 8, i32 9, i32 10, i32 11>
  %i.du = lshr <4 x i32> %broadcast.splat393, <i32 12, i32 13, i32 14, i32 15>
  %i.dv = add nuw <4 x i32> %i.dt, %i.dr          ; 2 uses
  %i.dw = add nuw nsw <4 x i32> %i.du, %i.ds      ; 2 uses
  br i1 %i.do, label %middle.block400, label %vector.body394.2

vector.body394.2:                                 ; preds = %vector.body394.1
  %i.dx = lshr <4 x i32> %broadcast.splat393, <i32 16, i32 17, i32 18, i32 19>
  %i.dy = lshr <4 x i32> %broadcast.splat393, <i32 20, i32 21, i32 22, i32 23>
  %i.dz = add <4 x i32> %i.dx, %i.dv              ; 2 uses
  %i.ea = add nuw nsw <4 x i32> %i.dy, %i.dw      ; 2 uses
  br i1 %i.dp, label %middle.block400, label %vector.body394.3

vector.body394.3:                                 ; preds = %vector.body394.2
  %i.eb = lshr <4 x i32> %broadcast.splat393, <i32 24, i32 25, i32 26, i32 27>
  %i.ec = lshr <4 x i32> %broadcast.splat393, <i32 28, i32 29, i32 30, i32 31>
  %i.ed = add <4 x i32> %i.eb, %i.dz
  %i.ee = add nuw nsw <4 x i32> %i.ec, %i.ea
  br label %middle.block400

middle.block400:                                  ; preds = %vector.body394.3, %vector.body394.2, %vector.body394.1, %vector.ph390
  %.lcssa408 = phi <4 x i32> [ %i.dr, %vector.ph390 ], [ %i.dv, %vector.body394.1 ], [ %i.dz, %vector.body394.2 ], [ %i.ed, %vector.body394.3 ]
  %.lcssa407 = phi <4 x i32> [ %i.ds, %vector.ph390 ], [ %i.dw, %vector.body394.1 ], [ %i.ea, %vector.body394.2 ], [ %i.ee, %vector.body394.3 ]
  %bin.rdx = add <4 x i32> %.lcssa407, %.lcssa408
  %i.ef = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n401, label %.loopexit, label %scalar.ph388.preheader

scalar.ph388.preheader:                           ; preds = %.preheader, %middle.block400
  %.0186278.ph = phi i32 [ 0, %.preheader ], [ %i.ef, %middle.block400 ]
  %.1192277.ph = phi i32 [ 0, %.preheader ], [ %n.vec391, %middle.block400 ]
  br label %scalar.ph388

scalar.ph388:                                     ; preds = %scalar.ph388.preheader, %scalar.ph388
  %.0186278 = phi i32 [ %i.eh, %scalar.ph388 ], [ %.0186278.ph, %scalar.ph388.preheader ]
  %.1192277 = phi i32 [ %i.ei, %scalar.ph388 ], [ %.1192277.ph, %scalar.ph388.preheader ] ; 3 uses
  %i.eg = lshr i32 %.0190283, %.1192277
  %i.eh = add i32 %i.eg, %.0186278                ; 2 uses
  %i.ei = add nuw nsw i32 %.1192277, 1
  %exitcond332.not = icmp eq i32 %.1192277, %i.cn
  br i1 %exitcond332.not, label %.loopexit, label %scalar.ph388, !llvm.loop !267

.loopexit:                                        ; preds = %scalar.ph388, %middle.block400
  %.lcssa379 = phi i32 [ %i.ef, %middle.block400 ], [ %i.eh, %scalar.ph388 ]
  %i.ej = and i32 %.lcssa379, 1
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.el = load i32, ptr %i.ck, align 8
  %i.em = lshr i32 %.0190283, %i.cn
  %i.en = and i32 %i.em, 1
  %i.eo = lshr i32 %i.el, 15
  %i.ep = and i32 %i.eo, 131070
  %i.eq = or disjoint i32 %i.ep, %i.en
  store i32 %i.eq, ptr %i.a, align 16, !tbaa !24
  switch i32 %i.cn, label %.lr.ph281 [
    i32 0, label %._crit_edge282
    i32 1, label %.lr.ph281.epil.preheader
  ]

.lr.ph281:                                        ; preds = %bb.i, %.lr.ph281
  %indvars.iv333 = phi i64 [ %indvars.iv.next334.1, %.lr.ph281 ], [ 0, %bb.i ] ; 4 uses
  %niter422 = phi i64 [ %niter422.next.1, %.lr.ph281 ], [ 0, %bb.i ]
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv333
  %i.es = load i32, ptr %i.er, align 4, !tbaa !24
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [48 x i8], ptr %i.al, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 8
  %i.ew = trunc nuw nsw i64 %indvars.iv333 to i32
  %i.ex = lshr i32 %.0190283, %i.ew
  %i.ey = and i32 %i.ex, 1
  %i.ez = lshr i32 %i.ev, 15
  %i.fa = and i32 %i.ez, 131070
  %i.fb = or disjoint i32 %i.fa, %i.ey
  %indvars.iv.next334 = or disjoint i64 %indvars.iv333, 1 ; 3 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next334
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !24
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.next334
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !24
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [48 x i8], ptr %i.al, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 8
  %i.fi = trunc nuw nsw i64 %indvars.iv.next334 to i32
  %i.fj = lshr i32 %.0190283, %i.fi
  %i.fk = and i32 %i.fj, 1
  %i.fl = lshr i32 %i.fh, 15
  %i.fm = and i32 %i.fl, 131070
  %i.fn = or disjoint i32 %i.fm, %i.fk
  %indvars.iv.next334.1 = add nuw nsw i64 %indvars.iv333, 2 ; 3 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next334.1
  store i32 %i.fn, ptr %i.fo, align 8, !tbaa !24
  %niter422.next.1 = add nuw i64 %niter422, 2     ; 2 uses
  %niter422.ncmp.1 = icmp eq i64 %niter422.next.1, %unroll_iter421
  br i1 %niter422.ncmp.1, label %._crit_edge282.loopexit.unr-lcssa, label %.lr.ph281, !llvm.loop !268

._crit_edge282.loopexit.unr-lcssa:                ; preds = %.lr.ph281
  br i1 %lcmp.mod419.not, label %._crit_edge282, label %.lr.ph281.epil.preheader

.lr.ph281.epil.preheader:                         ; preds = %bb.i, %._crit_edge282.loopexit.unr-lcssa
  %indvars.iv333.epil.init = phi i64 [ 0, %bb.i ], [ %indvars.iv.next334.1, %._crit_edge282.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod420)
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv333.epil.init
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !24
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [48 x i8], ptr %i.al, i64 %i.fr
  %i.ft = load i32, ptr %i.fs, align 8
  %i.fu = trunc nuw nsw i64 %indvars.iv333.epil.init to i32
  %i.fv = lshr i32 %.0190283, %i.fu
  %i.fw = and i32 %i.fv, 1
  %i.fx = lshr i32 %i.ft, 15
  %i.fy = and i32 %i.fx, 131070
  %i.fz = or disjoint i32 %i.fy, %i.fw
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv333.epil.init
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store i32 %i.fz, ptr %i.gb, align 4, !tbaa !24
  br label %._crit_edge282

._crit_edge282:                                   ; preds = %.lr.ph281.epil.preheader, %._crit_edge282.loopexit.unr-lcssa, %bb.i
  %i.gc = call i32 @sat_solver_addclause(ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.dl) #26
  %.not220 = icmp eq i32 %i.gc, 0
  br i1 %.not220, label %.critedge228, label %bb.j

bb.j:                                             ; preds = %._crit_edge282, %.loopexit
  %i.gd = add nuw nsw i32 %.0190283, 1            ; 2 uses
  %exitcond338.not = icmp eq i32 %i.gd, %i.dh
  br i1 %exitcond338.not, label %.critedge226, label %.preheader, !llvm.loop !269

bb.k:                                             ; preds = %bb.e
  %i.ge = lshr i32 %i.cl, 15
  %i.gf = and i32 %i.ge, 131070
  store i32 %i.gf, ptr %i.a, align 16, !tbaa !24
  %i.gg = load i32, ptr %i.co, align 4, !tbaa !24
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [48 x i8], ptr %i.al, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 8
  %i.gk = lshr i32 %i.gj, 15
  %i.gl = or i32 %i.gk, 1
  store i32 %i.gl, ptr %i.am, align 4, !tbaa !24
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !24
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds [48 x i8], ptr %i.al, i64 %i.go
  %i.gq = load i32, ptr %i.gp, align 8
  %i.gr = lshr i32 %i.gq, 15
  %i.gs = or i32 %i.gr, 1
  store i32 %i.gs, ptr %i.an, align 8, !tbaa !24
  %i.gt = call i32 @sat_solver_addclause(ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ao) #26
  %.not215 = icmp eq i32 %i.gt, 0
  br i1 %.not215, label %.critedge228, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gu = load i32, ptr %i.ck, align 8
  %i.gv = lshr i32 %i.gu, 15
  %i.gw = or i32 %i.gv, 1
  store i32 %i.gw, ptr %i.a, align 16, !tbaa !24
  %i.gx = load i32, ptr %i.co, align 4, !tbaa !24
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [48 x i8], ptr %i.al, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 8
  %i.hb = lshr i32 %i.ha, 15
  %i.hc = or i32 %i.hb, 1
  store i32 %i.hc, ptr %i.am, align 4, !tbaa !24
  %i.hd = load i32, ptr %i.gm, align 8, !tbaa !24
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [48 x i8], ptr %i.al, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 8
  %i.hh = lshr i32 %i.hg, 15
  %i.hi = and i32 %i.hh, 131070
  store i32 %i.hi, ptr %i.an, align 8, !tbaa !24
  %i.hj = call i32 @sat_solver_addclause(ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ao) #26
  %.not216 = icmp eq i32 %i.hj, 0
  br i1 %.not216, label %.critedge228, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hk = load i32, ptr %i.ck, align 8
  %i.hl = lshr i32 %i.hk, 15
  %i.hm = and i32 %i.hl, 131070
  store i32 %i.hm, ptr %i.a, align 16, !tbaa !24
  %i.hn = load i32, ptr %i.co, align 4, !tbaa !24
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [48 x i8], ptr %i.al, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 8
  %i.hr = lshr i32 %i.hq, 15
  %i.hs = and i32 %i.hr, 131070
  store i32 %i.hs, ptr %i.am, align 4, !tbaa !24
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ck, i64 12 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !24
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [48 x i8], ptr %i.al, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 8
  %i.hy = lshr i32 %i.hx, 15
  %i.hz = or i32 %i.hy, 1
  store i32 %i.hz, ptr %i.an, align 8, !tbaa !24
  %i.ia = call i32 @sat_solver_addclause(ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ao) #26
  %.not217 = icmp eq i32 %i.ia, 0
  br i1 %.not217, label %.critedge228, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ib = load i32, ptr %i.ck, align 8
  %i.ic = lshr i32 %i.ib, 15
  %i.id = or i32 %i.ic, 1
  store i32 %i.id, ptr %i.a, align 16, !tbaa !24
  %i.ie = load i32, ptr %i.co, align 4, !tbaa !24
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [48 x i8], ptr %i.al, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 8
  %i.ii = lshr i32 %i.ih, 15
  %i.ij = and i32 %i.ii, 131070
  store i32 %i.ij, ptr %i.am, align 4, !tbaa !24
  %i.ik = load i32, ptr %i.ht, align 4, !tbaa !24
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [48 x i8], ptr %i.al, i64 %i.il
  %i.in = load i32, ptr %i.im, align 8
  %i.io = lshr i32 %i.in, 15
  %i.ip = and i32 %i.io, 131070
  store i32 %i.ip, ptr %i.an, align 8, !tbaa !24
  %i.iq = call i32 @sat_solver_addclause(ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ao) #26
  %.not218 = icmp eq i32 %i.iq, 0
  br i1 %.not218, label %.critedge228, label %.critedge226

bb.o:                                             ; preds = %bb.e
  %i.ir = lshr i32 %i.cl, 8
  %i.is = and i32 %i.ir, 255
  %.not214273.not = icmp eq i32 %i.cn, 31
  br i1 %.not214273.not, label %.critedge226, label %.lr.ph276

.lr.ph276:                                        ; preds = %bb.o
  %i.it = shl nuw nsw i32 1, %i.cn
  %i.iu = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv348 ; 2 uses
  %.not295 = icmp eq i32 %i.cn, 0
  %wide.trip.count329 = zext nneg i32 %i.cn to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph276, %bb.u
  %.3194274 = phi i32 [ 0, %.lr.ph276 ], [ %i.ke, %bb.u ] ; 3 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !24 ; 2 uses
  %i.iw = icmp eq i32 %i.iv, -1
  br i1 %i.iw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ix = load i32, ptr %i.ck, align 8
  %i.iy = lshr i32 %i.ix, 15                      ; 2 uses
  %i.iz = and i32 %i.iy, 131070
  store i32 %i.iz, ptr %i.a, align 16, !tbaa !24
  %i.ja = or i32 %i.iy, 1
  store i32 %i.ja, ptr %i.b, align 16, !tbaa !24
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1196 = phi i32 [ 1, %bb.q ], [ 0, %bb.p ]     ; 2 uses
  br i1 %.not295, label %._crit_edge271, label %.lr.ph270.preheader

.lr.ph270.preheader:                              ; preds = %bb.r
  %i.jb = zext nneg i32 %.1196 to i64
  br label %.lr.ph270

.lr.ph270:                                        ; preds = %.lr.ph270.preheader, %.lr.ph270
  %indvars.iv324 = phi i64 [ %i.jb, %.lr.ph270.preheader ], [ %indvars.iv.next325, %.lr.ph270 ] ; 3 uses
  %indvars.iv322 = phi i64 [ 0, %.lr.ph270.preheader ], [ %indvars.iv.next323.a, %.lr.ph270 ] ; 3 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv322
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !24
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [48 x i8], ptr %i.al, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 8
  %i.jh = trunc nuw nsw i64 %indvars.iv322 to i32
  %i.ji = lshr i32 %.3194274, %i.jh
  %i.jj = and i32 %i.ji, 1
  %i.jk = lshr i32 %i.jg, 15
  %i.jl = and i32 %i.jk, 131070
  %i.jm = or disjoint i32 %i.jl, %i.jj            ; 2 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv324
  store i32 %i.jm, ptr %i.jn, align 4, !tbaa !24
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv324
  store i32 %i.jm, ptr %i.jo, align 4, !tbaa !24
  %indvars.iv.next323.a = add nuw nsw i64 %indvars.iv322, 1 ; 2 uses
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 2 uses
  %exitcond330.not = icmp eq i64 %indvars.iv.next323.a, %wide.trip.count329
  br i1 %exitcond330.not, label %._crit_edge271.loopexit, label %.lr.ph270, !llvm.loop !270

._crit_edge271.loopexit:                          ; preds = %.lr.ph270
  %i.jp = trunc nuw nsw i64 %indvars.iv.next325 to i32
  br label %._crit_edge271

._crit_edge271:                                   ; preds = %._crit_edge271.loopexit, %bb.r
  %.2197.lcssa = phi i32 [ %.1196, %bb.r ], [ %i.jp, %._crit_edge271.loopexit ] ; 2 uses
  %i.jq = add nuw nsw i32 %.3194274, %i.is
  %i.jr = shl nuw nsw i32 %i.jq, 1                ; 2 uses
  %i.js = or disjoint i32 %i.jr, 1
  %i.jt = zext nneg i32 %.2197.lcssa to i64       ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jt
  store i32 %i.js, ptr %i.ju, align 4, !tbaa !24
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jt
  store i32 %i.jr, ptr %i.jv, align 4, !tbaa !24
  %i.jw = add nuw nsw i32 %.2197.lcssa, 1         ; 2 uses
  %.not210 = icmp eq i32 %i.iv, 0
  br i1 %.not210, label %.thread, label %bb.s

bb.s:                                             ; preds = %._crit_edge271
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jx
  %i.jz = call i32 @sat_solver_addclause(ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.jy) #26
  %.not211 = icmp eq i32 %i.jz, 0
  br i1 %.not211, label %.critedge228, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.pre352 = load i32, ptr %i.iu, align 4, !tbaa !24
  %i.ka = icmp eq i32 %.pre352, 1
  br i1 %i.ka, label %bb.u, label %.thread

.thread:                                          ; preds = %._crit_edge271, %bb.t
  %i.kb = zext nneg i32 %i.jw to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kb
  %i.kd = call i32 @sat_solver_addclause(ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.kc) #26
  %.not213 = icmp eq i32 %i.kd, 0
  br i1 %.not213, label %.critedge228, label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread
  %i.ke = add nuw nsw i32 %.3194274, 1            ; 2 uses
  %exitcond331.not = icmp eq i32 %i.ke, %i.it
  br i1 %exitcond331.not, label %.critedge226, label %bb.p, !llvm.loop !271

.critedge226:                                     ; preds = %bb.u, %bb.j, %bb.o, %bb.h, %bb.e, %bb.n, %._crit_edge289
  %indvars.iv.next349 = add nsw i64 %indvars.iv348, 1 ; 2 uses
  %i.kf = load i32, ptr %i.d, align 4, !tbaa !14  ; 2 uses
  %i.kg = sext i32 %i.kf to i64
  %i.kh = icmp slt i64 %indvars.iv.next349, %i.kg
  br i1 %i.kh, label %bb.e, label %._crit_edge293, !llvm.loop !272

._crit_edge293:                                   ; preds = %.critedge226, %.preheader237
  %.lcssa = phi i32 [ %i.aj, %.preheader237 ], [ %i.kf, %.critedge226 ]
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kj = add nsw i32 %.lcssa, -1
  %i.kk = sext i32 %i.kj to i64                   ; 2 uses
  %i.kl = getelementptr inbounds [48 x i8], ptr %i.ki, i64 %i.kk
  %i.km = load i32, ptr %i.kl, align 8
  %i.kn = getelementptr inbounds [4 x i8], ptr %1, i64 %i.kk
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !24
  %i.kp = icmp eq i32 %i.ko, 0
  %i.kq = zext i1 %i.kp to i32
  %i.kr = lshr i32 %i.km, 15
  %i.ks = and i32 %i.kr, 131070
  %i.kt = or disjoint i32 %i.ks, %i.kq
  store i32 %i.kt, ptr %i.a, align 16, !tbaa !24
  %i.ku = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.kv = call i32 @sat_solver_addclause(ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ku) #26
  %.not = icmp ne i32 %i.kv, 0
  %.229 = zext i1 %.not to i32
  br label %.critedge228

.critedge228:                                     ; preds = %._crit_edge258, %bb.m, %bb.l, %bb.k, %._crit_edge289, %bb.n, %bb.s, %.thread, %._crit_edge282, %.lr.ph288, %._crit_edge293
  %.9 = phi i32 [ 0, %bb.s ], [ %.229, %._crit_edge293 ], [ 0, %.lr.ph288 ], [ 0, %._crit_edge282 ], [ 0, %bb.m ], [ 0, %.thread ], [ 0, %bb.n ], [ 0, %._crit_edge289 ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %._crit_edge258 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %.9
}

declare i32 @sat_solver_nvars(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define void @Ifn_NtkMatchPrintStatus(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i32 noundef %1) ; 0 uses
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, i32 noundef %3) ; 0 uses
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef %4) ; 0 uses
  %i.d = tail call i32 @sat_solver_nvars(ptr noundef %0) #26
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, i32 noundef %i.d) ; 0 uses
  %i.f = tail call i32 @sat_solver_nclauses(ptr noundef %0) #26
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, i32 noundef %i.f) ; 0 uses
  %i.h = tail call i32 @sat_solver_nconflicts(ptr noundef %0) #26
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.h) ; 0 uses
  %switch.selectcmp = icmp eq i32 %2, 1
  %switch.select = select i1 %switch.selectcmp, ptr @.str.51, ptr @.str.52
  %switch.selectcmp8 = icmp eq i32 %2, -1
  %switch.select9 = select i1 %switch.selectcmp8, ptr @.str.50, ptr %switch.select
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %switch.select9) ; 0 uses
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.53)
  %i.k = sitofp i64 %5 to double
  %i.l = fdiv double %i.k, 1.000000e+06
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.74, double noundef %i.l)
  ret void
}

declare i32 @sat_solver_nclauses(ptr noundef) local_unnamed_addr #9

declare i32 @sat_solver_nconflicts(ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define void @Ifn_NtkMatchPrintConfig(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !14   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1568 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !20
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %.lr.ph29, label %._crit_edge30

.lr.ph29:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1564
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1560
  %i.i = getelementptr i8, ptr %1, i64 328
  %i.j = sext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph29, %bb.h
  %indvars.iv32 = phi i64 [ %i.j, %.lr.ph29 ], [ %indvars.iv.next33, %bb.h ] ; 5 uses
  %i.k = load i32, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.l = load i32, ptr %i.a, align 4, !tbaa !14   ; 2 uses
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.n = sext i32 %i.k to i64
  %i.o = trunc nsw i64 %indvars.iv32 to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ %i.n, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds [48 x i8], ptr %i.f, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 8              ; 2 uses
  %i.r = and i32 %i.q, 7
  %i.s = icmp eq i32 %i.r, 6
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.t = lshr i32 %i.q, 8
  %i.u = and i32 %i.t, 255
  %i.v = icmp eq i32 %i.u, %i.o
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.l, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !273

bb.e:                                             ; preds = %bb.c
  %putchar = tail call i32 @putchar(i32 32)       ; 0 uses
  br label %bb.h

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %i.w = load i32, ptr %i.g, align 4, !tbaa !18   ; 2 uses
  %i.x = sext i32 %i.w to i64
  %.not = icmp slt i64 %indvars.iv32, %i.x
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.y = trunc nsw i64 %indvars.iv32 to i32
  %i.z = sub nsw i32 %i.y, %i.w                   ; 2 uses
  %i.aa = load i32, ptr %i.h, align 8, !tbaa !19  ; 2 uses
  %i.ab = srem i32 %i.z, %i.aa
  %i.ac = sdiv i32 %i.z, %i.aa
  %i.ad = icmp eq i32 %i.ab, 0
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.54, i32 noundef %i.ac) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.f, %bb.g, %bb.e
  %.val = load ptr, ptr %i.i, align 8, !tbaa !125
  %i.af = getelementptr inbounds [4 x i8], ptr %.val, i64 %indvars.iv32
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !24
  %i.ah = icmp eq i32 %i.ag, 1
  %i.ai = zext i1 %i.ah to i32
  %i.aj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, i32 noundef %i.ai) ; 0 uses
  %indvars.iv.next33 = add nsw i64 %indvars.iv32, 1 ; 2 uses
  %i.ak = load i32, ptr %i.c, align 8, !tbaa !20
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next33, %i.al
  br i1 %i.am, label %bb.b, label %._crit_edge30, !llvm.loop !274

._crit_edge30:                                    ; preds = %bb.h, %bb.a
  ret void
}

end_hunk_3
begin_hunk_4_@Gia_ManAppendObj:bb.a
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %i.p, %bb.g ], [ %i.q, %bb.h ] ; 2 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !86
  %i.s = load i32, ptr %i.c, align 4, !tbaa !300  ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [12 x i8], ptr %i.r, i64 %i.t
  %i.v = sub nsw i32 %i.g, %i.s
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, 12
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.u, i8 0, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !302  ; 2 uses
  %.not34 = icmp eq ptr %i.z, null
  br i1 %.not34, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = sext i32 %i.g to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %i.z, i64 noundef %i.ab) #29 ; 2 uses
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !302
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !300 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = sub nsw i32 %i.g, %i.ad
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 0, i64 %i.ai, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.g, ptr %i.c, align 4, !tbaa !300
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  %i.aj = getelementptr i8, ptr %0, i64 100
  %.val = load i32, ptr %i.aj, align 4, !tbaa !85
  %.not35 = icmp eq i32 %.val, 0
  br i1 %.not35, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !85 ; 7 uses
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !87
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.n, label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = icmp slt i32 %i.am, 16
  br i1 %i.ap, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !88 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ar, null
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ar, i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i

bb.q:                                             ; preds = %bb.o
  %i.at = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.q, %bb.p
  %i.au = phi ptr [ %i.as, %bb.p ], [ %i.at, %bb.q ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !88
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.n
  %i.av = icmp samesign ult i32 %i.am, 1073741823
  %i.aw = shl nuw nsw i32 %i.am, 1
  %spec.select.i = select i1 %i.av, i32 %i.aw, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.am, %spec.select.i
  br i1 %.not.i9.i, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !88 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ay, null
  %i.az = zext nneg i32 %spec.select.i to i64
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef %i.ba) #29
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.ba) #28
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bd = phi ptr [ %i.bb, %bb.t ], [ %i.bc, %bb.u ]
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !88
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.v, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.v ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ak, align 8, !tbaa !87
  %.pre = load i32, ptr %i.al, align 4, !tbaa !85
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.m, %bb.r, %Vec_IntGrow.exit11.sink.split.i
  %i.be = phi i32 [ %i.am, %bb.m ], [ %i.am, %bb.r ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !88
  %i.bh = add nsw i32 %i.be, 1
  store i32 %i.bh, ptr %i.al, align 4, !tbaa !85
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
  store i32 0, ptr %i.bj, align 4, !tbaa !24
  br label %bb.w

bb.w:                                             ; preds = %Vec_IntPush.exit, %bb.l
  %i.bk = load i32, ptr %i.a, align 8, !tbaa !91  ; 2 uses
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.a, align 8, !tbaa !91
  %i.bm = getelementptr i8, ptr %0, i64 32
  %.val36 = load ptr, ptr %i.bm, align 8, !tbaa !86
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds [12 x i8], ptr %.val36, i64 %i.bn
  ret ptr %i.bo
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #20

declare void @Gia_ObjAddFanout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare ptr @Gia_ManToAigSimple(ptr noundef) local_unnamed_addr #9

declare ptr @Cnf_Derive(ptr noundef, i32 noundef) local_unnamed_addr #9

declare void @Aig_ManStop(ptr noundef) local_unnamed_addr #9

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #13 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !24
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #26 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #26
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #26 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !303
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #30
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #26 ; 0 uses
  call void @free(ptr noundef %i.d) #26
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !303, !noalias !304
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #26, !inline_history !307 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #9

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #23

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nounwind }
attributes #27 = { nounwind allocsize(0,1) }
attributes #28 = { nounwind allocsize(0) }
attributes #29 = { nounwind allocsize(1) }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 1576}
!9 = !{!"Ifn_Ntk_t_", !5, i64 0, !5, i64 4, !6, i64 8, !6, i64 1064, !5, i64 1548, !5, i64 1552, !5, i64 1556, !5, i64 1560, !5, i64 1564, !5, i64 1568, !10, i64 1576, !6, i64 1584, !6, i64 5680, !6, i64 8496}
!10 = !{!"p1 long", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !5, i64 1552}
!13 = !{!9, !5, i64 1556}
!14 = !{!9, !5, i64 4}
!15 = !{!9, !5, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!9, !5, i64 1564}
!19 = !{!9, !5, i64 1560}
!20 = !{!9, !5, i64 1568}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 omnipotent char", !11, i64 0}
!23 = !{!6, !6, i64 0}
!24 = !{!5, !5, i64 0}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !17}
!27 = distinct !{!27, !17, !28, !29}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = distinct !{!30, !17, !29, !28}
!31 = distinct !{!31, !17}
!32 = distinct !{!32, !17}
!33 = distinct !{!33, !17}
!34 = distinct !{!34, !17}
!35 = distinct !{!35, !17}
!36 = distinct !{!36, !17}
!37 = distinct !{!37, !17}
!38 = distinct !{!38, !17}
!39 = distinct !{!39, !17}
!40 = distinct !{!40, !17}
!41 = distinct !{!41, !17}
!42 = distinct !{!42, !17}
!43 = distinct !{!43, !17}
!44 = distinct !{!44, !17}
!45 = !{!9, !5, i64 1548}
!46 = distinct !{!46, !17}
!47 = distinct !{!47, !17, !48}
!48 = !{!"llvm.loop.unswitch.partial.disable"}
!49 = !{!50, !50, i64 0}
!50 = !{!"long", !6, i64 0}
!51 = distinct !{!51, !17, !29, !28}
!52 = distinct !{!52, !17, !29, !28}
!53 = distinct !{!53, !17}
!54 = distinct !{!54, !17, !28, !29}
!55 = distinct !{!55, !17, !28, !29}
!56 = distinct !{!56, !17, !28, !29}
!57 = distinct !{!57, !17, !29, !28}
!58 = !{!59, !22, i64 0}
!59 = !{!"Gia_Man_t_", !22, i64 0, !22, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !60, i64 32, !61, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !62, i64 64, !62, i64 72, !63, i64 80, !63, i64 96, !5, i64 112, !5, i64 116, !5, i64 120, !63, i64 128, !61, i64 144, !61, i64 152, !62, i64 160, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !61, i64 184, !64, i64 192, !61, i64 200, !61, i64 208, !61, i64 216, !5, i64 224, !5, i64 228, !61, i64 232, !5, i64 240, !62, i64 248, !62, i64 256, !62, i64 264, !65, i64 272, !65, i64 280, !62, i64 288, !11, i64 296, !62, i64 304, !62, i64 312, !66, i64 320, !22, i64 328, !62, i64 336, !62, i64 344, !62, i64 352, !62, i64 360, !62, i64 368, !67, i64 376, !67, i64 384, !68, i64 392, !63, i64 400, !63, i64 416, !62, i64 432, !62, i64 440, !62, i64 448, !62, i64 456, !62, i64 464, !62, i64 472, !62, i64 480, !62, i64 488, !62, i64 496, !62, i64 504, !62, i64 512, !22, i64 520, !69, i64 528, !70, i64 536, !71, i64 544, !71, i64 552, !62, i64 560, !62, i64 568, !62, i64 576, !62, i64 584, !62, i64 592, !5, i64 600, !72, i64 604, !72, i64 608, !62, i64 616, !61, i64 624, !5, i64 632, !68, i64 640, !68, i64 648, !68, i64 656, !62, i64 664, !62, i64 672, !62, i64 680, !62, i64 688, !62, i64 696, !62, i64 704, !62, i64 712, !62, i64 720, !62, i64 728, !73, i64 736, !71, i64 744, !11, i64 752, !11, i64 760, !11, i64 768, !50, i64 776, !50, i64 784, !11, i64 792, !61, i64 800, !5, i64 808, !5, i64 812, !5, i64 816, !5, i64 820, !5, i64 824, !5, i64 828, !5, i64 832, !5, i64 836, !5, i64 840, !5, i64 844, !5, i64 848, !5, i64 852, !74, i64 856, !74, i64 864, !74, i64 872, !74, i64 880, !62, i64 888, !62, i64 896, !62, i64 904, !75, i64 912, !5, i64 920, !5, i64 924, !5, i64 928, !62, i64 936, !5, i64 944, !5, i64 948, !62, i64 952, !62, i64 960, !68, i64 968, !74, i64 976, !62, i64 984, !62, i64 992, !5, i64 1000, !5, i64 1004, !74, i64 1008, !63, i64 1016, !63, i64 1032, !63, i64 1048, !76, i64 1064, !66, i64 1072, !66, i64 1080, !5, i64 1088, !5, i64 1092, !5, i64 1096, !5, i64 1100, !66, i64 1104, !62, i64 1112, !62, i64 1120, !62, i64 1128, !68, i64 1136}
!60 = !{!"p1 _ZTS10Gia_Obj_t_", !11, i64 0}
!61 = !{!"p1 int", !11, i64 0}
!62 = !{!"p1 _ZTS10Vec_Int_t_", !11, i64 0}
!63 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !61, i64 8}
!64 = !{!"p1 _ZTS10Gia_Rpr_t_", !11, i64 0}
!65 = !{!"p1 _ZTS10Vec_Wec_t_", !11, i64 0}
!66 = !{!"p1 _ZTS10Vec_Str_t_", !11, i64 0}
!67 = !{!"p1 _ZTS10Abc_Cex_t_", !11, i64 0}
!68 = !{!"p1 _ZTS10Vec_Ptr_t_", !11, i64 0}
!69 = !{!"p1 _ZTS10Gia_Plc_t_", !11, i64 0}
!70 = !{!"p1 _ZTS10Gia_Man_t_", !11, i64 0}
!71 = !{!"p1 _ZTS10Vec_Flt_t_", !11, i64 0}
!72 = !{!"float", !6, i64 0}
!73 = !{!"p1 _ZTS10Vec_Vec_t_", !11, i64 0}
!74 = !{!"p1 _ZTS10Vec_Wrd_t_", !11, i64 0}
!75 = !{!"p1 _ZTS10Vec_Bit_t_", !11, i64 0}
!76 = !{!"p1 _ZTS10Gia_Dat_t_", !11, i64 0}
!77 = distinct !{!77, !17}
!78 = distinct !{!78, !17}
!79 = distinct !{!79, !17}
!80 = distinct !{!80, !17}
!81 = distinct !{!81, !17}
!82 = distinct !{!82, !17}
!83 = distinct !{!83, !17}
!84 = !{!59, !62, i64 64}
!85 = !{!63, !5, i64 4}
!86 = !{!59, !60, i64 32}
!87 = !{!63, !5, i64 0}
!88 = !{!63, !61, i64 8}
!89 = !{!59, !62, i64 72}
!90 = !{!59, !61, i64 232}
!91 = !{!59, !5, i64 24}
!92 = !{!93, !5, i64 8}
!93 = !{!"Gia_Obj_t_", !5, i64 0, !5, i64 3, !5, i64 3, !5, i64 3, !5, i64 4, !5, i64 7, !5, i64 7, !5, i64 7, !5, i64 8}
!94 = distinct !{!94, !17}
!95 = distinct !{!95, !17}
!96 = distinct !{!96, !17}
!97 = !{!59, !5, i64 16}
!98 = distinct !{!98, !17}
!99 = distinct !{!99, !17}
!100 = !{!101, !5, i64 104}
!101 = !{!"Aig_Man_t_", !22, i64 0, !22, i64 8, !68, i64 16, !68, i64 24, !68, i64 32, !68, i64 40, !102, i64 48, !103, i64 56, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !6, i64 128, !5, i64 156, !104, i64 160, !5, i64 168, !61, i64 176, !5, i64 184, !73, i64 192, !5, i64 200, !5, i64 204, !5, i64 208, !61, i64 216, !5, i64 224, !5, i64 228, !5, i64 232, !5, i64 236, !5, i64 240, !104, i64 248, !104, i64 256, !5, i64 264, !106, i64 272, !62, i64 280, !5, i64 288, !11, i64 296, !11, i64 304, !5, i64 312, !5, i64 316, !5, i64 320, !104, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !61, i64 368, !61, i64 376, !68, i64 384, !62, i64 392, !62, i64 400, !67, i64 408, !68, i64 416, !107, i64 424, !68, i64 432, !5, i64 440, !62, i64 448, !73, i64 456, !62, i64 464, !62, i64 472, !5, i64 480, !50, i64 488, !50, i64 496, !50, i64 504, !68, i64 512, !68, i64 520}
!102 = !{!"p1 _ZTS10Aig_Obj_t_", !11, i64 0}
!103 = !{!"Aig_Obj_t_", !6, i64 0, !102, i64 8, !102, i64 16, !5, i64 24, !5, i64 24, !5, i64 24, !5, i64 24, !5, i64 24, !5, i64 28, !5, i64 31, !5, i64 32, !5, i64 36, !6, i64 40}
!104 = !{!"p2 _ZTS10Aig_Obj_t_", !105, i64 0}
!105 = !{!"any p2 pointer", !11, i64 0}
!106 = !{!"p1 _ZTS14Aig_MmFixed_t_", !11, i64 0}
!107 = !{!"p1 _ZTS10Aig_Man_t_", !11, i64 0}
!108 = !{!109, !5, i64 8}
!109 = !{!"Cnf_Dat_t_", !107, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !110, i64 24, !61, i64 32, !61, i64 40, !61, i64 48, !22, i64 56, !62, i64 64}
!110 = !{!"p2 int", !105, i64 0}
!111 = !{!109, !5, i64 16}
!112 = !{!109, !110, i64 24}
!113 = !{!61, !61, i64 0}
!114 = distinct !{!114, !17}
!115 = !{!62, !62, i64 0}
!116 = !{!109, !61, i64 32}
!117 = distinct !{!117, !17}
!118 = distinct !{!118, !17}
!119 = !{!120, !120, i64 0}
!120 = !{!"p1 _ZTS10Ifn_Ntk_t_", !11, i64 0}
!121 = distinct !{!121, !17}
!122 = distinct !{!122, !17}
!123 = distinct !{!123, !17}
!124 = distinct !{!124, !17}
!125 = !{!126, !61, i64 328}
!126 = !{!"sat_solver_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !127, i64 16, !5, i64 72, !5, i64 76, !128, i64 80, !129, i64 88, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !50, i64 120, !50, i64 128, !50, i64 136, !10, i64 144, !10, i64 152, !5, i64 160, !5, i64 164, !130, i64 168, !22, i64 184, !5, i64 192, !61, i64 200, !22, i64 208, !22, i64 216, !22, i64 224, !22, i64 232, !61, i64 240, !61, i64 248, !61, i64 256, !130, i64 264, !130, i64 280, !130, i64 296, !130, i64 312, !61, i64 328, !130, i64 336, !5, i64 352, !5, i64 356, !5, i64 360, !131, i64 368, !131, i64 376, !5, i64 384, !5, i64 388, !5, i64 392, !132, i64 400, !5, i64 472, !5, i64 476, !5, i64 480, !5, i64 484, !5, i64 488, !50, i64 496, !50, i64 504, !50, i64 512, !130, i64 520, !133, i64 536, !5, i64 544, !5, i64 548, !5, i64 552, !130, i64 560, !130, i64 576, !5, i64 592, !5, i64 596, !5, i64 600, !61, i64 608, !11, i64 616, !5, i64 624, !134, i64 632, !5, i64 640, !5, i64 644, !130, i64 648, !130, i64 664, !130, i64 680, !11, i64 696, !11, i64 704, !5, i64 712, !11, i64 720}
!127 = !{!"Sat_Mem_t_", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !110, i64 48}
!128 = !{!"p1 _ZTS8clause_t", !11, i64 0}
!129 = !{!"p1 _ZTS6veci_t", !11, i64 0}
!130 = !{!"veci_t", !5, i64 0, !5, i64 4, !61, i64 8}
!131 = !{!"double", !6, i64 0}
!132 = !{!"stats_t", !5, i64 0, !5, i64 4, !5, i64 8, !50, i64 16, !50, i64 24, !50, i64 32, !50, i64 40, !50, i64 48, !50, i64 56, !50, i64 64}
!133 = !{!"p1 double", !11, i64 0}
!134 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!135 = distinct !{!135, !17}
!136 = distinct !{!136, !17, !28, !29}
!137 = distinct !{!137, !17, !29, !28}
!138 = distinct !{!138, !17, !28, !29}
!139 = distinct !{!139, !17, !29, !28}
!140 = distinct !{!140, !17}
!141 = distinct !{!141, !17}
!142 = distinct !{!142, !17}
!143 = distinct !{!143, !17}
!144 = distinct !{!144, !17}
!145 = distinct !{!145, !17}
!146 = distinct !{!146, !17}
!147 = distinct !{!147, !148}
!148 = !{!"llvm.loop.unroll.disable"}
!149 = distinct !{!149, !17}
!150 = distinct !{!150, !17}
!151 = !{!59, !22, i64 328}
!152 = !{!59, !62, i64 312}
!153 = !{!59, !22, i64 8}
!154 = distinct !{!154, !17}
!155 = !{!59, !5, i64 56}
!156 = !{!59, !62, i64 264}
!157 = distinct !{!157, !17}
!158 = distinct !{!158, !17}
!159 = distinct !{!159, !17}
!160 = distinct !{!160, !17}
!161 = distinct !{!161, !17}
!162 = distinct !{!162, !17}
!163 = !{!59, !11, i64 768}
!164 = distinct !{!164, !17}
!165 = distinct !{!165, !17}
!166 = !{!59, !66, i64 320}
!167 = !{!168, !22, i64 8}
!168 = !{!"Vec_Str_t_", !5, i64 0, !5, i64 4, !22, i64 8}
!169 = distinct !{!169, !17}
!170 = distinct !{!170, !17}
!171 = distinct !{!171, !17}
!172 = distinct !{!172, !17}
!173 = distinct !{!173, !17}
!174 = distinct !{!174, !17}
!175 = distinct !{!175, !17, !28, !29}
!176 = distinct !{!176, !17, !29, !28}
!177 = distinct !{!177, !17, !28}
!178 = distinct !{!178, !17}
!179 = distinct !{!179, !17, !28, !29}
!180 = distinct !{!180, !148}
!181 = distinct !{!181, !17, !28, !29}
!182 = distinct !{!182, !148}
!183 = distinct !{!183, !17, !28}
!184 = !{!185}
!185 = distinct !{!185, !186}
!186 = distinct !{!186, !"LVerDomain"}
!187 = !{!188}
!188 = distinct !{!188, !186}
end_hunk_4
