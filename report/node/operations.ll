inline.NumInlined: 6898
inline.NumDeleted: 2415
begin_hunk_0_@_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE2atEm:bb.a
  unreachable

_ZN2v88internal20ZoneCompactSetTraitsINS0_8compiler6MapRefEvE15PointerToHandleEPNS2_10ObjectDataE.exit3: ; preds = %_ZN2v88internal8compiler13HeapObjectRefC2EPNS1_10ObjectDataEb.exit.i.i2
  %i.n = load ptr, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal20ZoneCompactSetTraitsINS0_8compiler6MapRefEvE15PointerToHandleEPNS2_10ObjectDataE.exit3, %_ZN2v88internal20ZoneCompactSetTraitsINS0_8compiler6MapRefEvE15PointerToHandleEPNS2_10ObjectDataE.exit
  %.sroa.0.0 = phi ptr [ %i.f, %_ZN2v88internal20ZoneCompactSetTraitsINS0_8compiler6MapRefEvE15PointerToHandleEPNS2_10ObjectDataE.exit ], [ %i.n, %_ZN2v88internal20ZoneCompactSetTraitsINS0_8compiler6MapRefEvE15PointerToHandleEPNS2_10ObjectDataE.exit3 ]
  ret ptr %.sroa.0.0
}

declare noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef5IsMapEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN2v88internal8compiler10turboshaft9fast_hashINS2_16TSCallDescriptorEEclERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 12 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !12, !noundef !13
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZNK2v88internal8compiler14CallDescriptor16GPParameterCountEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK2v88internal8compiler14CallDescriptor18ComputeParamCountsEv(ptr noundef nonnull align 8 dereferenceable(128) %i.a) #24
  %.pre.i = load i8, ptr %i.j, align 8, !range !12
  %i.m = trunc nuw i8 %.pre.i to i1
  br i1 %i.m, label %_ZNK2v88internal8compiler14CallDescriptor16GPParameterCountEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #29
  unreachable

_ZNK2v88internal8compiler14CallDescriptor16GPParameterCountEv.exit: ; preds = %bb.a, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !range !12, !noundef !13
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNK2v88internal8compiler14CallDescriptor16FPParameterCountEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor16GPParameterCountEv.exit
  tail call void @_ZNK2v88internal8compiler14CallDescriptor18ComputeParamCountsEv(ptr noundef nonnull align 8 dereferenceable(128) %i.a) #24
  %.pre.i10 = load i8, ptr %i.p, align 8, !range !12
  %i.s = trunc nuw i8 %.pre.i10 to i1
  br i1 %i.s, label %_ZNK2v88internal8compiler14CallDescriptor16FPParameterCountEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt27__throw_bad_optional_accessv() #29
  unreachable

_ZNK2v88internal8compiler14CallDescriptor16FPParameterCountEv.exit: ; preds = %_ZNK2v88internal8compiler14CallDescriptor16GPParameterCountEv.exit, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.0.0.copyload.i = load i32, ptr %i.z, align 8
  %i.aa = sext i32 %.sroa.0.0.copyload.i to i64
  %i.ab = xor i64 %i.y, -1
  %i.ac = shl i64 %i.y, 21
  %i.ad = add i64 %i.ac, %i.ab                    ; 2 uses
  %i.ae = lshr i64 %i.ad, 24
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = mul i64 %i.af, 265                      ; 2 uses
  %i.ah = lshr i64 %i.ag, 14
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = mul i64 %i.ai, 21                       ; 2 uses
  %i.ak = lshr i64 %i.aj, 28
  %i.al = xor i64 %i.ak, %i.aj
  %i.am = mul i64 %i.al, 2147483649
  %i.an = mul nsw i64 %i.aa, 17
  %i.ao = add i64 %i.am, %i.an
  %i.ap = xor i64 %i.w, -1
  %i.aq = shl i64 %i.w, 21
  %i.ar = add i64 %i.aq, %i.ap                    ; 2 uses
  %i.as = lshr i64 %i.ar, 24
  %i.at = xor i64 %i.as, %i.ar
  %i.au = mul i64 %i.at, 265                      ; 2 uses
  %i.av = lshr i64 %i.au, 14
  %i.aw = xor i64 %i.av, %i.au
  %i.ax = mul i64 %i.aw, 21                       ; 2 uses
  %i.ay = lshr i64 %i.ax, 28
  %i.az = xor i64 %i.ay, %i.ax
  %i.ba = mul i64 %i.az, 2147483649
  %i.bb = mul i64 %i.ao, 17
  %i.bc = add i64 %i.bb, %i.ba
  %i.bd = xor i64 %i.u, -1
  %i.be = shl i64 %i.u, 21
  %i.bf = add i64 %i.be, %i.bd                    ; 2 uses
  %i.bg = lshr i64 %i.bf, 24
  %i.bh = xor i64 %i.bg, %i.bf
  %i.bi = mul i64 %i.bh, 265                      ; 2 uses
  %i.bj = lshr i64 %i.bi, 14
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = mul i64 %i.bk, 21                       ; 2 uses
  %i.bm = lshr i64 %i.bl, 28
  %i.bn = xor i64 %i.bm, %i.bl
  %i.bo = mul i64 %i.bn, 2147483649
  %i.bp = mul i64 %i.bc, 17
  %i.bq = add i64 %i.bp, %i.bo
  %i.br = xor i64 %i.o, -1
  %i.bs = shl i64 %i.o, 21
  %i.bt = add i64 %i.bs, %i.br                    ; 2 uses
  %i.bu = lshr i64 %i.bt, 24
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = mul i64 %i.bv, 265                      ; 2 uses
  %i.bx = lshr i64 %i.bw, 14
  %i.by = xor i64 %i.bx, %i.bw
  %i.bz = mul i64 %i.by, 21                       ; 2 uses
  %i.ca = lshr i64 %i.bz, 28
  %i.cb = xor i64 %i.ca, %i.bz
  %i.cc = mul i64 %i.cb, 2147483649
  %i.cd = mul i64 %i.bq, 17
  %i.ce = add i64 %i.cd, %i.cc
  %i.cf = xor i64 %i.i, -1
  %i.cg = shl i64 %i.i, 21
  %i.ch = add i64 %i.cg, %i.cf                    ; 2 uses
  %i.ci = lshr i64 %i.ch, 24
  %i.cj = xor i64 %i.ci, %i.ch
  %i.ck = mul i64 %i.cj, 265                      ; 2 uses
  %i.cl = lshr i64 %i.ck, 14
  %i.cm = xor i64 %i.cl, %i.ck
  %i.cn = mul i64 %i.cm, 21                       ; 2 uses
  %i.co = lshr i64 %i.cn, 28
  %i.cp = xor i64 %i.co, %i.cn
  %i.cq = mul i64 %i.cp, 2147483649
  %i.cr = mul i64 %i.ce, 17
  %i.cs = add i64 %i.cr, %i.cq
  %i.ct = xor i64 %i.g, -1
  %i.cu = shl i64 %i.g, 21
  %i.cv = add i64 %i.cu, %i.ct                    ; 2 uses
  %i.cw = lshr i64 %i.cv, 24
  %i.cx = xor i64 %i.cw, %i.cv
  %i.cy = mul i64 %i.cx, 265                      ; 2 uses
  %i.cz = lshr i64 %i.cy, 14
  %i.da = xor i64 %i.cz, %i.cy
  %i.db = mul i64 %i.da, 21                       ; 2 uses
  %i.dc = lshr i64 %i.db, 28
  %i.dd = xor i64 %i.dc, %i.db
  %i.de = mul i64 %i.dd, 2147483649
  %i.df = mul i64 %i.cs, 17
  %i.dg = add i64 %i.df, %i.de
  %i.dh = mul i64 %i.dg, 17
  %i.di = add i64 %i.dh, %i.d
  %i.dj = zext i32 %i.b to i64
  %i.dk = mul i64 %i.di, 17
  %i.dl = add i64 %i.dk, %i.dj
  ret i64 %i.dl
}

declare void @_ZNK2v88internal8compiler14CallDescriptor18ComputeParamCountsEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr dso_local void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #19 comdat {
bb.a:
  tail call void @abort() #25
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #20

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK2v88internal8compiler10turboshaft9fast_hashISt5tupleIJNS_4base6VectorINS2_8SwitchOp4CaseEEEPNS2_5BlockENS0_10BranchHintEEEEclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %1, align 8
  %i.d = load ptr, ptr %i.b, align 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 2 uses
  %.idx = shl nuw nsw i64 %.sroa.2.0.copyload.i, 4
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %.idx
  %.not.i12 = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %.not.i12, label %_ZN2v88internal8compiler10turboshaft15fast_hash_rangeIPNS2_8SwitchOp4CaseEEEmT_S7_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i14 = phi ptr [ %i.at, %.lr.ph ], [ %.sroa.0.0.copyload.i, %bb.a ] ; 3 uses
  %.013 = phi i64 [ %i.as, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.sroa.2.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %.0.i14, i64 8
  %.sroa.2.0.copyload.i4 = load ptr, ptr %.sroa.2.0..sroa_idx.i3, align 8
  %.sroa.0.0.copyload.i2.shift = getelementptr inbounds nuw i8, ptr %.0.i14, i64 4
  %.sroa.0.0.copyload.i212 = load i32, ptr %.sroa.0.0.copyload.i2.shift, align 4 ; 2 uses
  %i.f = ptrtoint ptr %.sroa.2.0.copyload.i4 to i64 ; 2 uses
  %i.g = xor i64 %i.f, -1
  %i.h = shl i64 %i.f, 21
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = lshr i64 %i.i, 24
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, 265                        ; 2 uses
  %i.m = lshr i64 %i.l, 14
  %i.n = xor i64 %i.m, %i.l
  %i.o = mul i64 %i.n, 21                         ; 2 uses
  %i.p = lshr i64 %i.o, 28
  %i.q = xor i64 %i.p, %i.o
  %i.r = xor i32 %.sroa.0.0.copyload.i212, -1
  %i.s = shl i32 %.sroa.0.0.copyload.i212, 15
  %i.t = add i32 %i.s, %i.r                       ; 2 uses
  %i.u = lshr i32 %i.t, 12
  %i.v = xor i32 %i.u, %i.t
  %i.w = mul i32 %i.v, 5                          ; 2 uses
  %i.x = lshr i32 %i.w, 4
  %i.y = xor i32 %i.x, %i.w
  %i.z = mul i32 %i.y, 2057                       ; 2 uses
  %i.aa = lshr i32 %i.z, 16
  %i.ab = xor i32 %i.aa, %i.z
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul i64 %i.q, 36507222033
  %i.ae = add i64 %i.ad, %i.ac
  %i.af = xor i64 %.013, -1
  %i.ag = shl i64 %.013, 21
  %i.ah = add i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = lshr i64 %i.ah, 24
  %i.aj = xor i64 %i.ai, %i.ah
  %i.ak = mul i64 %i.aj, 265                      ; 2 uses
  %i.al = lshr i64 %i.ak, 14
  %i.am = xor i64 %i.al, %i.ak
  %i.an = mul i64 %i.am, 21                       ; 2 uses
  %i.ao = lshr i64 %i.an, 28
  %i.ap = xor i64 %i.ao, %i.an
  %i.aq = mul i64 %i.ap, 2147483649
  %i.ar = mul i64 %i.ae, 17
  %i.as = add i64 %i.ar, %i.aq                    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i14, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.at, %i.e
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft15fast_hash_rangeIPNS2_8SwitchOp4CaseEEEmT_S7_.exit, label %.lr.ph, !llvm.loop !368

_ZN2v88internal8compiler10turboshaft15fast_hash_rangeIPNS2_8SwitchOp4CaseEEEmT_S7_.exit: ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.as, %.lr.ph ]
  %i.au = zext i8 %i.c to i64
  %i.av = mul nuw nsw i64 %i.au, 17
  %i.aw = ptrtoint ptr %i.d to i64                ; 2 uses
  %i.ax = shl i64 %i.aw, 21
  %i.ay = xor i64 %i.aw, -1
  %i.az = add i64 %i.ax, %i.ay                    ; 2 uses
  %i.ba = lshr i64 %i.az, 24
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = mul i64 %i.bb, 265                      ; 2 uses
  %i.bd = lshr i64 %i.bc, 14
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = mul i64 %i.be, 21                       ; 2 uses
  %i.bg = lshr i64 %i.bf, 28
  %i.bh = xor i64 %i.bg, %i.bf
  %i.bi = mul i64 %i.bh, 2147483649
  %i.bj = add i64 %i.bi, %i.av
  %i.bk = mul i64 %i.bj, 17
  %i.bl = add i64 %.0.lcssa, %i.bk
  ret i64 %i.bl
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #21

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { builtin nounwind allocsize(0) }
attributes #27 = { builtin nounwind }
attributes #28 = { cold nounwind }
attributes #29 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_ZNK2v88internal8compiler10turboshaft16CheckExceptionOp7optionsEv: argument 0"}
!8 = distinct !{!8, !"_ZNK2v88internal8compiler10turboshaft16CheckExceptionOp7optionsEv"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZNK2v88internal8compiler10turboshaft6GotoOp7optionsEv: argument 0"}
!11 = distinct !{!11, !"_ZNK2v88internal8compiler10turboshaft6GotoOp7optionsEv"}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_ZNK2v88internal8compiler10turboshaft8BranchOp7optionsEv: argument 0"}
!16 = distinct !{!16, !"_ZNK2v88internal8compiler10turboshaft8BranchOp7optionsEv"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZNK2v88internal8compiler10turboshaft16ArrayAtomicRMWOp7optionsEv: argument 0"}
!19 = distinct !{!19, !"_ZNK2v88internal8compiler10turboshaft16ArrayAtomicRMWOp7optionsEv"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZNK2v88internal8compiler10turboshaft12ComparisonOp7optionsEv: argument 0"}
!22 = distinct !{!22, !"_ZNK2v88internal8compiler10turboshaft12ComparisonOp7optionsEv"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZNK2v88internal8compiler10turboshaft11TryChangeOp7optionsEv: argument 0"}
!25 = distinct !{!25, !"_ZNK2v88internal8compiler10turboshaft11TryChangeOp7optionsEv"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7optionsEv: argument 0"}
!28 = distinct !{!28, !"_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7optionsEv"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZNK2v88internal8compiler10turboshaft8SelectOp7optionsEv: argument 0"}
!31 = distinct !{!31, !"_ZNK2v88internal8compiler10turboshaft8SelectOp7optionsEv"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZNK2v88internal8compiler10turboshaft25StackPointerGreaterThanOp7optionsEv: argument 0"}
!34 = distinct !{!34, !"_ZNK2v88internal8compiler10turboshaft25StackPointerGreaterThanOp7optionsEv"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZNK2v88internal8compiler10turboshaft10ObjectIsOp7optionsEv: argument 0"}
!37 = distinct !{!37, !"_ZNK2v88internal8compiler10turboshaft10ObjectIsOp7optionsEv"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZNK2v88internal8compiler10turboshaft15ChangeOrDeoptOp7optionsEv: argument 0"}
!40 = distinct !{!40, !"_ZNK2v88internal8compiler10turboshaft15ChangeOrDeoptOp7optionsEv"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZNK2v88internal8compiler10turboshaft28ConvertJSPrimitiveToObjectOp7optionsEv: argument 0"}
!43 = distinct !{!43, !"_ZNK2v88internal8compiler10turboshaft28ConvertJSPrimitiveToObjectOp7optionsEv"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZNK2v88internal8compiler10turboshaft30ConvertJSPrimitiveToUntaggedOp7optionsEv: argument 0"}
!46 = distinct !{!46, !"_ZNK2v88internal8compiler10turboshaft30ConvertJSPrimitiveToUntaggedOp7optionsEv"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZNK2v88internal8compiler10turboshaft37ConvertJSPrimitiveToUntaggedOrDeoptOp7optionsEv: argument 0"}
!49 = distinct !{!49, !"_ZNK2v88internal8compiler10turboshaft37ConvertJSPrimitiveToUntaggedOrDeoptOp7optionsEv"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZNK2v88internal8compiler10turboshaft37ConvertUntaggedToJSPrimitiveOrDeoptOp7optionsEv: argument 0"}
!52 = distinct !{!52, !"_ZNK2v88internal8compiler10turboshaft37ConvertUntaggedToJSPrimitiveOrDeoptOp7optionsEv"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_ZNK2v88internal8compiler10turboshaft31TruncateJSPrimitiveToUntaggedOp7optionsEv: argument 0"}
!55 = distinct !{!55, !"_ZNK2v88internal8compiler10turboshaft31TruncateJSPrimitiveToUntaggedOp7optionsEv"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZNK2v88internal8compiler10turboshaft13FastApiCallOp7optionsEv: argument 0"}
!58 = distinct !{!58, !"_ZNK2v88internal8compiler10turboshaft13FastApiCallOp7optionsEv"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZNK2v88internal8compiler10turboshaft22NewArgumentsElementsOp7optionsEv: argument 0"}
!61 = distinct !{!61, !"_ZNK2v88internal8compiler10turboshaft22NewArgumentsElementsOp7optionsEv"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZNK2v88internal8compiler10turboshaft10NewArrayOp7optionsEv: argument 0"}
!64 = distinct !{!64, !"_ZNK2v88internal8compiler10turboshaft10NewArrayOp7optionsEv"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZNK2v88internal8compiler10turboshaft32TransitionAndStoreArrayElementOp7optionsEv: argument 0"}
!67 = distinct !{!67, !"_ZNK2v88internal8compiler10turboshaft32TransitionAndStoreArrayElementOp7optionsEv"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZNK2v88internal8compiler10turboshaft13GenericUnopOp7optionsEv: argument 0"}
!70 = distinct !{!70, !"_ZNK2v88internal8compiler10turboshaft13GenericUnopOp7optionsEv"}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.peeled.count", i32 1}
!73 = distinct !{!73, !72}
!74 = distinct !{!74, !72}
!75 = distinct !{!75, !72}
!76 = distinct !{!76, !72}
!77 = distinct !{!77, !72}
!78 = distinct !{!78, !72}
!79 = distinct !{!79, !72}
!80 = distinct !{!80, !72}
!81 = distinct !{!81, !72}
!82 = distinct !{!82, !72}
!83 = distinct !{!83, !72}
!84 = distinct !{!84, !72}
!85 = distinct !{!85, !72}
!86 = distinct !{!86, !72}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZNK2v88internal8compiler10turboshaft8ReturnOp7optionsEv: argument 0"}
!89 = distinct !{!89, !"_ZNK2v88internal8compiler10turboshaft8ReturnOp7optionsEv"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZNK2v88internal8compiler10turboshaft12DeoptimizeOp7optionsEv: argument 0"}
end_hunk_0
