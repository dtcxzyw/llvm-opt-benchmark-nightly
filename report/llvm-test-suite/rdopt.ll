inline.NumInlined: 29
inline.NumDeleted: 4
begin_hunk_0_@Mode_Decision_for_4x4IntraBlocks:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.acw, ptr noundef nonnull align 4 dereferenceable(16) %i.acz, i64 16, i1 false)
  %i.ada = load ptr, ptr @img, align 8, !tbaa !16
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 14176
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !116
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 8
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !23
  %i.adf = getelementptr inbounds [8 x i8], ptr %i.ade, i64 %i.aax
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !89
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %i.adg, i64 %i.cw
  %i.adi = getelementptr inbounds [8 x i8], ptr %i.abt, i64 %i.aax
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !89
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %i.adj, i64 %i.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.adh, ptr noundef nonnull align 4 dereferenceable(16) %i.adk, i64 16, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader242, %bb.ah, %.preheader
  %.4219 = phi i32 [ %i.yf, %.preheader ], [ %.3218, %bb.ah ], [ %.3218, %.preheader242 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.4219
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #5

declare void @getLuma4x4Neighbour(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @intrapred_luma(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @distortion4x4(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare void @reset_coding_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @Mode_Decision_for_8x8IntraBlocks(i32 noundef %0, double noundef %1, ptr noundef captures(none) initializes((0, 4)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = tail call double @llvm.fmuladd.f64(double %1, double 6.000000e+00, double 4.999000e-01)
  %i.c = tail call double @llvm.floor.f64(double %i.b)
  %i.d = fptosi double %i.c to i32
  store i32 %i.d, ptr %2, align 4, !tbaa !4
  %i.e = call i32 @Mode_Decision_for_4x4IntraBlocks(i32 noundef %0, i32 noundef 0, double noundef %1, ptr noundef nonnull %i.a)
  %.not = icmp ne i32 %i.e, 0
  %i.f = load i32, ptr %i.a, align 4, !tbaa !4
  %i.g = load i32, ptr %2, align 4, !tbaa !4
  %i.h = add nsw i32 %i.g, %i.f
  store i32 %i.h, ptr %2, align 4, !tbaa !4
  %i.i = call i32 @Mode_Decision_for_4x4IntraBlocks(i32 noundef %0, i32 noundef 1, double noundef %1, ptr noundef nonnull %i.a)
  %.not.1 = icmp ne i32 %i.i, 0
  %i.j = load i32, ptr %i.a, align 4, !tbaa !4
  %i.k = load i32, ptr %2, align 4, !tbaa !4
  %i.l = add nsw i32 %i.k, %i.j
  store i32 %i.l, ptr %2, align 4, !tbaa !4
  %i.m = call i32 @Mode_Decision_for_4x4IntraBlocks(i32 noundef %0, i32 noundef 2, double noundef %1, ptr noundef nonnull %i.a)
  %.not.2 = icmp ne i32 %i.m, 0
  %i.n = load i32, ptr %i.a, align 4, !tbaa !4
  %i.o = load i32, ptr %2, align 4, !tbaa !4
  %i.p = add nsw i32 %i.o, %i.n
  store i32 %i.p, ptr %2, align 4, !tbaa !4
  %i.q = call i32 @Mode_Decision_for_4x4IntraBlocks(i32 noundef %0, i32 noundef 3, double noundef %1, ptr noundef nonnull %i.a)
  %.not.3 = icmp ne i32 %i.q, 0
  %i.r = select i1 %.not.3, i1 true, i1 %.not.2
  %i.s = select i1 %i.r, i1 true, i1 %.not.1
  %narrow = select i1 %i.s, i1 true, i1 %.not
  %spec.select.3 = zext i1 %narrow to i32
  %i.t = load i32, ptr %i.a, align 4, !tbaa !4
  %i.u = load i32, ptr %2, align 4, !tbaa !4
  %i.v = add nsw i32 %i.u, %i.t
  store i32 %i.v, ptr %2, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %spec.select.3
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 16) i32 @Mode_Decision_for_Intra4x4Macroblock(double noundef %0, ptr noundef captures(none) initializes((0, 4)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 40 uses
  store i32 0, ptr %1, align 4, !tbaa !4
  %i.b = tail call double @llvm.fmuladd.f64(double %0, double 6.000000e+00, double 4.999000e-01)
  %i.c = tail call double @llvm.floor.f64(double %i.b)
  %i.d = fptosi double %i.c to i32                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.e = call i32 @Mode_Decision_for_4x4IntraBlocks(i32 noundef 0, i32 noundef 0, double noundef %0, ptr noundef nonnull %i.a)
  %.not.i = icmp ne i32 %i.e, 0
  %i.f = load i32, ptr %i.a, align 4, !tbaa !4
  %i.g = add nsw i32 %i.f, %i.d
  %i.h = call i32 @Mode_Decision_for_4x4IntraBlocks(i32 noundef 0, i32 noundef 1, double noundef %0, ptr noundef nonnull %i.a)
  %.not.1.i = icmp ne i32 %i.h, 0
  %i.i = load i32, ptr %i.a, align 4, !tbaa !4
  %i.j = add nsw i32 %i.g, %i.i
  %i.k = call i32 @Mode_Decision_for_4x4IntraBlocks(i32 noundef 0, i32 noundef 2, double noundef %0, ptr noundef nonnull %i.a)
  %.not.2.i = icmp ne i32 %i.k, 0
  %i.l = load i32, ptr %i.a, align 4, !tbaa !4
  %i.m = add nsw i32 %i.j, %i.l
  %i.n = call i32 @Mode_Decision_for_4x4IntraBlocks(i32 noundef 0, i32 noundef 3, double noundef %0, ptr noundef nonnull %i.a)
  %.not.3.i = icmp ne i32 %i.n, 0
  %.not15.not19 = select i1 %.not.3.i, i1 true, i1 %.not.2.i
  %.not14.not18 = select i1 %.not15.not19, i1 true, i1 %.not.1.i
  %narrow.i.not.not = select i1 %.not14.not18, i1 true, i1 %.not.i
  %i.o = load i32, ptr %i.a, align 4, !tbaa !4
  %i.p = add nsw i32 %i.m, %i.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.q = zext i1 %narrow.i.not.not to i32
  %i.r = load i32, ptr %1, align 4, !tbaa !4
  %i.s = add nsw i32 %i.p, %i.r
  store i32 %i.s, ptr %1, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.t = call i32 @Mode_Decision_for_4x4IntraBlocks(i32 noundef 1, i32 noundef 0, double noundef %0, ptr noundef nonnull %i.a)
  %.not.i.1 = icmp eq i32 %i.t, 0
  %i.u = load i32, ptr %i.a, align 4, !tbaa !4
  %i.v = add nsw i32 %i.u, %i.d
  %i.w = call i32 @Mode_Decision_for_4x4IntraBlocks(i32 noundef 1, i32 noundef 1, double noundef %0, ptr noundef nonnull %i.a)
  %.not.1.i.1 = icmp eq i32 %i.w, 0
  %i.x = load i32, ptr %i.a, align 4, !tbaa !4
  %i.y = add nsw i32 %i.v, %i.x
  %i.z = call i32 @Mode_Decision_for_4x4IntraBlocks(i32 noundef 1, i32 noundef 2, double noundef %0, ptr noundef nonnull %i.a)
  %.not.2.i.1 = icmp eq i32 %i.z, 0
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !4
  %i.ab = add nsw i32 %i.y, %i.aa
  %i.ac = call i32 @Mode_Decision_for_4x4IntraBlocks(i32 noundef 1, i32 noundef 3, double noundef %0, ptr noundef nonnull %i.a)
  %.not.3.i.1 = icmp eq i32 %i.ac, 0
  %.not15.1 = select i1 %.not.3.i.1, i1 %.not.2.i.1, i1 false
  %.not14.1 = select i1 %.not15.1, i1 %.not.1.i.1, i1 false
  %narrow.i.not.1 = select i1 %.not14.1, i1 %.not.i.1, i1 false
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !4
  %i.ae = add nsw i32 %i.ab, %i.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.af = select i1 %narrow.i.not.1, i32 0, i32 2
  %.1.1 = or disjoint i32 %i.af, %i.q
  %i.ag = load i32, ptr %1, align 4, !tbaa !4
  %i.ah = add nsw i32 %i.ae, %i.ag
  store i32 %i.ah, ptr %1, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ai = call i32 @Mode_Decision_for_4x4IntraBlocks(i32 noundef 2, i32 noundef 0, double noundef %0, ptr noundef nonnull %i.a)
  %.not.i.2 = icmp eq i32 %i.ai, 0
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !4
  %i.ak = add nsw i32 %i.aj, %i.d
  %i.al = call i32 @Mode_Decision_for_4x4IntraBlocks(i32 noundef 2, i32 noundef 1, double noundef %0, ptr noundef nonnull %i.a)
  %.not.1.i.2 = icmp eq i32 %i.al, 0
  %i.am = load i32, ptr %i.a, align 4, !tbaa !4
  %i.an = add nsw i32 %i.ak, %i.am
  %i.ao = call i32 @Mode_Decision_for_4x4IntraBlocks(i32 noundef 2, i32 noundef 2, double noundef %0, ptr noundef nonnull %i.a)
  %.not.2.i.2 = icmp eq i32 %i.ao, 0
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !4
  %i.aq = add nsw i32 %i.an, %i.ap
  %i.ar = call i32 @Mode_Decision_for_4x4IntraBlocks(i32 noundef 2, i32 noundef 3, double noundef %0, ptr noundef nonnull %i.a)
  %.not.3.i.2 = icmp eq i32 %i.ar, 0
  %.not15.2 = select i1 %.not.3.i.2, i1 %.not.2.i.2, i1 false
  %.not14.2 = select i1 %.not15.2, i1 %.not.1.i.2, i1 false
  %narrow.i.not.2 = select i1 %.not14.2, i1 %.not.i.2, i1 false
  %i.as = load i32, ptr %i.a, align 4, !tbaa !4
  %i.at = add nsw i32 %i.aq, %i.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.au = select i1 %narrow.i.not.2, i32 0, i32 4
  %.1.2 = or disjoint i32 %i.au, %.1.1
  %i.av = load i32, ptr %1, align 4, !tbaa !4
  %i.aw = add nsw i32 %i.at, %i.av
  store i32 %i.aw, ptr %1, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ax = call i32 @Mode_Decision_for_4x4IntraBlocks(i32 noundef 3, i32 noundef 0, double noundef %0, ptr noundef nonnull %i.a)
  %.not.i.3 = icmp eq i32 %i.ax, 0
  %i.ay = load i32, ptr %i.a, align 4, !tbaa !4
  %i.az = add nsw i32 %i.ay, %i.d
  %i.ba = call i32 @Mode_Decision_for_4x4IntraBlocks(i32 noundef 3, i32 noundef 1, double noundef %0, ptr noundef nonnull %i.a)
  %.not.1.i.3 = icmp eq i32 %i.ba, 0
  %i.bb = load i32, ptr %i.a, align 4, !tbaa !4
  %i.bc = add nsw i32 %i.az, %i.bb
  %i.bd = call i32 @Mode_Decision_for_4x4IntraBlocks(i32 noundef 3, i32 noundef 2, double noundef %0, ptr noundef nonnull %i.a)
  %.not.2.i.3 = icmp eq i32 %i.bd, 0
  %i.be = load i32, ptr %i.a, align 4, !tbaa !4
  %i.bf = add nsw i32 %i.bc, %i.be
  %i.bg = call i32 @Mode_Decision_for_4x4IntraBlocks(i32 noundef 3, i32 noundef 3, double noundef %0, ptr noundef nonnull %i.a)
  %.not.3.i.3 = icmp eq i32 %i.bg, 0
  %.not15.3 = select i1 %.not.3.i.3, i1 %.not.2.i.3, i1 false
  %.not14.3 = select i1 %.not15.3, i1 %.not.1.i.3, i1 false
  %narrow.i.not.3 = select i1 %.not14.3, i1 %.not.i.3, i1 false
  %i.bh = load i32, ptr %i.a, align 4, !tbaa !4
  %i.bi = add nsw i32 %i.bf, %i.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.bj = select i1 %narrow.i.not.3, i32 0, i32 8
  %.1.3 = or disjoint i32 %i.bj, %.1.2
  %i.bk = load i32, ptr %1, align 4, !tbaa !4
  %i.bl = add nsw i32 %i.bi, %i.bk
  store i32 %i.bl, ptr %1, align 4, !tbaa !4
  ret i32 %.1.3
}

; Function Attrs: nounwind uwtable
define dso_local double @RDCost_for_8x8blocks(ptr noundef captures(none) %0, ptr noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4, i16 noundef signext %5, i16 noundef signext %6, i16 noundef signext %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %8 = alloca %struct.syntaxelement, align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 0, ptr %i.c, align 4, !tbaa !4
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 8                          ; 3 uses
  %i.f = shl i32 %3, 2                            ; 2 uses
  %i.g = and i32 %i.f, -8                         ; 3 uses
  %i.h = lshr exact i32 %i.e, 2                   ; 7 uses
  %i.i = ashr exact i32 %i.g, 2                   ; 7 uses
  %i.j = load ptr, ptr @img, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !41
  %i.m = icmp eq i32 %i.l, 1
  %i.n = icmp eq i32 %4, 0
  %i.o = and i1 %i.n, %i.m                        ; 2 uses
  %i.p = sext i16 %5 to i32
  %i.q = tail call i32 @B8Mode2Value(i32 noundef %4, i32 noundef %i.p) #14 ; 2 uses
  %i.r = load ptr, ptr @img, align 8, !tbaa !16   ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 14224
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !118
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !101
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [536 x i8], ptr %i.t, i64 %i.w ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 14216
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !87   ; 2 uses
  %i.aa = load ptr, ptr @input, align 8, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4016
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !88
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr @assignSE2partition, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !89 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 480
  store i16 0, ptr %i.ag, align 8, !tbaa !119
  br i1 %i.o, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.ah = load ptr, ptr @direct_pdir, align 8, !tbaa !44
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 172
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !56
  %i.ak = add nsw i32 %i.aj, %i.i
  %i.al = sext i32 %i.ak to i64                   ; 3 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !45
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !57
  %i.aq = add nsw i32 %i.ap, %i.h
  %i.ar = sext i32 %i.aq to i64                   ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %i.an, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !46  ; 2 uses
  %i.au = icmp slt i8 %i.at, 0
  br i1 %i.au, label %bb.af, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = zext nneg i8 %i.at to i16
  %i.aw = load ptr, ptr @direct_ref_idx, align 8, !tbaa !122 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !44
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.al
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !45
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.ar
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !46
  %i.bc = tail call i8 @llvm.smax.i8(i8 %i.bb, i8 0)
  %i.bd = zext nneg i8 %i.bc to i16
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !44
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.al
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !45
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %i.ar
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !46
  %i.bk = sext i8 %i.bj to i16
  %i.bl = call i32 @LumaResidualCoding8x8(ptr noundef nonnull %i.c, ptr noundef %1, i32 noundef %3, i16 noundef signext %i.av, i32 noundef 0, i32 noundef 0, i16 noundef signext %i.bd, i16 noundef signext %i.bk) #14
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.bm = icmp eq i16 %5, 2                       ; 2 uses
  br i1 %i.bm, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.bn = load ptr, ptr @active_pps, align 8, !tbaa !16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 196
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !123
  %i.bq = icmp eq i32 %i.bp, 1
  br i1 %i.bq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.br = load ptr, ptr @wbp_weight, align 8, !tbaa !13 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !8
  %i.bt = sext i16 %6 to i64                      ; 2 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !23
  %i.bw = sext i16 %7 to i64                      ; 2 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !89
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !8
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.bt
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !23
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.bw
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !89
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !4
  %i.ch = add i32 %i.bz, 128
  %i.ci = add i32 %i.ch, %i.cg
  %or.cond = icmp ult i32 %i.ci, 256
  br i1 %or.cond, label %bb.g, label %bb.af

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.cj = icmp eq i16 %5, 0
  %or.cond4 = or i1 %i.cj, %i.bm
  %i.ck = select i1 %or.cond4, i32 %4, i32 0
  %i.cl = add i16 %5, -1
  %or.cond7 = icmp ult i16 %i.cl, 2
  %i.cm = select i1 %or.cond7, i32 %4, i32 0
  %i.cn = call i32 @LumaResidualCoding8x8(ptr noundef nonnull %i.c, ptr noundef %1, i32 noundef %3, i16 noundef signext %5, i32 noundef %i.ck, i32 noundef %i.cm, i16 noundef signext %6, i16 noundef signext %7) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %storemerge = phi i32 [ %i.cn, %bb.g ], [ %i.bl, %bb.c ]
  store i32 %storemerge, ptr %0, align 4, !tbaa !4
  %i.co = load ptr, ptr @input, align 8, !tbaa !16 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4168
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !25
  %i.cr = icmp eq i32 %i.cq, 3
  %.pre201.pre204 = load ptr, ptr @img, align 8, !tbaa !16 ; 3 uses
  br i1 %i.cr, label %bb.i, label %.thread213

bb.i:                                             ; preds = %bb.h
  %i.cs = getelementptr inbounds nuw i8, ptr %.pre201.pre204, i64 20
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !41
  %.not = icmp eq i32 %i.ct, 1
  br i1 %.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @compute_residue_b8block(i32 noundef %3, i32 noundef -1) #14
  %.pre = load ptr, ptr @input, align 8, !tbaa !16 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 4168
  %.pre199 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !25
  %.pre201.pre = load ptr, ptr @img, align 8, !tbaa !16 ; 2 uses
  %i.cu = icmp eq i32 %.pre199, 3
  br i1 %i.cu, label %.thread, label %.thread213

.thread:                                          ; preds = %bb.i, %bb.j
  %i.cv = phi ptr [ %.pre, %bb.j ], [ %i.co, %bb.i ] ; 3 uses
  %.pre201212 = phi ptr [ %.pre201.pre, %bb.j ], [ %.pre201.pre204, %bb.i ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.pre201212, i64 20
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !41
  %.not169 = icmp eq i32 %i.cx, 1
  br i1 %.not169, label %.thread213, label %.preheader

.preheader:                                       ; preds = %.thread
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 4728
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !125 ; 2 uses
  %i.da = icmp sgt i32 %i.cz, 0
  br i1 %i.da, label %.lr.ph, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre206 = sext i32 %i.cz to i64
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.db = sext i16 %6 to i32
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv190 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next191, %bb.m ] ; 3 uses
  %.0163177 = phi i64 [ 0, %.lr.ph ], [ %i.hj, %bb.m ]
  %i.dc = trunc nuw nsw i64 %indvars.iv190 to i32
  call void @decode_one_b8block(i32 noundef %i.dc, i32 noundef 8, i32 noundef %3, i32 noundef %4, i32 noundef %i.db) #14
  %i.dd = load ptr, ptr @img, align 8, !tbaa !16  ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 196
  %i.df = load i32, ptr %i.de, align 4, !tbaa !80
  %i.dg = add i32 %i.df, %i.g                     ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 192
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !100
  %i.dj = add i32 %i.di, %i.e
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 14232
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !90 ; 8 uses
  %i.dm = load ptr, ptr @imgY_org, align 8, !tbaa !64
  %i.dn = load ptr, ptr @decs, align 8, !tbaa !16
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !126
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv190
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !64
  %i.ds = sext i32 %i.dj to i64                   ; 9 uses
  %i.dt = sext i32 %i.dg to i64
  %indvars.iv.next = add nsw i64 %i.ds, 1         ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %i.ds, 2       ; 2 uses
  %indvars.iv.next.2 = add nsw i64 %i.ds, 3       ; 2 uses
  %indvars.iv.next.3 = add nsw i64 %i.ds, 4       ; 2 uses
  %indvars.iv.next.4 = add nsw i64 %i.ds, 5       ; 2 uses
  %indvars.iv.next.5 = add nsw i64 %i.ds, 6       ; 2 uses
  %indvars.iv.next.6 = add nsw i64 %i.ds, 7       ; 2 uses
  %i.du = add nsw i32 %i.dg, 7
  %i.dv = sext i32 %i.du to i64
end_hunk_0
begin_hunk_1_@RDCost_for_8x8blocks:bb.a
  %i.fx = zext i16 %i.fw to i64
  %i.fy = sub nsw i64 %i.fu, %i.fx
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !4
  %i.gb = sext i32 %i.ga to i64
  %i.gc = add nsw i64 %i.fr, %i.gb
  %i.gd = getelementptr inbounds [2 x i8], ptr %i.dx, i64 %indvars.iv.next.4
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !68
  %i.gf = zext i16 %i.ge to i64
  %i.gg = getelementptr inbounds [2 x i8], ptr %i.ec, i64 %indvars.iv.next.4
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !68
  %i.gi = zext i16 %i.gh to i64
  %i.gj = sub nsw i64 %i.gf, %i.gi
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !4
  %i.gm = sext i32 %i.gl to i64
  %i.gn = add nsw i64 %i.gc, %i.gm
  %i.go = getelementptr inbounds [2 x i8], ptr %i.dx, i64 %indvars.iv.next.5
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !68
  %i.gq = zext i16 %i.gp to i64
  %i.gr = getelementptr inbounds [2 x i8], ptr %i.ec, i64 %indvars.iv.next.5
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !68
  %i.gt = zext i16 %i.gs to i64
  %i.gu = sub nsw i64 %i.gq, %i.gt
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !4
  %i.gx = sext i32 %i.gw to i64
  %i.gy = add nsw i64 %i.gn, %i.gx
  %i.gz = getelementptr inbounds [2 x i8], ptr %i.dx, i64 %indvars.iv.next.6
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !68
  %i.hb = zext i16 %i.ha to i64
  %i.hc = getelementptr inbounds [2 x i8], ptr %i.ec, i64 %indvars.iv.next.6
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !68
  %i.he = zext i16 %i.hd to i64
  %i.hf = sub nsw i64 %i.hb, %i.he
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %i.hf
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !4
  %i.hi = sext i32 %i.hh to i64
  %i.hj = add nsw i64 %i.gy, %i.hi                ; 3 uses
  %indvars.iv.next188 = add nsw i64 %indvars.iv, 1
  %i.hk = icmp slt i64 %indvars.iv, %i.dv
  br i1 %i.hk, label %bb.l, label %bb.m, !llvm.loop !128

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1 ; 2 uses
  %i.hl = load ptr, ptr @input, align 8, !tbaa !16 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 4728
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !125
  %i.ho = sext i32 %i.hn to i64                   ; 2 uses
  %i.hp = icmp slt i64 %indvars.iv.next191, %i.ho
  br i1 %i.hp, label %bb.k, label %._crit_edge, !llvm.loop !129

._crit_edge:                                      ; preds = %bb.m, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre206, %.preheader.._crit_edge_crit_edge ], [ %i.ho, %bb.m ]
  %i.hq = phi ptr [ %i.cv, %.preheader.._crit_edge_crit_edge ], [ %i.hl, %bb.m ]
  %.0163.lcssa = phi i64 [ 0, %.preheader.._crit_edge_crit_edge ], [ %i.hj, %bb.m ]
  %i.hr = sdiv i64 %.0163.lcssa, %.pre-phi
  br label %.loopexit

.thread213:                                       ; preds = %bb.h, %.thread, %bb.j
  %i.hs = phi ptr [ %i.cv, %.thread ], [ %.pre, %bb.j ], [ %i.co, %bb.h ]
  %.pre201211 = phi ptr [ %.pre201212, %.thread ], [ %.pre201.pre, %bb.j ], [ %.pre201.pre204, %bb.h ] ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.pre201211, i64 176
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !78
  %i.hv = add i32 %i.hu, %i.e
  %i.hw = getelementptr inbounds nuw i8, ptr %.pre201211, i64 14232
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !90 ; 8 uses
  %i.hy = load ptr, ptr @imgY_org, align 8, !tbaa !64
  %i.hz = getelementptr inbounds nuw i8, ptr %.pre201211, i64 196
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !80
  %i.ib = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 6440
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !83
  %i.ie = getelementptr inbounds nuw i8, ptr %.pre201211, i64 180
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !79
  %i.ig = sext i32 %i.hv to i64                   ; 9 uses
  %i.ih = sext i32 %i.g to i64
  %i.ii = sext i32 %i.ia to i64
  %i.ij = sext i32 %i.if to i64
  %indvars.iv.next194 = add nsw i64 %i.ig, 1      ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.hy, i64 %i.ii
  %invariant.gep218 = getelementptr [8 x i8], ptr %i.id, i64 %i.ij
  %indvars.iv.next194.1 = add nsw i64 %i.ig, 2    ; 2 uses
  %indvars.iv.next194.2 = add nsw i64 %i.ig, 3    ; 2 uses
  %indvars.iv.next194.3 = add nsw i64 %i.ig, 4    ; 2 uses
  %indvars.iv.next194.4 = add nsw i64 %i.ig, 5    ; 2 uses
  %indvars.iv.next194.5 = add nsw i64 %i.ig, 6    ; 2 uses
  %indvars.iv.next194.6 = add nsw i64 %i.ig, 7    ; 2 uses
  %i.ik = or i32 %i.f, 7
  %i.il = sext i32 %i.ik to i64
  br label %bb.n

bb.n:                                             ; preds = %.thread213, %bb.n
  %indvars.iv196 = phi i64 [ %i.ih, %.thread213 ], [ %indvars.iv.next197, %bb.n ] ; 4 uses
  %.3166182 = phi i64 [ 0, %.thread213 ], [ %i.lx, %bb.n ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv196
  %i.im = load ptr, ptr %gep, align 8, !tbaa !66  ; 8 uses
  %i.in = getelementptr inbounds [2 x i8], ptr %i.im, i64 %i.ig
  %i.io = load i16, ptr %i.in, align 2, !tbaa !68
  %i.ip = zext i16 %i.io to i64
  %gep219 = getelementptr [8 x i8], ptr %invariant.gep218, i64 %indvars.iv196
  %i.iq = load ptr, ptr %gep219, align 8, !tbaa !66 ; 8 uses
  %i.ir = getelementptr inbounds [2 x i8], ptr %i.iq, i64 %i.ig
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !68
  %i.it = zext i16 %i.is to i64
  %i.iu = sub nsw i64 %i.ip, %i.it
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !4
  %i.ix = sext i32 %i.iw to i64
  %i.iy = add nsw i64 %.3166182, %i.ix
  %i.iz = getelementptr inbounds [2 x i8], ptr %i.im, i64 %indvars.iv.next194
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !68
  %i.jb = zext i16 %i.ja to i64
  %i.jc = getelementptr inbounds [2 x i8], ptr %i.iq, i64 %indvars.iv.next194
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !68
  %i.je = zext i16 %i.jd to i64
  %i.jf = sub nsw i64 %i.jb, %i.je
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.jf
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !4
  %i.ji = sext i32 %i.jh to i64
  %i.jj = add nsw i64 %i.iy, %i.ji
  %i.jk = getelementptr inbounds [2 x i8], ptr %i.im, i64 %indvars.iv.next194.1
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !68
  %i.jm = zext i16 %i.jl to i64
  %i.jn = getelementptr inbounds [2 x i8], ptr %i.iq, i64 %indvars.iv.next194.1
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !68
  %i.jp = zext i16 %i.jo to i64
  %i.jq = sub nsw i64 %i.jm, %i.jp
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.jq
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !4
  %i.jt = sext i32 %i.js to i64
  %i.ju = add nsw i64 %i.jj, %i.jt
  %i.jv = getelementptr inbounds [2 x i8], ptr %i.im, i64 %indvars.iv.next194.2
  %i.jw = load i16, ptr %i.jv, align 2, !tbaa !68
  %i.jx = zext i16 %i.jw to i64
  %i.jy = getelementptr inbounds [2 x i8], ptr %i.iq, i64 %indvars.iv.next194.2
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !68
  %i.ka = zext i16 %i.jz to i64
  %i.kb = sub nsw i64 %i.jx, %i.ka
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !4
  %i.ke = sext i32 %i.kd to i64
  %i.kf = add nsw i64 %i.ju, %i.ke
  %i.kg = getelementptr inbounds [2 x i8], ptr %i.im, i64 %indvars.iv.next194.3
  %i.kh = load i16, ptr %i.kg, align 2, !tbaa !68
  %i.ki = zext i16 %i.kh to i64
  %i.kj = getelementptr inbounds [2 x i8], ptr %i.iq, i64 %indvars.iv.next194.3
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !68
  %i.kl = zext i16 %i.kk to i64
  %i.km = sub nsw i64 %i.ki, %i.kl
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.km
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !4
  %i.kp = sext i32 %i.ko to i64
  %i.kq = add nsw i64 %i.kf, %i.kp
  %i.kr = getelementptr inbounds [2 x i8], ptr %i.im, i64 %indvars.iv.next194.4
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !68
  %i.kt = zext i16 %i.ks to i64
  %i.ku = getelementptr inbounds [2 x i8], ptr %i.iq, i64 %indvars.iv.next194.4
  %i.kv = load i16, ptr %i.ku, align 2, !tbaa !68
  %i.kw = zext i16 %i.kv to i64
  %i.kx = sub nsw i64 %i.kt, %i.kw
  %i.ky = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.kx
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !4
  %i.la = sext i32 %i.kz to i64
  %i.lb = add nsw i64 %i.kq, %i.la
  %i.lc = getelementptr inbounds [2 x i8], ptr %i.im, i64 %indvars.iv.next194.5
  %i.ld = load i16, ptr %i.lc, align 2, !tbaa !68
  %i.le = zext i16 %i.ld to i64
  %i.lf = getelementptr inbounds [2 x i8], ptr %i.iq, i64 %indvars.iv.next194.5
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !68
  %i.lh = zext i16 %i.lg to i64
  %i.li = sub nsw i64 %i.le, %i.lh
  %i.lj = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.li
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !4
  %i.ll = sext i32 %i.lk to i64
  %i.lm = add nsw i64 %i.lb, %i.ll
  %i.ln = getelementptr inbounds [2 x i8], ptr %i.im, i64 %indvars.iv.next194.6
  %i.lo = load i16, ptr %i.ln, align 2, !tbaa !68
  %i.lp = zext i16 %i.lo to i64
  %i.lq = getelementptr inbounds [2 x i8], ptr %i.iq, i64 %indvars.iv.next194.6
  %i.lr = load i16, ptr %i.lq, align 2, !tbaa !68
  %i.ls = zext i16 %i.lr to i64
  %i.lt = sub nsw i64 %i.lp, %i.ls
  %i.lu = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.lt
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !4
  %i.lw = sext i32 %i.lv to i64
  %i.lx = add nsw i64 %i.lm, %i.lw                ; 2 uses
  %indvars.iv.next197 = add nsw i64 %indvars.iv196, 1
  %i.ly = icmp slt i64 %indvars.iv196, %i.il
  br i1 %i.ly, label %bb.n, label %.loopexit, !llvm.loop !130

.loopexit:                                        ; preds = %bb.n, %._crit_edge
  %i.lz = phi ptr [ %i.hq, %._crit_edge ], [ %i.hs, %bb.n ]
  %.5168 = phi i64 [ %i.hr, %._crit_edge ], [ %i.lx, %bb.n ]
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 4008
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !99
  %i.mc = icmp eq i32 %i.mb, 0
  br i1 %i.mc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.loopexit
  %9 = load i32, ptr %i.a, align 4, !tbaa !4
  call void @ue_linfo(i32 noundef %i.q, i32 noundef %9, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #14
  %i.md = load i32, ptr %i.b, align 4, !tbaa !4
  br label %bb.q

bb.p:                                             ; preds = %.loopexit
  %i.me = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.q, ptr %i.me, align 4, !tbaa !91
  store i32 2, ptr %8, align 8, !tbaa !94
  %i.mf = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !95
  %i.mh = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !4
  %i.mj = sext i32 %i.mi to i64
  %i.mk = getelementptr inbounds [104 x i8], ptr %i.mg, i64 %i.mj
  %i.ml = load ptr, ptr @writeB8_typeInfo, align 8, !tbaa !16
  call void %i.ml(ptr noundef nonnull %8, ptr noundef %i.mk) #14
  %i.mm = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !98
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0161 = phi i32 [ %i.md, %bb.o ], [ %i.mn, %bb.p ] ; 3 uses
  br i1 %i.o, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.mo = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 14456
  %i.mq = load i32, ptr %i.mp, align 8, !tbaa !131
  %i.mr = icmp sgt i32 %i.mq, 1
  %i.ms = and i16 %5, -3
  %or.cond10 = icmp eq i16 %i.ms, 0               ; 2 uses
  %or.cond171 = and i1 %or.cond10, %i.mr
  br i1 %or.cond171, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.mt = sext i16 %6 to i32
  %i.mu = call i32 @writeReferenceFrame(i32 noundef %4, i32 noundef %i.h, i32 noundef %i.i, i32 noundef 1, i32 noundef %i.mt) #14
  %i.mv = add nsw i32 %i.mu, %.0161
  %.pre203 = load ptr, ptr @img, align 8, !tbaa !16
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.mw = phi ptr [ %.pre203, %bb.s ], [ %i.mo, %bb.r ] ; 2 uses
  %.1162 = phi i32 [ %i.mv, %bb.s ], [ %.0161, %bb.r ] ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 14460
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !132
  %i.mz = icmp sgt i32 %i.my, 1
  br i1 %i.mz, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.na = getelementptr inbounds nuw i8, ptr %i.mw, i64 20
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !41
  %i.nc = icmp eq i32 %i.nb, 1
  %i.nd = add i16 %5, -1
  %or.cond13 = icmp ult i16 %i.nd, 2
  %or.cond172 = and i1 %or.cond13, %i.nc
  br i1 %or.cond172, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ne = sext i16 %7 to i32
  %i.nf = call i32 @writeReferenceFrame(i32 noundef %4, i32 noundef %i.h, i32 noundef %i.i, i32 noundef 0, i32 noundef %i.ne) #14
  %i.ng = add nsw i32 %i.nf, %.1162
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.2 = phi i32 [ %i.ng, %bb.v ], [ %.1162, %bb.t ], [ %.1162, %bb.u ] ; 2 uses
  br i1 %or.cond10, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.nh = add nuw nsw i32 %i.h, 2
  %i.ni = add nsw i32 %i.i, 2
  %i.nj = sext i16 %6 to i32
  %i.nk = call i32 @writeMotionVector8x8(i32 noundef %i.h, i32 noundef %i.i, i32 noundef %i.nh, i32 noundef %i.ni, i32 noundef %i.nj, i32 noundef 0, i32 noundef %4) #14
  %i.nl = add nsw i32 %i.nk, %.2
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.3 = phi i32 [ %i.nl, %bb.x ], [ %.2, %bb.w ]  ; 2 uses
  %i.nm = add i16 %5, -1
  %or.cond19 = icmp ult i16 %i.nm, 2
  br i1 %or.cond19, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.nn = add nuw nsw i32 %i.h, 2
  %i.no = add nsw i32 %i.i, 2
  %i.np = sext i16 %7 to i32
  %i.nq = call i32 @writeMotionVector8x8(i32 noundef %i.h, i32 noundef %i.i, i32 noundef %i.nn, i32 noundef %i.no, i32 noundef %i.np, i32 noundef 1, i32 noundef %4) #14
  %i.nr = add nsw i32 %i.nq, %.3
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.q
  %.4 = phi i32 [ %.0161, %bb.q ], [ %i.nr, %bb.z ], [ %.3, %bb.y ] ; 2 uses
  %i.ns = load ptr, ptr @input, align 8, !tbaa !16
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 4008
  %i.nu = load i32, ptr %i.nt, align 8, !tbaa !99
  %i.nv = icmp eq i32 %i.nu, 1
  br i1 %i.nv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.nw = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !95
  %i.ny = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !4
  %i.oa = sext i32 %i.nz to i64
  %i.ob = getelementptr inbounds [104 x i8], ptr %i.nx, i64 %i.oa
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 8 ; 3 uses
  %i.od = call i32 @arienco_bits_written(ptr noundef nonnull %i.oc) #14
  store i32 %i.od, ptr %i.b, align 4, !tbaa !4
  %i.oe = load i32, ptr %0, align 4, !tbaa !4
  %i.of = icmp sgt i32 %i.oe, 0
  %i.og = zext i1 %i.of to i32
  %i.oh = load i32, ptr @cbp8x8, align 4, !tbaa !4
  call void @writeCBP_BIT_CABAC(i32 noundef %3, i32 noundef %i.og, i32 noundef %i.oh, ptr noundef %i.x, i32 noundef 1, ptr noundef nonnull %i.oc) #14
  %i.oi = call i32 @arienco_bits_written(ptr noundef nonnull %i.oc) #14
  %i.oj = load i32, ptr %i.b, align 4, !tbaa !4
  %i.ok = sub nsw i32 %i.oi, %i.oj                ; 2 uses
  store i32 %i.ok, ptr %i.b, align 4, !tbaa !4
  %i.ol = add nsw i32 %i.ok, %.4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.5 = phi i32 [ %i.ol, %bb.ab ], [ %.4, %bb.aa ] ; 2 uses
  %i.om = load i32, ptr %0, align 4, !tbaa !4
  %.not170 = icmp eq i32 %i.om, 0
  br i1 %.not170, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.on = getelementptr inbounds nuw i8, ptr %i.x, i64 472
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !133
  %i.op = call i32 @writeLumaCoeff8x8(i32 noundef %3, i32 noundef %4, i32 noundef %i.oo) #14
  %i.oq = add nsw i32 %i.op, %.5
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.6 = phi i32 [ %i.oq, %bb.ad ], [ %.5, %bb.ac ]
  %i.or = sitofp i64 %.5168 to double
  %i.os = sitofp i32 %.6 to double
  %i.ot = call double @llvm.fmuladd.f64(double %2, double %i.os, double %i.or)
  br label %bb.af

bb.af:                                            ; preds = %bb.b, %bb.f, %bb.ae
  %.1 = phi double [ 1.000000e+20, %bb.f ], [ %i.ot, %bb.ae ], [ 1.000000e+20, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret double %.1
}

declare i32 @B8Mode2Value(i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @LumaResidualCoding8x8(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare void @compute_residue_b8block(i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @decode_one_b8block(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @ue_linfo(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @writeReferenceFrame(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @writeMotionVector8x8(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @arienco_bits_written(ptr noundef) local_unnamed_addr #1

declare void @writeCBP_BIT_CABAC(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @writeLumaCoeff8x8(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @I16Offset(i32 noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = and i32 %0, 15
  %.not = icmp eq i32 %i.a, 0
  %i.b = select i1 %.not, i32 1, i32 13
  %i.c = lshr i32 %0, 2
  %i.d = and i32 %i.c, 12
  %i.e = add i32 %i.d, %1
  %i.f = add i32 %i.e, %i.b
  ret i32 %i.f
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @SetModesAndRefframeForBlocks(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !16   ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 14224
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !101
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [536 x i8], ptr %i.c, i64 %i.f ; 40 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !41
  %i.j = icmp eq i32 %i.i, 1                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store i32 %0, ptr %i.k, align 8, !tbaa !134
  %i.l = icmp eq i32 %0, 1                        ; 5 uses
  br i1 %i.l, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
end_hunk_1
begin_hunk_2_@SetMotionVectorsMB:bb.a
  %i.sf = load ptr, ptr %i.ry, align 8, !tbaa !66 ; 2 uses
  %i.sg = load i16, ptr %i.sf, align 2, !tbaa !68
  %i.sh = load ptr, ptr %i.sa, align 8, !tbaa !66 ; 2 uses
  store i16 %i.sg, ptr %i.sh, align 2, !tbaa !68
  %i.si = load ptr, ptr %i.sc, align 8, !tbaa !66 ; 2 uses
  %i.sj = load i16, ptr %i.si, align 2, !tbaa !68
  %i.sk = load ptr, ptr %i.se, align 8, !tbaa !66 ; 2 uses
  store i16 %i.sj, ptr %i.sk, align 2, !tbaa !68
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sf, i64 2
  %i.sm = load i16, ptr %i.sl, align 2, !tbaa !68
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sh, i64 2
  store i16 %i.sm, ptr %i.sn, align 2, !tbaa !68
  %i.so = getelementptr inbounds nuw i8, ptr %i.si, i64 2
  %i.sp = load i16, ptr %i.so, align 2, !tbaa !68
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sk, i64 2
  store i16 %i.sp, ptr %i.sq, align 2, !tbaa !68
  %i.sr = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !66 ; 2 uses
  %i.st = load i16, ptr %i.ss, align 2, !tbaa !68
  %i.su = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !66 ; 2 uses
  store i16 %i.st, ptr %i.sv, align 2, !tbaa !68
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !66 ; 2 uses
  %i.sy = load i16, ptr %i.sx, align 2, !tbaa !68
  %i.sz = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !66 ; 2 uses
  store i16 %i.sy, ptr %i.ta, align 2, !tbaa !68
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ss, i64 2
  %i.tc = load i16, ptr %i.tb, align 2, !tbaa !68
  %i.td = getelementptr inbounds nuw i8, ptr %i.sv, i64 2
  store i16 %i.tc, ptr %i.td, align 2, !tbaa !68
  %i.te = getelementptr inbounds nuw i8, ptr %i.sx, i64 2
  %i.tf = load i16, ptr %i.te, align 2, !tbaa !68
  %i.tg = getelementptr inbounds nuw i8, ptr %i.ta, i64 2
  store i16 %i.tf, ptr %i.tg, align 2, !tbaa !68
  %i.th = getelementptr inbounds nuw i8, ptr %i.ry, i64 16
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !66 ; 2 uses
  %i.tj = load i16, ptr %i.ti, align 2, !tbaa !68
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sa, i64 16
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !66 ; 2 uses
  store i16 %i.tj, ptr %i.tl, align 2, !tbaa !68
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sc, i64 16
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !66 ; 2 uses
  %i.to = load i16, ptr %i.tn, align 2, !tbaa !68
  %i.tp = getelementptr inbounds nuw i8, ptr %i.se, i64 16
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !66 ; 2 uses
  store i16 %i.to, ptr %i.tq, align 2, !tbaa !68
  %i.tr = getelementptr inbounds nuw i8, ptr %i.ti, i64 2
  %i.ts = load i16, ptr %i.tr, align 2, !tbaa !68
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tl, i64 2
  store i16 %i.ts, ptr %i.tt, align 2, !tbaa !68
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tn, i64 2
  %i.tv = load i16, ptr %i.tu, align 2, !tbaa !68
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tq, i64 2
  store i16 %i.tv, ptr %i.tw, align 2, !tbaa !68
  %i.tx = getelementptr inbounds nuw i8, ptr %i.ry, i64 24
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !66 ; 2 uses
  %i.tz = load i16, ptr %i.ty, align 2, !tbaa !68
  %i.ua = getelementptr inbounds nuw i8, ptr %i.sa, i64 24
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !66 ; 2 uses
  store i16 %i.tz, ptr %i.ub, align 2, !tbaa !68
  %i.uc = getelementptr inbounds nuw i8, ptr %i.sc, i64 24
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !66 ; 2 uses
  %i.ue = load i16, ptr %i.ud, align 2, !tbaa !68
  %i.uf = getelementptr inbounds nuw i8, ptr %i.se, i64 24
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !66 ; 2 uses
  store i16 %i.ue, ptr %i.ug, align 2, !tbaa !68
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ty, i64 2
  %i.ui = load i16, ptr %i.uh, align 2, !tbaa !68
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ub, i64 2
  store i16 %i.ui, ptr %i.uj, align 2, !tbaa !68
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ud, i64 2
  %i.ul = load i16, ptr %i.uk, align 2, !tbaa !68
  %i.um = getelementptr inbounds nuw i8, ptr %i.ug, i64 2
  store i16 %i.ul, ptr %i.um, align 2, !tbaa !68
  %i.un = getelementptr inbounds nuw i8, ptr %i.ry, i64 32
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !66 ; 2 uses
  %i.up = load i16, ptr %i.uo, align 2, !tbaa !68
  %i.uq = getelementptr inbounds nuw i8, ptr %i.sa, i64 32
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !66 ; 2 uses
  store i16 %i.up, ptr %i.ur, align 2, !tbaa !68
  %i.us = getelementptr inbounds nuw i8, ptr %i.sc, i64 32
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !66 ; 2 uses
  %i.uu = load i16, ptr %i.ut, align 2, !tbaa !68
  %i.uv = getelementptr inbounds nuw i8, ptr %i.se, i64 32
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !66 ; 2 uses
  store i16 %i.uu, ptr %i.uw, align 2, !tbaa !68
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uo, i64 2
  %i.uy = load i16, ptr %i.ux, align 2, !tbaa !68
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ur, i64 2
  store i16 %i.uy, ptr %i.uz, align 2, !tbaa !68
  %i.va = getelementptr inbounds nuw i8, ptr %i.ut, i64 2
  %i.vb = load i16, ptr %i.va, align 2, !tbaa !68
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uw, i64 2
  store i16 %i.vb, ptr %i.vc, align 2, !tbaa !68
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ry, i64 40
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !66 ; 2 uses
  %i.vf = load i16, ptr %i.ve, align 2, !tbaa !68
  %i.vg = getelementptr inbounds nuw i8, ptr %i.sa, i64 40
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !66 ; 2 uses
  store i16 %i.vf, ptr %i.vh, align 2, !tbaa !68
  %i.vi = getelementptr inbounds nuw i8, ptr %i.sc, i64 40
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !66 ; 2 uses
  %i.vk = load i16, ptr %i.vj, align 2, !tbaa !68
  %i.vl = getelementptr inbounds nuw i8, ptr %i.se, i64 40
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !66 ; 2 uses
  store i16 %i.vk, ptr %i.vm, align 2, !tbaa !68
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ve, i64 2
  %i.vo = load i16, ptr %i.vn, align 2, !tbaa !68
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vh, i64 2
  store i16 %i.vo, ptr %i.vp, align 2, !tbaa !68
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vj, i64 2
  %i.vr = load i16, ptr %i.vq, align 2, !tbaa !68
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vm, i64 2
  store i16 %i.vr, ptr %i.vs, align 2, !tbaa !68
  %i.vt = getelementptr inbounds nuw i8, ptr %i.ry, i64 48
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !66 ; 2 uses
  %i.vv = load i16, ptr %i.vu, align 2, !tbaa !68
  %i.vw = getelementptr inbounds nuw i8, ptr %i.sa, i64 48
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !66 ; 2 uses
  store i16 %i.vv, ptr %i.vx, align 2, !tbaa !68
  %i.vy = getelementptr inbounds nuw i8, ptr %i.sc, i64 48
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !66 ; 2 uses
  %i.wa = load i16, ptr %i.vz, align 2, !tbaa !68
  %i.wb = getelementptr inbounds nuw i8, ptr %i.se, i64 48
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !66 ; 2 uses
  store i16 %i.wa, ptr %i.wc, align 2, !tbaa !68
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vu, i64 2
  %i.we = load i16, ptr %i.wd, align 2, !tbaa !68
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vx, i64 2
  store i16 %i.we, ptr %i.wf, align 2, !tbaa !68
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vz, i64 2
  %i.wh = load i16, ptr %i.wg, align 2, !tbaa !68
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wc, i64 2
  store i16 %i.wh, ptr %i.wi, align 2, !tbaa !68
  %i.wj = getelementptr inbounds nuw i8, ptr %i.ry, i64 56
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !66 ; 2 uses
  %i.wl = load i16, ptr %i.wk, align 2, !tbaa !68
  %i.wm = getelementptr inbounds nuw i8, ptr %i.sa, i64 56
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !66 ; 2 uses
  store i16 %i.wl, ptr %i.wn, align 2, !tbaa !68
  %i.wo = getelementptr inbounds nuw i8, ptr %i.sc, i64 56
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !66 ; 2 uses
  %i.wq = load i16, ptr %i.wp, align 2, !tbaa !68
  %i.wr = getelementptr inbounds nuw i8, ptr %i.se, i64 56
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !66 ; 2 uses
  store i16 %i.wq, ptr %i.ws, align 2, !tbaa !68
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wk, i64 2
  %i.wu = load i16, ptr %i.wt, align 2, !tbaa !68
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wn, i64 2
  store i16 %i.wu, ptr %i.wv, align 2, !tbaa !68
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wp, i64 2
  %i.wx = load i16, ptr %i.ww, align 2, !tbaa !68
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ws, i64 2
  store i16 %i.wx, ptr %i.wy, align 2, !tbaa !68
  %i.wz = getelementptr inbounds nuw i8, ptr %i.ry, i64 64
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !66 ; 2 uses
  %i.xb = load i16, ptr %i.xa, align 2, !tbaa !68
  %i.xc = getelementptr inbounds nuw i8, ptr %i.sa, i64 64
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !66 ; 2 uses
  store i16 %i.xb, ptr %i.xd, align 2, !tbaa !68
  %i.xe = getelementptr inbounds nuw i8, ptr %i.sc, i64 64
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !66 ; 2 uses
  %i.xg = load i16, ptr %i.xf, align 2, !tbaa !68
  %i.xh = getelementptr inbounds nuw i8, ptr %i.se, i64 64
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !66 ; 2 uses
  store i16 %i.xg, ptr %i.xi, align 2, !tbaa !68
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xa, i64 2
  %i.xk = load i16, ptr %i.xj, align 2, !tbaa !68
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xd, i64 2
  store i16 %i.xk, ptr %i.xl, align 2, !tbaa !68
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xf, i64 2
  %i.xn = load i16, ptr %i.xm, align 2, !tbaa !68
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xi, i64 2
  store i16 %i.xn, ptr %i.xo, align 2, !tbaa !68
  %indvars.iv.next263.1 = add nuw nsw i64 %indvars.iv262.1, 1 ; 2 uses
  %exitcond265.1.not = icmp eq i64 %indvars.iv.next263.1, %wide.trip.count
  br i1 %exitcond265.1.not, label %._crit_edge.us.us.us.1, label %.preheader.us.us.us.1, !llvm.loop !173

._crit_edge.us.us.us.1:                           ; preds = %.preheader.us.us.us.1
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 2 uses
  %exitcond272.not = icmp eq i64 %indvars.iv.next270, 4
  br i1 %exitcond272.not, label %.split241.us.us, label %.preheader223.us.us, !llvm.loop !174

.split241.us.us:                                  ; preds = %._crit_edge.us.us.us.1
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond276.not = icmp eq i64 %indvars.iv.next274, 4
  br i1 %exitcond276.not, label %.loopexit, label %.preheader224.us, !llvm.loop !175

.loopexit:                                        ; preds = %.split241.us.us, %.preheader225, %.loopexit227
  ret void
}

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @RDCost_for_macroblocks(double noundef %0, i32 noundef %1, ptr noundef captures(none) %2, ptr noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 11 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 13 uses
  store i32 %4, ptr %i.a, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 0, ptr %i.b, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 0, ptr %i.c, align 4, !tbaa !4
  %i.f = load ptr, ptr @img, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !101
  %i.i = tail call i32 @FmoGetPreviousMBNr(i32 noundef %i.h) #14
  %i.j = load ptr, ptr @img, align 8, !tbaa !16   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 14224
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !118  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !101
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [536 x i8], ptr %i.l, i64 %i.o ; 13 uses
  %i.q = zext nneg i32 %i.i to i64
  %i.r = getelementptr inbounds nuw [536 x i8], ptr %i.l, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !41   ; 2 uses
  %i.u = icmp eq i32 %i.t, 1                      ; 2 uses
  %.not = icmp eq i32 %i.t, 2
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  tail call void @SetModesAndRefframeForBlocks(i32 noundef %1)
  %i.v = icmp eq i32 %1, 0
  %.pre = load ptr, ptr @img, align 8, !tbaa !16
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr @input, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4008
  %i.y = load i32, ptr %i.x, align 8, !tbaa !99
  %i.z = icmp ne i32 %i.y, 1                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  tail call void @SetModesAndRefframeForBlocks(i32 noundef %1)
  %i.aa = icmp eq i32 %1, 0                       ; 2 uses
  %or.cond = and i1 %i.aa, %i.u
  %.pre347 = load ptr, ptr @img, align 8, !tbaa !16 ; 4 uses
  br i1 %or.cond, label %.preheader219, label %.critedge

.preheader219:                                    ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre347, i64 176
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !78
  %i.ad = ashr i32 %i.ac, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre347, i64 180
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !79
  %i.ag = ashr i32 %i.af, 2
  %i.ah = load ptr, ptr @direct_pdir, align 8, !tbaa !44 ; 4 uses
  %i.ai = sext i32 %i.ad to i64                   ; 7 uses
  %i.aj = sext i32 %i.ag to i64                   ; 4 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !45 ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ai
  %i.an = load i8, ptr %i.am, align 1, !tbaa !46
  %i.ao = icmp slt i8 %i.an, 0
  br i1 %i.ao, label %.loopexit220, label %bb.c

bb.c:                                             ; preds = %.preheader219
  %indvars.iv.next = add nsw i64 %i.ai, 1         ; 4 uses
  %i.ap = getelementptr inbounds i8, ptr %i.al, i64 %indvars.iv.next
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !46
  %i.ar = icmp slt i8 %i.aq, 0
  br i1 %i.ar, label %.loopexit220, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.1 = add nsw i64 %i.ai, 2       ; 4 uses
  %i.as = getelementptr inbounds i8, ptr %i.al, i64 %indvars.iv.next.1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !46
  %i.au = icmp slt i8 %i.at, 0
  br i1 %i.au, label %.loopexit220, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.2 = add nsw i64 %i.ai, 3       ; 4 uses
  %i.av = getelementptr inbounds i8, ptr %i.al, i64 %indvars.iv.next.2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !46
  %i.ax = icmp slt i8 %i.aw, 0
  br i1 %i.ax, label %.loopexit220, label %.preheader219.1

.preheader219.1:                                  ; preds = %bb.e
  %i.ay = getelementptr [8 x i8], ptr %i.ah, i64 %i.aj
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !45 ; 4 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.ai
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !46
  %i.bd = icmp slt i8 %i.bc, 0
  br i1 %i.bd, label %.loopexit220, label %bb.f

bb.f:                                             ; preds = %.preheader219.1
  %i.be = getelementptr inbounds i8, ptr %i.ba, i64 %indvars.iv.next
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !46
  %i.bg = icmp slt i8 %i.bf, 0
  br i1 %i.bg, label %.loopexit220, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds i8, ptr %i.ba, i64 %indvars.iv.next.1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !46
  %i.bj = icmp slt i8 %i.bi, 0
  br i1 %i.bj, label %.loopexit220, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds i8, ptr %i.ba, i64 %indvars.iv.next.2
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !46
  %i.bm = icmp slt i8 %i.bl, 0
  br i1 %i.bm, label %.loopexit220, label %.preheader219.2

.preheader219.2:                                  ; preds = %bb.h
  %i.bn = getelementptr [8 x i8], ptr %i.ah, i64 %i.aj
  %i.bo = getelementptr i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !45 ; 4 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %i.ai
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !46
  %i.bs = icmp slt i8 %i.br, 0
  br i1 %i.bs, label %.loopexit220, label %bb.i

bb.i:                                             ; preds = %.preheader219.2
  %i.bt = getelementptr inbounds i8, ptr %i.bp, i64 %indvars.iv.next
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !46
  %i.bv = icmp slt i8 %i.bu, 0
  br i1 %i.bv, label %.loopexit220, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = getelementptr inbounds i8, ptr %i.bp, i64 %indvars.iv.next.1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !46
  %i.by = icmp slt i8 %i.bx, 0
  br i1 %i.by, label %.loopexit220, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bz = getelementptr inbounds i8, ptr %i.bp, i64 %indvars.iv.next.2
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !46
  %i.cb = icmp slt i8 %i.ca, 0
  br i1 %i.cb, label %.loopexit220, label %.preheader219.3

.preheader219.3:                                  ; preds = %bb.k
  %i.cc = getelementptr [8 x i8], ptr %i.ah, i64 %i.aj
  %i.cd = getelementptr i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !45 ; 4 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.ai
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !46
  %i.ch = icmp slt i8 %i.cg, 0
  br i1 %i.ch, label %.loopexit220, label %bb.l

bb.l:                                             ; preds = %.preheader219.3
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 %indvars.iv.next
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !46
  %i.ck = icmp slt i8 %i.cj, 0
  br i1 %i.ck, label %.loopexit220, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cl = getelementptr inbounds i8, ptr %i.ce, i64 %indvars.iv.next.1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !46
  %i.cn = icmp slt i8 %i.cm, 0
  br i1 %i.cn, label %.loopexit220, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.co = getelementptr inbounds i8, ptr %i.ce, i64 %indvars.iv.next.2
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !46
  %i.cq = icmp slt i8 %i.cp, 0
  br i1 %i.cq, label %.loopexit220, label %.critedge

.critedge:                                        ; preds = %bb.n, %.thread, %bb.b
  %i.cr = phi ptr [ %.pre, %.thread ], [ %.pre347, %bb.b ], [ %.pre347, %bb.n ] ; 6 uses
  %i.cs = phi i1 [ %i.v, %.thread ], [ %i.aa, %bb.b ], [ true, %bb.n ]
  %i.ct = phi i1 [ false, %.thread ], [ %i.z, %bb.b ], [ %i.z, %bb.n ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 15268
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !168
  %.not188 = icmp eq i32 %i.cv, 0
  br i1 %.not188, label %bb.t, label %bb.o

bb.o:                                             ; preds = %.critedge
  %i.cw = getelementptr inbounds nuw i8, ptr %i.p, i64 424
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !176
  %.not189 = icmp eq i32 %i.cx, 0
  br i1 %.not189, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 20
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !41
  %i.da = or i32 %i.cz, %1
  %or.cond3 = icmp eq i32 %i.da, 0
  br i1 %or.cond3, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.db = getelementptr inbounds nuw i8, ptr %i.cr, i64 14384
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !55
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !58
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !60
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !62
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !64
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !66 ; 2 uses
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !68
  %i.dj = add i16 %i.di, -8192
  %or.cond205 = icmp ult i16 %i.dj, -16384
end_hunk_2
begin_hunk_3_@RDCost_for_macroblocks:bb.a
  %indvars.iv.next333.15.8 = add nsw i64 %i.ejb, 9 ; 2 uses
  %i.ioc = getelementptr inbounds [2 x i8], ptr %i.ejj, i64 %indvars.iv.next333.15.8
  %i.iod = load i16, ptr %i.ioc, align 2, !tbaa !68
  %i.ioe = zext i16 %i.iod to i64
  %i.iof = getelementptr inbounds [2 x i8], ptr %i.ejg, i64 %indvars.iv.next333.15.8
  %i.iog = load i16, ptr %i.iof, align 2, !tbaa !68
  %i.ioh = zext i16 %i.iog to i64
  %i.ioi = sub nsw i64 %i.ioe, %i.ioh
  %i.ioj = getelementptr inbounds [4 x i8], ptr %i.eiw, i64 %i.ioi
  %i.iok = load i32, ptr %i.ioj, align 4, !tbaa !4
  %i.iol = sext i32 %i.iok to i64
  %i.iom = add nsw i64 %i.iob, %i.iol
  %indvars.iv.next333.15.9 = add nsw i64 %i.ejb, 10 ; 2 uses
  %i.ion = getelementptr inbounds [2 x i8], ptr %i.ejj, i64 %indvars.iv.next333.15.9
  %i.ioo = load i16, ptr %i.ion, align 2, !tbaa !68
  %i.iop = zext i16 %i.ioo to i64
  %i.ioq = getelementptr inbounds [2 x i8], ptr %i.ejg, i64 %indvars.iv.next333.15.9
  %i.ior = load i16, ptr %i.ioq, align 2, !tbaa !68
  %i.ios = zext i16 %i.ior to i64
  %i.iot = sub nsw i64 %i.iop, %i.ios
  %i.iou = getelementptr inbounds [4 x i8], ptr %i.eiw, i64 %i.iot
  %i.iov = load i32, ptr %i.iou, align 4, !tbaa !4
  %i.iow = sext i32 %i.iov to i64
  %i.iox = add nsw i64 %i.iom, %i.iow
  %indvars.iv.next333.15.10 = add nsw i64 %i.ejb, 11 ; 2 uses
  %i.ioy = getelementptr inbounds [2 x i8], ptr %i.ejj, i64 %indvars.iv.next333.15.10
  %i.ioz = load i16, ptr %i.ioy, align 2, !tbaa !68
  %i.ipa = zext i16 %i.ioz to i64
  %i.ipb = getelementptr inbounds [2 x i8], ptr %i.ejg, i64 %indvars.iv.next333.15.10
  %i.ipc = load i16, ptr %i.ipb, align 2, !tbaa !68
  %i.ipd = zext i16 %i.ipc to i64
  %i.ipe = sub nsw i64 %i.ipa, %i.ipd
  %i.ipf = getelementptr inbounds [4 x i8], ptr %i.eiw, i64 %i.ipe
  %i.ipg = load i32, ptr %i.ipf, align 4, !tbaa !4
  %i.iph = sext i32 %i.ipg to i64
  %i.ipi = add nsw i64 %i.iox, %i.iph
  %indvars.iv.next333.15.11 = add nsw i64 %i.ejb, 12 ; 2 uses
  %i.ipj = getelementptr inbounds [2 x i8], ptr %i.ejj, i64 %indvars.iv.next333.15.11
  %i.ipk = load i16, ptr %i.ipj, align 2, !tbaa !68
  %i.ipl = zext i16 %i.ipk to i64
  %i.ipm = getelementptr inbounds [2 x i8], ptr %i.ejg, i64 %indvars.iv.next333.15.11
  %i.ipn = load i16, ptr %i.ipm, align 2, !tbaa !68
  %i.ipo = zext i16 %i.ipn to i64
  %i.ipp = sub nsw i64 %i.ipl, %i.ipo
  %i.ipq = getelementptr inbounds [4 x i8], ptr %i.eiw, i64 %i.ipp
  %i.ipr = load i32, ptr %i.ipq, align 4, !tbaa !4
  %i.ips = sext i32 %i.ipr to i64
  %i.ipt = add nsw i64 %i.ipi, %i.ips
  %indvars.iv.next333.15.12 = add nsw i64 %i.ejb, 13 ; 2 uses
  %i.ipu = getelementptr inbounds [2 x i8], ptr %i.ejj, i64 %indvars.iv.next333.15.12
  %i.ipv = load i16, ptr %i.ipu, align 2, !tbaa !68
  %i.ipw = zext i16 %i.ipv to i64
  %i.ipx = getelementptr inbounds [2 x i8], ptr %i.ejg, i64 %indvars.iv.next333.15.12
  %i.ipy = load i16, ptr %i.ipx, align 2, !tbaa !68
  %i.ipz = zext i16 %i.ipy to i64
  %i.iqa = sub nsw i64 %i.ipw, %i.ipz
  %i.iqb = getelementptr inbounds [4 x i8], ptr %i.eiw, i64 %i.iqa
  %i.iqc = load i32, ptr %i.iqb, align 4, !tbaa !4
  %i.iqd = sext i32 %i.iqc to i64
  %i.iqe = add nsw i64 %i.ipt, %i.iqd
  %indvars.iv.next333.15.13 = add nsw i64 %i.ejb, 14 ; 2 uses
  %i.iqf = getelementptr inbounds [2 x i8], ptr %i.ejj, i64 %indvars.iv.next333.15.13
  %i.iqg = load i16, ptr %i.iqf, align 2, !tbaa !68
  %i.iqh = zext i16 %i.iqg to i64
  %i.iqi = getelementptr inbounds [2 x i8], ptr %i.ejg, i64 %indvars.iv.next333.15.13
  %i.iqj = load i16, ptr %i.iqi, align 2, !tbaa !68
  %i.iqk = zext i16 %i.iqj to i64
  %i.iql = sub nsw i64 %i.iqh, %i.iqk
  %i.iqm = getelementptr inbounds [4 x i8], ptr %i.eiw, i64 %i.iql
  %i.iqn = load i32, ptr %i.iqm, align 4, !tbaa !4
  %i.iqo = sext i32 %i.iqn to i64
  %i.iqp = add nsw i64 %i.iqe, %i.iqo
  %indvars.iv.next333.15.14 = add nsw i64 %i.ejb, 15 ; 2 uses
  %i.iqq = getelementptr inbounds [2 x i8], ptr %i.ejj, i64 %indvars.iv.next333.15.14
  %i.iqr = load i16, ptr %i.iqq, align 2, !tbaa !68
  %i.iqs = zext i16 %i.iqr to i64
  %i.iqt = getelementptr inbounds [2 x i8], ptr %i.ejg, i64 %indvars.iv.next333.15.14
  %i.iqu = load i16, ptr %i.iqt, align 2, !tbaa !68
  %i.iqv = zext i16 %i.iqu to i64
  %i.iqw = sub nsw i64 %i.iqs, %i.iqv
  %i.iqx = getelementptr inbounds [4 x i8], ptr %i.eiw, i64 %i.iqw
  %i.iqy = load i32, ptr %i.iqx, align 4, !tbaa !4
  %i.iqz = sext i32 %i.iqy to i64
  %i.ira = add nsw i64 %i.iqp, %i.iqz             ; 4 uses
  %i.irb = getelementptr inbounds nuw i8, ptr %.pre351.pre, i64 15536
  %i.irc = load i32, ptr %i.irb, align 8, !tbaa !198
  %.not197 = icmp eq i32 %i.irc, 0
  br i1 %.not197, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.ax
  %i.ird = getelementptr inbounds nuw i8, ptr %.pre351.pre, i64 15548
  %i.ire = load i32, ptr %i.ird, align 4, !tbaa !26 ; 2 uses
  %i.irf = icmp sgt i32 %i.ire, 0
  br i1 %i.irf, label %.lr.ph261, label %.loopexit

.lr.ph261:                                        ; preds = %.preheader
  %i.irg = getelementptr inbounds nuw i8, ptr %.pre351.pre, i64 15544
  %i.irh = load i32, ptr %i.irg, align 8, !tbaa !38 ; 2 uses
  %i.iri = icmp sgt i32 %i.irh, 0
  br i1 %i.iri, label %.lr.ph261.split.us, label %.loopexit

.lr.ph261.split.us:                               ; preds = %.lr.ph261
  %i.irj = getelementptr inbounds nuw i8, ptr %.pre351.pre, i64 200
  %i.irk = load i32, ptr %i.irj, align 8, !tbaa !199 ; 2 uses
  %i.irl = add nsw i32 %i.irh, %i.irk
  %i.irm = getelementptr inbounds nuw i8, ptr %.pre351.pre, i64 188
  %i.irn = load i32, ptr %i.irm, align 4, !tbaa !200
  %i.iro = getelementptr inbounds nuw i8, ptr %.pre351.pre, i64 204
  %i.irp = load i32, ptr %i.iro, align 4, !tbaa !201
  %i.irq = load ptr, ptr @imgUV_org, align 8      ; 2 uses
  %i.irr = getelementptr inbounds nuw i8, ptr %i.irq, i64 8
  %i.irs = getelementptr inbounds nuw i8, ptr %i.eiy, i64 6472
  %i.irt = load ptr, ptr %i.irq, align 8, !tbaa !64
  %i.iru = load ptr, ptr %i.irs, align 8, !tbaa !202 ; 2 uses
  %i.irv = load ptr, ptr %i.iru, align 8, !tbaa !64
  %i.irw = load ptr, ptr %i.irr, align 8, !tbaa !64
  %i.irx = getelementptr inbounds nuw i8, ptr %i.iru, i64 8
  %i.iry = load ptr, ptr %i.irx, align 8, !tbaa !64
  %i.irz = sext i32 %i.irk to i64
  %i.isa = sext i32 %i.irl to i64
  %i.isb = sext i32 %i.irp to i64
  %i.isc = sext i32 %i.irn to i64
  %wide.trip.count345 = zext nneg i32 %i.ire to i64
  br label %.lr.ph256.us

.lr.ph256.us:                                     ; preds = %._crit_edge257.us, %.lr.ph261.split.us
  %indvars.iv342 = phi i64 [ %indvars.iv.next343, %._crit_edge257.us ], [ 0, %.lr.ph261.split.us ] ; 3 uses
  %.7181259.us = phi i64 [ %i.iti, %._crit_edge257.us ], [ %i.ira, %.lr.ph261.split.us ]
  %i.isd = add nsw i64 %indvars.iv342, %i.isb     ; 2 uses
  %i.ise = add nsw i64 %indvars.iv342, %i.isc     ; 2 uses
  %i.isf = getelementptr inbounds [8 x i8], ptr %i.irt, i64 %i.isd
  %i.isg = load ptr, ptr %i.isf, align 8, !tbaa !66
  %i.ish = getelementptr inbounds [8 x i8], ptr %i.irv, i64 %i.ise
  %i.isi = load ptr, ptr %i.ish, align 8, !tbaa !66
  %i.isj = getelementptr inbounds [8 x i8], ptr %i.irw, i64 %i.isd
  %i.isk = load ptr, ptr %i.isj, align 8, !tbaa !66
  %i.isl = getelementptr inbounds [8 x i8], ptr %i.iry, i64 %i.ise
  %i.ism = load ptr, ptr %i.isl, align 8, !tbaa !66
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph256.us, %bb.ay
  %indvars.iv339 = phi i64 [ %i.irz, %.lr.ph256.us ], [ %indvars.iv.next340, %bb.ay ] ; 5 uses
  %.8253.us = phi i64 [ %.7181259.us, %.lr.ph256.us ], [ %i.iti, %bb.ay ]
  %i.isn = getelementptr inbounds [2 x i8], ptr %i.isg, i64 %indvars.iv339
  %i.iso = load i16, ptr %i.isn, align 2, !tbaa !68
  %i.isp = zext i16 %i.iso to i64
  %i.isq = getelementptr inbounds [2 x i8], ptr %i.isi, i64 %indvars.iv339
  %i.isr = load i16, ptr %i.isq, align 2, !tbaa !68
  %i.iss = zext i16 %i.isr to i64
  %i.ist = sub nsw i64 %i.isp, %i.iss
  %i.isu = getelementptr inbounds [4 x i8], ptr %i.eiw, i64 %i.ist
  %i.isv = load i32, ptr %i.isu, align 4, !tbaa !4
  %i.isw = sext i32 %i.isv to i64
  %i.isx = add nsw i64 %.8253.us, %i.isw
  %i.isy = getelementptr inbounds [2 x i8], ptr %i.isk, i64 %indvars.iv339
  %i.isz = load i16, ptr %i.isy, align 2, !tbaa !68
  %i.ita = zext i16 %i.isz to i64
  %i.itb = getelementptr inbounds [2 x i8], ptr %i.ism, i64 %indvars.iv339
  %i.itc = load i16, ptr %i.itb, align 2, !tbaa !68
  %i.itd = zext i16 %i.itc to i64
  %i.ite = sub nsw i64 %i.ita, %i.itd
  %i.itf = getelementptr inbounds [4 x i8], ptr %i.eiw, i64 %i.ite
  %i.itg = load i32, ptr %i.itf, align 4, !tbaa !4
  %i.ith = sext i32 %i.itg to i64
  %i.iti = add nsw i64 %i.isx, %i.ith             ; 3 uses
  %indvars.iv.next340 = add nsw i64 %indvars.iv339, 1 ; 2 uses
  %i.itj = icmp slt i64 %indvars.iv.next340, %i.isa
  br i1 %i.itj, label %bb.ay, label %._crit_edge257.us, !llvm.loop !216

._crit_edge257.us:                                ; preds = %bb.ay
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1 ; 2 uses
  %exitcond346.not = icmp eq i64 %indvars.iv.next343, %wide.trip.count345
  br i1 %exitcond346.not, label %.loopexit, label %.lr.ph256.us, !llvm.loop !217

.loopexit:                                        ; preds = %._crit_edge243.us, %._crit_edge257.us, %.lr.ph261, %.lr.ph247, %.preheader212, %.preheader, %bb.ax, %._crit_edge237
  %.9 = phi i64 [ %i.ira, %.lr.ph261 ], [ %i.egc, %._crit_edge237 ], [ %i.ira, %bb.ax ], [ %i.ira, %.preheader ], [ %i.iti, %._crit_edge257.us ], [ %i.egc, %.preheader212 ], [ %i.egc, %.lr.ph247 ], [ %i.ein, %._crit_edge243.us ] ; 2 uses
  %i.itk = load ptr, ptr @cs_cm, align 8, !tbaa !16
  call void @store_coding_state(ptr noundef %i.itk) #14
  br i1 %i.ct, label %bb.az, label %bb.be

bb.az:                                            ; preds = %.loopexit
  %i.itl = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.itm = load i32, ptr %i.itl, align 8, !tbaa !134
  %.not199 = icmp eq i32 %i.itm, 0
  br i1 %.not199, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  br i1 %i.u, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.itn = getelementptr inbounds nuw i8, ptr %i.p, i64 364
  %i.ito = load i32, ptr %i.itn, align 4, !tbaa !149
  %.not200 = icmp eq i32 %i.ito, 0
  br i1 %.not200, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.az
  %i.itp = load ptr, ptr @img, align 8, !tbaa !16
  %i.itq = getelementptr inbounds nuw i8, ptr %i.itp, i64 144
  %i.itr = load i32, ptr %i.itq, align 8, !tbaa !218 ; 2 uses
  %i.its = call i32 @writeMBLayer(i32 noundef 1, ptr noundef nonnull %i.c) #14
  store i32 %i.its, ptr %i.b, align 4, !tbaa !4
  %i.itt = load i32, ptr %i.e, align 4, !tbaa !4
  call void @ue_linfo(i32 noundef %i.itr, i32 noundef %i.itt, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #14
  %i.itu = load i32, ptr %i.d, align 4, !tbaa !4
  %5 = load i32, ptr %i.b, align 4, !tbaa !4
  %i.itv = sub nsw i32 %5, %i.itu
  store i32 %i.itv, ptr %i.b, align 4, !tbaa !4
  %i.itw = load ptr, ptr @img, align 8, !tbaa !16
  %i.itx = getelementptr inbounds nuw i8, ptr %i.itw, i64 144
  store i32 %i.itr, ptr %i.itx, align 8, !tbaa !218
  br label %bb.bf

bb.bd:                                            ; preds = %bb.bb, %bb.ba
  %i.ity = load ptr, ptr @img, align 8, !tbaa !16
  %i.itz = getelementptr inbounds nuw i8, ptr %i.ity, i64 144
  %i.iua = load i32, ptr %i.itz, align 8, !tbaa !218
  %i.iub = add nsw i32 %i.iua, 1
  %i.iuc = load i32, ptr %i.e, align 4, !tbaa !4
  call void @ue_linfo(i32 noundef %i.iub, i32 noundef %i.iuc, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e) #14
  %i.iud = load ptr, ptr @img, align 8, !tbaa !16
  %i.iue = getelementptr inbounds nuw i8, ptr %i.iud, i64 144
  %i.iuf = load i32, ptr %i.iue, align 8, !tbaa !218
  %i.iug = load i32, ptr %i.e, align 4, !tbaa !4
  call void @ue_linfo(i32 noundef %i.iuf, i32 noundef %i.iug, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #14
  %i.iuh = load i32, ptr %i.d, align 4, !tbaa !4
  %i.iui = load i32, ptr %i.b, align 4, !tbaa !4
  %i.iuj = sub nsw i32 %i.iui, %i.iuh
  store i32 %i.iuj, ptr %i.b, align 4, !tbaa !4
  br label %bb.bf

bb.be:                                            ; preds = %.loopexit
  %i.iuk = call i32 @writeMBLayer(i32 noundef 1, ptr noundef nonnull %i.c) #14
  store i32 %i.iuk, ptr %i.b, align 4, !tbaa !4
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bc, %bb.bd, %bb.be
  %i.iul = load ptr, ptr @cs_cm, align 8, !tbaa !16
  call void @reset_coding_state(ptr noundef %i.iul) #14
  %i.ium = sitofp i64 %.9 to double
  %i.iun = load i32, ptr %i.b, align 4, !tbaa !4
  %i.iuo = sitofp i32 %i.iun to double            ; 2 uses
  %i.iup = fcmp olt double %i.iuo, 5.000000e-01
  %i.iuq = select i1 %i.iup, double 5.000000e-01, double %i.iuo
  %i.iur = call double @llvm.fmuladd.f64(double %0, double %i.iuq, double %i.ium) ; 3 uses
  %i.ius = load double, ptr %2, align 8, !tbaa !40 ; 2 uses
  %i.iut = fcmp ult double %i.iur, %i.ius
  %.pre352 = load ptr, ptr @img, align 8, !tbaa !16 ; 7 uses
  br i1 %i.iut, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.iuu = getelementptr inbounds nuw i8, ptr %.pre352, i64 44
  %i.iuv = load i32, ptr %i.iuu, align 4, !tbaa !154
  %i.iuw = icmp eq i32 %i.iuv, 0
  br i1 %i.iuw, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.iux = getelementptr inbounds nuw i8, ptr %.pre352, i64 15540
  %i.iuy = load i32, ptr %i.iux, align 4, !tbaa !155
  %i.iuz = icmp eq i32 %i.iuy, 1
  %i.iva = icmp ne i64 %.9, 0
  %or.cond7 = select i1 %i.iuz, i1 %i.iva, i1 false
  br i1 %or.cond7, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh, %bb.bf
  %i.ivb = getelementptr inbounds nuw i8, ptr %.pre352, i64 20
  %i.ivc = load i32, ptr %i.ivb, align 4, !tbaa !41
  %i.ivd = or i32 %i.ivc, %1
  %or.cond9.not = icmp ne i32 %i.ivd, 0
  %i.ive = fcmp une double %i.iur, %i.ius
  %or.cond211 = or i1 %i.ive, %or.cond9.not
  br i1 %or.cond211, label %.loopexit220, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ivf = load ptr, ptr @input, align 8, !tbaa !16
  %i.ivg = load i32, ptr %i.ivf, align 8, !tbaa !219
  %i.ivh = icmp sgt i32 %i.ivg, 99
  br i1 %i.ivh, label %.loopexit220, label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bh, %bb.bg
  %i.ivi = getelementptr inbounds nuw i8, ptr %.pre352, i64 15268
  %i.ivj = load i32, ptr %i.ivi, align 4, !tbaa !168
  %i.ivk = icmp eq i32 %i.ivj, 0
  %i.ivl = icmp ne i32 %1, 0
  %or.cond11 = or i1 %i.ivl, %i.ivk
  br i1 %or.cond11, label %bb.bt, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ivm = getelementptr inbounds nuw i8, ptr %.pre352, i64 20
  %i.ivn = load i32, ptr %i.ivm, align 4, !tbaa !41
  %i.ivo = icmp eq i32 %i.ivn, 1                  ; 2 uses
  br i1 %i.ivo, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ivp = getelementptr inbounds nuw i8, ptr %i.p, i64 364
  %i.ivq = load i32, ptr %i.ivp, align 4, !tbaa !149
  %.not201 = icmp eq i32 %i.ivq, 0
  br i1 %.not201, label %bb.bn, label %bb.bt

bb.bn:                                            ; preds = %bb.bl, %bb.bm
  %i.ivr = getelementptr inbounds nuw i8, ptr %.pre352, i64 12
  %i.ivs = load i32, ptr %i.ivr, align 4, !tbaa !101 ; 2 uses
  %i.ivt = and i32 %i.ivs, 1
  %.not202 = icmp eq i32 %i.ivt, 0
  br i1 %.not202, label %bb.bt, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ivu = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.ivv = load i32, ptr %i.ivu, align 8, !tbaa !134
  %.not203 = icmp eq i32 %i.ivv, 0
  br i1 %.not203, label %bb.bp, label %bb.bt

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.ivo, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ivw = getelementptr inbounds nuw i8, ptr %i.r, i64 364
  %i.ivx = load i32, ptr %i.ivw, align 4, !tbaa !149
  %.not204 = icmp eq i32 %i.ivx, 0
  br i1 %.not204, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bp, %bb.bq
  %i.ivy = getelementptr inbounds nuw i8, ptr %.pre352, i64 14224
  %i.ivz = load ptr, ptr %i.ivy, align 8, !tbaa !118 ; 2 uses
  %i.iwa = sext i32 %i.ivs to i64
  %i.iwb = getelementptr inbounds [536 x i8], ptr %i.ivz, i64 %i.iwa ; 3 uses
  %i.iwc = getelementptr inbounds nuw i8, ptr %i.iwb, i64 452
  %i.iwd = load i32, ptr %i.iwc, align 4, !tbaa !220
  %.not.i208 = icmp eq i32 %i.iwd, 0
  br i1 %.not.i208, label %bb.bs, label %.sink.split.i

bb.bs:                                            ; preds = %bb.br
  %i.iwe = getelementptr inbounds nuw i8, ptr %i.iwb, i64 456
  %i.iwf = load i32, ptr %i.iwe, align 8, !tbaa !221
  %.not4.i = icmp eq i32 %i.iwf, 0
  br i1 %.not4.i, label %field_flag_inference.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.bs, %bb.br
  %.sink = phi i64 [ 436, %bb.br ], [ 440, %bb.bs ]
  %i.iwg = getelementptr inbounds nuw i8, ptr %i.iwb, i64 %.sink
  %.sink6.i = load i32, ptr %i.iwg, align 4, !tbaa !4
  %i.iwh = sext i32 %.sink6.i to i64
  %i.iwi = getelementptr inbounds [536 x i8], ptr %i.ivz, i64 %i.iwh
  %i.iwj = getelementptr inbounds nuw i8, ptr %i.iwi, i64 424
  %i.iwk = load i32, ptr %i.iwj, align 8, !tbaa !176
  br label %field_flag_inference.exit

field_flag_inference.exit:                        ; preds = %bb.bs, %.sink.split.i
  %.0.i = phi i32 [ 0, %bb.bs ], [ %i.iwk, %.sink.split.i ]
  %i.iwl = getelementptr inbounds nuw i8, ptr %i.p, i64 424
  %i.iwm = load i32, ptr %i.iwl, align 8, !tbaa !176
  %i.iwn = icmp eq i32 %.0.i, %i.iwm
  br i1 %i.iwn, label %bb.bt, label %.loopexit220

bb.bt:                                            ; preds = %bb.bn, %field_flag_inference.exit, %bb.bo, %bb.bq, %bb.bm, %bb.bk
  store double %i.iur, ptr %2, align 8, !tbaa !40
  %i.iwo = load i32, ptr %i.c, align 4, !tbaa !4
  %i.iwp = sitofp i32 %i.iwo to double
  %i.iwq = fmul double %0, %i.iwp
  store double %i.iwq, ptr %3, align 8, !tbaa !40
  br label %.loopexit220

.loopexit220:                                     ; preds = %.preheader219, %bb.c, %bb.d, %bb.e, %.preheader219.1, %bb.f, %bb.g, %bb.h, %.preheader219.2, %bb.i, %bb.j, %bb.k, %.preheader219.3, %bb.l, %bb.m, %bb.n, %field_flag_inference.exit, %bb.bi, %bb.bj, %bb.aa, %bb.y, %bb.z, %bb.q, %bb.r, %bb.s, %bb.bt
  %.1 = phi i32 [ 0, %bb.q ], [ 0, %bb.y ], [ 0, %bb.aa ], [ 1, %bb.bt ], [ 0, %bb.bi ], [ 0, %field_flag_inference.exit ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.z ], [ 0, %bb.bj ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %.preheader219.3 ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %.preheader219.2 ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %.preheader219.1 ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %.preheader219 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  ret i32 %.1
}

declare i32 @FmoGetPreviousMBNr(i32 noundef) local_unnamed_addr #1

declare void @LumaResidualCoding() local_unnamed_addr #1

declare i32 @Mode_Decision_for_new_Intra8x8Macroblock(double noundef, ptr noundef) local_unnamed_addr #1

declare void @compute_residue_mb(i32 noundef) local_unnamed_addr #1

declare void @ChromaResidualCoding(ptr noundef) local_unnamed_addr #1

declare void @decode_one_mb(i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @store_coding_state(ptr noundef) local_unnamed_addr #1

declare i32 @writeMBLayer(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @field_flag_inference() local_unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !16   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 14224
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !101
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [536 x i8], ptr %i.c, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 452
  %i.i = load i32, ptr %i.h, align 4, !tbaa !220
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 456
  %i.k = load i32, ptr %i.j, align 8, !tbaa !221
  %.not4 = icmp eq i32 %i.k, 0
  br i1 %.not4, label %bb.c, label %.sink.split
end_hunk_3
