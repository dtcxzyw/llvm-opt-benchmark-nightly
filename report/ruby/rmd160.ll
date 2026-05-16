begin_hunk_0_@rb_Digest_RMD160_Transform:bb.a
  %i.bck = tail call i32 @llvm.fshl.i32(i32 %i.bbv, i32 %i.bbv, i32 10) ; 3 uses
  %i.bcl = xor i32 %i.bcc, %i.bck
  %i.bcm = xor i32 %i.bcl, %i.bcj
  %i.bcn = add i32 %i.bbw, %i.eh
  %i.bco = add i32 %i.bcn, %i.bcm                 ; 2 uses
  %i.bcp = tail call i32 @llvm.fshl.i32(i32 %i.bco, i32 %i.bco, i32 5)
  %i.bcq = add i32 %i.bcp, %i.bcd                 ; 4 uses
  %i.bcr = tail call i32 @llvm.fshl.i32(i32 %i.bcc, i32 %i.bcc, i32 10) ; 3 uses
  %i.bcs = xor i32 %i.bcj, %i.bcr
  %i.bct = xor i32 %i.bcs, %i.bcq
  %i.bcu = add i32 %i.bcd, %i.l
  %i.bcv = add i32 %i.bcu, %i.bct                 ; 2 uses
  %i.bcw = tail call i32 @llvm.fshl.i32(i32 %i.bcv, i32 %i.bcv, i32 15)
  %i.bcx = add i32 %i.bcw, %i.bck                 ; 4 uses
  %i.bcy = tail call i32 @llvm.fshl.i32(i32 %i.bcj, i32 %i.bcj, i32 10) ; 3 uses
  %i.bcz = xor i32 %i.bcq, %i.bcy
  %i.bda = xor i32 %i.bcz, %i.bcx
  %i.bdb = add i32 %i.bck, %i.am
  %i.bdc = add i32 %i.bdb, %i.bda                 ; 2 uses
  %i.bdd = tail call i32 @llvm.fshl.i32(i32 %i.bdc, i32 %i.bdc, i32 13)
  %i.bde = add i32 %i.bdd, %i.bcr                 ; 4 uses
  %i.bdf = tail call i32 @llvm.fshl.i32(i32 %i.bcq, i32 %i.bcq, i32 10) ; 3 uses
  %i.bdg = xor i32 %i.bcx, %i.bdf
  %i.bdh = xor i32 %i.bdg, %i.bde
  %i.bdi = add i32 %i.bcr, %i.co
  %i.bdj = add i32 %i.bdi, %i.bdh                 ; 2 uses
  %i.bdk = tail call i32 @llvm.fshl.i32(i32 %i.bdj, i32 %i.bdj, i32 11)
  %i.bdl = add i32 %i.bdk, %i.bcy                 ; 2 uses
  %i.bdm = tail call i32 @llvm.fshl.i32(i32 %i.bcx, i32 %i.bcx, i32 10) ; 2 uses
  %i.bdn = xor i32 %i.bde, %i.bdm
  %i.bdo = xor i32 %i.bdn, %i.bdl
  %i.bdp = add i32 %i.bcy, %i.dg
  %i.bdq = add i32 %i.bdp, %i.bdo                 ; 2 uses
  %i.bdr = tail call i32 @llvm.fshl.i32(i32 %i.bdq, i32 %i.bdq, i32 11)
  %i.bds = tail call i32 @llvm.fshl.i32(i32 %i.bde, i32 %i.bde, i32 10)
  %i.bdt = add i32 %i.abu, %i.c
  %i.bdu = add i32 %i.bdt, %i.bds
  %i.bdv = add i32 %i.acd, %i.e
  %i.bdw = add i32 %i.bdv, %i.bdm
  store i32 %i.bdw, ptr %i.b, align 4, !tbaa !6
  %i.bdx = add i32 %i.abv, %i.g
  %i.bdy = add i32 %i.bdx, %i.bdf
  store i32 %i.bdy, ptr %i.d, align 4, !tbaa !6
  %i.bdz = add i32 %i.abm, %i.i
  %i.bea = add i32 %i.bdz, %i.bdf
  %i.beb = add i32 %i.bea, %i.bdr
  store i32 %i.beb, ptr %i.f, align 4, !tbaa !6
  %i.bec = add i32 %i.abm, %i.a
  %i.bed = add i32 %i.bec, %i.acc
  %i.bee = add i32 %i.bed, %i.bdl
  store i32 %i.bee, ptr %i.h, align 4, !tbaa !6
  store i32 %i.bdu, ptr %0, align 4, !tbaa !6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @rb_Digest_RMD160_Update(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !6    ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = add i64 %2, %i.d
  %i.f = lshr i64 %i.e, 32
  %i.g = trunc nuw i64 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !6
  %i.j = add i32 %i.i, %i.g
  store i32 %i.j, ptr %i.h, align 4, !tbaa !6
  %i.k = trunc i64 %2 to i32                      ; 2 uses
  %i.l = add i32 %i.c, %i.k
  store i32 %i.l, ptr %i.b, align 4, !tbaa !6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !10   ; 2 uses
  %i.o = zext i32 %i.n to i64                     ; 3 uses
  %i.p = add i64 %2, %i.o
  %i.q = icmp ult i64 %i.p, 64
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %1, i64 %2, i1 false)
  %i.t = load i32, ptr %i.m, align 4, !tbaa !10
  %i.u = add i32 %i.t, %i.k
  store i32 %i.u, ptr %i.m, align 4, !tbaa !10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.v = sub i32 64, %i.n
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  %i.y = zext i32 %i.v to i64                     ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %1, i64 %i.y, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(64) %i.w, i64 64, i1 false)
  call void @rb_Digest_RMD160_Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  %i.z = sub i64 %2, %i.y                         ; 3 uses
  %i.aa = lshr i64 %i.z, 6                        ; 2 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.035 = phi i32 [ %i.ad, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %i.ab = shl i32 %.035, 6
  %i.ac = zext i32 %i.ab to i64
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 1 dereferenceable(64) %gep, i64 64, i1 false)
  call void @rb_Digest_RMD160_Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  %i.ad = add i32 %.035, 1                        ; 3 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp samesign ugt i64 %i.aa, %i.ae
  br i1 %i.af, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !12

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ag = shl i32 %i.ad, 6
  %i.ah = zext i32 %i.ag to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.0.lcssa = phi i64 [ 0, %bb.c ], [ %i.ah, %._crit_edge.loopexit ]
  %i.ai = trunc i64 %i.z to i32
  %i.aj = and i32 %i.ai, 63
  store i32 %i.aj, ptr %i.m, align 4, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.y
  %i.am = and i64 %i.z, 63
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.w, ptr align 1 %i.al, i64 %i.am, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @rb_Digest_RMD160_Finish(ptr noundef captures(none) %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e
  store i8 -128, ptr %i.f, align 1, !tbaa !14
  %i.g = load i32, ptr %i.c, align 4, !tbaa !10   ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = sub i32 63, %i.g
  %i.l = zext i32 %i.k to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.j, i8 0, i64 %i.l, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(64) %i.b, i64 64, i1 false)
  %i.m = load i32, ptr %i.c, align 4, !tbaa !10
  %i.n = icmp ugt i32 %i.m, 55
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @rb_Digest_RMD160_Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !6    ; 2 uses
  %i.q = shl i32 %i.p, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 %i.q, ptr %i.r, align 8, !tbaa !6
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 4, !tbaa !6
  %i.u = tail call i32 @llvm.fshl.i32(i32 %i.t, i32 %i.p, i32 3)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i32 %i.u, ptr %i.v, align 4, !tbaa !6
  call void @rb_Digest_RMD160_Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.c
  %i.w = load i32, ptr %0, align 4, !tbaa !6
  %i.x = trunc i32 %i.w to i8
  store i8 %i.x, ptr %1, align 1, !tbaa !14
  %i.y = load i32, ptr %0, align 4, !tbaa !6
  %i.z = lshr i32 %i.y, 8
  %i.aa = trunc i32 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !14
  %.shift = getelementptr inbounds nuw i8, ptr %0, i64 2
  %2 = load i16, ptr %.shift, align 2, !tbaa !6
  %i.ac = trunc i16 %2 to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !14
  %.shift31 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %3 = load i8, ptr %.shift31, align 1, !tbaa !6
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %3, ptr %i.ae, align 1, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !6
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !14
  %i.aj = load i32, ptr %i.af, align 4, !tbaa !6
  %i.ak = lshr i32 %i.aj, 8
  %i.al = trunc i32 %i.ak to i8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.al, ptr %i.am, align 1, !tbaa !14
  %.shift.1 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %4 = load i16, ptr %.shift.1, align 2, !tbaa !6
  %i.an = trunc i16 %4 to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !14
  %.shift31.1 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %5 = load i8, ptr %.shift31.1, align 1, !tbaa !6
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %5, ptr %i.ap, align 1, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !6
  %i.as = trunc i32 %i.ar to i8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.as, ptr %i.at, align 1, !tbaa !14
  %i.au = load i32, ptr %i.aq, align 4, !tbaa !6
  %i.av = lshr i32 %i.au, 8
  %i.aw = trunc i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !14
  %.shift.2 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %6 = load i16, ptr %.shift.2, align 2, !tbaa !6
  %i.ay = trunc i16 %6 to i8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !14
  %.shift31.2 = getelementptr inbounds nuw i8, ptr %0, i64 11
  %7 = load i8, ptr %.shift31.2, align 1, !tbaa !6
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %7, ptr %i.ba, align 1, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !6
  %i.bd = trunc i32 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !14
  %i.bf = load i32, ptr %i.bb, align 4, !tbaa !6
  %i.bg = lshr i32 %i.bf, 8
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !14
  %.shift.3 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %8 = load i16, ptr %.shift.3, align 2, !tbaa !6
  %i.bj = trunc i16 %8 to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !14
  %.shift31.3 = getelementptr inbounds nuw i8, ptr %0, i64 15
  %9 = load i8, ptr %.shift31.3, align 1, !tbaa !6
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %9, ptr %i.bl, align 1, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !6
  %i.bo = trunc i32 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !14
  %i.bq = load i32, ptr %i.bm, align 4, !tbaa !6
  %i.br = lshr i32 %i.bq, 8
  %i.bs = trunc i32 %i.br to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !14
  %.shift.4 = getelementptr inbounds nuw i8, ptr %0, i64 18
  %10 = load i16, ptr %.shift.4, align 2, !tbaa !6
  %i.bu = trunc i16 %10 to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !14
  %.shift31.4 = getelementptr inbounds nuw i8, ptr %0, i64 19
  %11 = load i8, ptr %.shift31.4, align 1, !tbaa !6
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %11, ptr %i.bw, align 1, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 92}
!11 = !{!"", !8, i64 0, !8, i64 20, !8, i64 28, !7, i64 92}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!8, !8, i64 0}
end_hunk_0
