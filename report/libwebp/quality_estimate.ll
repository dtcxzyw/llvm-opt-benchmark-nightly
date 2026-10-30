Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/quality_estimate?download=true
inline.NumInlined: 30
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@VP8EstimateQuality:bb.a
  %spec.select603.a = select i1 %.not.i232.7, i64 -9223372036854775808, i64 %i.mz
  br label %GetBit.exit217.thread

GetBit.exit217.thread:                            ; preds = %bb.x, %GetBit.exit238.6, %.preheader.i226.7, %bb.p, %GetBit.exit133.thread, %.preheader.i219, %.preheader.i212
  %.10 = phi i64 [ %i.jg, %.preheader.i212 ], [ %i.jp, %.preheader.i219 ], [ -9223372036854775808, %bb.p ], [ -9223372036854775808, %GetBit.exit133.thread ], [ %i.mq, %.preheader.i226.7 ], [ %spec.select603.a, %bb.x ], [ -9223372036854775808, %GetBit.exit238.6 ]
  %i.na = add nuw i64 %.10, 2                     ; 2 uses
  %.not.i239 = icmp ugt i64 %i.na, %i.u
  %spec.select604.a = select i1 %.not.i239, i64 -9223372036854775808, i64 %i.na ; 9 uses
  %i.nb = add nuw i64 %spec.select604.a, 7        ; 2 uses
  %.not.i246 = icmp ugt i64 %i.nb, %i.u
  br i1 %.not.i246, label %GetBit.exit252, label %.preheader.i247.preheader

.preheader.i247.preheader:                        ; preds = %GetBit.exit217.thread
  %i.nc = add nuw i64 %spec.select604.a, 1        ; 2 uses
  %i.nd = lshr i64 %spec.select604.a, 3
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 %i.nd
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !13
  %i.ng = zext i8 %i.nf to i32
  %i.nh = trunc i64 %spec.select604.a to i32
  %i.ni = and i32 %i.nh, 7
  %i.nj = lshr exact i32 128, %i.ni
  %i.nk = and i32 %i.nj, %i.ng
  %.not578.a = icmp eq i32 %i.nk, 0
  %i.nl = add nuw i64 %spec.select604.a, 2        ; 2 uses
  %i.nm = lshr i64 %i.nc, 3
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 %i.nm
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !13
  %i.np = zext i8 %i.no to i32
  %i.nq = trunc i64 %i.nc to i32
  %i.nr = and i32 %i.nq, 7
  %i.ns = lshr exact i32 128, %i.nr
  %i.nt = and i32 %i.ns, %i.np
  %i.nu = icmp ne i32 %i.nt, 0
  %i.nv = zext i1 %i.nu to i32
  %i.nw = select i1 %.not578.a, i32 0, i32 2
  %i.nx = or disjoint i32 %i.nw, %i.nv
  %i.ny = add nuw i64 %spec.select604.a, 3        ; 2 uses
  %i.nz = lshr i64 %i.nl, 3
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 %i.nz
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !13
  %i.oc = zext i8 %i.ob to i32
  %i.od = trunc i64 %i.nl to i32
  %i.oe = and i32 %i.od, 7
  %i.of = lshr exact i32 128, %i.oe
  %i.og = and i32 %i.of, %i.oc
  %.not579 = icmp eq i32 %i.og, 0
  %i.oh = add nuw i64 %spec.select604.a, 4        ; 2 uses
  %i.oi = lshr i64 %i.ny, 3
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 %i.oi
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !13
  %i.ol = zext i8 %i.ok to i32
  %i.om = trunc i64 %i.ny to i32
  %i.on = and i32 %i.om, 7
  %i.oo = lshr exact i32 128, %i.on
  %i.op = and i32 %i.oo, %i.ol
  %i.oq = icmp ne i32 %i.op, 0
  %i.or = zext i1 %i.oq to i32
  %i.os = shl nuw nsw i32 %i.nx, 2
  %i.ot = select i1 %.not579, i32 0, i32 2
  %i.ou = or disjoint i32 %i.os, %i.ot
  %i.ov = or disjoint i32 %i.ou, %i.or
  %i.ow = add nuw i64 %spec.select604.a, 5        ; 2 uses
  %i.ox = lshr i64 %i.oh, 3
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 %i.ox
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !13
  %i.pa = zext i8 %i.oz to i32
  %i.pb = trunc i64 %i.oh to i32
  %i.pc = and i32 %i.pb, 7
  %i.pd = lshr exact i32 128, %i.pc
  %i.pe = and i32 %i.pd, %i.pa
  %.not580 = icmp eq i32 %i.pe, 0
  %i.pf = add nuw i64 %spec.select604.a, 6        ; 2 uses
  %i.pg = lshr i64 %i.ow, 3
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 %i.pg
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !13
  %i.pj = zext i8 %i.pi to i32
  %i.pk = trunc i64 %i.ow to i32
  %i.pl = and i32 %i.pk, 7
  %i.pm = lshr exact i32 128, %i.pl
  %i.pn = and i32 %i.pm, %i.pj
  %i.po = icmp ne i32 %i.pn, 0
  %i.pp = zext i1 %i.po to i32
  %i.pq = shl nuw nsw i32 %i.ov, 2
  %i.pr = select i1 %.not580, i32 0, i32 2
  %i.ps = or disjoint i32 %i.pq, %i.pr
  %i.pt = or disjoint i32 %i.ps, %i.pp
  %i.pu = lshr i64 %i.pf, 3
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 %i.pu
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !13
  %i.px = zext i8 %i.pw to i32
  %i.py = trunc i64 %i.pf to i32
  %i.pz = and i32 %i.py, 7
  %i.qa = lshr exact i32 128, %i.pz
  %i.qb = and i32 %i.qa, %i.px
  %i.qc = icmp ne i32 %i.qb, 0
  %i.qd = zext i1 %i.qc to i32
  %i.qe = shl nuw nsw i32 %i.pt, 1
  %i.qf = or disjoint i32 %i.qe, %i.qd
  br label %GetBit.exit252

GetBit.exit252:                                   ; preds = %.preheader.i247.preheader, %GetBit.exit217.thread
  %.34 = phi i64 [ -9223372036854775808, %GetBit.exit217.thread ], [ %i.nb, %.preheader.i247.preheader ] ; 5 uses
  %.1.i251 = phi i32 [ 0, %GetBit.exit217.thread ], [ %i.qf, %.preheader.i247.preheader ]
  %.not.i253.not = icmp ult i64 %.34, %i.u
  br i1 %.not.i253.not, label %.preheader.i254, label %GetBit.exit266

.preheader.i254:                                  ; preds = %GetBit.exit252
  %i.qg = add nuw i64 %.34, 1
  %i.qh = lshr i64 %.34, 3
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 %i.qh
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !13
  %i.qk = zext i8 %i.qj to i32
  %i.ql = trunc i64 %.34 to i32
  %i.qm = and i32 %i.ql, 7
  %i.qn = lshr exact i32 128, %i.qm
  %i.qo = and i32 %i.qn, %i.qk
  %.not479.a = icmp eq i32 %i.qo, 0
  br i1 %.not479.a, label %GetBit.exit266, label %bb.y

bb.y:                                             ; preds = %.preheader.i254
  %i.qp = add nuw i64 %.34, 6                     ; 2 uses
  %.not.i260 = icmp ugt i64 %i.qp, %i.u
  %spec.select605.a = select i1 %.not.i260, i64 -9223372036854775808, i64 %i.qp
  br label %GetBit.exit266

GetBit.exit266:                                   ; preds = %bb.y, %GetBit.exit252, %.preheader.i254
  %.11 = phi i64 [ %i.qg, %.preheader.i254 ], [ %spec.select605.a, %bb.y ], [ -9223372036854775808, %GetBit.exit252 ] ; 5 uses
  %.not.i267.not = icmp ult i64 %.11, %i.u
  br i1 %.not.i267.not, label %.preheader.i268, label %GetBit.exit280

.preheader.i268:                                  ; preds = %GetBit.exit266
  %i.qq = add nuw i64 %.11, 1
  %i.qr = lshr i64 %.11, 3
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 %i.qr
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !13
  %i.qu = zext i8 %i.qt to i32
  %i.qv = trunc i64 %.11 to i32
  %i.qw = and i32 %i.qv, 7
  %i.qx = lshr exact i32 128, %i.qw
  %i.qy = and i32 %i.qx, %i.qu
  %.not480.a = icmp eq i32 %i.qy, 0
  br i1 %.not480.a, label %GetBit.exit280, label %bb.z

bb.z:                                             ; preds = %.preheader.i268
  %i.qz = add nuw i64 %.11, 6                     ; 2 uses
  %.not.i274 = icmp ugt i64 %i.qz, %i.u
  %spec.select606.a = select i1 %.not.i274, i64 -9223372036854775808, i64 %i.qz
  br label %GetBit.exit280

GetBit.exit280:                                   ; preds = %bb.z, %GetBit.exit266, %.preheader.i268
  %.12 = phi i64 [ %i.qq, %.preheader.i268 ], [ %spec.select606.a, %bb.z ], [ -9223372036854775808, %GetBit.exit266 ] ; 5 uses
  %.not.i281.not = icmp ult i64 %.12, %i.u
  br i1 %.not.i281.not, label %.preheader.i282, label %GetBit.exit294

.preheader.i282:                                  ; preds = %GetBit.exit280
  %i.ra = add nuw i64 %.12, 1
  %i.rb = lshr i64 %.12, 3
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 %i.rb
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !13
  %i.re = zext i8 %i.rd to i32
  %i.rf = trunc i64 %.12 to i32
  %i.rg = and i32 %i.rf, 7
  %i.rh = lshr exact i32 128, %i.rg
  %i.ri = and i32 %i.rh, %i.re
  %.not481.a = icmp eq i32 %i.ri, 0
  br i1 %.not481.a, label %GetBit.exit294, label %bb.aa

bb.aa:                                            ; preds = %.preheader.i282
  %i.rj = add nuw i64 %.12, 6                     ; 2 uses
  %.not.i288 = icmp ugt i64 %i.rj, %i.u
  %spec.select607.a = select i1 %.not.i288, i64 -9223372036854775808, i64 %i.rj
  br label %GetBit.exit294

GetBit.exit294:                                   ; preds = %bb.aa, %GetBit.exit280, %.preheader.i282
  %.13 = phi i64 [ %i.ra, %.preheader.i282 ], [ %spec.select607.a, %bb.aa ], [ -9223372036854775808, %GetBit.exit280 ] ; 5 uses
  %.not.i295.not = icmp ult i64 %.13, %i.u
  br i1 %.not.i295.not, label %.preheader.i296, label %GetBit.exit308

.preheader.i296:                                  ; preds = %GetBit.exit294
  %i.rk = add nuw i64 %.13, 1
  %i.rl = lshr i64 %.13, 3
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 %i.rl
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !13
  %i.ro = zext i8 %i.rn to i32
  %i.rp = trunc i64 %.13 to i32
  %i.rq = and i32 %i.rp, 7
  %i.rr = lshr exact i32 128, %i.rq
  %i.rs = and i32 %i.rr, %i.ro
  %.not482 = icmp eq i32 %i.rs, 0
  br i1 %.not482, label %GetBit.exit308, label %bb.ab

bb.ab:                                            ; preds = %.preheader.i296
  %i.rt = add nuw i64 %.13, 6                     ; 2 uses
  %.not.i302 = icmp ugt i64 %i.rt, %i.u
  %spec.select608 = select i1 %.not.i302, i64 -9223372036854775808, i64 %i.rt
  br label %GetBit.exit308

GetBit.exit308:                                   ; preds = %bb.ab, %GetBit.exit294, %.preheader.i296
  %.14 = phi i64 [ %i.rk, %.preheader.i296 ], [ %spec.select608, %bb.ab ], [ -9223372036854775808, %GetBit.exit294 ] ; 5 uses
  %.not.i309.not = icmp ult i64 %.14, %i.u
  br i1 %.not.i309.not, label %.preheader.i310, label %GetBit.exit322

.preheader.i310:                                  ; preds = %GetBit.exit308
  %i.ru = add nuw i64 %.14, 1
  %i.rv = lshr i64 %.14, 3
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 %i.rv
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !13
  %i.ry = zext i8 %i.rx to i32
  %i.rz = trunc i64 %.14 to i32
  %i.sa = and i32 %i.rz, 7
  %i.sb = lshr exact i32 128, %i.sa
  %i.sc = and i32 %i.sb, %i.ry
  %.not483 = icmp eq i32 %i.sc, 0
  br i1 %.not483, label %GetBit.exit322, label %bb.ac

bb.ac:                                            ; preds = %.preheader.i310
  %i.sd = add nuw i64 %.14, 6                     ; 2 uses
  %.not.i316 = icmp ugt i64 %i.sd, %i.u
  %spec.select607 = select i1 %.not.i316, i64 -9223372036854775808, i64 %i.sd
  br label %GetBit.exit322

GetBit.exit322:                                   ; preds = %bb.ac, %GetBit.exit308, %.preheader.i310
  %.15 = phi i64 [ %i.ru, %.preheader.i310 ], [ %spec.select607, %bb.ac ], [ -9223372036854775808, %GetBit.exit308 ]
  %i.se = icmp eq i64 %.15, -9223372036854775808
  br i1 %i.se, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %GetBit.exit322
  %i.sf = icmp slt i32 %.296, 0
  %spec.select126 = select i1 %i.sf, i32 %.1.i251, i32 %.296 ; 2 uses
  %i.sg = trunc i32 %spec.select126 to i16
  %i.sh = sub i16 127, %i.sg
  %.lhs.trunc = mul i16 %i.sh, 100
  %i.si = udiv i16 %.lhs.trunc, 127               ; 2 uses
  %.zext = zext nneg i16 %i.si to i32
  %i.sj = icmp sgt i32 %spec.select126, 25
  br i1 %i.sj, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  %i.sk = uitofp nneg i16 %i.si to double
  %i.sl = fdiv double %i.sk, 8.000000e+01
  %i.sm = call double @pow(double noundef %i.sl, double noundef f0x40050D79435E50D8) #4
  %i.sn = fmul double %i.sm, 8.000000e+01
  %i.so = fptosi double %i.sn to i32
  br label %.critedge

.critedge:                                        ; preds = %.preheader400, %bb.ad, %bb.ae, %GetBit.exit322, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0101 = phi i32 [ -1, %bb.d ], [ -1, %bb.a ], [ -1, %bb.b ], [ 101, %bb.c ], [ %i.so, %bb.ae ], [ -1, %bb.e ], [ -1, %GetBit.exit322 ], [ %.zext, %bb.ad ], [ -1, %.preheader400 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  ret i32 %.0101
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #2

declare i32 @WebPGetFeaturesInternal(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !12}
!10 = !{!"WebPBitstreamFeatures", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !5, i64 20}
!11 = !{!10, !6, i64 16}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!5, !5, i64 0}
end_hunk_0
