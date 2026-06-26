inline.NumInlined: 129
inline.NumDeleted: 49
begin_hunk_0_@_ZNK3p2t5Sweep9HoleAngleERKNS_4NodeE:bb.a
  %i.w = tail call double @llvm.fmuladd.f64(double %i.g, double %i.t, double %i.v)
  %i.x = fmul double %i.l, %i.t
  %i.y = tail call double @llvm.fmuladd.f64(double %i.g, double %i.q, double %i.x)
  %i.z = tail call double @atan2(double noundef %i.w, double noundef %i.y) #19
  ret double %i.z
}

declare noundef ptr @_ZN3p2t8Triangle13OppositePointERS0_RKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare noundef i32 @_ZN3p2t8Triangle5IndexEPKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK3p2t5Sweep8IncircleERKNS_5PointES3_S3_S3_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load double, ptr %1, align 8
  %i.b = load double, ptr %4, align 8             ; 3 uses
  %i.c = fsub double %i.a, %i.b                   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load double, ptr %i.f, align 8           ; 3 uses
  %i.h = fsub double %i.e, %i.g                   ; 4 uses
  %i.i = load double, ptr %2, align 8
  %i.j = fsub double %i.i, %i.b                   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load double, ptr %i.k, align 8
  %i.m = fsub double %i.l, %i.g                   ; 4 uses
  %i.n = fmul double %i.c, %i.m
  %i.o = fmul double %i.h, %i.j
  %i.p = fsub double %i.n, %i.o                   ; 2 uses
  %i.q = fcmp ugt double %i.p, 0.000000e+00
  br i1 %i.q, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.r = load double, ptr %3, align 8
  %i.s = fsub double %i.r, %i.b                   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load double, ptr %i.t, align 8
  %i.v = fsub double %i.u, %i.g                   ; 4 uses
  %i.w = fmul double %i.h, %i.s
  %i.x = fmul double %i.c, %i.v
  %i.y = fsub double %i.w, %i.x                   ; 2 uses
  %i.z = fcmp ugt double %i.y, 0.000000e+00
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = fmul double %i.j, %i.v
  %i.ab = fmul double %i.m, %i.s
  %i.ac = fmul double %i.h, %i.h
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.c, double %i.c, double %i.ac)
  %i.ae = fmul double %i.m, %i.m
  %i.af = tail call double @llvm.fmuladd.f64(double %i.j, double %i.j, double %i.ae)
  %i.ag = fmul double %i.v, %i.v
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.s, double %i.s, double %i.ag)
  %i.ai = fsub double %i.aa, %i.ab
  %i.aj = fmul double %i.af, %i.y
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.ai, double %i.aj)
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.p, double %i.ak)
  %i.am = fcmp ogt double %i.al, 0.000000e+00
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %i.am, %bb.c ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK3p2t5Sweep18RotateTrianglePairERNS_8TriangleERNS_5PointES2_S4_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(57) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN3p2t8Triangle11NeighborCCWERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) ; 2 uses
  %i.b = tail call noundef ptr @_ZN3p2t8Triangle10NeighborCWERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) ; 2 uses
  %i.c = tail call noundef ptr @_ZN3p2t8Triangle11NeighborCCWERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) ; 2 uses
  %i.d = tail call noundef ptr @_ZN3p2t8Triangle10NeighborCWERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) ; 2 uses
  %i.e = tail call noundef zeroext i1 @_ZN3p2t8Triangle21GetConstrainedEdgeCCWERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.f = tail call noundef zeroext i1 @_ZN3p2t8Triangle20GetConstrainedEdgeCWERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.g = tail call noundef zeroext i1 @_ZN3p2t8Triangle21GetConstrainedEdgeCCWERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57) %3, ptr noundef nonnull align 8 dereferenceable(40) %4)
  %i.h = tail call noundef zeroext i1 @_ZN3p2t8Triangle20GetConstrainedEdgeCWERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57) %3, ptr noundef nonnull align 8 dereferenceable(40) %4)
  %i.i = tail call noundef zeroext i1 @_ZN3p2t8Triangle17GetDelunayEdgeCCWERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.j = tail call noundef zeroext i1 @_ZN3p2t8Triangle16GetDelunayEdgeCWERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.k = tail call noundef zeroext i1 @_ZN3p2t8Triangle17GetDelunayEdgeCCWERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57) %3, ptr noundef nonnull align 8 dereferenceable(40) %4)
  %i.l = tail call noundef zeroext i1 @_ZN3p2t8Triangle16GetDelunayEdgeCWERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57) %3, ptr noundef nonnull align 8 dereferenceable(40) %4)
  tail call void @_ZN3p2t8Triangle8LegalizeERNS_5PointES2_(ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %4)
  tail call void @_ZN3p2t8Triangle8LegalizeERNS_5PointES2_(ptr noundef nonnull align 8 dereferenceable(57) %3, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %2)
  tail call void @_ZN3p2t8Triangle17SetDelunayEdgeCCWERKNS_5PointEb(ptr noundef nonnull align 8 dereferenceable(57) %3, ptr noundef nonnull align 8 dereferenceable(40) %2, i1 noundef zeroext %i.i)
  tail call void @_ZN3p2t8Triangle16SetDelunayEdgeCWERKNS_5PointEb(ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i1 noundef zeroext %i.j)
  tail call void @_ZN3p2t8Triangle17SetDelunayEdgeCCWERKNS_5PointEb(ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull align 8 dereferenceable(40) %4, i1 noundef zeroext %i.k)
  tail call void @_ZN3p2t8Triangle16SetDelunayEdgeCWERKNS_5PointEb(ptr noundef nonnull align 8 dereferenceable(57) %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i1 noundef zeroext %i.l)
  tail call void @_ZN3p2t8Triangle21SetConstrainedEdgeCCWERKNS_5PointEb(ptr noundef nonnull align 8 dereferenceable(57) %3, ptr noundef nonnull align 8 dereferenceable(40) %2, i1 noundef zeroext %i.e)
  tail call void @_ZN3p2t8Triangle20SetConstrainedEdgeCWERKNS_5PointEb(ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i1 noundef zeroext %i.f)
  tail call void @_ZN3p2t8Triangle21SetConstrainedEdgeCCWERKNS_5PointEb(ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull align 8 dereferenceable(40) %4, i1 noundef zeroext %i.g)
  tail call void @_ZN3p2t8Triangle20SetConstrainedEdgeCWERKNS_5PointEb(ptr noundef nonnull align 8 dereferenceable(57) %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i1 noundef zeroext %i.h)
  tail call void @_ZN3p2t8Triangle14ClearNeighborsEv(ptr noundef nonnull align 8 dereferenceable(57) %1)
  tail call void @_ZN3p2t8Triangle14ClearNeighborsEv(ptr noundef nonnull align 8 dereferenceable(57) %3)
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3p2t8Triangle12MarkNeighborERS0_(ptr noundef nonnull align 8 dereferenceable(57) %3, ptr noundef nonnull align 8 dereferenceable(57) %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not72 = icmp eq ptr %i.b, null
  br i1 %.not72, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3p2t8Triangle12MarkNeighborERS0_(ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull align 8 dereferenceable(57) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not73 = icmp eq ptr %i.c, null
  br i1 %.not73, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN3p2t8Triangle12MarkNeighborERS0_(ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull align 8 dereferenceable(57) %i.c)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not74 = icmp eq ptr %i.d, null
  br i1 %.not74, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN3p2t8Triangle12MarkNeighborERS0_(ptr noundef nonnull align 8 dereferenceable(57) %3, ptr noundef nonnull align 8 dereferenceable(57) %i.d)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_ZN3p2t8Triangle12MarkNeighborERS0_(ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull align 8 dereferenceable(57) %3)
  ret void
}

declare noundef zeroext i1 @_ZN3p2t8Triangle21GetConstrainedEdgeCCWERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN3p2t8Triangle17GetDelunayEdgeCCWERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN3p2t8Triangle16GetDelunayEdgeCWERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare void @_ZN3p2t8Triangle8LegalizeERNS_5PointES2_(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare void @_ZN3p2t8Triangle17SetDelunayEdgeCCWERKNS_5PointEb(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(40), i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN3p2t8Triangle16SetDelunayEdgeCWERKNS_5PointEb(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(40), i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN3p2t8Triangle21SetConstrainedEdgeCCWERKNS_5PointEb(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(40), i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN3p2t8Triangle20SetConstrainedEdgeCWERKNS_5PointEb(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(40), i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN3p2t8Triangle14ClearNeighborsEv(ptr noundef nonnull align 8 dereferenceable(57)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3p2t5Sweep12FillBasinReqERNS_12SweepContextEPNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.c = load i8, ptr %i.a, align 8, !range !6, !noundef !7
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load ptr, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load double, ptr %i.f, align 8
  %..i42 = select i1 %i.d, i64 24, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %..i42
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load double, ptr %i.k, align 8
  %i.m = fsub double %i.l, %i.g
  %i.n = load double, ptr %i.b, align 8
  %i.o = fcmp ogt double %i.n, %i.m
  br i1 %i.o, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread36
  %.tr4143 = phi ptr [ %2, %.lr.ph ], [ %.2, %.thread36 ] ; 5 uses
  tail call void @_ZN3p2t5Sweep4FillERNS_12SweepContextERNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(40) %.tr4143)
  %i.r = getelementptr inbounds nuw i8, ptr %.tr4143, i64 24
  %i.s = load ptr, ptr %i.r, align 8              ; 6 uses
  %i.t = load ptr, ptr %i.p, align 8
  %i.u = icmp eq ptr %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %.tr4143, i64 16
  %i.w = load ptr, ptr %i.v, align 8              ; 6 uses
  %i.x = load ptr, ptr %i.q, align 8
  %i.y = icmp eq ptr %i.w, %i.x                   ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.y, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %.tr4143, align 8
  %i.aa = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.af = load <2 x double>, ptr %i.ad, align 8   ; 2 uses
  %i.ag = load <2 x double>, ptr %i.z, align 8
  %i.ah = fsub <2 x double> %i.ag, %i.af
  %i.ai = load <2 x double>, ptr %i.aa, align 8
  %i.aj = fsub <2 x double> %i.ai, %i.af
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.al = fmul <2 x double> %i.ah, %i.ak          ; 2 uses
  %shift = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.al, %shift
  %i.am = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.an = fcmp ult double %i.am, 0.000000e+00
  br i1 %i.an, label %._crit_edge, label %.thread36

bb.e:                                             ; preds = %bb.b
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %.tr4143, align 8
  %i.ap = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.au = load <2 x double>, ptr %i.as, align 8   ; 2 uses
  %i.av = load <2 x double>, ptr %i.ao, align 8
  %i.aw = fsub <2 x double> %i.av, %i.au
  %i.ax = load <2 x double>, ptr %i.ap, align 8
  %i.ay = fsub <2 x double> %i.ax, %i.au
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ba = fmul <2 x double> %i.aw, %i.az          ; 2 uses
  %i.bb = extractelement <2 x double> %i.ba, i64 0
  %i.bc = extractelement <2 x double> %i.ba, i64 1
  %i.bd = fcmp ogt double %i.bb, %i.bc
  br i1 %i.bd, label %._crit_edge, label %.thread36

bb.g:                                             ; preds = %bb.e
  %i.be = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load double, ptr %i.bf, align 8
  %i.bh = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load double, ptr %i.bi, align 8
  %i.bk = fcmp olt double %i.bg, %i.bj            ; 2 uses
  %. = select i1 %i.bk, ptr %i.s, ptr %i.w
  %i.bl = select i1 %i.bk, ptr %i.be, ptr %i.bh
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  br label %.thread36

.thread36:                                        ; preds = %bb.f, %bb.d, %bb.g
  %.in = phi ptr [ %.phi.trans.insert, %bb.g ], [ %i.ae, %bb.d ], [ %i.at, %bb.f ]
  %.2 = phi ptr [ %., %bb.g ], [ %i.w, %bb.d ], [ %i.s, %bb.f ]
  %3 = load double, ptr %.in, align 8
  %i.bm = load i8, ptr %i.a, align 8, !range !6, !noundef !7
  %i.bn = trunc nuw i8 %i.bm to i1
  %..i = select i1 %i.bn, i64 24, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 %..i
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load double, ptr %i.br, align 8
  %i.bt = fsub double %i.bs, %3
  %i.bu = load double, ptr %i.b, align 8
  %i.bv = fcmp ogt double %i.bu, %i.bt
  br i1 %i.bv, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.thread36, %bb.c, %bb.d, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN3p2t5Sweep9IsShallowERNS_12SweepContextERNS_4NodeE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i8, ptr %i.a, align 8, !range !6, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load ptr, ptr %2, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load double, ptr %i.e, align 8
  %. = select i1 %i.c, i64 24, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load double, ptr %i.j, align 8
  %i.l = fsub double %i.k, %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load double, ptr %i.m, align 8
  %i.o = fcmp ogt double %i.n, %i.l
  ret i1 %i.o
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3p2t5Sweep23FillRightAboveEdgeEventERNS_12SweepContextEPNS_4EdgeEPNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load double, ptr %i.c, align 8           ; 2 uses
  %i.e = load ptr, ptr %2, align 8                ; 2 uses
  %i.f = load double, ptr %i.e, align 8           ; 2 uses
  %i.g = fcmp olt double %i.d, %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.i = phi double [ %i.f, %.lr.ph ], [ %i.ac, %bb.d ] ; 3 uses
  %i.j = phi ptr [ %i.e, %.lr.ph ], [ %i.ad, %bb.d ] ; 2 uses
  %i.k = phi double [ %i.d, %.lr.ph ], [ %i.ah, %bb.d ]
  %i.l = phi ptr [ %i.c, %.lr.ph ], [ %i.ag, %bb.d ]
  %i.m = phi ptr [ %i.b, %.lr.ph ], [ %i.af, %bb.d ]
  %.010 = phi ptr [ %3, %.lr.ph ], [ %.1, %bb.d ] ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.o = load double, ptr %i.n, align 8
  %i.p = fsub double %i.o, %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = load double, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.t = load double, ptr %i.s, align 8           ; 2 uses
  %i.u = fsub double %i.r, %i.t
  %i.v = fmul double %i.p, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.x = load double, ptr %i.w, align 8
  %i.y = fsub double %i.x, %i.t
  %i.z = fsub double %i.k, %i.i
  %i.aa = fmul double %i.z, %i.y
  %i.ab = fcmp ogt double %i.v, %i.aa
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3p2t5Sweep23FillRightBelowEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(40) %.010)
  %.pre = load ptr, ptr %2, align 8               ; 2 uses
  %.pre11 = load double, ptr %.pre, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ac = phi double [ %.pre11, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.ad = phi ptr [ %.pre, %bb.c ], [ %i.j, %bb.b ]
  %.1 = phi ptr [ %.010, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8         ; 2 uses
  %i.ai = fcmp olt double %i.ah, %i.ac
  br i1 %i.ai, label %bb.b, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3p2t5Sweep22FillLeftAboveEdgeEventERNS_12SweepContextEPNS_4EdgeEPNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load double, ptr %i.c, align 8           ; 2 uses
  %i.e = load ptr, ptr %2, align 8                ; 2 uses
  %i.f = load double, ptr %i.e, align 8           ; 2 uses
  %i.g = fcmp ogt double %i.d, %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.i = phi double [ %i.f, %.lr.ph ], [ %i.ad, %bb.d ] ; 3 uses
  %i.j = phi ptr [ %i.e, %.lr.ph ], [ %i.ae, %bb.d ] ; 2 uses
  %i.k = phi double [ %i.d, %.lr.ph ], [ %i.ai, %bb.d ]
  %i.l = phi ptr [ %i.c, %.lr.ph ], [ %i.ah, %bb.d ]
  %i.m = phi ptr [ %i.b, %.lr.ph ], [ %i.ag, %bb.d ]
  %.010 = phi ptr [ %3, %.lr.ph ], [ %.1, %bb.d ] ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.o = load double, ptr %i.n, align 8
  %i.p = fsub double %i.o, %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = load double, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.t = load double, ptr %i.s, align 8           ; 2 uses
  %i.u = fsub double %i.r, %i.t
  %i.v = fmul double %i.p, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.x = load double, ptr %i.w, align 8
  %i.y = fsub double %i.x, %i.t
  %i.z = fsub double %i.k, %i.i
  %i.aa = fmul double %i.z, %i.y
  %i.ab = fsub double %i.v, %i.aa
  %i.ac = fcmp ult double %i.ab, 0.000000e+00
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3p2t5Sweep22FillLeftBelowEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(40) %.010)
  %.pre = load ptr, ptr %2, align 8               ; 2 uses
  %.pre11 = load double, ptr %.pre, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ad = phi double [ %.pre11, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.ae = phi ptr [ %.pre, %bb.c ], [ %i.j, %bb.b ]
  %.1 = phi ptr [ %.010, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.1, i64 24
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8         ; 2 uses
  %i.aj = fcmp ogt double %i.ai, %i.ad
  br i1 %i.aj, label %bb.b, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3p2t5Sweep23FillRightBelowEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %3, align 8                ; 2 uses
  %i.b = load double, ptr %i.a, align 8           ; 2 uses
  %i.c = load ptr, ptr %2, align 8
  %i.d = load double, ptr %i.c, align 8
  %i.e = fcmp olt double %i.b, %i.d
  br i1 %i.e, label %.lr.ph, label %_ZN3p2t5Sweep25FillRightConcaveEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %i.g = phi double [ %i.b, %.lr.ph ], [ %i.be, %tailrecurse ]
  %i.h = phi ptr [ %i.a, %.lr.ph ], [ %i.bd, %tailrecurse ]
  %i.i = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = load double, ptr %i.n, align 8
  %i.p = load <2 x double>, ptr %i.m, align 8     ; 2 uses
  %i.q = insertelement <2 x double> poison, double %i.g, i64 0
  %i.r = insertelement <2 x double> %i.q, double %i.o, i64 1
  %i.s = fsub <2 x double> %i.r, %i.p
  %i.t = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.u = load <2 x double>, ptr %i.j, align 8
  %i.v = fsub <2 x double> %i.u, %i.p
  %i.w = fmul <2 x double> %i.t, %i.v             ; 2 uses
  %i.x = extractelement <2 x double> %i.w, i64 0
  %i.y = extractelement <2 x double> %i.w, i64 1
  %i.z = fcmp ogt double %i.y, %i.x
  br i1 %i.z, label %bb.c, label %tailrecurse

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.e, %bb.c
  %i.ab = phi ptr [ %i.ac, %bb.e ], [ %i.i, %bb.c ]
  tail call void @_ZN3p2t5Sweep4FillERNS_12SweepContextERNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.ab), !inline_history !14
  %i.ac = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = load ptr, ptr %2, align 8               ; 2 uses
end_hunk_0
