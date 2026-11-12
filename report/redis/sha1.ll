Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/sha1?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@SHA1Transform:bb.a
  %i.aiz = xor i32 %i.acq, %i.abs
  %i.aja = xor i32 %i.aiz, %i.afk
  %i.ajb = xor i32 %i.aja, %i.ahs                 ; 2 uses
  %i.ajc = tail call i32 @llvm.fshl.i32(i32 %i.ajb, i32 %i.ajb, i32 1) ; 2 uses
  %i.ajd = tail call i32 @llvm.fshl.i32(i32 %i.aiv, i32 %i.aiv, i32 5)
  %i.aje = add i32 %i.ajc, -899497514
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
  store i32 %i.akt, ptr %0, align 4, !tbaa !12
  %i.aku = add i32 %i.akf, %i.c
  store i32 %i.aku, ptr %i.b, align 4, !tbaa !12
  %i.akv = add i32 %i.ako, %i.e
  store i32 %i.akv, ptr %i.d, align 4, !tbaa !12
  %i.akw = add i32 %i.akg, %i.g
  store i32 %i.akw, ptr %i.f, align 4, !tbaa !12
  %i.akx = add i32 %i.aju, %i.i
  store i32 %i.akx, ptr %i.h, align 4, !tbaa !12
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
define dso_local void @SHA1Init(ptr nofree noundef writeonly captures(none) initializes((0, 28)) %0) local_unnamed_addr #3 !guid !15 {
bb.a:
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %0, align 4, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1009589776, ptr %i.a, align 4, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.c, align 4, !tbaa !12
  store i32 0, ptr %i.b, align 4, !tbaa !12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @SHA1Update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 !guid !17 {
._crit_edge:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12   ; 3 uses
  %i.c = shl i32 %2, 3
  %i.d = add i32 %i.b, %i.c                       ; 2 uses
  store i32 %i.d, ptr %i.a, align 4, !tbaa !12
  %i.e = icmp ult i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 4, !tbaa !12
  %i.h = zext i1 %i.e to i32
  %i.i = add i32 %i.g, %i.h
  %i.j = lshr i32 %2, 29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = add i32 %i.i, %i.j
  store i32 %i.l, ptr %i.k, align 4, !tbaa !12
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
  br i1 %i.ab, label %.lr.ph, label %.loopexit, !llvm.loop !16

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
define dso_local void @SHA1Final(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #5 !guid !19 {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 5 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 4, !tbaa !12
  %i.f = tail call i32 @llvm.bswap.i32(i32 %i.e)
  store i32 %i.f, ptr %i.a, align 4, !tbaa !20
  %i.g = load i32, ptr %i.c, align 4, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.i = tail call i32 @llvm.bswap.i32(i32 %i.g)
  store i32 %i.i, ptr %i.h, align 4, !tbaa !20
  store i8 -128, ptr %i.b, align 1, !tbaa !20
  call void @SHA1Update(ptr noundef %1, ptr noundef nonnull %i.b, i32 noundef 1)
  %i.j = load i32, ptr %i.c, align 4, !tbaa !12
  %i.k = and i32 %i.j, 504
  %.not18 = icmp eq i32 %i.k, 448
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  store i8 0, ptr %i.b, align 1, !tbaa !20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  call void @SHA1Update(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i32 noundef 1)
  %i.l = load i32, ptr %i.c, align 4, !tbaa !12
  %i.m = and i32 %i.l, 504
  %.not = icmp eq i32 %i.m, 448
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @SHA1Update(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef 8)
  %i.n = load i32, ptr %1, align 4, !tbaa !12
  %i.o = lshr i32 %i.n, 24
  %i.p = trunc nuw i32 %i.o to i8
  store i8 %i.p, ptr %0, align 1, !tbaa !20
  %i.q = load i32, ptr %1, align 4, !tbaa !12
  %i.r = lshr i32 %i.q, 16
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.s, ptr %i.t, align 1, !tbaa !20
  %i.u = load i32, ptr %1, align 4, !tbaa !12
  %i.v = lshr i32 %i.u, 8
  %i.w = trunc i32 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.w, ptr %i.x, align 1, !tbaa !20
  %i.y = load i32, ptr %1, align 4, !tbaa !12
  %i.z = trunc i32 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %2 = getelementptr i8, ptr %1, i64 7
  %3 = load i8, ptr %2, align 1, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %3, ptr %i.ac, align 1, !tbaa !20
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !12
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc i32 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !20
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !12
  %i.ai = lshr i32 %i.ah, 8
  %i.aj = trunc i32 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !20
  %i.al = load i32, ptr %i.ab, align 4, !tbaa !12
  %i.am = trunc i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.am, ptr %i.an, align 1, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %4 = getelementptr i8, ptr %1, i64 11
  %5 = load i8, ptr %4, align 1, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %5, ptr %i.ap, align 1, !tbaa !20
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !12
  %i.ar = lshr i32 %i.aq, 16
  %i.as = trunc i32 %i.ar to i8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.as, ptr %i.at, align 1, !tbaa !20
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !12
  %i.av = lshr i32 %i.au, 8
  %i.aw = trunc i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !20
  %i.ay = load i32, ptr %i.ao, align 4, !tbaa !12
  %i.az = trunc i32 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !20
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %6 = getelementptr i8, ptr %1, i64 15
  %7 = load i8, ptr %6, align 1, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %7, ptr %i.bc, align 1, !tbaa !20
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !12
  %i.be = lshr i32 %i.bd, 16
  %i.bf = trunc i32 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !20
  %i.bh = load i32, ptr %i.bb, align 4, !tbaa !12
  %i.bi = lshr i32 %i.bh, 8
  %i.bj = trunc i32 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !20
  %i.bl = load i32, ptr %i.bb, align 4, !tbaa !12
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !20
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %8 = getelementptr i8, ptr %1, i64 19
  %9 = load i8, ptr %8, align 1, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %9, ptr %i.bp, align 1, !tbaa !20
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !12
  %i.br = lshr i32 %i.bq, 16
  %i.bs = trunc i32 %i.br to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !20
  %i.bu = load i32, ptr %i.bo, align 4, !tbaa !12
  %i.bv = lshr i32 %i.bu, 8
  %i.bw = trunc i32 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !20
  %i.by = load i32, ptr %i.bo, align 4, !tbaa !12
  %i.bz = trunc i32 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !20
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
!llvm.errno.tbaa = !{!12}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{i64 -3174537190529431891}
!15 = !{i64 -4946677862870368396}
!16 = distinct !{!16, !13}
!17 = !{i64 -7234786188461412661}
!18 = distinct !{!18, !13}
!19 = !{i64 7225327538662260447}
!20 = !{!10, !10, i64 0}
end_hunk_0
