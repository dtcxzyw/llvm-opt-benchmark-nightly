Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifDec75?download=true
inline.NumInlined: 24
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@If_CutPerformCheck75__:bb.a
.loopexit12.i53:                                  ; preds = %Abc_TtHasVar.exit.i52, %bb.v
  %i.dy = phi i32 [ 1, %Abc_TtHasVar.exit.i52 ], [ 0, %bb.v ] ; 2 uses
  %i.dz = lshr i64 %i.bq, 2
  %i.ea = xor i64 %i.dz, %i.bq
  %i.eb = and i64 %i.ea, 3689348814741910323
  %.not39.i.117.i54 = icmp eq i64 %i.eb, 0
  br i1 %.not39.i.117.i54, label %bb.w, label %Abc_TtHasVar.exit.1.i55

bb.w:                                             ; preds = %.loopexit12.i53
  %i.ec = lshr i64 %i.bn, 2
  %i.ed = xor i64 %i.ec, %i.bn
  %i.ee = and i64 %i.ed, 3689348814741910323
  %.not39.i.1.1.i77 = icmp eq i64 %i.ee, 0
  br i1 %.not39.i.1.1.i77, label %.loopexit12.1.i56, label %Abc_TtHasVar.exit.1.i55

Abc_TtHasVar.exit.1.i55:                          ; preds = %bb.w, %.loopexit12.i53
  %i.ef = add nuw nsw i32 %i.dy, 1
  br label %.loopexit12.1.i56

.loopexit12.1.i56:                                ; preds = %Abc_TtHasVar.exit.1.i55, %bb.w
  %i.eg = phi i32 [ %i.ef, %Abc_TtHasVar.exit.1.i55 ], [ %i.dy, %bb.w ] ; 2 uses
  %i.eh = lshr i64 %i.bq, 4
  %i.ei = xor i64 %i.eh, %i.bq
  %i.ej = and i64 %i.ei, 1085102592571150095
  %.not39.i.2.i57 = icmp eq i64 %i.ej, 0
  br i1 %.not39.i.2.i57, label %bb.x, label %Abc_TtHasVar.exit.2.i58

bb.x:                                             ; preds = %.loopexit12.1.i56
  %i.ek = lshr i64 %i.bn, 4
  %i.el = xor i64 %i.ek, %i.bn
  %i.em = and i64 %i.el, 1085102592571150095
  %.not39.i.1.2.i76 = icmp eq i64 %i.em, 0
  br i1 %.not39.i.1.2.i76, label %.loopexit12.2.i59, label %Abc_TtHasVar.exit.2.i58

Abc_TtHasVar.exit.2.i58:                          ; preds = %bb.x, %.loopexit12.1.i56
  %i.en = add nuw nsw i32 %i.eg, 1
  br label %.loopexit12.2.i59

.loopexit12.2.i59:                                ; preds = %Abc_TtHasVar.exit.2.i58, %bb.x
  %i.eo = phi i32 [ %i.en, %Abc_TtHasVar.exit.2.i58 ], [ %i.eg, %bb.x ] ; 2 uses
  %i.ep = lshr i64 %i.bq, 8
  %i.eq = xor i64 %i.ep, %i.bq
  %i.er = and i64 %i.eq, 71777214294589695
  %.not39.i.3.i60 = icmp eq i64 %i.er, 0
  br i1 %.not39.i.3.i60, label %bb.y, label %Abc_TtHasVar.exit.3.i61

bb.y:                                             ; preds = %.loopexit12.2.i59
  %i.es = lshr i64 %i.bn, 8
  %i.et = xor i64 %i.es, %i.bn
  %i.eu = and i64 %i.et, 71777214294589695
  %.not39.i.1.3.i75 = icmp eq i64 %i.eu, 0
  br i1 %.not39.i.1.3.i75, label %.loopexit12.3.i62, label %Abc_TtHasVar.exit.3.i61

Abc_TtHasVar.exit.3.i61:                          ; preds = %bb.y, %.loopexit12.2.i59
  %i.ev = add nuw nsw i32 %i.eo, 1
  br label %.loopexit12.3.i62

.loopexit12.3.i62:                                ; preds = %Abc_TtHasVar.exit.3.i61, %bb.y
  %i.ew = phi i32 [ %i.ev, %Abc_TtHasVar.exit.3.i61 ], [ %i.eo, %bb.y ] ; 2 uses
  %i.ex = lshr i64 %i.bq, 16
  %i.ey = xor i64 %i.ex, %i.bq
  %i.ez = and i64 %i.ey, 281470681808895
  %.not39.i.4.i63 = icmp eq i64 %i.ez, 0
  br i1 %.not39.i.4.i63, label %bb.z, label %Abc_TtHasVar.exit.4.i64

bb.z:                                             ; preds = %.loopexit12.3.i62
  %i.fa = lshr i64 %i.bn, 16
  %i.fb = xor i64 %i.fa, %i.bn
  %i.fc = and i64 %i.fb, 281470681808895
  %.not39.i.1.4.i74 = icmp eq i64 %i.fc, 0
  br i1 %.not39.i.1.4.i74, label %.loopexit12.4.i65, label %Abc_TtHasVar.exit.4.i64

Abc_TtHasVar.exit.4.i64:                          ; preds = %bb.z, %.loopexit12.3.i62
  %i.fd = add nuw nsw i32 %i.ew, 1
  br label %.loopexit12.4.i65

.loopexit12.4.i65:                                ; preds = %Abc_TtHasVar.exit.4.i64, %bb.z
  %i.fe = phi i32 [ %i.fd, %Abc_TtHasVar.exit.4.i64 ], [ %i.ew, %bb.z ] ; 2 uses
  %i.ff = lshr i64 %i.bq, 32
  %.masked.i66 = and i64 %i.bq, 4294967295
  %.not39.i.5.i67 = icmp eq i64 %i.ff, %.masked.i66
  br i1 %.not39.i.5.i67, label %bb.aa, label %Abc_TtHasVar.exit.5.i68

bb.aa:                                            ; preds = %.loopexit12.4.i65
  %i.fg = lshr i64 %i.bn, 32
  %.masked18.i72 = and i64 %i.bn, 4294967295
  %.not39.i.1.5.i73 = icmp eq i64 %i.fg, %.masked18.i72
  br i1 %.not39.i.1.5.i73, label %Abc_TtSupportSize.exit79, label %Abc_TtHasVar.exit.5.i68

Abc_TtHasVar.exit.5.i68:                          ; preds = %bb.aa, %.loopexit12.4.i65
  %i.fh = add nuw nsw i32 %i.fe, 1
  br label %Abc_TtSupportSize.exit79

Abc_TtSupportSize.exit79:                         ; preds = %bb.aa, %Abc_TtHasVar.exit.5.i68
  %i.fi = phi i32 [ %i.fh, %Abc_TtHasVar.exit.5.i68 ], [ %i.fe, %bb.aa ]
  %.not.us.i.6.i70 = icmp ne i64 %i.bq, %i.bn
  %i.fj = zext i1 %.not.us.i.6.i70 to i32
  %spec.select.i71 = add nuw nsw i32 %i.fi, %i.fj
  %i.fk = icmp samesign ult i32 %spec.select.i71, 4
  br i1 %i.fk, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %Abc_TtSupportSize.exit79
  call void @If_Dec7MinimumBase(ptr noundef nonnull %i.n, ptr noundef null, i32 noundef 7, ptr noundef nonnull %i.p) #7
  %i.fl = load i32, ptr %i.p, align 4, !tbaa !13
  %i.fm = call i32 @Dau_DsdDecompose(ptr noundef nonnull %i.n, i32 noundef %i.fl, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.m) #7
  %i.fn = icmp sgt i32 %i.fm, 4
  br i1 %i.fn, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.m, ptr %i.c, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !13
  %i.fo = load i8, ptr %i.ar, align 1, !tbaa !11
  %i.fp = icmp eq i8 %i.fo, 0
  br i1 %i.fp, label %Dau_DsdCheckDecExist.exit81.thread, label %Dau_DsdCheckDecExist.exit81

Dau_DsdCheckDecExist.exit81.thread:               ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ad

Dau_DsdCheckDecExist.exit81:                      ; preds = %bb.ac
  %i.fq = call ptr @Dau_DsdComputeMatches(ptr noundef nonnull %i.m) #7
  %i.fr = call i32 @Dau_DsdCheckDecExist_rec(ptr noundef nonnull %i.m, ptr noundef nonnull %i.c, ptr noundef %i.fq, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.fs = and i32 %i.fr, 24
  %.not41 = icmp eq i32 %i.fs, 0
  br i1 %.not41, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %Dau_DsdCheckDecExist.exit81.thread, %Dau_DsdCheckDecExist.exit50.thread, %Dau_DsdCheckDecExist.exit50, %Dau_DsdCheckDecExist.exit81, %Abc_TtSupportSize.exit79, %bb.ab, %bb.s
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %.loopexit, label %bb.l, !llvm.loop !31

.loopexit:                                        ; preds = %bb.ad, %Dau_DsdCheckDecExist.exit81, %Dau_DsdCheckDecExist.exit50, %Dau_DsdCheckDecAndExist.exit46, %Dau_DsdCheckDecExist.exit
  %.035 = phi i32 [ 1, %Dau_DsdCheckDecAndExist.exit46 ], [ 1, %Dau_DsdCheckDecExist.exit ], [ 0, %bb.ad ], [ 1, %Dau_DsdCheckDecExist.exit50 ], [ 1, %Dau_DsdCheckDecExist.exit81 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #7
  br label %bb.ai

bb.ae:                                            ; preds = %bb.d
  %i.ft = icmp slt i32 %i.v, 5
  br i1 %i.ft, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.m, ptr %i.a, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 0, ptr %i.b, align 4, !tbaa !13
  %i.fu = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !11
  %i.fw = icmp eq i8 %i.fv, 0
  br i1 %i.fw, label %Dau_DsdCheckDecExist.exit83.thread, label %Dau_DsdCheckDecExist.exit83

Dau_DsdCheckDecExist.exit83.thread:               ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ag

Dau_DsdCheckDecExist.exit83:                      ; preds = %bb.af
  %i.fx = call ptr @Dau_DsdComputeMatches(ptr noundef nonnull %i.m) #7
  %i.fy = call i32 @Dau_DsdCheckDecExist_rec(ptr noundef nonnull %i.m, ptr noundef nonnull %i.a, ptr noundef %i.fx, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fz = and i32 %i.fy, 24
  %.not37 = icmp eq i32 %i.fz, 0
  br i1 %.not37, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %Dau_DsdCheckDecExist.exit83.thread, %Dau_DsdCheckDecExist.exit83
  %i.ga = call i32 @Dau_DsdCheckDecAndExist(ptr noundef nonnull %i.m)
  %i.gb = and i32 %i.ga, 28
  %.not38 = icmp eq i32 %i.gb, 0
  br i1 %.not38, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %i.gc = call i32 @If_CutPerformCheck07(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 6, ptr noundef %4) #7
  br label %bb.ai

bb.ai:                                            ; preds = %bb.d, %bb.ag, %Dau_DsdCheckDecExist.exit83, %Dau_DsdCheckDecAndExist.exit, %bb.e, %bb.c, %bb.a, %bb.ah, %.loopexit
  %.1 = phi i32 [ 1, %bb.ag ], [ 1, %bb.a ], [ 1, %bb.c ], [ %.0.i, %Dau_DsdCheckDecAndExist.exit ], [ 0, %bb.e ], [ %.035, %.loopexit ], [ %i.gc, %bb.ah ], [ 1, %Dau_DsdCheckDecExist.exit83 ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #7
  ret i32 %.1
}

declare i32 @If_CutPerformCheck16(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @Dau_DsdDecompose(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @If_Dec7MinimumBase(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @If_CutPerformCheck07(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @If_CutPerformCheck75(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [4 x i64], align 16               ; 20 uses
  %i.d = alloca [1000 x i8], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.e = load <2 x i64>, ptr %1, align 8, !tbaa !15
  %i.f = load i64, ptr %1, align 8, !tbaa !15     ; 12 uses
  store <2 x i64> %i.e, ptr %i.c, align 16, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load <2 x i64>, ptr %i.h, align 8, !tbaa !15
  store <2 x i64> %i.i, ptr %i.g, align 16, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !63   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 84
  %i.m = load i32, ptr %i.l, align 4, !tbaa !68
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.b, label %Abc_TtMinimumBase.exit

bb.b:                                             ; preds = %bb.a
  %i.n = icmp sgt i32 %3, 0
  br i1 %i.n, label %.lr.ph.i, label %Abc_TtMinimumBase.exit.thread

.lr.ph.i:                                         ; preds = %bb.b
  %i.o = icmp samesign ult i32 %3, 7              ; 2 uses
  %i.p = add nsw i32 %3, -6                       ; 2 uses
  %i.q = shl nuw i32 1, %i.p
  %.fr.i.i = freeze i32 %i.q                      ; 3 uses
  %i.r = sext i32 %.fr.i.i to i64
  %.idx.i.i = shl nsw i64 %i.r, 3
  %i.s = getelementptr inbounds i8, ptr %i.c, i64 %.idx.i.i
  %smax56.i.i = tail call i32 @llvm.smax.i32(i32 %.fr.i.i, i32 1)
  %wide.trip.count57.i.i = zext nneg i32 %smax56.i.i to i64
  br i1 %i.o, label %Abc_TtHasVar.exit.us.i, label %.lr.ph.split.i

Abc_TtHasVar.exit.us.i:                           ; preds = %.lr.ph.i
  %i.t = lshr i64 %i.f, 1
  %i.u = xor i64 %i.t, %i.f
  %i.v = and i64 %i.u, 6148914691236517205
  %.not1.us.i = icmp ne i64 %i.v, 0               ; 2 uses
  %i.w = zext i1 %.not1.us.i to i32               ; 2 uses
  %i.x = zext i1 %.not1.us.i to i32               ; 2 uses
  %exitcond42.not.i = icmp eq i32 %3, 1
  br i1 %exitcond42.not.i, label %._crit_edge.i, label %Abc_TtHasVar.exit.us.i.1

Abc_TtHasVar.exit.us.i.1:                         ; preds = %Abc_TtHasVar.exit.us.i
  %i.y = lshr i64 %i.f, 2
  %i.z = xor i64 %i.y, %i.f
  %i.aa = and i64 %i.z, 3689348814741910323
  %.not1.us.i.1 = icmp ne i64 %i.aa, 0            ; 2 uses
  %i.ab = zext i1 %.not1.us.i.1 to i32
  %.124.us.i.1 = add nuw nsw i32 %i.w, %i.ab      ; 2 uses
  %i.ac = select i1 %.not1.us.i.1, i32 2, i32 0
  %.1.us.i.1 = or disjoint i32 %i.ac, %i.x        ; 2 uses
  %exitcond42.not.i.1 = icmp eq i32 %3, 2
  br i1 %exitcond42.not.i.1, label %._crit_edge.i, label %Abc_TtHasVar.exit.us.i.2

Abc_TtHasVar.exit.us.i.2:                         ; preds = %Abc_TtHasVar.exit.us.i.1
  %i.ad = lshr i64 %i.f, 4
  %i.ae = xor i64 %i.ad, %i.f
  %i.af = and i64 %i.ae, 1085102592571150095
  %.not1.us.i.2 = icmp ne i64 %i.af, 0            ; 2 uses
  %i.ag = zext i1 %.not1.us.i.2 to i32
  %.124.us.i.2 = add nuw nsw i32 %.124.us.i.1, %i.ag ; 2 uses
  %i.ah = select i1 %.not1.us.i.2, i32 4, i32 0
  %.1.us.i.2 = or disjoint i32 %i.ah, %.1.us.i.1  ; 2 uses
  %exitcond42.not.i.2 = icmp eq i32 %3, 3
  br i1 %exitcond42.not.i.2, label %._crit_edge.i, label %Abc_TtHasVar.exit.us.i.3

Abc_TtHasVar.exit.us.i.3:                         ; preds = %Abc_TtHasVar.exit.us.i.2
  %i.ai = lshr i64 %i.f, 8
  %i.aj = xor i64 %i.ai, %i.f
  %i.ak = and i64 %i.aj, 71777214294589695
  %.not1.us.i.3 = icmp ne i64 %i.ak, 0            ; 2 uses
  %i.al = zext i1 %.not1.us.i.3 to i32
  %.124.us.i.3 = add nuw nsw i32 %.124.us.i.2, %i.al ; 2 uses
  %i.am = select i1 %.not1.us.i.3, i32 8, i32 0
  %.1.us.i.3 = or disjoint i32 %i.am, %.1.us.i.2  ; 2 uses
  %exitcond42.not.i.3 = icmp eq i32 %3, 4
  br i1 %exitcond42.not.i.3, label %._crit_edge.i, label %Abc_TtHasVar.exit.us.i.4

Abc_TtHasVar.exit.us.i.4:                         ; preds = %Abc_TtHasVar.exit.us.i.3
  %i.an = lshr i64 %i.f, 16
  %i.ao = xor i64 %i.an, %i.f
  %i.ap = and i64 %i.ao, 281470681808895
  %.not1.us.i.4 = icmp ne i64 %i.ap, 0            ; 2 uses
  %i.aq = zext i1 %.not1.us.i.4 to i32
  %.124.us.i.4 = add nuw nsw i32 %.124.us.i.3, %i.aq ; 2 uses
  %i.ar = select i1 %.not1.us.i.4, i32 16, i32 0
  %.1.us.i.4 = or disjoint i32 %i.ar, %.1.us.i.3  ; 2 uses
  %exitcond42.not.i.4 = icmp eq i32 %3, 5
  br i1 %exitcond42.not.i.4, label %._crit_edge.i, label %Abc_TtHasVar.exit.us.i.5

Abc_TtHasVar.exit.us.i.5:                         ; preds = %Abc_TtHasVar.exit.us.i.4
  %i.as = lshr i64 %i.f, 32
  %.masked = and i64 %i.f, 4294967295
  %.not1.us.i.5 = icmp ne i64 %i.as, %.masked     ; 2 uses
  %i.at = zext i1 %.not1.us.i.5 to i32
  %.124.us.i.5 = add nuw nsw i32 %.124.us.i.4, %i.at
  %i.au = select i1 %.not1.us.i.5, i32 32, i32 0
  %.1.us.i.5 = or disjoint i32 %i.au, %.1.us.i.4
  br label %._crit_edge.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %.not48.i.i = icmp eq i32 %i.p, 31
  br i1 %.not48.i.i, label %Abc_TtMinimumBase.exit.thread, label %.lr.ph.split.split.preheader.i

.lr.ph.split.split.preheader.i:                   ; preds = %.lr.ph.split.i
  %wide.trip.count.i = zext nneg i32 %3 to i64
  br label %.lr.ph.split.split.i

.lr.ph.split.split.i:                             ; preds = %.loopexit.i, %.lr.ph.split.split.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.split.preheader.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 6 uses
  %.08.i = phi i32 [ 0, %.lr.ph.split.split.preheader.i ], [ %.1.i, %.loopexit.i ] ; 4 uses
  %.0237.i = phi i32 [ 0, %.lr.ph.split.split.preheader.i ], [ %.124.i, %.loopexit.i ]
  %i.av = icmp samesign ult i64 %indvars.iv.i, 6
  br i1 %i.av, label %.lr.ph.i.i, label %.preheader.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split.split.i
  %i.aw = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ax = shl nuw nsw i32 1, %i.aw                ; 2 uses
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !15
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next54.i.i = add nuw nsw i64 %indvars.iv53.i.i, 1 ; 2 uses
  %exitcond58.not.i.i = icmp eq i64 %indvars.iv.next54.i.i, %wide.trip.count57.i.i
  br i1 %exitcond58.not.i.i, label %.loopexit.i, label %bb.d, !llvm.loop !32

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv53.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next54.i.i, %bb.c ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv53.i.i
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !15 ; 2 uses
  %i.bd = lshr i64 %i.bc, %i.ay
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = and i64 %i.be, %i.ba
  %.not39.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not39.i.i, label %bb.c, label %Abc_TtHasVar.exit.i

.preheader.lr.ph.i.i:                             ; preds = %.lr.ph.split.split.i
  %i.bg = add nsw i64 %indvars.iv.i, -6           ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 31
  %i.bi = trunc nuw nsw i64 %i.bg to i32          ; 2 uses
  %i.bj = shl i32 2, %i.bi
  %i.bk = sext i32 %i.bj to i64
  br i1 %i.bh, label %.loopexit.i, label %.preheader.us.preheader.i.i

.preheader.us.preheader.i.i:                      ; preds = %.preheader.lr.ph.i.i
  %i.bl = shl nuw nsw i32 1, %i.bi                ; 2 uses
  %i.bm = zext nneg i32 %i.bl to i64
  %wide.trip.count.i.i = zext nneg i32 %i.bl to i64
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.us.preheader.i.i
  %.03343.us.i.i = phi ptr [ %i.bq, %._crit_edge.us.i.i ], [ %i.c, %.preheader.us.preheader.i.i ] ; 3 uses
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.03343.us.i.i, i64 %i.bm
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.us.i.i, label %bb.f, !llvm.loop !33

bb.f:                                             ; preds = %bb.e, %.preheader.us.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i.i, i64 %indvars.iv.i.i
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !15
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.bp = load i64, ptr %gep.i.i, align 8, !tbaa !15
  %.not.us.i.i = icmp eq i64 %i.bo, %i.bp
  br i1 %.not.us.i.i, label %bb.e, label %Abc_TtHasVar.exit.i.loopexit

._crit_edge.us.i.i:                               ; preds = %bb.e
  %i.bq = getelementptr inbounds [8 x i8], ptr %.03343.us.i.i, i64 %i.bk ; 2 uses
  %i.br = icmp ult ptr %i.bq, %i.s
  br i1 %i.br, label %.preheader.us.i.i, label %.loopexit.i, !llvm.loop !34

Abc_TtHasVar.exit.i.loopexit:                     ; preds = %bb.f
  %.pre43 = trunc nuw nsw i64 %indvars.iv.i to i32
  %.pre44 = shl nuw i32 1, %.pre43
  br label %Abc_TtHasVar.exit.i

Abc_TtHasVar.exit.i:                              ; preds = %bb.d, %Abc_TtHasVar.exit.i.loopexit
  %.pre-phi45 = phi i32 [ %.pre44, %Abc_TtHasVar.exit.i.loopexit ], [ %i.ax, %bb.d ]
  %i.bs = or i32 %.pre-phi45, %.08.i
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %._crit_edge.us.i.i, %bb.c, %Abc_TtHasVar.exit.i, %.preheader.lr.ph.i.i
  %.sink.i = phi i32 [ 1, %Abc_TtHasVar.exit.i ], [ 0, %bb.c ], [ 0, %.preheader.lr.ph.i.i ], [ 0, %._crit_edge.us.i.i ]
  %.1.i = phi i32 [ %i.bs, %Abc_TtHasVar.exit.i ], [ %.08.i, %bb.c ], [ %.08.i, %.preheader.lr.ph.i.i ], [ %.08.i, %._crit_edge.us.i.i ] ; 2 uses
  %.124.i = add nuw nsw i32 %.sink.i, %.0237.i    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.split.i, !llvm.loop !35

._crit_edge.i:                                    ; preds = %.loopexit.i, %Abc_TtHasVar.exit.us.i, %Abc_TtHasVar.exit.us.i.1, %Abc_TtHasVar.exit.us.i.2, %Abc_TtHasVar.exit.us.i.3, %Abc_TtHasVar.exit.us.i.4, %Abc_TtHasVar.exit.us.i.5
  %.023.lcssa.i = phi i32 [ %.124.us.i.5, %Abc_TtHasVar.exit.us.i.5 ], [ %i.w, %Abc_TtHasVar.exit.us.i ], [ %.124.us.i.1, %Abc_TtHasVar.exit.us.i.1 ], [ %.124.us.i.2, %Abc_TtHasVar.exit.us.i.2 ], [ %.124.us.i.3, %Abc_TtHasVar.exit.us.i.3 ], [ %.124.us.i.4, %Abc_TtHasVar.exit.us.i.4 ], [ %.124.i, %.loopexit.i ] ; 4 uses
  %.0.lcssa.i = phi i32 [ %.1.us.i.5, %Abc_TtHasVar.exit.us.i.5 ], [ %i.x, %Abc_TtHasVar.exit.us.i ], [ %.1.us.i.1, %Abc_TtHasVar.exit.us.i.1 ], [ %.1.us.i.2, %Abc_TtHasVar.exit.us.i.2 ], [ %.1.us.i.3, %Abc_TtHasVar.exit.us.i.3 ], [ %.1.us.i.4, %Abc_TtHasVar.exit.us.i.4 ], [ %.1.i, %.loopexit.i ] ; 4 uses
  %i.bt = icmp eq i32 %.0.lcssa.i, 0
  br i1 %i.bt, label %Abc_TtMinimumBase.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  %i.bu = add nsw i32 %.0.lcssa.i, 1
  %i.bv = and i32 %i.bu, %.0.lcssa.i
  %.not.i.not = icmp eq i32 %i.bv, 0
  br i1 %.not.i.not, label %Abc_TtMinimumBase.exit, label %.lr.ph61.i.i

.lr.ph61.i.i:                                     ; preds = %bb.g
  %i.bw = select i1 %i.o, i32 1, i32 %.fr.i.i     ; 4 uses
  %i.bx = sext i32 %i.bw to i64
  %.idx65.i.i.i = shl nsw i64 %i.bx, 3
  %i.by = getelementptr inbounds i8, ptr %i.c, i64 %.idx65.i.i.i ; 2 uses
  %i.bz = icmp sgt i32 %i.bw, 0
  %wide.trip.count73.i.i.i = zext i32 %i.bw to i64 ; 3 uses
  br i1 %i.bz, label %.lr.ph61.split.us.split.us.preheader.i.i, label %Abc_TtMinimumBase.exit

.lr.ph61.split.us.split.us.preheader.i.i:         ; preds = %.lr.ph61.i.i
  %wide.trip.count106.i.i = zext nneg i32 %3 to i64
  %min.iters.check = icmp ult i32 %i.bw, 4
  %n.vec = and i64 %wide.trip.count73.i.i.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count73.i.i.i
  br label %.lr.ph61.split.us.split.us.i.i

.lr.ph61.split.us.split.us.i.i:                   ; preds = %bb.i, %.lr.ph61.split.us.split.us.preheader.i.i
  %indvars.iv100.i.i = phi i64 [ 0, %.lr.ph61.split.us.split.us.preheader.i.i ], [ %indvars.iv.next101.i.i, %bb.i ] ; 3 uses
  %.056.us.us.i.i = phi i32 [ 0, %.lr.ph61.split.us.split.us.preheader.i.i ], [ %.1.us.us.i.i, %bb.i ] ; 4 uses
  %indvars105.i.i = trunc i64 %indvars.iv100.i.i to i32 ; 2 uses
  %i.ca = shl nuw i32 1, %indvars105.i.i
  %i.cb = and i32 %i.ca, %.0.lcssa.i
  %.not.us.us.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not.us.us.i.i, label %bb.i, label %.preheader.us.us.i.i

.preheader.us.us.i.i:                             ; preds = %.lr.ph61.split.us.split.us.i.i
  %.not15.not18.us.us.i.i = icmp slt i32 %.056.us.us.i.i, %indvars105.i.i
  br i1 %.not15.not18.us.us.i.i, label %.lr.ph.us.us.preheader.i.i, label %._crit_edge.split.us.us.split.us.us.i.i

.lr.ph.us.us.preheader.i.i:                       ; preds = %.preheader.us.us.i.i
  %i.cc = sext i32 %.056.us.us.i.i to i64
  br label %.lr.ph.us.us.i.i

.lr.ph.us.us.i.i:                                 ; preds = %Abc_TtSwapAdjacent.exit.us.us.us.us.i.i, %.lr.ph.us.us.preheader.i.i
  %indvars.iv102.i.i = phi i64 [ %indvars.iv100.i.i, %.lr.ph.us.us.preheader.i.i ], [ %indvars.iv.next103.i.i, %Abc_TtSwapAdjacent.exit.us.us.us.us.i.i ] ; 4 uses
  %indvars.iv.next103.i.i = add nsw i64 %indvars.iv102.i.i, -1 ; 5 uses
  %i.cd = icmp slt i64 %indvars.iv102.i.i, 6
  br i1 %i.cd, label %.lr.ph64.i.us.us.us.us.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.us.us.i.i
  %i.ce = icmp eq i64 %indvars.iv.next103.i.i, 5
  br i1 %i.ce, label %.lr.ph.i.us.us.us.us.i.i, label %.preheader.lr.ph.i.us.us.us.us.i.i

.preheader.lr.ph.i.us.us.us.us.i.i:               ; preds = %bb.h
  %i.cf = icmp samesign ult i64 %indvars.iv102.i.i, 8
  %i.cg = trunc i64 %indvars.iv102.i.i to i32
  %i.ch = add i32 %i.cg, -7
  %i.ci = shl nuw i32 1, %i.ch
  %i.cj = select i1 %i.cf, i32 1, i32 %i.ci       ; 7 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  %i.cl = shl nsw i32 %i.cj, 2
  %i.cm = sext i32 %i.cl to i64
  br i1 %i.ck, label %.preheader.us.preheader.i.us.us.us.us.i.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i.i

.preheader.us.preheader.i.us.us.us.us.i.i:        ; preds = %.preheader.lr.ph.i.us.us.us.us.i.i
  %i.cn = shl nuw nsw i32 %i.cj, 1
  %i.co = zext nneg i32 %i.cj to i64              ; 6 uses
  %umin = zext nneg i32 %i.cn to i64              ; 2 uses
  %i.cp = shl nuw nsw i64 %i.co, 3                ; 2 uses
  %i.cq = shl nuw nsw i64 %umin, 3                ; 2 uses
  %i.cr = getelementptr i8, ptr %i.c, i64 %i.cp
  %scevgep = getelementptr i8, ptr %i.cr, i64 %i.cq
  %scevgep72.a = getelementptr i8, ptr %i.c, i64 %i.cq
  %i.cs = shl nuw nsw i64 %i.co, 4
  %scevgep73 = getelementptr i8, ptr %i.c, i64 %i.cs
  %scevgep74 = getelementptr i8, ptr %i.c, i64 %i.cp
  %min.iters.check76 = icmp ult i32 %i.cj, 4
  %bound0 = icmp ult ptr %scevgep74, %scevgep
  %bound1 = icmp ult ptr %scevgep72.a, %scevgep73
  %found.conflict = and i1 %bound0, %bound1
  %n.vec78 = and i64 %i.co, 2147483644
  %xtraiter = and i64 %i.co, 1
  %i.ct = icmp eq i32 %i.cj, 1
  %unroll_iter = and i64 %i.co, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod95 = trunc i32 %i.cj to i1
  br label %.preheader.us.i.us.us.us.us.i.i

.preheader.us.i.us.us.us.us.i.i:                  ; preds = %._crit_edge.us.i.us.us.us.us.i.i, %.preheader.us.preheader.i.us.us.us.us.i.i
  %.061.us.i.us.us.us.us.i.i = phi ptr [ %i.df, %._crit_edge.us.i.us.us.us.us.i.i ], [ %i.c, %.preheader.us.preheader.i.us.us.us.us.i.i ] ; 3 uses
  %invariant.gep.i.us.us.us.us.i.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us.i.i, i64 %i.co ; 4 uses
  %invariant.gep80.i.us.us.us.us.i.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us.i.i, i64 %umin ; 4 uses
  %brmerge = select i1 %min.iters.check76, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph75.preheader, label %vector.body79

scalar.ph75.preheader:                            ; preds = %.preheader.us.i.us.us.us.us.i.i
  br i1 %i.ct, label %scalar.ph75.epil.preheader, label %scalar.ph75

vector.body79:                                    ; preds = %.preheader.us.i.us.us.us.us.i.i, %vector.body79
  %index80 = phi i64 [ %index.next85, %vector.body79 ], [ 0, %.preheader.us.i.us.us.us.us.i.i ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i.i, i64 %index80 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %wide.load81.a = load <2 x i64>, ptr %i.cu, align 8, !tbaa !15, !alias.scope !69, !noalias !70
  %wide.load82.a = load <2 x i64>, ptr %i.cv, align 8, !tbaa !15, !alias.scope !69, !noalias !70
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i.i, i64 %index80 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %wide.load83 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !15, !alias.scope !70
  %wide.load84 = load <2 x i64>, ptr %i.cx, align 8, !tbaa !15, !alias.scope !70
  store <2 x i64> %wide.load83, ptr %i.cu, align 8, !tbaa !15, !alias.scope !69, !noalias !70
  store <2 x i64> %wide.load84, ptr %i.cv, align 8, !tbaa !15, !alias.scope !69, !noalias !70
  store <2 x i64> %wide.load81.a, ptr %i.cw, align 8, !tbaa !15, !alias.scope !70
  store <2 x i64> %wide.load82.a, ptr %i.cx, align 8, !tbaa !15, !alias.scope !70
  %index.next85 = add nuw i64 %index80, 4         ; 2 uses
  %i.cy = icmp eq i64 %index.next85, %n.vec78
  br i1 %i.cy, label %._crit_edge.us.i.us.us.us.us.i.i, label %vector.body79, !llvm.loop !39

scalar.ph75:                                      ; preds = %scalar.ph75.preheader, %scalar.ph75
  %indvars.iv.i.us.us.us.us.i.i = phi i64 [ %indvars.iv.next.i.us.us.us.us.i.i.1, %scalar.ph75 ], [ 0, %scalar.ph75.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph75 ], [ 0, %scalar.ph75.preheader ]
  %gep.i.us.us.us.us.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i.i, i64 %indvars.iv.i.us.us.us.us.i.i ; 2 uses
  %i.cz = load i64, ptr %gep.i.us.us.us.us.i.i, align 8, !tbaa !15
  %gep81.i.us.us.us.us.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i.i, i64 %indvars.iv.i.us.us.us.us.i.i ; 2 uses
  %i.da = load i64, ptr %gep81.i.us.us.us.us.i.i, align 8, !tbaa !15
  store i64 %i.da, ptr %gep.i.us.us.us.us.i.i, align 8, !tbaa !15
  store i64 %i.cz, ptr %gep81.i.us.us.us.us.i.i, align 8, !tbaa !15
  %indvars.iv.next.i.us.us.us.us.i.i = or disjoint i64 %indvars.iv.i.us.us.us.us.i.i, 1 ; 2 uses
  %gep.i.us.us.us.us.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i.i, i64 %indvars.iv.next.i.us.us.us.us.i.i ; 2 uses
  %i.db = load i64, ptr %gep.i.us.us.us.us.i.i.1, align 8, !tbaa !15
  %gep81.i.us.us.us.us.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i.i, i64 %indvars.iv.next.i.us.us.us.us.i.i ; 2 uses
  %i.dc = load i64, ptr %gep81.i.us.us.us.us.i.i.1, align 8, !tbaa !15
  store i64 %i.dc, ptr %gep.i.us.us.us.us.i.i.1, align 8, !tbaa !15
  store i64 %i.db, ptr %gep81.i.us.us.us.us.i.i.1, align 8, !tbaa !15
  %indvars.iv.next.i.us.us.us.us.i.i.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.us.us.us.us.i.i.loopexit.unr-lcssa, label %scalar.ph75, !llvm.loop !40

._crit_edge.us.i.us.us.us.us.i.i.loopexit.unr-lcssa: ; preds = %scalar.ph75
  br i1 %lcmp.mod.not, label %._crit_edge.us.i.us.us.us.us.i.i, label %scalar.ph75.epil.preheader

scalar.ph75.epil.preheader:                       ; preds = %._crit_edge.us.i.us.us.us.us.i.i.loopexit.unr-lcssa, %scalar.ph75.preheader
  %indvars.iv.i.us.us.us.us.i.i.epil.init = phi i64 [ 0, %scalar.ph75.preheader ], [ %indvars.iv.next.i.us.us.us.us.i.i.1, %._crit_edge.us.i.us.us.us.us.i.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod95)
  %gep.i.us.us.us.us.i.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i.i, i64 %indvars.iv.i.us.us.us.us.i.i.epil.init ; 2 uses
  %i.dd = load i64, ptr %gep.i.us.us.us.us.i.i.epil, align 8, !tbaa !15
  %gep81.i.us.us.us.us.i.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i.i, i64 %indvars.iv.i.us.us.us.us.i.i.epil.init ; 2 uses
  %i.de = load i64, ptr %gep81.i.us.us.us.us.i.i.epil, align 8, !tbaa !15
  store i64 %i.de, ptr %gep.i.us.us.us.us.i.i.epil, align 8, !tbaa !15
  store i64 %i.dd, ptr %gep81.i.us.us.us.us.i.i.epil, align 8, !tbaa !15
  br label %._crit_edge.us.i.us.us.us.us.i.i

._crit_edge.us.i.us.us.us.us.i.i:                 ; preds = %vector.body79, %scalar.ph75.epil.preheader, %._crit_edge.us.i.us.us.us.us.i.i.loopexit.unr-lcssa
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us.i.i, i64 %i.cm ; 2 uses
  %i.dg = icmp ult ptr %i.df, %i.by
  br i1 %i.dg, label %.preheader.us.i.us.us.us.us.i.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i.i, !llvm.loop !41

.lr.ph.i.us.us.us.us.i.i:                         ; preds = %bb.h, %.lr.ph.i.us.us.us.us.i.i
  %.05462.i.us.us.us.us.i.i = phi ptr [ %i.dk, %.lr.ph.i.us.us.us.us.i.i ], [ %i.c, %bb.h ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.05462.i.us.us.us.us.i.i, i64 4 ; 2 uses
  %i.di = load <2 x i32>, ptr %i.dh, align 4, !tbaa !13
  %i.dj = shufflevector <2 x i32> %i.di, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.dj, ptr %i.dh, align 4, !tbaa !13
  %i.dk = getelementptr inbounds nuw i8, ptr %.05462.i.us.us.us.us.i.i, i64 16 ; 2 uses
  %i.dl = icmp ult ptr %i.dk, %i.by
  br i1 %i.dl, label %.lr.ph.i.us.us.us.us.i.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i.i, !llvm.loop !42

.lr.ph64.i.us.us.us.us.i.i:                       ; preds = %.lr.ph.us.us.i.i
  %i.dm = trunc nsw i64 %indvars.iv.next103.i.i to i32
  %i.dn = shl nuw nsw i32 1, %i.dm
  %i.do = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %indvars.iv.next103.i.i ; 3 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !15 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !15 ; 2 uses
  %i.ds = zext nneg i32 %i.dn to i64              ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !15 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph64.i.us.us.us.us.i.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.dp, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert60 = insertelement <2 x i64> poison, i64 %i.dr, i64 0
  %broadcast.splat61 = shufflevector <2 x i64> %broadcast.splatinsert60, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert62 = insertelement <2 x i64> poison, i64 %i.ds, i64 0
  %broadcast.splat63 = shufflevector <2 x i64> %broadcast.splatinsert62, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert64 = insertelement <2 x i64> poison, i64 %i.du, i64 0
  %broadcast.splat65 = shufflevector <2 x i64> %broadcast.splatinsert64, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.dv, align 16, !tbaa !15 ; 3 uses
  %wide.load66 = load <2 x i64>, ptr %i.dw, align 16, !tbaa !15 ; 3 uses
  %i.dx = and <2 x i64> %wide.load, %broadcast.splat
  %i.dy = and <2 x i64> %wide.load66, %broadcast.splat
  %i.dz = and <2 x i64> %wide.load, %broadcast.splat61
  %i.ea = and <2 x i64> %wide.load66, %broadcast.splat61
  %i.eb = shl <2 x i64> %i.dz, %broadcast.splat63
  %i.ec = shl <2 x i64> %i.ea, %broadcast.splat63
  %i.ed = or <2 x i64> %i.eb, %i.dx
  %i.ee = or <2 x i64> %i.ec, %i.dy
  %i.ef = and <2 x i64> %wide.load, %broadcast.splat65
  %i.eg = and <2 x i64> %wide.load66, %broadcast.splat65
  %i.eh = lshr <2 x i64> %i.ef, %broadcast.splat63
  %i.ei = lshr <2 x i64> %i.eg, %broadcast.splat63
  %i.ej = or <2 x i64> %i.ed, %i.eh
  %i.ek = or <2 x i64> %i.ee, %i.ei
  store <2 x i64> %i.ej, ptr %i.dv, align 16, !tbaa !15
  store <2 x i64> %i.ek, ptr %i.dw, align 16, !tbaa !15
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph64.i.us.us.us.us.i.i, %middle.block
  %indvars.iv70.i.us.us.us.us.i.i.ph = phi i64 [ 0, %.lr.ph64.i.us.us.us.us.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv70.i.us.us.us.us.i.i = phi i64 [ %indvars.iv.next71.i.us.us.us.us.i.i, %scalar.ph ], [ %indvars.iv70.i.us.us.us.us.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv70.i.us.us.us.us.i.i ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !15 ; 3 uses
  %i.eo = and i64 %i.en, %i.dp
  %i.ep = and i64 %i.en, %i.dr
  %i.eq = shl i64 %i.ep, %i.ds
  %i.er = or i64 %i.eq, %i.eo
  %i.es = and i64 %i.en, %i.du
  %i.et = lshr i64 %i.es, %i.ds
  %i.eu = or i64 %i.er, %i.et
  store i64 %i.eu, ptr %i.em, align 8, !tbaa !15
  %indvars.iv.next71.i.us.us.us.us.i.i = add nuw nsw i64 %indvars.iv70.i.us.us.us.us.i.i, 1 ; 2 uses
  %exitcond74.not.i.us.us.us.us.i.i = icmp eq i64 %indvars.iv.next71.i.us.us.us.us.i.i, %wide.trip.count73.i.i.i
  br i1 %exitcond74.not.i.us.us.us.us.i.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i.i, label %scalar.ph, !llvm.loop !44

Abc_TtSwapAdjacent.exit.us.us.us.us.i.i:          ; preds = %._crit_edge.us.i.us.us.us.us.i.i, %.lr.ph.i.us.us.us.us.i.i, %scalar.ph, %middle.block, %.preheader.lr.ph.i.us.us.us.us.i.i
  %.not15.not.us.us.us.us.i.i = icmp sgt i64 %indvars.iv.next103.i.i, %i.cc
  br i1 %.not15.not.us.us.us.us.i.i, label %.lr.ph.us.us.i.i, label %._crit_edge.split.us.us.split.us.us.i.i, !llvm.loop !45

._crit_edge.split.us.us.split.us.us.i.i:          ; preds = %Abc_TtSwapAdjacent.exit.us.us.us.us.i.i, %.preheader.us.us.i.i
  %i.ev = add nsw i32 %.056.us.us.i.i, 1
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.split.us.us.split.us.us.i.i, %.lr.ph61.split.us.split.us.i.i
  %.1.us.us.i.i = phi i32 [ %i.ev, %._crit_edge.split.us.us.split.us.us.i.i ], [ %.056.us.us.i.i, %.lr.ph61.split.us.split.us.i.i ]
  %indvars.iv.next101.i.i = add nuw nsw i64 %indvars.iv100.i.i, 1 ; 2 uses
  %exitcond107.not.i.i = icmp eq i64 %indvars.iv.next101.i.i, %wide.trip.count106.i.i
  br i1 %exitcond107.not.i.i, label %Abc_TtMinimumBase.exit, label %.lr.ph61.split.us.split.us.i.i, !llvm.loop !46

Abc_TtMinimumBase.exit:                           ; preds = %bb.i, %.lr.ph61.i.i, %bb.g, %._crit_edge.i, %bb.a
  %.030 = phi i32 [ %3, %bb.a ], [ %.023.lcssa.i, %._crit_edge.i ], [ %.023.lcssa.i, %bb.g ], [ %.023.lcssa.i, %.lr.ph61.i.i ], [ %.023.lcssa.i, %bb.i ] ; 6 uses
  %i.ew = icmp slt i32 %.030, 6
  br i1 %i.ew, label %Abc_TtMinimumBase.exit.thread, label %bb.j

bb.j:                                             ; preds = %Abc_TtMinimumBase.exit
  %i.ex = icmp samesign ult i32 %.030, 8
  br i1 %i.ex, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ey = call i32 @If_CutPerformCheck16(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef %2, i32 noundef %.030, ptr noundef nonnull @.str) #7
  %.not19 = icmp eq i32 %i.ey, 0
  br i1 %.not19, label %._crit_edge, label %Abc_TtMinimumBase.exit.thread

._crit_edge:                                      ; preds = %bb.k
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !63
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.j
  %i.ez = phi ptr [ %.pre, %._crit_edge ], [ %i.k, %bb.j ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 176
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !73
  %.not20 = icmp eq i32 %i.fb, 0
  br i1 %.not20, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 140
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !74
  %i.fe = icmp ne i32 %i.fd, 0
  %i.ff = icmp eq i32 %.030, 8
  %or.cond = and i1 %i.ff, %i.fe
  br i1 %or.cond, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.fg = call i32 @Dau_DsdDecompose(ptr noundef nonnull %i.c, i32 noundef 8, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.d) #7
  %i.fh = icmp sgt i32 %i.fg, 4
  br i1 %i.fh, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 0, ptr %i.b, align 4, !tbaa !13
  %i.fi = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !11
  %i.fk = icmp eq i8 %i.fj, 0
  br i1 %i.fk, label %Dau_DsdCheckDecAndExist.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fl = call ptr @Dau_DsdComputeMatches(ptr noundef nonnull %i.d) #7
  %i.fm = call i32 @Dau_DsdCheckDecAndExist_rec(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef %i.fl, ptr noundef nonnull %i.b)
  %i.fn = lshr i32 %i.fm, 4
  %.lobit = and i32 %i.fn, 1
  br label %Dau_DsdCheckDecAndExist.exit

Dau_DsdCheckDecAndExist.exit:                     ; preds = %bb.o, %bb.p
  %.0.i = phi i32 [ %.lobit, %bb.p ], [ 0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

bb.q:                                             ; preds = %Dau_DsdCheckDecAndExist.exit, %bb.n
  %.0 = phi i32 [ 0, %bb.n ], [ %.0.i, %Dau_DsdCheckDecAndExist.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %Abc_TtMinimumBase.exit.thread

bb.r:                                             ; preds = %bb.m, %bb.l
  %i.fo = call i32 @If_CutPerformCheck45(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i32 noundef %2, i32 noundef %.030, ptr noundef %4) #7
  %.not22 = icmp eq i32 %i.fo, 0
  br i1 %.not22, label %bb.s, label %Abc_TtMinimumBase.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.fp = call i32 @If_CutPerformCheck54(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i32 noundef %2, i32 noundef %.030, ptr noundef %4) #7
  %.not23 = icmp ne i32 %i.fp, 0
  %.24 = zext i1 %.not23 to i32
  br label %Abc_TtMinimumBase.exit.thread

Abc_TtMinimumBase.exit.thread:                    ; preds = %bb.b, %.lr.ph.split.i, %bb.s, %bb.r, %bb.k, %Abc_TtMinimumBase.exit, %bb.q
  %.1 = phi i32 [ %.0, %bb.q ], [ 1, %Abc_TtMinimumBase.exit ], [ 1, %bb.k ], [ %.24, %bb.s ], [ 1, %bb.r ], [ 1, %.lr.ph.split.i ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  ret i32 %.1
}

declare i32 @If_CutPerformCheck45(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @If_CutPerformCheck54(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!4, !4, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!5, !5, i64 0}
!14 = !{!"long", !4, i64 0}
!15 = !{!14, !14, i64 0}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !30}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !30}
!29 = distinct !{!29, !12}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, i1 false, !"LVerDomain"}
!37 = distinct !{!37, !36}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !12, !71, !72}
!40 = distinct !{!40, !12, !71}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !12, !71, !72}
!44 = distinct !{!44, !12, !72, !71}
!45 = distinct !{!45, !12}
!46 = distinct !{!46, !12}
!47 = !{!"p1 _ZTS9If_Par_t_", !8, i64 0}
!48 = !{!"p1 _ZTS9If_Obj_t_", !8, i64 0}
!49 = !{!"p1 _ZTS10Vec_Ptr_t_", !8, i64 0}
!50 = !{!"float", !4, i64 0}
!51 = !{!"p1 long", !8, i64 0}
!52 = !{!"p1 _ZTS10Vec_Int_t_", !8, i64 0}
!53 = !{!"p1 _ZTS10Vec_Wrd_t_", !8, i64 0}
!54 = !{!"p1 _ZTS12Mem_Fixed_t_", !8, i64 0}
!55 = !{!"p1 _ZTS9If_Set_t_", !8, i64 0}
!56 = !{!"p1 _ZTS12If_DsdMan_t_", !8, i64 0}
!57 = !{!"p1 _ZTS14Hash_IntMan_t_", !8, i64 0}
!58 = !{!"p1 _ZTS10Vec_Str_t_", !8, i64 0}
!59 = !{!"p1 _ZTS10Vec_Mem_t_", !8, i64 0}
!60 = !{!"p1 _ZTS9If_Cut_t_", !8, i64 0}
!61 = !{!"p1 _ZTS10Tim_Man_t_", !8, i64 0}
!62 = !{!"If_Man_t_", !9, i64 0, !47, i64 8, !48, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !49, i64 56, !4, i64 64, !5, i64 84, !50, i64 88, !50, i64 92, !50, i64 96, !50, i64 100, !5, i64 104, !50, i64 108, !5, i64 112, !5, i64 116, !4, i64 120, !51, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !52, i64 176, !4, i64 184, !5, i64 568, !5, i64 572, !5, i64 576, !52, i64 584, !52, i64 592, !53, i64 600, !53, i64 608, !53, i64 616, !49, i64 624, !52, i64 632, !5, i64 640, !5, i64 644, !5, i64 648, !4, i64 652, !5, i64 716, !5, i64 720, !5, i64 724, !5, i64 728, !54, i64 736, !54, i64 744, !55, i64 752, !55, i64 760, !55, i64 768, !5, i64 776, !5, i64 780, !4, i64 784, !4, i64 912, !5, i64 1040, !5, i64 1044, !5, i64 1048, !5, i64 1052, !56, i64 1056, !4, i64 1064, !4, i64 1192, !4, i64 1320, !4, i64 1448, !4, i64 1576, !4, i64 1704, !4, i64 1832, !57, i64 1960, !52, i64 1968, !58, i64 1976, !59, i64 1984, !4, i64 1992, !5, i64 2024, !5, i64 2028, !5, i64 2032, !4, i64 2040, !4, i64 2088, !4, i64 2096, !52, i64 2104, !4, i64 2112, !49, i64 2176, !8, i64 2184, !52, i64 2192, !4, i64 2200, !58, i64 2264, !52, i64 2272, !52, i64 2280, !52, i64 2288, !48, i64 2296, !60, i64 2304, !5, i64 2312, !4, i64 2316, !4, i64 2444, !50, i64 2572, !5, i64 2576, !61, i64 2584, !52, i64 2592, !4, i64 2600, !4, i64 2608, !4, i64 2616, !54, i64 2632}
!63 = !{!62, !47, i64 8}
!64 = !{!"p1 _ZTS12If_LibLut_t_", !8, i64 0}
!65 = !{!"p1 _ZTS13If_LibCell_t_", !8, i64 0}
!66 = !{!"p1 float", !8, i64 0}
!67 = !{!"If_Par_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !50, i64 24, !50, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !9, i64 208, !5, i64 216, !50, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !5, i64 236, !5, i64 240, !5, i64 244, !5, i64 248, !5, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !50, i64 280, !50, i64 284, !50, i64 288, !64, i64 296, !65, i64 304, !66, i64 312, !66, i64 320, !8, i64 328, !8, i64 336, !8, i64 344, !8, i64 352, !8, i64 360, !8, i64 368}
!68 = !{!67, !5, i64 84}
!69 = !{!37}
!70 = !{!38}
!71 = !{!"llvm.loop.isvectorized", i32 1}
!72 = !{!"llvm.loop.unroll.runtime.disable"}
!73 = !{!67, !5, i64 176}
!74 = !{!67, !5, i64 140}
end_hunk_0
