begin_hunk_0_@SHA1Transform:bb.a
  %i.ajf = add i32 %i.aje, %i.ahy
  %i.ajg = add i32 %i.ajf, %i.aiy
  %i.ajh = add i32 %i.ajg, %i.ajd                 ; 5 uses
  %i.aji = tail call i32 @llvm.fshl.i32(i32 %i.aij, i32 %i.aij, i32 30) ; 3 uses
  %i.ajj = xor i32 %i.aji, %i.aiw
  %i.ajk = xor i32 %i.ajj, %i.aiv
  %i.ajl = xor i32 %i.adc, %i.ace
  %i.ajm = xor i32 %i.ajl, %i.afw
  %i.ajn = xor i32 %i.ajm, %i.aie                 ; 2 uses
  %i.ajo = tail call i32 @llvm.fshl.i32(i32 %i.ajn, i32 %i.ajn, i32 1)
  %i.ajp = tail call i32 @llvm.fshl.i32(i32 %i.ajh, i32 %i.ajh, i32 5)
  %i.ajq = add i32 %i.ajo, -899497514
  %i.ajr = add i32 %i.ajq, %i.aik
  %i.ajs = add i32 %i.ajr, %i.ajk
  %i.ajt = add i32 %i.ajs, %i.ajp                 ; 5 uses
  %i.aju = tail call i32 @llvm.fshl.i32(i32 %i.aiv, i32 %i.aiv, i32 30) ; 3 uses
  %i.ajv = xor i32 %i.aju, %i.aji
  %i.ajw = xor i32 %i.ajv, %i.ajh
  %i.ajx = xor i32 %i.ado, %i.acq
  %i.ajy = xor i32 %i.ajx, %i.agi
  %i.ajz = xor i32 %i.ajy, %i.aiq                 ; 2 uses
  %i.aka = tail call i32 @llvm.fshl.i32(i32 %i.ajz, i32 %i.ajz, i32 1)
  %i.akb = tail call i32 @llvm.fshl.i32(i32 %i.ajt, i32 %i.ajt, i32 5)
  %i.akc = add i32 %i.aka, -899497514
  %i.akd = add i32 %i.akc, %i.aiw
  %i.ake = add i32 %i.akd, %i.ajw
  %i.akf = add i32 %i.ake, %i.akb                 ; 3 uses
  %i.akg = tail call i32 @llvm.fshl.i32(i32 %i.ajh, i32 %i.ajh, i32 30) ; 2 uses
  %i.akh = xor i32 %i.akg, %i.aju
  %i.aki = xor i32 %i.akh, %i.ajt
  %i.akj = xor i32 %i.aea, %i.adc
  %i.akk = xor i32 %i.akj, %i.agu
  %i.akl = xor i32 %i.akk, %i.ajc                 ; 2 uses
  %i.akm = tail call i32 @llvm.fshl.i32(i32 %i.akl, i32 %i.akl, i32 1)
  %i.akn = tail call i32 @llvm.fshl.i32(i32 %i.akf, i32 %i.akf, i32 5)
  %i.ako = tail call i32 @llvm.fshl.i32(i32 %i.ajt, i32 %i.ajt, i32 30)
  %i.akp = add i32 %i.a, -899497514
  %i.akq = add i32 %i.akp, %i.akm
  %i.akr = add i32 %i.akq, %i.aji
  %i.aks = add i32 %i.akr, %i.aki
  %i.akt = add i32 %i.aks, %i.akn
  store i32 %i.akt, ptr %0, align 4, !tbaa !9
  %i.aku = add i32 %i.akf, %i.c
  store i32 %i.aku, ptr %i.b, align 4, !tbaa !9
  %i.akv = add i32 %i.ako, %i.e
  store i32 %i.akv, ptr %i.d, align 4, !tbaa !9
  %i.akw = add i32 %i.akg, %i.g
  store i32 %i.akw, ptr %i.f, align 4, !tbaa !9
  %i.akx = add i32 %i.aju, %i.i
  store i32 %i.akx, ptr %i.h, align 4, !tbaa !9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SHA1Init(ptr noundef writeonly captures(none) initializes((0, 28)) %0) local_unnamed_addr #3 {
bb.a:
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %0, align 4, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1009589776, ptr %i.a, align 4, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.c, align 4, !tbaa !9
  store i32 0, ptr %i.b, align 4, !tbaa !9
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @SHA1Update(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 {
._crit_edge:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9    ; 3 uses
  %i.c = shl i32 %2, 3
  %i.d = add i32 %i.b, %i.c                       ; 2 uses
  store i32 %i.d, ptr %i.a, align 4, !tbaa !9
  %i.e = icmp ult i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 4, !tbaa !9
  %i.h = zext i1 %i.e to i32
  %i.i = add i32 %i.g, %i.h
  %i.j = lshr i32 %2, 29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = add i32 %i.i, %i.j
  store i32 %i.l, ptr %i.k, align 4, !tbaa !9
  %i.m = lshr i32 %i.b, 3
  %i.n = and i32 %i.m, 63                         ; 5 uses
  %i.o = add i32 %i.n, %2
  %i.p = icmp ugt i32 %i.o, 63
  br i1 %i.p, label %bb.a, label %bb.b

bb.a:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.r = zext nneg i32 %i.n to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  %i.t = sub nuw nsw i32 64, %i.n                 ; 3 uses
  %i.u = zext nneg i32 %i.t to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.s, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.u, i1 false)
  tail call void @SHA1Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.q)
  %i.v = xor i32 %i.n, 127
  %i.w = icmp ult i32 %i.v, %2
  br i1 %i.w, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02728 = phi i32 [ %i.z, %.lr.ph ], [ %i.t, %bb.a ] ; 3 uses
  %i.x = zext i32 %.02728 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  tail call void @SHA1Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.y)
  %i.z = add i32 %.02728, 64                      ; 2 uses
  %i.aa = add i32 %.02728, 127
  %i.ab = icmp ult i32 %i.aa, %2
  br i1 %i.ab, label %.lr.ph, label %.loopexit, !llvm.loop !13

bb.b:                                             ; preds = %._crit_edge
  %i.ac = zext nneg i32 %i.n to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.a, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ %i.t, %bb.a ], [ %i.z, %.lr.ph ] ; 2 uses
  %.0 = phi i64 [ %i.ac, %bb.b ], [ 0, %bb.a ], [ 0, %.lr.ph ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.0
  %i.af = zext i32 %.1 to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.af
  %i.ah = sub i32 %2, %.1
  %i.ai = zext i32 %i.ah to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr align 1 %i.ag, i64 %i.ai, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @SHA1Final(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 11 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9    ; 4 uses
  %i.f = lshr i32 %i.e, 24
  %i.g = trunc nuw i32 %i.f to i8
  store i8 %i.g, ptr %i.a, align 1, !tbaa !15
  %i.h = lshr i32 %i.e, 16
  %i.i = trunc i32 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.i, ptr %i.j, align 1, !tbaa !15
  %i.k = lshr i32 %i.e, 8
  %i.l = trunc i32 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.l, ptr %i.m, align 1, !tbaa !15
  %i.n = trunc i32 %i.e to i8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.n, ptr %i.o, align 1, !tbaa !15
  %i.p = load i32, ptr %i.c, align 4, !tbaa !9    ; 4 uses
  %i.q = lshr i32 %i.p, 24
  %i.r = trunc nuw i32 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.r, ptr %i.s, align 1, !tbaa !15
  %i.t = lshr i32 %i.p, 16
  %i.u = trunc i32 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.u, ptr %i.v, align 1, !tbaa !15
  %i.w = lshr i32 %i.p, 8
  %i.x = trunc i32 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.x, ptr %i.y, align 1, !tbaa !15
  %i.z = trunc i32 %i.p to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !15
  store i8 -128, ptr %i.b, align 1, !tbaa !15
  call void @SHA1Update(ptr noundef %1, ptr noundef nonnull %i.b, i32 noundef 1)
  %i.ab = load i32, ptr %i.c, align 4, !tbaa !9
  %i.ac = and i32 %i.ab, 504
  %.not18 = icmp eq i32 %i.ac, 448
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  store i8 0, ptr %i.b, align 1, !tbaa !15
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  call void @SHA1Update(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i32 noundef 1)
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !9
  %i.ae = and i32 %i.ad, 504
  %.not = icmp eq i32 %i.ae, 448
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @SHA1Update(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef 8)
  %2 = load i32, ptr %1, align 4, !tbaa !9
  %3 = lshr i32 %2, 24
  %4 = trunc nuw i32 %3 to i8
  store i8 %4, ptr %0, align 1, !tbaa !15
  %5 = load i32, ptr %1, align 4, !tbaa !9
  %6 = lshr i32 %5, 16
  %i.af = trunc i32 %6 to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !15
  %i.ah = load i32, ptr %1, align 4, !tbaa !9
  %i.ai = lshr i32 %i.ah, 8
  %i.aj = trunc i32 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !15
  %i.al = load i32, ptr %1, align 4, !tbaa !9
  %i.am = trunc i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.am, ptr %i.an, align 1, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %7 = load i32, ptr %i.ao, align 4, !tbaa !9
  %8 = lshr i32 %7, 24
  %9 = trunc nuw i32 %8 to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %9, ptr %i.ap, align 1, !tbaa !15
  %10 = load i32, ptr %i.ao, align 4, !tbaa !9
  %11 = lshr i32 %10, 16
  %i.aq = trunc i32 %11 to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !15
  %i.as = load i32, ptr %i.ao, align 4, !tbaa !9
  %i.at = lshr i32 %i.as, 8
  %i.au = trunc i32 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.au, ptr %i.av, align 1, !tbaa !15
  %i.aw = load i32, ptr %i.ao, align 4, !tbaa !9
  %i.ax = trunc i32 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %12 = load i32, ptr %i.az, align 4, !tbaa !9
  %13 = lshr i32 %12, 24
  %14 = trunc nuw i32 %13 to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %14, ptr %i.ba, align 1, !tbaa !15
  %15 = load i32, ptr %i.az, align 4, !tbaa !9
  %16 = lshr i32 %15, 16
  %i.bb = trunc i32 %16 to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !15
  %i.bd = load i32, ptr %i.az, align 4, !tbaa !9
  %i.be = lshr i32 %i.bd, 8
  %i.bf = trunc i32 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !15
  %i.bh = load i32, ptr %i.az, align 4, !tbaa !9
  %i.bi = trunc i32 %i.bh to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !15
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %17 = load i32, ptr %i.bk, align 4, !tbaa !9
  %18 = lshr i32 %17, 24
  %19 = trunc nuw i32 %18 to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %19, ptr %i.bl, align 1, !tbaa !15
  %20 = load i32, ptr %i.bk, align 4, !tbaa !9
  %21 = lshr i32 %20, 16
  %i.bm = trunc i32 %21 to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !15
  %i.bo = load i32, ptr %i.bk, align 4, !tbaa !9
  %i.bp = lshr i32 %i.bo, 8
  %i.bq = trunc i32 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !15
  %i.bs = load i32, ptr %i.bk, align 4, !tbaa !9
  %i.bt = trunc i32 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !15
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %22 = load i32, ptr %i.bv, align 4, !tbaa !9
  %23 = lshr i32 %22, 24
  %24 = trunc nuw i32 %23 to i8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %24, ptr %i.bw, align 1, !tbaa !15
  %25 = load i32, ptr %i.bv, align 4, !tbaa !9
  %26 = lshr i32 %25, 16
  %i.bx = trunc i32 %26 to i8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !15
  %i.bz = load i32, ptr %i.bv, align 4, !tbaa !9
  %i.ca = lshr i32 %i.bz, 8
  %i.cb = trunc i32 %i.ca to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !15
  %i.cd = load i32, ptr %i.bv, align 4, !tbaa !9
  %i.ce = trunc i32 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %1, i8 0, i64 92, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!11, !11, i64 0}
!16 = distinct !{!16, !14}
end_hunk_0
