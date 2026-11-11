Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/rsbDec6?download=true
inline.NumInlined: 165
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 14
begin_hunk_0_@Rsb_DecPerformInt:bb.a
  store ptr %i.ui, ptr %i.tg, align 8, !tbaa !14
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uc, i64 12
  %i.uk = trunc nuw nsw i64 %indvars.iv441 to i32 ; 2 uses
  store i32 %i.uk, ptr %i.uj, align 4, !tbaa !11
  %i.ul = getelementptr i8, ptr %i.ua, i64 4
  %.val213 = load i32, ptr %i.ul, align 4, !tbaa !20
  %i.um = call i32 @Rsb_DecCheck(i32 noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.val213, ptr noundef %.val221, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) ; 4 uses
  store i32 %i.um, ptr %i.b, align 4, !tbaa !11
  %.not198 = icmp eq i32 %i.um, 0
  br i1 %.not198, label %bb.ek, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  br i1 %.not200, label %.loopexit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.un = and i32 %i.um, 65535
  %narrow = mul nuw i32 %i.un, 65537
  store i32 %narrow, ptr %i.b, align 4, !tbaa !11
  call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %i.b, i32 noundef 4) #18
  %i.uo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8) ; 0 uses
  %i.up = load ptr, ptr %i.p, align 8, !tbaa !31
  call fastcc void @Vec_IntPrint(ptr noundef %i.up)
  br label %bb.en

bb.ek:                                            ; preds = %bb.eh
  %i.uq = icmp eq i32 %.12399, 64
  br i1 %i.uq, label %.loopexit, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.ur = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.us = getelementptr i8, ptr %i.ur, i64 4
  %.val = load i32, ptr %i.us, align 4, !tbaa !20
  %i.ut = load i32, ptr %i.c, align 4, !tbaa !11  ; 2 uses
  %i.uu = load i32, ptr %i.d, align 4, !tbaa !11  ; 2 uses
  call fastcc void @Rsb_DecVerifyCex(ptr noundef %2, ptr noundef %i.a, i32 noundef %.val, i32 noundef %i.ut, i32 noundef %i.uu)
  %i.uv = add nsw i32 %.12399, 1                  ; 2 uses
  call fastcc void @Rsb_DecRecordCex(ptr noundef nonnull %3, i32 noundef %5, i32 noundef %i.ut, i32 noundef %i.uu, ptr noundef nonnull %.val220, i32 noundef %.12399)
  %i.uw = load i32, ptr %i.th, align 4, !tbaa !65
  %.not199 = icmp eq i32 %i.uw, 0
  br i1 %.not199, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ux = load ptr, ptr %i.m, align 8, !tbaa !30
  call fastcc void @Vec_IntPush(ptr noundef %i.ux, i32 noundef %i.tk)
  %i.uy = load ptr, ptr %i.m, align 8, !tbaa !30
  call fastcc void @Vec_IntPush(ptr noundef %i.uy, i32 noundef %i.tn)
  %i.uz = load ptr, ptr %i.m, align 8, !tbaa !30
  call fastcc void @Vec_IntPush(ptr noundef %i.uz, i32 noundef %i.tq)
  %i.va = load ptr, ptr %i.m, align 8, !tbaa !30
  call fastcc void @Vec_IntPush(ptr noundef %i.va, i32 noundef %i.uk)
  %i.vb = load ptr, ptr %i.m, align 8, !tbaa !30
  call fastcc void @Vec_IntPush(ptr noundef %i.vb, i32 noundef -1)
  br label %bb.en

bb.en:                                            ; preds = %bb.el, %bb.eg, %bb.em, %bb.ej
  %.13 = phi i32 [ %.12399, %bb.eg ], [ %.12399, %bb.ej ], [ %i.uv, %bb.em ], [ %i.uv, %bb.el ] ; 4 uses
  %indvars.iv.next442 = add nuw nsw i64 %indvars.iv441, 1 ; 2 uses
  %exitcond445.not = icmp eq i64 %indvars.iv.next442, %indvars.iv446
  br i1 %exitcond445.not, label %bb.eo, label %bb.eg, !llvm.loop !61

bb.eo:                                            ; preds = %bb.en
  %indvars.iv.next447 = add nuw nsw i64 %indvars.iv446, 1 ; 2 uses
  %exitcond450.not = icmp eq i64 %indvars.iv.next447, %indvars.iv451
  br i1 %exitcond450.not, label %bb.ep, label %.preheader, !llvm.loop !62

bb.ep:                                            ; preds = %bb.eo
  %indvars.iv.next452 = add nuw nsw i64 %indvars.iv451, 1 ; 2 uses
  %exitcond455.not = icmp eq i64 %indvars.iv.next452, %indvars.iv456
  br i1 %exitcond455.not, label %._crit_edge404, label %.preheader361, !llvm.loop !63

._crit_edge404:                                   ; preds = %bb.ep
  %indvars.iv.next457 = add nuw nsw i64 %indvars.iv456, 1 ; 2 uses
  %exitcond460.not = icmp eq i64 %indvars.iv.next457, %wide.trip.count459
  br i1 %exitcond460.not, label %.loopexit, label %.preheader361.lr.ph, !llvm.loop !64

.loopexit:                                        ; preds = %bb.g, %bb.d, %bb.ap, %bb.am, %bb.ci, %bb.cf, %._crit_edge404, %bb.ek, %bb.ei, %bb.ef, %._crit_edge396, %._crit_edge388, %._crit_edge
  %.0192 = phi i32 [ %i.ml, %bb.cf ], [ 0, %._crit_edge396 ], [ %i.fr, %bb.am ], [ 0, %._crit_edge ], [ 0, %bb.ek ], [ 0, %bb.ef ], [ 0, %._crit_edge388 ], [ 0, %._crit_edge404 ], [ %i.um, %bb.ei ], [ 0, %bb.ci ], [ 0, %bb.ap ], [ 0, %bb.g ], [ %i.ae, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0192
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare void @Kit_DsdPrintFromTruth(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint nofree nounwind uwtable
define internal fastcc void @Vec_IntPrint(ptr nofree noundef readonly captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 3 uses
  %.val6 = load i32, ptr %i.a, align 4, !tbaa !20
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %.val6) ; 0 uses
  %.val8 = load i32, ptr %i.a, align 4, !tbaa !20
  %i.c = icmp sgt i32 %.val8, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.val7 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %.val7, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !11
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.f) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !20
  %i.h = sext i32 %.val to i64
  %i.i = icmp slt i64 %indvars.iv.next, %i.h
  br i1 %i.i, label %bb.b, label %.critedge, !llvm.loop !1

.critedge:                                        ; preds = %bb.b, %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  ret void
}

; Function Attrs: inlinehint nofree nounwind uwtable
define internal fastcc void @Rsb_DecVerifyCex(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #10 {
bb.a:
  %i.a = ashr i32 %3, 6
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %0, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16
  %i.e = and i32 %3, 63
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  %i.g = lshr i64 %i.d, %i.f
  %i.h = ashr i32 %4, 6
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !16
  %i.l = and i32 %4, 63
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %i.k, %i.m
  %i.o = xor i64 %i.n, %i.g
  %i.p = and i64 %i.o, 1
  %.not.not = icmp eq i64 %i.p, 0
  br i1 %.not.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = icmp sgt i32 %2, 0
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14   ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.b
  %i.u = load i64, ptr %i.t, align 8, !tbaa !16
  %i.v = lshr i64 %i.u, %i.f
  %i.w = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.i
  %i.x = load i64, ptr %i.w, align 8, !tbaa !16
  %i.y = lshr i64 %i.x, %i.m
  %i.z = xor i64 %i.y, %i.v
  %i.aa = and i64 %i.z, 1
  %.not11.not = icmp eq i64 %i.aa, 0
  br i1 %.not11.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ac = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %i.ab, i32 noundef %i.ab) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2

._crit_edge:                                      ; preds = %bb.e, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define void @Rsb_DecPrintFunc(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %.val31 = load i32, ptr %i.e, align 4, !tbaa !20 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.f = zext i32 %1 to i64                       ; 7 uses
  %i.g = shl nuw i32 1, %.val31                   ; 3 uses
  %i.h = zext nneg i32 %i.g to i64
  %i.i = lshr i64 %i.f, %i.h                      ; 7 uses
  %i.j = icmp eq i32 %.val31, 0                   ; 2 uses
  %i.k = trunc i64 %i.i to i1
  %i.l = select i1 %i.k, i64 3, i64 0
  %i.m = icmp samesign ult i32 %.val31, 2         ; 2 uses
  %i.n = and i64 %i.i, 3
  %i.o = select i1 %i.j, i64 %i.l, i64 %i.n
  %i.p = mul nuw nsw i64 %i.o, 5
  %.126.i = select i1 %i.m, i64 %i.p, i64 %i.i
  %i.q = icmp samesign ult i32 %.val31, 3         ; 2 uses
  %i.r = and i64 %.126.i, 15
  %i.s = mul nuw nsw i64 %i.r, 17
  %.227.i = select i1 %i.q, i64 %i.s, i64 %i.i
  %i.t = icmp samesign ult i32 %.val31, 4         ; 2 uses
  %i.u = and i64 %.227.i, 255
  %i.v = mul nuw nsw i64 %i.u, 257
  %.328.i = select i1 %i.t, i64 %i.v, i64 %i.i
  %i.w = icmp samesign ult i32 %.val31, 5         ; 2 uses
  %i.x = and i64 %.328.i, 65535
  %i.y = mul nuw nsw i64 %i.x, 65537
  %.429.i = select i1 %i.w, i64 %i.y, i64 %i.i
  %i.z = icmp ult i32 %.val31, 6                  ; 2 uses
  %i.aa = mul nuw i64 %.429.i, 4294967297
  %.5.i = select i1 %i.z, i64 %i.aa, i64 %i.i
  %i.ab = trunc i32 %1 to i1
  %i.ac = select i1 %i.ab, i64 3, i64 0
  %i.ad = and i64 %i.f, 3
  %i.ae = select i1 %i.j, i64 %i.ac, i64 %i.ad
  %i.af = mul nuw nsw i64 %i.ae, 5
  %.126.i33 = select i1 %i.m, i64 %i.af, i64 %i.f
  %i.ag = and i64 %.126.i33, 15
  %i.ah = mul nuw nsw i64 %i.ag, 17
  %.227.i34 = select i1 %i.q, i64 %i.ah, i64 %i.f
  %i.ai = and i64 %.227.i34, 255
  %i.aj = mul nuw nsw i64 %i.ai, 257
  %.328.i35 = select i1 %i.t, i64 %i.aj, i64 %i.f
  %i.ak = and i64 %.328.i35, 65535
  %i.al = mul nuw nsw i64 %i.ak, 65537
  %.429.i36 = select i1 %i.w, i64 %i.al, i64 %i.f
  %i.am = mul nuw i64 %.429.i36, 4294967297
  %.5.i37 = select i1 %i.z, i64 %i.am, i64 %i.f
  %i.an = xor i64 %.5.i37, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.ao = tail call fastcc i64 @Abc_Tt6Isop(i64 noundef %.5.i, i64 noundef %i.an, i32 noundef %.val31)
  store i64 %i.ao, ptr %i.b, align 8, !tbaa !16
  %i.ap = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9) ; 0 uses
  %i.aq = icmp slt i32 %.val31, 7
  %i.ar = add nsw i32 %.val31, -6
  %i.as = shl nuw i32 1, %i.ar
  %i.at = select i1 %i.aq, i32 1, i32 %i.as       ; 2 uses
  %i.au = sext i32 %i.at to i64
  %.idx.i = shl nsw i64 %i.au, 3                  ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i ; 2 uses
  %i.aw = icmp slt i32 %i.at, 1
  %.not.i = icmp eq i32 %.val31, 31
  %or.cond.i = or i1 %.not.i, %i.aw               ; 2 uses
  br i1 %or.cond.i, label %Abc_TtPrintBinary.exit48.critedge, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %bb.a
  %i.ax = tail call i32 @llvm.umin.i32(i32 %i.g, i32 64) ; 2 uses
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.01113.us.i = phi ptr [ %i.bh, %._crit_edge.us.i ], [ %i.a, %.preheader.us.preheader.i ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.us.i
  %.012.us.i = phi i32 [ 0, %.preheader.us.i ], [ %i.bg, %bb.b ] ; 3 uses
  %i.ay = lshr i32 %.012.us.i, 5
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.01113.us.i, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !11
  %i.bc = and i32 %.012.us.i, 31
  %i.bd = lshr i32 %i.bb, %i.bc
  %i.be = and i32 %i.bd, 1
  %i.bf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.be) ; 0 uses
  %i.bg = add nuw nsw i32 %.012.us.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bg, %i.ax
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.b, !llvm.loop !67

._crit_edge.us.i:                                 ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %.01113.us.i, i64 8 ; 2 uses
  %i.bi = icmp ult ptr %i.bh, %i.av
  br i1 %i.bi, label %.preheader.us.i, label %Abc_TtPrintBinary.exit, !llvm.loop !68

Abc_TtPrintBinary.exit:                           ; preds = %._crit_edge.us.i
  %putchar.i = call i32 @putchar(i32 10)          ; 0 uses
  %i.bj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) ; 0 uses
  br label %.preheader.us.i42

.preheader.us.i42:                                ; preds = %._crit_edge.us.i46, %Abc_TtPrintBinary.exit
  %.01113.us.i43 = phi ptr [ %i.bt, %._crit_edge.us.i46 ], [ %i.a, %Abc_TtPrintBinary.exit ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader.us.i42
  %.012.us.i44 = phi i32 [ 0, %.preheader.us.i42 ], [ %i.bs, %bb.c ] ; 3 uses
  %i.bk = lshr i32 %.012.us.i44, 5
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.01113.us.i43, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !11
  %i.bo = and i32 %.012.us.i44, 31
  %i.bp = lshr i32 %i.bn, %i.bo
  %i.bq = and i32 %i.bp, 1
  %i.br = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.bq) ; 0 uses
  %i.bs = add nuw nsw i32 %.012.us.i44, 1         ; 2 uses
  %exitcond.not.i45 = icmp eq i32 %i.bs, %i.ax
  br i1 %exitcond.not.i45, label %._crit_edge.us.i46, label %bb.c, !llvm.loop !67

._crit_edge.us.i46:                               ; preds = %bb.c
  %i.bt = getelementptr inbounds nuw i8, ptr %.01113.us.i43, i64 8 ; 2 uses
  %i.bu = icmp ult ptr %i.bt, %i.av
  br i1 %i.bu, label %.preheader.us.i42, label %Abc_TtPrintBinary.exit48, !llvm.loop !68

Abc_TtPrintBinary.exit48.critedge:                ; preds = %bb.a
  %putchar.i.c = tail call i32 @putchar(i32 10)   ; 0 uses
  %i.bv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) ; 0 uses
  br label %Abc_TtPrintBinary.exit48

Abc_TtPrintBinary.exit48:                         ; preds = %._crit_edge.us.i46, %Abc_TtPrintBinary.exit48.critedge
  %putchar.i47 = call i32 @putchar(i32 10)        ; 0 uses
  %i.bw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
  %i.bx = getelementptr inbounds i8, ptr %i.b, i64 %.idx.i
  br i1 %or.cond.i, label %Abc_TtPrintBinary.exit59, label %.preheader.us.preheader.i52

.preheader.us.preheader.i52:                      ; preds = %Abc_TtPrintBinary.exit48
  %i.by = call i32 @llvm.umin.i32(i32 %i.g, i32 64)
  br label %.preheader.us.i53

.preheader.us.i53:                                ; preds = %._crit_edge.us.i57, %.preheader.us.preheader.i52
  %.01113.us.i54 = phi ptr [ %i.ci, %._crit_edge.us.i57 ], [ %i.b, %.preheader.us.preheader.i52 ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.us.i53
  %.012.us.i55 = phi i32 [ 0, %.preheader.us.i53 ], [ %i.ch, %bb.d ] ; 3 uses
  %i.bz = lshr i32 %.012.us.i55, 5
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.01113.us.i54, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !11
  %i.cd = and i32 %.012.us.i55, 31
  %i.ce = lshr i32 %i.cc, %i.cd
  %i.cf = and i32 %i.ce, 1
  %i.cg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.cf) ; 0 uses
  %i.ch = add nuw nsw i32 %.012.us.i55, 1         ; 2 uses
  %exitcond.not.i56 = icmp eq i32 %i.ch, %i.by
  br i1 %exitcond.not.i56, label %._crit_edge.us.i57, label %bb.d, !llvm.loop !67

._crit_edge.us.i57:                               ; preds = %bb.d
  %i.ci = getelementptr inbounds nuw i8, ptr %.01113.us.i54, i64 8 ; 2 uses
  %i.cj = icmp ult ptr %i.ci, %i.bx
  br i1 %i.cj, label %.preheader.us.i53, label %Abc_TtPrintBinary.exit59, !llvm.loop !68

Abc_TtPrintBinary.exit59:                         ; preds = %._crit_edge.us.i57, %Abc_TtPrintBinary.exit48
  %putchar.i58 = call i32 @putchar(i32 10)        ; 0 uses
  call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %i.b, i32 noundef %.val31) #18
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %i.ck = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12) ; 0 uses
  %i.cl = icmp slt i32 %5, 7
  %i.cm = add nsw i32 %5, -6
  %i.cn = shl nuw i32 1, %i.cm
  %i.co = select i1 %i.cl, i32 1, i32 %i.cn       ; 2 uses
  %i.cp = sext i32 %i.co to i64
  %.idx.i60 = shl nsw i64 %i.cp, 3
  %i.cq = getelementptr inbounds i8, ptr %2, i64 %.idx.i60
  %i.cr = icmp slt i32 %i.co, 1
  %.not.i61 = icmp eq i32 %5, 31
  %or.cond.i62 = or i1 %.not.i61, %i.cr
  br i1 %or.cond.i62, label %Abc_TtPrintBinary.exit70, label %.preheader.us.preheader.i63

.preheader.us.preheader.i63:                      ; preds = %Abc_TtPrintBinary.exit59
  %i.cs = shl nuw nsw i32 1, %5
  %i.ct = call i32 @llvm.umin.i32(i32 %i.cs, i32 64)
  br label %.preheader.us.i64

.preheader.us.i64:                                ; preds = %._crit_edge.us.i68, %.preheader.us.preheader.i63
  %.01113.us.i65 = phi ptr [ %i.dd, %._crit_edge.us.i68 ], [ %2, %.preheader.us.preheader.i63 ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader.us.i64
  %.012.us.i66 = phi i32 [ 0, %.preheader.us.i64 ], [ %i.dc, %bb.e ] ; 3 uses
  %i.cu = lshr i32 %.012.us.i66, 5
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.01113.us.i65, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !11
  %i.cy = and i32 %.012.us.i66, 31
  %i.cz = lshr i32 %i.cx, %i.cy
  %i.da = and i32 %i.cz, 1
  %i.db = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.da) ; 0 uses
  %i.dc = add nuw nsw i32 %.012.us.i66, 1         ; 2 uses
  %exitcond.not.i67 = icmp eq i32 %i.dc, %i.ct
  br i1 %exitcond.not.i67, label %._crit_edge.us.i68, label %bb.e, !llvm.loop !67

._crit_edge.us.i68:                               ; preds = %bb.e
  %i.dd = getelementptr inbounds nuw i8, ptr %.01113.us.i65, i64 8 ; 2 uses
  %i.de = icmp ult ptr %i.dd, %i.cq
  br i1 %i.de, label %.preheader.us.i64, label %Abc_TtPrintBinary.exit70, !llvm.loop !68

Abc_TtPrintBinary.exit70:                         ; preds = %._crit_edge.us.i68, %Abc_TtPrintBinary.exit59
  %putchar.i69 = call i32 @putchar(i32 10)        ; 0 uses
  call void @Kit_DsdPrintFromTruth(ptr noundef %2, i32 noundef %5) #18
  %putchar28 = call i32 @putchar(i32 10)          ; 0 uses
  %i.df = icmp sgt i32 %4, 0
  br i1 %i.df, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %Abc_TtPrintBinary.exit70
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.dg = trunc nuw nsw i64 %indvars.iv to i32
  %i.dh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.dg) ; 0 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !14
  call void @Kit_DsdPrintFromTruth(ptr noundef %i.dj, i32 noundef %5) #18
  %putchar30 = call i32 @putchar(i32 10)          ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !69

._crit_edge:                                      ; preds = %.lr.ph, %Abc_TtPrintBinary.exit70
  %i.dk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14) ; 0 uses
  %i.dl = load ptr, ptr %i.c, align 8, !tbaa !31  ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 4
  %.val73 = load i32, ptr %i.dm, align 4, !tbaa !20
  %i.dn = icmp sgt i32 %.val73, 0
  br i1 %i.dn, label %.lr.ph76, label %._crit_edge77

.lr.ph76:                                         ; preds = %._crit_edge, %.lr.ph76
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %.lr.ph76 ], [ 0, %._crit_edge ] ; 2 uses
  %i.do = phi ptr [ %i.dt, %.lr.ph76 ], [ %i.dl, %._crit_edge ]
  %i.dp = getelementptr i8, ptr %i.do, i64 8
  %.val32 = load ptr, ptr %i.dp, align 8, !tbaa !21
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.val32, i64 %indvars.iv79
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !11
  %i.ds = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.dr) ; 0 uses
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %i.dt = load ptr, ptr %i.c, align 8, !tbaa !31  ; 2 uses
  %i.du = getelementptr i8, ptr %i.dt, i64 4
  %.val = load i32, ptr %i.du, align 4, !tbaa !20
  %i.dv = sext i32 %.val to i64
  %i.dw = icmp slt i64 %indvars.iv.next80, %i.dv
  br i1 %i.dw, label %.lr.ph76, label %._crit_edge77, !llvm.loop !70

._crit_edge77:                                    ; preds = %.lr.ph76, %._crit_edge
  %putchar29 = call i32 @putchar(i32 10)          ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: inlinehint nofree nosync nounwind memory(inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @Abc_Tt6Isop(i64 noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #11 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %tailrecurse._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr37 = phi i32 [ %.0.lcssa, %tailrecurse ], [ %2, %bb.a ] ; 3 uses
  %.tr26 = phi i64 [ %i.aq, %tailrecurse ], [ %1, %bb.a ] ; 5 uses
  %.tr5 = phi i64 [ %i.ap, %tailrecurse ], [ %0, %bb.a ] ; 4 uses
  %i.b = icmp ne i64 %.tr26, -1
  tail call void @llvm.assume(i1 %i.b)
  %smin = tail call i32 @llvm.smin.i32(i32 %.tr37, i32 0)
  %i.c = add i32 %smin, -1                        ; 2 uses
  %i.d = icmp sgt i32 %.tr37, 0
  br i1 %i.d, label %.lr.ph18, label %.tailrecurse_crit_edge

.lr.ph18:                                         ; preds = %.lr.ph
  %i.e = zext nneg i32 %.tr37 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  %i.f = trunc nuw i64 %indvars.iv.next16 to i32
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %.tailrecurse_crit_edge, !llvm.loop !71

.tailrecurse_crit_edge:                           ; preds = %bb.b, %.lr.ph
  %.pre = shl nuw nsw i32 1, %i.c
  %.pre9 = zext nneg i32 %.pre to i64
  br label %tailrecurse

bb.c:                                             ; preds = %.lr.ph18, %bb.b
  %indvars.iv.next16.in = phi i64 [ %i.e, %.lr.ph18 ], [ %indvars.iv.next16, %bb.b ]
  %indvars.iv.next16 = add nsw i64 %indvars.iv.next16.in, -1 ; 4 uses
  %indvars17 = trunc i64 %indvars.iv.next16 to i32 ; 3 uses
  %i.h = shl nuw i32 1, %indvars17
  %i.i = zext nneg i32 %i.h to i64                ; 4 uses
  %i.j = lshr i64 %.tr5, %i.i
  %i.k = and i64 %indvars.iv.next16, 4294967295
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !16   ; 2 uses
  %i.n = xor i64 %i.j, %.tr5
  %i.o = and i64 %i.m, %i.n
  %.not1 = icmp eq i64 %i.o, 0
  br i1 %.not1, label %bb.d, label %tailrecurse

bb.d:                                             ; preds = %bb.c
  %i.p = lshr i64 %.tr26, %i.i
  %i.q = xor i64 %i.p, %.tr26
  %i.r = and i64 %i.m, %i.q
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.b, label %tailrecurse, !llvm.loop !71

tailrecurse:                                      ; preds = %bb.c, %bb.d, %.tailrecurse_crit_edge
  %.pre-phi10 = phi i64 [ %.pre9, %.tailrecurse_crit_edge ], [ %i.i, %bb.d ], [ %i.i, %bb.c ] ; 4 uses
  %.0.lcssa = phi i32 [ %i.c, %.tailrecurse_crit_edge ], [ %indvars17, %bb.d ], [ %indvars17, %bb.c ] ; 4 uses
  %i.s = sext i32 %.0.lcssa to i64                ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr @s_Truths6Neg, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !16   ; 2 uses
  %i.v = and i64 %i.u, %.tr5                      ; 2 uses
  %i.w = shl i64 %i.v, %.pre-phi10
  %i.x = or i64 %i.w, %i.v                        ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.s
  %i.z = load i64, ptr %i.y, align 8, !tbaa !16   ; 2 uses
  %i.aa = and i64 %i.z, %.tr5                     ; 2 uses
  %i.ab = lshr i64 %i.aa, %.pre-phi10
  %i.ac = or i64 %i.ab, %i.aa                     ; 2 uses
  %i.ad = and i64 %i.u, %.tr26                    ; 2 uses
  %i.ae = shl i64 %i.ad, %.pre-phi10
  %i.af = or i64 %i.ae, %i.ad                     ; 3 uses
  %i.ag = and i64 %i.z, %.tr26                    ; 2 uses
  %i.ah = lshr i64 %i.ag, %.pre-phi10
  %i.ai = or i64 %i.ah, %i.ag                     ; 3 uses
  %i.aj = xor i64 %i.ai, -1
  %i.ak = and i64 %i.x, %i.aj
  %i.al = tail call fastcc i64 @Abc_Tt6Isop(i64 noundef %i.ak, i64 noundef %i.af, i32 noundef %.0.lcssa) ; 0 uses
  %i.am = xor i64 %i.af, -1
  %i.an = and i64 %i.ac, %i.am
  %i.ao = tail call fastcc i64 @Abc_Tt6Isop(i64 noundef %i.an, i64 noundef %i.ai, i32 noundef %.0.lcssa) ; 0 uses
  %i.ap = or i64 %i.ac, %i.x                      ; 2 uses
  %i.aq = and i64 %i.ai, %i.af
  %i.ar = icmp eq i64 %i.ap, 0
  br i1 %i.ar, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  ret i64 0
}

; Function Attrs: nofree nounwind uwtable
define noundef i32 @Rsb_DecVerify(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x ptr], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = icmp slt i32 %1, 7
  %i.c = add nsw i32 %1, -6
  %i.d = shl nuw i32 1, %i.c
  %i.e = select i1 %i.b, i32 1, i32 %i.d          ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31   ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %.val46 = load i32, ptr %i.h, align 4, !tbaa !20
  %.val46.fr = freeze i32 %.val46                 ; 11 uses
  %i.i = shl nuw i32 1, %.val46.fr                ; 3 uses
  %i.j = lshr i32 %5, %i.i                        ; 6 uses
  %i.k = icmp eq i32 %.val46.fr, 0
  %i.l = trunc i32 %i.j to i1
  %i.m = select i1 %i.l, i32 3, i32 0
  %i.n = icmp samesign ult i32 %.val46.fr, 2
  %i.o = and i32 %i.j, 3
  %i.p = select i1 %i.k, i32 %i.m, i32 %i.o
  %i.q = mul nuw nsw i32 %i.p, 5
  %.126.i = select i1 %i.n, i32 %i.q, i32 %i.j
  %i.r = icmp samesign ult i32 %.val46.fr, 3
  %i.s = and i32 %.126.i, 15
  %i.t = mul nuw nsw i32 %i.s, 17
  %.227.i = select i1 %i.r, i32 %i.t, i32 %i.j
  %i.u = icmp samesign ult i32 %.val46.fr, 4
  %i.v = and i32 %.227.i, 255
  %i.w = mul nuw nsw i32 %i.v, 257
  %.328.i = select i1 %i.u, i32 %i.w, i32 %i.j
  %8 = and i32 %.328.i, 65535
  %9 = mul nuw i32 %8, 65537
  %10 = icmp ult i32 %.val46.fr, 5
  %i.x = select i1 %10, i32 %9, i32 %i.j          ; 2 uses
  %i.y = icmp sgt i32 %.val46.fr, 0               ; 2 uses
  br i1 %i.y, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.z = getelementptr i8, ptr %i.g, i64 8
  %.val47 = load ptr, ptr %i.z, align 8, !tbaa !21 ; 5 uses
  %wide.trip.count = zext nneg i32 %.val46.fr to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.aa = icmp ult i32 %.val46.fr, 4
  br i1 %i.aa, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !11
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !14
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.af, ptr %i.ag, align 16, !tbaa !14
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %indvars.iv.next
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !11
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %3, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next
  store ptr %i.al, ptr %i.am, align 8, !tbaa !14
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %indvars.iv.next.1
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !11
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !14
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.1
  store ptr %i.ar, ptr %i.as, align 16, !tbaa !14
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %indvars.iv.next.2
  %i.au = load i32, ptr %i.at, align 4, !tbaa !11
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %3, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !14
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.2
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !14
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !72

.critedge.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.critedge.loopexit.unr-lcssa ]
  %lcmp.mod199 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod199)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %indvars.iv.epil
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !11
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !14
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.epil
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !14
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge, label %bb.c, !llvm.loop !73

.critedge:                                        ; preds = %.critedge.loopexit.unr-lcssa, %bb.c, %bb.a
  %i.bf = icmp sgt i32 %i.e, 0                    ; 4 uses
  br i1 %i.bf, label %.lr.ph.preheader.i, label %Abc_TtClear.exit

.lr.ph.preheader.i:                               ; preds = %.critedge
  %i.bg = zext nneg i32 %i.e to i64
  %i.bh = shl nuw nsw i64 %i.bg, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %6, i8 0, i64 %i.bh, i1 false), !tbaa !16
  br label %Abc_TtClear.exit

Abc_TtClear.exit:                                 ; preds = %.critedge, %.lr.ph.preheader.i
  %.not = icmp eq i32 %.val46.fr, 31
  br i1 %.not, label %._crit_edge78, label %.lr.ph77

.lr.ph77:                                         ; preds = %Abc_TtClear.exit
  %i.bi = zext i32 %i.e to i64                    ; 15 uses
  %i.bj = shl nuw nsw i64 %i.bi, 3                ; 2 uses
  br i1 %i.y, label %.lr.ph77.split.us, label %.lr.ph77.split

.lr.ph77.split.us:                                ; preds = %.lr.ph77
  br i1 %i.bf, label %.lr.ph77.split.us.split.us.preheader, label %Abc_TtEqual.exit.thread

.lr.ph77.split.us.split.us.preheader:             ; preds = %.lr.ph77.split.us
  %smax105 = tail call i32 @llvm.smax.i32(i32 %i.i, i32 1)
  %wide.trip.count103 = zext nneg i32 %.val46.fr to i64
  %i.bk = shl nuw nsw i64 %i.bi, 3                ; 4 uses
  %scevgep124 = getelementptr i8, ptr %7, i64 %i.bk ; 3 uses
  %scevgep125 = getelementptr i8, ptr %6, i64 %i.bk
  %min.iters.check150 = icmp ult i32 %i.e, 4      ; 2 uses
  %n.vec179 = and i64 %i.bi, 2147483644
  %xtraiter206 = and i64 %i.bi, 3                 ; 3 uses
  %i.bl = icmp ult i32 %i.e, 4
  %unroll_iter210 = and i64 %i.bi, 2147483644
  %lcmp.mod208.not = icmp eq i64 %xtraiter206, 0
  %lcmp.mod209 = icmp ne i64 %xtraiter206, 0
  %n.vec156 = and i64 %i.bi, 2147483644
  %xtraiter212 = and i64 %i.bi, 1
  %i.bm = icmp eq i32 %i.e, 1
  %unroll_iter216 = and i64 %i.bi, 2147483646
  %lcmp.mod214.not = icmp eq i64 %xtraiter212, 0
  %lcmp.mod215 = trunc i32 %i.e to i1
  %min.iters.check127 = icmp ult i32 %i.e, 4
  %bound0129 = icmp ult ptr %6, %scevgep124
  %bound1130 = icmp ult ptr %7, %scevgep125
  %found.conflict131 = and i1 %bound0129, %bound1130
  %n.vec133 = and i64 %i.bi, 2147483644
  %xtraiter218 = and i64 %i.bi, 3                 ; 3 uses
  %i.bn = icmp ult i32 %i.e, 4
  %unroll_iter222 = and i64 %i.bi, 2147483644
  %lcmp.mod220.not = icmp eq i64 %xtraiter218, 0
  %lcmp.mod221 = icmp ne i64 %xtraiter218, 0
  br label %.lr.ph77.split.us.split.us

.lr.ph77.split.us.split.us:                       ; preds = %.lr.ph77.split.us.split.us.preheader, %Abc_TtOr.exit.us.us
  %.074.us.us = phi i32 [ %i.fl, %Abc_TtOr.exit.us.us ], [ 0, %.lr.ph77.split.us.split.us.preheader ] ; 3 uses
  %i.bo = shl nuw i32 1, %.074.us.us
  %i.bp = and i32 %i.bo, %i.x
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %Abc_TtOr.exit.us.us, label %.lr.ph.preheader.i48.us.us

.lr.ph.preheader.i48.us.us:                       ; preds = %.lr.ph77.split.us.split.us
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %7, i8 -1, i64 %i.bj, i1 false), !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %Abc_TtAnd.exit.us.us.us, %.lr.ph.preheader.i48.us.us
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %Abc_TtAnd.exit.us.us.us ], [ 0, %.lr.ph.preheader.i48.us.us ] ; 3 uses
  %i.br = trunc nuw nsw i64 %indvars.iv100 to i32
  %i.bs = shl nuw i32 1, %i.br
  %i.bt = and i32 %i.bs, %.074.us.us
  %.not43.us.us.us = icmp eq i32 %i.bt, 0
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv100
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !14 ; 14 uses
  br i1 %.not43.us.us.us, label %.lr.ph.i52.us.us.us.preheader, label %.lr.ph.i.us.us.us.preheader

.lr.ph.i.us.us.us.preheader:                      ; preds = %bb.d
  br i1 %min.iters.check150, label %.lr.ph.i.us.us.us.preheader192, label %vector.memcheck174

.lr.ph.i.us.us.us.preheader192:                   ; preds = %vector.memcheck174, %.lr.ph.i.us.us.us.preheader
  br i1 %i.bl, label %.lr.ph.i.us.us.us.epil.preheader, label %.lr.ph.i.us.us.us

vector.memcheck174:                               ; preds = %.lr.ph.i.us.us.us.preheader
  %i.bw = getelementptr i8, ptr %i.bv, i64 %i.bk
  %bound0175 = icmp ult ptr %7, %i.bw
  %bound1176 = icmp ult ptr %i.bv, %scevgep124
  %found.conflict177 = and i1 %bound0175, %bound1176
  br i1 %found.conflict177, label %.lr.ph.i.us.us.us.preheader192, label %vector.body180

vector.body180:                                   ; preds = %vector.memcheck174, %vector.body180
  %index181 = phi i64 [ %index.next186, %vector.body180 ], [ 0, %vector.memcheck174 ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %index181 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %wide.load182 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !16, !alias.scope !100, !noalias !101
  %wide.load183 = load <2 x i64>, ptr %i.by, align 8, !tbaa !16, !alias.scope !100, !noalias !101
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %index181 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %wide.load184 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !16, !alias.scope !101
  %wide.load185 = load <2 x i64>, ptr %i.ca, align 8, !tbaa !16, !alias.scope !101
  %i.cb = and <2 x i64> %wide.load184, %wide.load182
  %i.cc = and <2 x i64> %wide.load185, %wide.load183
  store <2 x i64> %i.cb, ptr %i.bx, align 8, !tbaa !16, !alias.scope !100, !noalias !101
  store <2 x i64> %i.cc, ptr %i.by, align 8, !tbaa !16, !alias.scope !100, !noalias !101
  %index.next186 = add nuw i64 %index181, 4       ; 2 uses
  %i.cd = icmp eq i64 %index.next186, %n.vec179
  br i1 %i.cd, label %Abc_TtAnd.exit.us.us.us, label %vector.body180, !llvm.loop !77

.lr.ph.i52.us.us.us.preheader:                    ; preds = %bb.d
  br i1 %min.iters.check150, label %.lr.ph.i52.us.us.us.preheader190, label %vector.memcheck151

.lr.ph.i52.us.us.us.preheader190:                 ; preds = %vector.memcheck151, %.lr.ph.i52.us.us.us.preheader
  br i1 %i.bm, label %.lr.ph.i52.us.us.us.epil.preheader, label %.lr.ph.i52.us.us.us

vector.memcheck151:                               ; preds = %.lr.ph.i52.us.us.us.preheader
  %i.ce = getelementptr i8, ptr %i.bv, i64 %i.bk
  %bound0152 = icmp ult ptr %7, %i.ce
  %bound1153 = icmp ult ptr %i.bv, %scevgep124
  %found.conflict154 = and i1 %bound0152, %bound1153
  br i1 %found.conflict154, label %.lr.ph.i52.us.us.us.preheader190, label %vector.body157

vector.body157:                                   ; preds = %vector.memcheck151, %vector.body157
  %index158 = phi i64 [ %index.next163, %vector.body157 ], [ 0, %vector.memcheck151 ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %index158 ; 3 uses
end_hunk_0
begin_hunk_1_@Rsb_ManPerform:bb.a
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.r, ptr %i.s, align 16, !tbaa !14
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.val74, i64 %indvars.iv.next
  %i.u = load i32, ptr %i.t, align 4, !tbaa !11
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %3, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next
  store ptr %i.x, ptr %i.y, align 8, !tbaa !14
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.val74, i64 %indvars.iv.next.1
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !11
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.1
  store ptr %i.ad, ptr %i.ae, align 16, !tbaa !14
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.val74, i64 %indvars.iv.next.2
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !11
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.2
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !14
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !108

.critedge.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.critedge.loopexit.unr-lcssa ]
  %lcmp.mod85 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod85)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.val74, i64 %indvars.iv.epil
  %i.am = load i32, ptr %i.al, align 4, !tbaa !11
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %3, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.epil
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !14
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge, label %bb.d, !llvm.loop !109

.critedge:                                        ; preds = %.critedge.loopexit.unr-lcssa, %bb.d, %bb.b
  %i.ar = call i32 @Rsb_DecCheck(i32 noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.val72, ptr noundef %.val76, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %.not65 = icmp eq i32 %i.ar, 0
  br i1 %.not65, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.at = getelementptr i8, ptr %i.as, i64 4
  %.val68 = load i32, ptr %i.at, align 4, !tbaa !20
  %i.au = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %.val68) ; 0 uses
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !111 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  %.val78 = load i32, ptr %i.aw, align 4, !tbaa !20
  %i.ax = icmp sgt i32 %.val78, 0
  br i1 %i.ax, label %.lr.ph80, label %.critedge4

.lr.ph80:                                         ; preds = %bb.e, %.lr.ph80
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %.lr.ph80 ], [ 0, %bb.e ] ; 2 uses
  %i.ay = phi ptr [ %i.bd, %.lr.ph80 ], [ %i.av, %bb.e ]
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %.val73 = load ptr, ptr %i.az, align 8, !tbaa !21
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.val73, i64 %indvars.iv82
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !11
  %i.bc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.bb) ; 0 uses
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %i.bd = load ptr, ptr %i.g, align 8, !tbaa !111 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 4
  %.val = load i32, ptr %i.be, align 4, !tbaa !20
  %i.bf = sext i32 %.val to i64
  %i.bg = icmp slt i64 %indvars.iv.next83, %i.bf
  br i1 %i.bg, label %.lr.ph80, label %.critedge4, !llvm.loop !110

.critedge4:                                       ; preds = %.lr.ph80, %bb.e
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %puts66 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %.critedge4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %i.bh = tail call i32 @Rsb_DecPerformInt(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 0) ; 2 uses
  %.not67 = icmp eq i32 %i.bh, 0
  br i1 %.not67, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !31
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i32 0, ptr %i.bk, align 4, !tbaa !20
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  ret i32 %i.bh
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Rsb_ManPerformResub6(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, i32 noundef %6) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca [200 x ptr], align 16             ; 6 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.c = getelementptr i8, ptr %3, i64 4
  %.val34 = load i32, ptr %i.c, align 4, !tbaa !35 ; 8 uses
  %i.d = icmp sgt i32 %.val34, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %3, i64 8
  %.val35 = load ptr, ptr %i.e, align 8, !tbaa !28 ; 3 uses
  %wide.trip.count = zext nneg i32 %.val34 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.val34, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [8 x i8], ptr %.val35, <2 x i64> %vec.ind
  %wide.gep43 = getelementptr inbounds nuw [8 x i8], ptr %.val35, <2 x i64> %step.add
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <2 x ptr> %wide.gep, ptr %i.f, align 16, !tbaa !14
  store <2 x ptr> %wide.gep43, ptr %i.g, align 16, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.val35, i64 %indvars.iv
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store ptr %i.i, ptr %i.j, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !113

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %i.k = call i32 @Rsb_DecPerformInt(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.val34, i32 noundef %.val34, i32 noundef 0) ; 5 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @Rsb_DecPrintFunc(ptr noundef %0, i32 noundef %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.val34, i32 noundef %1)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val33 = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !30
  call void @Rsb_DecPrintTable(ptr noundef %.val33, i32 noundef %.val34, i32 noundef %.val34, ptr noundef %i.q)
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %.val = load i32, ptr %i.t, align 4, !tbaa !20  ; 7 uses
  %i.u = zext i32 %i.k to i64                     ; 6 uses
  %i.v = icmp eq i32 %.val, 0                     ; 2 uses
  %i.w = trunc i32 %i.k to i1
  %i.x = select i1 %i.w, i64 3, i64 0
  %i.y = icmp samesign ult i32 %.val, 2           ; 2 uses
  %i.z = and i64 %i.u, 3
  %i.aa = select i1 %i.v, i64 %i.x, i64 %i.z
  %i.ab = mul nuw nsw i64 %i.aa, 5
  %.126.i = select i1 %i.y, i64 %i.ab, i64 %i.u
  %i.ac = icmp samesign ult i32 %.val, 3          ; 2 uses
  %i.ad = and i64 %.126.i, 15
  %i.ae = mul nuw nsw i64 %i.ad, 17
  %.227.i = select i1 %i.ac, i64 %i.ae, i64 %i.u
  %i.af = icmp samesign ult i32 %.val, 4          ; 2 uses
  %i.ag = and i64 %.227.i, 255
  %i.ah = mul nuw nsw i64 %i.ag, 257
  %.328.i = select i1 %i.af, i64 %i.ah, i64 %i.u
  %i.ai = icmp samesign ult i32 %.val, 5          ; 2 uses
  %i.aj = and i64 %.328.i, 65535
  %i.ak = mul nuw nsw i64 %i.aj, 65537
  %.429.i = select i1 %i.ai, i64 %i.ak, i64 %i.u
  %i.al = icmp ult i32 %.val, 6                   ; 2 uses
  %i.am = mul nuw i64 %.429.i, 4294967297
  %.5.i = select i1 %i.al, i64 %i.am, i64 %i.u
  store i64 %.5.i, ptr %4, align 8, !tbaa !16
  %i.an = shl nuw i32 1, %.val
  %i.ao = lshr i32 %i.k, %i.an                    ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64              ; 6 uses
  %i.aq = trunc i32 %i.ao to i1
  %i.ar = select i1 %i.aq, i64 3, i64 0
  %i.as = and i64 %i.ap, 3
  %i.at = select i1 %i.v, i64 %i.ar, i64 %i.as
  %i.au = mul nuw nsw i64 %i.at, 5
  %.126.i36 = select i1 %i.y, i64 %i.au, i64 %i.ap
  %i.av = and i64 %.126.i36, 15
  %i.aw = mul nuw nsw i64 %i.av, 17
  %.227.i37 = select i1 %i.ac, i64 %i.aw, i64 %i.ap
  %i.ax = and i64 %.227.i37, 255
  %i.ay = mul nuw nsw i64 %i.ax, 257
  %.328.i38 = select i1 %i.af, i64 %i.ay, i64 %i.ap
  %i.az = and i64 %.328.i38, 65535
  %i.ba = mul nuw nsw i64 %i.az, 65537
  %.429.i39 = select i1 %i.ai, i64 %i.ba, i64 %i.ap
  %i.bb = mul nuw i64 %.429.i39, 4294967297
  %.5.i40 = select i1 %i.al, i64 %i.bb, i64 %i.ap
  store i64 %.5.i40, ptr %5, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %.critedge
  %.030 = phi i32 [ 1, %.critedge ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i32 %.030
}

; Function Attrs: nounwind uwtable
define void @Rsb_ManPerformResub6Test() local_unnamed_addr #7 {
Vec_WrdFree.exit:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 100, ptr %i.c, align 8, !tbaa !114
  %i.e = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #20 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !28
  store i64 -6148914691236517206, ptr %i.e, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 -3689348814741910324, ptr %i.g, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 -1085102592571150096, ptr %i.h, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 -71777214294589696, ptr %i.i, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 -281470681808896, ptr %i.j, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 -4294967296, ptr %i.k, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 -8608480567731124088, ptr %i.l, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 -1152657617789587456, ptr %i.m, align 8, !tbaa !16
  store i32 9, ptr %i.d, align 4, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 -281474976710656, ptr %i.n, align 8, !tbaa !16
  %i.o = tail call ptr @Rsb_ManAlloc(i32 noundef 6, i32 noundef 64, i32 noundef 4, i32 noundef 1) #18 ; 2 uses
  %i.p = call i32 @Rsb_ManPerformResub6(ptr noundef %i.o, i32 noundef 6, i64 noundef -8207807743864, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 1) ; 0 uses
  tail call void @Rsb_ManFree(ptr noundef %i.o) #18
  tail call void @free(ptr noundef nonnull %i.e) #18
  tail call void @free(ptr noundef nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

declare ptr @Rsb_ManAlloc(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

declare void @Rsb_ManFree(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nofree nosync nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(1) }
attributes #20 = { nounwind allocsize(0) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !17}
!1 = distinct !{!1, !17}
!2 = distinct !{!2, !17}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!8, !8, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 long", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"p1 int", !12, i64 0}
!19 = !{!"Vec_Int_t_", !8, i64 0, !8, i64 4, !18, i64 8}
!20 = !{!19, !8, i64 4}
!21 = !{!19, !18, i64 8}
!22 = !{!19, !8, i64 0}
!23 = !{!"p1 _ZTS10Vec_Wrd_t_", !12, i64 0}
!24 = !{!"p1 _ZTS10Vec_Int_t_", !12, i64 0}
!25 = !{!"Rsb_Man_t_", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !23, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !24, i64 48}
!26 = !{!25, !23, i64 16}
!27 = !{!"Vec_Wrd_t_", !8, i64 0, !8, i64 4, !13, i64 8}
!28 = !{!27, !13, i64 8}
!29 = !{!25, !24, i64 24}
!30 = !{!25, !24, i64 48}
!31 = !{!25, !24, i64 32}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = !{!27, !8, i64 4}
!36 = distinct !{!36, !17}
!37 = distinct !{!37, !17}
!38 = distinct !{!38, !17}
!39 = distinct !{!39, !17}
!40 = distinct !{!40, !17}
!41 = distinct !{!41, !17}
!42 = distinct !{!42, !17}
!43 = distinct !{!43, !17}
!44 = distinct !{!44, !17}
!45 = distinct !{!45, !17}
!46 = distinct !{!46, !17}
!47 = distinct !{!47, !17}
!48 = distinct !{!48, !17}
!49 = distinct !{!49, !17}
!50 = distinct !{!50, !17}
!51 = distinct !{!51, !17}
!52 = distinct !{!52, !17}
!53 = distinct !{!53, !17}
!54 = distinct !{!54, !17}
!55 = distinct !{!55, !17}
!56 = distinct !{!56, !17}
!57 = distinct !{!57, !17}
!58 = distinct !{!58, !17}
!59 = distinct !{!59, !17}
!60 = distinct !{!60, !17}
!61 = distinct !{!61, !17}
!62 = distinct !{!62, !17}
end_hunk_1
